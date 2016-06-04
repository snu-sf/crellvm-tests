; ModuleID = 'cpphash.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps, %struct.line_map*, i32, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i32, i32, i32, i8*, i32, %struct.splay_tree_s*, i32, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.cpp_options, %struct.spec_nodes, i8, i8 }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, %struct.cpp_buffer*, i8*, %struct.include_file*, %struct.if_stack*, i32, i8, i8*, i8, i8, i8, i8, %struct.search_path }
%struct.include_file = type opaque
%struct.if_stack = type opaque
%struct.search_path = type { %struct.search_path*, i8*, i32, i64, i64, i32, %struct.file_name_map* }
%struct.file_name_map = type opaque
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i8 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.utoken, %union.utoken, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.utoken = type { %struct.cpp_token* }
%struct.directive = type opaque
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon.0 }
%struct.ht_identifier = type { i32, i8* }
%union.anon.0 = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.splay_tree_s = type opaque
%struct.cpp_token = type { i32, i16, i8, i8, %union.anon }
%union.anon = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)* }
%struct.cpp_options = type { i8*, i8*, i32, %struct.cpp_pending*, i8*, %struct.search_path*, %struct.search_path*, %struct.file_name_map_list*, i8*, i32, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpp_pending = type opaque
%struct.file_name_map_list = type opaque
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"__STRICT_ANSI__\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1

; Function Attrs: nounwind uwtable
define void @_cpp_init_hashtable(%struct.cpp_reader* %pfile, %struct.ht* %table) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %table.addr = alloca %struct.ht*, align 8
  %s = alloca %struct.spec_nodes*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  %0 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %cmp = icmp eq %struct.ht* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %our_hashtable = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 40
  store i8 1, i8* %our_hashtable, align 1
  %call = call %struct.ht* @ht_create(i32 13)
  store %struct.ht* %call, %struct.ht** %table.addr, align 8
  %2 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %alloc_node = getelementptr inbounds %struct.ht, %struct.ht* %2, i32 0, i32 2
  store %struct.ht_identifier* (%struct.ht*)* bitcast (%struct.cpp_hashnode* (%struct.ht*)* @alloc_node to %struct.ht_identifier* (%struct.ht*)*), %struct.ht_identifier* (%struct.ht*)** %alloc_node, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 32
  call void @gcc_obstack_init(%struct.obstack* %hash_ob)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %5 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %pfile1 = getelementptr inbounds %struct.ht, %struct.ht* %5, i32 0, i32 5
  store %struct.cpp_reader* %4, %struct.cpp_reader** %pfile1, align 8
  %6 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 36
  store %struct.ht* %6, %struct.ht** %hash_table, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_init_directives(%struct.cpp_reader* %8)
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_init_internal_pragmas(%struct.cpp_reader* %9)
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 38
  store %struct.spec_nodes* %spec_nodes, %struct.spec_nodes** %s, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call2 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 7)
  %12 = load %struct.spec_nodes*, %struct.spec_nodes** %s, align 8
  %n_defined = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %12, i32 0, i32 0
  store %struct.cpp_hashnode* %call2, %struct.cpp_hashnode** %n_defined, align 8
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call3 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 4)
  %14 = load %struct.spec_nodes*, %struct.spec_nodes** %s, align 8
  %n_true = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %14, i32 0, i32 1
  store %struct.cpp_hashnode* %call3, %struct.cpp_hashnode** %n_true, align 8
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call4 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 5)
  %16 = load %struct.spec_nodes*, %struct.spec_nodes** %s, align 8
  %n_false = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %16, i32 0, i32 2
  store %struct.cpp_hashnode* %call4, %struct.cpp_hashnode** %n_false, align 8
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call5 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 15)
  %18 = load %struct.spec_nodes*, %struct.spec_nodes** %s, align 8
  %n__STRICT_ANSI__ = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %18, i32 0, i32 3
  store %struct.cpp_hashnode* %call5, %struct.cpp_hashnode** %n__STRICT_ANSI__, align 8
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call6 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 11)
  %20 = load %struct.spec_nodes*, %struct.spec_nodes** %s, align 8
  %n__VA_ARGS__ = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %20, i32 0, i32 4
  store %struct.cpp_hashnode* %call6, %struct.cpp_hashnode** %n__VA_ARGS__, align 8
  %21 = load %struct.spec_nodes*, %struct.spec_nodes** %s, align 8
  %n__VA_ARGS__7 = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %21, i32 0, i32 4
  %22 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__7, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %22, i32 0, i32 5
  %23 = load i8, i8* %flags, align 1
  %conv = zext i8 %23 to i32
  %or = or i32 %conv, 8
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %flags, align 1
  ret void
}

declare %struct.ht* @ht_create(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.cpp_hashnode* @alloc_node(%struct.ht* %table) #0 {
entry:
  %table.addr = alloca %struct.ht*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  store %struct.ht* %table, %struct.ht** %table.addr, align 8
  %0 = load %struct.ht*, %struct.ht** %table.addr, align 8
  %pfile = getelementptr inbounds %struct.ht, %struct.ht* %0, i32 0, i32 5
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8
  %hash_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 32
  store %struct.obstack* %hash_ob, %struct.obstack** %__h, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %2, %struct.obstack** %__o, align 8
  store i32 32, i32* %__len, align 4
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 3
  %6 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, i32* %__len, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %9 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %__len, align 4
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  %12 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %13, %struct.obstack** %__o1, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 2
  %15 = load i8*, i8** %object_base, align 8
  store i8* %15, i8** %value, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free5, align 8
  %18 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %17, %18
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %21 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %23 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %25, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free18, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 1
  %30 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %31 = bitcast %struct._obstack_chunk* %30 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %31 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 4
  %33 = load i8*, i8** %chunk_limit22, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 1
  %35 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %36 = bitcast %struct._obstack_chunk* %35 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %36 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 4
  %38 = load i8*, i8** %chunk_limit30, align 8
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  store i8* %38, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free33, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 2
  store i8* %41, i8** %object_base34, align 8
  %43 = load i8*, i8** %value, align 8
  store i8* %43, i8** %tmp35
  %44 = load i8*, i8** %tmp35
  store i8* %44, i8** %tmp
  %45 = load i8*, i8** %tmp
  %46 = bitcast i8* %45 to %struct.cpp_hashnode*
  store %struct.cpp_hashnode* %46, %struct.cpp_hashnode** %node, align 8
  %47 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %48 = bitcast %struct.cpp_hashnode* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 32, i32 1, i1 false)
  %49 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  ret %struct.cpp_hashnode* %49
}

declare void @gcc_obstack_init(%struct.obstack*) #1

declare void @_cpp_init_directives(%struct.cpp_reader*) #1

declare void @_cpp_init_internal_pragmas(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %str, i32 %len) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 36
  %1 = load %struct.ht*, %struct.ht** %hash_table, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call %struct.ht_identifier* @ht_lookup(%struct.ht* %1, i8* %2, i32 %3, i32 1)
  %4 = bitcast %struct.ht_identifier* %call to %struct.cpp_hashnode*
  ret %struct.cpp_hashnode* %4
}

; Function Attrs: nounwind uwtable
define void @_cpp_destroy_hashtable(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %our_hashtable = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 40
  %1 = load i8, i8* %our_hashtable, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 36
  %3 = load %struct.ht*, %struct.ht** %hash_table, align 8
  call void @ht_destroy(%struct.ht* %3)
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 32
  store %struct.obstack* %hash_ob, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %5 = load i8*, i8** %__obj, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 1
  %7 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %8 = bitcast %struct._obstack_chunk* %7 to i8*
  %cmp = icmp ugt i8* %5, %8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = load i8*, i8** %__obj, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 4
  %11 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %9, %11
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %__obj, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 2
  store i8* %12, i8** %object_base, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  store i8* %12, i8** %next_free, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %15 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %16 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %15, i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

declare void @ht_destroy(%struct.ht*) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

declare %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @cpp_defined(%struct.cpp_reader* %pfile, i8* %str, i32 %len) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 36
  %1 = load %struct.ht*, %struct.ht** %hash_table, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call = call %struct.ht_identifier* @ht_lookup(%struct.ht* %1, i8* %2, i32 %3, i32 0)
  %4 = bitcast %struct.ht_identifier* %call to %struct.cpp_hashnode*
  store %struct.cpp_hashnode* %4, %struct.cpp_hashnode** %node, align 8
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %5, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @cpp_forall_identifiers(%struct.cpp_reader* %pfile, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* %cb, i8* %v) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %cb.addr = alloca i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)*, align 8
  %v.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* %cb, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)** %cb.addr, align 8
  store i8* %v, i8** %v.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 36
  %1 = load %struct.ht*, %struct.ht** %hash_table, align 8
  %2 = load i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)*, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)** %cb.addr, align 8
  %3 = bitcast i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* %2 to i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*
  %4 = load i8*, i8** %v.addr, align 8
  call void @ht_forall(%struct.ht* %1, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %3, i8* %4)
  ret void
}

declare void @ht_forall(%struct.ht*, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, i8*) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
