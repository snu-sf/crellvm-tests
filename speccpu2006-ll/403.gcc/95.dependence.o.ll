; ModuleID = 'dependence.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.loop = type { %union.tree_node*, %union.tree_node*, i32, i32, %struct.loop*, %struct.induction* }
%struct.induction = type { i8*, i32, i32, i32, %struct.induction* }
%struct.def_use = type { %union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32, i32, %struct.def_use*, %struct.dependence* }
%struct.dependence = type { %union.tree_node*, %union.tree_node*, i32, [13 x i32], [13 x i32], %struct.dependence* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.subscript = type { i32, i32, i32, i8*, %struct.subscript* }

@.str = private unnamed_addr constant [14 x i8] c"def_use_chain\00", align 1
@def_use_chain = internal global %struct.varray_head_tag* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"dep_chain\00", align 1
@dep_chain = internal global %struct.varray_head_tag* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"loop_chain\00", align 1
@loop_chain = internal global %struct.varray_head_tag* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"induction_chain\00", align 1
@induction_chain = internal global %struct.varray_head_tag* null, align 8
@dest_to_remember = internal global %union.tree_node* null, align 8
@build_def_use.outer_loop = internal global %union.tree_node* null, align 8
@build_def_use.nloop = internal global i32 0, align 4
@build_def_use.current_loop = internal global %union.tree_node* null, align 8
@build_def_use.du_idx = internal global i32 0, align 4
@build_def_use.loop_def = internal global %struct.loop* null, align 8
@tree_code_type = external global [256 x i8], align 16
@merge_dependencies.direction_merge = internal constant [8 x [8 x i32]] [[8 x i32] [i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 6, i32 0], [8 x i32] [i32 1, i32 1, i32 1, i32 5, i32 5, i32 1, i32 6, i32 1], [8 x i32] [i32 1, i32 1, i32 2, i32 4, i32 4, i32 2, i32 6, i32 2], [8 x i32] [i32 5, i32 5, i32 4, i32 3, i32 4, i32 3, i32 6, i32 4], [8 x i32] [i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 6, i32 4], [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5], [8 x i32] [i32 6, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0], [8 x i32] [i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16

; Function Attrs: nounwind uwtable
define void @init_dependence_analysis(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %du_ptr = alloca %struct.def_use*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %call = call %struct.varray_head_tag* @varray_init(i64 50, i64 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @def_use_chain, align 8
  %call1 = call %struct.varray_head_tag* @varray_init(i64 50, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  store %struct.varray_head_tag* %call1, %struct.varray_head_tag** @dep_chain, align 8
  %call2 = call %struct.varray_head_tag* @varray_init(i64 50, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  store %struct.varray_head_tag* %call2, %struct.varray_head_tag** @loop_chain, align 8
  %call3 = call %struct.varray_head_tag* @varray_init(i64 50, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct.varray_head_tag* %call3, %struct.varray_head_tag** @induction_chain, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @build_def_use(%union.tree_node* %0, i32 2)
  call void @link_loops()
  call void @get_node_dependence()
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %sub
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = bitcast i8* %4 to %struct.def_use*
  store %struct.def_use* %5, %struct.def_use** %du_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %elements_used4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  %7 = load i64, i64* %elements_used4, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %elements_used4, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %9 = bitcast %struct.def_use* %8 to i8*
  call void @free(i8* %9) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %elements_used5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 1
  %11 = load i64, i64* %elements_used5, align 8
  %sub6 = sub i64 %11, 1
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %generic8 = bitcast %union.varray_data_tag* %data7 to [1 x i8*]*
  %arrayidx9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic8, i32 0, i64 %sub6
  %13 = load i8*, i8** %arrayidx9, align 8
  %14 = bitcast i8* %13 to %struct.def_use*
  store %struct.def_use* %14, %struct.def_use** %du_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %tobool10 = icmp ne %struct.varray_head_tag* %15, null
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %17 = bitcast %struct.varray_head_tag* %16 to i8*
  call void @free(i8* %17) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @def_use_chain, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %tobool12 = icmp ne %struct.varray_head_tag* %18, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body.11
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %20 = bitcast %struct.varray_head_tag* %19 to i8*
  call void @free(i8* %20) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @loop_chain, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body.11
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %tobool17 = icmp ne %struct.varray_head_tag* %21, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.body.16
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %23 = bitcast %struct.varray_head_tag* %22 to i8*
  call void @free(i8* %23) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @induction_chain, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.body.16
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  ret void
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @build_def_use(%union.tree_node* %exp, i32 %du_type) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %du_type.addr = alloca i32, align 4
  %node = alloca %union.tree_node*, align 8
  %array_ref = alloca %union.tree_node*, align 8
  %du_ptr = alloca %struct.def_use*, align 8
  %i = alloca i32, align 4
  %null_string = alloca i8, align 1
  %tmp_duc = alloca %struct.def_use*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 %du_type, i32* %du_type.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %node, align 8
  %1 = load i32, i32* %du_type.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** @build_def_use.outer_loop, align 8
  store i32 0, i32* @build_def_use.nloop, align 4
  store i32 0, i32* @build_def_use.du_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %2 = load %union.tree_node*, %union.tree_node** %node, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 153, label %sw.bb
    i32 2, label %sw.bb.2
    i32 53, label %sw.bb.4
    i32 156, label %sw.bb.7
    i32 48, label %sw.bb.29
    i32 41, label %sw.bb.74
    i32 43, label %sw.bb.93
    i32 166, label %sw.bb.185
    i32 154, label %sw.bb.185
    i32 152, label %sw.bb.188
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp1 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %6 = load %union.tree_node*, %union.tree_node** %node, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @build_def_use(%union.tree_node* %7, i32 0)
  %8 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common3 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %9, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  %10 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common5 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %chain6, align 8
  store %union.tree_node* %11, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  %12 = load i32, i32* @build_def_use.nloop, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %sw.bb.7
  %13 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %13, %union.tree_node** @build_def_use.outer_loop, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb.7
  %14 = load i32, i32* @build_def_use.nloop, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @build_def_use.nloop, align 4
  %15 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %15, %union.tree_node** @build_def_use.current_loop, align 8
  %16 = load %union.tree_node*, %union.tree_node** %node, align 8
  %17 = load %union.tree_node*, %union.tree_node** @build_def_use.outer_loop, align 8
  %18 = load i32, i32* @build_def_use.nloop, align 4
  %call = call %struct.loop* @add_loop(%union.tree_node* %16, %union.tree_node* %17, i32 %18)
  store %struct.loop* %call, %struct.loop** @build_def_use.loop_def, align 8
  %19 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp11 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands12 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands12, i32 0, i64 0
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  %21 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp14 = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands15 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp14, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands15, i32 0, i64 1
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx16, align 8
  %23 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp17 = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 2
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %25 = load %struct.loop*, %struct.loop** @build_def_use.loop_def, align 8
  %call20 = call i32 @find_induction_variable(%union.tree_node* %20, %union.tree_node* %22, %union.tree_node* %24, %struct.loop* %25)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.10
  %26 = load %struct.loop*, %struct.loop** @build_def_use.loop_def, align 8
  %status = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 3
  store i32 1, i32* %status, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.10
  %27 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp24 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands25 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp24, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands25, i32 0, i64 3
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx26, align 8
  call void @build_def_use(%union.tree_node* %28, i32 0)
  %29 = load i32, i32* @build_def_use.nloop, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* @build_def_use.nloop, align 4
  store %union.tree_node* null, %union.tree_node** @build_def_use.current_loop, align 8
  %30 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common27 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %chain28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 0
  %31 = load %union.tree_node*, %union.tree_node** %chain28, align 8
  store %union.tree_node* %31, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %while.body
  %32 = load %struct.loop*, %struct.loop** @build_def_use.loop_def, align 8
  %tobool30 = icmp ne %struct.loop* %32, null
  br i1 %tobool30, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %sw.bb.29
  %33 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp31 = bitcast %union.tree_node* %33 to %struct.tree_exp*
  %operands32 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands32, i32 0, i64 0
  %34 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8
  %common34 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %code35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load36 = load i32, i32* %code35, align 8
  %bf.clear37 = and i32 %bf.load36, 255
  %cmp38 = icmp eq i32 %bf.clear37, 34
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %land.lhs.true
  %35 = load %struct.loop*, %struct.loop** @build_def_use.loop_def, align 8
  %outer_loop = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 0
  %36 = load %union.tree_node*, %union.tree_node** %outer_loop, align 8
  %37 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp40 = bitcast %union.tree_node* %37 to %struct.tree_exp*
  %operands41 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp40, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands41, i32 0, i64 0
  %38 = load %union.tree_node*, %union.tree_node** %arrayidx42, align 8
  %decl = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %39 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %39 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %40 = load i8*, i8** %str, align 8
  %call43 = call i32 @have_induction_variable(%union.tree_node* %36, i8* %40)
  %cmp44 = icmp sge i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.39
  %41 = load %struct.loop*, %struct.loop** @build_def_use.loop_def, align 8
  %status46 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 3
  store i32 1, i32* %status46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.39, %land.lhs.true, %sw.bb.29
  %42 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp48 = bitcast %union.tree_node* %42 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %43 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %common51 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %code52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common51, i32 0, i32 2
  %bf.load53 = load i32, i32* %code52, align 8
  %bf.clear54 = and i32 %bf.load53, 255
  %cmp55 = icmp eq i32 %bf.clear54, 43
  br i1 %cmp55, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %44 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp56 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands57 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp56, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands57, i32 0, i64 0
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx58, align 8
  %common59 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %code60 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load61 = load i32, i32* %code60, align 8
  %bf.clear62 = and i32 %bf.load61, 255
  %cmp63 = icmp eq i32 %bf.clear62, 41
  br i1 %cmp63, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %lor.lhs.false, %if.end.47
  %46 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp65 = bitcast %union.tree_node* %46 to %struct.tree_exp*
  %operands66 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp65, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands66, i32 0, i64 0
  %47 = load %union.tree_node*, %union.tree_node** %arrayidx67, align 8
  call void @build_def_use(%union.tree_node* %47, i32 0)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %lor.lhs.false
  %48 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp69 = bitcast %union.tree_node* %48 to %struct.tree_exp*
  %operands70 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp69, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands70, i32 0, i64 1
  %49 = load %union.tree_node*, %union.tree_node** %arrayidx71, align 8
  call void @build_def_use(%union.tree_node* %49, i32 1)
  %50 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common72 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %chain73 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 0
  %51 = load %union.tree_node*, %union.tree_node** %chain73, align 8
  store %union.tree_node* %51, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.74:                                         ; preds = %while.body
  %52 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp75 = bitcast %union.tree_node* %52 to %struct.tree_exp*
  %operands76 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp75, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands76, i32 0, i64 1
  %53 = load %union.tree_node*, %union.tree_node** %arrayidx77, align 8
  %tobool78 = icmp ne %union.tree_node* %53, null
  br i1 %tobool78, label %lor.lhs.false.79, label %if.then.88

lor.lhs.false.79:                                 ; preds = %sw.bb.74
  %54 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp80 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands81 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp80, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands81, i32 0, i64 1
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx82, align 8
  %common83 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %code84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 2
  %bf.load85 = load i32, i32* %code84, align 8
  %bf.clear86 = and i32 %bf.load85, 255
  %cmp87 = icmp ne i32 %bf.clear86, 43
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.79, %sw.bb.74
  store %union.tree_node* null, %union.tree_node** %node, align 8
  br label %sw.epilog

if.end.89:                                        ; preds = %lor.lhs.false.79
  %56 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp90 = bitcast %union.tree_node* %56 to %struct.tree_exp*
  %operands91 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp90, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands91, i32 0, i64 1
  %57 = load %union.tree_node*, %union.tree_node** %arrayidx92, align 8
  store %union.tree_node* %57, %union.tree_node** %node, align 8
  br label %sw.bb.93

sw.bb.93:                                         ; preds = %while.body, %if.end.89
  %58 = load i32, i32* @build_def_use.nloop, align 4
  %tobool94 = icmp ne i32 %58, 0
  br i1 %tobool94, label %if.then.95, label %if.end.184

if.then.95:                                       ; preds = %sw.bb.93
  store i8 0, i8* %null_string, align 1
  br label %do.body

do.body:                                          ; preds = %if.then.95
  %59 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %59, i32 0, i32 1
  %60 = load i64, i64* %elements_used, align 8
  %61 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %61, i32 0, i32 0
  %62 = load i64, i64* %num_elements, align 8
  %cmp96 = icmp uge i64 %60, %62
  br i1 %cmp96, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %do.body
  %63 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %64 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %num_elements98 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %64, i32 0, i32 0
  %65 = load i64, i64* %num_elements98, align 8
  %mul = mul i64 2, %65
  %call99 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %63, i64 %mul)
  store %struct.varray_head_tag* %call99, %struct.varray_head_tag** @def_use_chain, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %do.body
  %call101 = call noalias i8* @xmalloc(i64 56)
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %elements_used102 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 1
  %67 = load i64, i64* %elements_used102, align 8
  %inc103 = add i64 %67, 1
  store i64 %inc103, i64* %elements_used102, align 8
  %68 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %68, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx104 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %67
  store i8* %call101, i8** %arrayidx104, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.100
  %69 = load i32, i32* @build_def_use.du_idx, align 4
  %inc105 = add nsw i32 %69, 1
  store i32 %inc105, i32* @build_def_use.du_idx, align 4
  %idxprom = sext i32 %69 to i64
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data106 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 4
  %generic107 = bitcast %union.varray_data_tag* %data106 to [1 x i8*]*
  %arrayidx108 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic107, i32 0, i64 %idxprom
  %71 = load i8*, i8** %arrayidx108, align 8
  %72 = bitcast i8* %71 to %struct.def_use*
  store %struct.def_use* %72, %struct.def_use** %du_ptr, align 8
  %73 = load i32, i32* %du_type.addr, align 4
  %74 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %type = getelementptr inbounds %struct.def_use, %struct.def_use* %74, i32 0, i32 4
  store i32 %73, i32* %type, align 4
  %75 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %status109 = getelementptr inbounds %struct.def_use, %struct.def_use* %75, i32 0, i32 5
  store i32 1, i32* %status109, align 4
  %76 = load %union.tree_node*, %union.tree_node** @build_def_use.outer_loop, align 8
  %77 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %outer_loop110 = getelementptr inbounds %struct.def_use, %struct.def_use* %77, i32 0, i32 0
  store %union.tree_node* %76, %union.tree_node** %outer_loop110, align 8
  %78 = load %union.tree_node*, %union.tree_node** @build_def_use.current_loop, align 8
  %79 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %containing_loop = getelementptr inbounds %struct.def_use, %struct.def_use* %79, i32 0, i32 1
  store %union.tree_node* %78, %union.tree_node** %containing_loop, align 8
  %80 = load %union.tree_node*, %union.tree_node** %node, align 8
  %81 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %expression = getelementptr inbounds %struct.def_use, %struct.def_use* %81, i32 0, i32 2
  store %union.tree_node* %80, %union.tree_node** %expression, align 8
  %82 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %variable = getelementptr inbounds %struct.def_use, %struct.def_use* %82, i32 0, i32 3
  store i8* %null_string, i8** %variable, align 8
  %83 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %next = getelementptr inbounds %struct.def_use, %struct.def_use* %83, i32 0, i32 6
  store %struct.def_use* null, %struct.def_use** %next, align 8
  %84 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %dep = getelementptr inbounds %struct.def_use, %struct.def_use* %84, i32 0, i32 7
  store %struct.dependence* null, %struct.dependence** %dep, align 8
  %85 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %85, %union.tree_node** %array_ref, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %86 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %common111 = bitcast %union.tree_node* %86 to %struct.tree_common*
  %code112 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common111, i32 0, i32 2
  %bf.load113 = load i32, i32* %code112, align 8
  %bf.clear114 = and i32 %bf.load113, 255
  %cmp115 = icmp eq i32 %bf.clear114, 43
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %87 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp116 = bitcast %union.tree_node* %87 to %struct.tree_exp*
  %operands117 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp116, i32 0, i32 2
  %arrayidx118 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands117, i32 0, i64 0
  %88 = load %union.tree_node*, %union.tree_node** %arrayidx118, align 8
  store %union.tree_node* %88, %union.tree_node** %array_ref, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %89 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %common119 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %code120 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common119, i32 0, i32 2
  %bf.load121 = load i32, i32* %code120, align 8
  %bf.clear122 = and i32 %bf.load121, 255
  %cmp123 = icmp eq i32 %bf.clear122, 39
  br i1 %cmp123, label %if.then.124, label %if.end.143

if.then.124:                                      ; preds = %for.end
  %90 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp125 = bitcast %union.tree_node* %90 to %struct.tree_exp*
  %operands126 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp125, i32 0, i32 2
  %arrayidx127 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands126, i32 0, i64 1
  %91 = load %union.tree_node*, %union.tree_node** %arrayidx127, align 8
  store %union.tree_node* %91, %union.tree_node** %array_ref, align 8
  %92 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %common128 = bitcast %union.tree_node* %92 to %struct.tree_common*
  %code129 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common128, i32 0, i32 2
  %bf.load130 = load i32, i32* %code129, align 8
  %bf.clear131 = and i32 %bf.load130, 255
  %cmp132 = icmp eq i32 %bf.clear131, 37
  br i1 %cmp132, label %land.lhs.true.133, label %if.then.141

land.lhs.true.133:                                ; preds = %if.then.124
  %93 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %common134 = bitcast %union.tree_node* %93 to %struct.tree_common*
  %type135 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common134, i32 0, i32 1
  %94 = load %union.tree_node*, %union.tree_node** %type135, align 8
  %common136 = bitcast %union.tree_node* %94 to %struct.tree_common*
  %code137 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common136, i32 0, i32 2
  %bf.load138 = load i32, i32* %code137, align 8
  %bf.clear139 = and i32 %bf.load138, 255
  %cmp140 = icmp eq i32 %bf.clear139, 18
  br i1 %cmp140, label %if.end.142, label %if.then.141

if.then.141:                                      ; preds = %land.lhs.true.133, %if.then.124
  store %union.tree_node* null, %union.tree_node** %node, align 8
  br label %sw.epilog

if.end.142:                                       ; preds = %land.lhs.true.133
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.159, %if.end.143
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* @build_def_use.du_idx, align 4
  %cmp145 = icmp slt i32 %95, %96
  br i1 %cmp145, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.144
  %97 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %decl146 = bitcast %union.tree_node* %97 to %struct.tree_decl*
  %name147 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl146, i32 0, i32 8
  %98 = load %union.tree_node*, %union.tree_node** %name147, align 8
  %identifier148 = bitcast %union.tree_node* %98 to %struct.tree_identifier*
  %id149 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier148, i32 0, i32 1
  %str150 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id149, i32 0, i32 1
  %99 = load i8*, i8** %str150, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %100 to i64
  %101 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data152 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %101, i32 0, i32 4
  %generic153 = bitcast %union.varray_data_tag* %data152 to [1 x i8*]*
  %arrayidx154 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic153, i32 0, i64 %idxprom151
  %102 = load i8*, i8** %arrayidx154, align 8
  %103 = bitcast i8* %102 to %struct.def_use*
  %variable155 = getelementptr inbounds %struct.def_use, %struct.def_use* %103, i32 0, i32 3
  %104 = load i8*, i8** %variable155, align 8
  %call156 = call i32 @strcmp(i8* %99, i8* %104) #6
  %tobool157 = icmp ne i32 %call156, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.144
  %105 = phi i1 [ false, %for.cond.144 ], [ %tobool157, %land.rhs ]
  br i1 %105, label %for.body.158, label %for.end.161

for.body.158:                                     ; preds = %land.end
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.body.158
  %106 = load i32, i32* %i, align 4
  %inc160 = add nsw i32 %106, 1
  store i32 %inc160, i32* %i, align 4
  br label %for.cond.144

for.end.161:                                      ; preds = %land.end
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* @build_def_use.du_idx, align 4
  %cmp162 = icmp ne i32 %107, %108
  br i1 %cmp162, label %if.then.163, label %if.else

if.then.163:                                      ; preds = %for.end.161
  %109 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %109 to i64
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data165 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 4
  %generic166 = bitcast %union.varray_data_tag* %data165 to [1 x i8*]*
  %arrayidx167 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic166, i32 0, i64 %idxprom164
  %111 = load i8*, i8** %arrayidx167, align 8
  %112 = bitcast i8* %111 to %struct.def_use*
  store %struct.def_use* %112, %struct.def_use** %tmp_duc, align 8
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.172, %if.then.163
  %113 = load %struct.def_use*, %struct.def_use** %tmp_duc, align 8
  %next169 = getelementptr inbounds %struct.def_use, %struct.def_use* %113, i32 0, i32 6
  %114 = load %struct.def_use*, %struct.def_use** %next169, align 8
  %tobool170 = icmp ne %struct.def_use* %114, null
  br i1 %tobool170, label %for.body.171, label %for.end.174

for.body.171:                                     ; preds = %for.cond.168
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.171
  %115 = load %struct.def_use*, %struct.def_use** %tmp_duc, align 8
  %next173 = getelementptr inbounds %struct.def_use, %struct.def_use* %115, i32 0, i32 6
  %116 = load %struct.def_use*, %struct.def_use** %next173, align 8
  store %struct.def_use* %116, %struct.def_use** %tmp_duc, align 8
  br label %for.cond.168

for.end.174:                                      ; preds = %for.cond.168
  %117 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %118 = load %struct.def_use*, %struct.def_use** %tmp_duc, align 8
  %next175 = getelementptr inbounds %struct.def_use, %struct.def_use* %118, i32 0, i32 6
  store %struct.def_use* %117, %struct.def_use** %next175, align 8
  br label %if.end.177

if.else:                                          ; preds = %for.end.161
  %119 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %next176 = getelementptr inbounds %struct.def_use, %struct.def_use* %119, i32 0, i32 6
  store %struct.def_use* null, %struct.def_use** %next176, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.else, %for.end.174
  %120 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %decl178 = bitcast %union.tree_node* %120 to %struct.tree_decl*
  %name179 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl178, i32 0, i32 8
  %121 = load %union.tree_node*, %union.tree_node** %name179, align 8
  %identifier180 = bitcast %union.tree_node* %121 to %struct.tree_identifier*
  %id181 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier180, i32 0, i32 1
  %str182 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id181, i32 0, i32 1
  %122 = load i8*, i8** %str182, align 8
  %123 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %variable183 = getelementptr inbounds %struct.def_use, %struct.def_use* %123, i32 0, i32 3
  store i8* %122, i8** %variable183, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.177, %sw.bb.93
  store %union.tree_node* null, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.185:                                        ; preds = %while.body, %while.body
  %124 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common186 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %chain187 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common186, i32 0, i32 0
  %125 = load %union.tree_node*, %union.tree_node** %chain187, align 8
  store %union.tree_node* %125, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.bb.188:                                        ; preds = %while.body
  %126 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp189 = bitcast %union.tree_node* %126 to %struct.tree_exp*
  %operands190 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp189, i32 0, i32 2
  %arrayidx191 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands190, i32 0, i64 0
  %127 = load %union.tree_node*, %union.tree_node** %arrayidx191, align 8
  %common192 = bitcast %union.tree_node* %127 to %struct.tree_common*
  %code193 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common192, i32 0, i32 2
  %bf.load194 = load i32, i32* %code193, align 8
  %bf.clear195 = and i32 %bf.load194, 255
  %cmp196 = icmp eq i32 %bf.clear195, 48
  br i1 %cmp196, label %if.then.197, label %if.end.201

if.then.197:                                      ; preds = %sw.bb.188
  %128 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp198 = bitcast %union.tree_node* %128 to %struct.tree_exp*
  %operands199 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp198, i32 0, i32 2
  %arrayidx200 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands199, i32 0, i64 0
  %129 = load %union.tree_node*, %union.tree_node** %arrayidx200, align 8
  call void @build_def_use(%union.tree_node* %129, i32 0)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.197, %sw.bb.188
  %130 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common202 = bitcast %union.tree_node* %130 to %struct.tree_common*
  %chain203 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common202, i32 0, i32 0
  %131 = load %union.tree_node*, %union.tree_node** %chain203, align 8
  store %union.tree_node* %131, %union.tree_node** %node, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %132 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common204 = bitcast %union.tree_node* %132 to %struct.tree_common*
  %code205 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common204, i32 0, i32 2
  %bf.load206 = load i32, i32* %code205, align 8
  %bf.clear207 = and i32 %bf.load206, 255
  %idxprom208 = sext i32 %bf.clear207 to i64
  %arrayidx209 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom208
  %133 = load i8, i8* %arrayidx209, align 1
  %conv = sext i8 %133 to i32
  %cmp210 = icmp eq i32 %conv, 50
  br i1 %cmp210, label %if.then.212, label %if.else.221

if.then.212:                                      ; preds = %sw.default
  %134 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp213 = bitcast %union.tree_node* %134 to %struct.tree_exp*
  %operands214 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp213, i32 0, i32 2
  %arrayidx215 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands214, i32 0, i64 0
  %135 = load %union.tree_node*, %union.tree_node** %arrayidx215, align 8
  call void @build_def_use(%union.tree_node* %135, i32 1)
  %136 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp216 = bitcast %union.tree_node* %136 to %struct.tree_exp*
  %operands217 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp216, i32 0, i32 2
  %arrayidx218 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands217, i32 0, i64 1
  %137 = load %union.tree_node*, %union.tree_node** %arrayidx218, align 8
  call void @build_def_use(%union.tree_node* %137, i32 1)
  %138 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common219 = bitcast %union.tree_node* %138 to %struct.tree_common*
  %chain220 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common219, i32 0, i32 0
  %139 = load %union.tree_node*, %union.tree_node** %chain220, align 8
  store %union.tree_node* %139, %union.tree_node** %node, align 8
  br label %if.end.222

if.else.221:                                      ; preds = %sw.default
  store %union.tree_node* null, %union.tree_node** %node, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.221, %if.then.212
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.222, %if.end.201, %sw.bb.185, %if.end.184, %if.then.141, %if.then.88, %if.end.68, %if.end.23, %sw.bb.4, %sw.bb.2, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @link_loops() #0 {
entry:
  %loop_idx = alloca i32, align 4
  %loop_ptr = alloca %struct.loop*, align 8
  %prev_loop_ptr = alloca %struct.loop*, align 8
  store i32 0, i32* %loop_idx, align 4
  store %struct.loop* null, %struct.loop** %prev_loop_ptr, align 8
  %0 = load i32, i32* %loop_idx, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = bitcast i8* %2 to %struct.loop*
  store %struct.loop* %3, %struct.loop** %prev_loop_ptr, align 8
  %4 = load i32, i32* %loop_idx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %loop_idx, align 4
  %idxprom1 = zext i32 %inc to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %generic3 = bitcast %union.varray_data_tag* %data2 to [1 x i8*]*
  %arrayidx4 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic3, i32 0, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx4, align 8
  %7 = bitcast i8* %6 to %struct.loop*
  store %struct.loop* %7, %struct.loop** %loop_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %tobool = icmp ne %struct.loop* %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %loop_idx, align 4
  %conv = zext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 0
  %11 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct.loop*, %struct.loop** %prev_loop_ptr, align 8
  %outer_loop = getelementptr inbounds %struct.loop, %struct.loop* %13, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %outer_loop, align 8
  %15 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %outer_loop6 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %outer_loop6, align 8
  %cmp7 = icmp eq %union.tree_node* %14, %16
  br i1 %cmp7, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %17 = load %struct.loop*, %struct.loop** %prev_loop_ptr, align 8
  %depth = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 2
  %18 = load i32, i32* %depth, align 4
  %19 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %depth9 = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 2
  %20 = load i32, i32* %depth9, align 4
  %sub = sub nsw i32 %20, 1
  %cmp10 = icmp eq i32 %18, %sub
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %21 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %22 = load %struct.loop*, %struct.loop** %prev_loop_ptr, align 8
  %next_nest = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 4
  store %struct.loop* %21, %struct.loop** %next_nest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %23 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  store %struct.loop* %23, %struct.loop** %prev_loop_ptr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %24 = load i32, i32* %loop_idx, align 4
  %inc14 = add i32 %24, 1
  store i32 %inc14, i32* %loop_idx, align 4
  %idxprom15 = zext i32 %inc14 to i64
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 4
  %generic17 = bitcast %union.varray_data_tag* %data16 to [1 x i8*]*
  %arrayidx18 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic17, i32 0, i64 %idxprom15
  %26 = load i8*, i8** %arrayidx18, align 8
  %27 = bitcast i8* %26 to %struct.loop*
  store %struct.loop* %27, %struct.loop** %loop_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_node_dependence() #0 {
entry:
  %du_idx = alloca i32, align 4
  %du_ptr = alloca %struct.def_use*, align 8
  store i32 0, i32* %du_idx, align 4
  %0 = load i32, i32* %du_idx, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = bitcast i8* %2 to %struct.def_use*
  store %struct.def_use* %3, %struct.def_use** %du_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %tobool = icmp ne %struct.def_use* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %du_idx, align 4
  %conv = zext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  %status = getelementptr inbounds %struct.def_use, %struct.def_use* %9, i32 0, i32 5
  %10 = load i32, i32* %status, align 4
  %cmp2 = icmp eq i32 %10, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.def_use*, %struct.def_use** %du_ptr, align 8
  call void @check_node_dependence(%struct.def_use* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %du_idx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %du_idx, align 4
  %idxprom4 = zext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @def_use_chain, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %generic6 = bitcast %union.varray_data_tag* %data5 to [1 x i8*]*
  %arrayidx7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic6, i32 0, i64 %idxprom4
  %14 = load i8*, i8** %arrayidx7, align 8
  %15 = bitcast i8* %14 to %struct.def_use*
  store %struct.def_use* %15, %struct.def_use** %du_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @search_dependence(%union.tree_node* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %union.tree_node*, align 8
  %dep_ptr = alloca %struct.dependence*, align 8
  %dep_idx = alloca i32, align 4
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i32 0, i32* %dep_idx, align 4
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 41
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %tobool1 = icmp ne %union.tree_node* %3, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp3 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 1
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 43
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.2
  %6 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp12 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands13 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands13, i32 0, i64 1
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8
  store %union.tree_node* %7, %union.tree_node** %node.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.2, %land.lhs.true, %if.then
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx15 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 0
  %9 = load i8*, i8** %arrayidx15, align 8
  %10 = bitcast i8* %9 to %struct.dependence*
  store %struct.dependence* %10, %struct.dependence** %dep_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %tobool16 = icmp ne %struct.dependence* %11, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %13 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %source = getelementptr inbounds %struct.dependence, %struct.dependence* %13, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %source, align 8
  %cmp17 = icmp eq %union.tree_node* %12, %14
  br i1 %cmp17, label %land.lhs.true.18, label %lor.lhs.false

land.lhs.true.18:                                 ; preds = %for.body
  %15 = load %union.tree_node*, %union.tree_node** @dest_to_remember, align 8
  %16 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %destination = getelementptr inbounds %struct.dependence, %struct.dependence* %16, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %destination, align 8
  %cmp19 = icmp eq %union.tree_node* %15, %17
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.18, %for.body
  %18 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %source20 = getelementptr inbounds %struct.dependence, %struct.dependence* %18, i32 0, i32 0
  %19 = load %union.tree_node*, %union.tree_node** %source20, align 8
  %tobool21 = icmp ne %union.tree_node* %19, null
  br i1 %tobool21, label %if.end.26, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %20 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %21 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %destination23 = getelementptr inbounds %struct.dependence, %struct.dependence* %21, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %destination23, align 8
  %cmp24 = icmp eq %union.tree_node* %20, %22
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true.18
  %23 = load i32, i32* %dep_idx, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.22, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %24 = load i32, i32* %dep_idx, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %dep_idx, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 4
  %generic28 = bitcast %union.varray_data_tag* %data27 to [1 x i8*]*
  %arrayidx29 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic28, i32 0, i64 %idxprom
  %26 = load i8*, i8** %arrayidx29, align 8
  %27 = bitcast i8* %26 to %struct.dependence*
  store %struct.dependence* %27, %struct.dependence** %dep_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.25
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define void @remember_dest_for_dependence(%union.tree_node* %node) #0 {
entry:
  %node.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 41
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %tobool1 = icmp ne %union.tree_node* %3, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp3 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 1
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 43
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.2
  %6 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp12 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands13 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands13, i32 0, i64 1
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8
  store %union.tree_node* %7, %union.tree_node** %node.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.2, %land.lhs.true, %if.then
  %8 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  store %union.tree_node* %8, %union.tree_node** @dest_to_remember, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @have_dependence_p(%struct.rtx_def* %dest_rtx, %struct.rtx_def* %src_rtx, i32* %direction, i32* %distance) #0 {
entry:
  %retval = alloca i32, align 4
  %dest_rtx.addr = alloca %struct.rtx_def*, align 8
  %src_rtx.addr = alloca %struct.rtx_def*, align 8
  %direction.addr = alloca i32*, align 8
  %distance.addr = alloca i32*, align 8
  %dest_idx = alloca i32, align 4
  %src_idx = alloca i32, align 4
  %dest = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %dep_ptr = alloca %struct.dependence*, align 8
  store %struct.rtx_def* %dest_rtx, %struct.rtx_def** %dest_rtx.addr, align 8
  store %struct.rtx_def* %src_rtx, %struct.rtx_def** %src_rtx.addr, align 8
  store i32* %direction, i32** %direction.addr, align 8
  store i32* %distance, i32** %distance.addr, align 8
  store i32 0, i32* %dest_idx, align 4
  store i32 0, i32* %src_idx, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest_rtx.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest_rtx.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %dest, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtwint = bitcast %union.rtunion_def* %arrayidx11 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 %8, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %dest_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %src_rtx.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load18 = load i32, i32* %12, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 66
  br i1 %cmp20, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %src_rtx.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %src, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 2
  %rtwint31 = bitcast %union.rtunion_def* %arrayidx30 to i64*
  %17 = load i64, i64* %rtwint31, align 8
  %sub32 = sub nsw i64 %17, 1
  %conv33 = trunc i64 %sub32 to i32
  store i32 %conv33, i32* %src_idx, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.22, %if.end
  %18 = load i32, i32* %dest_idx, align 4
  %cmp35 = icmp sge i32 %18, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %19 = load i32, i32* %src_idx, align 4
  %cmp37 = icmp sge i32 %19, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %if.end.34
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false
  %20 = load i32, i32* %dest_idx, align 4
  %sub41 = sub nsw i32 0, %20
  %idxprom = sext i32 %sub41 to i64
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx42 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %idxprom
  %22 = load i8*, i8** %arrayidx42, align 8
  %23 = bitcast i8* %22 to %struct.dependence*
  store %struct.dependence* %23, %struct.dependence** %dep_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %24 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %tobool = icmp ne %struct.dependence* %24, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %26 = load i32, i32* %src_idx, align 4
  %sub43 = sub nsw i32 0, %26
  %idxprom44 = sext i32 %sub43 to i64
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data45 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 4
  %generic46 = bitcast %union.varray_data_tag* %data45 to [1 x i8*]*
  %arrayidx47 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic46, i32 0, i64 %idxprom44
  %28 = load i8*, i8** %arrayidx47, align 8
  %29 = bitcast i8* %28 to %struct.dependence*
  %cmp48 = icmp eq %struct.dependence* %25, %29
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %for.body
  %30 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %direction51 = getelementptr inbounds %struct.dependence, %struct.dependence* %30, i32 0, i32 3
  %31 = bitcast [13 x i32]* %direction51 to i32*
  store i32* %31, i32** %direction.addr, align 8
  %32 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %distance52 = getelementptr inbounds %struct.dependence, %struct.dependence* %32, i32 0, i32 4
  %33 = bitcast [13 x i32]* %distance52 to i32*
  store i32* %33, i32** %distance.addr, align 8
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %34 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %next = getelementptr inbounds %struct.dependence, %struct.dependence* %34, i32 0, i32 5
  %35 = load %struct.dependence*, %struct.dependence** %next, align 8
  store %struct.dependence* %35, %struct.dependence** %dep_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.50, %if.then.39
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define void @end_dependence_analysis() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %2 = bitcast %struct.varray_head_tag* %1 to i8*
  call void @free(i8* %2) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @dep_chain, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.loop* @add_loop(%union.tree_node* %loop_node, %union.tree_node* %outer_loop, i32 %nloop) #0 {
entry:
  %loop_node.addr = alloca %union.tree_node*, align 8
  %outer_loop.addr = alloca %union.tree_node*, align 8
  %nloop.addr = alloca i32, align 4
  %loop_ptr = alloca %struct.loop*, align 8
  store %union.tree_node* %loop_node, %union.tree_node** %loop_node.addr, align 8
  store %union.tree_node* %outer_loop, %union.tree_node** %outer_loop.addr, align 8
  store i32 %nloop, i32* %nloop.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 1
  %1 = load i64, i64* %elements_used, align 8
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 0
  %3 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %num_elements1 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 0
  %6 = load i64, i64* %num_elements1, align 8
  %mul = mul i64 2, %6
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %4, i64 %mul)
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @loop_chain, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %call2 = call noalias i8* @xmalloc(i64 40)
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %elements_used3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 1
  %8 = load i64, i64* %elements_used3, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %elements_used3, align 8
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %8
  store i8* %call2, i8** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %elements_used4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 1
  %11 = load i64, i64* %elements_used4, align 8
  %sub = sub i64 %11, 1
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %generic6 = bitcast %union.varray_data_tag* %data5 to [1 x i8*]*
  %arrayidx7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic6, i32 0, i64 %sub
  %13 = load i8*, i8** %arrayidx7, align 8
  %14 = bitcast i8* %13 to %struct.loop*
  store %struct.loop* %14, %struct.loop** %loop_ptr, align 8
  %15 = load %union.tree_node*, %union.tree_node** %outer_loop.addr, align 8
  %16 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %outer_loop8 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 0
  store %union.tree_node* %15, %union.tree_node** %outer_loop8, align 8
  %17 = load %union.tree_node*, %union.tree_node** %loop_node.addr, align 8
  %18 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %containing_loop = getelementptr inbounds %struct.loop, %struct.loop* %18, i32 0, i32 1
  store %union.tree_node* %17, %union.tree_node** %containing_loop, align 8
  %19 = load i32, i32* %nloop.addr, align 4
  %20 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %depth = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 2
  store i32 %19, i32* %depth, align 4
  %21 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %status = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 3
  store i32 0, i32* %status, align 4
  %22 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %next_nest = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 4
  store %struct.loop* null, %struct.loop** %next_nest, align 8
  %23 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %ind = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 5
  store %struct.induction* null, %struct.induction** %ind, align 8
  %24 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  ret %struct.loop* %24
}

; Function Attrs: nounwind uwtable
define internal i32 @find_induction_variable(%union.tree_node* %init_node, %union.tree_node* %cond_node, %union.tree_node* %incr_node, %struct.loop* %loop_def) #0 {
entry:
  %retval = alloca i32, align 4
  %init_node.addr = alloca %union.tree_node*, align 8
  %cond_node.addr = alloca %union.tree_node*, align 8
  %incr_node.addr = alloca %union.tree_node*, align 8
  %loop_def.addr = alloca %struct.loop*, align 8
  %ind_ptr = alloca %struct.induction*, align 8
  %incr_code = alloca i32, align 4
  %incr = alloca %union.tree_node*, align 8
  store %union.tree_node* %init_node, %union.tree_node** %init_node.addr, align 8
  store %union.tree_node* %cond_node, %union.tree_node** %cond_node.addr, align 8
  store %union.tree_node* %incr_node, %union.tree_node** %incr_node.addr, align 8
  store %struct.loop* %loop_def, %struct.loop** %loop_def.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %init_node.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %tobool1 = icmp ne %union.tree_node* %1, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %tobool3 = icmp ne %union.tree_node* %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %incr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.end
  %4 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common4 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  store i32 %bf.clear7, i32* %incr_code, align 4
  %7 = load i32, i32* %incr_code, align 4
  %cmp8 = icmp eq i32 %7, 129
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %while.body
  %8 = load i32, i32* %incr_code, align 4
  %cmp10 = icmp eq i32 %8, 131
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %9 = load i32, i32* %incr_code, align 4
  %cmp12 = icmp eq i32 %9, 130
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %10 = load i32, i32* %incr_code, align 4
  %cmp14 = icmp eq i32 %10, 132
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false.9, %while.body
  %11 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp16 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands17 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp16, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands17, i32 0, i64 0
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8
  store %union.tree_node* %12, %union.tree_node** %incr_node.addr, align 8
  br label %while.end

if.end.19:                                        ; preds = %lor.lhs.false.13
  %13 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp20 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands21 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands21, i32 0, i64 1
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx22, align 8
  %common23 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load25 = load i32, i32* %code24, align 8
  %bf.clear26 = and i32 %bf.load25, 255
  store i32 %bf.clear26, i32* %incr_code, align 4
  %15 = load i32, i32* %incr_code, align 4
  %cmp27 = icmp eq i32 %15, 129
  br i1 %cmp27, label %if.then.34, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.19
  %16 = load i32, i32* %incr_code, align 4
  %cmp29 = icmp eq i32 %16, 131
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.28
  %17 = load i32, i32* %incr_code, align 4
  %cmp31 = icmp eq i32 %17, 130
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %18 = load i32, i32* %incr_code, align 4
  %cmp33 = icmp eq i32 %18, 132
  br i1 %cmp33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false.30, %lor.lhs.false.28, %if.end.19
  %19 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp35 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands36 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp35, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands36, i32 0, i64 1
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx37, align 8
  store %union.tree_node* %20, %union.tree_node** %incr_node.addr, align 8
  br label %while.end

if.end.38:                                        ; preds = %lor.lhs.false.32
  %21 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp39 = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands40 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp39, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands40, i32 0, i64 1
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx41, align 8
  store %union.tree_node* %22, %union.tree_node** %incr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.34, %if.then.15, %while.cond
  %23 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %list = bitcast %union.tree_node* %23 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %24 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %24, %union.tree_node** %cond_node.addr, align 8
  %25 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  store %union.tree_node* %25, %union.tree_node** %incr, align 8
  br label %while.cond.42

while.cond.42:                                    ; preds = %if.end.151, %while.end
  %26 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %common43 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code44 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common43, i32 0, i32 2
  %bf.load45 = load i32, i32* %code44, align 8
  %bf.clear46 = and i32 %bf.load45, 255
  %cmp47 = icmp eq i32 %bf.clear46, 91
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.42
  %27 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %common48 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load50 = load i32, i32* %code49, align 8
  %bf.clear51 = and i32 %bf.load50, 255
  %cmp52 = icmp eq i32 %bf.clear51, 92
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.42
  %28 = phi i1 [ true, %while.cond.42 ], [ %cmp52, %lor.rhs ]
  br i1 %28, label %while.body.53, label %while.end.155

while.body.53:                                    ; preds = %lor.end
  %29 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp54 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands55 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp54, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands55, i32 0, i64 0
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx56, align 8
  %common57 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %code58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 2
  %bf.load59 = load i32, i32* %code58, align 8
  %bf.clear60 = and i32 %bf.load59, 255
  %idxprom = sext i32 %bf.clear60 to i64
  %arrayidx61 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx61, align 1
  %conv = sext i8 %31 to i32
  %cmp62 = icmp eq i32 %conv, 60
  br i1 %cmp62, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %while.body.53
  %32 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp64 = bitcast %union.tree_node* %32 to %struct.tree_exp*
  %operands65 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp64, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands65, i32 0, i64 0
  %33 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8
  %exp67 = bitcast %union.tree_node* %33 to %struct.tree_exp*
  %operands68 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp67, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands68, i32 0, i64 0
  %34 = load %union.tree_node*, %union.tree_node** %arrayidx69, align 8
  %common70 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %code71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 2
  %bf.load72 = load i32, i32* %code71, align 8
  %bf.clear73 = and i32 %bf.load72, 255
  %cmp74 = icmp eq i32 %bf.clear73, 34
  br i1 %cmp74, label %land.lhs.true.76, label %cond.false

land.lhs.true.76:                                 ; preds = %land.lhs.true
  %35 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp77 = bitcast %union.tree_node* %35 to %struct.tree_exp*
  %operands78 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp77, i32 0, i32 2
  %arrayidx79 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands78, i32 0, i64 0
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx79, align 8
  %exp80 = bitcast %union.tree_node* %36 to %struct.tree_exp*
  %operands81 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp80, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands81, i32 0, i64 0
  %37 = load %union.tree_node*, %union.tree_node** %arrayidx82, align 8
  %decl = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %38 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %38 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %39 = load i8*, i8** %str, align 8
  %40 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %exp83 = bitcast %union.tree_node* %40 to %struct.tree_exp*
  %operands84 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp83, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands84, i32 0, i64 0
  %41 = load %union.tree_node*, %union.tree_node** %arrayidx85, align 8
  %decl86 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %name87 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl86, i32 0, i32 8
  %42 = load %union.tree_node*, %union.tree_node** %name87, align 8
  %identifier88 = bitcast %union.tree_node* %42 to %struct.tree_identifier*
  %id89 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier88, i32 0, i32 1
  %str90 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id89, i32 0, i32 1
  %43 = load i8*, i8** %str90, align 8
  %cmp91 = icmp eq i8* %39, %43
  br i1 %cmp91, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.76
  br i1 true, label %if.then.93, label %if.end.97

cond.false:                                       ; preds = %land.lhs.true.76, %land.lhs.true, %while.body.53
  br i1 false, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %cond.false, %cond.true
  %44 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp94 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands95 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp94, i32 0, i32 2
  %arrayidx96 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands95, i32 0, i64 0
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx96, align 8
  store %union.tree_node* %45, %union.tree_node** %cond_node.addr, align 8
  br label %while.end.155

if.end.97:                                        ; preds = %cond.false, %cond.true
  %46 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp98 = bitcast %union.tree_node* %46 to %struct.tree_exp*
  %operands99 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp98, i32 0, i32 2
  %arrayidx100 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands99, i32 0, i64 1
  %47 = load %union.tree_node*, %union.tree_node** %arrayidx100, align 8
  %common101 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %code102 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common101, i32 0, i32 2
  %bf.load103 = load i32, i32* %code102, align 8
  %bf.clear104 = and i32 %bf.load103, 255
  %idxprom105 = sext i32 %bf.clear104 to i64
  %arrayidx106 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom105
  %48 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %48 to i32
  %cmp108 = icmp eq i32 %conv107, 60
  br i1 %cmp108, label %land.lhs.true.110, label %cond.false.146

land.lhs.true.110:                                ; preds = %if.end.97
  %49 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp111 = bitcast %union.tree_node* %49 to %struct.tree_exp*
  %operands112 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp111, i32 0, i32 2
  %arrayidx113 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands112, i32 0, i64 1
  %50 = load %union.tree_node*, %union.tree_node** %arrayidx113, align 8
  %exp114 = bitcast %union.tree_node* %50 to %struct.tree_exp*
  %operands115 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp114, i32 0, i32 2
  %arrayidx116 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands115, i32 0, i64 0
  %51 = load %union.tree_node*, %union.tree_node** %arrayidx116, align 8
  %common117 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %code118 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common117, i32 0, i32 2
  %bf.load119 = load i32, i32* %code118, align 8
  %bf.clear120 = and i32 %bf.load119, 255
  %cmp121 = icmp eq i32 %bf.clear120, 34
  br i1 %cmp121, label %land.lhs.true.123, label %cond.false.146

land.lhs.true.123:                                ; preds = %land.lhs.true.110
  %52 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp124 = bitcast %union.tree_node* %52 to %struct.tree_exp*
  %operands125 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp124, i32 0, i32 2
  %arrayidx126 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands125, i32 0, i64 1
  %53 = load %union.tree_node*, %union.tree_node** %arrayidx126, align 8
  %exp127 = bitcast %union.tree_node* %53 to %struct.tree_exp*
  %operands128 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp127, i32 0, i32 2
  %arrayidx129 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands128, i32 0, i64 0
  %54 = load %union.tree_node*, %union.tree_node** %arrayidx129, align 8
  %decl130 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %name131 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl130, i32 0, i32 8
  %55 = load %union.tree_node*, %union.tree_node** %name131, align 8
  %identifier132 = bitcast %union.tree_node* %55 to %struct.tree_identifier*
  %id133 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier132, i32 0, i32 1
  %str134 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id133, i32 0, i32 1
  %56 = load i8*, i8** %str134, align 8
  %57 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %exp135 = bitcast %union.tree_node* %57 to %struct.tree_exp*
  %operands136 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp135, i32 0, i32 2
  %arrayidx137 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands136, i32 0, i64 0
  %58 = load %union.tree_node*, %union.tree_node** %arrayidx137, align 8
  %decl138 = bitcast %union.tree_node* %58 to %struct.tree_decl*
  %name139 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl138, i32 0, i32 8
  %59 = load %union.tree_node*, %union.tree_node** %name139, align 8
  %identifier140 = bitcast %union.tree_node* %59 to %struct.tree_identifier*
  %id141 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier140, i32 0, i32 1
  %str142 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id141, i32 0, i32 1
  %60 = load i8*, i8** %str142, align 8
  %cmp143 = icmp eq i8* %56, %60
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %land.lhs.true.123
  br i1 true, label %if.then.147, label %if.end.151

cond.false.146:                                   ; preds = %land.lhs.true.123, %land.lhs.true.110, %if.end.97
  br i1 false, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %cond.false.146, %cond.true.145
  %61 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp148 = bitcast %union.tree_node* %61 to %struct.tree_exp*
  %operands149 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp148, i32 0, i32 2
  %arrayidx150 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands149, i32 0, i64 1
  %62 = load %union.tree_node*, %union.tree_node** %arrayidx150, align 8
  store %union.tree_node* %62, %union.tree_node** %cond_node.addr, align 8
  br label %while.end.155

if.end.151:                                       ; preds = %cond.false.146, %cond.true.145
  %63 = load %union.tree_node*, %union.tree_node** %incr, align 8
  %exp152 = bitcast %union.tree_node* %63 to %struct.tree_exp*
  %operands153 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp152, i32 0, i32 2
  %arrayidx154 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands153, i32 0, i64 0
  %64 = load %union.tree_node*, %union.tree_node** %arrayidx154, align 8
  store %union.tree_node* %64, %union.tree_node** %incr, align 8
  br label %while.cond.42

while.end.155:                                    ; preds = %if.then.147, %if.then.93, %lor.end
  %65 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %common156 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %code157 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common156, i32 0, i32 2
  %bf.load158 = load i32, i32* %code157, align 8
  %bf.clear159 = and i32 %bf.load158, 255
  store i32 %bf.clear159, i32* %incr_code, align 4
  %66 = load i32, i32* %incr_code, align 4
  %cmp160 = icmp eq i32 %66, 129
  br i1 %cmp160, label %land.lhs.true.171, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %while.end.155
  %67 = load i32, i32* %incr_code, align 4
  %cmp163 = icmp eq i32 %67, 131
  br i1 %cmp163, label %land.lhs.true.171, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false.162
  %68 = load i32, i32* %incr_code, align 4
  %cmp166 = icmp eq i32 %68, 130
  br i1 %cmp166, label %land.lhs.true.171, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %lor.lhs.false.165
  %69 = load i32, i32* %incr_code, align 4
  %cmp169 = icmp eq i32 %69, 132
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.363

land.lhs.true.171:                                ; preds = %lor.lhs.false.168, %lor.lhs.false.165, %lor.lhs.false.162, %while.end.155
  %70 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %common172 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %code173 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common172, i32 0, i32 2
  %bf.load174 = load i32, i32* %code173, align 8
  %bf.clear175 = and i32 %bf.load174, 255
  %idxprom176 = sext i32 %bf.clear175 to i64
  %arrayidx177 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom176
  %71 = load i8, i8* %arrayidx177, align 1
  %conv178 = sext i8 %71 to i32
  %cmp179 = icmp eq i32 %conv178, 60
  br i1 %cmp179, label %if.then.181, label %if.end.363

if.then.181:                                      ; preds = %land.lhs.true.171
  %72 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %common182 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %code183 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common182, i32 0, i32 2
  %bf.load184 = load i32, i32* %code183, align 8
  %bf.clear185 = and i32 %bf.load184, 255
  %idxprom186 = sext i32 %bf.clear185 to i64
  %arrayidx187 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom186
  %73 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %73 to i32
  %cmp189 = icmp eq i32 %conv188, 60
  br i1 %cmp189, label %cond.false.221, label %land.lhs.true.191

land.lhs.true.191:                                ; preds = %if.then.181
  %74 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp192 = bitcast %union.tree_node* %74 to %struct.tree_exp*
  %operands193 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp192, i32 0, i32 2
  %arrayidx194 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands193, i32 0, i64 0
  %75 = load %union.tree_node*, %union.tree_node** %arrayidx194, align 8
  %common195 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %code196 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common195, i32 0, i32 2
  %bf.load197 = load i32, i32* %code196, align 8
  %bf.clear198 = and i32 %bf.load197, 255
  %cmp199 = icmp eq i32 %bf.clear198, 34
  br i1 %cmp199, label %land.lhs.true.201, label %cond.false.221

land.lhs.true.201:                                ; preds = %land.lhs.true.191
  %76 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp202 = bitcast %union.tree_node* %76 to %struct.tree_exp*
  %operands203 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp202, i32 0, i32 2
  %arrayidx204 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands203, i32 0, i64 0
  %77 = load %union.tree_node*, %union.tree_node** %arrayidx204, align 8
  %decl205 = bitcast %union.tree_node* %77 to %struct.tree_decl*
  %name206 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl205, i32 0, i32 8
  %78 = load %union.tree_node*, %union.tree_node** %name206, align 8
  %identifier207 = bitcast %union.tree_node* %78 to %struct.tree_identifier*
  %id208 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier207, i32 0, i32 1
  %str209 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id208, i32 0, i32 1
  %79 = load i8*, i8** %str209, align 8
  %80 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %exp210 = bitcast %union.tree_node* %80 to %struct.tree_exp*
  %operands211 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp210, i32 0, i32 2
  %arrayidx212 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands211, i32 0, i64 0
  %81 = load %union.tree_node*, %union.tree_node** %arrayidx212, align 8
  %decl213 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %name214 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl213, i32 0, i32 8
  %82 = load %union.tree_node*, %union.tree_node** %name214, align 8
  %identifier215 = bitcast %union.tree_node* %82 to %struct.tree_identifier*
  %id216 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier215, i32 0, i32 1
  %str217 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id216, i32 0, i32 1
  %83 = load i8*, i8** %str217, align 8
  %cmp218 = icmp eq i8* %79, %83
  br i1 %cmp218, label %cond.true.220, label %cond.false.221

cond.true.220:                                    ; preds = %land.lhs.true.201
  br i1 true, label %if.then.222, label %if.end.223

cond.false.221:                                   ; preds = %land.lhs.true.201, %land.lhs.true.191, %if.then.181
  br i1 false, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %cond.false.221, %cond.true.220
  store i32 0, i32* %retval
  br label %return

if.end.223:                                       ; preds = %cond.false.221, %cond.true.220
  br label %do.body

do.body:                                          ; preds = %if.end.223
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 1
  %85 = load i64, i64* %elements_used, align 8
  %86 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %86, i32 0, i32 0
  %87 = load i64, i64* %num_elements, align 8
  %cmp224 = icmp uge i64 %85, %87
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %do.body
  %88 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %89 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %num_elements227 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %89, i32 0, i32 0
  %90 = load i64, i64* %num_elements227, align 8
  %mul = mul i64 2, %90
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %88, i64 %mul)
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @induction_chain, align 8
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %do.body
  %call229 = call noalias i8* @xmalloc(i64 32)
  %91 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %elements_used230 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %91, i32 0, i32 1
  %92 = load i64, i64* %elements_used230, align 8
  %inc = add i64 %92, 1
  store i64 %inc, i64* %elements_used230, align 8
  %93 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %93, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx231 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %92
  store i8* %call229, i8** %arrayidx231, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.228
  %94 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %elements_used232 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %94, i32 0, i32 1
  %95 = load i64, i64* %elements_used232, align 8
  %sub = sub i64 %95, 1
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %data233 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 4
  %generic234 = bitcast %union.varray_data_tag* %data233 to [1 x i8*]*
  %arrayidx235 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic234, i32 0, i64 %sub
  %97 = load i8*, i8** %arrayidx235, align 8
  %98 = bitcast i8* %97 to %struct.induction*
  store %struct.induction* %98, %struct.induction** %ind_ptr, align 8
  %99 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %100 = load %struct.loop*, %struct.loop** %loop_def.addr, align 8
  %ind = getelementptr inbounds %struct.loop, %struct.loop* %100, i32 0, i32 5
  store %struct.induction* %99, %struct.induction** %ind, align 8
  %101 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %exp236 = bitcast %union.tree_node* %101 to %struct.tree_exp*
  %operands237 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp236, i32 0, i32 2
  %arrayidx238 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands237, i32 0, i64 0
  %102 = load %union.tree_node*, %union.tree_node** %arrayidx238, align 8
  %decl239 = bitcast %union.tree_node* %102 to %struct.tree_decl*
  %name240 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl239, i32 0, i32 8
  %103 = load %union.tree_node*, %union.tree_node** %name240, align 8
  %identifier241 = bitcast %union.tree_node* %103 to %struct.tree_identifier*
  %id242 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier241, i32 0, i32 1
  %str243 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id242, i32 0, i32 1
  %104 = load i8*, i8** %str243, align 8
  %105 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable = getelementptr inbounds %struct.induction, %struct.induction* %105, i32 0, i32 0
  store i8* %104, i8** %variable, align 8
  %106 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %exp244 = bitcast %union.tree_node* %106 to %struct.tree_exp*
  %operands245 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp244, i32 0, i32 2
  %arrayidx246 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands245, i32 0, i64 1
  %107 = load %union.tree_node*, %union.tree_node** %arrayidx246, align 8
  %int_cst = bitcast %union.tree_node* %107 to %struct.tree_int_cst*
  %int_cst247 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst247, i32 0, i32 0
  %108 = load i64, i64* %low, align 8
  %conv248 = trunc i64 %108 to i32
  %109 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %increment = getelementptr inbounds %struct.induction, %struct.induction* %109, i32 0, i32 1
  store i32 %conv248, i32* %increment, align 4
  %110 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %common249 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %code250 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common249, i32 0, i32 2
  %bf.load251 = load i32, i32* %code250, align 8
  %bf.clear252 = and i32 %bf.load251, 255
  %cmp253 = icmp eq i32 %bf.clear252, 129
  br i1 %cmp253, label %if.then.262, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %do.end
  %111 = load %union.tree_node*, %union.tree_node** %incr_node.addr, align 8
  %common256 = bitcast %union.tree_node* %111 to %struct.tree_common*
  %code257 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common256, i32 0, i32 2
  %bf.load258 = load i32, i32* %code257, align 8
  %bf.clear259 = and i32 %bf.load258, 255
  %cmp260 = icmp eq i32 %bf.clear259, 131
  br i1 %cmp260, label %if.then.262, label %if.end.266

if.then.262:                                      ; preds = %lor.lhs.false.255, %do.end
  %112 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %increment263 = getelementptr inbounds %struct.induction, %struct.induction* %112, i32 0, i32 1
  %113 = load i32, i32* %increment263, align 4
  %sub264 = sub nsw i32 0, %113
  %114 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %increment265 = getelementptr inbounds %struct.induction, %struct.induction* %114, i32 0, i32 1
  store i32 %sub264, i32* %increment265, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.262, %lor.lhs.false.255
  %115 = load %union.tree_node*, %union.tree_node** %init_node.addr, align 8
  %116 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable267 = getelementptr inbounds %struct.induction, %struct.induction* %116, i32 0, i32 0
  %117 = load i8*, i8** %variable267, align 8
  %call268 = call i32 @get_low_bound(%union.tree_node* %115, i8* %117)
  %118 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %low_bound = getelementptr inbounds %struct.induction, %struct.induction* %118, i32 0, i32 2
  store i32 %call268, i32* %low_bound, align 4
  %119 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp269 = bitcast %union.tree_node* %119 to %struct.tree_exp*
  %operands270 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp269, i32 0, i32 2
  %arrayidx271 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands270, i32 0, i64 0
  %120 = load %union.tree_node*, %union.tree_node** %arrayidx271, align 8
  %common272 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %code273 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common272, i32 0, i32 2
  %bf.load274 = load i32, i32* %code273, align 8
  %bf.clear275 = and i32 %bf.load274, 255
  %cmp276 = icmp eq i32 %bf.clear275, 34
  br i1 %cmp276, label %land.lhs.true.278, label %if.else.313

land.lhs.true.278:                                ; preds = %if.end.266
  %121 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp279 = bitcast %union.tree_node* %121 to %struct.tree_exp*
  %operands280 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp279, i32 0, i32 2
  %arrayidx281 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands280, i32 0, i64 0
  %122 = load %union.tree_node*, %union.tree_node** %arrayidx281, align 8
  %decl282 = bitcast %union.tree_node* %122 to %struct.tree_decl*
  %name283 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl282, i32 0, i32 8
  %123 = load %union.tree_node*, %union.tree_node** %name283, align 8
  %identifier284 = bitcast %union.tree_node* %123 to %struct.tree_identifier*
  %id285 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier284, i32 0, i32 1
  %str286 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id285, i32 0, i32 1
  %124 = load i8*, i8** %str286, align 8
  %125 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable287 = getelementptr inbounds %struct.induction, %struct.induction* %125, i32 0, i32 0
  %126 = load i8*, i8** %variable287, align 8
  %cmp288 = icmp eq i8* %124, %126
  br i1 %cmp288, label %if.then.290, label %if.else.313

if.then.290:                                      ; preds = %land.lhs.true.278
  %127 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp291 = bitcast %union.tree_node* %127 to %struct.tree_exp*
  %operands292 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp291, i32 0, i32 2
  %arrayidx293 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands292, i32 0, i64 1
  %128 = load %union.tree_node*, %union.tree_node** %arrayidx293, align 8
  %common294 = bitcast %union.tree_node* %128 to %struct.tree_common*
  %code295 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common294, i32 0, i32 2
  %bf.load296 = load i32, i32* %code295, align 8
  %bf.clear297 = and i32 %bf.load296, 255
  %cmp298 = icmp eq i32 %bf.clear297, 25
  br i1 %cmp298, label %if.then.300, label %if.else

if.then.300:                                      ; preds = %if.then.290
  %129 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp301 = bitcast %union.tree_node* %129 to %struct.tree_exp*
  %operands302 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp301, i32 0, i32 2
  %arrayidx303 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands302, i32 0, i64 1
  %130 = load %union.tree_node*, %union.tree_node** %arrayidx303, align 8
  %int_cst304 = bitcast %union.tree_node* %130 to %struct.tree_int_cst*
  %int_cst305 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst304, i32 0, i32 2
  %low306 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst305, i32 0, i32 0
  %131 = load i64, i64* %low306, align 8
  %conv307 = trunc i64 %131 to i32
  %132 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound = getelementptr inbounds %struct.induction, %struct.induction* %132, i32 0, i32 3
  store i32 %conv307, i32* %high_bound, align 4
  br label %if.end.312

if.else:                                          ; preds = %if.then.290
  %133 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %increment308 = getelementptr inbounds %struct.induction, %struct.induction* %133, i32 0, i32 1
  %134 = load i32, i32* %increment308, align 4
  %cmp309 = icmp slt i32 %134, 0
  %cond = select i1 %cmp309, i32 -2147483648, i32 2147483647
  %135 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound311 = getelementptr inbounds %struct.induction, %struct.induction* %135, i32 0, i32 3
  store i32 %cond, i32* %high_bound311, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.else, %if.then.300
  br label %if.end.362

if.else.313:                                      ; preds = %land.lhs.true.278, %if.end.266
  %136 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp314 = bitcast %union.tree_node* %136 to %struct.tree_exp*
  %operands315 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp314, i32 0, i32 2
  %arrayidx316 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands315, i32 0, i64 1
  %137 = load %union.tree_node*, %union.tree_node** %arrayidx316, align 8
  %common317 = bitcast %union.tree_node* %137 to %struct.tree_common*
  %code318 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common317, i32 0, i32 2
  %bf.load319 = load i32, i32* %code318, align 8
  %bf.clear320 = and i32 %bf.load319, 255
  %cmp321 = icmp eq i32 %bf.clear320, 34
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.361

land.lhs.true.323:                                ; preds = %if.else.313
  %138 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp324 = bitcast %union.tree_node* %138 to %struct.tree_exp*
  %operands325 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp324, i32 0, i32 2
  %arrayidx326 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands325, i32 0, i64 1
  %139 = load %union.tree_node*, %union.tree_node** %arrayidx326, align 8
  %decl327 = bitcast %union.tree_node* %139 to %struct.tree_decl*
  %name328 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl327, i32 0, i32 8
  %140 = load %union.tree_node*, %union.tree_node** %name328, align 8
  %identifier329 = bitcast %union.tree_node* %140 to %struct.tree_identifier*
  %id330 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier329, i32 0, i32 1
  %str331 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id330, i32 0, i32 1
  %141 = load i8*, i8** %str331, align 8
  %142 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable332 = getelementptr inbounds %struct.induction, %struct.induction* %142, i32 0, i32 0
  %143 = load i8*, i8** %variable332, align 8
  %cmp333 = icmp eq i8* %141, %143
  br i1 %cmp333, label %if.then.335, label %if.end.361

if.then.335:                                      ; preds = %land.lhs.true.323
  %144 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp336 = bitcast %union.tree_node* %144 to %struct.tree_exp*
  %operands337 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp336, i32 0, i32 2
  %arrayidx338 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands337, i32 0, i64 0
  %145 = load %union.tree_node*, %union.tree_node** %arrayidx338, align 8
  %common339 = bitcast %union.tree_node* %145 to %struct.tree_common*
  %code340 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common339, i32 0, i32 2
  %bf.load341 = load i32, i32* %code340, align 8
  %bf.clear342 = and i32 %bf.load341, 255
  %cmp343 = icmp eq i32 %bf.clear342, 25
  br i1 %cmp343, label %if.then.345, label %if.else.354

if.then.345:                                      ; preds = %if.then.335
  %146 = load %union.tree_node*, %union.tree_node** %cond_node.addr, align 8
  %exp346 = bitcast %union.tree_node* %146 to %struct.tree_exp*
  %operands347 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp346, i32 0, i32 2
  %arrayidx348 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands347, i32 0, i64 0
  %147 = load %union.tree_node*, %union.tree_node** %arrayidx348, align 8
  %int_cst349 = bitcast %union.tree_node* %147 to %struct.tree_int_cst*
  %int_cst350 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst349, i32 0, i32 2
  %low351 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst350, i32 0, i32 0
  %148 = load i64, i64* %low351, align 8
  %conv352 = trunc i64 %148 to i32
  %149 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound353 = getelementptr inbounds %struct.induction, %struct.induction* %149, i32 0, i32 3
  store i32 %conv352, i32* %high_bound353, align 4
  br label %if.end.360

if.else.354:                                      ; preds = %if.then.335
  %150 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %increment355 = getelementptr inbounds %struct.induction, %struct.induction* %150, i32 0, i32 1
  %151 = load i32, i32* %increment355, align 4
  %cmp356 = icmp slt i32 %151, 0
  %cond358 = select i1 %cmp356, i32 -2147483648, i32 2147483647
  %152 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound359 = getelementptr inbounds %struct.induction, %struct.induction* %152, i32 0, i32 3
  store i32 %cond358, i32* %high_bound359, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.354, %if.then.345
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %land.lhs.true.323, %if.else.313
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.end.312
  %153 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %next = getelementptr inbounds %struct.induction, %struct.induction* %153, i32 0, i32 4
  store %struct.induction* null, %struct.induction** %next, align 8
  store i32 1, i32* %retval
  br label %return

if.end.363:                                       ; preds = %land.lhs.true.171, %lor.lhs.false.168
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.363, %if.end.362, %if.then.222, %if.then
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define internal i32 @have_induction_variable(%union.tree_node* %outer_loop, i8* %ind_var) #0 {
entry:
  %retval = alloca i32, align 4
  %outer_loop.addr = alloca %union.tree_node*, align 8
  %ind_var.addr = alloca i8*, align 8
  %ind_ptr = alloca %struct.induction*, align 8
  %loop_ptr = alloca %struct.loop*, align 8
  %ind_idx = alloca i32, align 4
  %loop_idx = alloca i32, align 4
  store %union.tree_node* %outer_loop, %union.tree_node** %outer_loop.addr, align 8
  store i8* %ind_var, i8** %ind_var.addr, align 8
  store i32 0, i32* %ind_idx, align 4
  store i32 0, i32* %loop_idx, align 4
  %0 = load i32, i32* %loop_idx, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = bitcast i8* %2 to %struct.loop*
  store %struct.loop* %3, %struct.loop** %loop_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %4 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %tobool = icmp ne %struct.loop* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %loop_idx, align 4
  %conv = zext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end.22

for.body:                                         ; preds = %land.end
  %9 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %outer_loop2 = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %outer_loop2, align 8
  %11 = load %union.tree_node*, %union.tree_node** %outer_loop.addr, align 8
  %cmp3 = icmp eq %union.tree_node* %10, %11
  br i1 %cmp3, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.body
  %12 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %ind = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 5
  %13 = load %struct.induction*, %struct.induction** %ind, align 8
  store %struct.induction* %13, %struct.induction** %ind_ptr, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.then
  %14 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %tobool6 = icmp ne %struct.induction* %14, null
  br i1 %tobool6, label %land.rhs.7, label %land.end.12

land.rhs.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %ind_idx, align 4
  %conv8 = zext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @induction_chain, align 8
  %num_elements9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 0
  %17 = load i64, i64* %num_elements9, align 8
  %cmp10 = icmp ult i64 %conv8, %17
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.7, %for.cond.5
  %18 = phi i1 [ false, %for.cond.5 ], [ %cmp10, %land.rhs.7 ]
  br i1 %18, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %land.end.12
  %19 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable = getelementptr inbounds %struct.induction, %struct.induction* %19, i32 0, i32 0
  %20 = load i8*, i8** %variable, align 8
  %21 = load i8*, i8** %ind_var.addr, align 8
  %call = call i32 @strcmp(i8* %20, i8* %21) #6
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %for.body.13
  %22 = load i32, i32* %loop_idx, align 4
  %add = add i32 %22, 1
  store i32 %add, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %next = getelementptr inbounds %struct.induction, %struct.induction* %23, i32 0, i32 4
  %24 = load %struct.induction*, %struct.induction** %next, align 8
  store %struct.induction* %24, %struct.induction** %ind_ptr, align 8
  br label %for.cond.5

for.end:                                          ; preds = %land.end.12
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %for.body
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %25 = load i32, i32* %loop_idx, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %loop_idx, align 4
  %idxprom18 = zext i32 %inc to i64
  %26 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data19 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %26, i32 0, i32 4
  %generic20 = bitcast %union.varray_data_tag* %data19 to [1 x i8*]*
  %arrayidx21 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic20, i32 0, i64 %idxprom18
  %27 = load i8*, i8** %arrayidx21, align 8
  %28 = bitcast i8* %27 to %struct.loop*
  store %struct.loop* %28, %struct.loop** %loop_ptr, align 8
  br label %for.cond

for.end.22:                                       ; preds = %land.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.22, %if.then.15
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_low_bound(%union.tree_node* %node, i8* %variable) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %union.tree_node*, align 8
  %variable.addr = alloca i8*, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i8* %variable, i8** %variable.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 166
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %2, %union.tree_node** %node.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -2147483648, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end.3
  %4 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common4 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 47
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common9 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 48
  br i1 %cmp13, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %while.body
  %7 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp14 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands15 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp14, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands15, i32 0, i64 0
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx16, align 8
  %common17 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load19 = load i32, i32* %code18, align 8
  %bf.clear20 = and i32 %bf.load19, 255
  %cmp21 = icmp eq i32 %bf.clear20, 34
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %9 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp23 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands24 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp23, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands24, i32 0, i64 0
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx25, align 8
  %decl = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %11 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %11 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  %13 = load i8*, i8** %variable.addr, align 8
  %cmp26 = icmp eq i8* %12, %13
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.22
  br label %while.end

if.end.28:                                        ; preds = %land.lhs.true.22, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.27, %while.cond
  %14 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common29 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 152
  br i1 %cmp33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %while.end
  %15 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp35 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands36 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp35, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands36, i32 0, i64 0
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx37, align 8
  store %union.tree_node* %16, %union.tree_node** %node.addr, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %while.end
  %17 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common39 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %code40, align 8
  %bf.clear42 = and i32 %bf.load41, 255
  %cmp43 = icmp eq i32 %bf.clear42, 48
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.68

land.lhs.true.44:                                 ; preds = %if.end.38
  %18 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp45 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands46 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp45, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands46, i32 0, i64 0
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx47, align 8
  %common48 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load50 = load i32, i32* %code49, align 8
  %bf.clear51 = and i32 %bf.load50, 255
  %cmp52 = icmp eq i32 %bf.clear51, 34
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.68

land.lhs.true.53:                                 ; preds = %land.lhs.true.44
  %20 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp54 = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands55 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp54, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands55, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx56, align 8
  %decl57 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %name58 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl57, i32 0, i32 8
  %22 = load %union.tree_node*, %union.tree_node** %name58, align 8
  %identifier59 = bitcast %union.tree_node* %22 to %struct.tree_identifier*
  %id60 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier59, i32 0, i32 1
  %str61 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id60, i32 0, i32 1
  %23 = load i8*, i8** %str61, align 8
  %24 = load i8*, i8** %variable.addr, align 8
  %cmp62 = icmp eq i8* %23, %24
  br i1 %cmp62, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %land.lhs.true.53
  %25 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp64 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands65 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp64, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands65, i32 0, i64 1
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8
  %int_cst = bitcast %union.tree_node* %26 to %struct.tree_int_cst*
  %int_cst67 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst67, i32 0, i32 0
  %27 = load i64, i64* %low, align 8
  %conv = trunc i64 %27 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.53, %land.lhs.true.44, %if.end.38
  store i32 -2147483648, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.63, %if.then.2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @check_node_dependence(%struct.def_use* %du) #0 {
entry:
  %du.addr = alloca %struct.def_use*, align 8
  %def_ptr = alloca %struct.def_use*, align 8
  %use_ptr = alloca %struct.def_use*, align 8
  %dep_ptr = alloca %struct.dependence*, align 8
  %dep_list = alloca %struct.dependence*, align 8
  %icoefficients = alloca [13 x %struct.subscript], align 16
  %ocoefficients = alloca [13 x %struct.subscript], align 16
  %loop_ptr = alloca %struct.loop*, align 8
  %ck_loop_ptr = alloca %struct.loop*, align 8
  %loop_idx = alloca i32, align 4
  %distance = alloca [13 x [13 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %subscript_count = alloca i32, align 4
  %unnormal_loop = alloca i32, align 4
  %direction = alloca [13 x [13 x i32]], align 16
  %complexity = alloca [13 x i32], align 16
  %separability = alloca i32, align 4
  %have_dependence = alloca i32, align 4
  %dep_root_ptr = alloca %struct.dependence*, align 8
  store %struct.def_use* %du, %struct.def_use** %du.addr, align 8
  store i32 0, i32* %loop_idx, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx, i32 0, i64 0
  store i32 7, i32* %arrayidx1, align 4
  %2 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx3, i32 0, i64 0
  store i32 0, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  store %struct.def_use* %4, %struct.def_use** %def_ptr, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.297, %for.end
  %5 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %tobool = icmp ne %struct.def_use* %5, null
  br i1 %tobool, label %for.body.6, label %for.end.299

for.body.6:                                       ; preds = %for.cond.5
  %6 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %type = getelementptr inbounds %struct.def_use, %struct.def_use* %6, i32 0, i32 4
  %7 = load i32, i32* %type, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %for.inc.297

if.end:                                           ; preds = %for.body.6
  %8 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %arraydecay = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %ocoefficients, i32 0, i32 0
  %call = call i32 @get_coefficients(%struct.def_use* %8, %struct.subscript* %arraydecay)
  store i32 %call, i32* %subscript_count, align 4
  %9 = load i32, i32* %subscript_count, align 4
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %for.inc.297

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %loop_idx, align 4
  %10 = load i32, i32* %loop_idx, align 4
  %idxprom11 = zext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %generic = bitcast %union.varray_data_tag* %data to [1 x i8*]*
  %arrayidx12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic, i32 0, i64 %idxprom11
  %12 = load i8*, i8** %arrayidx12, align 8
  %13 = bitcast i8* %12 to %struct.loop*
  store %struct.loop* %13, %struct.loop** %loop_ptr, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %if.end.10
  %14 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %tobool14 = icmp ne %struct.loop* %14, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.13
  %15 = load i32, i32* %loop_idx, align 4
  %conv = zext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 0
  %17 = load i64, i64* %num_elements, align 8
  %cmp15 = icmp ult i64 %conv, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.13
  %18 = phi i1 [ false, %for.cond.13 ], [ %cmp15, %land.rhs ]
  br i1 %18, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %land.end
  %19 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %outer_loop = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 0
  %20 = load %union.tree_node*, %union.tree_node** %outer_loop, align 8
  %21 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %outer_loop18 = getelementptr inbounds %struct.def_use, %struct.def_use* %21, i32 0, i32 0
  %22 = load %union.tree_node*, %union.tree_node** %outer_loop18, align 8
  %cmp19 = icmp eq %union.tree_node* %20, %22
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.17
  br label %for.end.29

if.end.22:                                        ; preds = %for.body.17
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %23 = load i32, i32* %loop_idx, align 4
  %inc24 = add i32 %23, 1
  store i32 %inc24, i32* %loop_idx, align 4
  %idxprom25 = zext i32 %inc24 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data26 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %generic27 = bitcast %union.varray_data_tag* %data26 to [1 x i8*]*
  %arrayidx28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic27, i32 0, i64 %idxprom25
  %25 = load i8*, i8** %arrayidx28, align 8
  %26 = bitcast i8* %25 to %struct.loop*
  store %struct.loop* %26, %struct.loop** %loop_ptr, align 8
  br label %for.cond.13

for.end.29:                                       ; preds = %if.then.21, %land.end
  store i32 0, i32* %unnormal_loop, align 4
  %27 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  store %struct.loop* %27, %struct.loop** %ck_loop_ptr, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.47, %for.end.29
  %28 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %tobool31 = icmp ne %struct.loop* %28, null
  br i1 %tobool31, label %land.rhs.32, label %land.end.37

land.rhs.32:                                      ; preds = %for.cond.30
  %29 = load i32, i32* %loop_idx, align 4
  %conv33 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %num_elements34 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 0
  %31 = load i64, i64* %num_elements34, align 8
  %cmp35 = icmp ult i64 %conv33, %31
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.32, %for.cond.30
  %32 = phi i1 [ false, %for.cond.30 ], [ %cmp35, %land.rhs.32 ]
  br i1 %32, label %for.body.38, label %for.end.53

for.body.38:                                      ; preds = %land.end.37
  %33 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %outer_loop39 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 0
  %34 = load %union.tree_node*, %union.tree_node** %outer_loop39, align 8
  %35 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %outer_loop40 = getelementptr inbounds %struct.def_use, %struct.def_use* %35, i32 0, i32 0
  %36 = load %union.tree_node*, %union.tree_node** %outer_loop40, align 8
  %cmp41 = icmp eq %union.tree_node* %34, %36
  br i1 %cmp41, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.body.38
  %37 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %status = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 3
  %38 = load i32, i32* %status, align 4
  %cmp43 = icmp eq i32 %38, 1
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true
  store i32 1, i32* %unnormal_loop, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true, %for.body.38
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %39 = load i32, i32* %loop_idx, align 4
  %inc48 = add i32 %39, 1
  store i32 %inc48, i32* %loop_idx, align 4
  %idxprom49 = zext i32 %inc48 to i64
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @loop_chain, align 8
  %data50 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 4
  %generic51 = bitcast %union.varray_data_tag* %data50 to [1 x i8*]*
  %arrayidx52 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic51, i32 0, i64 %idxprom49
  %41 = load i8*, i8** %arrayidx52, align 8
  %42 = bitcast i8* %41 to %struct.loop*
  store %struct.loop* %42, %struct.loop** %ck_loop_ptr, align 8
  br label %for.cond.30

for.end.53:                                       ; preds = %land.end.37
  %43 = load i32, i32* %unnormal_loop, align 4
  %tobool54 = icmp ne i32 %43, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.53
  br label %for.inc.297

if.end.56:                                        ; preds = %for.end.53
  %arraydecay57 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %ocoefficients, i32 0, i32 0
  %44 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %45 = load i32, i32* %subscript_count, align 4
  call void @normalize_coefficients(%struct.subscript* %arraydecay57, %struct.loop* %44, i32 %45)
  %46 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  store %struct.def_use* %46, %struct.def_use** %use_ptr, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.294, %if.end.56
  %47 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %tobool59 = icmp ne %struct.def_use* %47, null
  br i1 %tobool59, label %for.body.60, label %for.end.296

for.body.60:                                      ; preds = %for.cond.58
  %48 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %49 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %cmp61 = icmp eq %struct.def_use* %48, %49
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.60
  %50 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %outer_loop63 = getelementptr inbounds %struct.def_use, %struct.def_use* %50, i32 0, i32 0
  %51 = load %union.tree_node*, %union.tree_node** %outer_loop63, align 8
  %52 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %outer_loop64 = getelementptr inbounds %struct.def_use, %struct.def_use* %52, i32 0, i32 0
  %53 = load %union.tree_node*, %union.tree_node** %outer_loop64, align 8
  %cmp65 = icmp ne %union.tree_node* %51, %53
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false, %for.body.60
  br label %for.inc.294

if.end.68:                                        ; preds = %lor.lhs.false
  %54 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %status69 = getelementptr inbounds %struct.def_use, %struct.def_use* %54, i32 0, i32 5
  store i32 0, i32* %status69, align 4
  %55 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %status70 = getelementptr inbounds %struct.def_use, %struct.def_use* %55, i32 0, i32 5
  store i32 0, i32* %status70, align 4
  %56 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %arraydecay71 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %icoefficients, i32 0, i32 0
  %call72 = call i32 @get_coefficients(%struct.def_use* %56, %struct.subscript* %arraydecay71)
  store i32 %call72, i32* %subscript_count, align 4
  %arraydecay73 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %icoefficients, i32 0, i32 0
  %57 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  %58 = load i32, i32* %subscript_count, align 4
  call void @normalize_coefficients(%struct.subscript* %arraydecay73, %struct.loop* %57, i32 %58)
  %arraydecay74 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %icoefficients, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %ocoefficients, i32 0, i32 0
  %arraydecay76 = getelementptr inbounds [13 x i32], [13 x i32]* %complexity, i32 0, i32 0
  %59 = load i32, i32* %subscript_count, align 4
  call void @classify_dependence(%struct.subscript* %arraydecay74, %struct.subscript* %arraydecay75, i32* %arraydecay76, i32* %separability, i32 %59)
  store i32 1, i32* %i, align 4
  %60 = load %struct.loop*, %struct.loop** %loop_ptr, align 8
  store %struct.loop* %60, %struct.loop** %ck_loop_ptr, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.134, %if.end.68
  %61 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %tobool78 = icmp ne %struct.loop* %61, null
  br i1 %tobool78, label %for.body.79, label %for.end.136

for.body.79:                                      ; preds = %for.cond.77
  store i32 1, i32* %j, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.131, %for.body.79
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %subscript_count, align 4
  %cmp81 = icmp sle i32 %62, %63
  br i1 %cmp81, label %for.body.83, label %for.end.133

for.body.83:                                      ; preds = %for.cond.80
  %64 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx86, i32 0, i64 %idxprom84
  store i32 5, i32* %arrayidx87, align 4
  %66 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx90, i32 0, i64 %idxprom88
  store i32 2147483647, i32* %arrayidx91, align 4
  %68 = load i32, i32* %separability, align 4
  %tobool92 = icmp ne i32 %68, 0
  br i1 %tobool92, label %land.lhs.true.93, label %if.else

land.lhs.true.93:                                 ; preds = %for.body.83
  %69 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [13 x i32], [13 x i32]* %complexity, i32 0, i64 %idxprom94
  %70 = load i32, i32* %arrayidx95, align 4
  %cmp96 = icmp eq i32 %70, 0
  br i1 %cmp96, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %land.lhs.true.93
  %arraydecay99 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %icoefficients, i32 0, i32 0
  %arraydecay100 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %ocoefficients, i32 0, i32 0
  %arraydecay101 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i32 0
  %arraydecay102 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i32 0
  %71 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %72 = load i32, i32* %j, align 4
  call void @ziv_test(%struct.subscript* %arraydecay99, %struct.subscript* %arraydecay100, [13 x i32]* %arraydecay101, [13 x i32]* %arraydecay102, %struct.loop* %71, i32 %72)
  br label %if.end.130

if.else:                                          ; preds = %land.lhs.true.93, %for.body.83
  %73 = load i32, i32* %separability, align 4
  %tobool103 = icmp ne i32 %73, 0
  br i1 %tobool103, label %land.lhs.true.104, label %if.else.124

land.lhs.true.104:                                ; preds = %if.else
  %74 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %74 to i64
  %arrayidx106 = getelementptr inbounds [13 x i32], [13 x i32]* %complexity, i32 0, i64 %idxprom105
  %75 = load i32, i32* %arrayidx106, align 4
  %cmp107 = icmp eq i32 %75, 1
  br i1 %cmp107, label %if.then.119, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.104
  %76 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %76 to i64
  %arrayidx111 = getelementptr inbounds [13 x i32], [13 x i32]* %complexity, i32 0, i64 %idxprom110
  %77 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp eq i32 %77, 3
  br i1 %cmp112, label %if.then.119, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false.109
  %78 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %78 to i64
  %arrayidx116 = getelementptr inbounds [13 x i32], [13 x i32]* %complexity, i32 0, i64 %idxprom115
  %79 = load i32, i32* %arrayidx116, align 4
  %cmp117 = icmp eq i32 %79, 4
  br i1 %cmp117, label %if.then.119, label %if.else.124

if.then.119:                                      ; preds = %lor.lhs.false.114, %lor.lhs.false.109, %land.lhs.true.104
  %arraydecay120 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %icoefficients, i32 0, i32 0
  %arraydecay121 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %ocoefficients, i32 0, i32 0
  %arraydecay122 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i32 0
  %arraydecay123 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i32 0
  %80 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %81 = load i32, i32* %j, align 4
  call void @siv_test(%struct.subscript* %arraydecay120, %struct.subscript* %arraydecay121, [13 x i32]* %arraydecay122, [13 x i32]* %arraydecay123, %struct.loop* %80, i32 %81)
  br label %if.end.129

if.else.124:                                      ; preds = %lor.lhs.false.114, %if.else
  %arraydecay125 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %icoefficients, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [13 x %struct.subscript], [13 x %struct.subscript]* %ocoefficients, i32 0, i32 0
  %arraydecay127 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i32 0
  %arraydecay128 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i32 0
  %82 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %83 = load i32, i32* %j, align 4
  call void @gcd_test(%struct.subscript* %arraydecay125, %struct.subscript* %arraydecay126, [13 x i32]* %arraydecay127, [13 x i32]* %arraydecay128, %struct.loop* %82, i32 %83)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.124, %if.then.119
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.98
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %84 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %84, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.80

for.end.133:                                      ; preds = %for.cond.80
  %85 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %next_nest = getelementptr inbounds %struct.loop, %struct.loop* %85, i32 0, i32 4
  %86 = load %struct.loop*, %struct.loop** %next_nest, align 8
  store %struct.loop* %86, %struct.loop** %ck_loop_ptr, align 8
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.133
  %87 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %87, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.77

for.end.136:                                      ; preds = %for.cond.77
  %arraydecay137 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i32 0
  %arraydecay138 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i32 0
  %88 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %88, 1
  %89 = load i32, i32* %j, align 4
  %sub139 = sub nsw i32 %89, 1
  call void @merge_dependencies([13 x i32]* %arraydecay137, [13 x i32]* %arraydecay138, i32 %sub, i32 %sub139)
  store i32 0, i32* %have_dependence, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.152, %for.end.136
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %i, align 4
  %sub141 = sub nsw i32 %91, 1
  %cmp142 = icmp sle i32 %90, %sub141
  br i1 %cmp142, label %for.body.144, label %for.end.154

for.body.144:                                     ; preds = %for.cond.140
  %92 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %92 to i64
  %arrayidx146 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx146, i32 0, i64 0
  %93 = load i32, i32* %arrayidx147, align 4
  %cmp148 = icmp ne i32 %93, 6
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %for.body.144
  store i32 1, i32* %have_dependence, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %for.body.144
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %94 = load i32, i32* %j, align 4
  %inc153 = add nsw i32 %94, 1
  store i32 %inc153, i32* %j, align 4
  br label %for.cond.140

for.end.154:                                      ; preds = %for.cond.140
  %95 = load i32, i32* %have_dependence, align 4
  %tobool155 = icmp ne i32 %95, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %for.end.154
  br label %for.inc.294

if.end.157:                                       ; preds = %for.end.154
  br label %do.body

do.body:                                          ; preds = %if.end.157
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 1
  %97 = load i64, i64* %elements_used, align 8
  %98 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %num_elements158 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %98, i32 0, i32 0
  %99 = load i64, i64* %num_elements158, align 8
  %cmp159 = icmp uge i64 %97, %99
  br i1 %cmp159, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %do.body
  %100 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %101 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %num_elements162 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %101, i32 0, i32 0
  %102 = load i64, i64* %num_elements162, align 8
  %mul = mul i64 2, %102
  %call163 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %100, i64 %mul)
  store %struct.varray_head_tag* %call163, %struct.varray_head_tag** @dep_chain, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %do.body
  %call165 = call noalias i8* @xmalloc(i64 136)
  %103 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %elements_used166 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %103, i32 0, i32 1
  %104 = load i64, i64* %elements_used166, align 8
  %inc167 = add i64 %104, 1
  store i64 %inc167, i64* %elements_used166, align 8
  %105 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data168 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %105, i32 0, i32 4
  %generic169 = bitcast %union.varray_data_tag* %data168 to [1 x i8*]*
  %arrayidx170 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic169, i32 0, i64 %104
  store i8* %call165, i8** %arrayidx170, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.164
  %106 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %elements_used171 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %106, i32 0, i32 1
  %107 = load i64, i64* %elements_used171, align 8
  %sub172 = sub i64 %107, 1
  %108 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data173 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %108, i32 0, i32 4
  %generic174 = bitcast %union.varray_data_tag* %data173 to [1 x i8*]*
  %arrayidx175 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic174, i32 0, i64 %sub172
  %109 = load i8*, i8** %arrayidx175, align 8
  %110 = bitcast i8* %109 to %struct.dependence*
  store %struct.dependence* %110, %struct.dependence** %dep_ptr, align 8
  %111 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %expression = getelementptr inbounds %struct.def_use, %struct.def_use* %111, i32 0, i32 2
  %112 = load %union.tree_node*, %union.tree_node** %expression, align 8
  %113 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %source = getelementptr inbounds %struct.dependence, %struct.dependence* %113, i32 0, i32 0
  store %union.tree_node* %112, %union.tree_node** %source, align 8
  %114 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %expression176 = getelementptr inbounds %struct.def_use, %struct.def_use* %114, i32 0, i32 2
  %115 = load %union.tree_node*, %union.tree_node** %expression176, align 8
  %116 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %destination = getelementptr inbounds %struct.dependence, %struct.dependence* %116, i32 0, i32 1
  store %union.tree_node* %115, %union.tree_node** %destination, align 8
  %117 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %next = getelementptr inbounds %struct.dependence, %struct.dependence* %117, i32 0, i32 5
  store %struct.dependence* null, %struct.dependence** %next, align 8
  %118 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %119 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %cmp177 = icmp ult %struct.def_use* %118, %119
  br i1 %cmp177, label %land.lhs.true.179, label %if.else.184

land.lhs.true.179:                                ; preds = %do.end
  %120 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %type180 = getelementptr inbounds %struct.def_use, %struct.def_use* %120, i32 0, i32 4
  %121 = load i32, i32* %type180, align 4
  %cmp181 = icmp eq i32 %121, 1
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %land.lhs.true.179
  %122 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %dependence = getelementptr inbounds %struct.dependence, %struct.dependence* %122, i32 0, i32 2
  store i32 0, i32* %dependence, align 4
  br label %if.end.196

if.else.184:                                      ; preds = %land.lhs.true.179, %do.end
  %123 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %124 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %cmp185 = icmp ugt %struct.def_use* %123, %124
  br i1 %cmp185, label %land.lhs.true.187, label %if.else.193

land.lhs.true.187:                                ; preds = %if.else.184
  %125 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %type188 = getelementptr inbounds %struct.def_use, %struct.def_use* %125, i32 0, i32 4
  %126 = load i32, i32* %type188, align 4
  %cmp189 = icmp eq i32 %126, 1
  br i1 %cmp189, label %if.then.191, label %if.else.193

if.then.191:                                      ; preds = %land.lhs.true.187
  %127 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %dependence192 = getelementptr inbounds %struct.dependence, %struct.dependence* %127, i32 0, i32 2
  store i32 1, i32* %dependence192, align 4
  br label %if.end.195

if.else.193:                                      ; preds = %land.lhs.true.187, %if.else.184
  %128 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %dependence194 = getelementptr inbounds %struct.dependence, %struct.dependence* %128, i32 0, i32 2
  store i32 2, i32* %dependence194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.193, %if.then.191
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.183
  store i32 1, i32* %j, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.229, %if.end.196
  %129 = load i32, i32* %j, align 4
  %130 = load i32, i32* %i, align 4
  %sub198 = sub nsw i32 %130, 1
  %cmp199 = icmp sle i32 %129, %sub198
  br i1 %cmp199, label %for.body.201, label %for.end.231

for.body.201:                                     ; preds = %for.cond.197
  %131 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %131 to i64
  %arrayidx203 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx203, i32 0, i64 0
  %132 = load i32, i32* %arrayidx204, align 4
  %cmp205 = icmp eq i32 %132, 3
  br i1 %cmp205, label %if.then.207, label %if.else.219

if.then.207:                                      ; preds = %for.body.201
  %133 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %dependence208 = getelementptr inbounds %struct.dependence, %struct.dependence* %133, i32 0, i32 2
  store i32 1, i32* %dependence208, align 4
  %134 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %134 to i64
  %arrayidx210 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom209
  %arrayidx211 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx210, i32 0, i64 0
  store i32 0, i32* %arrayidx211, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %135 to i64
  %arrayidx213 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i64 %idxprom212
  %arrayidx214 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx213, i32 0, i64 0
  %136 = load i32, i32* %arrayidx214, align 4
  %sub215 = sub nsw i32 0, %136
  %137 = load i32, i32* %j, align 4
  %idxprom216 = sext i32 %137 to i64
  %arrayidx217 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx217, i32 0, i64 0
  store i32 %sub215, i32* %arrayidx218, align 4
  br label %for.end.231

if.else.219:                                      ; preds = %for.body.201
  %138 = load i32, i32* %j, align 4
  %idxprom220 = sext i32 %138 to i64
  %arrayidx221 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom220
  %arrayidx222 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx221, i32 0, i64 0
  %139 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp eq i32 %139, 0
  br i1 %cmp223, label %if.then.225, label %if.end.227

if.then.225:                                      ; preds = %if.else.219
  %140 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %dependence226 = getelementptr inbounds %struct.dependence, %struct.dependence* %140, i32 0, i32 2
  store i32 0, i32* %dependence226, align 4
  br label %for.end.231

if.end.227:                                       ; preds = %if.else.219
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228
  %141 = load i32, i32* %j, align 4
  %inc230 = add nsw i32 %141, 1
  store i32 %inc230, i32* %j, align 4
  br label %for.cond.197

for.end.231:                                      ; preds = %if.then.225, %if.then.207, %for.cond.197
  store i32 1, i32* %j, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.248, %for.end.231
  %142 = load i32, i32* %j, align 4
  %cmp233 = icmp slt i32 %142, 13
  br i1 %cmp233, label %for.body.235, label %for.end.250

for.body.235:                                     ; preds = %for.cond.232
  %143 = load i32, i32* %j, align 4
  %idxprom236 = sext i32 %143 to i64
  %arrayidx237 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %direction, i32 0, i64 %idxprom236
  %arrayidx238 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx237, i32 0, i64 0
  %144 = load i32, i32* %arrayidx238, align 4
  %145 = load i32, i32* %j, align 4
  %idxprom239 = sext i32 %145 to i64
  %146 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %direction240 = getelementptr inbounds %struct.dependence, %struct.dependence* %146, i32 0, i32 3
  %arrayidx241 = getelementptr inbounds [13 x i32], [13 x i32]* %direction240, i32 0, i64 %idxprom239
  store i32 %144, i32* %arrayidx241, align 4
  %147 = load i32, i32* %j, align 4
  %idxprom242 = sext i32 %147 to i64
  %arrayidx243 = getelementptr inbounds [13 x [13 x i32]], [13 x [13 x i32]]* %distance, i32 0, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx243, i32 0, i64 0
  %148 = load i32, i32* %arrayidx244, align 4
  %149 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %149 to i64
  %150 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %distance246 = getelementptr inbounds %struct.dependence, %struct.dependence* %150, i32 0, i32 4
  %arrayidx247 = getelementptr inbounds [13 x i32], [13 x i32]* %distance246, i32 0, i64 %idxprom245
  store i32 %148, i32* %arrayidx247, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.body.235
  %151 = load i32, i32* %j, align 4
  %inc249 = add nsw i32 %151, 1
  store i32 %inc249, i32* %j, align 4
  br label %for.cond.232

for.end.250:                                      ; preds = %for.cond.232
  %152 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %dep = getelementptr inbounds %struct.def_use, %struct.def_use* %152, i32 0, i32 7
  %153 = load %struct.dependence*, %struct.dependence** %dep, align 8
  store %struct.dependence* %153, %struct.dependence** %dep_list, align 8
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.258, %for.end.250
  %154 = load %struct.dependence*, %struct.dependence** %dep_list, align 8
  %tobool252 = icmp ne %struct.dependence* %154, null
  br i1 %tobool252, label %land.rhs.253, label %land.end.256

land.rhs.253:                                     ; preds = %for.cond.251
  %155 = load %struct.dependence*, %struct.dependence** %dep_list, align 8
  %next254 = getelementptr inbounds %struct.dependence, %struct.dependence* %155, i32 0, i32 5
  %156 = load %struct.dependence*, %struct.dependence** %next254, align 8
  %tobool255 = icmp ne %struct.dependence* %156, null
  br label %land.end.256

land.end.256:                                     ; preds = %land.rhs.253, %for.cond.251
  %157 = phi i1 [ false, %for.cond.251 ], [ %tobool255, %land.rhs.253 ]
  br i1 %157, label %for.body.257, label %for.end.260

for.body.257:                                     ; preds = %land.end.256
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.body.257
  %158 = load %struct.dependence*, %struct.dependence** %dep_list, align 8
  %next259 = getelementptr inbounds %struct.dependence, %struct.dependence* %158, i32 0, i32 5
  %159 = load %struct.dependence*, %struct.dependence** %next259, align 8
  store %struct.dependence* %159, %struct.dependence** %dep_list, align 8
  br label %for.cond.251

for.end.260:                                      ; preds = %land.end.256
  %160 = load %struct.dependence*, %struct.dependence** %dep_list, align 8
  %tobool261 = icmp ne %struct.dependence* %160, null
  br i1 %tobool261, label %if.else.291, label %if.then.262

if.then.262:                                      ; preds = %for.end.260
  br label %do.body.263

do.body.263:                                      ; preds = %if.then.262
  %161 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %elements_used264 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %161, i32 0, i32 1
  %162 = load i64, i64* %elements_used264, align 8
  %163 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %num_elements265 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %163, i32 0, i32 0
  %164 = load i64, i64* %num_elements265, align 8
  %cmp266 = icmp uge i64 %162, %164
  br i1 %cmp266, label %if.then.268, label %if.end.272

if.then.268:                                      ; preds = %do.body.263
  %165 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %166 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %num_elements269 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %166, i32 0, i32 0
  %167 = load i64, i64* %num_elements269, align 8
  %mul270 = mul i64 2, %167
  %call271 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %165, i64 %mul270)
  store %struct.varray_head_tag* %call271, %struct.varray_head_tag** @dep_chain, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.268, %do.body.263
  %call273 = call noalias i8* @xmalloc(i64 136)
  %168 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %elements_used274 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %168, i32 0, i32 1
  %169 = load i64, i64* %elements_used274, align 8
  %inc275 = add i64 %169, 1
  store i64 %inc275, i64* %elements_used274, align 8
  %170 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data276 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %170, i32 0, i32 4
  %generic277 = bitcast %union.varray_data_tag* %data276 to [1 x i8*]*
  %arrayidx278 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic277, i32 0, i64 %169
  store i8* %call273, i8** %arrayidx278, align 8
  br label %do.end.279

do.end.279:                                       ; preds = %if.end.272
  %171 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %elements_used280 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %171, i32 0, i32 1
  %172 = load i64, i64* %elements_used280, align 8
  %sub281 = sub i64 %172, 1
  %173 = load %struct.varray_head_tag*, %struct.varray_head_tag** @dep_chain, align 8
  %data282 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %173, i32 0, i32 4
  %generic283 = bitcast %union.varray_data_tag* %data282 to [1 x i8*]*
  %arrayidx284 = getelementptr inbounds [1 x i8*], [1 x i8*]* %generic283, i32 0, i64 %sub281
  %174 = load i8*, i8** %arrayidx284, align 8
  %175 = bitcast i8* %174 to %struct.dependence*
  store %struct.dependence* %175, %struct.dependence** %dep_root_ptr, align 8
  %176 = load %struct.dependence*, %struct.dependence** %dep_root_ptr, align 8
  %source285 = getelementptr inbounds %struct.dependence, %struct.dependence* %176, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %source285, align 8
  %177 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %expression286 = getelementptr inbounds %struct.def_use, %struct.def_use* %177, i32 0, i32 2
  %178 = load %union.tree_node*, %union.tree_node** %expression286, align 8
  %179 = load %struct.dependence*, %struct.dependence** %dep_root_ptr, align 8
  %destination287 = getelementptr inbounds %struct.dependence, %struct.dependence* %179, i32 0, i32 1
  store %union.tree_node* %178, %union.tree_node** %destination287, align 8
  %180 = load %struct.dependence*, %struct.dependence** %dep_root_ptr, align 8
  %dependence288 = getelementptr inbounds %struct.dependence, %struct.dependence* %180, i32 0, i32 2
  store i32 3, i32* %dependence288, align 4
  %181 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %182 = load %struct.dependence*, %struct.dependence** %dep_root_ptr, align 8
  %next289 = getelementptr inbounds %struct.dependence, %struct.dependence* %182, i32 0, i32 5
  store %struct.dependence* %181, %struct.dependence** %next289, align 8
  %183 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %184 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %dep290 = getelementptr inbounds %struct.def_use, %struct.def_use* %184, i32 0, i32 7
  store %struct.dependence* %183, %struct.dependence** %dep290, align 8
  br label %if.end.293

if.else.291:                                      ; preds = %for.end.260
  %185 = load %struct.dependence*, %struct.dependence** %dep_ptr, align 8
  %186 = load %struct.dependence*, %struct.dependence** %dep_list, align 8
  %next292 = getelementptr inbounds %struct.dependence, %struct.dependence* %186, i32 0, i32 5
  store %struct.dependence* %185, %struct.dependence** %next292, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.291, %do.end.279
  br label %for.inc.294

for.inc.294:                                      ; preds = %if.end.293, %if.then.156, %if.then.67
  %187 = load %struct.def_use*, %struct.def_use** %use_ptr, align 8
  %next295 = getelementptr inbounds %struct.def_use, %struct.def_use* %187, i32 0, i32 6
  %188 = load %struct.def_use*, %struct.def_use** %next295, align 8
  store %struct.def_use* %188, %struct.def_use** %use_ptr, align 8
  br label %for.cond.58

for.end.296:                                      ; preds = %for.cond.58
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.end.296, %if.then.55, %if.then.9, %if.then
  %189 = load %struct.def_use*, %struct.def_use** %def_ptr, align 8
  %next298 = getelementptr inbounds %struct.def_use, %struct.def_use* %189, i32 0, i32 6
  %190 = load %struct.def_use*, %struct.def_use** %next298, align 8
  store %struct.def_use* %190, %struct.def_use** %def_ptr, align 8
  br label %for.cond.5

for.end.299:                                      ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_coefficients(%struct.def_use* %du, %struct.subscript* %coefficients) #0 {
entry:
  %retval = alloca i32, align 4
  %du.addr = alloca %struct.def_use*, align 8
  %coefficients.addr = alloca %struct.subscript*, align 8
  %idx = alloca i32, align 4
  %array_count = alloca i32, align 4
  %i = alloca i32, align 4
  %array_ref = alloca %union.tree_node*, align 8
  store %struct.def_use* %du, %struct.def_use** %du.addr, align 8
  store %struct.subscript* %coefficients, %struct.subscript** %coefficients.addr, align 8
  store i32 0, i32* %idx, align 4
  store i32 0, i32* %array_count, align 4
  %0 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %expression = getelementptr inbounds %struct.def_use, %struct.def_use* %0, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %expression, align 8
  store %union.tree_node* %1, %union.tree_node** %array_ref, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %array_count, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, i32* %array_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %array_ref, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %array_count, align 4
  store i32 %6, i32* %idx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.13, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %7, 13
  br i1 %cmp2, label %for.body.3, label %for.end.14

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.subscript, %struct.subscript* %9, i64 %idxprom
  %position = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx4, i32 0, i32 0
  store i32 0, i32* %position, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.subscript, %struct.subscript* %11, i64 %idxprom5
  %coefficient = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx6, i32 0, i32 1
  store i32 -2147483648, i32* %coefficient, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.subscript, %struct.subscript* %13, i64 %idxprom7
  %offset = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx8, i32 0, i32 2
  store i32 -2147483648, i32* %offset, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.subscript, %struct.subscript* %15, i64 %idxprom9
  %variable = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx10, i32 0, i32 3
  store i8* null, i8** %variable, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.subscript, %struct.subscript* %17, i64 %idxprom11
  %next = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx12, i32 0, i32 4
  store %struct.subscript* null, %struct.subscript** %next, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.3
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end.14:                                       ; preds = %for.cond.1
  %19 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %expression15 = getelementptr inbounds %struct.def_use, %struct.def_use* %19, i32 0, i32 2
  %20 = load %union.tree_node*, %union.tree_node** %expression15, align 8
  store %union.tree_node* %20, %union.tree_node** %array_ref, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.47, %for.end.14
  %21 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %common17 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load19 = load i32, i32* %code18, align 8
  %bf.clear20 = and i32 %bf.load19, 255
  %cmp21 = icmp eq i32 %bf.clear20, 43
  br i1 %cmp21, label %for.body.22, label %for.end.51

for.body.22:                                      ; preds = %for.cond.16
  %22 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp23 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands24 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp23, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands24, i32 0, i64 1
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx25, align 8
  %common26 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 25
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.22
  %24 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp31 = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands32 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands32, i32 0, i64 1
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8
  %int_cst = bitcast %union.tree_node* %25 to %struct.tree_int_cst*
  %int_cst34 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst34, i32 0, i32 0
  %26 = load i64, i64* %low, align 8
  %conv = trunc i64 %26 to i32
  %27 = load i32, i32* %idx, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.subscript, %struct.subscript* %28, i64 %idxprom35
  %offset37 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx36, i32 0, i32 2
  store i32 %conv, i32* %offset37, align 4
  br label %if.end.46

if.else:                                          ; preds = %for.body.22
  %29 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp38 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands39 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp38, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands39, i32 0, i64 1
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx40, align 8
  %31 = load i32, i32* %idx, align 4
  %idxprom41 = sext i32 %31 to i64
  %32 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.subscript, %struct.subscript* %32, i64 %idxprom41
  %33 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call = call i32 @get_one_coefficient(%union.tree_node* %30, %struct.subscript* %arrayidx42, %struct.def_use* %33, i32* null)
  %cmp43 = icmp slt i32 %call, 0
  br i1 %cmp43, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %if.then
  %34 = load i32, i32* %idx, align 4
  %sub = sub nsw i32 %34, 1
  store i32 %sub, i32* %idx, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %35 = load %union.tree_node*, %union.tree_node** %array_ref, align 8
  %exp48 = bitcast %union.tree_node* %35 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  store %union.tree_node* %36, %union.tree_node** %array_ref, align 8
  br label %for.cond.16

for.end.51:                                       ; preds = %for.cond.16
  %37 = load i32, i32* %array_count, align 4
  store i32 %37, i32* %retval
  br label %return

return:                                           ; preds = %for.end.51, %if.then.45
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @normalize_coefficients(%struct.subscript* %coefficients, %struct.loop* %loop_ptr, i32 %count) #0 {
entry:
  %coefficients.addr = alloca %struct.subscript*, align 8
  %loop_ptr.addr = alloca %struct.loop*, align 8
  %count.addr = alloca i32, align 4
  %ind_ptr = alloca %struct.induction*, align 8
  %ck_loop_ptr = alloca %struct.loop*, align 8
  %i = alloca i32, align 4
  store %struct.subscript* %coefficients, %struct.subscript** %coefficients.addr, align 8
  store %struct.loop* %loop_ptr, %struct.loop** %loop_ptr.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %2 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  store %struct.loop* %2, %struct.loop** %ck_loop_ptr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.35, %for.body
  %3 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %tobool = icmp ne %struct.loop* %3, null
  br i1 %tobool, label %for.body.2, label %for.end.36

for.body.2:                                       ; preds = %for.cond.1
  %4 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %ind = getelementptr inbounds %struct.loop, %struct.loop* %4, i32 0, i32 5
  %5 = load %struct.induction*, %struct.induction** %ind, align 8
  store %struct.induction* %5, %struct.induction** %ind_ptr, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body.2
  %6 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %tobool4 = icmp ne %struct.induction* %6, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx = getelementptr inbounds %struct.subscript, %struct.subscript* %8, i64 %idxprom
  %variable = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx, i32 0, i32 3
  %9 = load i8*, i8** %variable, align 8
  %10 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable6 = getelementptr inbounds %struct.induction, %struct.induction* %10, i32 0, i32 0
  %11 = load i8*, i8** %variable6, align 8
  %cmp7 = icmp eq i8* %9, %11
  br i1 %cmp7, label %if.then, label %if.end.34

if.then:                                          ; preds = %for.body.5
  %12 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %low_bound = getelementptr inbounds %struct.induction, %struct.induction* %12, i32 0, i32 2
  %13 = load i32, i32* %low_bound, align 4
  %14 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound = getelementptr inbounds %struct.induction, %struct.induction* %14, i32 0, i32 3
  %15 = load i32, i32* %high_bound, align 4
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.subscript, %struct.subscript* %17, i64 %idxprom10
  %coefficient = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx11, i32 0, i32 1
  %18 = load i32, i32* %coefficient, align 4
  %19 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %low_bound12 = getelementptr inbounds %struct.induction, %struct.induction* %19, i32 0, i32 2
  %20 = load i32, i32* %low_bound12, align 4
  %mul = mul nsw i32 %18, %20
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.subscript, %struct.subscript* %22, i64 %idxprom13
  %offset = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx14, i32 0, i32 2
  %23 = load i32, i32* %offset, align 4
  %add = add nsw i32 %23, %mul
  store i32 %add, i32* %offset, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %24 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound15 = getelementptr inbounds %struct.induction, %struct.induction* %24, i32 0, i32 3
  %25 = load i32, i32* %high_bound15, align 4
  %cmp16 = icmp ne i32 %25, -2147483648
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.subscript, %struct.subscript* %27, i64 %idxprom18
  %coefficient20 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx19, i32 0, i32 1
  %28 = load i32, i32* %coefficient20, align 4
  %29 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %high_bound21 = getelementptr inbounds %struct.induction, %struct.induction* %29, i32 0, i32 3
  %30 = load i32, i32* %high_bound21, align 4
  %mul22 = mul nsw i32 %28, %30
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.subscript, %struct.subscript* %32, i64 %idxprom23
  %offset25 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx24, i32 0, i32 2
  store i32 %mul22, i32* %offset25, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.subscript, %struct.subscript* %34, i64 %idxprom26
  %coefficient28 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx27, i32 0, i32 1
  %35 = load i32, i32* %coefficient28, align 4
  %mul29 = mul nsw i32 %35, -1
  %36 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %36 to i64
  %37 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.subscript, %struct.subscript* %37, i64 %idxprom30
  %coefficient32 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx31, i32 0, i32 1
  store i32 %mul29, i32* %coefficient32, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.9
  br label %for.end

if.end.34:                                        ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %38 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %next = getelementptr inbounds %struct.induction, %struct.induction* %38, i32 0, i32 4
  %39 = load %struct.induction*, %struct.induction** %next, align 8
  store %struct.induction* %39, %struct.induction** %ind_ptr, align 8
  br label %for.cond.3

for.end:                                          ; preds = %if.end.33, %for.cond.3
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %40 = load %struct.loop*, %struct.loop** %ck_loop_ptr, align 8
  %next_nest = getelementptr inbounds %struct.loop, %struct.loop* %40, i32 0, i32 4
  %41 = load %struct.loop*, %struct.loop** %next_nest, align 8
  store %struct.loop* %41, %struct.loop** %ck_loop_ptr, align 8
  br label %for.cond.1

for.end.36:                                       ; preds = %for.cond.1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @classify_dependence(%struct.subscript* %icoefficients, %struct.subscript* %ocoefficients, i32* %complexity, i32* %separability, i32 %count) #0 {
entry:
  %icoefficients.addr = alloca %struct.subscript*, align 8
  %ocoefficients.addr = alloca %struct.subscript*, align 8
  %complexity.addr = alloca i32*, align 8
  %separability.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %iiv_used = alloca [13 x i8*], align 16
  %oiv_used = alloca [13 x i8*], align 16
  %ocoeff = alloca [13 x i32], align 16
  %icoeff = alloca [13 x i32], align 16
  %idx = alloca i32, align 4
  %cidx = alloca i32, align 4
  store %struct.subscript* %icoefficients, %struct.subscript** %icoefficients.addr, align 8
  store %struct.subscript* %ocoefficients, %struct.subscript** %ocoefficients.addr, align 8
  store i32* %complexity, i32** %complexity.addr, align 8
  store i32* %separability, i32** %separability.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = bitcast [13 x i8*]* %iiv_used to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 104, i32 16, i1 false)
  %1 = bitcast [13 x i8*]* %oiv_used to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 104, i32 16, i1 false)
  %2 = bitcast [13 x i32]* %icoeff to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 52, i32 16, i1 false)
  %3 = bitcast [13 x i32]* %ocoeff to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 52, i32 16, i1 false)
  store i32 1, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %idx, align 4
  %5 = load i32, i32* %count.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx = getelementptr inbounds %struct.subscript, %struct.subscript* %7, i64 %idxprom
  %variable = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx, i32 0, i32 3
  %8 = load i8*, i8** %variable, align 8
  %cmp1 = icmp ne i8* %8, null
  br i1 %cmp1, label %if.then, label %if.end.14

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %idx, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [13 x i8*], [13 x i8*]* %iiv_used, i32 0, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* %idx, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.subscript, %struct.subscript* %12, i64 %idxprom5
  %variable7 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx6, i32 0, i32 3
  %13 = load i8*, i8** %variable7, align 8
  %14 = load i32, i32* %idx, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [13 x i8*], [13 x i8*]* %iiv_used, i32 0, i64 %idxprom8
  store i8* %13, i8** %arrayidx9, align 8
  %15 = load i32, i32* %idx, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.subscript, %struct.subscript* %16, i64 %idxprom10
  %coefficient = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx11, i32 0, i32 1
  %17 = load i32, i32* %coefficient, align 4
  %18 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [13 x i32], [13 x i32]* %icoeff, i32 0, i64 %idxprom12
  store i32 %17, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body
  %19 = load i32, i32* %idx, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.subscript, %struct.subscript* %20, i64 %idxprom15
  %variable17 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx16, i32 0, i32 3
  %21 = load i8*, i8** %variable17, align 8
  %cmp18 = icmp ne i8* %21, null
  br i1 %cmp18, label %if.then.19, label %if.end.35

if.then.19:                                       ; preds = %if.end.14
  %22 = load i32, i32* %idx, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [13 x i8*], [13 x i8*]* %oiv_used, i32 0, i64 %idxprom20
  %23 = load i8*, i8** %arrayidx21, align 8
  %tobool22 = icmp ne i8* %23, null
  br i1 %tobool22, label %if.end.34, label %if.then.23

if.then.23:                                       ; preds = %if.then.19
  %24 = load i32, i32* %idx, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.subscript, %struct.subscript* %25, i64 %idxprom24
  %variable26 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx25, i32 0, i32 3
  %26 = load i8*, i8** %variable26, align 8
  %27 = load i32, i32* %idx, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [13 x i8*], [13 x i8*]* %oiv_used, i32 0, i64 %idxprom27
  store i8* %26, i8** %arrayidx28, align 8
  %28 = load i32, i32* %idx, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.subscript, %struct.subscript* %29, i64 %idxprom29
  %coefficient31 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx30, i32 0, i32 1
  %30 = load i32, i32* %coefficient31, align 4
  %31 = load i32, i32* %idx, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [13 x i32], [13 x i32]* %ocoeff, i32 0, i64 %idxprom32
  store i32 %30, i32* %arrayidx33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.23, %if.then.19
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %32 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %idx, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.92, %for.end
  %33 = load i32, i32* %idx, align 4
  %34 = load i32, i32* %count.addr, align 4
  %cmp37 = icmp sle i32 %33, %34
  br i1 %cmp37, label %for.body.38, label %for.end.94

for.body.38:                                      ; preds = %for.cond.36
  %35 = load i32, i32* %idx, align 4
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [13 x i8*], [13 x i8*]* %iiv_used, i32 0, i64 %idxprom39
  %36 = load i8*, i8** %arrayidx40, align 8
  %cmp41 = icmp eq i8* %36, null
  br i1 %cmp41, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.38
  %37 = load i32, i32* %idx, align 4
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds [13 x i8*], [13 x i8*]* %oiv_used, i32 0, i64 %idxprom42
  %38 = load i8*, i8** %arrayidx43, align 8
  %cmp44 = icmp eq i8* %38, null
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %idx, align 4
  %idxprom46 = sext i32 %39 to i64
  %40 = load i32*, i32** %complexity.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %40, i64 %idxprom46
  store i32 0, i32* %arrayidx47, align 4
  br label %if.end.91

if.else:                                          ; preds = %land.lhs.true, %for.body.38
  %41 = load i32, i32* %idx, align 4
  %idxprom48 = sext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds [13 x i8*], [13 x i8*]* %iiv_used, i32 0, i64 %idxprom48
  %42 = load i8*, i8** %arrayidx49, align 8
  %43 = load i32, i32* %idx, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds [13 x i8*], [13 x i8*]* %oiv_used, i32 0, i64 %idxprom50
  %44 = load i8*, i8** %arrayidx51, align 8
  %cmp52 = icmp eq i8* %42, %44
  br i1 %cmp52, label %if.then.53, label %if.else.76

if.then.53:                                       ; preds = %if.else
  %45 = load i32, i32* %idx, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds [13 x i32], [13 x i32]* %icoeff, i32 0, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4
  %47 = load i32, i32* %idx, align 4
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [13 x i32], [13 x i32]* %ocoeff, i32 0, i64 %idxprom56
  %48 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %46, %48
  br i1 %cmp58, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %if.then.53
  %49 = load i32, i32* %idx, align 4
  %idxprom60 = sext i32 %49 to i64
  %50 = load i32*, i32** %complexity.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %50, i64 %idxprom60
  store i32 1, i32* %arrayidx61, align 4
  br label %if.end.75

if.else.62:                                       ; preds = %if.then.53
  %51 = load i32, i32* %idx, align 4
  %idxprom63 = sext i32 %51 to i64
  %arrayidx64 = getelementptr inbounds [13 x i32], [13 x i32]* %icoeff, i32 0, i64 %idxprom63
  %52 = load i32, i32* %arrayidx64, align 4
  %53 = load i32, i32* %idx, align 4
  %idxprom65 = sext i32 %53 to i64
  %arrayidx66 = getelementptr inbounds [13 x i32], [13 x i32]* %ocoeff, i32 0, i64 %idxprom65
  %54 = load i32, i32* %arrayidx66, align 4
  %mul = mul nsw i32 -1, %54
  %cmp67 = icmp eq i32 %52, %mul
  br i1 %cmp67, label %if.then.68, label %if.else.71

if.then.68:                                       ; preds = %if.else.62
  %55 = load i32, i32* %idx, align 4
  %idxprom69 = sext i32 %55 to i64
  %56 = load i32*, i32** %complexity.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %56, i64 %idxprom69
  store i32 4, i32* %arrayidx70, align 4
  br label %if.end.74

if.else.71:                                       ; preds = %if.else.62
  %57 = load i32, i32* %idx, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load i32*, i32** %complexity.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %58, i64 %idxprom72
  store i32 2, i32* %arrayidx73, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.59
  br label %if.end.90

if.else.76:                                       ; preds = %if.else
  %59 = load i32, i32* %idx, align 4
  %idxprom77 = sext i32 %59 to i64
  %arrayidx78 = getelementptr inbounds [13 x i32], [13 x i32]* %icoeff, i32 0, i64 %idxprom77
  %60 = load i32, i32* %arrayidx78, align 4
  %cmp79 = icmp eq i32 %60, 0
  br i1 %cmp79, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.76
  %61 = load i32, i32* %idx, align 4
  %idxprom80 = sext i32 %61 to i64
  %arrayidx81 = getelementptr inbounds [13 x i32], [13 x i32]* %ocoeff, i32 0, i64 %idxprom80
  %62 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp eq i32 %62, 0
  br i1 %cmp82, label %if.then.83, label %if.else.86

if.then.83:                                       ; preds = %lor.lhs.false, %if.else.76
  %63 = load i32, i32* %idx, align 4
  %idxprom84 = sext i32 %63 to i64
  %64 = load i32*, i32** %complexity.addr, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %64, i64 %idxprom84
  store i32 3, i32* %arrayidx85, align 4
  br label %if.end.89

if.else.86:                                       ; preds = %lor.lhs.false
  %65 = load i32, i32* %idx, align 4
  %idxprom87 = sext i32 %65 to i64
  %66 = load i32*, i32** %complexity.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %66, i64 %idxprom87
  store i32 5, i32* %arrayidx88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.83
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.75
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.45
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %67 = load i32, i32* %idx, align 4
  %inc93 = add nsw i32 %67, 1
  store i32 %inc93, i32* %idx, align 4
  br label %for.cond.36

for.end.94:                                       ; preds = %for.cond.36
  %68 = load i32*, i32** %separability.addr, align 8
  store i32 1, i32* %68, align 4
  store i32 1, i32* %idx, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.121, %for.end.94
  %69 = load i32, i32* %idx, align 4
  %70 = load i32, i32* %count.addr, align 4
  %cmp96 = icmp sle i32 %69, %70
  br i1 %cmp96, label %for.body.97, label %for.end.123

for.body.97:                                      ; preds = %for.cond.95
  store i32 1, i32* %cidx, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.118, %for.body.97
  %71 = load i32, i32* %cidx, align 4
  %72 = load i32, i32* %count.addr, align 4
  %cmp99 = icmp sle i32 %71, %72
  br i1 %cmp99, label %for.body.100, label %for.end.120

for.body.100:                                     ; preds = %for.cond.98
  %73 = load i32, i32* %idx, align 4
  %74 = load i32, i32* %cidx, align 4
  %cmp101 = icmp ne i32 %73, %74
  br i1 %cmp101, label %land.lhs.true.102, label %if.end.117

land.lhs.true.102:                                ; preds = %for.body.100
  %75 = load i32, i32* %idx, align 4
  %idxprom103 = sext i32 %75 to i64
  %arrayidx104 = getelementptr inbounds [13 x i8*], [13 x i8*]* %iiv_used, i32 0, i64 %idxprom103
  %76 = load i8*, i8** %arrayidx104, align 8
  %tobool105 = icmp ne i8* %76, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.117

land.lhs.true.106:                                ; preds = %land.lhs.true.102
  %77 = load i32, i32* %cidx, align 4
  %idxprom107 = sext i32 %77 to i64
  %arrayidx108 = getelementptr inbounds [13 x i8*], [13 x i8*]* %oiv_used, i32 0, i64 %idxprom107
  %78 = load i8*, i8** %arrayidx108, align 8
  %tobool109 = icmp ne i8* %78, null
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.117

land.lhs.true.110:                                ; preds = %land.lhs.true.106
  %79 = load i32, i32* %idx, align 4
  %idxprom111 = sext i32 %79 to i64
  %arrayidx112 = getelementptr inbounds [13 x i8*], [13 x i8*]* %iiv_used, i32 0, i64 %idxprom111
  %80 = load i8*, i8** %arrayidx112, align 8
  %81 = load i32, i32* %cidx, align 4
  %idxprom113 = sext i32 %81 to i64
  %arrayidx114 = getelementptr inbounds [13 x i8*], [13 x i8*]* %oiv_used, i32 0, i64 %idxprom113
  %82 = load i8*, i8** %arrayidx114, align 8
  %cmp115 = icmp eq i8* %80, %82
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %land.lhs.true.110
  %83 = load i32*, i32** %separability.addr, align 8
  store i32 0, i32* %83, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %land.lhs.true.110, %land.lhs.true.106, %land.lhs.true.102, %for.body.100
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %84 = load i32, i32* %cidx, align 4
  %inc119 = add nsw i32 %84, 1
  store i32 %inc119, i32* %cidx, align 4
  br label %for.cond.98

for.end.120:                                      ; preds = %for.cond.98
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %85 = load i32, i32* %idx, align 4
  %inc122 = add nsw i32 %85, 1
  store i32 %inc122, i32* %idx, align 4
  br label %for.cond.95

for.end.123:                                      ; preds = %for.cond.95
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ziv_test(%struct.subscript* %icoefficients, %struct.subscript* %ocoefficients, [13 x i32]* %direction, [13 x i32]* %distance, %struct.loop* %loop_ptr, i32 %sub) #0 {
entry:
  %icoefficients.addr = alloca %struct.subscript*, align 8
  %ocoefficients.addr = alloca %struct.subscript*, align 8
  %direction.addr = alloca [13 x i32]*, align 8
  %distance.addr = alloca [13 x i32]*, align 8
  %loop_ptr.addr = alloca %struct.loop*, align 8
  %sub.addr = alloca i32, align 4
  store %struct.subscript* %icoefficients, %struct.subscript** %icoefficients.addr, align 8
  store %struct.subscript* %ocoefficients, %struct.subscript** %ocoefficients.addr, align 8
  store [13 x i32]* %direction, [13 x i32]** %direction.addr, align 8
  store [13 x i32]* %distance, [13 x i32]** %distance.addr, align 8
  store %struct.loop* %loop_ptr, %struct.loop** %loop_ptr.addr, align 8
  store i32 %sub, i32* %sub.addr, align 4
  %0 = load i32, i32* %sub.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx = getelementptr inbounds %struct.subscript, %struct.subscript* %1, i64 %idxprom
  %offset = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %offset, align 4
  %3 = load i32, i32* %sub.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.subscript, %struct.subscript* %4, i64 %idxprom1
  %offset3 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx2, i32 0, i32 2
  %5 = load i32, i32* %offset3, align 4
  %cmp = icmp ne i32 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %sub.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 2
  %8 = load i32, i32* %depth, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx6 = getelementptr inbounds [13 x i32], [13 x i32]* %9, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx6, i32 0, i64 %idxprom4
  store i32 6, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @siv_test(%struct.subscript* %icoefficients, %struct.subscript* %ocoefficients, [13 x i32]* %direction, [13 x i32]* %distance, %struct.loop* %loop_ptr, i32 %sub) #0 {
entry:
  %icoefficients.addr = alloca %struct.subscript*, align 8
  %ocoefficients.addr = alloca %struct.subscript*, align 8
  %direction.addr = alloca [13 x i32]*, align 8
  %distance.addr = alloca [13 x i32]*, align 8
  %loop_ptr.addr = alloca %struct.loop*, align 8
  %sub.addr = alloca i32, align 4
  %coef_diff = alloca i32, align 4
  %coef = alloca i32, align 4
  %gcd = alloca i32, align 4
  store %struct.subscript* %icoefficients, %struct.subscript** %icoefficients.addr, align 8
  store %struct.subscript* %ocoefficients, %struct.subscript** %ocoefficients.addr, align 8
  store [13 x i32]* %direction, [13 x i32]** %direction.addr, align 8
  store [13 x i32]* %distance, [13 x i32]** %distance.addr, align 8
  store %struct.loop* %loop_ptr, %struct.loop** %loop_ptr.addr, align 8
  store i32 %sub, i32* %sub.addr, align 4
  %0 = load i32, i32* %sub.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx = getelementptr inbounds %struct.subscript, %struct.subscript* %1, i64 %idxprom
  %2 = load i32, i32* %sub.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.subscript, %struct.subscript* %3, i64 %idxprom1
  %4 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %call = call i32 @check_subscript_induction(%struct.subscript* %arrayidx, %struct.subscript* %arrayidx2, %struct.loop* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.82

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %sub.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.subscript, %struct.subscript* %6, i64 %idxprom3
  %offset = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx4, i32 0, i32 2
  %7 = load i32, i32* %offset, align 4
  %8 = load i32, i32* %sub.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.subscript, %struct.subscript* %9, i64 %idxprom5
  %offset7 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx6, i32 0, i32 2
  %10 = load i32, i32* %offset7, align 4
  %sub8 = sub nsw i32 %7, %10
  store i32 %sub8, i32* %coef_diff, align 4
  %11 = load i32, i32* %sub.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.subscript, %struct.subscript* %12, i64 %idxprom9
  %coefficient = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx10, i32 0, i32 1
  %13 = load i32, i32* %coefficient, align 4
  %cmp = icmp eq i32 %13, -2147483648
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %14 = load i32, i32* %sub.addr, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.subscript, %struct.subscript* %15, i64 %idxprom12
  %coefficient14 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx13, i32 0, i32 1
  %16 = load i32, i32* %coefficient14, align 4
  store i32 %16, i32* %coef, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %sub.addr, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.subscript, %struct.subscript* %18, i64 %idxprom15
  %coefficient17 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx16, i32 0, i32 1
  %19 = load i32, i32* %coefficient17, align 4
  %cmp18 = icmp eq i32 %19, -2147483648
  br i1 %cmp18, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.else
  %20 = load i32, i32* %sub.addr, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.subscript, %struct.subscript* %21, i64 %idxprom20
  %coefficient22 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx21, i32 0, i32 1
  %22 = load i32, i32* %coefficient22, align 4
  store i32 %22, i32* %coef, align 4
  br label %if.end.42

if.else.23:                                       ; preds = %if.else
  %23 = load i32, i32* %sub.addr, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.subscript, %struct.subscript* %24, i64 %idxprom24
  %coefficient26 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx25, i32 0, i32 1
  %25 = load i32, i32* %coefficient26, align 4
  %26 = load i32, i32* %sub.addr, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.subscript, %struct.subscript* %27, i64 %idxprom27
  %coefficient29 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx28, i32 0, i32 1
  %28 = load i32, i32* %coefficient29, align 4
  %mul = mul nsw i32 -1, %28
  %cmp30 = icmp eq i32 %25, %mul
  br i1 %cmp30, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.else.23
  %29 = load i32, i32* %sub.addr, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.subscript, %struct.subscript* %30, i64 %idxprom32
  %coefficient34 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx33, i32 0, i32 1
  %31 = load i32, i32* %coefficient34, align 4
  %call35 = call i32 @abs(i32 %31) #7
  %mul36 = mul nsw i32 2, %call35
  store i32 %mul36, i32* %coef, align 4
  br label %if.end.41

if.else.37:                                       ; preds = %if.else.23
  %32 = load i32, i32* %sub.addr, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.subscript, %struct.subscript* %33, i64 %idxprom38
  %coefficient40 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx39, i32 0, i32 1
  %34 = load i32, i32* %coefficient40, align 4
  store i32 %34, i32* %coef, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.19
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.11
  %35 = load i32, i32* %coef_diff, align 4
  %sub44 = sub nsw i32 0, %35
  %36 = load i32, i32* %coef, align 4
  %div = sdiv i32 %sub44, %36
  store i32 %div, i32* %gcd, align 4
  %37 = load i32, i32* %gcd, align 4
  %38 = load i32, i32* %coef, align 4
  %mul45 = mul nsw i32 %37, %38
  %39 = load i32, i32* %coef_diff, align 4
  %sub46 = sub nsw i32 0, %39
  %cmp47 = icmp ne i32 %mul45, %sub46
  br i1 %cmp47, label %if.then.48, label %if.else.53

if.then.48:                                       ; preds = %if.end.43
  %40 = load i32, i32* %sub.addr, align 4
  %idxprom49 = sext i32 %40 to i64
  %41 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 2
  %42 = load i32, i32* %depth, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx51 = getelementptr inbounds [13 x i32], [13 x i32]* %43, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx51, i32 0, i64 %idxprom49
  store i32 6, i32* %arrayidx52, align 4
  br label %if.end.82

if.else.53:                                       ; preds = %if.end.43
  %44 = load i32, i32* %gcd, align 4
  %45 = load i32, i32* %sub.addr, align 4
  %idxprom54 = sext i32 %45 to i64
  %46 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth55 = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 2
  %47 = load i32, i32* %depth55, align 4
  %idxprom56 = sext i32 %47 to i64
  %48 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx57 = getelementptr inbounds [13 x i32], [13 x i32]* %48, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx57, i32 0, i64 %idxprom54
  store i32 %44, i32* %arrayidx58, align 4
  %49 = load i32, i32* %gcd, align 4
  %cmp59 = icmp slt i32 %49, 0
  br i1 %cmp59, label %if.then.60, label %if.else.66

if.then.60:                                       ; preds = %if.else.53
  %50 = load i32, i32* %sub.addr, align 4
  %idxprom61 = sext i32 %50 to i64
  %51 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth62 = getelementptr inbounds %struct.loop, %struct.loop* %51, i32 0, i32 2
  %52 = load i32, i32* %depth62, align 4
  %idxprom63 = sext i32 %52 to i64
  %53 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx64 = getelementptr inbounds [13 x i32], [13 x i32]* %53, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx64, i32 0, i64 %idxprom61
  store i32 3, i32* %arrayidx65, align 4
  br label %if.end.81

if.else.66:                                       ; preds = %if.else.53
  %54 = load i32, i32* %gcd, align 4
  %cmp67 = icmp sgt i32 %54, 0
  br i1 %cmp67, label %if.then.68, label %if.else.74

if.then.68:                                       ; preds = %if.else.66
  %55 = load i32, i32* %sub.addr, align 4
  %idxprom69 = sext i32 %55 to i64
  %56 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth70 = getelementptr inbounds %struct.loop, %struct.loop* %56, i32 0, i32 2
  %57 = load i32, i32* %depth70, align 4
  %idxprom71 = sext i32 %57 to i64
  %58 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx72 = getelementptr inbounds [13 x i32], [13 x i32]* %58, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx72, i32 0, i64 %idxprom69
  store i32 0, i32* %arrayidx73, align 4
  br label %if.end.80

if.else.74:                                       ; preds = %if.else.66
  %59 = load i32, i32* %sub.addr, align 4
  %idxprom75 = sext i32 %59 to i64
  %60 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth76 = getelementptr inbounds %struct.loop, %struct.loop* %60, i32 0, i32 2
  %61 = load i32, i32* %depth76, align 4
  %idxprom77 = sext i32 %61 to i64
  %62 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx78 = getelementptr inbounds [13 x i32], [13 x i32]* %62, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx78, i32 0, i64 %idxprom75
  store i32 2, i32* %arrayidx79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.74, %if.then.68
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.60
  br label %if.end.82

if.end.82:                                        ; preds = %if.then, %if.end.81, %if.then.48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gcd_test(%struct.subscript* %icoefficients, %struct.subscript* %ocoefficients, [13 x i32]* %direction, [13 x i32]* %distance, %struct.loop* %loop_ptr, i32 %sub) #0 {
entry:
  %icoefficients.addr = alloca %struct.subscript*, align 8
  %ocoefficients.addr = alloca %struct.subscript*, align 8
  %direction.addr = alloca [13 x i32]*, align 8
  %distance.addr = alloca [13 x i32]*, align 8
  %loop_ptr.addr = alloca %struct.loop*, align 8
  %sub.addr = alloca i32, align 4
  %coef_diff = alloca i32, align 4
  %g = alloca i32, align 4
  %gg = alloca i32, align 4
  store %struct.subscript* %icoefficients, %struct.subscript** %icoefficients.addr, align 8
  store %struct.subscript* %ocoefficients, %struct.subscript** %ocoefficients.addr, align 8
  store [13 x i32]* %direction, [13 x i32]** %direction.addr, align 8
  store [13 x i32]* %distance, [13 x i32]** %distance.addr, align 8
  store %struct.loop* %loop_ptr, %struct.loop** %loop_ptr.addr, align 8
  store i32 %sub, i32* %sub.addr, align 4
  %0 = load i32, i32* %sub.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx = getelementptr inbounds %struct.subscript, %struct.subscript* %1, i64 %idxprom
  %2 = load i32, i32* %sub.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.subscript, %struct.subscript* %3, i64 %idxprom1
  %4 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %call = call i32 @check_subscript_induction(%struct.subscript* %arrayidx, %struct.subscript* %arrayidx2, %struct.loop* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.23

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %sub.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.subscript, %struct.subscript* %6, i64 %idxprom3
  %coefficient = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx4, i32 0, i32 1
  %7 = load i32, i32* %coefficient, align 4
  %8 = load i32, i32* %sub.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.subscript, %struct.subscript* %9, i64 %idxprom5
  %coefficient7 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx6, i32 0, i32 1
  %10 = load i32, i32* %coefficient7, align 4
  %call8 = call i32 @find_gcd(i32 %7, i32 %10)
  store i32 %call8, i32* %g, align 4
  %11 = load i32, i32* %g, align 4
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %if.end
  %12 = load i32, i32* %sub.addr, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.subscript*, %struct.subscript** %icoefficients.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.subscript, %struct.subscript* %13, i64 %idxprom10
  %offset = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx11, i32 0, i32 2
  %14 = load i32, i32* %offset, align 4
  %15 = load i32, i32* %sub.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.subscript*, %struct.subscript** %ocoefficients.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.subscript, %struct.subscript* %16, i64 %idxprom12
  %offset14 = getelementptr inbounds %struct.subscript, %struct.subscript* %arrayidx13, i32 0, i32 2
  %17 = load i32, i32* %offset14, align 4
  %sub15 = sub nsw i32 %14, %17
  store i32 %sub15, i32* %coef_diff, align 4
  %18 = load i32, i32* %coef_diff, align 4
  %19 = load i32, i32* %g, align 4
  %div = sdiv i32 %18, %19
  store i32 %div, i32* %gg, align 4
  %20 = load i32, i32* %gg, align 4
  %21 = load i32, i32* %g, align 4
  %mul = mul nsw i32 %20, %21
  %22 = load i32, i32* %coef_diff, align 4
  %cmp16 = icmp ne i32 %mul, %22
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.then.9
  %23 = load i32, i32* %sub.addr, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %depth = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 2
  %25 = load i32, i32* %depth, align 4
  %idxprom19 = sext i32 %25 to i64
  %26 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx20 = getelementptr inbounds [13 x i32], [13 x i32]* %26, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx20, i32 0, i64 %idxprom18
  store i32 6, i32* %arrayidx21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.then.9
  br label %if.end.23

if.end.23:                                        ; preds = %if.then, %if.end.22, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge_dependencies([13 x i32]* %direction, [13 x i32]* %distance, i32 %loop_count, i32 %subscript_count) #0 {
entry:
  %direction.addr = alloca [13 x i32]*, align 8
  %distance.addr = alloca [13 x i32]*, align 8
  %loop_count.addr = alloca i32, align 4
  %subscript_count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sign = alloca i32, align 4
  store [13 x i32]* %direction, [13 x i32]** %direction.addr, align 8
  store [13 x i32]* %distance, [13 x i32]** %distance.addr, align 8
  store i32 %loop_count, i32* %loop_count.addr, align 4
  store i32 %subscript_count, i32* %subscript_count.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %loop_count.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx, i32 0, i64 0
  store i32 2147483647, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx3 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx3, i32 0, i64 0
  store i32 5, i32* %arrayidx4, align 4
  store i32 1, i32* %sign, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %subscript_count.addr, align 4
  %cmp6 = icmp sle i32 %6, %7
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx10 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx10, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx14 = getelementptr inbounds [13 x i32], [13 x i32]* %13, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx14, i32 0, i64 0
  %14 = load i32, i32* %arrayidx15, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %17 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx18 = getelementptr inbounds [13 x i32], [13 x i32]* %17, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx18, i32 0, i64 %idxprom16
  %18 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp slt i32 %18, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx23 = getelementptr inbounds [13 x i32], [13 x i32]* %21, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx23, i32 0, i64 %idxprom21
  %22 = load i32, i32* %arrayidx24, align 4
  %sub = sub nsw i32 0, %22
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %23 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx27 = getelementptr inbounds [13 x i32], [13 x i32]* %25, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx27, i32 0, i64 %idxprom25
  %26 = load i32, i32* %arrayidx28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %26, %cond.false ]
  %and = and i32 %14, %cond
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx30 = getelementptr inbounds [13 x i32], [13 x i32]* %28, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx30, i32 0, i64 0
  store i32 %and, i32* %arrayidx31, align 4
  store i32 -1, i32* %sign, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.7
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx33 = getelementptr inbounds [13 x i32], [13 x i32]* %30, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx33, i32 0, i64 0
  %31 = load i32, i32* %arrayidx34, align 4
  %32 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx37 = getelementptr inbounds [13 x i32], [13 x i32]* %34, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx37, i32 0, i64 %idxprom35
  %35 = load i32, i32* %arrayidx38, align 4
  %and39 = and i32 %31, %35
  %36 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx41 = getelementptr inbounds [13 x i32], [13 x i32]* %37, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx41, i32 0, i64 0
  store i32 %and39, i32* %arrayidx42, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %38 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx45 = getelementptr inbounds [13 x i32], [13 x i32]* %40, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx45, i32 0, i64 %idxprom43
  %41 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx49 = getelementptr inbounds [13 x i32], [13 x i32]* %43, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx49, i32 0, i64 0
  %44 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @merge_dependencies.direction_merge, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx52, i32 0, i64 %idxprom47
  %45 = load i32, i32* %arrayidx53, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load [13 x i32]*, [13 x i32]** %direction.addr, align 8
  %arrayidx55 = getelementptr inbounds [13 x i32], [13 x i32]* %47, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx55, i32 0, i64 0
  store i32 %45, i32* %arrayidx56, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %48 = load i32, i32* %j, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %49 = load i32, i32* %sign, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %50 to i64
  %51 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx58 = getelementptr inbounds [13 x i32], [13 x i32]* %51, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx58, i32 0, i64 0
  %52 = load i32, i32* %arrayidx59, align 4
  %mul = mul nsw i32 %49, %52
  %53 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %53 to i64
  %54 = load [13 x i32]*, [13 x i32]** %distance.addr, align 8
  %arrayidx61 = getelementptr inbounds [13 x i32], [13 x i32]* %54, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [13 x i32], [13 x i32]* %arrayidx61, i32 0, i64 0
  store i32 %mul, i32* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end
  %55 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %55, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_one_coefficient(%union.tree_node* %node, %struct.subscript* %coefficients, %struct.def_use* %du, i32* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %union.tree_node*, align 8
  %coefficients.addr = alloca %struct.subscript*, align 8
  %du.addr = alloca %struct.def_use*, align 8
  %type.addr = alloca i32*, align 8
  %tree_op = alloca i32, align 4
  %tree_op_code = alloca i32, align 4
  %index = alloca i32, align 4
  %value = alloca i32, align 4
  %value0 = alloca i32, align 4
  %value1 = alloca i32, align 4
  %value0_is_idx = alloca i32, align 4
  %value1_is_idx = alloca i32, align 4
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store %struct.subscript* %coefficients, %struct.subscript** %coefficients.addr, align 8
  store %struct.def_use* %du, %struct.def_use** %du.addr, align 8
  store i32* %type, i32** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %tree_op, align 4
  %1 = load i32*, i32** %type.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %tree_op, align 4
  %3 = load i32*, i32** %type.addr, align 8
  store i32 %2, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %tree_op, align 4
  %cmp = icmp eq i32 %4, 34
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %outer_loop = getelementptr inbounds %struct.def_use, %struct.def_use* %5, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %outer_loop, align 8
  %7 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %8 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %8 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %9 = load i8*, i8** %str, align 8
  %call = call i32 @have_induction_variable(%union.tree_node* %6, i8* %9)
  store i32 %call, i32* %index, align 4
  %10 = load i32, i32* %index, align 4
  %cmp2 = icmp sge i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.then.1
  %11 = load i32, i32* %index, align 4
  %12 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %position = getelementptr inbounds %struct.subscript, %struct.subscript* %12, i32 0, i32 0
  store i32 %11, i32* %position, align 4
  %13 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl4 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %name5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 8
  %14 = load %union.tree_node*, %union.tree_node** %name5, align 8
  %identifier6 = bitcast %union.tree_node* %14 to %struct.tree_identifier*
  %id7 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier6, i32 0, i32 1
  %str8 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id7, i32 0, i32 1
  %15 = load i8*, i8** %str8, align 8
  %16 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %variable = getelementptr inbounds %struct.subscript, %struct.subscript* %16, i32 0, i32 3
  store i8* %15, i8** %variable, align 8
  %17 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %coefficient = getelementptr inbounds %struct.subscript, %struct.subscript* %17, i32 0, i32 1
  store i32 1, i32* %coefficient, align 4
  %18 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %offset = getelementptr inbounds %struct.subscript, %struct.subscript* %18, i32 0, i32 2
  %19 = load i32, i32* %offset, align 4
  %cmp9 = icmp eq i32 %19, -2147483648
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.3
  %20 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %offset11 = getelementptr inbounds %struct.subscript, %struct.subscript* %20, i32 0, i32 2
  store i32 0, i32* %offset11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.3
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.1
  %21 = load i32, i32* %index, align 4
  store i32 %21, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %22 = load i32, i32* %tree_op, align 4
  %cmp14 = icmp eq i32 %22, 25
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %23 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %int_cst = bitcast %union.tree_node* %23 to %struct.tree_int_cst*
  %int_cst16 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst16, i32 0, i32 0
  %24 = load i64, i64* %low, align 8
  %conv = trunc i64 %24 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.else
  %25 = load i32, i32* %tree_op, align 4
  %cmp18 = icmp eq i32 %25, 116
  br i1 %cmp18, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else.17
  %26 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp = bitcast %union.tree_node* %26 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %27 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %28 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %29 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call21 = call i32 @get_one_coefficient(%union.tree_node* %27, %struct.subscript* %28, %struct.def_use* %29, i32* %tree_op_code)
  store i32 %call21, i32* %retval
  br label %return

if.else.22:                                       ; preds = %if.else.17
  %30 = load i32, i32* %tree_op, align 4
  %cmp23 = icmp eq i32 %30, 59
  br i1 %cmp23, label %if.then.25, label %if.else.44

if.then.25:                                       ; preds = %if.else.22
  %31 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp26 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands27 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp26, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands27, i32 0, i64 0
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx28, align 8
  %33 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %34 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call29 = call i32 @get_one_coefficient(%union.tree_node* %32, %struct.subscript* %33, %struct.def_use* %34, i32* %tree_op_code)
  store i32 %call29, i32* %value, align 4
  %35 = load i32, i32* %tree_op_code, align 4
  %cmp30 = icmp eq i32 %35, 25
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.25
  %36 = load i32, i32* %value, align 4
  %37 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %offset33 = getelementptr inbounds %struct.subscript, %struct.subscript* %37, i32 0, i32 2
  store i32 %36, i32* %offset33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.25
  %38 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp35 = bitcast %union.tree_node* %38 to %struct.tree_exp*
  %operands36 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp35, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands36, i32 0, i64 1
  %39 = load %union.tree_node*, %union.tree_node** %arrayidx37, align 8
  %40 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %41 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call38 = call i32 @get_one_coefficient(%union.tree_node* %39, %struct.subscript* %40, %struct.def_use* %41, i32* %tree_op_code)
  store i32 %call38, i32* %value, align 4
  %42 = load i32, i32* %tree_op_code, align 4
  %cmp39 = icmp eq i32 %42, 25
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.34
  %43 = load i32, i32* %value, align 4
  %44 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %offset42 = getelementptr inbounds %struct.subscript, %struct.subscript* %44, i32 0, i32 2
  store i32 %43, i32* %offset42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.34
  store i32 0, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.22
  %45 = load i32, i32* %tree_op, align 4
  %cmp45 = icmp eq i32 %45, 60
  br i1 %cmp45, label %if.then.47, label %if.else.66

if.then.47:                                       ; preds = %if.else.44
  %46 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp48 = bitcast %union.tree_node* %46 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %47 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %48 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %49 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call51 = call i32 @get_one_coefficient(%union.tree_node* %47, %struct.subscript* %48, %struct.def_use* %49, i32* %tree_op_code)
  store i32 %call51, i32* %value, align 4
  %50 = load i32, i32* %tree_op_code, align 4
  %cmp52 = icmp eq i32 %50, 25
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.47
  %51 = load i32, i32* %value, align 4
  %52 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %offset55 = getelementptr inbounds %struct.subscript, %struct.subscript* %52, i32 0, i32 2
  store i32 %51, i32* %offset55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.47
  %53 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp57 = bitcast %union.tree_node* %53 to %struct.tree_exp*
  %operands58 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands58, i32 0, i64 1
  %54 = load %union.tree_node*, %union.tree_node** %arrayidx59, align 8
  %55 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %56 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call60 = call i32 @get_one_coefficient(%union.tree_node* %54, %struct.subscript* %55, %struct.def_use* %56, i32* %tree_op_code)
  store i32 %call60, i32* %value, align 4
  %57 = load i32, i32* %tree_op_code, align 4
  %cmp61 = icmp eq i32 %57, 25
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.56
  %58 = load i32, i32* %value, align 4
  %sub = sub nsw i32 0, %58
  %59 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %offset64 = getelementptr inbounds %struct.subscript, %struct.subscript* %59, i32 0, i32 2
  store i32 %sub, i32* %offset64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.56
  store i32 0, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.else.44
  %60 = load i32, i32* %tree_op, align 4
  %cmp67 = icmp eq i32 %60, 61
  br i1 %cmp67, label %if.then.69, label %if.end.95

if.then.69:                                       ; preds = %if.else.66
  store i32 0, i32* %value0_is_idx, align 4
  store i32 0, i32* %value1_is_idx, align 4
  %61 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp70 = bitcast %union.tree_node* %61 to %struct.tree_exp*
  %operands71 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp70, i32 0, i32 2
  %arrayidx72 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands71, i32 0, i64 0
  %62 = load %union.tree_node*, %union.tree_node** %arrayidx72, align 8
  %63 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %64 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call73 = call i32 @get_one_coefficient(%union.tree_node* %62, %struct.subscript* %63, %struct.def_use* %64, i32* %tree_op_code)
  store i32 %call73, i32* %value0, align 4
  %65 = load i32, i32* %tree_op_code, align 4
  %cmp74 = icmp eq i32 %65, 34
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.69
  store i32 1, i32* %value0_is_idx, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.69
  %66 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %exp78 = bitcast %union.tree_node* %66 to %struct.tree_exp*
  %operands79 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp78, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands79, i32 0, i64 1
  %67 = load %union.tree_node*, %union.tree_node** %arrayidx80, align 8
  %68 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %69 = load %struct.def_use*, %struct.def_use** %du.addr, align 8
  %call81 = call i32 @get_one_coefficient(%union.tree_node* %67, %struct.subscript* %68, %struct.def_use* %69, i32* %tree_op_code)
  store i32 %call81, i32* %value1, align 4
  %70 = load i32, i32* %tree_op_code, align 4
  %cmp82 = icmp eq i32 %70, 34
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.77
  store i32 1, i32* %value1_is_idx, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.77
  %71 = load i32, i32* %value0_is_idx, align 4
  %tobool86 = icmp ne i32 %71, 0
  br i1 %tobool86, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.end.85
  %72 = load i32, i32* %value1, align 4
  %73 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %coefficient88 = getelementptr inbounds %struct.subscript, %struct.subscript* %73, i32 0, i32 1
  store i32 %72, i32* %coefficient88, align 4
  br label %if.end.94

if.else.89:                                       ; preds = %if.end.85
  %74 = load i32, i32* %value1_is_idx, align 4
  %tobool90 = icmp ne i32 %74, 0
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.else.89
  %75 = load i32, i32* %value0, align 4
  %76 = load %struct.subscript*, %struct.subscript** %coefficients.addr, align 8
  %coefficient92 = getelementptr inbounds %struct.subscript, %struct.subscript* %76, i32 0, i32 1
  store i32 %75, i32* %coefficient92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.else.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.87
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.else.66
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.end.65, %if.end.43, %if.then.20, %if.then.15, %if.end.13
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @check_subscript_induction(%struct.subscript* %icoefficient, %struct.subscript* %ocoefficient, %struct.loop* %loop_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %icoefficient.addr = alloca %struct.subscript*, align 8
  %ocoefficient.addr = alloca %struct.subscript*, align 8
  %loop_ptr.addr = alloca %struct.loop*, align 8
  %ind_ptr = alloca %struct.induction*, align 8
  %sub_ind_input = alloca i32, align 4
  %sub_ind_output = alloca i32, align 4
  store %struct.subscript* %icoefficient, %struct.subscript** %icoefficient.addr, align 8
  store %struct.subscript* %ocoefficient, %struct.subscript** %ocoefficient.addr, align 8
  store %struct.loop* %loop_ptr, %struct.loop** %loop_ptr.addr, align 8
  store i32 0, i32* %sub_ind_input, align 4
  store i32 0, i32* %sub_ind_output, align 4
  %0 = load %struct.loop*, %struct.loop** %loop_ptr.addr, align 8
  %ind = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 5
  %1 = load %struct.induction*, %struct.induction** %ind, align 8
  store %struct.induction* %1, %struct.induction** %ind_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %tobool = icmp ne %struct.induction* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.subscript*, %struct.subscript** %icoefficient.addr, align 8
  %variable = getelementptr inbounds %struct.subscript, %struct.subscript* %3, i32 0, i32 3
  %4 = load i8*, i8** %variable, align 8
  %5 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable1 = getelementptr inbounds %struct.induction, %struct.induction* %5, i32 0, i32 0
  %6 = load i8*, i8** %variable1, align 8
  %cmp = icmp eq i8* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %sub_ind_input, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct.subscript*, %struct.subscript** %ocoefficient.addr, align 8
  %variable2 = getelementptr inbounds %struct.subscript, %struct.subscript* %7, i32 0, i32 3
  %8 = load i8*, i8** %variable2, align 8
  %9 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %variable3 = getelementptr inbounds %struct.induction, %struct.induction* %9, i32 0, i32 0
  %10 = load i8*, i8** %variable3, align 8
  %cmp4 = icmp eq i8* %8, %10
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %sub_ind_output, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %11 = load %struct.induction*, %struct.induction** %ind_ptr, align 8
  %next = getelementptr inbounds %struct.induction, %struct.induction* %11, i32 0, i32 4
  %12 = load %struct.induction*, %struct.induction** %next, align 8
  store %struct.induction* %12, %struct.induction** %ind_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %sub_ind_input, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %14 = load i32, i32* %sub_ind_output, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %for.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @find_gcd(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %g = alloca i32, align 4
  %g0 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %g, align 4
  br label %if.end.25

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.else.10

if.then.3:                                        ; preds = %if.else
  %5 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %5, 0
  br i1 %cmp4, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %if.then.3
  %6 = load i32, i32* %y.addr, align 4
  %sub6 = sub nsw i32 0, %6
  br label %cond.end.8

cond.false.7:                                     ; preds = %if.then.3
  %7 = load i32, i32* %y.addr, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.5
  %cond9 = phi i32 [ %sub6, %cond.true.5 ], [ %7, %cond.false.7 ]
  store i32 %cond9, i32* %g, align 4
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %8 = load i32, i32* %x.addr, align 4
  %cmp11 = icmp slt i32 %8, 0
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.else.10
  %9 = load i32, i32* %x.addr, align 4
  %sub13 = sub nsw i32 0, %9
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.else.10
  %10 = load i32, i32* %x.addr, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi i32 [ %sub13, %cond.true.12 ], [ %10, %cond.false.14 ]
  store i32 %cond16, i32* %g0, align 4
  %11 = load i32, i32* %y.addr, align 4
  %cmp17 = icmp slt i32 %11, 0
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.15
  %12 = load i32, i32* %y.addr, align 4
  %sub19 = sub nsw i32 0, %12
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.15
  %13 = load i32, i32* %y.addr, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i32 [ %sub19, %cond.true.18 ], [ %13, %cond.false.20 ]
  store i32 %cond22, i32* %g1, align 4
  %14 = load i32, i32* %g0, align 4
  %15 = load i32, i32* %g1, align 4
  %rem = srem i32 %14, %15
  store i32 %rem, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.21
  %16 = load i32, i32* %r, align 4
  %cmp23 = icmp ne i32 %16, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %g1, align 4
  store i32 %17, i32* %g0, align 4
  %18 = load i32, i32* %r, align 4
  store i32 %18, i32* %g1, align 4
  %19 = load i32, i32* %g0, align 4
  %20 = load i32, i32* %g1, align 4
  %rem24 = srem i32 %19, %20
  store i32 %rem24, i32* %r, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %g1, align 4
  store i32 %21, i32* %g, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end.8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %cond.end
  %22 = load i32, i32* %g, align 4
  ret i32 %22
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
