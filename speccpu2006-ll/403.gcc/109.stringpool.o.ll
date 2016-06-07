; ModuleID = 'stringpool.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ht_identifier = type { i32, i8* }
%struct.cpp_reader = type opaque
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type opaque
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }

@empty_string = constant [1 x i8] zeroinitializer, align 1
@digit_vector = constant [20 x i8] c"0\001\002\003\004\005\006\007\008\009\00", align 16
@ident_hash = common global %struct.ht* null, align 8
@string_stack = internal global %struct.obstack zeroinitializer, align 8
@_sch_istable = external constant [256 x i16], align 16
@ggc_pending_trees = external global %struct.varray_head_tag*, align 8

; Function Attrs: nounwind uwtable
define void @init_stringpool() #0 {
entry:
  %call = call %struct.ht* @ht_create(i32 14)
  store %struct.ht* %call, %struct.ht** @ident_hash, align 8
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  %alloc_node = getelementptr inbounds %struct.ht, %struct.ht* %0, i32 0, i32 2
  store %struct.ht_identifier* (%struct.ht*)* @alloc_node, %struct.ht_identifier* (%struct.ht*)** %alloc_node, align 8
  call void @gcc_obstack_init(%struct.obstack* @string_stack)
  call void @ggc_add_root(i8* bitcast (%struct.ht** @ident_hash to i8*), i32 1, i32 8, void (i8*)* @mark_ident_hash)
  ret void
}

declare %struct.ht* @ht_create(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.ht_identifier* @alloc_node(%struct.ht* %table) #0 {
entry:
  %table.addr = alloca %struct.ht*, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  %call = call %union.tree_node* @make_node(i32 1)
  %0 = bitcast %union.tree_node* %call to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %0, i32 0, i32 1
  ret %struct.ht_identifier* %id
}

declare void @gcc_obstack_init(%struct.obstack*) #1

declare void @ggc_add_root(i8*, i32, i32, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_ident_hash(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  call void @ht_forall(%struct.ht* %0, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* @mark_ident, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ggc_alloc_string(i8* %contents, i32 %length) #0 {
entry:
  %retval = alloca i8*, align 8
  %contents.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i8* %contents, i8** %contents.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %contents.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %length.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @empty_string, i32 0, i32 0), i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %length.addr, align 4
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.4
  %4 = load i8*, i8** %contents.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %5 to i32
  %and = and i32 %conv7, 255
  %idxprom = sext i32 %and to i64
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %6 to i32
  %and10 = and i32 %conv9, 4
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true
  %7 = load i8*, i8** %contents.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv13, 48
  %mul = mul nsw i32 %sub, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @digit_vector, i32 0, i32 0), i64 %idx.ext
  store i8* %add.ptr, i8** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end.4
  store %struct.obstack* @string_stack, %struct.obstack** %__o, align 8
  %9 = load i32, i32* %length.addr, align 4
  store i32 %9, i32* %__len, align 4
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free, align 8
  %12 = load i32, i32* %__len, align 4
  %idx.ext15 = sext i32 %12 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %11, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 1
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 4
  %14 = load i8*, i8** %chunk_limit, align 8
  %cmp18 = icmp ugt i8* %add.ptr17, %14
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  %15 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %16 = load i32, i32* %__len, align 4
  %add = add nsw i32 %16, 1
  call void @_obstack_newchunk(%struct.obstack* %15, i32 %add)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.14
  %17 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 3
  %18 = load i8*, i8** %next_free22, align 8
  %19 = load i8*, i8** %contents.addr, align 8
  %20 = load i32, i32* %__len, align 4
  %conv23 = sext i32 %20 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 %conv23, i32 1, i1 false)
  %21 = load i32, i32* %__len, align 4
  %22 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free24 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free24, align 8
  %idx.ext25 = sext i32 %21 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %23, i64 %idx.ext25
  store i8* %add.ptr26, i8** %next_free24, align 8
  %24 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free27 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 3
  %25 = load i8*, i8** %next_free27, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %next_free27, align 8
  store i8 0, i8* %25, align 1
  store %struct.obstack* @string_stack, %struct.obstack** %__o1, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 2
  %27 = load i8*, i8** %object_base, align 8
  store i8* %27, i8** %value, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free28 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  %29 = load i8*, i8** %next_free28, align 8
  %30 = load i8*, i8** %value, align 8
  %cmp29 = icmp eq i8* %29, %30
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.21
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.21
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 3
  %33 = load i8*, i8** %next_free33, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 6
  %35 = load i32, i32* %alignment_mask, align 4
  %conv34 = sext i32 %35 to i64
  %add35 = add nsw i64 %sub.ptr.sub, %conv34
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask36 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 6
  %37 = load i32, i32* %alignment_mask36, align 4
  %neg = xor i32 %37, -1
  %conv37 = sext i32 %neg to i64
  %and38 = and i64 %add35, %conv37
  %add.ptr39 = getelementptr inbounds i8, i8* null, i64 %and38
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free40 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  store i8* %add.ptr39, i8** %next_free40, align 8
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free41 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free41, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 1
  %42 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %43 = bitcast %struct._obstack_chunk* %42 to i8*
  %sub.ptr.lhs.cast42 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit44 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 4
  %45 = load i8*, i8** %chunk_limit44, align 8
  %46 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk45 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 1
  %47 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk45, align 8
  %48 = bitcast %struct._obstack_chunk* %47 to i8*
  %sub.ptr.lhs.cast46 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %48 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %cmp49 = icmp sgt i64 %sub.ptr.sub43, %sub.ptr.sub48
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.32
  %49 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit52 = getelementptr inbounds %struct.obstack, %struct.obstack* %49, i32 0, i32 4
  %50 = load i8*, i8** %chunk_limit52, align 8
  %51 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free53 = getelementptr inbounds %struct.obstack, %struct.obstack* %51, i32 0, i32 3
  store i8* %50, i8** %next_free53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.32
  %52 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free55 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 3
  %53 = load i8*, i8** %next_free55, align 8
  %54 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base56 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 2
  store i8* %53, i8** %object_base56, align 8
  %55 = load i8*, i8** %value, align 8
  store i8* %55, i8** %tmp
  %56 = load i8*, i8** %tmp
  store i8* %56, i8** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.11, %if.then.3
  %57 = load i8*, i8** %retval
  ret i8* %57
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_identifier(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %ht_node = alloca %struct.ht_identifier*, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %conv = trunc i64 %call to i32
  %call1 = call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %1, i32 %conv, i32 1)
  store %struct.ht_identifier* %call1, %struct.ht_identifier** %ht_node, align 8
  %3 = load %struct.ht_identifier*, %struct.ht_identifier** %ht_node, align 8
  %4 = bitcast %struct.ht_identifier* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -24
  %5 = bitcast i8* %add.ptr to %union.tree_node*
  ret %union.tree_node* %5
}

declare %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_identifier_with_length(i8* %text, i32 %length) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %ht_node = alloca %struct.ht_identifier*, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load i32, i32* %length.addr, align 4
  %call = call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %1, i32 %2, i32 1)
  store %struct.ht_identifier* %call, %struct.ht_identifier** %ht_node, align 8
  %3 = load %struct.ht_identifier*, %struct.ht_identifier** %ht_node, align 8
  %4 = bitcast %struct.ht_identifier* %3 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -24
  %5 = bitcast i8* %add.ptr to %union.tree_node*
  ret %union.tree_node* %5
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @maybe_get_identifier(i8* %text) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %text.addr = alloca i8*, align 8
  %ht_node = alloca %struct.ht_identifier*, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %conv = trunc i64 %call to i32
  %call1 = call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %1, i32 %conv, i32 0)
  store %struct.ht_identifier* %call1, %struct.ht_identifier** %ht_node, align 8
  %3 = load %struct.ht_identifier*, %struct.ht_identifier** %ht_node, align 8
  %tobool = icmp ne %struct.ht_identifier* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.ht_identifier*, %struct.ht_identifier** %ht_node, align 8
  %5 = bitcast %struct.ht_identifier* %4 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -24
  %6 = bitcast i8* %add.ptr to %union.tree_node*
  store %union.tree_node* %6, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define void @stringpool_statistics() #0 {
entry:
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  call void @ht_dump_statistics(%struct.ht* %0)
  ret void
}

declare void @ht_dump_statistics(%struct.ht*) #1

declare %union.tree_node* @make_node(i32) #1

declare void @ht_forall(%struct.ht*, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_ident(%struct.cpp_reader* %pfile, %struct.ht_identifier* %h, i8* %v) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %h.addr = alloca %struct.ht_identifier*, align 8
  %v.addr = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.ht_identifier* %h, %struct.ht_identifier** %h.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ht_identifier*, %struct.ht_identifier** %h.addr, align 8
  %1 = bitcast %struct.ht_identifier* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %union.tree_node*
  store %union.tree_node* %2, %union.tree_node** %t__, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %4 = bitcast %union.tree_node* %3 to i8*
  %call = call i32 @ggc_set_mark(i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 1
  %6 = load i64, i64* %elements_used, align 8
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 0
  %8 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %6, %8
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body.1
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 0
  %11 = load i64, i64* %num_elements3, align 8
  %mul = mul i64 2, %11
  %call4 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %9, i64 %mul)
  store %struct.varray_head_tag* %call4, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body.1
  %12 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 1
  %14 = load i64, i64* %elements_used5, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %elements_used5, align 8
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %14
  store %union.tree_node* %12, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  ret i32 1
}

declare i32 @ggc_set_mark(i8*) #1

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
