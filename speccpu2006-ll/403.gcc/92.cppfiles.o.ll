; ModuleID = 'cppfiles.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps, %struct.line_map*, i32, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i32, i32, i32, i8*, i32, %struct.splay_tree_s*, i32, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.cpp_options, %struct.spec_nodes, i8, i8 }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, %struct.cpp_buffer*, i8*, %struct.include_file*, %struct.if_stack*, i32, i8, i8*, i8, i8, i8, i8, %struct.search_path }
%struct.include_file = type { i8*, %struct.cpp_hashnode*, %struct.search_path*, i8*, %struct.stat, i32, i32, i16, i16, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.if_stack = type opaque
%struct.search_path = type { %struct.search_path*, i8*, i32, i64, i64, i32, %struct.file_name_map* }
%struct.file_name_map = type { %struct.file_name_map*, i8*, i8* }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i8 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.utoken, %union.utoken, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.utoken = type { %struct.cpp_token* }
%struct.directive = type opaque
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon }
%struct.ht_identifier = type { i32, i8* }
%union.anon = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.cpp_token = type { i32, i16, i8, i8, %union.anon.0 }
%union.anon.0 = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.cpp_options = type { i8*, i8*, i32, %struct.cpp_pending*, i8*, %struct.search_path*, %struct.search_path*, %struct.file_name_map_list*, i8*, i32, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpp_pending = type opaque
%struct.file_name_map_list = type { %struct.file_name_map_list*, i8*, %struct.file_name_map* }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }

@.str = private unnamed_addr constant [44 x i8] c"Multiple include guards may be useful for:\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"no include path in which to find %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s is too large\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s is shorter than expected\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s is a block device\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"absolute file name in remap_filename\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"header.gcc\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_sch_istable = external constant [256 x i16], align 16

; Function Attrs: nounwind uwtable
define void @_cpp_init_includes(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* bitcast (i32 (i8*, i8*)* @strcmp to i32 (i64, i64)*), void (i64)* bitcast (void (i8*)* @free to void (i64)*), void (i64)* @destroy_node)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 25
  store %struct.splay_tree_s* %call, %struct.splay_tree_s** %all_include_files, align 8
  ret void
}

declare %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @destroy_node(i64 %v) #0 {
entry:
  %v.addr = alloca i64, align 8
  %f = alloca %struct.include_file*, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i64, i64* %v.addr, align 8
  %1 = inttoptr i64 %0 to %struct.include_file*
  store %struct.include_file* %1, %struct.include_file** %f, align 8
  %2 = load %struct.include_file*, %struct.include_file** %f, align 8
  %tobool = icmp ne %struct.include_file* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.include_file*, %struct.include_file** %f, align 8
  call void @purge_cache(%struct.include_file* %3)
  %4 = load %struct.include_file*, %struct.include_file** %f, align 8
  %5 = bitcast %struct.include_file* %4 to i8*
  call void @free(i8* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_cleanup_includes(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 25
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** %all_include_files, align 8
  call void @splay_tree_delete(%struct.splay_tree_s* %1)
  ret void
}

declare void @splay_tree_delete(%struct.splay_tree_s*) #1

; Function Attrs: nounwind uwtable
define void @_cpp_never_reread(%struct.include_file* %file) #0 {
entry:
  %file.addr = alloca %struct.include_file*, align 8
  store %struct.include_file* %file, %struct.include_file** %file.addr, align 8
  %0 = load %struct.include_file*, %struct.include_file** %file.addr, align 8
  %cmacro = getelementptr inbounds %struct.include_file, %struct.include_file* %0, i32 0, i32 1
  store %struct.cpp_hashnode* inttoptr (i64 -1 to %struct.cpp_hashnode*), %struct.cpp_hashnode** %cmacro, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_fake_include(%struct.cpp_reader* %pfile, i8* %fname) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fname.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %fname.addr, align 8
  %call = call %struct.splay_tree_node_s* @find_or_create_entry(%struct.cpp_reader* %0, i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.splay_tree_node_s* @find_or_create_entry(%struct.cpp_reader* %pfile, i8* %fname) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fname.addr = alloca i8*, align 8
  %node = alloca %struct.splay_tree_node_s*, align 8
  %file = alloca %struct.include_file*, align 8
  %name = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %call = call noalias i8* @xstrdup(i8* %0)
  store i8* %call, i8** %name, align 8
  %1 = load i8*, i8** %name, align 8
  %call1 = call i8* @_cpp_simplify_pathname(i8* %1)
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 25
  %3 = load %struct.splay_tree_s*, %struct.splay_tree_s** %all_include_files, align 8
  %4 = load i8*, i8** %name, align 8
  %5 = ptrtoint i8* %4 to i64
  %call2 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %3, i64 %5)
  store %struct.splay_tree_node_s* %call2, %struct.splay_tree_node_s** %node, align 8
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %name, align 8
  call void @free(i8* %7) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call noalias i8* @xcalloc(i64 1, i64 192)
  %8 = bitcast i8* %call3 to %struct.include_file*
  store %struct.include_file* %8, %struct.include_file** %file, align 8
  %9 = load i8*, i8** %name, align 8
  %10 = load %struct.include_file*, %struct.include_file** %file, align 8
  %name4 = getelementptr inbounds %struct.include_file, %struct.include_file* %10, i32 0, i32 0
  store i8* %9, i8** %name4, align 8
  %call5 = call i32* @__errno_location() #6
  %11 = load i32, i32* %call5, align 4
  %12 = load %struct.include_file*, %struct.include_file** %file, align 8
  %err_no = getelementptr inbounds %struct.include_file, %struct.include_file* %12, i32 0, i32 6
  store i32 %11, i32* %err_no, align 4
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 25
  %14 = load %struct.splay_tree_s*, %struct.splay_tree_s** %all_include_files6, align 8
  %15 = load %struct.include_file*, %struct.include_file** %file, align 8
  %name7 = getelementptr inbounds %struct.include_file, %struct.include_file* %15, i32 0, i32 0
  %16 = load i8*, i8** %name7, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load %struct.include_file*, %struct.include_file** %file, align 8
  %19 = ptrtoint %struct.include_file* %18 to i64
  %call8 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %14, i64 %17, i64 %19)
  store %struct.splay_tree_node_s* %call8, %struct.splay_tree_node_s** %node, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  ret %struct.splay_tree_node_s* %20
}

; Function Attrs: nounwind uwtable
define i32 @cpp_included(%struct.cpp_reader* %pfile, i8* %fname) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fname.addr = alloca i8*, align 8
  %path = alloca %struct.search_path*, align 8
  %name = alloca i8*, align 8
  %n = alloca i8*, align 8
  %nd = alloca %struct.splay_tree_node_s*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load i8*, i8** %fname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %fname.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 36
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 25
  %5 = load %struct.splay_tree_s*, %struct.splay_tree_s** %all_include_files, align 8
  %6 = load i8*, i8** %fname.addr, align 8
  %7 = ptrtoint i8* %6 to i64
  %call = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %5, i64 %7)
  store %struct.splay_tree_node_s* %call, %struct.splay_tree_node_s** %nd, align 8
  %8 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %nd, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %9 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %nd, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %9, i32 0, i32 1
  %10 = load i64, i64* %value, align 8
  %tobool6 = icmp ne i64 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %11 = phi i1 [ false, %if.then ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i8*, i8** %fname.addr, align 8
  %call7 = call i64 @strlen(i8* %12) #7
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %max_include_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 26
  %14 = load i32, i32* %max_include_len, align 4
  %conv8 = zext i32 %14 to i64
  %add = add i64 %call7, %conv8
  %add9 = add i64 %add, 2
  %15 = alloca i8, i64 %add9
  store i8* %15, i8** %name, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 37
  %quote_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 5
  %17 = load %struct.search_path*, %struct.search_path** %quote_include, align 8
  store %struct.search_path* %17, %struct.search_path** %path, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load %struct.search_path*, %struct.search_path** %path, align 8
  %tobool10 = icmp ne %struct.search_path* %18, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct.search_path*, %struct.search_path** %path, align 8
  %name11 = getelementptr inbounds %struct.search_path, %struct.search_path* %20, i32 0, i32 1
  %21 = load i8*, i8** %name11, align 8
  %22 = load %struct.search_path*, %struct.search_path** %path, align 8
  %len = getelementptr inbounds %struct.search_path, %struct.search_path* %22, i32 0, i32 2
  %23 = load i32, i32* %len, align 4
  %conv12 = zext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %21, i64 %conv12, i32 1, i1 false)
  %24 = load %struct.search_path*, %struct.search_path** %path, align 8
  %len13 = getelementptr inbounds %struct.search_path, %struct.search_path* %24, i32 0, i32 2
  %25 = load i32, i32* %len13, align 4
  %idxprom = zext i32 %25 to i64
  %26 = load i8*, i8** %name, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  store i8 47, i8* %arrayidx14, align 1
  %27 = load %struct.search_path*, %struct.search_path** %path, align 8
  %len15 = getelementptr inbounds %struct.search_path, %struct.search_path* %27, i32 0, i32 2
  %28 = load i32, i32* %len15, align 4
  %add16 = add i32 %28, 1
  %idxprom17 = zext i32 %add16 to i64
  %29 = load i8*, i8** %name, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %29, i64 %idxprom17
  %30 = load i8*, i8** %fname.addr, align 8
  %call19 = call i8* @strcpy(i8* %arrayidx18, i8* %30) #4
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 37
  %remap = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts20, i32 0, i32 36
  %32 = load i8, i8* %remap, align 1
  %tobool21 = icmp ne i8 %32, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.body
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct.search_path*, %struct.search_path** %path, align 8
  %call23 = call i8* @remap_filename(%struct.cpp_reader* %33, i8* %34, %struct.search_path* %35)
  store i8* %call23, i8** %n, align 8
  br label %if.end.24

if.else:                                          ; preds = %for.body
  %36 = load i8*, i8** %name, align 8
  store i8* %36, i8** %n, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %37, i32 0, i32 25
  %38 = load %struct.splay_tree_s*, %struct.splay_tree_s** %all_include_files25, align 8
  %39 = load i8*, i8** %n, align 8
  %40 = ptrtoint i8* %39 to i64
  %call26 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %38, i64 %40)
  store %struct.splay_tree_node_s* %call26, %struct.splay_tree_node_s** %nd, align 8
  %41 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %nd, align 8
  %tobool27 = icmp ne %struct.splay_tree_node_s* %41, null
  br i1 %tobool27, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.24
  %42 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %nd, align 8
  %value28 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %42, i32 0, i32 1
  %43 = load i64, i64* %value28, align 8
  %tobool29 = icmp ne i64 %43, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true, %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %44 = load %struct.search_path*, %struct.search_path** %path, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %44, i32 0, i32 0
  %45 = load %struct.search_path*, %struct.search_path** %next, align 8
  store %struct.search_path* %45, %struct.search_path** %path, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.30, %land.end
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @remap_filename(%struct.cpp_reader* %pfile, i8* %name, %struct.search_path* %loc) #0 {
entry:
  %retval = alloca i8*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %name.addr = alloca i8*, align 8
  %loc.addr = alloca %struct.search_path*, align 8
  %map = alloca %struct.file_name_map*, align 8
  %from = alloca i8*, align 8
  %p = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %dname = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.search_path* %loc, %struct.search_path** %loc.addr, align 8
  %0 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %name_map = getelementptr inbounds %struct.search_path, %struct.search_path* %0, i32 0, i32 6
  %1 = load %struct.file_name_map*, %struct.file_name_map** %name_map, align 8
  %tobool = icmp ne %struct.file_name_map* %1, null
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %len = getelementptr inbounds %struct.search_path, %struct.search_path* %2, i32 0, i32 2
  %3 = load i32, i32* %len, align 4
  %add = add i32 %3, 1
  %conv = zext i32 %add to i64
  %4 = alloca i8, i64 %conv
  store i8* %4, i8** %dname, align 8
  %5 = load i8*, i8** %dname, align 8
  %6 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %name1 = getelementptr inbounds %struct.search_path, %struct.search_path* %6, i32 0, i32 1
  %7 = load i8*, i8** %name1, align 8
  %8 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %len2 = getelementptr inbounds %struct.search_path, %struct.search_path* %8, i32 0, i32 2
  %9 = load i32, i32* %len2, align 4
  %conv3 = zext i32 %9 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %conv3, i32 1, i1 false)
  %10 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %len4 = getelementptr inbounds %struct.search_path, %struct.search_path* %10, i32 0, i32 2
  %11 = load i32, i32* %len4, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load i8*, i8** %dname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load i8*, i8** %dname, align 8
  %call = call %struct.file_name_map* @read_name_map(%struct.cpp_reader* %13, i8* %14)
  %15 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %name_map5 = getelementptr inbounds %struct.search_path, %struct.search_path* %15, i32 0, i32 6
  store %struct.file_name_map* %call, %struct.file_name_map** %name_map5, align 8
  %16 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %name_map6 = getelementptr inbounds %struct.search_path, %struct.search_path* %16, i32 0, i32 6
  %17 = load %struct.file_name_map*, %struct.file_name_map** %name_map6, align 8
  %tobool7 = icmp ne %struct.file_name_map* %17, null
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  %18 = load i8*, i8** %name.addr, align 8
  store i8* %18, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %len10 = getelementptr inbounds %struct.search_path, %struct.search_path* %20, i32 0, i32 2
  %21 = load i32, i32* %len10, align 4
  %idx.ext = zext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8* %add.ptr11, i8** %from, align 8
  %22 = load %struct.search_path*, %struct.search_path** %loc.addr, align 8
  %name_map12 = getelementptr inbounds %struct.search_path, %struct.search_path* %22, i32 0, i32 6
  %23 = load %struct.file_name_map*, %struct.file_name_map** %name_map12, align 8
  store %struct.file_name_map* %23, %struct.file_name_map** %map, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %24 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %tobool13 = icmp ne %struct.file_name_map* %24, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %map_from = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %25, i32 0, i32 1
  %26 = load i8*, i8** %map_from, align 8
  %27 = load i8*, i8** %from, align 8
  %call14 = call i32 @strcmp(i8* %26, i8* %27) #7
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body
  %28 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %map_to = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %28, i32 0, i32 2
  %29 = load i8*, i8** %map_to, align 8
  store i8* %29, i8** %retval
  br label %return

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %30 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %map_next = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %30, i32 0, i32 0
  %31 = load %struct.file_name_map*, %struct.file_name_map** %map_next, align 8
  store %struct.file_name_map* %31, %struct.file_name_map** %map, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i8*, i8** %name.addr, align 8
  %call18 = call i8* @strrchr(i8* %32, i32 47) #7
  store i8* %call18, i8** %p, align 8
  %33 = load i8*, i8** %p, align 8
  %tobool19 = icmp ne i8* %33, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.end
  %34 = load i8*, i8** %name.addr, align 8
  store i8* %34, i8** %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  %35 = load i8*, i8** %p, align 8
  %36 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %35, %36
  br i1 %cmp, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %38 = load i8*, i8** %p, align 8
  %39 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add25 = add nsw i64 %sub.ptr.sub, 1
  %40 = alloca i8, i64 %add25
  store i8* %40, i8** %dir, align 8
  %41 = load i8*, i8** %dir, align 8
  %42 = load i8*, i8** %name.addr, align 8
  %43 = load i8*, i8** %p, align 8
  %44 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %44 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 %sub.ptr.sub28, i32 1, i1 false)
  %45 = load i8*, i8** %p, align 8
  %46 = load i8*, i8** %name.addr, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %46 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %47 = load i8*, i8** %dir, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %47, i64 %sub.ptr.sub31
  store i8 0, i8* %arrayidx32, align 1
  %48 = load i8*, i8** %p, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %add.ptr33, i8** %from, align 8
  %49 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %50 = load i8*, i8** %dir, align 8
  %call34 = call %struct.file_name_map* @read_name_map(%struct.cpp_reader* %49, i8* %50)
  store %struct.file_name_map* %call34, %struct.file_name_map** %map, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.44, %if.end.24
  %51 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %tobool36 = icmp ne %struct.file_name_map* %51, null
  br i1 %tobool36, label %for.body.37, label %for.end.46

for.body.37:                                      ; preds = %for.cond.35
  %52 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %map_from38 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %52, i32 0, i32 1
  %53 = load i8*, i8** %map_from38, align 8
  %54 = load i8*, i8** %from, align 8
  %call39 = call i32 @strcmp(i8* %53, i8* %54) #7
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %for.body.37
  %55 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %map_to42 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %55, i32 0, i32 2
  %56 = load i8*, i8** %map_to42, align 8
  store i8* %56, i8** %retval
  br label %return

if.end.43:                                        ; preds = %for.body.37
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %57 = load %struct.file_name_map*, %struct.file_name_map** %map, align 8
  %map_next45 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %57, i32 0, i32 0
  %58 = load %struct.file_name_map*, %struct.file_name_map** %map_next45, align 8
  store %struct.file_name_map* %58, %struct.file_name_map** %map, align 8
  br label %for.cond.35

for.end.46:                                       ; preds = %for.cond.35
  %59 = load i8*, i8** %name.addr, align 8
  store i8* %59, i8** %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then.41, %if.then.20, %if.then.16, %if.then.8
  %60 = load i8*, i8** %retval
  ret i8* %60
}

; Function Attrs: nounwind uwtable
define void @cpp_make_system_header(%struct.cpp_reader* %pfile, i32 %syshdr, i32 %externc) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %syshdr.addr = alloca i32, align 4
  %externc.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %syshdr, i32* %syshdr.addr, align 4
  store i32 %externc, i32* %externc.addr, align 4
  store i32 0, i32* %flags, align 4
  %0 = load i32, i32* %syshdr.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %externc.addr, align 4
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  %add = add nsw i32 1, %conv
  store i32 %add, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 3
  %4 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 0
  %5 = load i8*, i8** %to_file, align 8
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 4
  %7 = load i32, i32* %line, align 4
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 3
  %9 = load %struct.line_map*, %struct.line_map** %map1, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i32 0, i32 1
  %10 = load i32, i32* %to_line, align 4
  %add2 = add i32 %7, %10
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 3
  %12 = load %struct.line_map*, %struct.line_map** %map3, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i32 0, i32 2
  %13 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add2, %13
  %14 = load i32, i32* %flags, align 4
  call void @_cpp_do_file_change(%struct.cpp_reader* %2, i32 2, i8* %5, i32 %sub, i32 %14)
  ret void
}

declare void @_cpp_do_file_change(%struct.cpp_reader*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @_cpp_report_missing_guards(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %banner = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 0, i32* %banner, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %all_include_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 25
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** %all_include_files, align 8
  %2 = bitcast i32* %banner to i8*
  %call = call i32 @splay_tree_foreach(%struct.splay_tree_s* %1, i32 (%struct.splay_tree_node_s*, i8*)* @report_missing_guard, i8* %2)
  ret void
}

declare i32 @splay_tree_foreach(%struct.splay_tree_s*, i32 (%struct.splay_tree_node_s*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @report_missing_guard(%struct.splay_tree_node_s* %n, i8* %b) #0 {
entry:
  %n.addr = alloca %struct.splay_tree_node_s*, align 8
  %b.addr = alloca i8*, align 8
  %f = alloca %struct.include_file*, align 8
  %bannerp = alloca i32*, align 8
  store %struct.splay_tree_node_s* %n, %struct.splay_tree_node_s** %n.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n.addr, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i32 0, i32 1
  %1 = load i64, i64* %value, align 8
  %2 = inttoptr i64 %1 to %struct.include_file*
  store %struct.include_file* %2, %struct.include_file** %f, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %bannerp, align 8
  %5 = load %struct.include_file*, %struct.include_file** %f, align 8
  %tobool = icmp ne %struct.include_file* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.include_file*, %struct.include_file** %f, align 8
  %cmacro = getelementptr inbounds %struct.include_file, %struct.include_file* %6, i32 0, i32 1
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8
  %cmp = icmp eq %struct.cpp_hashnode* %7, null
  br i1 %cmp, label %land.lhs.true.1, label %if.end.9

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %8 = load %struct.include_file*, %struct.include_file** %f, align 8
  %include_count = getelementptr inbounds %struct.include_file, %struct.include_file* %8, i32 0, i32 7
  %9 = load i16, i16* %include_count, align 2
  %conv = zext i16 %9 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true.1
  %10 = load i32*, i32** %bannerp, align 8
  %11 = load i32, i32* %10, align 4
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load i32*, i32** %bannerp, align 8
  store i32 1, i32* %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %14 = load %struct.include_file*, %struct.include_file** %f, align 8
  %name = getelementptr inbounds %struct.include_file, %struct.include_file* %14, i32 0, i32 0
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 @fputs(i8* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true.1, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_cpp_execute_include(%struct.cpp_reader* %pfile, %struct.cpp_token* %header, i32 %type) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %header.addr = alloca %struct.cpp_token*, align 8
  %type.addr = alloca i32, align 4
  %stacked = alloca i8, align 1
  %inc = alloca %struct.include_file*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %header, %struct.cpp_token** %header.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8 0, i8* %stacked, align 1
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %header.addr, align 8
  %2 = load i32, i32* %type.addr, align 4
  %call = call %struct.include_file* @find_include_file(%struct.cpp_reader* %0, %struct.cpp_token* %1, i32 %2)
  store %struct.include_file* %call, %struct.include_file** %inc, align 8
  %3 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %cmp = icmp eq %struct.include_file* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %5 = load %struct.cpp_token*, %struct.cpp_token** %header.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  %6 = load i8*, i8** %text, align 8
  %7 = load %struct.cpp_token*, %struct.cpp_token** %header.addr, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 2
  %bf.load = load i8, i8* %type1, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp2 = icmp eq i32 %bf.cast, 63
  %conv = zext i1 %cmp2 to i32
  call void @handle_missing_header(%struct.cpp_reader* %4, i8* %6, i32 %conv)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %8 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %cmp3 = icmp ne %struct.include_file* %8, inttoptr (i64 -1 to %struct.include_file*)
  br i1 %cmp3, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.else
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %call6 = call zeroext i1 @stack_include_file(%struct.cpp_reader* %9, %struct.include_file* %10)
  %frombool = zext i1 %call6 to i8
  store i8 %frombool, i8* %stacked, align 1
  %11 = load i32, i32* %type.addr, align 4
  %cmp7 = icmp eq i32 %11, 2
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.5
  %12 = load %struct.include_file*, %struct.include_file** %inc, align 8
  call void @_cpp_never_reread(%struct.include_file* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %13 = load i8, i8* %stacked, align 1
  %tobool = trunc i8 %13 to i1
  ret i1 %tobool
}

; Function Attrs: nounwind uwtable
define internal %struct.include_file* @find_include_file(%struct.cpp_reader* %pfile, %struct.cpp_token* %header, i32 %type) #0 {
entry:
  %retval = alloca %struct.include_file*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %header.addr = alloca %struct.cpp_token*, align 8
  %type.addr = alloca i32, align 4
  %fname = alloca i8*, align 8
  %path = alloca %struct.search_path*, align 8
  %file = alloca %struct.include_file*, align 8
  %name = alloca i8*, align 8
  %n = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %header, %struct.cpp_token** %header.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.cpp_token*, %struct.cpp_token** %header.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  %1 = load i8*, i8** %text, align 8
  store i8* %1, i8** %fname, align 8
  %2 = load i8*, i8** %fname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %fname, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 36
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %7 = load i8*, i8** %fname, align 8
  %call = call %struct.include_file* @open_file(%struct.cpp_reader* %6, i8* %7)
  store %struct.include_file* %call, %struct.include_file** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %8, 1
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 0
  %10 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %10, i32 0, i32 6
  %11 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %foundhere = getelementptr inbounds %struct.include_file, %struct.include_file* %11, i32 0, i32 2
  %12 = load %struct.search_path*, %struct.search_path** %foundhere, align 8
  %tobool = icmp ne %struct.search_path* %12, null
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 0
  %14 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer9, align 8
  %inc10 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %14, i32 0, i32 6
  %15 = load %struct.include_file*, %struct.include_file** %inc10, align 8
  %foundhere11 = getelementptr inbounds %struct.include_file, %struct.include_file* %15, i32 0, i32 2
  %16 = load %struct.search_path*, %struct.search_path** %foundhere11, align 8
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %16, i32 0, i32 0
  %17 = load %struct.search_path*, %struct.search_path** %next, align 8
  store %struct.search_path* %17, %struct.search_path** %path, align 8
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %if.end
  %18 = load %struct.cpp_token*, %struct.cpp_token** %header.addr, align 8
  %type12 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %18, i32 0, i32 2
  %bf.load = load i8, i8* %type12, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp13 = icmp eq i32 %bf.cast, 63
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 37
  %bracket_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 6
  %20 = load %struct.search_path*, %struct.search_path** %bracket_include, align 8
  store %struct.search_path* %20, %struct.search_path** %path, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.else
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load i32, i32* %type.addr, align 4
  %call17 = call %struct.search_path* @search_from(%struct.cpp_reader* %21, i32 %22)
  store %struct.search_path* %call17, %struct.search_path** %path, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  %23 = load %struct.search_path*, %struct.search_path** %path, align 8
  %cmp20 = icmp eq %struct.search_path* %23, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load i8*, i8** %fname, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %25)
  store %struct.include_file* inttoptr (i64 -1 to %struct.include_file*), %struct.include_file** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %26 = load i8*, i8** %fname, align 8
  %call24 = call i64 @strlen(i8* %26) #7
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %max_include_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 26
  %28 = load i32, i32* %max_include_len, align 4
  %conv25 = zext i32 %28 to i64
  %add = add i64 %call24, %conv25
  %add26 = add i64 %add, 2
  %29 = alloca i8, i64 %add26
  store i8* %29, i8** %name, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %30 = load %struct.search_path*, %struct.search_path** %path, align 8
  %tobool27 = icmp ne %struct.search_path* %30, null
  br i1 %tobool27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.search_path*, %struct.search_path** %path, align 8
  %len28 = getelementptr inbounds %struct.search_path, %struct.search_path* %31, i32 0, i32 2
  %32 = load i32, i32* %len28, align 4
  store i32 %32, i32* %len, align 4
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct.search_path*, %struct.search_path** %path, align 8
  %name29 = getelementptr inbounds %struct.search_path, %struct.search_path* %34, i32 0, i32 1
  %35 = load i8*, i8** %name29, align 8
  %36 = load i32, i32* %len, align 4
  %conv30 = sext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 %conv30, i32 1, i1 false)
  %37 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %37, 1
  %idxprom = sext i32 %sub to i64
  %38 = load i8*, i8** %name, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %39 to i32
  %cmp33 = icmp eq i32 %conv32, 47
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  %40 = load i32, i32* %len, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %for.body
  %41 = load i32, i32* %len, align 4
  %idxprom37 = sext i32 %41 to i64
  %42 = load i8*, i8** %name, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %42, i64 %idxprom37
  store i8 47, i8* %arrayidx38, align 1
  %43 = load i32, i32* %len, align 4
  %add39 = add nsw i32 %43, 1
  %idxprom40 = sext i32 %add39 to i64
  %44 = load i8*, i8** %name, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 %idxprom40
  %45 = load i8*, i8** %fname, align 8
  %call42 = call i8* @strcpy(i8* %arrayidx41, i8* %45) #4
  %46 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts43 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %46, i32 0, i32 37
  %remap = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts43, i32 0, i32 36
  %47 = load i8, i8* %remap, align 1
  %tobool44 = icmp ne i8 %47, 0
  br i1 %tobool44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.end.36
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %49 = load i8*, i8** %name, align 8
  %50 = load %struct.search_path*, %struct.search_path** %path, align 8
  %call46 = call i8* @remap_filename(%struct.cpp_reader* %48, i8* %49, %struct.search_path* %50)
  store i8* %call46, i8** %n, align 8
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.36
  %51 = load i8*, i8** %name, align 8
  store i8* %51, i8** %n, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.45
  %52 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %53 = load i8*, i8** %n, align 8
  %call49 = call %struct.include_file* @open_file(%struct.cpp_reader* %52, i8* %53)
  store %struct.include_file* %call49, %struct.include_file** %file, align 8
  %54 = load %struct.include_file*, %struct.include_file** %file, align 8
  %tobool50 = icmp ne %struct.include_file* %54, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %55 = load %struct.search_path*, %struct.search_path** %path, align 8
  %56 = load %struct.include_file*, %struct.include_file** %file, align 8
  %foundhere52 = getelementptr inbounds %struct.include_file, %struct.include_file* %56, i32 0, i32 2
  store %struct.search_path* %55, %struct.search_path** %foundhere52, align 8
  %57 = load %struct.include_file*, %struct.include_file** %file, align 8
  store %struct.include_file* %57, %struct.include_file** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %58 = load %struct.search_path*, %struct.search_path** %path, align 8
  %next54 = getelementptr inbounds %struct.search_path, %struct.search_path* %58, i32 0, i32 0
  %59 = load %struct.search_path*, %struct.search_path** %next54, align 8
  store %struct.search_path* %59, %struct.search_path** %path, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.include_file* null, %struct.include_file** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.51, %if.then.22, %if.then
  %60 = load %struct.include_file*, %struct.include_file** %retval
  ret %struct.include_file* %60
}

; Function Attrs: nounwind uwtable
define internal void @handle_missing_header(%struct.cpp_reader* %pfile, i8* %fname, i32 %angle_brackets) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fname.addr = alloca i8*, align 8
  %angle_brackets.addr = alloca i32, align 4
  %print_dep = alloca i32, align 4
  %ptr = alloca %struct.search_path*, align 8
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %fname_len = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %angle_brackets, i32* %angle_brackets.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 21
  %1 = load i8, i8* %print_deps, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %angle_brackets.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 3
  %4 = load %struct.line_map*, %struct.line_map** %map, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 5
  %5 = load i8, i8* %sysp, align 1
  %conv1 = zext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %cmp = icmp sgt i32 %conv, %lor.ext
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %print_dep, align 4
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 37
  %print_deps_missing_files = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts4, i32 0, i32 23
  %8 = load i8, i8* %print_deps_missing_files, align 1
  %conv5 = zext i8 %8 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else.34

land.lhs.true:                                    ; preds = %lor.end
  %9 = load i32, i32* %print_dep, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then, label %if.else.34

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %angle_brackets.addr, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %if.then
  %11 = load i8*, i8** %fname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 47
  br i1 %cmp10, label %if.then.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %13 = load i8*, i8** %fname.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 36
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.then
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 31
  %16 = load %struct.deps*, %struct.deps** %deps, align 8
  %17 = load i8*, i8** %fname.addr, align 8
  call void @deps_add_dep(%struct.deps* %16, i8* %17)
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false.12
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 37
  %bracket_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts18, i32 0, i32 6
  %19 = load %struct.search_path*, %struct.search_path** %bracket_include, align 8
  store %struct.search_path* %19, %struct.search_path** %ptr, align 8
  store i32 0, i32* %len, align 4
  %20 = load i8*, i8** %fname.addr, align 8
  %call = call i64 @strlen(i8* %20) #7
  %conv19 = trunc i64 %call to i32
  store i32 %conv19, i32* %fname_len, align 4
  %21 = load %struct.search_path*, %struct.search_path** %ptr, align 8
  %tobool20 = icmp ne %struct.search_path* %21, null
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.else
  %22 = load %struct.search_path*, %struct.search_path** %ptr, align 8
  %len22 = getelementptr inbounds %struct.search_path, %struct.search_path* %22, i32 0, i32 2
  %23 = load i32, i32* %len22, align 4
  store i32 %23, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.else
  %24 = load i32, i32* %len, align 4
  %25 = load i32, i32* %fname_len, align 4
  %add = add nsw i32 %24, %25
  %add23 = add nsw i32 %add, 2
  %conv24 = sext i32 %add23 to i64
  %26 = alloca i8, i64 %conv24
  store i8* %26, i8** %p, align 8
  %27 = load i32, i32* %len, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end
  %28 = load i8*, i8** %p, align 8
  %29 = load %struct.search_path*, %struct.search_path** %ptr, align 8
  %name = getelementptr inbounds %struct.search_path, %struct.search_path* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load i32, i32* %len, align 4
  %conv27 = sext i32 %31 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %conv27, i32 1, i1 false)
  %32 = load i32, i32* %len, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load i8*, i8** %p, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  store i8 47, i8* %arrayidx28, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end
  %34 = load i8*, i8** %p, align 8
  %35 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  %36 = load i8*, i8** %fname.addr, align 8
  %37 = load i32, i32* %fname_len, align 4
  %add30 = add nsw i32 %37, 1
  %conv31 = sext i32 %add30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %36, i64 %conv31, i32 1, i1 false)
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps32 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %38, i32 0, i32 31
  %39 = load %struct.deps*, %struct.deps** %deps32, align 8
  %40 = load i8*, i8** %p, align 8
  call void @deps_add_dep(%struct.deps* %39, i8* %40)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %if.then.17
  br label %if.end.46

if.else.34:                                       ; preds = %land.lhs.true, %lor.end
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %41, i32 0, i32 37
  %print_deps36 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts35, i32 0, i32 21
  %42 = load i8, i8* %print_deps36, align 1
  %conv37 = zext i8 %42 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.else.44

land.lhs.true.39:                                 ; preds = %if.else.34
  %43 = load i32, i32* %print_dep, align 4
  %tobool40 = icmp ne i32 %43, 0
  br i1 %tobool40, label %if.else.44, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.39
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %45 = load i8*, i8** %fname.addr, align 8
  %call42 = call i32* @__errno_location() #6
  %46 = load i32, i32* %call42, align 4
  %call43 = call i8* @xstrerror(i32 %46)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %45, i8* %call43)
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.39, %if.else.34
  %47 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %48 = load i8*, i8** %fname.addr, align 8
  call void @cpp_error_from_errno(%struct.cpp_reader* %47, i8* %48)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @stack_include_file(%struct.cpp_reader* %pfile, %struct.include_file* %inc) #0 {
entry:
  %retval = alloca i1, align 1
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %inc.addr = alloca %struct.include_file*, align 8
  %fp = alloca %struct.cpp_buffer*, align 8
  %sysp = alloca i32, align 4
  %filename = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.include_file* %inc, %struct.include_file** %inc.addr, align 8
  %0 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro = getelementptr inbounds %struct.include_file, %struct.include_file* %0, i32 0, i32 1
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro1 = getelementptr inbounds %struct.include_file, %struct.include_file* %2, i32 0, i32 1
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro1, align 8
  %cmp = icmp eq %struct.cpp_hashnode* %3, inttoptr (i64 -1 to %struct.cpp_hashnode*)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro2 = getelementptr inbounds %struct.include_file, %struct.include_file* %4, i32 0, i32 1
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro2, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %5, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp3 = icmp eq i32 %bf.cast, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 3
  %7 = load %struct.line_map*, %struct.line_map** %map, align 8
  %tobool4 = icmp ne %struct.line_map* %7, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 3
  %9 = load %struct.line_map*, %struct.line_map** %map5, align 8
  %sysp6 = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i32 0, i32 5
  %10 = load i8, i8* %sysp6, align 1
  %conv = zext i8 %10 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %11 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %foundhere = getelementptr inbounds %struct.include_file, %struct.include_file* %11, i32 0, i32 2
  %12 = load %struct.search_path*, %struct.search_path** %foundhere, align 8
  %tobool7 = icmp ne %struct.search_path* %12, null
  br i1 %tobool7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end
  %13 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %foundhere9 = getelementptr inbounds %struct.include_file, %struct.include_file* %13, i32 0, i32 2
  %14 = load %struct.search_path*, %struct.search_path** %foundhere9, align 8
  %sysp10 = getelementptr inbounds %struct.search_path, %struct.search_path* %14, i32 0, i32 5
  %15 = load i32, i32* %sysp10, align 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.8
  %cond13 = phi i32 [ %15, %cond.true.8 ], [ 0, %cond.false.11 ]
  %cmp14 = icmp sgt i32 %cond, %cond13
  br i1 %cmp14, label %cond.true.16, label %cond.false.26

cond.true.16:                                     ; preds = %cond.end.12
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 3
  %17 = load %struct.line_map*, %struct.line_map** %map17, align 8
  %tobool18 = icmp ne %struct.line_map* %17, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.true.16
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 3
  %19 = load %struct.line_map*, %struct.line_map** %map20, align 8
  %sysp21 = getelementptr inbounds %struct.line_map, %struct.line_map* %19, i32 0, i32 5
  %20 = load i8, i8* %sysp21, align 1
  %conv22 = zext i8 %20 to i32
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.true.16
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.19
  %cond25 = phi i32 [ %conv22, %cond.true.19 ], [ 0, %cond.false.23 ]
  br label %cond.end.35

cond.false.26:                                    ; preds = %cond.end.12
  %21 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %foundhere27 = getelementptr inbounds %struct.include_file, %struct.include_file* %21, i32 0, i32 2
  %22 = load %struct.search_path*, %struct.search_path** %foundhere27, align 8
  %tobool28 = icmp ne %struct.search_path* %22, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.false.26
  %23 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %foundhere30 = getelementptr inbounds %struct.include_file, %struct.include_file* %23, i32 0, i32 2
  %24 = load %struct.search_path*, %struct.search_path** %foundhere30, align 8
  %sysp31 = getelementptr inbounds %struct.search_path, %struct.search_path* %24, i32 0, i32 5
  %25 = load i32, i32* %sysp31, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.false.26
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.29
  %cond34 = phi i32 [ %25, %cond.true.29 ], [ 0, %cond.false.32 ]
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.end.33, %cond.end.24
  %cond36 = phi i32 [ %cond25, %cond.end.24 ], [ %cond34, %cond.end.33 ]
  store i32 %cond36, i32* %sysp, align 4
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 37
  %print_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 21
  %27 = load i8, i8* %print_deps, align 1
  %conv37 = zext i8 %27 to i32
  %28 = load i32, i32* %sysp, align 4
  %cmp38 = icmp sgt i32 %conv37, %28
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.43

land.lhs.true.40:                                 ; preds = %cond.end.35
  %29 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %include_count = getelementptr inbounds %struct.include_file, %struct.include_file* %29, i32 0, i32 7
  %30 = load i16, i16* %include_count, align 2
  %tobool41 = icmp ne i16 %30, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.40
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 31
  %32 = load %struct.deps*, %struct.deps** %deps, align 8
  %33 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %name = getelementptr inbounds %struct.include_file, %struct.include_file* %33, i32 0, i32 0
  %34 = load i8*, i8** %name, align 8
  call void @deps_add_dep(%struct.deps* %32, i8* %34)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.40, %cond.end.35
  %35 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %buffer = getelementptr inbounds %struct.include_file, %struct.include_file* %35, i32 0, i32 3
  %36 = load i8*, i8** %buffer, align 8
  %tobool44 = icmp ne i8* %36, null
  br i1 %tobool44, label %if.end.59, label %if.then.45

if.then.45:                                       ; preds = %if.end.43
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %38 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %call = call i32 @read_include_file(%struct.cpp_reader* %37, %struct.include_file* %38)
  %tobool46 = icmp ne i32 %call, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.45
  %39 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  call void @_cpp_never_reread(%struct.include_file* %39)
  store i1 false, i1* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.45
  %40 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st = getelementptr inbounds %struct.include_file, %struct.include_file* %40, i32 0, i32 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %41 = load i32, i32* %st_mode, align 4
  %and = and i32 %41, 61440
  %cmp49 = icmp eq i32 %and, 32768
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.56

land.lhs.true.51:                                 ; preds = %if.end.48
  %42 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st52 = getelementptr inbounds %struct.include_file, %struct.include_file* %42, i32 0, i32 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st52, i32 0, i32 8
  %43 = load i64, i64* %st_size, align 8
  %cmp53 = icmp eq i64 %43, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.51
  %44 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  call void @_cpp_never_reread(%struct.include_file* %44)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.51, %if.end.48
  %45 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %fd = getelementptr inbounds %struct.include_file, %struct.include_file* %45, i32 0, i32 5
  %46 = load i32, i32* %fd, align 4
  %call57 = call i32 @close(i32 %46)
  %47 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %fd58 = getelementptr inbounds %struct.include_file, %struct.include_file* %47, i32 0, i32 5
  store i32 -1, i32* %fd58, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.56, %if.end.43
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer60 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %48, i32 0, i32 0
  %49 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer60, align 8
  %tobool61 = icmp ne %struct.cpp_buffer* %49, null
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.59
  %50 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %include_count63 = getelementptr inbounds %struct.include_file, %struct.include_file* %50, i32 0, i32 7
  %51 = load i16, i16* %include_count63, align 2
  %inc64 = add i16 %51, 1
  store i16 %inc64, i16* %include_count63, align 2
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.59
  %52 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %53 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %buffer66 = getelementptr inbounds %struct.include_file, %struct.include_file* %53, i32 0, i32 3
  %54 = load i8*, i8** %buffer66, align 8
  %55 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st67 = getelementptr inbounds %struct.include_file, %struct.include_file* %55, i32 0, i32 4
  %st_size68 = getelementptr inbounds %struct.stat, %struct.stat* %st67, i32 0, i32 8
  %56 = load i64, i64* %st_size68, align 8
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts69 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %57, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts69, i32 0, i32 43
  %58 = load i8, i8* %preprocessed, align 1
  %conv70 = zext i8 %58 to i32
  %call71 = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %52, i8* %54, i64 %56, i32 %conv70, i32 0)
  store %struct.cpp_buffer* %call71, %struct.cpp_buffer** %fp, align 8
  %59 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %60 = load %struct.cpp_buffer*, %struct.cpp_buffer** %fp, align 8
  %inc72 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %60, i32 0, i32 6
  store %struct.include_file* %59, %struct.include_file** %inc72, align 8
  %61 = load %struct.cpp_buffer*, %struct.cpp_buffer** %fp, align 8
  %inc73 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %61, i32 0, i32 6
  %62 = load %struct.include_file*, %struct.include_file** %inc73, align 8
  %refcnt = getelementptr inbounds %struct.include_file, %struct.include_file* %62, i32 0, i32 8
  %63 = load i16, i16* %refcnt, align 2
  %inc74 = add i16 %63, 1
  store i16 %inc74, i16* %refcnt, align 2
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %64, i32 0, i32 14
  store i8 1, i8* %mi_valid, align 1
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %65, i32 0, i32 12
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro, align 8
  %66 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %name75 = getelementptr inbounds %struct.include_file, %struct.include_file* %66, i32 0, i32 0
  %67 = load i8*, i8** %name75, align 8
  store i8* %67, i8** %filename, align 8
  %68 = load i8*, i8** %filename, align 8
  %69 = load i8, i8* %68, align 1
  %conv76 = sext i8 %69 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %filename, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.65
  %70 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %71 = load i8*, i8** %filename, align 8
  %72 = load i32, i32* %sysp, align 4
  call void @_cpp_do_file_change(%struct.cpp_reader* %70, i32 0, i8* %71, i32 1, i32 %72)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.47, %if.then
  %73 = load i1, i1* %retval
  ret i1 %73
}

; Function Attrs: nounwind uwtable
define i32 @_cpp_compare_file_date(%struct.cpp_reader* %pfile, %struct.cpp_token* %header) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %header.addr = alloca %struct.cpp_token*, align 8
  %inc = alloca %struct.include_file*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %header, %struct.cpp_token** %header.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %header.addr, align 8
  %call = call %struct.include_file* @find_include_file(%struct.cpp_reader* %0, %struct.cpp_token* %1, i32 0)
  store %struct.include_file* %call, %struct.include_file** %inc, align 8
  %2 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %cmp = icmp eq %struct.include_file* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %cmp1 = icmp eq %struct.include_file* %3, inttoptr (i64 -1 to %struct.include_file*)
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %fd = getelementptr inbounds %struct.include_file, %struct.include_file* %4, i32 0, i32 5
  %5 = load i32, i32* %fd, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %fd4 = getelementptr inbounds %struct.include_file, %struct.include_file* %6, i32 0, i32 5
  %7 = load i32, i32* %fd4, align 4
  %call5 = call i32 @close(i32 %7)
  %8 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %fd6 = getelementptr inbounds %struct.include_file, %struct.include_file* %8, i32 0, i32 5
  store i32 -1, i32* %fd6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %st = getelementptr inbounds %struct.include_file, %struct.include_file* %9, i32 0, i32 4
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %10 = load i64, i64* %tv_sec, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 0
  %12 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc8 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i32 0, i32 6
  %13 = load %struct.include_file*, %struct.include_file** %inc8, align 8
  %st9 = getelementptr inbounds %struct.include_file, %struct.include_file* %13, i32 0, i32 4
  %st_mtim10 = getelementptr inbounds %struct.stat, %struct.stat* %st9, i32 0, i32 12
  %tv_sec11 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim10, i32 0, i32 0
  %14 = load i64, i64* %tv_sec11, align 8
  %cmp12 = icmp sgt i64 %10, %14
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @_cpp_read_file(%struct.cpp_reader* %pfile, i8* %fname) #0 {
entry:
  %retval = alloca i1, align 1
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %fname.addr = alloca i8*, align 8
  %f = alloca %struct.include_file*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %fname.addr, align 8
  %call = call %struct.include_file* @open_file(%struct.cpp_reader* %0, i8* %1)
  store %struct.include_file* %call, %struct.include_file** %f, align 8
  %2 = load %struct.include_file*, %struct.include_file** %f, align 8
  %cmp = icmp eq %struct.include_file* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load i8*, i8** %fname.addr, align 8
  call void @cpp_error_from_errno(%struct.cpp_reader* %3, i8* %4)
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.include_file*, %struct.include_file** %f, align 8
  %call1 = call zeroext i1 @stack_include_file(%struct.cpp_reader* %5, %struct.include_file* %6)
  store i1 %call1, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, i1* %retval
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define internal %struct.include_file* @open_file(%struct.cpp_reader* %pfile, i8* %filename) #0 {
entry:
  %retval = alloca %struct.include_file*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %filename.addr = alloca i8*, align 8
  %nd = alloca %struct.splay_tree_node_s*, align 8
  %file = alloca %struct.include_file*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.splay_tree_node_s* @find_or_create_entry(%struct.cpp_reader* %0, i8* %1)
  store %struct.splay_tree_node_s* %call, %struct.splay_tree_node_s** %nd, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %nd, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %2, i32 0, i32 1
  %3 = load i64, i64* %value, align 8
  %4 = inttoptr i64 %3 to %struct.include_file*
  store %struct.include_file* %4, %struct.include_file** %file, align 8
  %5 = load %struct.include_file*, %struct.include_file** %file, align 8
  %err_no = getelementptr inbounds %struct.include_file, %struct.include_file* %5, i32 0, i32 6
  %6 = load i32, i32* %err_no, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.include_file*, %struct.include_file** %file, align 8
  %err_no1 = getelementptr inbounds %struct.include_file, %struct.include_file* %7, i32 0, i32 6
  %8 = load i32, i32* %err_no1, align 4
  %call2 = call i32* @__errno_location() #6
  store i32 %8, i32* %call2, align 4
  store %struct.include_file* null, %struct.include_file** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.include_file*, %struct.include_file** %file, align 8
  %cmacro = getelementptr inbounds %struct.include_file, %struct.include_file* %9, i32 0, i32 1
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8
  %tobool3 = icmp ne %struct.cpp_hashnode* %10, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.include_file*, %struct.include_file** %file, align 8
  %cmacro4 = getelementptr inbounds %struct.include_file, %struct.include_file* %11, i32 0, i32 1
  %12 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro4, align 8
  %cmp = icmp eq %struct.cpp_hashnode* %12, inttoptr (i64 -1 to %struct.cpp_hashnode*)
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.include_file*, %struct.include_file** %file, align 8
  %cmacro5 = getelementptr inbounds %struct.include_file, %struct.include_file* %13, i32 0, i32 1
  %14 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro5, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp6 = icmp eq i32 %bf.cast, 1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load %struct.include_file*, %struct.include_file** %file, align 8
  store %struct.include_file* %15, %struct.include_file** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load %struct.include_file*, %struct.include_file** %file, align 8
  %buffer = getelementptr inbounds %struct.include_file, %struct.include_file* %16, i32 0, i32 3
  %17 = load i8*, i8** %buffer, align 8
  %cmp9 = icmp ne i8* %17, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct.include_file*, %struct.include_file** %file, align 8
  store %struct.include_file* %18, %struct.include_file** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %19 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %20 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct.include_file*, %struct.include_file** %file, align 8
  %fd = getelementptr inbounds %struct.include_file, %struct.include_file* %21, i32 0, i32 5
  store i32 0, i32* %fd, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end.11
  %22 = load %struct.include_file*, %struct.include_file** %file, align 8
  %name = getelementptr inbounds %struct.include_file, %struct.include_file* %22, i32 0, i32 0
  %23 = load i8*, i8** %name, align 8
  %call15 = call i32 (i8*, i32, ...) @open(i8* %23, i32 256, i32 438)
  %24 = load %struct.include_file*, %struct.include_file** %file, align 8
  %fd16 = getelementptr inbounds %struct.include_file, %struct.include_file* %24, i32 0, i32 5
  store i32 %call15, i32* %fd16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.14
  %25 = load %struct.include_file*, %struct.include_file** %file, align 8
  %fd18 = getelementptr inbounds %struct.include_file, %struct.include_file* %25, i32 0, i32 5
  %26 = load i32, i32* %fd18, align 4
  %cmp19 = icmp ne i32 %26, -1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.36

land.lhs.true.21:                                 ; preds = %if.end.17
  %27 = load %struct.include_file*, %struct.include_file** %file, align 8
  %fd22 = getelementptr inbounds %struct.include_file, %struct.include_file* %27, i32 0, i32 5
  %28 = load i32, i32* %fd22, align 4
  %29 = load %struct.include_file*, %struct.include_file** %file, align 8
  %st = getelementptr inbounds %struct.include_file, %struct.include_file* %29, i32 0, i32 4
  %call23 = call i32 @fstat(i32 %28, %struct.stat* %st) #4
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %land.lhs.true.21
  %30 = load %struct.include_file*, %struct.include_file** %file, align 8
  %st27 = getelementptr inbounds %struct.include_file, %struct.include_file* %30, i32 0, i32 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st27, i32 0, i32 3
  %31 = load i32, i32* %st_mode, align 4
  %and = and i32 %31, 61440
  %cmp28 = icmp eq i32 %and, 16384
  br i1 %cmp28, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.26
  %32 = load %struct.include_file*, %struct.include_file** %file, align 8
  store %struct.include_file* %32, %struct.include_file** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.26
  %call32 = call i32* @__errno_location() #6
  store i32 2, i32* %call32, align 4
  %33 = load %struct.include_file*, %struct.include_file** %file, align 8
  %fd33 = getelementptr inbounds %struct.include_file, %struct.include_file* %33, i32 0, i32 5
  %34 = load i32, i32* %fd33, align 4
  %call34 = call i32 @close(i32 %34)
  %35 = load %struct.include_file*, %struct.include_file** %file, align 8
  %fd35 = getelementptr inbounds %struct.include_file, %struct.include_file* %35, i32 0, i32 5
  store i32 -1, i32* %fd35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.31, %land.lhs.true.21, %if.end.17
  %call37 = call i32* @__errno_location() #6
  %36 = load i32, i32* %call37, align 4
  %37 = load %struct.include_file*, %struct.include_file** %file, align 8
  %err_no38 = getelementptr inbounds %struct.include_file, %struct.include_file* %37, i32 0, i32 6
  store i32 %36, i32* %err_no38, align 4
  store %struct.include_file* null, %struct.include_file** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.30, %if.then.10, %if.then.7, %if.then
  %38 = load %struct.include_file*, %struct.include_file** %retval
  ret %struct.include_file* %38
}

declare void @cpp_error_from_errno(%struct.cpp_reader*, i8*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @_cpp_pop_file_buffer(%struct.cpp_reader* %pfile, %struct.include_file* %inc) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %inc.addr = alloca %struct.include_file*, align 8
  %pushed = alloca i8, align 1
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.include_file* %inc, %struct.include_file** %inc.addr, align 8
  store i8 0, i8* %pushed, align 1
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 14
  %1 = load i8, i8* %mi_valid, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro = getelementptr inbounds %struct.include_file, %struct.include_file* %2, i32 0, i32 1
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8
  %cmp = icmp eq %struct.cpp_hashnode* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 12
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_cmacro, align 8
  %6 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro1 = getelementptr inbounds %struct.include_file, %struct.include_file* %6, i32 0, i32 1
  store %struct.cpp_hashnode* %5, %struct.cpp_hashnode** %cmacro1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 14
  store i8 0, i8* %mi_valid2, align 1
  %8 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %refcnt = getelementptr inbounds %struct.include_file, %struct.include_file* %8, i32 0, i32 8
  %9 = load i16, i16* %refcnt, align 2
  %dec = add i16 %9, -1
  store i16 %dec, i16* %refcnt, align 2
  %10 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %refcnt3 = getelementptr inbounds %struct.include_file, %struct.include_file* %10, i32 0, i32 8
  %11 = load i16, i16* %refcnt3, align 2
  %conv = zext i16 %11 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.17

land.lhs.true.6:                                  ; preds = %if.end
  %12 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro7 = getelementptr inbounds %struct.include_file, %struct.include_file* %12, i32 0, i32 1
  %13 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro7, align 8
  %tobool8 = icmp ne %struct.cpp_hashnode* %13, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.17

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %14 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro10 = getelementptr inbounds %struct.include_file, %struct.include_file* %14, i32 0, i32 1
  %15 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro10, align 8
  %cmp11 = icmp eq %struct.cpp_hashnode* %15, inttoptr (i64 -1 to %struct.cpp_hashnode*)
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.9
  %16 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %cmacro13 = getelementptr inbounds %struct.include_file, %struct.include_file* %16, i32 0, i32 1
  %17 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro13, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %17, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp14 = icmp eq i32 %bf.cast, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %land.lhs.true.9
  %18 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  call void @purge_cache(%struct.include_file* %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %lor.lhs.false, %land.lhs.true.6, %if.end
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 0
  %20 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %tobool18 = icmp ne %struct.cpp_buffer* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.17
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_do_file_change(%struct.cpp_reader* %21, i32 1, i8* null, i32 0, i32 0)
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 0
  %23 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer20, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %23, i32 0, i32 4
  %24 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8
  %tobool21 = icmp ne %struct.cpp_buffer* %24, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call zeroext i1 @_cpp_push_next_buffer(%struct.cpp_reader* %25)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %pushed, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  %26 = load i8, i8* %pushed, align 1
  %tobool25 = trunc i8 %26 to i1
  ret i1 %tobool25
}

; Function Attrs: nounwind uwtable
define internal void @purge_cache(%struct.include_file* %inc) #0 {
entry:
  %inc.addr = alloca %struct.include_file*, align 8
  store %struct.include_file* %inc, %struct.include_file** %inc.addr, align 8
  %0 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %buffer = getelementptr inbounds %struct.include_file, %struct.include_file* %0, i32 0, i32 3
  %1 = load i8*, i8** %buffer, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %buffer1 = getelementptr inbounds %struct.include_file, %struct.include_file* %2, i32 0, i32 3
  %3 = load i8*, i8** %buffer1, align 8
  call void @free(i8* %3) #4
  %4 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %buffer2 = getelementptr inbounds %struct.include_file, %struct.include_file* %4, i32 0, i32 3
  store i8* null, i8** %buffer2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare zeroext i1 @_cpp_push_next_buffer(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define i8* @_cpp_simplify_pathname(i8* %path) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %base = alloca i8*, align 8
  %orig_base = alloca i8*, align 8
  %absolute = alloca i32, align 4
  %move_base = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %absolute, align 4
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8
  store i8* %3, i8** %to, align 8
  store i8* %3, i8** %from, align 8
  %4 = load i8*, i8** %from, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 47
  br i1 %cmp3, label %if.then.5, label %if.end.23

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %absolute, align 4
  %6 = load i8*, i8** %to, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %to, align 8
  %7 = load i8*, i8** %from, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %from, align 8
  %8 = load i8*, i8** %from, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %if.then.10, label %if.end.22

if.then.10:                                       ; preds = %if.then.5
  %10 = load i8*, i8** %from, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr11, i8** %from, align 8
  %11 = load i8, i8* %incdec.ptr11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp eq i32 %conv12, 47
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.15
  %12 = load i8*, i8** %from, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr16, i8** %from, align 8
  %13 = load i8, i8* %incdec.ptr16, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp eq i32 %conv17, 47
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.21

if.else:                                          ; preds = %if.then.10
  %14 = load i8*, i8** %to, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr20, i8** %to, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %while.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.5
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %15 = load i8*, i8** %to, align 8
  store i8* %15, i8** %orig_base, align 8
  store i8* %15, i8** %base, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.115, %while.end.88, %if.then.67, %if.then.49, %if.end.23
  store i32 0, i32* %move_base, align 4
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.28, %for.cond
  %16 = load i8*, i8** %from, align 8
  %17 = load i8, i8* %16, align 1
  %conv25 = sext i8 %17 to i32
  %cmp26 = icmp eq i32 %conv25, 47
  br i1 %cmp26, label %while.body.28, label %while.end.30

while.body.28:                                    ; preds = %while.cond.24
  %18 = load i8*, i8** %from, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr29, i8** %from, align 8
  br label %while.cond.24

while.end.30:                                     ; preds = %while.cond.24
  %19 = load i8*, i8** %from, align 8
  %20 = load i8, i8* %19, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.end.30
  br label %for.end

if.end.35:                                        ; preds = %while.end.30
  %21 = load i8*, i8** %from, align 8
  %22 = load i8, i8* %21, align 1
  %conv36 = sext i8 %22 to i32
  %cmp37 = icmp eq i32 %conv36, 46
  br i1 %cmp37, label %if.then.39, label %if.end.94

if.then.39:                                       ; preds = %if.end.35
  %23 = load i8*, i8** %from, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx, align 1
  %conv40 = sext i8 %24 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.39
  br label %for.end

if.end.44:                                        ; preds = %if.then.39
  %25 = load i8*, i8** %from, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %26 to i32
  %cmp47 = icmp eq i32 %conv46, 47
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.44
  %27 = load i8*, i8** %from, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %add.ptr, i8** %from, align 8
  br label %for.cond

if.else.50:                                       ; preds = %if.end.44
  %28 = load i8*, i8** %from, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %29 to i32
  %cmp53 = icmp eq i32 %conv52, 46
  br i1 %cmp53, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.else.50
  %30 = load i8*, i8** %from, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %31 to i32
  %cmp57 = icmp eq i32 %conv56, 47
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = load i8*, i8** %from, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %33 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.92

if.then.63:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %34 = load i32, i32* %absolute, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %if.then.63
  %35 = load i8*, i8** %orig_base, align 8
  %36 = load i8*, i8** %to, align 8
  %cmp65 = icmp eq i8* %35, %36
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %land.lhs.true.64
  %37 = load i8*, i8** %from, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %add.ptr68, i8** %from, align 8
  br label %for.cond

if.end.69:                                        ; preds = %land.lhs.true.64, %if.then.63
  %38 = load i8*, i8** %base, align 8
  %39 = load i8*, i8** %to, align 8
  %cmp70 = icmp ne i8* %38, %39
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.91

land.lhs.true.72:                                 ; preds = %if.end.69
  %call73 = call i32* @__errno_location() #6
  %40 = load i32, i32* %call73, align 4
  %cmp74 = icmp eq i32 %40, 0
  br i1 %cmp74, label %if.then.76, label %if.end.91

if.then.76:                                       ; preds = %land.lhs.true.72
  %41 = load i8*, i8** %to, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %path.addr, align 8
  %call77 = call i32 @remove_component_p(i8* %42)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.90

if.then.79:                                       ; preds = %if.then.76
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.86, %if.then.79
  %43 = load i8*, i8** %to, align 8
  %44 = load i8*, i8** %base, align 8
  %cmp81 = icmp ugt i8* %43, %44
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.80
  %45 = load i8*, i8** %to, align 8
  %46 = load i8, i8* %45, align 1
  %conv83 = sext i8 %46 to i32
  %cmp84 = icmp ne i32 %conv83, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.80
  %47 = phi i1 [ false, %while.cond.80 ], [ %cmp84, %land.rhs ]
  br i1 %47, label %while.body.86, label %while.end.88

while.body.86:                                    ; preds = %land.end
  %48 = load i8*, i8** %to, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %incdec.ptr87, i8** %to, align 8
  br label %while.cond.80

while.end.88:                                     ; preds = %land.end
  %49 = load i8*, i8** %from, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %add.ptr89, i8** %from, align 8
  br label %for.cond

if.end.90:                                        ; preds = %if.then.76
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.72, %if.end.69
  store i32 1, i32* %move_base, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %lor.lhs.false, %if.else.50
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.35
  %50 = load i8*, i8** %to, align 8
  %51 = load i8*, i8** %orig_base, align 8
  %cmp95 = icmp ugt i8* %50, %51
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.94
  %52 = load i8*, i8** %to, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr98, i8** %to, align 8
  store i8 47, i8* %52, align 1
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.end.94
  br label %while.cond.100

while.cond.100:                                   ; preds = %while.body.109, %if.end.99
  %53 = load i8*, i8** %from, align 8
  %54 = load i8, i8* %53, align 1
  %conv101 = sext i8 %54 to i32
  %cmp102 = icmp ne i32 %conv101, 0
  br i1 %cmp102, label %land.rhs.104, label %land.end.108

land.rhs.104:                                     ; preds = %while.cond.100
  %55 = load i8*, i8** %from, align 8
  %56 = load i8, i8* %55, align 1
  %conv105 = sext i8 %56 to i32
  %cmp106 = icmp ne i32 %conv105, 47
  br label %land.end.108

land.end.108:                                     ; preds = %land.rhs.104, %while.cond.100
  %57 = phi i1 [ false, %while.cond.100 ], [ %cmp106, %land.rhs.104 ]
  br i1 %57, label %while.body.109, label %while.end.112

while.body.109:                                   ; preds = %land.end.108
  %58 = load i8*, i8** %from, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr110, i8** %from, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %to, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr111, i8** %to, align 8
  store i8 %59, i8* %60, align 1
  br label %while.cond.100

while.end.112:                                    ; preds = %land.end.108
  %61 = load i32, i32* %move_base, align 4
  %tobool113 = icmp ne i32 %61, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %while.end.112
  %62 = load i8*, i8** %to, align 8
  store i8* %62, i8** %base, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %while.end.112
  br label %for.cond

for.end:                                          ; preds = %if.then.43, %if.then.34
  %63 = load i8*, i8** %to, align 8
  %64 = load i8*, i8** %path.addr, align 8
  %cmp116 = icmp eq i8* %63, %64
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %for.end
  %65 = load i8*, i8** %to, align 8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr119, i8** %to, align 8
  store i8 46, i8* %65, align 1
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %for.end
  %66 = load i8*, i8** %to, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %path.addr, align 8
  store i8* %67, i8** %retval
  br label %return

return:                                           ; preds = %if.end.120, %if.then
  %68 = load i8*, i8** %retval
  ret i8* %68
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal i32 @remove_component_p(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %s = alloca %struct.stat, align 8
  %result = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %s) #4
  store i32 %call, i32* %result, align 4
  %1 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #6
  store i32 0, i32* %call1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %result, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 4
  %and = and i32 %3, 61440
  %cmp3 = icmp eq i32 %and, 16384
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

declare noalias i8* @xstrdup(i8*) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal %struct.search_path* @search_from(%struct.cpp_reader* %pfile, i32 %type) #0 {
entry:
  %retval = alloca %struct.search_path*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %type.addr = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  %dlen = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %use_cwd

if.end:                                           ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 37
  %ignore_srcdir = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 38
  %4 = load i8, i8* %ignore_srcdir, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 37
  %quote_include = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts3, i32 0, i32 5
  %6 = load %struct.search_path*, %struct.search_path** %quote_include, align 8
  store %struct.search_path* %6, %struct.search_path** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %search_cached = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %7, i32 0, i32 13
  %8 = load i8, i8* %search_cached, align 1
  %tobool5 = icmp ne i8 %8, 0
  br i1 %tobool5, label %if.end.34, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %search_cached7 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %9, i32 0, i32 13
  store i8 1, i8* %search_cached7, align 1
  %10 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %10, i32 0, i32 6
  %11 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %name = getelementptr inbounds %struct.include_file, %struct.include_file* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  %call = call i8* @lbasename(i8* %12)
  %13 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc8 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %13, i32 0, i32 6
  %14 = load %struct.include_file*, %struct.include_file** %inc8, align 8
  %name9 = getelementptr inbounds %struct.include_file, %struct.include_file* %14, i32 0, i32 0
  %15 = load i8*, i8** %name9, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %dlen, align 4
  %16 = load i32, i32* %dlen, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.6
  %17 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc12 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i32 0, i32 6
  %18 = load %struct.include_file*, %struct.include_file** %inc12, align 8
  %name13 = getelementptr inbounds %struct.include_file, %struct.include_file* %18, i32 0, i32 0
  %19 = load i8*, i8** %name13, align 8
  %20 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %dir = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %20, i32 0, i32 15
  %name14 = getelementptr inbounds %struct.search_path, %struct.search_path* %dir, i32 0, i32 1
  store i8* %19, i8** %name14, align 8
  %21 = load i32, i32* %dlen, align 4
  %cmp15 = icmp ugt i32 %21, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.11
  %22 = load i32, i32* %dlen, align 4
  %dec = add i32 %22, -1
  store i32 %dec, i32* %dlen, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.11
  br label %if.end.21

if.else:                                          ; preds = %if.then.6
  br label %use_cwd

use_cwd:                                          ; preds = %if.else, %if.then
  %23 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %dir19 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %23, i32 0, i32 15
  %name20 = getelementptr inbounds %struct.search_path, %struct.search_path* %dir19, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %name20, align 8
  store i32 1, i32* %dlen, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %use_cwd, %if.end.18
  %24 = load i32, i32* %dlen, align 4
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %max_include_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 26
  %26 = load i32, i32* %max_include_len, align 4
  %cmp22 = icmp ugt i32 %24, %26
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %27 = load i32, i32* %dlen, align 4
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %max_include_len25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 26
  store i32 %27, i32* %max_include_len25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.21
  %29 = load i32, i32* %dlen, align 4
  %30 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %dir27 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %30, i32 0, i32 15
  %len = getelementptr inbounds %struct.search_path, %struct.search_path* %dir27, i32 0, i32 2
  store i32 %29, i32* %len, align 4
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts28 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 37
  %quote_include29 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts28, i32 0, i32 5
  %32 = load %struct.search_path*, %struct.search_path** %quote_include29, align 8
  %33 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %dir30 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %33, i32 0, i32 15
  %next = getelementptr inbounds %struct.search_path, %struct.search_path* %dir30, i32 0, i32 0
  store %struct.search_path* %32, %struct.search_path** %next, align 8
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 3
  %35 = load %struct.line_map*, %struct.line_map** %map, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i32 0, i32 5
  %36 = load i8, i8* %sysp, align 1
  %conv31 = zext i8 %36 to i32
  %37 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %dir32 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %37, i32 0, i32 15
  %sysp33 = getelementptr inbounds %struct.search_path, %struct.search_path* %dir32, i32 0, i32 5
  store i32 %conv31, i32* %sysp33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.26, %if.end.4
  %38 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %dir35 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %38, i32 0, i32 15
  store %struct.search_path* %dir35, %struct.search_path** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.2
  %39 = load %struct.search_path*, %struct.search_path** %retval
  ret %struct.search_path* %39
}

declare void @cpp_error(%struct.cpp_reader*, i8*, ...) #1

declare i8* @lbasename(i8*) #1

declare void @deps_add_dep(%struct.deps*, i8*) #1

declare void @cpp_warning(%struct.cpp_reader*, i8*, ...) #1

declare i8* @xstrerror(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @read_include_file(%struct.cpp_reader* %pfile, %struct.include_file* %inc) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %inc.addr = alloca %struct.include_file*, align 8
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %count = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.include_file* %inc, %struct.include_file** %inc.addr, align 8
  %0 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st = getelementptr inbounds %struct.include_file, %struct.include_file* %0, i32 0, i32 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 4
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st1 = getelementptr inbounds %struct.include_file, %struct.include_file* %2, i32 0, i32 4
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st1, i32 0, i32 8
  %3 = load i64, i64* %st_size, align 8
  %cmp2 = icmp sgt i64 %3, 9223372036854775807
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %5 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %name = getelementptr inbounds %struct.include_file, %struct.include_file* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* %6)
  br label %fail

if.end:                                           ; preds = %if.then
  %7 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st4 = getelementptr inbounds %struct.include_file, %struct.include_file* %7, i32 0, i32 4
  %st_size5 = getelementptr inbounds %struct.stat, %struct.stat* %st4, i32 0, i32 8
  %8 = load i64, i64* %st_size5, align 8
  store i64 %8, i64* %size, align 8
  %9 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %mapped = getelementptr inbounds %struct.include_file, %struct.include_file* %9, i32 0, i32 9
  store i8 0, i8* %mapped, align 1
  %10 = load i64, i64* %size, align 8
  %add = add nsw i64 %10, 1
  %call = call noalias i8* @xmalloc(i64 %add)
  store i8* %call, i8** %buf, align 8
  store i64 0, i64* %offset, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end
  %11 = load i64, i64* %offset, align 8
  %12 = load i64, i64* %size, align 8
  %cmp6 = icmp slt i64 %11, %12
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %fd = getelementptr inbounds %struct.include_file, %struct.include_file* %13, i32 0, i32 5
  %14 = load i32, i32* %fd, align 4
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i64, i64* %size, align 8
  %18 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %17, %18
  %call7 = call i64 @read(i32 %14, i8* %add.ptr, i64 %sub)
  store i64 %call7, i64* %count, align 8
  %19 = load i64, i64* %count, align 8
  %cmp8 = icmp slt i64 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  br label %perror_fail

if.end.10:                                        ; preds = %while.body
  %20 = load i64, i64* %count, align 8
  %cmp11 = icmp eq i64 %20, 0
  br i1 %cmp11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.10
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %name13 = getelementptr inbounds %struct.include_file, %struct.include_file* %22, i32 0, i32 0
  %23 = load i8*, i8** %name13, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* %23)
  %24 = load i64, i64* %offset, align 8
  store i64 %24, i64* %size, align 8
  %25 = load i8*, i8** %buf, align 8
  %26 = load i64, i64* %size, align 8
  %add14 = add nsw i64 %26, 1
  %call15 = call i8* @xrealloc(i8* %25, i64 %add14)
  store i8* %call15, i8** %buf, align 8
  %27 = load i64, i64* %size, align 8
  %28 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st16 = getelementptr inbounds %struct.include_file, %struct.include_file* %28, i32 0, i32 4
  %st_size17 = getelementptr inbounds %struct.stat, %struct.stat* %st16, i32 0, i32 8
  store i64 %27, i64* %st_size17, align 8
  br label %while.end

if.end.18:                                        ; preds = %if.end.10
  %29 = load i64, i64* %count, align 8
  %30 = load i64, i64* %offset, align 8
  %add19 = add nsw i64 %30, %29
  store i64 %add19, i64* %offset, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.12, %while.cond
  %31 = load i64, i64* %size, align 8
  %32 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 %31
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.56

if.else:                                          ; preds = %entry
  %33 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st20 = getelementptr inbounds %struct.include_file, %struct.include_file* %33, i32 0, i32 4
  %st_mode21 = getelementptr inbounds %struct.stat, %struct.stat* %st20, i32 0, i32 3
  %34 = load i32, i32* %st_mode21, align 4
  %and22 = and i32 %34, 61440
  %cmp23 = icmp eq i32 %and22, 24576
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %36 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %name25 = getelementptr inbounds %struct.include_file, %struct.include_file* %36, i32 0, i32 0
  %37 = load i8*, i8** %name25, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %37)
  br label %fail

if.else.26:                                       ; preds = %if.else
  store i64 8192, i64* %size, align 8
  %38 = load i64, i64* %size, align 8
  %add27 = add nsw i64 %38, 1
  %call28 = call noalias i8* @xmalloc(i64 %add27)
  store i8* %call28, i8** %buf, align 8
  store i64 0, i64* %offset, align 8
  br label %while.cond.29

while.cond.29:                                    ; preds = %if.end.41, %if.else.26
  %39 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %fd30 = getelementptr inbounds %struct.include_file, %struct.include_file* %39, i32 0, i32 5
  %40 = load i32, i32* %fd30, align 4
  %41 = load i8*, i8** %buf, align 8
  %42 = load i64, i64* %offset, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i64, i64* %size, align 8
  %44 = load i64, i64* %offset, align 8
  %sub32 = sub nsw i64 %43, %44
  %call33 = call i64 @read(i32 %40, i8* %add.ptr31, i64 %sub32)
  store i64 %call33, i64* %count, align 8
  %cmp34 = icmp sgt i64 %call33, 0
  br i1 %cmp34, label %while.body.35, label %while.end.42

while.body.35:                                    ; preds = %while.cond.29
  %45 = load i64, i64* %count, align 8
  %46 = load i64, i64* %offset, align 8
  %add36 = add nsw i64 %46, %45
  store i64 %add36, i64* %offset, align 8
  %47 = load i64, i64* %offset, align 8
  %48 = load i64, i64* %size, align 8
  %cmp37 = icmp eq i64 %47, %48
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %while.body.35
  %49 = load i64, i64* %size, align 8
  %mul = mul nsw i64 %49, 2
  store i64 %mul, i64* %size, align 8
  %50 = load i8*, i8** %buf, align 8
  %51 = load i64, i64* %size, align 8
  %add39 = add nsw i64 %51, 1
  %call40 = call i8* @xrealloc(i8* %50, i64 %add39)
  store i8* %call40, i8** %buf, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %while.body.35
  br label %while.cond.29

while.end.42:                                     ; preds = %while.cond.29
  %52 = load i64, i64* %count, align 8
  %cmp43 = icmp slt i64 %52, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %while.end.42
  br label %perror_fail

if.end.45:                                        ; preds = %while.end.42
  %53 = load i64, i64* %offset, align 8
  %add46 = add nsw i64 %53, 1
  %54 = load i64, i64* %size, align 8
  %cmp47 = icmp slt i64 %add46, %54
  br i1 %cmp47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.45
  %55 = load i8*, i8** %buf, align 8
  %56 = load i64, i64* %offset, align 8
  %add49 = add nsw i64 %56, 1
  %call50 = call i8* @xrealloc(i8* %55, i64 %add49)
  store i8* %call50, i8** %buf, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.45
  %57 = load i64, i64* %offset, align 8
  %58 = load i8*, i8** %buf, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8 0, i8* %arrayidx52, align 1
  %59 = load i64, i64* %offset, align 8
  %60 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %st53 = getelementptr inbounds %struct.include_file, %struct.include_file* %60, i32 0, i32 4
  %st_size54 = getelementptr inbounds %struct.stat, %struct.stat* %st53, i32 0, i32 8
  store i64 %59, i64* %st_size54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %while.end
  %61 = load i8*, i8** %buf, align 8
  %62 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %buffer = getelementptr inbounds %struct.include_file, %struct.include_file* %62, i32 0, i32 3
  store i8* %61, i8** %buffer, align 8
  store i32 0, i32* %retval
  br label %return

perror_fail:                                      ; preds = %if.then.44, %if.then.9
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %64 = load %struct.include_file*, %struct.include_file** %inc.addr, align 8
  %name57 = getelementptr inbounds %struct.include_file, %struct.include_file* %64, i32 0, i32 0
  %65 = load i8*, i8** %name57, align 8
  call void @cpp_error_from_errno(%struct.cpp_reader* %63, i8* %65)
  br label %fail

fail:                                             ; preds = %perror_fail, %if.then.24, %if.then.3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %fail, %if.end.56
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader*, i8*, i64, i32, i32) #1

declare noalias i8* @xmalloc(i64) #1

declare i64 @read(i32, i8*, i64) #1

declare i8* @xrealloc(i8*, i64) #1

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal %struct.file_name_map* @read_name_map(%struct.cpp_reader* %pfile, i8* %dirname) #0 {
entry:
  %retval = alloca %struct.file_name_map*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %dirname.addr = alloca i8*, align 8
  %map_list_ptr = alloca %struct.file_name_map_list*, align 8
  %name = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %dirlen = alloca i32, align 4
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %ptr = alloca %struct.file_name_map*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %map_list = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 7
  %1 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list, align 8
  store %struct.file_name_map_list* %1, %struct.file_name_map_list** %map_list_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %tobool = icmp ne %struct.file_name_map_list* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_name = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %3, i32 0, i32 1
  %4 = load i8*, i8** %map_list_name, align 8
  %5 = load i8*, i8** %dirname.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #7
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_map = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %6, i32 0, i32 2
  %7 = load %struct.file_name_map*, %struct.file_name_map** %map_list_map, align 8
  store %struct.file_name_map* %7, %struct.file_name_map** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_next = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %8, i32 0, i32 0
  %9 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_next, align 8
  store %struct.file_name_map_list* %9, %struct.file_name_map_list** %map_list_ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call noalias i8* @xmalloc(i64 24)
  %10 = bitcast i8* %call2 to %struct.file_name_map_list*
  store %struct.file_name_map_list* %10, %struct.file_name_map_list** %map_list_ptr, align 8
  %11 = load i8*, i8** %dirname.addr, align 8
  %call3 = call noalias i8* @xstrdup(i8* %11)
  %12 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_name4 = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %12, i32 0, i32 1
  store i8* %call3, i8** %map_list_name4, align 8
  %13 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_map5 = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %13, i32 0, i32 2
  store %struct.file_name_map* null, %struct.file_name_map** %map_list_map5, align 8
  %14 = load i8*, i8** %dirname.addr, align 8
  %call6 = call i64 @strlen(i8* %14) #7
  %add = add i64 %call6, 10
  %add7 = add i64 %add, 2
  %15 = alloca i8, i64 %add7
  store i8* %15, i8** %name, align 8
  %16 = load i8*, i8** %name, align 8
  %17 = load i8*, i8** %dirname.addr, align 8
  %call8 = call i8* @strcpy(i8* %16, i8* %17) #4
  %18 = load i8*, i8** %dirname.addr, align 8
  %19 = load i8, i8* %18, align 1
  %tobool9 = icmp ne i8 %19, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.end
  %20 = load i8*, i8** %name, align 8
  %call11 = call i8* @strcat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.end
  %21 = load i8*, i8** %name, align 8
  %call13 = call i8* @strcat(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0)) #4
  %22 = load i8*, i8** %name, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %f, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool15 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.77

if.then.16:                                       ; preds = %if.end.12
  %24 = load i8*, i8** %dirname.addr, align 8
  %call17 = call i64 @strlen(i8* %24) #7
  %conv = trunc i64 %call17 to i32
  store i32 %conv, i32* %dirlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end.74, %if.then.23, %if.then.16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call18 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call18, i32* %ch, align 4
  %cmp = icmp ne i32 %call18, -1
  br i1 %cmp, label %while.body, label %while.end.75

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %ch, align 4
  %and = and i32 %26, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %27 = load i16, i16* %arrayidx, align 2
  %conv20 = zext i16 %27 to i32
  %and21 = and i32 %conv20, 3072
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %while.body
  br label %while.cond

if.end.24:                                        ; preds = %while.body
  %28 = load i32, i32* %ch, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call25 = call i8* @read_filename_string(i32 %28, %struct._IO_FILE* %29)
  store i8* %call25, i8** %from, align 8
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.36, %if.end.24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call27 = call i32 @_IO_getc(%struct._IO_FILE* %30)
  store i32 %call27, i32* %ch, align 4
  %cmp28 = icmp ne i32 %call27, -1
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.26
  %31 = load i32, i32* %ch, align 4
  %and30 = and i32 %31, 255
  %idxprom31 = sext i32 %and30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom31
  %32 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %32 to i32
  %and34 = and i32 %conv33, 1
  %tobool35 = icmp ne i32 %and34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.26
  %33 = phi i1 [ false, %while.cond.26 ], [ %tobool35, %land.rhs ]
  br i1 %33, label %while.body.36, label %while.end

while.body.36:                                    ; preds = %land.end
  br label %while.cond.26

while.end:                                        ; preds = %land.end
  %34 = load i32, i32* %ch, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call37 = call i8* @read_filename_string(i32 %34, %struct._IO_FILE* %35)
  store i8* %call37, i8** %to, align 8
  %call38 = call noalias i8* @xmalloc(i64 24)
  %36 = bitcast i8* %call38 to %struct.file_name_map*
  store %struct.file_name_map* %36, %struct.file_name_map** %ptr, align 8
  %37 = load i8*, i8** %from, align 8
  %38 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_from = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %38, i32 0, i32 1
  store i8* %37, i8** %map_from, align 8
  %39 = load i8*, i8** %to, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %40 to i32
  %cmp41 = icmp eq i32 %conv40, 47
  br i1 %cmp41, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %41 = load i8*, i8** %to, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %42 to i32
  %cmp45 = icmp eq i32 %conv44, 36
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %lor.lhs.false, %while.end
  %43 = load i8*, i8** %to, align 8
  %44 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_to = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %44, i32 0, i32 2
  store i8* %43, i8** %map_to, align 8
  br label %if.end.62

if.else:                                          ; preds = %lor.lhs.false
  %45 = load i32, i32* %dirlen, align 4
  %conv48 = sext i32 %45 to i64
  %46 = load i8*, i8** %to, align 8
  %call49 = call i64 @strlen(i8* %46) #7
  %add50 = add i64 %conv48, %call49
  %add51 = add i64 %add50, 2
  %call52 = call noalias i8* @xmalloc(i64 %add51)
  %47 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_to53 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %47, i32 0, i32 2
  store i8* %call52, i8** %map_to53, align 8
  %48 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_to54 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %48, i32 0, i32 2
  %49 = load i8*, i8** %map_to54, align 8
  %50 = load i8*, i8** %dirname.addr, align 8
  %call55 = call i8* @strcpy(i8* %49, i8* %50) #4
  %51 = load i32, i32* %dirlen, align 4
  %idxprom56 = sext i32 %51 to i64
  %52 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_to57 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %52, i32 0, i32 2
  %53 = load i8*, i8** %map_to57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %53, i64 %idxprom56
  store i8 47, i8* %arrayidx58, align 1
  %54 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_to59 = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %54, i32 0, i32 2
  %55 = load i8*, i8** %map_to59, align 8
  %56 = load i32, i32* %dirlen, align 4
  %idx.ext = sext i32 %56 to i64
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %idx.ext
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %57 = load i8*, i8** %to, align 8
  %call61 = call i8* @strcpy(i8* %add.ptr60, i8* %57) #4
  %58 = load i8*, i8** %to, align 8
  call void @free(i8* %58) #4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.47
  %59 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_map63 = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %59, i32 0, i32 2
  %60 = load %struct.file_name_map*, %struct.file_name_map** %map_list_map63, align 8
  %61 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %map_next = getelementptr inbounds %struct.file_name_map, %struct.file_name_map* %61, i32 0, i32 0
  store %struct.file_name_map* %60, %struct.file_name_map** %map_next, align 8
  %62 = load %struct.file_name_map*, %struct.file_name_map** %ptr, align 8
  %63 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_map64 = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %63, i32 0, i32 2
  store %struct.file_name_map* %62, %struct.file_name_map** %map_list_map64, align 8
  br label %while.cond.65

while.cond.65:                                    ; preds = %if.end.73, %if.end.62
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call66 = call i32 @_IO_getc(%struct._IO_FILE* %64)
  store i32 %call66, i32* %ch, align 4
  %cmp67 = icmp ne i32 %call66, 10
  br i1 %cmp67, label %while.body.69, label %while.end.74

while.body.69:                                    ; preds = %while.cond.65
  %65 = load i32, i32* %ch, align 4
  %cmp70 = icmp eq i32 %65, -1
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.body.69
  br label %while.end.74

if.end.73:                                        ; preds = %while.body.69
  br label %while.cond.65

while.end.74:                                     ; preds = %if.then.72, %while.cond.65
  br label %while.cond

while.end.75:                                     ; preds = %while.cond
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call76 = call i32 @fclose(%struct._IO_FILE* %66)
  br label %if.end.77

if.end.77:                                        ; preds = %while.end.75, %if.end.12
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts78 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %67, i32 0, i32 37
  %map_list79 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts78, i32 0, i32 7
  %68 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list79, align 8
  %69 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_next80 = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %69, i32 0, i32 0
  store %struct.file_name_map_list* %68, %struct.file_name_map_list** %map_list_next80, align 8
  %70 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts81 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %71, i32 0, i32 37
  %map_list82 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts81, i32 0, i32 7
  store %struct.file_name_map_list* %70, %struct.file_name_map_list** %map_list82, align 8
  %72 = load %struct.file_name_map_list*, %struct.file_name_map_list** %map_list_ptr, align 8
  %map_list_map83 = getelementptr inbounds %struct.file_name_map_list, %struct.file_name_map_list* %72, i32 0, i32 2
  %73 = load %struct.file_name_map*, %struct.file_name_map** %map_list_map83, align 8
  store %struct.file_name_map* %73, %struct.file_name_map** %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.then
  %74 = load %struct.file_name_map*, %struct.file_name_map** %retval
  ret %struct.file_name_map* %74
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare void @cpp_ice(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @read_filename_string(i32 %ch, %struct._IO_FILE* %f) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %alloc = alloca i8*, align 8
  %set = alloca i8*, align 8
  %len = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 20, i32* %len, align 4
  %0 = load i32, i32* %len, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @xmalloc(i64 %conv)
  store i8* %call, i8** %alloc, align 8
  store i8* %call, i8** %set, align 8
  %1 = load i32, i32* %ch.addr, align 4
  %and = and i32 %1, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and2 = and i32 %conv1, 3072
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.end.21, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ch.addr, align 4
  %conv3 = trunc i32 %3 to i8
  %4 = load i8*, i8** %set, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %set, align 8
  store i8 %conv3, i8* %4, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call4, i32* %ch.addr, align 4
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %ch.addr, align 4
  %and6 = and i32 %6, 255
  %idxprom7 = sext i32 %and6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom7
  %7 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %7 to i32
  %and10 = and i32 %conv9, 3072
  %tobool11 = icmp ne i32 %and10, 0
  %lnot = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %set, align 8
  %10 = load i8*, i8** %alloc, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i32, i32* %len, align 4
  %conv12 = sext i32 %11 to i64
  %cmp13 = icmp eq i64 %sub.ptr.sub, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %while.body
  %12 = load i32, i32* %len, align 4
  %mul = mul nsw i32 %12, 2
  store i32 %mul, i32* %len, align 4
  %13 = load i8*, i8** %alloc, align 8
  %14 = load i32, i32* %len, align 4
  %add16 = add nsw i32 %14, 1
  %conv17 = sext i32 %add16 to i64
  %call18 = call i8* @xrealloc(i8* %13, i64 %conv17)
  store i8* %call18, i8** %alloc, align 8
  %15 = load i8*, i8** %alloc, align 8
  %16 = load i32, i32* %len, align 4
  %div = sdiv i32 %16, 2
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %while.body
  %17 = load i32, i32* %ch.addr, align 4
  %conv19 = trunc i32 %17 to i8
  %18 = load i8*, i8** %set, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %set, align 8
  store i8 %conv19, i8* %18, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %entry
  %19 = load i8*, i8** %set, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %ch.addr, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call22 = call i32 @ungetc(i32 %20, %struct._IO_FILE* %21)
  %22 = load i8*, i8** %alloc, align 8
  ret i8* %22
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
