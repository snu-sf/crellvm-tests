; ModuleID = 'ggc-common.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggc_root = type { %struct.ggc_root*, i8*, i32, i32, void (i8*)* }
%struct.d_htab_root = type { %struct.d_htab_root*, %struct.htab*, i32 (i8*)*, void (i8*)* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.ggc_statistics = type { [256 x i32], [256 x i64], [256 x i32], [256 x i64], i64, i64, i32, i32 }
%struct.label_node = type opaque
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.hash_table = type { %struct.hash_entry**, i32, %struct.hash_entry* (%struct.hash_entry*, %struct.hash_table*, i8*)*, i64 (i8*)*, i1 (i8*, i8*)*, %struct.obstack }
%struct.hash_entry = type { %struct.hash_entry*, i8*, i64 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_complex = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node*, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_real_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.realvaluetype }
%struct.realvaluetype = type { [3 x i64] }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@roots = internal global %struct.ggc_root* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ggc-common.c\00", align 1
@__FUNCTION__.ggc_del_root = private unnamed_addr constant [13 x i8] c"ggc_del_root\00", align 1
@d_htab_roots = internal global %struct.d_htab_root* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"ggc_pending_trees\00", align 1
@ggc_pending_trees = common global %struct.varray_head_tag* null, align 8
@ggc_stats = internal global %struct.ggc_statistics* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"\0A%-17s%10s %16s %10s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Tree\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Bytes\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"% Total\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%-17s%10u%16ld%c %10.3f\0A\00", align 1
@tree_code_name = external global [256 x i8*], align 16
@.str.8 = private unnamed_addr constant [18 x i8] c"%-17s%10u%16ld%c\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RTX\00", align 1
@rtx_name = external constant [153 x i8*], align 16
@lang_mark_false_label_stack = common global void (%struct.label_node*)* null, align 8
@rtx_format = external constant [153 x i8*], align 16
@tree_code_type = external global [256 x i8], align 16
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@tree_code_length = external global [256 x i32], align 16

; Function Attrs: nounwind uwtable
define void @ggc_add_root(i8* %base, i32 %nelt, i32 %size, void (i8*)* %cb) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %nelt.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %cb.addr = alloca void (i8*)*, align 8
  %x = alloca %struct.ggc_root*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %nelt, i32* %nelt.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store void (i8*)* %cb, void (i8*)** %cb.addr, align 8
  %call = call noalias i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.ggc_root*
  store %struct.ggc_root* %0, %struct.ggc_root** %x, align 8
  %1 = load %struct.ggc_root*, %struct.ggc_root** @roots, align 8
  %2 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %next = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %2, i32 0, i32 0
  store %struct.ggc_root* %1, %struct.ggc_root** %next, align 8
  %3 = load i8*, i8** %base.addr, align 8
  %4 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %base1 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %4, i32 0, i32 1
  store i8* %3, i8** %base1, align 8
  %5 = load i32, i32* %nelt.addr, align 4
  %6 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %nelt2 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %6, i32 0, i32 2
  store i32 %5, i32* %nelt2, align 4
  %7 = load i32, i32* %size.addr, align 4
  %8 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %size3 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %8, i32 0, i32 3
  store i32 %7, i32* %size3, align 4
  %9 = load void (i8*)*, void (i8*)** %cb.addr, align 8
  %10 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %cb4 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %10, i32 0, i32 4
  store void (i8*)* %9, void (i8*)** %cb4, align 8
  %11 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  store %struct.ggc_root* %11, %struct.ggc_root** @roots, align 8
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @ggc_add_rtx_root(%struct.rtx_def** %base, i32 %nelt) #0 {
entry:
  %base.addr = alloca %struct.rtx_def**, align 8
  %nelt.addr = alloca i32, align 4
  store %struct.rtx_def** %base, %struct.rtx_def*** %base.addr, align 8
  store i32 %nelt, i32* %nelt.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %base.addr, align 8
  %1 = bitcast %struct.rtx_def** %0 to i8*
  %2 = load i32, i32* %nelt.addr, align 4
  call void @ggc_add_root(i8* %1, i32 %2, i32 8, void (i8*)* @ggc_mark_rtx_ptr)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_rtx_ptr(i8* %elt) #0 {
entry:
  %elt.addr = alloca i8*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  store i8* %elt, i8** %elt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %elt.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %r__, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp = icmp ne %struct.rtx_def* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %5 = bitcast %struct.rtx_def* %4 to i8*
  %call = call i32 @ggc_set_mark(i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_add_tree_root(%union.tree_node** %base, i32 %nelt) #0 {
entry:
  %base.addr = alloca %union.tree_node**, align 8
  %nelt.addr = alloca i32, align 4
  store %union.tree_node** %base, %union.tree_node*** %base.addr, align 8
  store i32 %nelt, i32* %nelt.addr, align 4
  %0 = load %union.tree_node**, %union.tree_node*** %base.addr, align 8
  %1 = bitcast %union.tree_node** %0 to i8*
  %2 = load i32, i32* %nelt.addr, align 4
  call void @ggc_add_root(i8* %1, i32 %2, i32 8, void (i8*)* @ggc_mark_tree_ptr)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_tree_ptr(i8* %elt) #0 {
entry:
  %elt.addr = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store i8* %elt, i8** %elt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %elt.addr, align 8
  %1 = bitcast i8* %0 to %union.tree_node**
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8
  store %union.tree_node* %2, %union.tree_node** %t__, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %do.body
  %4 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %5 = bitcast %union.tree_node* %4 to i8*
  %call = call i32 @ggc_set_mark(i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  %7 = load i64, i64* %elements_used, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 0
  %9 = load i64, i64* %num_elements, align 8
  %cmp2 = icmp uge i64 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body.1
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 0
  %12 = load i64, i64* %num_elements4, align 8
  %mul = mul i64 2, %12
  %call5 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %10, i64 %mul)
  store %struct.varray_head_tag* %call5, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body.1
  %13 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 1
  %15 = load i64, i64* %elements_used6, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %elements_used6, align 8
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %15
  store %union.tree_node* %13, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_add_rtx_varray_root(%struct.varray_head_tag** %base, i32 %nelt) #0 {
entry:
  %base.addr = alloca %struct.varray_head_tag**, align 8
  %nelt.addr = alloca i32, align 4
  store %struct.varray_head_tag** %base, %struct.varray_head_tag*** %base.addr, align 8
  store i32 %nelt, i32* %nelt.addr, align 4
  %0 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %base.addr, align 8
  %1 = bitcast %struct.varray_head_tag** %0 to i8*
  %2 = load i32, i32* %nelt.addr, align 4
  call void @ggc_add_root(i8* %1, i32 %2, i32 8, void (i8*)* @ggc_mark_rtx_varray_ptr)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_rtx_varray_ptr(i8* %elt) #0 {
entry:
  %elt.addr = alloca i8*, align 8
  store i8* %elt, i8** %elt.addr, align 8
  %0 = load i8*, i8** %elt.addr, align 8
  %1 = bitcast i8* %0 to %struct.varray_head_tag**
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** %1, align 8
  call void @ggc_mark_rtx_varray(%struct.varray_head_tag* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_add_tree_varray_root(%struct.varray_head_tag** %base, i32 %nelt) #0 {
entry:
  %base.addr = alloca %struct.varray_head_tag**, align 8
  %nelt.addr = alloca i32, align 4
  store %struct.varray_head_tag** %base, %struct.varray_head_tag*** %base.addr, align 8
  store i32 %nelt, i32* %nelt.addr, align 4
  %0 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %base.addr, align 8
  %1 = bitcast %struct.varray_head_tag** %0 to i8*
  %2 = load i32, i32* %nelt.addr, align 4
  call void @ggc_add_root(i8* %1, i32 %2, i32 8, void (i8*)* @ggc_mark_tree_varray_ptr)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_tree_varray_ptr(i8* %elt) #0 {
entry:
  %elt.addr = alloca i8*, align 8
  store i8* %elt, i8** %elt.addr, align 8
  %0 = load i8*, i8** %elt.addr, align 8
  %1 = bitcast i8* %0 to %struct.varray_head_tag**
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** %1, align 8
  call void @ggc_mark_tree_varray(%struct.varray_head_tag* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_add_tree_hash_table_root(%struct.hash_table** %base, i32 %nelt) #0 {
entry:
  %base.addr = alloca %struct.hash_table**, align 8
  %nelt.addr = alloca i32, align 4
  store %struct.hash_table** %base, %struct.hash_table*** %base.addr, align 8
  store i32 %nelt, i32* %nelt.addr, align 4
  %0 = load %struct.hash_table**, %struct.hash_table*** %base.addr, align 8
  %1 = bitcast %struct.hash_table** %0 to i8*
  %2 = load i32, i32* %nelt.addr, align 4
  call void @ggc_add_root(i8* %1, i32 %2, i32 8, void (i8*)* @ggc_mark_tree_hash_table_ptr)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_tree_hash_table_ptr(i8* %elt) #0 {
entry:
  %elt.addr = alloca i8*, align 8
  store i8* %elt, i8** %elt.addr, align 8
  %0 = load i8*, i8** %elt.addr, align 8
  %1 = bitcast i8* %0 to %struct.hash_table**
  %2 = load %struct.hash_table*, %struct.hash_table** %1, align 8
  call void @ggc_mark_tree_hash_table(%struct.hash_table* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_del_root(i8* %base) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %x = alloca %struct.ggc_root*, align 8
  %p = alloca %struct.ggc_root**, align 8
  store i8* %base, i8** %base.addr, align 8
  store %struct.ggc_root** @roots, %struct.ggc_root*** %p, align 8
  %0 = load %struct.ggc_root*, %struct.ggc_root** @roots, align 8
  store %struct.ggc_root* %0, %struct.ggc_root** %x, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %tobool = icmp ne %struct.ggc_root* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %base1 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %2, i32 0, i32 1
  %3 = load i8*, i8** %base1, align 8
  %4 = load i8*, i8** %base.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %next = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %5, i32 0, i32 0
  %6 = load %struct.ggc_root*, %struct.ggc_root** %next, align 8
  %7 = load %struct.ggc_root**, %struct.ggc_root*** %p, align 8
  store %struct.ggc_root* %6, %struct.ggc_root** %7, align 8
  %8 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %9 = bitcast %struct.ggc_root* %8 to i8*
  call void @free(i8* %9) #4
  ret void

if.end:                                           ; preds = %while.body
  %10 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %next2 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %10, i32 0, i32 0
  store %struct.ggc_root** %next2, %struct.ggc_root*** %p, align 8
  %11 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %next3 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %11, i32 0, i32 0
  %12 = load %struct.ggc_root*, %struct.ggc_root** %next3, align 8
  store %struct.ggc_root* %12, %struct.ggc_root** %x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.ggc_del_root, i32 0, i32 0)) #5
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @ggc_add_deletable_htab(i8* %x, i32 (i8*)* %marked_p, void (i8*)* %mark) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %marked_p.addr = alloca i32 (i8*)*, align 8
  %mark.addr = alloca void (i8*)*, align 8
  %r = alloca %struct.d_htab_root*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i32 (i8*)* %marked_p, i32 (i8*)** %marked_p.addr, align 8
  store void (i8*)* %mark, void (i8*)** %mark.addr, align 8
  %call = call noalias i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.d_htab_root*
  store %struct.d_htab_root* %0, %struct.d_htab_root** %r, align 8
  %1 = load %struct.d_htab_root*, %struct.d_htab_root** @d_htab_roots, align 8
  %2 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %next = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %2, i32 0, i32 0
  store %struct.d_htab_root* %1, %struct.d_htab_root** %next, align 8
  %3 = load i8*, i8** %x.addr, align 8
  %4 = bitcast i8* %3 to %struct.htab*
  %5 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %htab = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %5, i32 0, i32 1
  store %struct.htab* %4, %struct.htab** %htab, align 8
  %6 = load i32 (i8*)*, i32 (i8*)** %marked_p.addr, align 8
  %tobool = icmp ne i32 (i8*)* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32 (i8*)*, i32 (i8*)** %marked_p.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (i8*)* [ %7, %cond.true ], [ @ggc_marked_p, %cond.false ]
  %8 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %marked_p1 = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %8, i32 0, i32 2
  store i32 (i8*)* %cond, i32 (i8*)** %marked_p1, align 8
  %9 = load void (i8*)*, void (i8*)** %mark.addr, align 8
  %10 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %mark2 = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %10, i32 0, i32 3
  store void (i8*)* %9, void (i8*)** %mark2, align 8
  %11 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  store %struct.d_htab_root* %11, %struct.d_htab_root** @d_htab_roots, align 8
  ret void
}

declare i32 @ggc_marked_p(i8*) #1

; Function Attrs: nounwind uwtable
define void @ggc_mark_roots() #0 {
entry:
  %x = alloca %struct.ggc_root*, align 8
  %y = alloca %struct.d_htab_root*, align 8
  %elt = alloca i8*, align 8
  %s = alloca i32, align 4
  %n = alloca i32, align 4
  %cb = alloca void (i8*)*, align 8
  %i = alloca i32, align 4
  %call = call %struct.varray_head_tag* @varray_init(i64 4096, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %0 = load %struct.ggc_root*, %struct.ggc_root** @roots, align 8
  store %struct.ggc_root* %0, %struct.ggc_root** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %1 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %cmp = icmp ne %struct.ggc_root* %1, null
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %base = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %2, i32 0, i32 1
  %3 = load i8*, i8** %base, align 8
  store i8* %3, i8** %elt, align 8
  %4 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %size = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %4, i32 0, i32 3
  %5 = load i32, i32* %size, align 4
  store i32 %5, i32* %s, align 4
  %6 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %nelt = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %6, i32 0, i32 2
  %7 = load i32, i32* %nelt, align 4
  store i32 %7, i32* %n, align 4
  %8 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %cb1 = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %8, i32 0, i32 4
  %9 = load void (i8*)*, void (i8*)** %cb1, align 8
  store void (i8*)* %9, void (i8*)** %cb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %12 = load void (i8*)*, void (i8*)** %cb, align 8
  %13 = load i8*, i8** %elt, align 8
  call void %12(i8* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %s, align 4
  %16 = load i8*, i8** %elt, align 8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %elt, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %17 = load %struct.ggc_root*, %struct.ggc_root** %x, align 8
  %next = getelementptr inbounds %struct.ggc_root, %struct.ggc_root* %17, i32 0, i32 0
  %18 = load %struct.ggc_root*, %struct.ggc_root** %next, align 8
  store %struct.ggc_root* %18, %struct.ggc_root** %x, align 8
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  call void @ggc_mark_trees()
  br label %do.body

do.body:                                          ; preds = %for.end.6
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %tobool = icmp ne %struct.varray_head_tag* %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %21 = bitcast %struct.varray_head_tag* %20 to i8*
  call void @free(i8* %21) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %call7 = call %struct.varray_head_tag* @varray_init(i64 1024, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct.varray_head_tag* %call7, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %22 = load %struct.d_htab_root*, %struct.d_htab_root** @d_htab_roots, align 8
  store %struct.d_htab_root* %22, %struct.d_htab_root** %y, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.11, %do.end
  %23 = load %struct.d_htab_root*, %struct.d_htab_root** %y, align 8
  %cmp9 = icmp ne %struct.d_htab_root* %23, null
  br i1 %cmp9, label %for.body.10, label %for.end.13

for.body.10:                                      ; preds = %for.cond.8
  %24 = load %struct.d_htab_root*, %struct.d_htab_root** %y, align 8
  %htab = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %24, i32 0, i32 1
  %25 = load %struct.htab*, %struct.htab** %htab, align 8
  %26 = load %struct.d_htab_root*, %struct.d_htab_root** %y, align 8
  %27 = bitcast %struct.d_htab_root* %26 to i8*
  call void @htab_traverse(%struct.htab* %25, i32 (i8**, i8*)* @ggc_htab_delete, i8* %27)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.10
  %28 = load %struct.d_htab_root*, %struct.d_htab_root** %y, align 8
  %next12 = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %28, i32 0, i32 0
  %29 = load %struct.d_htab_root*, %struct.d_htab_root** %next12, align 8
  store %struct.d_htab_root* %29, %struct.d_htab_root** %y, align 8
  br label %for.cond.8

for.end.13:                                       ; preds = %for.cond.8
  call void @ggc_mark_trees()
  br label %do.body.14

do.body.14:                                       ; preds = %for.end.13
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %tobool15 = icmp ne %struct.varray_head_tag* %30, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.body.14
  %31 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %32 = bitcast %struct.varray_head_tag* %31 to i8*
  call void @free(i8* %32) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %do.body.14
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  ret void
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_trees() #0 {
entry:
  %t = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %t__ = alloca %union.tree_node*, align 8
  %t__27 = alloca %union.tree_node*, align 8
  %t__52 = alloca %union.tree_node*, align 8
  %t__76 = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %t__106 = alloca %union.tree_node*, align 8
  %t__134 = alloca %union.tree_node*, align 8
  %t__158 = alloca %union.tree_node*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %t__193 = alloca %union.tree_node*, align 8
  %t__224 = alloca %union.tree_node*, align 8
  %t__251 = alloca %union.tree_node*, align 8
  %t__278 = alloca %union.tree_node*, align 8
  %t__305 = alloca %union.tree_node*, align 8
  %t__332 = alloca %union.tree_node*, align 8
  %t__359 = alloca %union.tree_node*, align 8
  %t__386 = alloca %union.tree_node*, align 8
  %t__413 = alloca %union.tree_node*, align 8
  %t__440 = alloca %union.tree_node*, align 8
  %t__467 = alloca %union.tree_node*, align 8
  %r__498 = alloca %struct.rtx_def*, align 8
  %r__516 = alloca %struct.rtx_def*, align 8
  %t__527 = alloca %union.tree_node*, align 8
  %t__558 = alloca %union.tree_node*, align 8
  %t__601 = alloca %union.tree_node*, align 8
  %t__628 = alloca %union.tree_node*, align 8
  %t__665 = alloca %union.tree_node*, align 8
  %t__693 = alloca %union.tree_node*, align 8
  %t__721 = alloca %union.tree_node*, align 8
  %t__749 = alloca %union.tree_node*, align 8
  %t__776 = alloca %union.tree_node*, align 8
  %t__803 = alloca %union.tree_node*, align 8
  %t__830 = alloca %union.tree_node*, align 8
  %t__858 = alloca %union.tree_node*, align 8
  %t__885 = alloca %union.tree_node*, align 8
  %t__912 = alloca %union.tree_node*, align 8
  %t__939 = alloca %union.tree_node*, align 8
  %t__966 = alloca %union.tree_node*, align 8
  %t__993 = alloca %union.tree_node*, align 8
  %t__1022 = alloca %union.tree_node*, align 8
  %t__1048 = alloca %union.tree_node*, align 8
  %t__1075 = alloca %union.tree_node*, align 8
  %t__1102 = alloca %union.tree_node*, align 8
  %r__1131 = alloca %struct.rtx_def*, align 8
  %i1142 = alloca i32, align 4
  %first_rtl = alloca i32, align 4
  %r__1163 = alloca %struct.rtx_def*, align 8
  %t__1175 = alloca %union.tree_node*, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.1207, %sw.bb.219, %while.end, %do.end.99, %entry
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 1
  %1 = load i64, i64* %elements_used, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end.1208

while.body:                                       ; preds = %while.cond
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 1
  %3 = load i64, i64* %elements_used1, align 8
  %sub = sub i64 %3, 1
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %sub
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %t, align 8
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  %7 = load i64, i64* %elements_used2, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %elements_used2, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code3, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %9 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %tobool4 = icmp ne %struct.ggc_statistics* %9, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %code, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %num_trees = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %11, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %num_trees, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx5, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %arrayidx5, align 4
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %14 = bitcast %union.tree_node* %13 to i8*
  %call = call i64 @ggc_get_size(i8* %14)
  %15 = load i32, i32* %code, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %16, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees, i32 0, i64 %idxprom6
  %17 = load i64, i64* %arrayidx7, align 8
  %add = add i64 %17, %call
  store i64 %add, i64* %arrayidx7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %do.body

do.body:                                          ; preds = %if.end
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common8 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type, align 8
  store %union.tree_node* %19, %union.tree_node** %t__, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %20, null
  br i1 %cmp, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %do.body
  %21 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %22 = bitcast %union.tree_node* %21 to i8*
  %call9 = call i32 @ggc_set_mark(i8* %22)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.24, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 1
  %24 = load i64, i64* %elements_used13, align 8
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 0
  %26 = load i64, i64* %num_elements, align 8
  %cmp14 = icmp uge i64 %24, %26
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.body.12
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %28, i32 0, i32 0
  %29 = load i64, i64* %num_elements16, align 8
  %mul = mul i64 2, %29
  %call17 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %27, i64 %mul)
  store %struct.varray_head_tag* %call17, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.body.12
  %30 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %31 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used19 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %31, i32 0, i32 1
  %32 = load i64, i64* %elements_used19, align 8
  %inc20 = add i64 %32, 1
  store i64 %inc20, i64* %elements_used19, align 8
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data21 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %tree22 = bitcast %union.varray_data_tag* %data21 to [1 x %union.tree_node*]*
  %arrayidx23 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree22, i32 0, i64 %32
  store %union.tree_node* %30, %union.tree_node** %arrayidx23, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %34 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common28 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 0
  %35 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %35, %union.tree_node** %t__27, align 8
  %36 = load %union.tree_node*, %union.tree_node** %t__27, align 8
  %cmp29 = icmp ne %union.tree_node* %36, null
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.49

land.lhs.true.30:                                 ; preds = %do.body.26
  %37 = load %union.tree_node*, %union.tree_node** %t__27, align 8
  %38 = bitcast %union.tree_node* %37 to i8*
  %call31 = call i32 @ggc_set_mark(i8* %38)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.49, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.30
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used35 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 1
  %40 = load i64, i64* %elements_used35, align 8
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements36 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 0
  %42 = load i64, i64* %num_elements36, align 8
  %cmp37 = icmp uge i64 %40, %42
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %do.body.34
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %44 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements39 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %44, i32 0, i32 0
  %45 = load i64, i64* %num_elements39, align 8
  %mul40 = mul i64 2, %45
  %call41 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %43, i64 %mul40)
  store %struct.varray_head_tag* %call41, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %do.body.34
  %46 = load %union.tree_node*, %union.tree_node** %t__27, align 8
  %47 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used43 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %47, i32 0, i32 1
  %48 = load i64, i64* %elements_used43, align 8
  %inc44 = add i64 %48, 1
  store i64 %inc44, i64* %elements_used43, align 8
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data45 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 4
  %tree46 = bitcast %union.varray_data_tag* %data45 to [1 x %union.tree_node*]*
  %arrayidx47 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree46, i32 0, i64 %48
  store %union.tree_node* %46, %union.tree_node** %arrayidx47, align 8
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.42
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %land.lhs.true.30, %do.body.26
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %50 = load i32, i32* %code, align 4
  switch i32 %50, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.100
    i32 27, label %sw.bb.132
    i32 35, label %sw.bb.182
    i32 37, label %sw.bb.191
    i32 1, label %sw.bb.219
  ]

sw.bb:                                            ; preds = %do.end.50
  br label %do.body.51

do.body.51:                                       ; preds = %sw.bb
  %51 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %51 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %52 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  store %union.tree_node* %52, %union.tree_node** %t__52, align 8
  %53 = load %union.tree_node*, %union.tree_node** %t__52, align 8
  %cmp53 = icmp ne %union.tree_node* %53, null
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.73

land.lhs.true.54:                                 ; preds = %do.body.51
  %54 = load %union.tree_node*, %union.tree_node** %t__52, align 8
  %55 = bitcast %union.tree_node* %54 to i8*
  %call55 = call i32 @ggc_set_mark(i8* %55)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.73, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used59 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 1
  %57 = load i64, i64* %elements_used59, align 8
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements60 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %58, i32 0, i32 0
  %59 = load i64, i64* %num_elements60, align 8
  %cmp61 = icmp uge i64 %57, %59
  br i1 %cmp61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %do.body.58
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %61 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements63 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %61, i32 0, i32 0
  %62 = load i64, i64* %num_elements63, align 8
  %mul64 = mul i64 2, %62
  %call65 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %60, i64 %mul64)
  store %struct.varray_head_tag* %call65, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %do.body.58
  %63 = load %union.tree_node*, %union.tree_node** %t__52, align 8
  %64 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used67 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %64, i32 0, i32 1
  %65 = load i64, i64* %elements_used67, align 8
  %inc68 = add i64 %65, 1
  store i64 %inc68, i64* %elements_used67, align 8
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data69 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 4
  %tree70 = bitcast %union.varray_data_tag* %data69 to [1 x %union.tree_node*]*
  %arrayidx71 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree70, i32 0, i64 %65
  store %union.tree_node* %63, %union.tree_node** %arrayidx71, align 8
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.66
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %land.lhs.true.54, %do.body.51
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %67 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list77 = bitcast %union.tree_node* %67 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list77, i32 0, i32 2
  %68 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %68, %union.tree_node** %t__76, align 8
  %69 = load %union.tree_node*, %union.tree_node** %t__76, align 8
  %cmp78 = icmp ne %union.tree_node* %69, null
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.98

land.lhs.true.79:                                 ; preds = %do.body.75
  %70 = load %union.tree_node*, %union.tree_node** %t__76, align 8
  %71 = bitcast %union.tree_node* %70 to i8*
  %call80 = call i32 @ggc_set_mark(i8* %71)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.98, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.79
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.82
  %72 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used84 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %72, i32 0, i32 1
  %73 = load i64, i64* %elements_used84, align 8
  %74 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements85 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %74, i32 0, i32 0
  %75 = load i64, i64* %num_elements85, align 8
  %cmp86 = icmp uge i64 %73, %75
  br i1 %cmp86, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %do.body.83
  %76 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements88 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 0
  %78 = load i64, i64* %num_elements88, align 8
  %mul89 = mul i64 2, %78
  %call90 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %76, i64 %mul89)
  store %struct.varray_head_tag* %call90, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.87, %do.body.83
  %79 = load %union.tree_node*, %union.tree_node** %t__76, align 8
  %80 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used92 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %80, i32 0, i32 1
  %81 = load i64, i64* %elements_used92, align 8
  %inc93 = add i64 %81, 1
  store i64 %inc93, i64* %elements_used92, align 8
  %82 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data94 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %82, i32 0, i32 4
  %tree95 = bitcast %union.varray_data_tag* %data94 to [1 x %union.tree_node*]*
  %arrayidx96 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree95, i32 0, i64 %81
  store %union.tree_node* %79, %union.tree_node** %arrayidx96, align 8
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.91
  br label %if.end.98

if.end.98:                                        ; preds = %do.end.97, %land.lhs.true.79, %do.body.75
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.98
  br label %while.cond

sw.bb.100:                                        ; preds = %do.end.50
  %83 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec = bitcast %union.tree_node* %83 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  %84 = load i32, i32* %length, align 4
  store i32 %84, i32* %i, align 4
  br label %while.cond.101

while.cond.101:                                   ; preds = %do.end.131, %sw.bb.100
  %85 = load i32, i32* %i, align 4
  %dec102 = add nsw i32 %85, -1
  store i32 %dec102, i32* %i, align 4
  %cmp103 = icmp sge i32 %dec102, 0
  br i1 %cmp103, label %while.body.104, label %while.end

while.body.104:                                   ; preds = %while.cond.101
  br label %do.body.105

do.body.105:                                      ; preds = %while.body.104
  %86 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %86 to i64
  %87 = load %union.tree_node*, %union.tree_node** %t, align 8
  %vec108 = bitcast %union.tree_node* %87 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec108, i32 0, i32 2
  %arrayidx109 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 %idxprom107
  %88 = load %union.tree_node*, %union.tree_node** %arrayidx109, align 8
  store %union.tree_node* %88, %union.tree_node** %t__106, align 8
  %89 = load %union.tree_node*, %union.tree_node** %t__106, align 8
  %cmp110 = icmp ne %union.tree_node* %89, null
  br i1 %cmp110, label %land.lhs.true.111, label %if.end.130

land.lhs.true.111:                                ; preds = %do.body.105
  %90 = load %union.tree_node*, %union.tree_node** %t__106, align 8
  %91 = bitcast %union.tree_node* %90 to i8*
  %call112 = call i32 @ggc_set_mark(i8* %91)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.130, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.111
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %92 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used116 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %92, i32 0, i32 1
  %93 = load i64, i64* %elements_used116, align 8
  %94 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements117 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %94, i32 0, i32 0
  %95 = load i64, i64* %num_elements117, align 8
  %cmp118 = icmp uge i64 %93, %95
  br i1 %cmp118, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %do.body.115
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %97 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements120 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %97, i32 0, i32 0
  %98 = load i64, i64* %num_elements120, align 8
  %mul121 = mul i64 2, %98
  %call122 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %96, i64 %mul121)
  store %struct.varray_head_tag* %call122, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %do.body.115
  %99 = load %union.tree_node*, %union.tree_node** %t__106, align 8
  %100 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used124 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %100, i32 0, i32 1
  %101 = load i64, i64* %elements_used124, align 8
  %inc125 = add i64 %101, 1
  store i64 %inc125, i64* %elements_used124, align 8
  %102 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data126 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %102, i32 0, i32 4
  %tree127 = bitcast %union.varray_data_tag* %data126 to [1 x %union.tree_node*]*
  %arrayidx128 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree127, i32 0, i64 %101
  store %union.tree_node* %99, %union.tree_node** %arrayidx128, align 8
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.123
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %land.lhs.true.111, %do.body.105
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %while.cond.101

while.end:                                        ; preds = %while.cond.101
  br label %while.cond

sw.bb.132:                                        ; preds = %do.end.50
  br label %do.body.133

do.body.133:                                      ; preds = %sw.bb.132
  %103 = load %union.tree_node*, %union.tree_node** %t, align 8
  %complex = bitcast %union.tree_node* %103 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %104 = load %union.tree_node*, %union.tree_node** %real, align 8
  store %union.tree_node* %104, %union.tree_node** %t__134, align 8
  %105 = load %union.tree_node*, %union.tree_node** %t__134, align 8
  %cmp135 = icmp ne %union.tree_node* %105, null
  br i1 %cmp135, label %land.lhs.true.136, label %if.end.155

land.lhs.true.136:                                ; preds = %do.body.133
  %106 = load %union.tree_node*, %union.tree_node** %t__134, align 8
  %107 = bitcast %union.tree_node* %106 to i8*
  %call137 = call i32 @ggc_set_mark(i8* %107)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end.155, label %if.then.139

if.then.139:                                      ; preds = %land.lhs.true.136
  br label %do.body.140

do.body.140:                                      ; preds = %if.then.139
  %108 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used141 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %108, i32 0, i32 1
  %109 = load i64, i64* %elements_used141, align 8
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements142 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 0
  %111 = load i64, i64* %num_elements142, align 8
  %cmp143 = icmp uge i64 %109, %111
  br i1 %cmp143, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %do.body.140
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %113 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements145 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %113, i32 0, i32 0
  %114 = load i64, i64* %num_elements145, align 8
  %mul146 = mul i64 2, %114
  %call147 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %112, i64 %mul146)
  store %struct.varray_head_tag* %call147, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %do.body.140
  %115 = load %union.tree_node*, %union.tree_node** %t__134, align 8
  %116 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used149 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %116, i32 0, i32 1
  %117 = load i64, i64* %elements_used149, align 8
  %inc150 = add i64 %117, 1
  store i64 %inc150, i64* %elements_used149, align 8
  %118 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data151 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %118, i32 0, i32 4
  %tree152 = bitcast %union.varray_data_tag* %data151 to [1 x %union.tree_node*]*
  %arrayidx153 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree152, i32 0, i64 %117
  store %union.tree_node* %115, %union.tree_node** %arrayidx153, align 8
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.148
  br label %if.end.155

if.end.155:                                       ; preds = %do.end.154, %land.lhs.true.136, %do.body.133
  br label %do.end.156

do.end.156:                                       ; preds = %if.end.155
  br label %do.body.157

do.body.157:                                      ; preds = %do.end.156
  %119 = load %union.tree_node*, %union.tree_node** %t, align 8
  %complex159 = bitcast %union.tree_node* %119 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex159, i32 0, i32 3
  %120 = load %union.tree_node*, %union.tree_node** %imag, align 8
  store %union.tree_node* %120, %union.tree_node** %t__158, align 8
  %121 = load %union.tree_node*, %union.tree_node** %t__158, align 8
  %cmp160 = icmp ne %union.tree_node* %121, null
  br i1 %cmp160, label %land.lhs.true.161, label %if.end.180

land.lhs.true.161:                                ; preds = %do.body.157
  %122 = load %union.tree_node*, %union.tree_node** %t__158, align 8
  %123 = bitcast %union.tree_node* %122 to i8*
  %call162 = call i32 @ggc_set_mark(i8* %123)
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end.180, label %if.then.164

if.then.164:                                      ; preds = %land.lhs.true.161
  br label %do.body.165

do.body.165:                                      ; preds = %if.then.164
  %124 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used166 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %124, i32 0, i32 1
  %125 = load i64, i64* %elements_used166, align 8
  %126 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements167 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %126, i32 0, i32 0
  %127 = load i64, i64* %num_elements167, align 8
  %cmp168 = icmp uge i64 %125, %127
  br i1 %cmp168, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %do.body.165
  %128 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %129 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements170 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %129, i32 0, i32 0
  %130 = load i64, i64* %num_elements170, align 8
  %mul171 = mul i64 2, %130
  %call172 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %128, i64 %mul171)
  store %struct.varray_head_tag* %call172, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %do.body.165
  %131 = load %union.tree_node*, %union.tree_node** %t__158, align 8
  %132 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used174 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %132, i32 0, i32 1
  %133 = load i64, i64* %elements_used174, align 8
  %inc175 = add i64 %133, 1
  store i64 %inc175, i64* %elements_used174, align 8
  %134 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data176 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %134, i32 0, i32 4
  %tree177 = bitcast %union.varray_data_tag* %data176 to [1 x %union.tree_node*]*
  %arrayidx178 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree177, i32 0, i64 %133
  store %union.tree_node* %131, %union.tree_node** %arrayidx178, align 8
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.173
  br label %if.end.180

if.end.180:                                       ; preds = %do.end.179, %land.lhs.true.161, %do.body.157
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  br label %sw.epilog

sw.bb.182:                                        ; preds = %do.end.50
  br label %do.body.183

do.body.183:                                      ; preds = %sw.bb.182
  %135 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %135 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 19
  %r = bitcast %union.anon.1* %u2 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  store %struct.rtx_def* %136, %struct.rtx_def** %r__, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp184 = icmp ne %struct.rtx_def* %137, null
  br i1 %cmp184, label %land.lhs.true.185, label %if.end.189

land.lhs.true.185:                                ; preds = %do.body.183
  %138 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %139 = bitcast %struct.rtx_def* %138 to i8*
  %call186 = call i32 @ggc_set_mark(i8* %139)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %land.lhs.true.185
  %140 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %140)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %land.lhs.true.185, %do.body.183
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  br label %sw.epilog

sw.bb.191:                                        ; preds = %do.end.50
  br label %do.body.192

do.body.192:                                      ; preds = %sw.bb.191
  %141 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl194 = bitcast %union.tree_node* %141 to %struct.tree_decl*
  %u2195 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl194, i32 0, i32 19
  %t196 = bitcast %union.anon.1* %u2195 to %union.tree_node**
  %142 = load %union.tree_node*, %union.tree_node** %t196, align 8
  store %union.tree_node* %142, %union.tree_node** %t__193, align 8
  %143 = load %union.tree_node*, %union.tree_node** %t__193, align 8
  %cmp197 = icmp ne %union.tree_node* %143, null
  br i1 %cmp197, label %land.lhs.true.198, label %if.end.217

land.lhs.true.198:                                ; preds = %do.body.192
  %144 = load %union.tree_node*, %union.tree_node** %t__193, align 8
  %145 = bitcast %union.tree_node* %144 to i8*
  %call199 = call i32 @ggc_set_mark(i8* %145)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.end.217, label %if.then.201

if.then.201:                                      ; preds = %land.lhs.true.198
  br label %do.body.202

do.body.202:                                      ; preds = %if.then.201
  %146 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used203 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %146, i32 0, i32 1
  %147 = load i64, i64* %elements_used203, align 8
  %148 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements204 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %148, i32 0, i32 0
  %149 = load i64, i64* %num_elements204, align 8
  %cmp205 = icmp uge i64 %147, %149
  br i1 %cmp205, label %if.then.206, label %if.end.210

if.then.206:                                      ; preds = %do.body.202
  %150 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %151 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements207 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %151, i32 0, i32 0
  %152 = load i64, i64* %num_elements207, align 8
  %mul208 = mul i64 2, %152
  %call209 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %150, i64 %mul208)
  store %struct.varray_head_tag* %call209, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.206, %do.body.202
  %153 = load %union.tree_node*, %union.tree_node** %t__193, align 8
  %154 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used211 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %154, i32 0, i32 1
  %155 = load i64, i64* %elements_used211, align 8
  %inc212 = add i64 %155, 1
  store i64 %inc212, i64* %elements_used211, align 8
  %156 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data213 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %156, i32 0, i32 4
  %tree214 = bitcast %union.varray_data_tag* %data213 to [1 x %union.tree_node*]*
  %arrayidx215 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree214, i32 0, i64 %155
  store %union.tree_node* %153, %union.tree_node** %arrayidx215, align 8
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.210
  br label %if.end.217

if.end.217:                                       ; preds = %do.end.216, %land.lhs.true.198, %do.body.192
  br label %do.end.218

do.end.218:                                       ; preds = %if.end.217
  br label %sw.epilog

sw.bb.219:                                        ; preds = %do.end.50
  %157 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @lang_mark_tree(%union.tree_node* %157)
  br label %while.cond

sw.default:                                       ; preds = %do.end.50
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.218, %do.end.190, %do.end.181
  %158 = load i32, i32* %code, align 4
  %idxprom220 = sext i32 %158 to i64
  %arrayidx221 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom220
  %159 = load i8, i8* %arrayidx221, align 1
  %conv = sext i8 %159 to i32
  switch i32 %conv, label %sw.epilog.1207 [
    i32 100, label %sw.bb.222
    i32 116, label %sw.bb.663
    i32 98, label %sw.bb.1020
    i32 99, label %sw.bb.1129
    i32 114, label %sw.bb.1141
    i32 60, label %sw.bb.1141
    i32 49, label %sw.bb.1141
    i32 50, label %sw.bb.1141
    i32 101, label %sw.bb.1141
    i32 115, label %sw.bb.1141
    i32 120, label %sw.bb.1206
  ]

sw.bb.222:                                        ; preds = %sw.epilog
  br label %do.body.223

do.body.223:                                      ; preds = %sw.bb.222
  %160 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl225 = bitcast %union.tree_node* %160 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl225, i32 0, i32 4
  %161 = load %union.tree_node*, %union.tree_node** %size, align 8
  store %union.tree_node* %161, %union.tree_node** %t__224, align 8
  %162 = load %union.tree_node*, %union.tree_node** %t__224, align 8
  %cmp226 = icmp ne %union.tree_node* %162, null
  br i1 %cmp226, label %land.lhs.true.228, label %if.end.248

land.lhs.true.228:                                ; preds = %do.body.223
  %163 = load %union.tree_node*, %union.tree_node** %t__224, align 8
  %164 = bitcast %union.tree_node* %163 to i8*
  %call229 = call i32 @ggc_set_mark(i8* %164)
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.end.248, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.228
  br label %do.body.232

do.body.232:                                      ; preds = %if.then.231
  %165 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used233 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %165, i32 0, i32 1
  %166 = load i64, i64* %elements_used233, align 8
  %167 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements234 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %167, i32 0, i32 0
  %168 = load i64, i64* %num_elements234, align 8
  %cmp235 = icmp uge i64 %166, %168
  br i1 %cmp235, label %if.then.237, label %if.end.241

if.then.237:                                      ; preds = %do.body.232
  %169 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %170 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements238 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %170, i32 0, i32 0
  %171 = load i64, i64* %num_elements238, align 8
  %mul239 = mul i64 2, %171
  %call240 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %169, i64 %mul239)
  store %struct.varray_head_tag* %call240, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.237, %do.body.232
  %172 = load %union.tree_node*, %union.tree_node** %t__224, align 8
  %173 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used242 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %173, i32 0, i32 1
  %174 = load i64, i64* %elements_used242, align 8
  %inc243 = add i64 %174, 1
  store i64 %inc243, i64* %elements_used242, align 8
  %175 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data244 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %175, i32 0, i32 4
  %tree245 = bitcast %union.varray_data_tag* %data244 to [1 x %union.tree_node*]*
  %arrayidx246 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree245, i32 0, i64 %174
  store %union.tree_node* %172, %union.tree_node** %arrayidx246, align 8
  br label %do.end.247

do.end.247:                                       ; preds = %if.end.241
  br label %if.end.248

if.end.248:                                       ; preds = %do.end.247, %land.lhs.true.228, %do.body.223
  br label %do.end.249

do.end.249:                                       ; preds = %if.end.248
  br label %do.body.250

do.body.250:                                      ; preds = %do.end.249
  %176 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl252 = bitcast %union.tree_node* %176 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl252, i32 0, i32 7
  %177 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  store %union.tree_node* %177, %union.tree_node** %t__251, align 8
  %178 = load %union.tree_node*, %union.tree_node** %t__251, align 8
  %cmp253 = icmp ne %union.tree_node* %178, null
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.275

land.lhs.true.255:                                ; preds = %do.body.250
  %179 = load %union.tree_node*, %union.tree_node** %t__251, align 8
  %180 = bitcast %union.tree_node* %179 to i8*
  %call256 = call i32 @ggc_set_mark(i8* %180)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.end.275, label %if.then.258

if.then.258:                                      ; preds = %land.lhs.true.255
  br label %do.body.259

do.body.259:                                      ; preds = %if.then.258
  %181 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used260 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %181, i32 0, i32 1
  %182 = load i64, i64* %elements_used260, align 8
  %183 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements261 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %183, i32 0, i32 0
  %184 = load i64, i64* %num_elements261, align 8
  %cmp262 = icmp uge i64 %182, %184
  br i1 %cmp262, label %if.then.264, label %if.end.268

if.then.264:                                      ; preds = %do.body.259
  %185 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %186 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements265 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %186, i32 0, i32 0
  %187 = load i64, i64* %num_elements265, align 8
  %mul266 = mul i64 2, %187
  %call267 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %185, i64 %mul266)
  store %struct.varray_head_tag* %call267, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.264, %do.body.259
  %188 = load %union.tree_node*, %union.tree_node** %t__251, align 8
  %189 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used269 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %189, i32 0, i32 1
  %190 = load i64, i64* %elements_used269, align 8
  %inc270 = add i64 %190, 1
  store i64 %inc270, i64* %elements_used269, align 8
  %191 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data271 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %191, i32 0, i32 4
  %tree272 = bitcast %union.varray_data_tag* %data271 to [1 x %union.tree_node*]*
  %arrayidx273 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree272, i32 0, i64 %190
  store %union.tree_node* %188, %union.tree_node** %arrayidx273, align 8
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.268
  br label %if.end.275

if.end.275:                                       ; preds = %do.end.274, %land.lhs.true.255, %do.body.250
  br label %do.end.276

do.end.276:                                       ; preds = %if.end.275
  br label %do.body.277

do.body.277:                                      ; preds = %do.end.276
  %192 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl279 = bitcast %union.tree_node* %192 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl279, i32 0, i32 8
  %193 = load %union.tree_node*, %union.tree_node** %name, align 8
  store %union.tree_node* %193, %union.tree_node** %t__278, align 8
  %194 = load %union.tree_node*, %union.tree_node** %t__278, align 8
  %cmp280 = icmp ne %union.tree_node* %194, null
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.302

land.lhs.true.282:                                ; preds = %do.body.277
  %195 = load %union.tree_node*, %union.tree_node** %t__278, align 8
  %196 = bitcast %union.tree_node* %195 to i8*
  %call283 = call i32 @ggc_set_mark(i8* %196)
  %tobool284 = icmp ne i32 %call283, 0
  br i1 %tobool284, label %if.end.302, label %if.then.285

if.then.285:                                      ; preds = %land.lhs.true.282
  br label %do.body.286

do.body.286:                                      ; preds = %if.then.285
  %197 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used287 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %197, i32 0, i32 1
  %198 = load i64, i64* %elements_used287, align 8
  %199 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements288 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %199, i32 0, i32 0
  %200 = load i64, i64* %num_elements288, align 8
  %cmp289 = icmp uge i64 %198, %200
  br i1 %cmp289, label %if.then.291, label %if.end.295

if.then.291:                                      ; preds = %do.body.286
  %201 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %202 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements292 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %202, i32 0, i32 0
  %203 = load i64, i64* %num_elements292, align 8
  %mul293 = mul i64 2, %203
  %call294 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %201, i64 %mul293)
  store %struct.varray_head_tag* %call294, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.291, %do.body.286
  %204 = load %union.tree_node*, %union.tree_node** %t__278, align 8
  %205 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used296 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %205, i32 0, i32 1
  %206 = load i64, i64* %elements_used296, align 8
  %inc297 = add i64 %206, 1
  store i64 %inc297, i64* %elements_used296, align 8
  %207 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data298 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %207, i32 0, i32 4
  %tree299 = bitcast %union.varray_data_tag* %data298 to [1 x %union.tree_node*]*
  %arrayidx300 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree299, i32 0, i64 %206
  store %union.tree_node* %204, %union.tree_node** %arrayidx300, align 8
  br label %do.end.301

do.end.301:                                       ; preds = %if.end.295
  br label %if.end.302

if.end.302:                                       ; preds = %do.end.301, %land.lhs.true.282, %do.body.277
  br label %do.end.303

do.end.303:                                       ; preds = %if.end.302
  br label %do.body.304

do.body.304:                                      ; preds = %do.end.303
  %208 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl306 = bitcast %union.tree_node* %208 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl306, i32 0, i32 9
  %209 = load %union.tree_node*, %union.tree_node** %context, align 8
  store %union.tree_node* %209, %union.tree_node** %t__305, align 8
  %210 = load %union.tree_node*, %union.tree_node** %t__305, align 8
  %cmp307 = icmp ne %union.tree_node* %210, null
  br i1 %cmp307, label %land.lhs.true.309, label %if.end.329

land.lhs.true.309:                                ; preds = %do.body.304
  %211 = load %union.tree_node*, %union.tree_node** %t__305, align 8
  %212 = bitcast %union.tree_node* %211 to i8*
  %call310 = call i32 @ggc_set_mark(i8* %212)
  %tobool311 = icmp ne i32 %call310, 0
  br i1 %tobool311, label %if.end.329, label %if.then.312

if.then.312:                                      ; preds = %land.lhs.true.309
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.312
  %213 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used314 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %213, i32 0, i32 1
  %214 = load i64, i64* %elements_used314, align 8
  %215 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements315 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %215, i32 0, i32 0
  %216 = load i64, i64* %num_elements315, align 8
  %cmp316 = icmp uge i64 %214, %216
  br i1 %cmp316, label %if.then.318, label %if.end.322

if.then.318:                                      ; preds = %do.body.313
  %217 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %218 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements319 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %218, i32 0, i32 0
  %219 = load i64, i64* %num_elements319, align 8
  %mul320 = mul i64 2, %219
  %call321 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %217, i64 %mul320)
  store %struct.varray_head_tag* %call321, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.318, %do.body.313
  %220 = load %union.tree_node*, %union.tree_node** %t__305, align 8
  %221 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used323 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %221, i32 0, i32 1
  %222 = load i64, i64* %elements_used323, align 8
  %inc324 = add i64 %222, 1
  store i64 %inc324, i64* %elements_used323, align 8
  %223 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data325 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %223, i32 0, i32 4
  %tree326 = bitcast %union.varray_data_tag* %data325 to [1 x %union.tree_node*]*
  %arrayidx327 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree326, i32 0, i64 %222
  store %union.tree_node* %220, %union.tree_node** %arrayidx327, align 8
  br label %do.end.328

do.end.328:                                       ; preds = %if.end.322
  br label %if.end.329

if.end.329:                                       ; preds = %do.end.328, %land.lhs.true.309, %do.body.304
  br label %do.end.330

do.end.330:                                       ; preds = %if.end.329
  br label %do.body.331

do.body.331:                                      ; preds = %do.end.330
  %224 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl333 = bitcast %union.tree_node* %224 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl333, i32 0, i32 10
  %225 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %225, %union.tree_node** %t__332, align 8
  %226 = load %union.tree_node*, %union.tree_node** %t__332, align 8
  %cmp334 = icmp ne %union.tree_node* %226, null
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.356

land.lhs.true.336:                                ; preds = %do.body.331
  %227 = load %union.tree_node*, %union.tree_node** %t__332, align 8
  %228 = bitcast %union.tree_node* %227 to i8*
  %call337 = call i32 @ggc_set_mark(i8* %228)
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.end.356, label %if.then.339

if.then.339:                                      ; preds = %land.lhs.true.336
  br label %do.body.340

do.body.340:                                      ; preds = %if.then.339
  %229 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used341 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %229, i32 0, i32 1
  %230 = load i64, i64* %elements_used341, align 8
  %231 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements342 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %231, i32 0, i32 0
  %232 = load i64, i64* %num_elements342, align 8
  %cmp343 = icmp uge i64 %230, %232
  br i1 %cmp343, label %if.then.345, label %if.end.349

if.then.345:                                      ; preds = %do.body.340
  %233 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %234 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements346 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %234, i32 0, i32 0
  %235 = load i64, i64* %num_elements346, align 8
  %mul347 = mul i64 2, %235
  %call348 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %233, i64 %mul347)
  store %struct.varray_head_tag* %call348, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.345, %do.body.340
  %236 = load %union.tree_node*, %union.tree_node** %t__332, align 8
  %237 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used350 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %237, i32 0, i32 1
  %238 = load i64, i64* %elements_used350, align 8
  %inc351 = add i64 %238, 1
  store i64 %inc351, i64* %elements_used350, align 8
  %239 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data352 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %239, i32 0, i32 4
  %tree353 = bitcast %union.varray_data_tag* %data352 to [1 x %union.tree_node*]*
  %arrayidx354 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree353, i32 0, i64 %238
  store %union.tree_node* %236, %union.tree_node** %arrayidx354, align 8
  br label %do.end.355

do.end.355:                                       ; preds = %if.end.349
  br label %if.end.356

if.end.356:                                       ; preds = %do.end.355, %land.lhs.true.336, %do.body.331
  br label %do.end.357

do.end.357:                                       ; preds = %if.end.356
  br label %do.body.358

do.body.358:                                      ; preds = %do.end.357
  %240 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl360 = bitcast %union.tree_node* %240 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl360, i32 0, i32 11
  %241 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %241, %union.tree_node** %t__359, align 8
  %242 = load %union.tree_node*, %union.tree_node** %t__359, align 8
  %cmp361 = icmp ne %union.tree_node* %242, null
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.383

land.lhs.true.363:                                ; preds = %do.body.358
  %243 = load %union.tree_node*, %union.tree_node** %t__359, align 8
  %244 = bitcast %union.tree_node* %243 to i8*
  %call364 = call i32 @ggc_set_mark(i8* %244)
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.end.383, label %if.then.366

if.then.366:                                      ; preds = %land.lhs.true.363
  br label %do.body.367

do.body.367:                                      ; preds = %if.then.366
  %245 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used368 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %245, i32 0, i32 1
  %246 = load i64, i64* %elements_used368, align 8
  %247 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements369 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %247, i32 0, i32 0
  %248 = load i64, i64* %num_elements369, align 8
  %cmp370 = icmp uge i64 %246, %248
  br i1 %cmp370, label %if.then.372, label %if.end.376

if.then.372:                                      ; preds = %do.body.367
  %249 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %250 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements373 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %250, i32 0, i32 0
  %251 = load i64, i64* %num_elements373, align 8
  %mul374 = mul i64 2, %251
  %call375 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %249, i64 %mul374)
  store %struct.varray_head_tag* %call375, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.372, %do.body.367
  %252 = load %union.tree_node*, %union.tree_node** %t__359, align 8
  %253 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used377 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %253, i32 0, i32 1
  %254 = load i64, i64* %elements_used377, align 8
  %inc378 = add i64 %254, 1
  store i64 %inc378, i64* %elements_used377, align 8
  %255 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data379 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %255, i32 0, i32 4
  %tree380 = bitcast %union.varray_data_tag* %data379 to [1 x %union.tree_node*]*
  %arrayidx381 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree380, i32 0, i64 %254
  store %union.tree_node* %252, %union.tree_node** %arrayidx381, align 8
  br label %do.end.382

do.end.382:                                       ; preds = %if.end.376
  br label %if.end.383

if.end.383:                                       ; preds = %do.end.382, %land.lhs.true.363, %do.body.358
  br label %do.end.384

do.end.384:                                       ; preds = %if.end.383
  br label %do.body.385

do.body.385:                                      ; preds = %do.end.384
  %256 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl387 = bitcast %union.tree_node* %256 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl387, i32 0, i32 12
  %257 = load %union.tree_node*, %union.tree_node** %initial, align 8
  store %union.tree_node* %257, %union.tree_node** %t__386, align 8
  %258 = load %union.tree_node*, %union.tree_node** %t__386, align 8
  %cmp388 = icmp ne %union.tree_node* %258, null
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.410

land.lhs.true.390:                                ; preds = %do.body.385
  %259 = load %union.tree_node*, %union.tree_node** %t__386, align 8
  %260 = bitcast %union.tree_node* %259 to i8*
  %call391 = call i32 @ggc_set_mark(i8* %260)
  %tobool392 = icmp ne i32 %call391, 0
  br i1 %tobool392, label %if.end.410, label %if.then.393

if.then.393:                                      ; preds = %land.lhs.true.390
  br label %do.body.394

do.body.394:                                      ; preds = %if.then.393
  %261 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used395 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %261, i32 0, i32 1
  %262 = load i64, i64* %elements_used395, align 8
  %263 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements396 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %263, i32 0, i32 0
  %264 = load i64, i64* %num_elements396, align 8
  %cmp397 = icmp uge i64 %262, %264
  br i1 %cmp397, label %if.then.399, label %if.end.403

if.then.399:                                      ; preds = %do.body.394
  %265 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %266 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements400 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %266, i32 0, i32 0
  %267 = load i64, i64* %num_elements400, align 8
  %mul401 = mul i64 2, %267
  %call402 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %265, i64 %mul401)
  store %struct.varray_head_tag* %call402, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.399, %do.body.394
  %268 = load %union.tree_node*, %union.tree_node** %t__386, align 8
  %269 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used404 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %269, i32 0, i32 1
  %270 = load i64, i64* %elements_used404, align 8
  %inc405 = add i64 %270, 1
  store i64 %inc405, i64* %elements_used404, align 8
  %271 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data406 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %271, i32 0, i32 4
  %tree407 = bitcast %union.varray_data_tag* %data406 to [1 x %union.tree_node*]*
  %arrayidx408 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree407, i32 0, i64 %270
  store %union.tree_node* %268, %union.tree_node** %arrayidx408, align 8
  br label %do.end.409

do.end.409:                                       ; preds = %if.end.403
  br label %if.end.410

if.end.410:                                       ; preds = %do.end.409, %land.lhs.true.390, %do.body.385
  br label %do.end.411

do.end.411:                                       ; preds = %if.end.410
  br label %do.body.412

do.body.412:                                      ; preds = %do.end.411
  %272 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl414 = bitcast %union.tree_node* %272 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl414, i32 0, i32 13
  %273 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  store %union.tree_node* %273, %union.tree_node** %t__413, align 8
  %274 = load %union.tree_node*, %union.tree_node** %t__413, align 8
  %cmp415 = icmp ne %union.tree_node* %274, null
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.437

land.lhs.true.417:                                ; preds = %do.body.412
  %275 = load %union.tree_node*, %union.tree_node** %t__413, align 8
  %276 = bitcast %union.tree_node* %275 to i8*
  %call418 = call i32 @ggc_set_mark(i8* %276)
  %tobool419 = icmp ne i32 %call418, 0
  br i1 %tobool419, label %if.end.437, label %if.then.420

if.then.420:                                      ; preds = %land.lhs.true.417
  br label %do.body.421

do.body.421:                                      ; preds = %if.then.420
  %277 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used422 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %277, i32 0, i32 1
  %278 = load i64, i64* %elements_used422, align 8
  %279 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements423 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %279, i32 0, i32 0
  %280 = load i64, i64* %num_elements423, align 8
  %cmp424 = icmp uge i64 %278, %280
  br i1 %cmp424, label %if.then.426, label %if.end.430

if.then.426:                                      ; preds = %do.body.421
  %281 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %282 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements427 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %282, i32 0, i32 0
  %283 = load i64, i64* %num_elements427, align 8
  %mul428 = mul i64 2, %283
  %call429 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %281, i64 %mul428)
  store %struct.varray_head_tag* %call429, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.426, %do.body.421
  %284 = load %union.tree_node*, %union.tree_node** %t__413, align 8
  %285 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used431 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %285, i32 0, i32 1
  %286 = load i64, i64* %elements_used431, align 8
  %inc432 = add i64 %286, 1
  store i64 %inc432, i64* %elements_used431, align 8
  %287 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data433 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %287, i32 0, i32 4
  %tree434 = bitcast %union.varray_data_tag* %data433 to [1 x %union.tree_node*]*
  %arrayidx435 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree434, i32 0, i64 %286
  store %union.tree_node* %284, %union.tree_node** %arrayidx435, align 8
  br label %do.end.436

do.end.436:                                       ; preds = %if.end.430
  br label %if.end.437

if.end.437:                                       ; preds = %do.end.436, %land.lhs.true.417, %do.body.412
  br label %do.end.438

do.end.438:                                       ; preds = %if.end.437
  br label %do.body.439

do.body.439:                                      ; preds = %do.end.438
  %288 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl441 = bitcast %union.tree_node* %288 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl441, i32 0, i32 15
  %289 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  store %union.tree_node* %289, %union.tree_node** %t__440, align 8
  %290 = load %union.tree_node*, %union.tree_node** %t__440, align 8
  %cmp442 = icmp ne %union.tree_node* %290, null
  br i1 %cmp442, label %land.lhs.true.444, label %if.end.464

land.lhs.true.444:                                ; preds = %do.body.439
  %291 = load %union.tree_node*, %union.tree_node** %t__440, align 8
  %292 = bitcast %union.tree_node* %291 to i8*
  %call445 = call i32 @ggc_set_mark(i8* %292)
  %tobool446 = icmp ne i32 %call445, 0
  br i1 %tobool446, label %if.end.464, label %if.then.447

if.then.447:                                      ; preds = %land.lhs.true.444
  br label %do.body.448

do.body.448:                                      ; preds = %if.then.447
  %293 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used449 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %293, i32 0, i32 1
  %294 = load i64, i64* %elements_used449, align 8
  %295 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements450 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %295, i32 0, i32 0
  %296 = load i64, i64* %num_elements450, align 8
  %cmp451 = icmp uge i64 %294, %296
  br i1 %cmp451, label %if.then.453, label %if.end.457

if.then.453:                                      ; preds = %do.body.448
  %297 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %298 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements454 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %298, i32 0, i32 0
  %299 = load i64, i64* %num_elements454, align 8
  %mul455 = mul i64 2, %299
  %call456 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %297, i64 %mul455)
  store %struct.varray_head_tag* %call456, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.453, %do.body.448
  %300 = load %union.tree_node*, %union.tree_node** %t__440, align 8
  %301 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used458 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %301, i32 0, i32 1
  %302 = load i64, i64* %elements_used458, align 8
  %inc459 = add i64 %302, 1
  store i64 %inc459, i64* %elements_used458, align 8
  %303 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data460 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %303, i32 0, i32 4
  %tree461 = bitcast %union.varray_data_tag* %data460 to [1 x %union.tree_node*]*
  %arrayidx462 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree461, i32 0, i64 %302
  store %union.tree_node* %300, %union.tree_node** %arrayidx462, align 8
  br label %do.end.463

do.end.463:                                       ; preds = %if.end.457
  br label %if.end.464

if.end.464:                                       ; preds = %do.end.463, %land.lhs.true.444, %do.body.439
  br label %do.end.465

do.end.465:                                       ; preds = %if.end.464
  br label %do.body.466

do.body.466:                                      ; preds = %do.end.465
  %304 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl468 = bitcast %union.tree_node* %304 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl468, i32 0, i32 16
  %305 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  store %union.tree_node* %305, %union.tree_node** %t__467, align 8
  %306 = load %union.tree_node*, %union.tree_node** %t__467, align 8
  %cmp469 = icmp ne %union.tree_node* %306, null
  br i1 %cmp469, label %land.lhs.true.471, label %if.end.491

land.lhs.true.471:                                ; preds = %do.body.466
  %307 = load %union.tree_node*, %union.tree_node** %t__467, align 8
  %308 = bitcast %union.tree_node* %307 to i8*
  %call472 = call i32 @ggc_set_mark(i8* %308)
  %tobool473 = icmp ne i32 %call472, 0
  br i1 %tobool473, label %if.end.491, label %if.then.474

if.then.474:                                      ; preds = %land.lhs.true.471
  br label %do.body.475

do.body.475:                                      ; preds = %if.then.474
  %309 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used476 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %309, i32 0, i32 1
  %310 = load i64, i64* %elements_used476, align 8
  %311 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements477 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %311, i32 0, i32 0
  %312 = load i64, i64* %num_elements477, align 8
  %cmp478 = icmp uge i64 %310, %312
  br i1 %cmp478, label %if.then.480, label %if.end.484

if.then.480:                                      ; preds = %do.body.475
  %313 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %314 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements481 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %314, i32 0, i32 0
  %315 = load i64, i64* %num_elements481, align 8
  %mul482 = mul i64 2, %315
  %call483 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %313, i64 %mul482)
  store %struct.varray_head_tag* %call483, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.480, %do.body.475
  %316 = load %union.tree_node*, %union.tree_node** %t__467, align 8
  %317 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used485 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %317, i32 0, i32 1
  %318 = load i64, i64* %elements_used485, align 8
  %inc486 = add i64 %318, 1
  store i64 %inc486, i64* %elements_used485, align 8
  %319 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data487 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %319, i32 0, i32 4
  %tree488 = bitcast %union.varray_data_tag* %data487 to [1 x %union.tree_node*]*
  %arrayidx489 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree488, i32 0, i64 %318
  store %union.tree_node* %316, %union.tree_node** %arrayidx489, align 8
  br label %do.end.490

do.end.490:                                       ; preds = %if.end.484
  br label %if.end.491

if.end.491:                                       ; preds = %do.end.490, %land.lhs.true.471, %do.body.466
  br label %do.end.492

do.end.492:                                       ; preds = %if.end.491
  %320 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl493 = bitcast %union.tree_node* %320 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl493, i32 0, i32 17
  %321 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp494 = icmp ne %struct.rtx_def* %321, null
  br i1 %cmp494, label %if.then.496, label %if.end.514

if.then.496:                                      ; preds = %do.end.492
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  %322 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl499 = bitcast %union.tree_node* %322 to %struct.tree_decl*
  %rtl500 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl499, i32 0, i32 17
  %323 = load %struct.rtx_def*, %struct.rtx_def** %rtl500, align 8
  %tobool501 = icmp ne %struct.rtx_def* %323, null
  br i1 %tobool501, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.497
  %324 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl502 = bitcast %union.tree_node* %324 to %struct.tree_decl*
  %rtl503 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl502, i32 0, i32 17
  %325 = load %struct.rtx_def*, %struct.rtx_def** %rtl503, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body.497
  %326 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @make_decl_rtl(%union.tree_node* %326, i8* null)
  %327 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl504 = bitcast %union.tree_node* %327 to %struct.tree_decl*
  %rtl505 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl504, i32 0, i32 17
  %328 = load %struct.rtx_def*, %struct.rtx_def** %rtl505, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %325, %cond.true ], [ %328, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %r__498, align 8
  %329 = load %struct.rtx_def*, %struct.rtx_def** %r__498, align 8
  %cmp506 = icmp ne %struct.rtx_def* %329, null
  br i1 %cmp506, label %land.lhs.true.508, label %if.end.512

land.lhs.true.508:                                ; preds = %cond.end
  %330 = load %struct.rtx_def*, %struct.rtx_def** %r__498, align 8
  %331 = bitcast %struct.rtx_def* %330 to i8*
  %call509 = call i32 @ggc_set_mark(i8* %331)
  %tobool510 = icmp ne i32 %call509, 0
  br i1 %tobool510, label %if.end.512, label %if.then.511

if.then.511:                                      ; preds = %land.lhs.true.508
  %332 = load %struct.rtx_def*, %struct.rtx_def** %r__498, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %332)
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.511, %land.lhs.true.508, %cond.end
  br label %do.end.513

do.end.513:                                       ; preds = %if.end.512
  br label %if.end.514

if.end.514:                                       ; preds = %do.end.513, %do.end.492
  br label %do.body.515

do.body.515:                                      ; preds = %if.end.514
  %333 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl517 = bitcast %union.tree_node* %333 to %struct.tree_decl*
  %live_range_rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl517, i32 0, i32 18
  %334 = load %struct.rtx_def*, %struct.rtx_def** %live_range_rtl, align 8
  store %struct.rtx_def* %334, %struct.rtx_def** %r__516, align 8
  %335 = load %struct.rtx_def*, %struct.rtx_def** %r__516, align 8
  %cmp518 = icmp ne %struct.rtx_def* %335, null
  br i1 %cmp518, label %land.lhs.true.520, label %if.end.524

land.lhs.true.520:                                ; preds = %do.body.515
  %336 = load %struct.rtx_def*, %struct.rtx_def** %r__516, align 8
  %337 = bitcast %struct.rtx_def* %336 to i8*
  %call521 = call i32 @ggc_set_mark(i8* %337)
  %tobool522 = icmp ne i32 %call521, 0
  br i1 %tobool522, label %if.end.524, label %if.then.523

if.then.523:                                      ; preds = %land.lhs.true.520
  %338 = load %struct.rtx_def*, %struct.rtx_def** %r__516, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %338)
  br label %if.end.524

if.end.524:                                       ; preds = %if.then.523, %land.lhs.true.520, %do.body.515
  br label %do.end.525

do.end.525:                                       ; preds = %if.end.524
  br label %do.body.526

do.body.526:                                      ; preds = %do.end.525
  %339 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl528 = bitcast %union.tree_node* %339 to %struct.tree_decl*
  %vindex = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl528, i32 0, i32 22
  %340 = load %union.tree_node*, %union.tree_node** %vindex, align 8
  store %union.tree_node* %340, %union.tree_node** %t__527, align 8
  %341 = load %union.tree_node*, %union.tree_node** %t__527, align 8
  %cmp529 = icmp ne %union.tree_node* %341, null
  br i1 %cmp529, label %land.lhs.true.531, label %if.end.551

land.lhs.true.531:                                ; preds = %do.body.526
  %342 = load %union.tree_node*, %union.tree_node** %t__527, align 8
  %343 = bitcast %union.tree_node* %342 to i8*
  %call532 = call i32 @ggc_set_mark(i8* %343)
  %tobool533 = icmp ne i32 %call532, 0
  br i1 %tobool533, label %if.end.551, label %if.then.534

if.then.534:                                      ; preds = %land.lhs.true.531
  br label %do.body.535

do.body.535:                                      ; preds = %if.then.534
  %344 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used536 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %344, i32 0, i32 1
  %345 = load i64, i64* %elements_used536, align 8
  %346 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements537 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %346, i32 0, i32 0
  %347 = load i64, i64* %num_elements537, align 8
  %cmp538 = icmp uge i64 %345, %347
  br i1 %cmp538, label %if.then.540, label %if.end.544

if.then.540:                                      ; preds = %do.body.535
  %348 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %349 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements541 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %349, i32 0, i32 0
  %350 = load i64, i64* %num_elements541, align 8
  %mul542 = mul i64 2, %350
  %call543 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %348, i64 %mul542)
  store %struct.varray_head_tag* %call543, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.544

if.end.544:                                       ; preds = %if.then.540, %do.body.535
  %351 = load %union.tree_node*, %union.tree_node** %t__527, align 8
  %352 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used545 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %352, i32 0, i32 1
  %353 = load i64, i64* %elements_used545, align 8
  %inc546 = add i64 %353, 1
  store i64 %inc546, i64* %elements_used545, align 8
  %354 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data547 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %354, i32 0, i32 4
  %tree548 = bitcast %union.varray_data_tag* %data547 to [1 x %union.tree_node*]*
  %arrayidx549 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree548, i32 0, i64 %353
  store %union.tree_node* %351, %union.tree_node** %arrayidx549, align 8
  br label %do.end.550

do.end.550:                                       ; preds = %if.end.544
  br label %if.end.551

if.end.551:                                       ; preds = %do.end.550, %land.lhs.true.531, %do.body.526
  br label %do.end.552

do.end.552:                                       ; preds = %if.end.551
  %355 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl553 = bitcast %union.tree_node* %355 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl553, i32 0, i32 14
  %356 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp554 = icmp ne %union.tree_node* %356, null
  br i1 %cmp554, label %if.then.556, label %if.end.592

if.then.556:                                      ; preds = %do.end.552
  br label %do.body.557

do.body.557:                                      ; preds = %if.then.556
  %357 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl559 = bitcast %union.tree_node* %357 to %struct.tree_decl*
  %assembler_name560 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl559, i32 0, i32 14
  %358 = load %union.tree_node*, %union.tree_node** %assembler_name560, align 8
  %cmp561 = icmp ne %union.tree_node* %358, null
  br i1 %cmp561, label %cond.true.563, label %cond.false.564

cond.true.563:                                    ; preds = %do.body.557
  br label %cond.end.565

cond.false.564:                                   ; preds = %do.body.557
  %359 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %360 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void %359(%union.tree_node* %360)
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.false.564, %cond.true.563
  %361 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl566 = bitcast %union.tree_node* %361 to %struct.tree_decl*
  %assembler_name567 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl566, i32 0, i32 14
  %362 = load %union.tree_node*, %union.tree_node** %assembler_name567, align 8
  store %union.tree_node* %362, %union.tree_node** %t__558, align 8
  %363 = load %union.tree_node*, %union.tree_node** %t__558, align 8
  %cmp568 = icmp ne %union.tree_node* %363, null
  br i1 %cmp568, label %land.lhs.true.570, label %if.end.590

land.lhs.true.570:                                ; preds = %cond.end.565
  %364 = load %union.tree_node*, %union.tree_node** %t__558, align 8
  %365 = bitcast %union.tree_node* %364 to i8*
  %call571 = call i32 @ggc_set_mark(i8* %365)
  %tobool572 = icmp ne i32 %call571, 0
  br i1 %tobool572, label %if.end.590, label %if.then.573

if.then.573:                                      ; preds = %land.lhs.true.570
  br label %do.body.574

do.body.574:                                      ; preds = %if.then.573
  %366 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used575 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %366, i32 0, i32 1
  %367 = load i64, i64* %elements_used575, align 8
  %368 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements576 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %368, i32 0, i32 0
  %369 = load i64, i64* %num_elements576, align 8
  %cmp577 = icmp uge i64 %367, %369
  br i1 %cmp577, label %if.then.579, label %if.end.583

if.then.579:                                      ; preds = %do.body.574
  %370 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %371 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements580 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %371, i32 0, i32 0
  %372 = load i64, i64* %num_elements580, align 8
  %mul581 = mul i64 2, %372
  %call582 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %370, i64 %mul581)
  store %struct.varray_head_tag* %call582, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.583

if.end.583:                                       ; preds = %if.then.579, %do.body.574
  %373 = load %union.tree_node*, %union.tree_node** %t__558, align 8
  %374 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used584 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %374, i32 0, i32 1
  %375 = load i64, i64* %elements_used584, align 8
  %inc585 = add i64 %375, 1
  store i64 %inc585, i64* %elements_used584, align 8
  %376 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data586 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %376, i32 0, i32 4
  %tree587 = bitcast %union.varray_data_tag* %data586 to [1 x %union.tree_node*]*
  %arrayidx588 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree587, i32 0, i64 %375
  store %union.tree_node* %373, %union.tree_node** %arrayidx588, align 8
  br label %do.end.589

do.end.589:                                       ; preds = %if.end.583
  br label %if.end.590

if.end.590:                                       ; preds = %do.end.589, %land.lhs.true.570, %cond.end.565
  br label %do.end.591

do.end.591:                                       ; preds = %if.end.590
  br label %if.end.592

if.end.592:                                       ; preds = %do.end.591, %do.end.552
  %377 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common593 = bitcast %union.tree_node* %377 to %struct.tree_common*
  %code594 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common593, i32 0, i32 2
  %bf.load595 = load i32, i32* %code594, align 8
  %bf.clear596 = and i32 %bf.load595, 255
  %cmp597 = icmp eq i32 %bf.clear596, 30
  br i1 %cmp597, label %if.then.599, label %if.end.662

if.then.599:                                      ; preds = %if.end.592
  br label %do.body.600

do.body.600:                                      ; preds = %if.then.599
  %378 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl602 = bitcast %union.tree_node* %378 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl602, i32 0, i32 20
  %379 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8
  store %union.tree_node* %379, %union.tree_node** %t__601, align 8
  %380 = load %union.tree_node*, %union.tree_node** %t__601, align 8
  %cmp603 = icmp ne %union.tree_node* %380, null
  br i1 %cmp603, label %land.lhs.true.605, label %if.end.625

land.lhs.true.605:                                ; preds = %do.body.600
  %381 = load %union.tree_node*, %union.tree_node** %t__601, align 8
  %382 = bitcast %union.tree_node* %381 to i8*
  %call606 = call i32 @ggc_set_mark(i8* %382)
  %tobool607 = icmp ne i32 %call606, 0
  br i1 %tobool607, label %if.end.625, label %if.then.608

if.then.608:                                      ; preds = %land.lhs.true.605
  br label %do.body.609

do.body.609:                                      ; preds = %if.then.608
  %383 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used610 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %383, i32 0, i32 1
  %384 = load i64, i64* %elements_used610, align 8
  %385 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements611 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %385, i32 0, i32 0
  %386 = load i64, i64* %num_elements611, align 8
  %cmp612 = icmp uge i64 %384, %386
  br i1 %cmp612, label %if.then.614, label %if.end.618

if.then.614:                                      ; preds = %do.body.609
  %387 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %388 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements615 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %388, i32 0, i32 0
  %389 = load i64, i64* %num_elements615, align 8
  %mul616 = mul i64 2, %389
  %call617 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %387, i64 %mul616)
  store %struct.varray_head_tag* %call617, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.618

if.end.618:                                       ; preds = %if.then.614, %do.body.609
  %390 = load %union.tree_node*, %union.tree_node** %t__601, align 8
  %391 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used619 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %391, i32 0, i32 1
  %392 = load i64, i64* %elements_used619, align 8
  %inc620 = add i64 %392, 1
  store i64 %inc620, i64* %elements_used619, align 8
  %393 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data621 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %393, i32 0, i32 4
  %tree622 = bitcast %union.varray_data_tag* %data621 to [1 x %union.tree_node*]*
  %arrayidx623 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree622, i32 0, i64 %392
  store %union.tree_node* %390, %union.tree_node** %arrayidx623, align 8
  br label %do.end.624

do.end.624:                                       ; preds = %if.end.618
  br label %if.end.625

if.end.625:                                       ; preds = %do.end.624, %land.lhs.true.605, %do.body.600
  br label %do.end.626

do.end.626:                                       ; preds = %if.end.625
  br label %do.body.627

do.body.627:                                      ; preds = %do.end.626
  %394 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl629 = bitcast %union.tree_node* %394 to %struct.tree_decl*
  %inlined_fns = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl629, i32 0, i32 21
  %395 = load %union.tree_node*, %union.tree_node** %inlined_fns, align 8
  store %union.tree_node* %395, %union.tree_node** %t__628, align 8
  %396 = load %union.tree_node*, %union.tree_node** %t__628, align 8
  %cmp630 = icmp ne %union.tree_node* %396, null
  br i1 %cmp630, label %land.lhs.true.632, label %if.end.652

land.lhs.true.632:                                ; preds = %do.body.627
  %397 = load %union.tree_node*, %union.tree_node** %t__628, align 8
  %398 = bitcast %union.tree_node* %397 to i8*
  %call633 = call i32 @ggc_set_mark(i8* %398)
  %tobool634 = icmp ne i32 %call633, 0
  br i1 %tobool634, label %if.end.652, label %if.then.635

if.then.635:                                      ; preds = %land.lhs.true.632
  br label %do.body.636

do.body.636:                                      ; preds = %if.then.635
  %399 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used637 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %399, i32 0, i32 1
  %400 = load i64, i64* %elements_used637, align 8
  %401 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements638 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %401, i32 0, i32 0
  %402 = load i64, i64* %num_elements638, align 8
  %cmp639 = icmp uge i64 %400, %402
  br i1 %cmp639, label %if.then.641, label %if.end.645

if.then.641:                                      ; preds = %do.body.636
  %403 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %404 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements642 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %404, i32 0, i32 0
  %405 = load i64, i64* %num_elements642, align 8
  %mul643 = mul i64 2, %405
  %call644 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %403, i64 %mul643)
  store %struct.varray_head_tag* %call644, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.641, %do.body.636
  %406 = load %union.tree_node*, %union.tree_node** %t__628, align 8
  %407 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used646 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %407, i32 0, i32 1
  %408 = load i64, i64* %elements_used646, align 8
  %inc647 = add i64 %408, 1
  store i64 %inc647, i64* %elements_used646, align 8
  %409 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data648 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %409, i32 0, i32 4
  %tree649 = bitcast %union.varray_data_tag* %data648 to [1 x %union.tree_node*]*
  %arrayidx650 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree649, i32 0, i64 %408
  store %union.tree_node* %406, %union.tree_node** %arrayidx650, align 8
  br label %do.end.651

do.end.651:                                       ; preds = %if.end.645
  br label %if.end.652

if.end.652:                                       ; preds = %do.end.651, %land.lhs.true.632, %do.body.627
  br label %do.end.653

do.end.653:                                       ; preds = %if.end.652
  %410 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl654 = bitcast %union.tree_node* %410 to %struct.tree_decl*
  %u2655 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl654, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2655 to %struct.function**
  %411 = load %struct.function*, %struct.function** %f, align 8
  %tobool656 = icmp ne %struct.function* %411, null
  br i1 %tobool656, label %if.then.657, label %if.end.661

if.then.657:                                      ; preds = %do.end.653
  %412 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl658 = bitcast %union.tree_node* %412 to %struct.tree_decl*
  %u2659 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl658, i32 0, i32 19
  %f660 = bitcast %union.anon.1* %u2659 to %struct.function**
  %413 = load %struct.function*, %struct.function** %f660, align 8
  call void @ggc_mark_struct_function(%struct.function* %413)
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.657, %do.end.653
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.661, %if.end.592
  %414 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @lang_mark_tree(%union.tree_node* %414)
  br label %sw.epilog.1207

sw.bb.663:                                        ; preds = %sw.epilog
  br label %do.body.664

do.body.664:                                      ; preds = %sw.bb.663
  %415 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type666 = bitcast %union.tree_node* %415 to %struct.tree_type*
  %size667 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type666, i32 0, i32 2
  %416 = load %union.tree_node*, %union.tree_node** %size667, align 8
  store %union.tree_node* %416, %union.tree_node** %t__665, align 8
  %417 = load %union.tree_node*, %union.tree_node** %t__665, align 8
  %cmp668 = icmp ne %union.tree_node* %417, null
  br i1 %cmp668, label %land.lhs.true.670, label %if.end.690

land.lhs.true.670:                                ; preds = %do.body.664
  %418 = load %union.tree_node*, %union.tree_node** %t__665, align 8
  %419 = bitcast %union.tree_node* %418 to i8*
  %call671 = call i32 @ggc_set_mark(i8* %419)
  %tobool672 = icmp ne i32 %call671, 0
  br i1 %tobool672, label %if.end.690, label %if.then.673

if.then.673:                                      ; preds = %land.lhs.true.670
  br label %do.body.674

do.body.674:                                      ; preds = %if.then.673
  %420 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used675 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %420, i32 0, i32 1
  %421 = load i64, i64* %elements_used675, align 8
  %422 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements676 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %422, i32 0, i32 0
  %423 = load i64, i64* %num_elements676, align 8
  %cmp677 = icmp uge i64 %421, %423
  br i1 %cmp677, label %if.then.679, label %if.end.683

if.then.679:                                      ; preds = %do.body.674
  %424 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %425 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements680 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %425, i32 0, i32 0
  %426 = load i64, i64* %num_elements680, align 8
  %mul681 = mul i64 2, %426
  %call682 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %424, i64 %mul681)
  store %struct.varray_head_tag* %call682, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.683

if.end.683:                                       ; preds = %if.then.679, %do.body.674
  %427 = load %union.tree_node*, %union.tree_node** %t__665, align 8
  %428 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used684 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %428, i32 0, i32 1
  %429 = load i64, i64* %elements_used684, align 8
  %inc685 = add i64 %429, 1
  store i64 %inc685, i64* %elements_used684, align 8
  %430 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data686 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %430, i32 0, i32 4
  %tree687 = bitcast %union.varray_data_tag* %data686 to [1 x %union.tree_node*]*
  %arrayidx688 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree687, i32 0, i64 %429
  store %union.tree_node* %427, %union.tree_node** %arrayidx688, align 8
  br label %do.end.689

do.end.689:                                       ; preds = %if.end.683
  br label %if.end.690

if.end.690:                                       ; preds = %do.end.689, %land.lhs.true.670, %do.body.664
  br label %do.end.691

do.end.691:                                       ; preds = %if.end.690
  br label %do.body.692

do.body.692:                                      ; preds = %do.end.691
  %431 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type694 = bitcast %union.tree_node* %431 to %struct.tree_type*
  %size_unit695 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type694, i32 0, i32 3
  %432 = load %union.tree_node*, %union.tree_node** %size_unit695, align 8
  store %union.tree_node* %432, %union.tree_node** %t__693, align 8
  %433 = load %union.tree_node*, %union.tree_node** %t__693, align 8
  %cmp696 = icmp ne %union.tree_node* %433, null
  br i1 %cmp696, label %land.lhs.true.698, label %if.end.718

land.lhs.true.698:                                ; preds = %do.body.692
  %434 = load %union.tree_node*, %union.tree_node** %t__693, align 8
  %435 = bitcast %union.tree_node* %434 to i8*
  %call699 = call i32 @ggc_set_mark(i8* %435)
  %tobool700 = icmp ne i32 %call699, 0
  br i1 %tobool700, label %if.end.718, label %if.then.701

if.then.701:                                      ; preds = %land.lhs.true.698
  br label %do.body.702

do.body.702:                                      ; preds = %if.then.701
  %436 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used703 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %436, i32 0, i32 1
  %437 = load i64, i64* %elements_used703, align 8
  %438 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements704 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %438, i32 0, i32 0
  %439 = load i64, i64* %num_elements704, align 8
  %cmp705 = icmp uge i64 %437, %439
  br i1 %cmp705, label %if.then.707, label %if.end.711

if.then.707:                                      ; preds = %do.body.702
  %440 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %441 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements708 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %441, i32 0, i32 0
  %442 = load i64, i64* %num_elements708, align 8
  %mul709 = mul i64 2, %442
  %call710 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %440, i64 %mul709)
  store %struct.varray_head_tag* %call710, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.707, %do.body.702
  %443 = load %union.tree_node*, %union.tree_node** %t__693, align 8
  %444 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used712 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %444, i32 0, i32 1
  %445 = load i64, i64* %elements_used712, align 8
  %inc713 = add i64 %445, 1
  store i64 %inc713, i64* %elements_used712, align 8
  %446 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data714 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %446, i32 0, i32 4
  %tree715 = bitcast %union.varray_data_tag* %data714 to [1 x %union.tree_node*]*
  %arrayidx716 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree715, i32 0, i64 %445
  store %union.tree_node* %443, %union.tree_node** %arrayidx716, align 8
  br label %do.end.717

do.end.717:                                       ; preds = %if.end.711
  br label %if.end.718

if.end.718:                                       ; preds = %do.end.717, %land.lhs.true.698, %do.body.692
  br label %do.end.719

do.end.719:                                       ; preds = %if.end.718
  br label %do.body.720

do.body.720:                                      ; preds = %do.end.719
  %447 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type722 = bitcast %union.tree_node* %447 to %struct.tree_type*
  %attributes723 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type722, i32 0, i32 4
  %448 = load %union.tree_node*, %union.tree_node** %attributes723, align 8
  store %union.tree_node* %448, %union.tree_node** %t__721, align 8
  %449 = load %union.tree_node*, %union.tree_node** %t__721, align 8
  %cmp724 = icmp ne %union.tree_node* %449, null
  br i1 %cmp724, label %land.lhs.true.726, label %if.end.746

land.lhs.true.726:                                ; preds = %do.body.720
  %450 = load %union.tree_node*, %union.tree_node** %t__721, align 8
  %451 = bitcast %union.tree_node* %450 to i8*
  %call727 = call i32 @ggc_set_mark(i8* %451)
  %tobool728 = icmp ne i32 %call727, 0
  br i1 %tobool728, label %if.end.746, label %if.then.729

if.then.729:                                      ; preds = %land.lhs.true.726
  br label %do.body.730

do.body.730:                                      ; preds = %if.then.729
  %452 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used731 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %452, i32 0, i32 1
  %453 = load i64, i64* %elements_used731, align 8
  %454 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements732 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %454, i32 0, i32 0
  %455 = load i64, i64* %num_elements732, align 8
  %cmp733 = icmp uge i64 %453, %455
  br i1 %cmp733, label %if.then.735, label %if.end.739

if.then.735:                                      ; preds = %do.body.730
  %456 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %457 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements736 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %457, i32 0, i32 0
  %458 = load i64, i64* %num_elements736, align 8
  %mul737 = mul i64 2, %458
  %call738 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %456, i64 %mul737)
  store %struct.varray_head_tag* %call738, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.739

if.end.739:                                       ; preds = %if.then.735, %do.body.730
  %459 = load %union.tree_node*, %union.tree_node** %t__721, align 8
  %460 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used740 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %460, i32 0, i32 1
  %461 = load i64, i64* %elements_used740, align 8
  %inc741 = add i64 %461, 1
  store i64 %inc741, i64* %elements_used740, align 8
  %462 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data742 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %462, i32 0, i32 4
  %tree743 = bitcast %union.varray_data_tag* %data742 to [1 x %union.tree_node*]*
  %arrayidx744 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree743, i32 0, i64 %461
  store %union.tree_node* %459, %union.tree_node** %arrayidx744, align 8
  br label %do.end.745

do.end.745:                                       ; preds = %if.end.739
  br label %if.end.746

if.end.746:                                       ; preds = %do.end.745, %land.lhs.true.726, %do.body.720
  br label %do.end.747

do.end.747:                                       ; preds = %if.end.746
  br label %do.body.748

do.body.748:                                      ; preds = %do.end.747
  %463 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type750 = bitcast %union.tree_node* %463 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type750, i32 0, i32 1
  %464 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %464, %union.tree_node** %t__749, align 8
  %465 = load %union.tree_node*, %union.tree_node** %t__749, align 8
  %cmp751 = icmp ne %union.tree_node* %465, null
  br i1 %cmp751, label %land.lhs.true.753, label %if.end.773

land.lhs.true.753:                                ; preds = %do.body.748
  %466 = load %union.tree_node*, %union.tree_node** %t__749, align 8
  %467 = bitcast %union.tree_node* %466 to i8*
  %call754 = call i32 @ggc_set_mark(i8* %467)
  %tobool755 = icmp ne i32 %call754, 0
  br i1 %tobool755, label %if.end.773, label %if.then.756

if.then.756:                                      ; preds = %land.lhs.true.753
  br label %do.body.757

do.body.757:                                      ; preds = %if.then.756
  %468 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used758 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %468, i32 0, i32 1
  %469 = load i64, i64* %elements_used758, align 8
  %470 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements759 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %470, i32 0, i32 0
  %471 = load i64, i64* %num_elements759, align 8
  %cmp760 = icmp uge i64 %469, %471
  br i1 %cmp760, label %if.then.762, label %if.end.766

if.then.762:                                      ; preds = %do.body.757
  %472 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %473 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements763 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %473, i32 0, i32 0
  %474 = load i64, i64* %num_elements763, align 8
  %mul764 = mul i64 2, %474
  %call765 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %472, i64 %mul764)
  store %struct.varray_head_tag* %call765, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.766

if.end.766:                                       ; preds = %if.then.762, %do.body.757
  %475 = load %union.tree_node*, %union.tree_node** %t__749, align 8
  %476 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used767 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %476, i32 0, i32 1
  %477 = load i64, i64* %elements_used767, align 8
  %inc768 = add i64 %477, 1
  store i64 %inc768, i64* %elements_used767, align 8
  %478 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data769 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %478, i32 0, i32 4
  %tree770 = bitcast %union.varray_data_tag* %data769 to [1 x %union.tree_node*]*
  %arrayidx771 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree770, i32 0, i64 %477
  store %union.tree_node* %475, %union.tree_node** %arrayidx771, align 8
  br label %do.end.772

do.end.772:                                       ; preds = %if.end.766
  br label %if.end.773

if.end.773:                                       ; preds = %do.end.772, %land.lhs.true.753, %do.body.748
  br label %do.end.774

do.end.774:                                       ; preds = %if.end.773
  br label %do.body.775

do.body.775:                                      ; preds = %do.end.774
  %479 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type777 = bitcast %union.tree_node* %479 to %struct.tree_type*
  %pointer_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type777, i32 0, i32 8
  %480 = load %union.tree_node*, %union.tree_node** %pointer_to, align 8
  store %union.tree_node* %480, %union.tree_node** %t__776, align 8
  %481 = load %union.tree_node*, %union.tree_node** %t__776, align 8
  %cmp778 = icmp ne %union.tree_node* %481, null
  br i1 %cmp778, label %land.lhs.true.780, label %if.end.800

land.lhs.true.780:                                ; preds = %do.body.775
  %482 = load %union.tree_node*, %union.tree_node** %t__776, align 8
  %483 = bitcast %union.tree_node* %482 to i8*
  %call781 = call i32 @ggc_set_mark(i8* %483)
  %tobool782 = icmp ne i32 %call781, 0
  br i1 %tobool782, label %if.end.800, label %if.then.783

if.then.783:                                      ; preds = %land.lhs.true.780
  br label %do.body.784

do.body.784:                                      ; preds = %if.then.783
  %484 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used785 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %484, i32 0, i32 1
  %485 = load i64, i64* %elements_used785, align 8
  %486 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements786 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %486, i32 0, i32 0
  %487 = load i64, i64* %num_elements786, align 8
  %cmp787 = icmp uge i64 %485, %487
  br i1 %cmp787, label %if.then.789, label %if.end.793

if.then.789:                                      ; preds = %do.body.784
  %488 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %489 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements790 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %489, i32 0, i32 0
  %490 = load i64, i64* %num_elements790, align 8
  %mul791 = mul i64 2, %490
  %call792 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %488, i64 %mul791)
  store %struct.varray_head_tag* %call792, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.793

if.end.793:                                       ; preds = %if.then.789, %do.body.784
  %491 = load %union.tree_node*, %union.tree_node** %t__776, align 8
  %492 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used794 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %492, i32 0, i32 1
  %493 = load i64, i64* %elements_used794, align 8
  %inc795 = add i64 %493, 1
  store i64 %inc795, i64* %elements_used794, align 8
  %494 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data796 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %494, i32 0, i32 4
  %tree797 = bitcast %union.varray_data_tag* %data796 to [1 x %union.tree_node*]*
  %arrayidx798 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree797, i32 0, i64 %493
  store %union.tree_node* %491, %union.tree_node** %arrayidx798, align 8
  br label %do.end.799

do.end.799:                                       ; preds = %if.end.793
  br label %if.end.800

if.end.800:                                       ; preds = %do.end.799, %land.lhs.true.780, %do.body.775
  br label %do.end.801

do.end.801:                                       ; preds = %if.end.800
  br label %do.body.802

do.body.802:                                      ; preds = %do.end.801
  %495 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type804 = bitcast %union.tree_node* %495 to %struct.tree_type*
  %reference_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type804, i32 0, i32 9
  %496 = load %union.tree_node*, %union.tree_node** %reference_to, align 8
  store %union.tree_node* %496, %union.tree_node** %t__803, align 8
  %497 = load %union.tree_node*, %union.tree_node** %t__803, align 8
  %cmp805 = icmp ne %union.tree_node* %497, null
  br i1 %cmp805, label %land.lhs.true.807, label %if.end.827

land.lhs.true.807:                                ; preds = %do.body.802
  %498 = load %union.tree_node*, %union.tree_node** %t__803, align 8
  %499 = bitcast %union.tree_node* %498 to i8*
  %call808 = call i32 @ggc_set_mark(i8* %499)
  %tobool809 = icmp ne i32 %call808, 0
  br i1 %tobool809, label %if.end.827, label %if.then.810

if.then.810:                                      ; preds = %land.lhs.true.807
  br label %do.body.811

do.body.811:                                      ; preds = %if.then.810
  %500 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used812 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %500, i32 0, i32 1
  %501 = load i64, i64* %elements_used812, align 8
  %502 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements813 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %502, i32 0, i32 0
  %503 = load i64, i64* %num_elements813, align 8
  %cmp814 = icmp uge i64 %501, %503
  br i1 %cmp814, label %if.then.816, label %if.end.820

if.then.816:                                      ; preds = %do.body.811
  %504 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %505 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements817 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %505, i32 0, i32 0
  %506 = load i64, i64* %num_elements817, align 8
  %mul818 = mul i64 2, %506
  %call819 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %504, i64 %mul818)
  store %struct.varray_head_tag* %call819, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.820

if.end.820:                                       ; preds = %if.then.816, %do.body.811
  %507 = load %union.tree_node*, %union.tree_node** %t__803, align 8
  %508 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used821 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %508, i32 0, i32 1
  %509 = load i64, i64* %elements_used821, align 8
  %inc822 = add i64 %509, 1
  store i64 %inc822, i64* %elements_used821, align 8
  %510 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data823 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %510, i32 0, i32 4
  %tree824 = bitcast %union.varray_data_tag* %data823 to [1 x %union.tree_node*]*
  %arrayidx825 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree824, i32 0, i64 %509
  store %union.tree_node* %507, %union.tree_node** %arrayidx825, align 8
  br label %do.end.826

do.end.826:                                       ; preds = %if.end.820
  br label %if.end.827

if.end.827:                                       ; preds = %do.end.826, %land.lhs.true.807, %do.body.802
  br label %do.end.828

do.end.828:                                       ; preds = %if.end.827
  br label %do.body.829

do.body.829:                                      ; preds = %do.end.828
  %511 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type831 = bitcast %union.tree_node* %511 to %struct.tree_type*
  %name832 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type831, i32 0, i32 11
  %512 = load %union.tree_node*, %union.tree_node** %name832, align 8
  store %union.tree_node* %512, %union.tree_node** %t__830, align 8
  %513 = load %union.tree_node*, %union.tree_node** %t__830, align 8
  %cmp833 = icmp ne %union.tree_node* %513, null
  br i1 %cmp833, label %land.lhs.true.835, label %if.end.855

land.lhs.true.835:                                ; preds = %do.body.829
  %514 = load %union.tree_node*, %union.tree_node** %t__830, align 8
  %515 = bitcast %union.tree_node* %514 to i8*
  %call836 = call i32 @ggc_set_mark(i8* %515)
  %tobool837 = icmp ne i32 %call836, 0
  br i1 %tobool837, label %if.end.855, label %if.then.838

if.then.838:                                      ; preds = %land.lhs.true.835
  br label %do.body.839

do.body.839:                                      ; preds = %if.then.838
  %516 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used840 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %516, i32 0, i32 1
  %517 = load i64, i64* %elements_used840, align 8
  %518 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements841 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %518, i32 0, i32 0
  %519 = load i64, i64* %num_elements841, align 8
  %cmp842 = icmp uge i64 %517, %519
  br i1 %cmp842, label %if.then.844, label %if.end.848

if.then.844:                                      ; preds = %do.body.839
  %520 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %521 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements845 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %521, i32 0, i32 0
  %522 = load i64, i64* %num_elements845, align 8
  %mul846 = mul i64 2, %522
  %call847 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %520, i64 %mul846)
  store %struct.varray_head_tag* %call847, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.848

if.end.848:                                       ; preds = %if.then.844, %do.body.839
  %523 = load %union.tree_node*, %union.tree_node** %t__830, align 8
  %524 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used849 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %524, i32 0, i32 1
  %525 = load i64, i64* %elements_used849, align 8
  %inc850 = add i64 %525, 1
  store i64 %inc850, i64* %elements_used849, align 8
  %526 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data851 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %526, i32 0, i32 4
  %tree852 = bitcast %union.varray_data_tag* %data851 to [1 x %union.tree_node*]*
  %arrayidx853 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree852, i32 0, i64 %525
  store %union.tree_node* %523, %union.tree_node** %arrayidx853, align 8
  br label %do.end.854

do.end.854:                                       ; preds = %if.end.848
  br label %if.end.855

if.end.855:                                       ; preds = %do.end.854, %land.lhs.true.835, %do.body.829
  br label %do.end.856

do.end.856:                                       ; preds = %if.end.855
  br label %do.body.857

do.body.857:                                      ; preds = %do.end.856
  %527 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type859 = bitcast %union.tree_node* %527 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type859, i32 0, i32 12
  %528 = load %union.tree_node*, %union.tree_node** %minval, align 8
  store %union.tree_node* %528, %union.tree_node** %t__858, align 8
  %529 = load %union.tree_node*, %union.tree_node** %t__858, align 8
  %cmp860 = icmp ne %union.tree_node* %529, null
  br i1 %cmp860, label %land.lhs.true.862, label %if.end.882

land.lhs.true.862:                                ; preds = %do.body.857
  %530 = load %union.tree_node*, %union.tree_node** %t__858, align 8
  %531 = bitcast %union.tree_node* %530 to i8*
  %call863 = call i32 @ggc_set_mark(i8* %531)
  %tobool864 = icmp ne i32 %call863, 0
  br i1 %tobool864, label %if.end.882, label %if.then.865

if.then.865:                                      ; preds = %land.lhs.true.862
  br label %do.body.866

do.body.866:                                      ; preds = %if.then.865
  %532 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used867 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %532, i32 0, i32 1
  %533 = load i64, i64* %elements_used867, align 8
  %534 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements868 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %534, i32 0, i32 0
  %535 = load i64, i64* %num_elements868, align 8
  %cmp869 = icmp uge i64 %533, %535
  br i1 %cmp869, label %if.then.871, label %if.end.875

if.then.871:                                      ; preds = %do.body.866
  %536 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %537 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements872 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %537, i32 0, i32 0
  %538 = load i64, i64* %num_elements872, align 8
  %mul873 = mul i64 2, %538
  %call874 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %536, i64 %mul873)
  store %struct.varray_head_tag* %call874, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.875

if.end.875:                                       ; preds = %if.then.871, %do.body.866
  %539 = load %union.tree_node*, %union.tree_node** %t__858, align 8
  %540 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used876 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %540, i32 0, i32 1
  %541 = load i64, i64* %elements_used876, align 8
  %inc877 = add i64 %541, 1
  store i64 %inc877, i64* %elements_used876, align 8
  %542 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data878 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %542, i32 0, i32 4
  %tree879 = bitcast %union.varray_data_tag* %data878 to [1 x %union.tree_node*]*
  %arrayidx880 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree879, i32 0, i64 %541
  store %union.tree_node* %539, %union.tree_node** %arrayidx880, align 8
  br label %do.end.881

do.end.881:                                       ; preds = %if.end.875
  br label %if.end.882

if.end.882:                                       ; preds = %do.end.881, %land.lhs.true.862, %do.body.857
  br label %do.end.883

do.end.883:                                       ; preds = %if.end.882
  br label %do.body.884

do.body.884:                                      ; preds = %do.end.883
  %543 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type886 = bitcast %union.tree_node* %543 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type886, i32 0, i32 13
  %544 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  store %union.tree_node* %544, %union.tree_node** %t__885, align 8
  %545 = load %union.tree_node*, %union.tree_node** %t__885, align 8
  %cmp887 = icmp ne %union.tree_node* %545, null
  br i1 %cmp887, label %land.lhs.true.889, label %if.end.909

land.lhs.true.889:                                ; preds = %do.body.884
  %546 = load %union.tree_node*, %union.tree_node** %t__885, align 8
  %547 = bitcast %union.tree_node* %546 to i8*
  %call890 = call i32 @ggc_set_mark(i8* %547)
  %tobool891 = icmp ne i32 %call890, 0
  br i1 %tobool891, label %if.end.909, label %if.then.892

if.then.892:                                      ; preds = %land.lhs.true.889
  br label %do.body.893

do.body.893:                                      ; preds = %if.then.892
  %548 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used894 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %548, i32 0, i32 1
  %549 = load i64, i64* %elements_used894, align 8
  %550 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements895 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %550, i32 0, i32 0
  %551 = load i64, i64* %num_elements895, align 8
  %cmp896 = icmp uge i64 %549, %551
  br i1 %cmp896, label %if.then.898, label %if.end.902

if.then.898:                                      ; preds = %do.body.893
  %552 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %553 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements899 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %553, i32 0, i32 0
  %554 = load i64, i64* %num_elements899, align 8
  %mul900 = mul i64 2, %554
  %call901 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %552, i64 %mul900)
  store %struct.varray_head_tag* %call901, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.902

if.end.902:                                       ; preds = %if.then.898, %do.body.893
  %555 = load %union.tree_node*, %union.tree_node** %t__885, align 8
  %556 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used903 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %556, i32 0, i32 1
  %557 = load i64, i64* %elements_used903, align 8
  %inc904 = add i64 %557, 1
  store i64 %inc904, i64* %elements_used903, align 8
  %558 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data905 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %558, i32 0, i32 4
  %tree906 = bitcast %union.varray_data_tag* %data905 to [1 x %union.tree_node*]*
  %arrayidx907 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree906, i32 0, i64 %557
  store %union.tree_node* %555, %union.tree_node** %arrayidx907, align 8
  br label %do.end.908

do.end.908:                                       ; preds = %if.end.902
  br label %if.end.909

if.end.909:                                       ; preds = %do.end.908, %land.lhs.true.889, %do.body.884
  br label %do.end.910

do.end.910:                                       ; preds = %if.end.909
  br label %do.body.911

do.body.911:                                      ; preds = %do.end.910
  %559 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type913 = bitcast %union.tree_node* %559 to %struct.tree_type*
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type913, i32 0, i32 14
  %560 = load %union.tree_node*, %union.tree_node** %next_variant, align 8
  store %union.tree_node* %560, %union.tree_node** %t__912, align 8
  %561 = load %union.tree_node*, %union.tree_node** %t__912, align 8
  %cmp914 = icmp ne %union.tree_node* %561, null
  br i1 %cmp914, label %land.lhs.true.916, label %if.end.936

land.lhs.true.916:                                ; preds = %do.body.911
  %562 = load %union.tree_node*, %union.tree_node** %t__912, align 8
  %563 = bitcast %union.tree_node* %562 to i8*
  %call917 = call i32 @ggc_set_mark(i8* %563)
  %tobool918 = icmp ne i32 %call917, 0
  br i1 %tobool918, label %if.end.936, label %if.then.919

if.then.919:                                      ; preds = %land.lhs.true.916
  br label %do.body.920

do.body.920:                                      ; preds = %if.then.919
  %564 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used921 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %564, i32 0, i32 1
  %565 = load i64, i64* %elements_used921, align 8
  %566 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements922 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %566, i32 0, i32 0
  %567 = load i64, i64* %num_elements922, align 8
  %cmp923 = icmp uge i64 %565, %567
  br i1 %cmp923, label %if.then.925, label %if.end.929

if.then.925:                                      ; preds = %do.body.920
  %568 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %569 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements926 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %569, i32 0, i32 0
  %570 = load i64, i64* %num_elements926, align 8
  %mul927 = mul i64 2, %570
  %call928 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %568, i64 %mul927)
  store %struct.varray_head_tag* %call928, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.925, %do.body.920
  %571 = load %union.tree_node*, %union.tree_node** %t__912, align 8
  %572 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used930 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %572, i32 0, i32 1
  %573 = load i64, i64* %elements_used930, align 8
  %inc931 = add i64 %573, 1
  store i64 %inc931, i64* %elements_used930, align 8
  %574 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data932 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %574, i32 0, i32 4
  %tree933 = bitcast %union.varray_data_tag* %data932 to [1 x %union.tree_node*]*
  %arrayidx934 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree933, i32 0, i64 %573
  store %union.tree_node* %571, %union.tree_node** %arrayidx934, align 8
  br label %do.end.935

do.end.935:                                       ; preds = %if.end.929
  br label %if.end.936

if.end.936:                                       ; preds = %do.end.935, %land.lhs.true.916, %do.body.911
  br label %do.end.937

do.end.937:                                       ; preds = %if.end.936
  br label %do.body.938

do.body.938:                                      ; preds = %do.end.937
  %575 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type940 = bitcast %union.tree_node* %575 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type940, i32 0, i32 15
  %576 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %576, %union.tree_node** %t__939, align 8
  %577 = load %union.tree_node*, %union.tree_node** %t__939, align 8
  %cmp941 = icmp ne %union.tree_node* %577, null
  br i1 %cmp941, label %land.lhs.true.943, label %if.end.963

land.lhs.true.943:                                ; preds = %do.body.938
  %578 = load %union.tree_node*, %union.tree_node** %t__939, align 8
  %579 = bitcast %union.tree_node* %578 to i8*
  %call944 = call i32 @ggc_set_mark(i8* %579)
  %tobool945 = icmp ne i32 %call944, 0
  br i1 %tobool945, label %if.end.963, label %if.then.946

if.then.946:                                      ; preds = %land.lhs.true.943
  br label %do.body.947

do.body.947:                                      ; preds = %if.then.946
  %580 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used948 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %580, i32 0, i32 1
  %581 = load i64, i64* %elements_used948, align 8
  %582 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements949 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %582, i32 0, i32 0
  %583 = load i64, i64* %num_elements949, align 8
  %cmp950 = icmp uge i64 %581, %583
  br i1 %cmp950, label %if.then.952, label %if.end.956

if.then.952:                                      ; preds = %do.body.947
  %584 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %585 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements953 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %585, i32 0, i32 0
  %586 = load i64, i64* %num_elements953, align 8
  %mul954 = mul i64 2, %586
  %call955 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %584, i64 %mul954)
  store %struct.varray_head_tag* %call955, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.952, %do.body.947
  %587 = load %union.tree_node*, %union.tree_node** %t__939, align 8
  %588 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used957 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %588, i32 0, i32 1
  %589 = load i64, i64* %elements_used957, align 8
  %inc958 = add i64 %589, 1
  store i64 %inc958, i64* %elements_used957, align 8
  %590 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data959 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %590, i32 0, i32 4
  %tree960 = bitcast %union.varray_data_tag* %data959 to [1 x %union.tree_node*]*
  %arrayidx961 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree960, i32 0, i64 %589
  store %union.tree_node* %587, %union.tree_node** %arrayidx961, align 8
  br label %do.end.962

do.end.962:                                       ; preds = %if.end.956
  br label %if.end.963

if.end.963:                                       ; preds = %do.end.962, %land.lhs.true.943, %do.body.938
  br label %do.end.964

do.end.964:                                       ; preds = %if.end.963
  br label %do.body.965

do.body.965:                                      ; preds = %do.end.964
  %591 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type967 = bitcast %union.tree_node* %591 to %struct.tree_type*
  %binfo = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type967, i32 0, i32 16
  %592 = load %union.tree_node*, %union.tree_node** %binfo, align 8
  store %union.tree_node* %592, %union.tree_node** %t__966, align 8
  %593 = load %union.tree_node*, %union.tree_node** %t__966, align 8
  %cmp968 = icmp ne %union.tree_node* %593, null
  br i1 %cmp968, label %land.lhs.true.970, label %if.end.990

land.lhs.true.970:                                ; preds = %do.body.965
  %594 = load %union.tree_node*, %union.tree_node** %t__966, align 8
  %595 = bitcast %union.tree_node* %594 to i8*
  %call971 = call i32 @ggc_set_mark(i8* %595)
  %tobool972 = icmp ne i32 %call971, 0
  br i1 %tobool972, label %if.end.990, label %if.then.973

if.then.973:                                      ; preds = %land.lhs.true.970
  br label %do.body.974

do.body.974:                                      ; preds = %if.then.973
  %596 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used975 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %596, i32 0, i32 1
  %597 = load i64, i64* %elements_used975, align 8
  %598 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements976 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %598, i32 0, i32 0
  %599 = load i64, i64* %num_elements976, align 8
  %cmp977 = icmp uge i64 %597, %599
  br i1 %cmp977, label %if.then.979, label %if.end.983

if.then.979:                                      ; preds = %do.body.974
  %600 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %601 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements980 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %601, i32 0, i32 0
  %602 = load i64, i64* %num_elements980, align 8
  %mul981 = mul i64 2, %602
  %call982 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %600, i64 %mul981)
  store %struct.varray_head_tag* %call982, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.983

if.end.983:                                       ; preds = %if.then.979, %do.body.974
  %603 = load %union.tree_node*, %union.tree_node** %t__966, align 8
  %604 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used984 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %604, i32 0, i32 1
  %605 = load i64, i64* %elements_used984, align 8
  %inc985 = add i64 %605, 1
  store i64 %inc985, i64* %elements_used984, align 8
  %606 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data986 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %606, i32 0, i32 4
  %tree987 = bitcast %union.varray_data_tag* %data986 to [1 x %union.tree_node*]*
  %arrayidx988 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree987, i32 0, i64 %605
  store %union.tree_node* %603, %union.tree_node** %arrayidx988, align 8
  br label %do.end.989

do.end.989:                                       ; preds = %if.end.983
  br label %if.end.990

if.end.990:                                       ; preds = %do.end.989, %land.lhs.true.970, %do.body.965
  br label %do.end.991

do.end.991:                                       ; preds = %if.end.990
  br label %do.body.992

do.body.992:                                      ; preds = %do.end.991
  %607 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type994 = bitcast %union.tree_node* %607 to %struct.tree_type*
  %context995 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type994, i32 0, i32 17
  %608 = load %union.tree_node*, %union.tree_node** %context995, align 8
  store %union.tree_node* %608, %union.tree_node** %t__993, align 8
  %609 = load %union.tree_node*, %union.tree_node** %t__993, align 8
  %cmp996 = icmp ne %union.tree_node* %609, null
  br i1 %cmp996, label %land.lhs.true.998, label %if.end.1018

land.lhs.true.998:                                ; preds = %do.body.992
  %610 = load %union.tree_node*, %union.tree_node** %t__993, align 8
  %611 = bitcast %union.tree_node* %610 to i8*
  %call999 = call i32 @ggc_set_mark(i8* %611)
  %tobool1000 = icmp ne i32 %call999, 0
  br i1 %tobool1000, label %if.end.1018, label %if.then.1001

if.then.1001:                                     ; preds = %land.lhs.true.998
  br label %do.body.1002

do.body.1002:                                     ; preds = %if.then.1001
  %612 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1003 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %612, i32 0, i32 1
  %613 = load i64, i64* %elements_used1003, align 8
  %614 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1004 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %614, i32 0, i32 0
  %615 = load i64, i64* %num_elements1004, align 8
  %cmp1005 = icmp uge i64 %613, %615
  br i1 %cmp1005, label %if.then.1007, label %if.end.1011

if.then.1007:                                     ; preds = %do.body.1002
  %616 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %617 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1008 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %617, i32 0, i32 0
  %618 = load i64, i64* %num_elements1008, align 8
  %mul1009 = mul i64 2, %618
  %call1010 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %616, i64 %mul1009)
  store %struct.varray_head_tag* %call1010, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.1011

if.end.1011:                                      ; preds = %if.then.1007, %do.body.1002
  %619 = load %union.tree_node*, %union.tree_node** %t__993, align 8
  %620 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1012 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %620, i32 0, i32 1
  %621 = load i64, i64* %elements_used1012, align 8
  %inc1013 = add i64 %621, 1
  store i64 %inc1013, i64* %elements_used1012, align 8
  %622 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data1014 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %622, i32 0, i32 4
  %tree1015 = bitcast %union.varray_data_tag* %data1014 to [1 x %union.tree_node*]*
  %arrayidx1016 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree1015, i32 0, i64 %621
  store %union.tree_node* %619, %union.tree_node** %arrayidx1016, align 8
  br label %do.end.1017

do.end.1017:                                      ; preds = %if.end.1011
  br label %if.end.1018

if.end.1018:                                      ; preds = %do.end.1017, %land.lhs.true.998, %do.body.992
  br label %do.end.1019

do.end.1019:                                      ; preds = %if.end.1018
  %623 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @lang_mark_tree(%union.tree_node* %623)
  br label %sw.epilog.1207

sw.bb.1020:                                       ; preds = %sw.epilog
  br label %do.body.1021

do.body.1021:                                     ; preds = %sw.bb.1020
  %624 = load %union.tree_node*, %union.tree_node** %t, align 8
  %block = bitcast %union.tree_node* %624 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 2
  %625 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %625, %union.tree_node** %t__1022, align 8
  %626 = load %union.tree_node*, %union.tree_node** %t__1022, align 8
  %cmp1023 = icmp ne %union.tree_node* %626, null
  br i1 %cmp1023, label %land.lhs.true.1025, label %if.end.1045

land.lhs.true.1025:                               ; preds = %do.body.1021
  %627 = load %union.tree_node*, %union.tree_node** %t__1022, align 8
  %628 = bitcast %union.tree_node* %627 to i8*
  %call1026 = call i32 @ggc_set_mark(i8* %628)
  %tobool1027 = icmp ne i32 %call1026, 0
  br i1 %tobool1027, label %if.end.1045, label %if.then.1028

if.then.1028:                                     ; preds = %land.lhs.true.1025
  br label %do.body.1029

do.body.1029:                                     ; preds = %if.then.1028
  %629 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1030 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %629, i32 0, i32 1
  %630 = load i64, i64* %elements_used1030, align 8
  %631 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1031 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %631, i32 0, i32 0
  %632 = load i64, i64* %num_elements1031, align 8
  %cmp1032 = icmp uge i64 %630, %632
  br i1 %cmp1032, label %if.then.1034, label %if.end.1038

if.then.1034:                                     ; preds = %do.body.1029
  %633 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %634 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1035 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %634, i32 0, i32 0
  %635 = load i64, i64* %num_elements1035, align 8
  %mul1036 = mul i64 2, %635
  %call1037 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %633, i64 %mul1036)
  store %struct.varray_head_tag* %call1037, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.then.1034, %do.body.1029
  %636 = load %union.tree_node*, %union.tree_node** %t__1022, align 8
  %637 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1039 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %637, i32 0, i32 1
  %638 = load i64, i64* %elements_used1039, align 8
  %inc1040 = add i64 %638, 1
  store i64 %inc1040, i64* %elements_used1039, align 8
  %639 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data1041 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %639, i32 0, i32 4
  %tree1042 = bitcast %union.varray_data_tag* %data1041 to [1 x %union.tree_node*]*
  %arrayidx1043 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree1042, i32 0, i64 %638
  store %union.tree_node* %636, %union.tree_node** %arrayidx1043, align 8
  br label %do.end.1044

do.end.1044:                                      ; preds = %if.end.1038
  br label %if.end.1045

if.end.1045:                                      ; preds = %do.end.1044, %land.lhs.true.1025, %do.body.1021
  br label %do.end.1046

do.end.1046:                                      ; preds = %if.end.1045
  br label %do.body.1047

do.body.1047:                                     ; preds = %do.end.1046
  %640 = load %union.tree_node*, %union.tree_node** %t, align 8
  %block1049 = bitcast %union.tree_node* %640 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1049, i32 0, i32 3
  %641 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  store %union.tree_node* %641, %union.tree_node** %t__1048, align 8
  %642 = load %union.tree_node*, %union.tree_node** %t__1048, align 8
  %cmp1050 = icmp ne %union.tree_node* %642, null
  br i1 %cmp1050, label %land.lhs.true.1052, label %if.end.1072

land.lhs.true.1052:                               ; preds = %do.body.1047
  %643 = load %union.tree_node*, %union.tree_node** %t__1048, align 8
  %644 = bitcast %union.tree_node* %643 to i8*
  %call1053 = call i32 @ggc_set_mark(i8* %644)
  %tobool1054 = icmp ne i32 %call1053, 0
  br i1 %tobool1054, label %if.end.1072, label %if.then.1055

if.then.1055:                                     ; preds = %land.lhs.true.1052
  br label %do.body.1056

do.body.1056:                                     ; preds = %if.then.1055
  %645 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1057 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %645, i32 0, i32 1
  %646 = load i64, i64* %elements_used1057, align 8
  %647 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1058 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %647, i32 0, i32 0
  %648 = load i64, i64* %num_elements1058, align 8
  %cmp1059 = icmp uge i64 %646, %648
  br i1 %cmp1059, label %if.then.1061, label %if.end.1065

if.then.1061:                                     ; preds = %do.body.1056
  %649 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %650 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1062 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %650, i32 0, i32 0
  %651 = load i64, i64* %num_elements1062, align 8
  %mul1063 = mul i64 2, %651
  %call1064 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %649, i64 %mul1063)
  store %struct.varray_head_tag* %call1064, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.then.1061, %do.body.1056
  %652 = load %union.tree_node*, %union.tree_node** %t__1048, align 8
  %653 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1066 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %653, i32 0, i32 1
  %654 = load i64, i64* %elements_used1066, align 8
  %inc1067 = add i64 %654, 1
  store i64 %inc1067, i64* %elements_used1066, align 8
  %655 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data1068 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %655, i32 0, i32 4
  %tree1069 = bitcast %union.varray_data_tag* %data1068 to [1 x %union.tree_node*]*
  %arrayidx1070 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree1069, i32 0, i64 %654
  store %union.tree_node* %652, %union.tree_node** %arrayidx1070, align 8
  br label %do.end.1071

do.end.1071:                                      ; preds = %if.end.1065
  br label %if.end.1072

if.end.1072:                                      ; preds = %do.end.1071, %land.lhs.true.1052, %do.body.1047
  br label %do.end.1073

do.end.1073:                                      ; preds = %if.end.1072
  br label %do.body.1074

do.body.1074:                                     ; preds = %do.end.1073
  %656 = load %union.tree_node*, %union.tree_node** %t, align 8
  %block1076 = bitcast %union.tree_node* %656 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1076, i32 0, i32 4
  %657 = load %union.tree_node*, %union.tree_node** %supercontext, align 8
  store %union.tree_node* %657, %union.tree_node** %t__1075, align 8
  %658 = load %union.tree_node*, %union.tree_node** %t__1075, align 8
  %cmp1077 = icmp ne %union.tree_node* %658, null
  br i1 %cmp1077, label %land.lhs.true.1079, label %if.end.1099

land.lhs.true.1079:                               ; preds = %do.body.1074
  %659 = load %union.tree_node*, %union.tree_node** %t__1075, align 8
  %660 = bitcast %union.tree_node* %659 to i8*
  %call1080 = call i32 @ggc_set_mark(i8* %660)
  %tobool1081 = icmp ne i32 %call1080, 0
  br i1 %tobool1081, label %if.end.1099, label %if.then.1082

if.then.1082:                                     ; preds = %land.lhs.true.1079
  br label %do.body.1083

do.body.1083:                                     ; preds = %if.then.1082
  %661 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1084 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %661, i32 0, i32 1
  %662 = load i64, i64* %elements_used1084, align 8
  %663 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1085 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %663, i32 0, i32 0
  %664 = load i64, i64* %num_elements1085, align 8
  %cmp1086 = icmp uge i64 %662, %664
  br i1 %cmp1086, label %if.then.1088, label %if.end.1092

if.then.1088:                                     ; preds = %do.body.1083
  %665 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %666 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1089 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %666, i32 0, i32 0
  %667 = load i64, i64* %num_elements1089, align 8
  %mul1090 = mul i64 2, %667
  %call1091 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %665, i64 %mul1090)
  store %struct.varray_head_tag* %call1091, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.1092

if.end.1092:                                      ; preds = %if.then.1088, %do.body.1083
  %668 = load %union.tree_node*, %union.tree_node** %t__1075, align 8
  %669 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1093 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %669, i32 0, i32 1
  %670 = load i64, i64* %elements_used1093, align 8
  %inc1094 = add i64 %670, 1
  store i64 %inc1094, i64* %elements_used1093, align 8
  %671 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data1095 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %671, i32 0, i32 4
  %tree1096 = bitcast %union.varray_data_tag* %data1095 to [1 x %union.tree_node*]*
  %arrayidx1097 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree1096, i32 0, i64 %670
  store %union.tree_node* %668, %union.tree_node** %arrayidx1097, align 8
  br label %do.end.1098

do.end.1098:                                      ; preds = %if.end.1092
  br label %if.end.1099

if.end.1099:                                      ; preds = %do.end.1098, %land.lhs.true.1079, %do.body.1074
  br label %do.end.1100

do.end.1100:                                      ; preds = %if.end.1099
  br label %do.body.1101

do.body.1101:                                     ; preds = %do.end.1100
  %672 = load %union.tree_node*, %union.tree_node** %t, align 8
  %block1103 = bitcast %union.tree_node* %672 to %struct.tree_block*
  %abstract_origin1104 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1103, i32 0, i32 5
  %673 = load %union.tree_node*, %union.tree_node** %abstract_origin1104, align 8
  store %union.tree_node* %673, %union.tree_node** %t__1102, align 8
  %674 = load %union.tree_node*, %union.tree_node** %t__1102, align 8
  %cmp1105 = icmp ne %union.tree_node* %674, null
  br i1 %cmp1105, label %land.lhs.true.1107, label %if.end.1127

land.lhs.true.1107:                               ; preds = %do.body.1101
  %675 = load %union.tree_node*, %union.tree_node** %t__1102, align 8
  %676 = bitcast %union.tree_node* %675 to i8*
  %call1108 = call i32 @ggc_set_mark(i8* %676)
  %tobool1109 = icmp ne i32 %call1108, 0
  br i1 %tobool1109, label %if.end.1127, label %if.then.1110

if.then.1110:                                     ; preds = %land.lhs.true.1107
  br label %do.body.1111

do.body.1111:                                     ; preds = %if.then.1110
  %677 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1112 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %677, i32 0, i32 1
  %678 = load i64, i64* %elements_used1112, align 8
  %679 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1113 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %679, i32 0, i32 0
  %680 = load i64, i64* %num_elements1113, align 8
  %cmp1114 = icmp uge i64 %678, %680
  br i1 %cmp1114, label %if.then.1116, label %if.end.1120

if.then.1116:                                     ; preds = %do.body.1111
  %681 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %682 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1117 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %682, i32 0, i32 0
  %683 = load i64, i64* %num_elements1117, align 8
  %mul1118 = mul i64 2, %683
  %call1119 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %681, i64 %mul1118)
  store %struct.varray_head_tag* %call1119, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.1120

if.end.1120:                                      ; preds = %if.then.1116, %do.body.1111
  %684 = load %union.tree_node*, %union.tree_node** %t__1102, align 8
  %685 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1121 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %685, i32 0, i32 1
  %686 = load i64, i64* %elements_used1121, align 8
  %inc1122 = add i64 %686, 1
  store i64 %inc1122, i64* %elements_used1121, align 8
  %687 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data1123 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %687, i32 0, i32 4
  %tree1124 = bitcast %union.varray_data_tag* %data1123 to [1 x %union.tree_node*]*
  %arrayidx1125 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree1124, i32 0, i64 %686
  store %union.tree_node* %684, %union.tree_node** %arrayidx1125, align 8
  br label %do.end.1126

do.end.1126:                                      ; preds = %if.end.1120
  br label %if.end.1127

if.end.1127:                                      ; preds = %do.end.1126, %land.lhs.true.1107, %do.body.1101
  br label %do.end.1128

do.end.1128:                                      ; preds = %if.end.1127
  br label %sw.epilog.1207

sw.bb.1129:                                       ; preds = %sw.epilog
  br label %do.body.1130

do.body.1130:                                     ; preds = %sw.bb.1129
  %688 = load %union.tree_node*, %union.tree_node** %t, align 8
  %real_cst = bitcast %union.tree_node* %688 to %struct.tree_real_cst*
  %rtl1132 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 1
  %689 = load %struct.rtx_def*, %struct.rtx_def** %rtl1132, align 8
  store %struct.rtx_def* %689, %struct.rtx_def** %r__1131, align 8
  %690 = load %struct.rtx_def*, %struct.rtx_def** %r__1131, align 8
  %cmp1133 = icmp ne %struct.rtx_def* %690, null
  br i1 %cmp1133, label %land.lhs.true.1135, label %if.end.1139

land.lhs.true.1135:                               ; preds = %do.body.1130
  %691 = load %struct.rtx_def*, %struct.rtx_def** %r__1131, align 8
  %692 = bitcast %struct.rtx_def* %691 to i8*
  %call1136 = call i32 @ggc_set_mark(i8* %692)
  %tobool1137 = icmp ne i32 %call1136, 0
  br i1 %tobool1137, label %if.end.1139, label %if.then.1138

if.then.1138:                                     ; preds = %land.lhs.true.1135
  %693 = load %struct.rtx_def*, %struct.rtx_def** %r__1131, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %693)
  br label %if.end.1139

if.end.1139:                                      ; preds = %if.then.1138, %land.lhs.true.1135, %do.body.1130
  br label %do.end.1140

do.end.1140:                                      ; preds = %if.end.1139
  br label %sw.epilog.1207

sw.bb.1141:                                       ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %694 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common1143 = bitcast %union.tree_node* %694 to %struct.tree_common*
  %code1144 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1143, i32 0, i32 2
  %bf.load1145 = load i32, i32* %code1144, align 8
  %bf.clear1146 = and i32 %bf.load1145, 255
  %idxprom1147 = sext i32 %bf.clear1146 to i64
  %arrayidx1148 = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom1147
  %695 = load i32, i32* %arrayidx1148, align 4
  store i32 %695, i32* %i1142, align 4
  %696 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common1149 = bitcast %union.tree_node* %696 to %struct.tree_common*
  %code1150 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1149, i32 0, i32 2
  %bf.load1151 = load i32, i32* %code1150, align 8
  %bf.clear1152 = and i32 %bf.load1151, 255
  %call1153 = call i32 @first_rtl_op(i32 %bf.clear1152)
  store i32 %call1153, i32* %first_rtl, align 4
  br label %while.cond.1154

while.cond.1154:                                  ; preds = %if.end.1204, %sw.bb.1141
  %697 = load i32, i32* %i1142, align 4
  %dec1155 = add nsw i32 %697, -1
  store i32 %dec1155, i32* %i1142, align 4
  %cmp1156 = icmp sge i32 %dec1155, 0
  br i1 %cmp1156, label %while.body.1158, label %while.end.1205

while.body.1158:                                  ; preds = %while.cond.1154
  %698 = load i32, i32* %i1142, align 4
  %699 = load i32, i32* %first_rtl, align 4
  %cmp1159 = icmp sge i32 %698, %699
  br i1 %cmp1159, label %if.then.1161, label %if.else

if.then.1161:                                     ; preds = %while.body.1158
  br label %do.body.1162

do.body.1162:                                     ; preds = %if.then.1161
  %700 = load i32, i32* %i1142, align 4
  %idxprom1164 = sext i32 %700 to i64
  %701 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %701 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx1165 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 %idxprom1164
  %702 = load %union.tree_node*, %union.tree_node** %arrayidx1165, align 8
  %703 = bitcast %union.tree_node* %702 to %struct.rtx_def*
  store %struct.rtx_def* %703, %struct.rtx_def** %r__1163, align 8
  %704 = load %struct.rtx_def*, %struct.rtx_def** %r__1163, align 8
  %cmp1166 = icmp ne %struct.rtx_def* %704, null
  br i1 %cmp1166, label %land.lhs.true.1168, label %if.end.1172

land.lhs.true.1168:                               ; preds = %do.body.1162
  %705 = load %struct.rtx_def*, %struct.rtx_def** %r__1163, align 8
  %706 = bitcast %struct.rtx_def* %705 to i8*
  %call1169 = call i32 @ggc_set_mark(i8* %706)
  %tobool1170 = icmp ne i32 %call1169, 0
  br i1 %tobool1170, label %if.end.1172, label %if.then.1171

if.then.1171:                                     ; preds = %land.lhs.true.1168
  %707 = load %struct.rtx_def*, %struct.rtx_def** %r__1163, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %707)
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.then.1171, %land.lhs.true.1168, %do.body.1162
  br label %do.end.1173

do.end.1173:                                      ; preds = %if.end.1172
  br label %if.end.1204

if.else:                                          ; preds = %while.body.1158
  br label %do.body.1174

do.body.1174:                                     ; preds = %if.else
  %708 = load i32, i32* %i1142, align 4
  %idxprom1176 = sext i32 %708 to i64
  %709 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp1177 = bitcast %union.tree_node* %709 to %struct.tree_exp*
  %operands1178 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1177, i32 0, i32 2
  %arrayidx1179 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1178, i32 0, i64 %idxprom1176
  %710 = load %union.tree_node*, %union.tree_node** %arrayidx1179, align 8
  store %union.tree_node* %710, %union.tree_node** %t__1175, align 8
  %711 = load %union.tree_node*, %union.tree_node** %t__1175, align 8
  %cmp1180 = icmp ne %union.tree_node* %711, null
  br i1 %cmp1180, label %land.lhs.true.1182, label %if.end.1202

land.lhs.true.1182:                               ; preds = %do.body.1174
  %712 = load %union.tree_node*, %union.tree_node** %t__1175, align 8
  %713 = bitcast %union.tree_node* %712 to i8*
  %call1183 = call i32 @ggc_set_mark(i8* %713)
  %tobool1184 = icmp ne i32 %call1183, 0
  br i1 %tobool1184, label %if.end.1202, label %if.then.1185

if.then.1185:                                     ; preds = %land.lhs.true.1182
  br label %do.body.1186

do.body.1186:                                     ; preds = %if.then.1185
  %714 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1187 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %714, i32 0, i32 1
  %715 = load i64, i64* %elements_used1187, align 8
  %716 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1188 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %716, i32 0, i32 0
  %717 = load i64, i64* %num_elements1188, align 8
  %cmp1189 = icmp uge i64 %715, %717
  br i1 %cmp1189, label %if.then.1191, label %if.end.1195

if.then.1191:                                     ; preds = %do.body.1186
  %718 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %719 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements1192 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %719, i32 0, i32 0
  %720 = load i64, i64* %num_elements1192, align 8
  %mul1193 = mul i64 2, %720
  %call1194 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %718, i64 %mul1193)
  store %struct.varray_head_tag* %call1194, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.then.1191, %do.body.1186
  %721 = load %union.tree_node*, %union.tree_node** %t__1175, align 8
  %722 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used1196 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %722, i32 0, i32 1
  %723 = load i64, i64* %elements_used1196, align 8
  %inc1197 = add i64 %723, 1
  store i64 %inc1197, i64* %elements_used1196, align 8
  %724 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data1198 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %724, i32 0, i32 4
  %tree1199 = bitcast %union.varray_data_tag* %data1198 to [1 x %union.tree_node*]*
  %arrayidx1200 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree1199, i32 0, i64 %723
  store %union.tree_node* %721, %union.tree_node** %arrayidx1200, align 8
  br label %do.end.1201

do.end.1201:                                      ; preds = %if.end.1195
  br label %if.end.1202

if.end.1202:                                      ; preds = %do.end.1201, %land.lhs.true.1182, %do.body.1174
  br label %do.end.1203

do.end.1203:                                      ; preds = %if.end.1202
  br label %if.end.1204

if.end.1204:                                      ; preds = %do.end.1203, %do.end.1173
  br label %while.cond.1154

while.end.1205:                                   ; preds = %while.cond.1154
  br label %sw.epilog.1207

sw.bb.1206:                                       ; preds = %sw.epilog
  %725 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @lang_mark_tree(%union.tree_node* %725)
  br label %sw.epilog.1207

sw.epilog.1207:                                   ; preds = %sw.epilog, %sw.bb.1206, %while.end.1205, %do.end.1140, %do.end.1128, %do.end.1019, %if.end.662
  br label %while.cond

while.end.1208:                                   ; preds = %while.cond
  ret void
}

declare void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ggc_htab_delete(i8** %slot, i8* %info) #0 {
entry:
  %slot.addr = alloca i8**, align 8
  %info.addr = alloca i8*, align 8
  %r = alloca %struct.d_htab_root*, align 8
  store i8** %slot, i8*** %slot.addr, align 8
  store i8* %info, i8** %info.addr, align 8
  %0 = load i8*, i8** %info.addr, align 8
  %1 = bitcast i8* %0 to %struct.d_htab_root*
  store %struct.d_htab_root* %1, %struct.d_htab_root** %r, align 8
  %2 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %marked_p = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %2, i32 0, i32 2
  %3 = load i32 (i8*)*, i32 (i8*)** %marked_p, align 8
  %4 = load i8**, i8*** %slot.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %call = call i32 %3(i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %htab = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %6, i32 0, i32 1
  %7 = load %struct.htab*, %struct.htab** %htab, align 8
  %8 = load i8**, i8*** %slot.addr, align 8
  call void @htab_clear_slot(%struct.htab* %7, i8** %8)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %9 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %mark = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %9, i32 0, i32 3
  %10 = load void (i8*)*, void (i8*)** %mark, align 8
  %tobool1 = icmp ne void (i8*)* %10, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %11 = load %struct.d_htab_root*, %struct.d_htab_root** %r, align 8
  %mark3 = getelementptr inbounds %struct.d_htab_root, %struct.d_htab_root* %11, i32 0, i32 3
  %12 = load void (i8*)*, void (i8*)** %mark3, align 8
  %13 = load i8**, i8*** %slot.addr, align 8
  %14 = load i8*, i8** %13, align 8
  call void %12(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @ggc_mark_rtx_children(%struct.rtx_def* %r) #0 {
entry:
  %r.addr = alloca %struct.rtx_def*, align 8
  %i = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %r, %struct.rtx_def** %r.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 37, label %sw.bb
    i32 36, label %sw.bb
    i32 35, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %4 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %cmp = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %6 = bitcast %struct.rtx_def* %5 to i8*
  %call = call i32 @ggc_set_mark(i8* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.cond
  br label %for.end

if.end:                                           ; preds = %land.lhs.true
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %last, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %i, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.9, %for.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp8 = icmp ne %struct.rtx_def* %12, %13
  br i1 %cmp8, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  call void @ggc_mark_rtx_children_1(%struct.rtx_def* %14)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %i, align 8
  br label %for.cond.7

for.end.13:                                       ; preds = %for.cond.7
  br label %sw.default

sw.default:                                       ; preds = %entry, %for.end.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %17 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  call void @ggc_mark_rtx_children_1(%struct.rtx_def* %17)
  ret void
}

declare i32 @ggc_set_mark(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ggc_mark_rtx_children_1(%struct.rtx_def* %r) #0 {
entry:
  %r.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %next_rtx = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %a__ = alloca i8*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %r__20 = alloca %struct.rtx_def*, align 8
  %r__33 = alloca %struct.rtx_def*, align 8
  %r__45 = alloca %struct.rtx_def*, align 8
  %t__ = alloca %union.tree_node*, align 8
  %r__79 = alloca %struct.rtx_def*, align 8
  %r__95 = alloca %struct.rtx_def*, align 8
  %t__108 = alloca %union.tree_node*, align 8
  %exp = alloca %struct.rtx_def*, align 8
  %v__ = alloca %struct.rtvec_def*, align 8
  store %struct.rtx_def* %r, %struct.rtx_def** %r.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %next_rtx, align 8
  %2 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %tobool = icmp ne %struct.ggc_statistics* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %code, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %num_rtxs = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %num_rtxs, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i8*
  %call = call i64 @ggc_get_size(i8* %7)
  %8 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %9, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs, i32 0, i64 %idxprom1
  %10 = load i64, i64* %arrayidx2, align 8
  %add = add i64 %10, %call
  store i64 %add, i64* %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %11 = load i32, i32* %code, align 4
  switch i32 %11, label %sw.default.134 [
    i32 66, label %sw.bb
    i32 33, label %sw.bb.8
    i32 36, label %sw.bb.18
    i32 67, label %sw.bb.31
    i32 70, label %sw.bb.56
    i32 55, label %sw.bb.77
    i32 37, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %sw.bb
  %12 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx4 to %struct.mem_attrs**
  %13 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %14 = bitcast %struct.mem_attrs* %13 to i8*
  store i8* %14, i8** %a__, align 8
  %15 = load i8*, i8** %a__, align 8
  %cmp = icmp ne i8* %15, null
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body.3
  %16 = load i8*, i8** %a__, align 8
  %call6 = call i32 @ggc_set_mark(i8* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body.3
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %sw.epilog.135

sw.bb.8:                                          ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %sw.bb.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %r__, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp12 = icmp ne %struct.rtx_def* %19, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %do.body.9
  %20 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %21 = bitcast %struct.rtx_def* %20 to i8*
  %call13 = call i32 @ggc_set_mark(i8* %21)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %22)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %do.body.9
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %sw.epilog.135

sw.bb.18:                                         ; preds = %if.end
  br label %do.body.19

do.body.19:                                       ; preds = %sw.bb.18
  %23 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 4
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %r__20, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %r__20, align 8
  %cmp24 = icmp ne %struct.rtx_def* %25, null
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.29

land.lhs.true.25:                                 ; preds = %do.body.19
  %26 = load %struct.rtx_def*, %struct.rtx_def** %r__20, align 8
  %27 = bitcast %struct.rtx_def* %26 to i8*
  %call26 = call i32 @ggc_set_mark(i8* %27)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.25
  %28 = load %struct.rtx_def*, %struct.rtx_def** %r__20, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.25, %do.body.19
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %sw.epilog.135

sw.bb.31:                                         ; preds = %if.end
  br label %do.body.32

do.body.32:                                       ; preds = %sw.bb.31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %r__33, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %r__33, align 8
  %cmp37 = icmp ne %struct.rtx_def* %31, null
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %do.body.32
  %32 = load %struct.rtx_def*, %struct.rtx_def** %r__33, align 8
  %33 = bitcast %struct.rtx_def* %32 to i8*
  %call39 = call i32 @ggc_set_mark(i8* %33)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.38
  %34 = load %struct.rtx_def*, %struct.rtx_def** %r__33, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %34)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true.38, %do.body.32
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %35 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %r__45, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %r__45, align 8
  %cmp49 = icmp ne %struct.rtx_def* %37, null
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.54

land.lhs.true.50:                                 ; preds = %do.body.44
  %38 = load %struct.rtx_def*, %struct.rtx_def** %r__45, align 8
  %39 = bitcast %struct.rtx_def* %38 to i8*
  %call51 = call i32 @ggc_set_mark(i8* %39)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.50
  %40 = load %struct.rtx_def*, %struct.rtx_def** %r__45, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %40)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true.50, %do.body.44
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %sw.epilog.135

sw.bb.56:                                         ; preds = %if.end
  br label %do.body.57

do.body.57:                                       ; preds = %sw.bb.56
  %41 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 2
  %rttree = bitcast %union.rtunion_def* %arrayidx59 to %union.tree_node**
  %42 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  store %union.tree_node* %42, %union.tree_node** %t__, align 8
  %43 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp60 = icmp ne %union.tree_node* %43, null
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.75

land.lhs.true.61:                                 ; preds = %do.body.57
  %44 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %45 = bitcast %union.tree_node* %44 to i8*
  %call62 = call i32 @ggc_set_mark(i8* %45)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.75, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.61
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 1
  %47 = load i64, i64* %elements_used, align 8
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 0
  %49 = load i64, i64* %num_elements, align 8
  %cmp66 = icmp uge i64 %47, %49
  br i1 %cmp66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %do.body.65
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements68 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 0
  %52 = load i64, i64* %num_elements68, align 8
  %mul = mul i64 2, %52
  %call69 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %50, i64 %mul)
  store %struct.varray_head_tag* %call69, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %do.body.65
  %53 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %54 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used71 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %54, i32 0, i32 1
  %55 = load i64, i64* %elements_used71, align 8
  %inc72 = add i64 %55, 1
  store i64 %inc72, i64* %elements_used71, align 8
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx73 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %55
  store %union.tree_node* %53, %union.tree_node** %arrayidx73, align 8
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.70
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %land.lhs.true.61, %do.body.57
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %sw.epilog.135

sw.bb.77:                                         ; preds = %if.end
  br label %do.body.78

do.body.78:                                       ; preds = %sw.bb.77
  %57 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %r__79, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %r__79, align 8
  %cmp83 = icmp ne %struct.rtx_def* %59, null
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.88

land.lhs.true.84:                                 ; preds = %do.body.78
  %60 = load %struct.rtx_def*, %struct.rtx_def** %r__79, align 8
  %61 = bitcast %struct.rtx_def* %60 to i8*
  %call85 = call i32 @ggc_set_mark(i8* %61)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.84
  %62 = load %struct.rtx_def*, %struct.rtx_def** %r__79, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %62)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %land.lhs.true.84, %do.body.78
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %sw.epilog.135

sw.bb.90:                                         ; preds = %if.end
  %63 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %64 = load i32, i32* %rtint, align 4
  switch i32 %64, label %sw.default [
    i32 -83, label %sw.bb.93
    i32 -82, label %sw.bb.93
    i32 -81, label %sw.bb.93
    i32 -79, label %sw.bb.93
    i32 -98, label %sw.bb.106
    i32 -97, label %sw.bb.106
  ]

sw.bb.93:                                         ; preds = %sw.bb.90, %sw.bb.90, %sw.bb.90, %sw.bb.90
  br label %do.body.94

do.body.94:                                       ; preds = %sw.bb.93
  %65 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %r__95, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %r__95, align 8
  %cmp99 = icmp ne %struct.rtx_def* %67, null
  br i1 %cmp99, label %land.lhs.true.100, label %if.end.104

land.lhs.true.100:                                ; preds = %do.body.94
  %68 = load %struct.rtx_def*, %struct.rtx_def** %r__95, align 8
  %69 = bitcast %struct.rtx_def* %68 to i8*
  %call101 = call i32 @ggc_set_mark(i8* %69)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true.100
  %70 = load %struct.rtx_def*, %struct.rtx_def** %r__95, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %70)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.100, %do.body.94
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %sw.epilog

sw.bb.106:                                        ; preds = %sw.bb.90, %sw.bb.90
  br label %do.body.107

do.body.107:                                      ; preds = %sw.bb.106
  %71 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 3
  %rttree111 = bitcast %union.rtunion_def* %arrayidx110 to %union.tree_node**
  %72 = load %union.tree_node*, %union.tree_node** %rttree111, align 8
  store %union.tree_node* %72, %union.tree_node** %t__108, align 8
  %73 = load %union.tree_node*, %union.tree_node** %t__108, align 8
  %cmp112 = icmp ne %union.tree_node* %73, null
  br i1 %cmp112, label %land.lhs.true.113, label %if.end.132

land.lhs.true.113:                                ; preds = %do.body.107
  %74 = load %union.tree_node*, %union.tree_node** %t__108, align 8
  %75 = bitcast %union.tree_node* %74 to i8*
  %call114 = call i32 @ggc_set_mark(i8* %75)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.132, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true.113
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.116
  %76 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used118 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %76, i32 0, i32 1
  %77 = load i64, i64* %elements_used118, align 8
  %78 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements119 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %78, i32 0, i32 0
  %79 = load i64, i64* %num_elements119, align 8
  %cmp120 = icmp uge i64 %77, %79
  br i1 %cmp120, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %do.body.117
  %80 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %81 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements122 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %81, i32 0, i32 0
  %82 = load i64, i64* %num_elements122, align 8
  %mul123 = mul i64 2, %82
  %call124 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %80, i64 %mul123)
  store %struct.varray_head_tag* %call124, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %do.body.117
  %83 = load %union.tree_node*, %union.tree_node** %t__108, align 8
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used126 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 1
  %85 = load i64, i64* %elements_used126, align 8
  %inc127 = add i64 %85, 1
  store i64 %inc127, i64* %elements_used126, align 8
  %86 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data128 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %86, i32 0, i32 4
  %tree129 = bitcast %union.varray_data_tag* %data128 to [1 x %union.tree_node*]*
  %arrayidx130 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree129, i32 0, i64 %85
  store %union.tree_node* %83, %union.tree_node** %arrayidx130, align 8
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.125
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %land.lhs.true.113, %do.body.107
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.90
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.133, %do.end.105
  br label %sw.epilog.135

sw.default.134:                                   ; preds = %if.end
  br label %sw.epilog.135

sw.epilog.135:                                    ; preds = %sw.default.134, %sw.epilog, %do.end.89, %do.end.76, %do.end.55, %do.end.30, %do.end.17, %do.end
  %87 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load136 = load i32, i32* %88, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %idxprom138 = sext i32 %bf.clear137 to i64
  %arrayidx139 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom138
  %89 = load i8*, i8** %arrayidx139, align 8
  store i8* %89, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog.135
  %90 = load i8*, i8** %fmt, align 8
  %91 = load i8, i8* %90, align 1
  %tobool140 = icmp ne i8 %91, 0
  br i1 %tobool140, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %92 = load i8*, i8** %fmt, align 8
  %93 = load i8, i8* %92, align 1
  %conv = sext i8 %93 to i32
  switch i32 %conv, label %sw.epilog.170 [
    i32 101, label %sw.bb.141
    i32 117, label %sw.bb.141
    i32 86, label %sw.bb.157
    i32 69, label %sw.bb.157
  ]

sw.bb.141:                                        ; preds = %for.body, %for.body
  %94 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 %idxprom142
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %exp, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  %cmp146 = icmp ne %struct.rtx_def* %97, null
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.156

land.lhs.true.148:                                ; preds = %sw.bb.141
  %98 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  %99 = bitcast %struct.rtx_def* %98 to i8*
  %call149 = call i32 @ggc_set_mark(i8* %99)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.end.156, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.148
  %100 = load %struct.rtx_def*, %struct.rtx_def** %next_rtx, align 8
  %cmp152 = icmp eq %struct.rtx_def* %100, null
  br i1 %cmp152, label %if.then.154, label %if.else

if.then.154:                                      ; preds = %if.then.151
  %101 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  store %struct.rtx_def* %101, %struct.rtx_def** %next_rtx, align 8
  br label %if.end.155

if.else:                                          ; preds = %if.then.151
  %102 = load %struct.rtx_def*, %struct.rtx_def** %exp, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %102)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else, %if.then.154
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %land.lhs.true.148, %sw.bb.141
  br label %sw.epilog.170

sw.bb.157:                                        ; preds = %for.body, %for.body
  br label %do.body.158

do.body.158:                                      ; preds = %sw.bb.157
  %103 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %103 to i64
  %104 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 %idxprom159
  %rtvec = bitcast %union.rtunion_def* %arrayidx161 to %struct.rtvec_def**
  %105 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %105, %struct.rtvec_def** %v__, align 8
  %106 = load %struct.rtvec_def*, %struct.rtvec_def** %v__, align 8
  %cmp162 = icmp ne %struct.rtvec_def* %106, null
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.168

land.lhs.true.164:                                ; preds = %do.body.158
  %107 = load %struct.rtvec_def*, %struct.rtvec_def** %v__, align 8
  %108 = bitcast %struct.rtvec_def* %107 to i8*
  %call165 = call i32 @ggc_set_mark(i8* %108)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %land.lhs.true.164
  %109 = load %struct.rtvec_def*, %struct.rtvec_def** %v__, align 8
  call void @ggc_mark_rtvec_children(%struct.rtvec_def* %109)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %land.lhs.true.164, %do.body.158
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %sw.epilog.170

sw.epilog.170:                                    ; preds = %for.body, %do.end.169, %if.end.156
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.170
  %110 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  %111 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %111, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %112 = load %struct.rtx_def*, %struct.rtx_def** %next_rtx, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %r.addr, align 8
  %cmp172 = icmp ne %struct.rtx_def* %112, null
  br i1 %cmp172, label %do.body, label %do.end.174

do.end.174:                                       ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_mark_rtvec_children(%struct.rtvec_def* %v) #0 {
entry:
  %v.addr = alloca %struct.rtvec_def*, align 8
  %i = alloca i32, align 4
  %r__ = alloca %struct.rtx_def*, align 8
  store %struct.rtvec_def* %v, %struct.rtvec_def** %v.addr, align 8
  %0 = load %struct.rtvec_def*, %struct.rtvec_def** %v.addr, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %0, i32 0, i32 0
  %1 = load i32, i32* %num_elem, align 4
  store i32 %1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.rtvec_def*, %struct.rtvec_def** %v.addr, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %r__, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp1 = icmp ne %struct.rtx_def* %6, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %8 = bitcast %struct.rtx_def* %7 to i8*
  %call = call i32 @ggc_set_mark(i8* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_mark_rtx_varray(%struct.varray_head_tag* %v) #0 {
entry:
  %v.addr = alloca %struct.varray_head_tag*, align 8
  %i = alloca i32, align 4
  %r__ = alloca %struct.rtx_def*, align 8
  store %struct.varray_head_tag* %v, %struct.varray_head_tag** %v.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** %v.addr, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %v.addr, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 0
  %2 = load i64, i64* %num_elements, align 8
  %sub = sub i64 %2, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** %v.addr, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data to [1 x %struct.rtx_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %idxprom
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %r__, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp2 = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %9 = bitcast %struct.rtx_def* %8 to i8*
  %call = call i32 @ggc_set_mark(i8* %9)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ggc_mark_tree_varray(%struct.varray_head_tag* %v) #0 {
entry:
  %v.addr = alloca %struct.varray_head_tag*, align 8
  %i = alloca i32, align 4
  %t__ = alloca %union.tree_node*, align 8
  store %struct.varray_head_tag* %v, %struct.varray_head_tag** %v.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** %v.addr, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %v.addr, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 0
  %2 = load i64, i64* %num_elements, align 8
  %sub = sub i64 %2, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** %v.addr, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %idxprom
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %6, %union.tree_node** %t__, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp2 = icmp ne %union.tree_node* %7, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %do.body
  %8 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %9 = bitcast %union.tree_node* %8 to i8*
  %call = call i32 @ggc_set_mark(i8* %9)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end.17, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 1
  %11 = load i64, i64* %elements_used, align 8
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 0
  %13 = load i64, i64* %num_elements7, align 8
  %cmp8 = icmp uge i64 %11, %13
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %do.body.6
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 0
  %16 = load i64, i64* %num_elements11, align 8
  %mul = mul i64 2, %16
  %call12 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %14, i64 %mul)
  store %struct.varray_head_tag* %call12, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %do.body.6
  %17 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 1
  %19 = load i64, i64* %elements_used13, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %elements_used13, align 8
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %tree15 = bitcast %union.varray_data_tag* %data14 to [1 x %union.tree_node*]*
  %arrayidx16 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree15, i32 0, i64 %19
  store %union.tree_node* %17, %union.tree_node** %arrayidx16, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %do.end.18
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %entry
  ret void
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define void @ggc_mark_tree_hash_table(%struct.hash_table* %ht) #0 {
entry:
  %ht.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  call void @hash_traverse(%struct.hash_table* %0, i1 (%struct.hash_entry*, i8*)* @ggc_mark_tree_hash_table_entry, i8* null)
  ret void
}

declare void @hash_traverse(%struct.hash_table*, i1 (%struct.hash_entry*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ggc_mark_tree_hash_table_entry(%struct.hash_entry* %he, i8* %k) #0 {
entry:
  %he.addr = alloca %struct.hash_entry*, align 8
  %k.addr = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store %struct.hash_entry* %he, %struct.hash_entry** %he.addr, align 8
  store i8* %k, i8** %k.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.hash_entry*, %struct.hash_entry** %he.addr, align 8
  %key = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %0, i32 0, i32 1
  %1 = load i8*, i8** %key, align 8
  %2 = bitcast i8* %1 to %union.tree_node*
  store %union.tree_node* %2, %union.tree_node** %t__, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %do.body
  %4 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %5 = bitcast %union.tree_node* %4 to i8*
  %call = call i32 @ggc_set_mark(i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  %7 = load i64, i64* %elements_used, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 0
  %9 = load i64, i64* %num_elements, align 8
  %cmp2 = icmp uge i64 %7, %9
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body.1
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 0
  %12 = load i64, i64* %num_elements4, align 8
  %mul = mul i64 2, %12
  %call5 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %10, i64 %mul)
  store %struct.varray_head_tag* %call5, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body.1
  %13 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 1
  %15 = load i64, i64* %elements_used6, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %elements_used6, align 8
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %15
  store %union.tree_node* %13, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  ret i1 true
}

; Function Attrs: nounwind uwtable
define i8* @ggc_alloc_cleared(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call i8* @ggc_alloc(i64 %0)
  store i8* %call, i8** %buf, align 8
  %1 = load i8*, i8** %buf, align 8
  %2 = load i64, i64* %size.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %2, i32 1, i1 false)
  %3 = load i8*, i8** %buf, align 8
  ret i8* %3
}

declare i8* @ggc_alloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @ggc_print_common_statistics(%struct._IO_FILE* %stream, %struct.ggc_statistics* %stats) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %stats.addr = alloca %struct.ggc_statistics*, align 8
  %code = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.ggc_statistics* %stats, %struct.ggc_statistics** %stats.addr, align 8
  %0 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  store %struct.ggc_statistics* %0, %struct.ggc_statistics** @ggc_stats, align 8
  call void @ggc_collect()
  store i32 0, i32* %code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %code, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %num_trees = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %num_trees, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %total_num_trees = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %5, i32 0, i32 6
  %6 = load i32, i32* %total_num_trees, align 4
  %add = add i32 %6, %4
  store i32 %add, i32* %total_num_trees, align 4
  %7 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %size_trees = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees, i32 0, i64 %idxprom1
  %9 = load i64, i64* %arrayidx2, align 8
  %10 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %total_size_trees = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %10, i32 0, i32 4
  %11 = load i64, i64* %total_size_trees, align 8
  %add3 = add i64 %11, %9
  store i64 %add3, i64* %total_size_trees, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %code, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %code, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %code, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.13, %for.end
  %13 = load i32, i32* %code, align 4
  %cmp5 = icmp slt i32 %13, 153
  br i1 %cmp5, label %for.body.6, label %for.end.15

for.body.6:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %code, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %num_rtxs = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %15, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %num_rtxs, i32 0, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %total_num_rtxs = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %17, i32 0, i32 7
  %18 = load i32, i32* %total_num_rtxs, align 4
  %add9 = add i32 %18, %16
  store i32 %add9, i32* %total_num_rtxs, align 4
  %19 = load i32, i32* %code, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %size_rtxs = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %20, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs, i32 0, i64 %idxprom10
  %21 = load i64, i64* %arrayidx11, align 8
  %22 = load %struct.ggc_statistics*, %struct.ggc_statistics** %stats.addr, align 8
  %total_size_rtxs = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %22, i32 0, i32 5
  %23 = load i64, i64* %total_size_rtxs, align 8
  %add12 = add i64 %23, %21
  store i64 %add12, i64* %total_size_rtxs, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.6
  %24 = load i32, i32* %code, align 4
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %code, align 4
  br label %for.cond.4

for.end.15:                                       ; preds = %for.cond.4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %code, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.69, %for.end.15
  %26 = load i32, i32* %code, align 4
  %cmp17 = icmp slt i32 %26, 256
  br i1 %cmp17, label %for.body.18, label %for.end.71

for.body.18:                                      ; preds = %for.cond.16
  %27 = load i32, i32* %code, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %num_trees20 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %28, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [256 x i32], [256 x i32]* %num_trees20, i32 0, i64 %idxprom19
  %29 = load i32, i32* %arrayidx21, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %31 = load i32, i32* %code, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8*], [256 x i8*]* @tree_code_name, i32 0, i64 %idxprom22
  %32 = load i8*, i8** %arrayidx23, align 8
  %33 = load i32, i32* %code, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %num_trees25 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %34, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [256 x i32], [256 x i32]* %num_trees25, i32 0, i64 %idxprom24
  %35 = load i32, i32* %arrayidx26, align 4
  %36 = load i32, i32* %code, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees28 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %37, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees28, i32 0, i64 %idxprom27
  %38 = load i64, i64* %arrayidx29, align 8
  %cmp30 = icmp ult i64 %38, 10240
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %39 = load i32, i32* %code, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees32 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %40, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees32, i32 0, i64 %idxprom31
  %41 = load i64, i64* %arrayidx33, align 8
  br label %cond.end.47

cond.false:                                       ; preds = %if.then
  %42 = load i32, i32* %code, align 4
  %idxprom34 = sext i32 %42 to i64
  %43 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees35 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %43, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees35, i32 0, i64 %idxprom34
  %44 = load i64, i64* %arrayidx36, align 8
  %cmp37 = icmp ult i64 %44, 10485760
  br i1 %cmp37, label %cond.true.38, label %cond.false.42

cond.true.38:                                     ; preds = %cond.false
  %45 = load i32, i32* %code, align 4
  %idxprom39 = sext i32 %45 to i64
  %46 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees40 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %46, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees40, i32 0, i64 %idxprom39
  %47 = load i64, i64* %arrayidx41, align 8
  %div = udiv i64 %47, 1024
  br label %cond.end

cond.false.42:                                    ; preds = %cond.false
  %48 = load i32, i32* %code, align 4
  %idxprom43 = sext i32 %48 to i64
  %49 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees44 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %49, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees44, i32 0, i64 %idxprom43
  %50 = load i64, i64* %arrayidx45, align 8
  %div46 = udiv i64 %50, 1048576
  br label %cond.end

cond.end:                                         ; preds = %cond.false.42, %cond.true.38
  %cond = phi i64 [ %div, %cond.true.38 ], [ %div46, %cond.false.42 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true
  %cond48 = phi i64 [ %41, %cond.true ], [ %cond, %cond.end ]
  %51 = load i32, i32* %code, align 4
  %idxprom49 = sext i32 %51 to i64
  %52 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees50 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %52, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees50, i32 0, i64 %idxprom49
  %53 = load i64, i64* %arrayidx51, align 8
  %cmp52 = icmp ult i64 %53, 10240
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.end.47
  br label %cond.end.60

cond.false.54:                                    ; preds = %cond.end.47
  %54 = load i32, i32* %code, align 4
  %idxprom55 = sext i32 %54 to i64
  %55 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees56 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %55, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees56, i32 0, i64 %idxprom55
  %56 = load i64, i64* %arrayidx57, align 8
  %cmp58 = icmp ult i64 %56, 10485760
  %cond59 = select i1 %cmp58, i32 107, i32 77
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.54, %cond.true.53
  %cond61 = phi i32 [ 32, %cond.true.53 ], [ %cond59, %cond.false.54 ]
  %57 = load i32, i32* %code, align 4
  %idxprom62 = sext i32 %57 to i64
  %58 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_trees63 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %58, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [256 x i64], [256 x i64]* %size_trees63, i32 0, i64 %idxprom62
  %59 = load i64, i64* %arrayidx64, align 8
  %conv = uitofp i64 %59 to double
  %mul = fmul double 1.000000e+02, %conv
  %60 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees65 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %60, i32 0, i32 4
  %61 = load i64, i64* %total_size_trees65, align 8
  %conv66 = uitofp i64 %61 to double
  %div67 = fdiv double %mul, %conv66
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* %32, i32 %35, i64 %cond48, i32 %cond61, double %div67)
  br label %if.end

if.end:                                           ; preds = %cond.end.60, %for.body.18
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end
  %62 = load i32, i32* %code, align 4
  %inc70 = add nsw i32 %62, 1
  store i32 %inc70, i32* %code, align 4
  br label %for.cond.16

for.end.71:                                       ; preds = %for.cond.16
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %64 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_num_trees72 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %64, i32 0, i32 6
  %65 = load i32, i32* %total_num_trees72, align 4
  %66 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees73 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %66, i32 0, i32 4
  %67 = load i64, i64* %total_size_trees73, align 8
  %cmp74 = icmp ult i64 %67, 10240
  br i1 %cmp74, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %for.end.71
  %68 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees77 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %68, i32 0, i32 4
  %69 = load i64, i64* %total_size_trees77, align 8
  br label %cond.end.90

cond.false.78:                                    ; preds = %for.end.71
  %70 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees79 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %70, i32 0, i32 4
  %71 = load i64, i64* %total_size_trees79, align 8
  %cmp80 = icmp ult i64 %71, 10485760
  br i1 %cmp80, label %cond.true.82, label %cond.false.85

cond.true.82:                                     ; preds = %cond.false.78
  %72 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees83 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %72, i32 0, i32 4
  %73 = load i64, i64* %total_size_trees83, align 8
  %div84 = udiv i64 %73, 1024
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.false.78
  %74 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees86 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %74, i32 0, i32 4
  %75 = load i64, i64* %total_size_trees86, align 8
  %div87 = udiv i64 %75, 1048576
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.82
  %cond89 = phi i64 [ %div84, %cond.true.82 ], [ %div87, %cond.false.85 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.76
  %cond91 = phi i64 [ %69, %cond.true.76 ], [ %cond89, %cond.end.88 ]
  %76 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees92 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %76, i32 0, i32 4
  %77 = load i64, i64* %total_size_trees92, align 8
  %cmp93 = icmp ult i64 %77, 10240
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %cond.end.90
  br label %cond.end.101

cond.false.96:                                    ; preds = %cond.end.90
  %78 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_trees97 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %78, i32 0, i32 4
  %79 = load i64, i64* %total_size_trees97, align 8
  %cmp98 = icmp ult i64 %79, 10485760
  %cond100 = select i1 %cmp98, i32 107, i32 77
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.96, %cond.true.95
  %cond102 = phi i32 [ 32, %cond.true.95 ], [ %cond100, %cond.false.96 ]
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %65, i64 %cond91, i32 %cond102)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %code, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.173, %cond.end.101
  %81 = load i32, i32* %code, align 4
  %cmp106 = icmp slt i32 %81, 153
  br i1 %cmp106, label %for.body.108, label %for.end.175

for.body.108:                                     ; preds = %for.cond.105
  %82 = load i32, i32* %code, align 4
  %idxprom109 = sext i32 %82 to i64
  %83 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %num_rtxs110 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %83, i32 0, i32 2
  %arrayidx111 = getelementptr inbounds [256 x i32], [256 x i32]* %num_rtxs110, i32 0, i64 %idxprom109
  %84 = load i32, i32* %arrayidx111, align 4
  %tobool112 = icmp ne i32 %84, 0
  br i1 %tobool112, label %if.then.113, label %if.end.172

if.then.113:                                      ; preds = %for.body.108
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %86 = load i32, i32* %code, align 4
  %idxprom114 = sext i32 %86 to i64
  %arrayidx115 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_name, i32 0, i64 %idxprom114
  %87 = load i8*, i8** %arrayidx115, align 8
  %88 = load i32, i32* %code, align 4
  %idxprom116 = sext i32 %88 to i64
  %89 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %num_rtxs117 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %89, i32 0, i32 2
  %arrayidx118 = getelementptr inbounds [256 x i32], [256 x i32]* %num_rtxs117, i32 0, i64 %idxprom116
  %90 = load i32, i32* %arrayidx118, align 4
  %91 = load i32, i32* %code, align 4
  %idxprom119 = sext i32 %91 to i64
  %92 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs120 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %92, i32 0, i32 3
  %arrayidx121 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs120, i32 0, i64 %idxprom119
  %93 = load i64, i64* %arrayidx121, align 8
  %cmp122 = icmp ult i64 %93, 10240
  br i1 %cmp122, label %cond.true.124, label %cond.false.128

cond.true.124:                                    ; preds = %if.then.113
  %94 = load i32, i32* %code, align 4
  %idxprom125 = sext i32 %94 to i64
  %95 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs126 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %95, i32 0, i32 3
  %arrayidx127 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs126, i32 0, i64 %idxprom125
  %96 = load i64, i64* %arrayidx127, align 8
  br label %cond.end.146

cond.false.128:                                   ; preds = %if.then.113
  %97 = load i32, i32* %code, align 4
  %idxprom129 = sext i32 %97 to i64
  %98 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs130 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %98, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs130, i32 0, i64 %idxprom129
  %99 = load i64, i64* %arrayidx131, align 8
  %cmp132 = icmp ult i64 %99, 10485760
  br i1 %cmp132, label %cond.true.134, label %cond.false.139

cond.true.134:                                    ; preds = %cond.false.128
  %100 = load i32, i32* %code, align 4
  %idxprom135 = sext i32 %100 to i64
  %101 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs136 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %101, i32 0, i32 3
  %arrayidx137 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs136, i32 0, i64 %idxprom135
  %102 = load i64, i64* %arrayidx137, align 8
  %div138 = udiv i64 %102, 1024
  br label %cond.end.144

cond.false.139:                                   ; preds = %cond.false.128
  %103 = load i32, i32* %code, align 4
  %idxprom140 = sext i32 %103 to i64
  %104 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs141 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %104, i32 0, i32 3
  %arrayidx142 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs141, i32 0, i64 %idxprom140
  %105 = load i64, i64* %arrayidx142, align 8
  %div143 = udiv i64 %105, 1048576
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.139, %cond.true.134
  %cond145 = phi i64 [ %div138, %cond.true.134 ], [ %div143, %cond.false.139 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %cond.true.124
  %cond147 = phi i64 [ %96, %cond.true.124 ], [ %cond145, %cond.end.144 ]
  %106 = load i32, i32* %code, align 4
  %idxprom148 = sext i32 %106 to i64
  %107 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs149 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %107, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs149, i32 0, i64 %idxprom148
  %108 = load i64, i64* %arrayidx150, align 8
  %cmp151 = icmp ult i64 %108, 10240
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %cond.end.146
  br label %cond.end.161

cond.false.154:                                   ; preds = %cond.end.146
  %109 = load i32, i32* %code, align 4
  %idxprom155 = sext i32 %109 to i64
  %110 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs156 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %110, i32 0, i32 3
  %arrayidx157 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs156, i32 0, i64 %idxprom155
  %111 = load i64, i64* %arrayidx157, align 8
  %cmp158 = icmp ult i64 %111, 10485760
  %cond160 = select i1 %cmp158, i32 107, i32 77
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.154, %cond.true.153
  %cond162 = phi i32 [ 32, %cond.true.153 ], [ %cond160, %cond.false.154 ]
  %112 = load i32, i32* %code, align 4
  %idxprom163 = sext i32 %112 to i64
  %113 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %size_rtxs164 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %113, i32 0, i32 3
  %arrayidx165 = getelementptr inbounds [256 x i64], [256 x i64]* %size_rtxs164, i32 0, i64 %idxprom163
  %114 = load i64, i64* %arrayidx165, align 8
  %conv166 = uitofp i64 %114 to double
  %mul167 = fmul double 1.000000e+02, %conv166
  %115 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs168 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %115, i32 0, i32 5
  %116 = load i64, i64* %total_size_rtxs168, align 8
  %conv169 = uitofp i64 %116 to double
  %div170 = fdiv double %mul167, %conv169
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8* %87, i32 %90, i64 %cond147, i32 %cond162, double %div170)
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end.161, %for.body.108
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.172
  %117 = load i32, i32* %code, align 4
  %inc174 = add nsw i32 %117, 1
  store i32 %inc174, i32* %code, align 4
  br label %for.cond.105

for.end.175:                                      ; preds = %for.cond.105
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %119 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_num_rtxs176 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %119, i32 0, i32 7
  %120 = load i32, i32* %total_num_rtxs176, align 4
  %121 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs177 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %121, i32 0, i32 5
  %122 = load i64, i64* %total_size_rtxs177, align 8
  %cmp178 = icmp ult i64 %122, 10240
  br i1 %cmp178, label %cond.true.180, label %cond.false.182

cond.true.180:                                    ; preds = %for.end.175
  %123 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs181 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %123, i32 0, i32 5
  %124 = load i64, i64* %total_size_rtxs181, align 8
  br label %cond.end.194

cond.false.182:                                   ; preds = %for.end.175
  %125 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs183 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %125, i32 0, i32 5
  %126 = load i64, i64* %total_size_rtxs183, align 8
  %cmp184 = icmp ult i64 %126, 10485760
  br i1 %cmp184, label %cond.true.186, label %cond.false.189

cond.true.186:                                    ; preds = %cond.false.182
  %127 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs187 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %127, i32 0, i32 5
  %128 = load i64, i64* %total_size_rtxs187, align 8
  %div188 = udiv i64 %128, 1024
  br label %cond.end.192

cond.false.189:                                   ; preds = %cond.false.182
  %129 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs190 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %129, i32 0, i32 5
  %130 = load i64, i64* %total_size_rtxs190, align 8
  %div191 = udiv i64 %130, 1048576
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.189, %cond.true.186
  %cond193 = phi i64 [ %div188, %cond.true.186 ], [ %div191, %cond.false.189 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.true.180
  %cond195 = phi i64 [ %124, %cond.true.180 ], [ %cond193, %cond.end.192 ]
  %131 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs196 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %131, i32 0, i32 5
  %132 = load i64, i64* %total_size_rtxs196, align 8
  %cmp197 = icmp ult i64 %132, 10240
  br i1 %cmp197, label %cond.true.199, label %cond.false.200

cond.true.199:                                    ; preds = %cond.end.194
  br label %cond.end.205

cond.false.200:                                   ; preds = %cond.end.194
  %133 = load %struct.ggc_statistics*, %struct.ggc_statistics** @ggc_stats, align 8
  %total_size_rtxs201 = getelementptr inbounds %struct.ggc_statistics, %struct.ggc_statistics* %133, i32 0, i32 5
  %134 = load i64, i64* %total_size_rtxs201, align 8
  %cmp202 = icmp ult i64 %134, 10485760
  %cond204 = select i1 %cmp202, i32 107, i32 77
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.200, %cond.true.199
  %cond206 = phi i32 [ 32, %cond.true.199 ], [ %cond204, %cond.false.200 ]
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %120, i64 %cond195, i32 %cond206)
  store %struct.ggc_statistics* null, %struct.ggc_statistics** @ggc_stats, align 8
  ret void
}

declare void @ggc_collect() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @htab_clear_slot(%struct.htab*, i8**) #1

declare i64 @ggc_get_size(i8*) #1

declare void @lang_mark_tree(%union.tree_node*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare void @ggc_mark_struct_function(%struct.function*) #1

declare i32 @first_rtl_op(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
