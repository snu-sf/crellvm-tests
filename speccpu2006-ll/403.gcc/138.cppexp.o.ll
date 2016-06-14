; ModuleID = 'cppexp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suffix = type { [4 x i8], i8, i8 }
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
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.cpp_options = type { i8*, i8*, i32, %struct.cpp_pending*, i8*, %struct.search_path*, %struct.search_path*, %struct.file_name_map_list*, i8*, i32, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpp_pending = type opaque
%struct.file_name_map_list = type opaque
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.op = type { i32, i8, i8, i8, i64 }

@.str = private unnamed_addr constant [24 x i8] c"missing binary operator\00", align 1
@op_to_prio = internal constant [28 x i16] [i16 0, i16 8962, i16 6656, i16 6656, i16 8962, i16 8962, i16 8192, i16 8192, i16 8192, i16 5120, i16 4096, i16 4608, i16 7168, i16 7168, i16 5632, i16 5632, i16 8962, i16 3592, i16 3080, i16 2312, i16 2568, i16 1536, i16 1026, i16 512, i16 6144, i16 6144, i16 6656, i16 6656], align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"void expression between '(' and ')'\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"operator '%s' has no right operand\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"impossible operator '%s'\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"division by zero in #if\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"comma operator in operand of #if\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"syntax error '?' without following ':'\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"syntax error ':' without preceding '?'\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"missing ')' in expression\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"missing '(' in expression\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"missing binary operator before '%s'\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"operator '%s' has no left operand\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"unbalanced stack in #if\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"#if with no expression\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"string constants are not valid in #if\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid character '%c' in #if\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"invalid character '\5C%03o' in #if\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"__bool_true_false_are_defined\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"ISO C++ does not permit \22%s\22 in #if\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not defined\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\22%s\22 is not valid in #if expressions\00", align 1
@_hex_value = external constant [256 x i8], align 16
@.str.22 = private unnamed_addr constant [44 x i8] c"floating point numbers are not valid in #if\00", align 1
@vsuf_1 = internal constant [4 x %struct.suffix] [%struct.suffix { [4 x i8] c"u\00\00\00", i8 1, i8 0 }, %struct.suffix { [4 x i8] c"U\00\00\00", i8 1, i8 0 }, %struct.suffix { [4 x i8] c"l\00\00\00", i8 0, i8 1 }, %struct.suffix { [4 x i8] c"L\00\00\00", i8 0, i8 1 }], align 16
@vsuf_2 = internal constant [10 x %struct.suffix] [%struct.suffix { [4 x i8] c"ul\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"UL\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"uL\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"Ul\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"lu\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"LU\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"Lu\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"lU\00\00", i8 1, i8 1 }, %struct.suffix { [4 x i8] c"ll\00\00", i8 0, i8 2 }, %struct.suffix { [4 x i8] c"LL\00\00", i8 0, i8 2 }], align 16
@vsuf_3 = internal constant [8 x %struct.suffix] [%struct.suffix { [4 x i8] c"ull\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"ULL\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"uLL\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"Ull\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"llu\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"LLU\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"LLu\00", i8 1, i8 2 }, %struct.suffix { [4 x i8] c"llU\00", i8 1, i8 2 }], align 16
@.str.23 = private unnamed_addr constant [37 x i8] c"traditional C rejects the `U' suffix\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"too many 'l' suffixes in integer constant\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"integer constant contains digits beyond the radix\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"integer constant out of range\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"integer constant is so large that it is unsigned\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"invalid suffix '%.*s' on integer constant\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"missing ')' after \22defined\22\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"operator \22defined\22 requires an identifier\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"(\22%s\22 is an alternative token for \22%s\22 in C++)\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"this use of \22defined\22 may not be portable\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"integer overflow in preprocessor expression\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_cpp_parse_expr(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %init_stack = alloca [20 x %struct.op], align 16
  %stack = alloca %struct.op*, align 8
  %limit = alloca %struct.op*, align 8
  %top = alloca %struct.op*, align 8
  %skip_evaluation = alloca i32, align 4
  %result = alloca i32, align 4
  %lex_count = alloca i32, align 4
  %saw_leading_not = alloca i32, align 4
  %prio2 = alloca i32, align 4
  %flags3 = alloca i32, align 4
  %op4 = alloca %struct.op, align 8
  %coerce = alloca %struct.op, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %unsigned1 = alloca i32, align 4
  %unsigned2 = alloca i32, align 4
  %new_stack = alloca %struct.op*, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %arraydecay = getelementptr inbounds [20 x %struct.op], [20 x %struct.op]* %init_stack, i32 0, i32 0
  store %struct.op* %arraydecay, %struct.op** %stack, align 8
  %0 = load %struct.op*, %struct.op** %stack, align 8
  %add.ptr = getelementptr inbounds %struct.op, %struct.op* %0, i64 20
  store %struct.op* %add.ptr, %struct.op** %limit, align 8
  %1 = load %struct.op*, %struct.op** %stack, align 8
  %add.ptr1 = getelementptr inbounds %struct.op, %struct.op* %1, i64 1
  store %struct.op* %add.ptr1, %struct.op** %top, align 8
  store i32 0, i32* %skip_evaluation, align 4
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_ind_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 13
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_ind_cmacro, align 8
  store i32 0, i32* %saw_leading_not, align 4
  store i32 0, i32* %lex_count, align 4
  %3 = load %struct.op*, %struct.op** %top, align 8
  %op = getelementptr inbounds %struct.op, %struct.op* %3, i32 0, i32 0
  store i32 67, i32* %op, align 4
  %4 = load %struct.op*, %struct.op** %top, align 8
  %prio = getelementptr inbounds %struct.op, %struct.op* %4, i32 0, i32 1
  store i8 2, i8* %prio, align 1
  %5 = load %struct.op*, %struct.op** %top, align 8
  %flags = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 2
  store i8 4, i8* %flags, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end.524, %if.end, %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %7 = load i32, i32* %skip_evaluation, align 4
  %call = call { i64, i64 } @lex(%struct.cpp_reader* %6, i32 %7)
  %8 = bitcast %struct.op* %coerce to { i64, i64 }*
  %9 = getelementptr { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %10 = extractvalue { i64, i64 } %call, 0
  store i64 %10, i64* %9, align 8
  %11 = getelementptr { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %12 = extractvalue { i64, i64 } %call, 1
  store i64 %12, i64* %11, align 8
  %13 = bitcast %struct.op* %op4 to i8*
  %14 = bitcast %struct.op* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %15 = load i32, i32* %lex_count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %lex_count, align 4
  %op5 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %16 = load i32, i32* %op5, align 4
  switch i32 %16, label %sw.default [
    i32 64, label %sw.bb
    i32 57, label %sw.bb.6
    i32 67, label %sw.bb.13
    i32 1, label %sw.bb.14
    i32 4, label %sw.bb.18
    i32 5, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %for.cond
  br label %syntax_error

push_immediate:                                   ; preds = %if.end.438
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %for.cond, %push_immediate
  %17 = load %struct.op*, %struct.op** %top, align 8
  %flags7 = getelementptr inbounds %struct.op, %struct.op* %17, i32 0, i32 2
  %18 = load i8, i8* %flags7, align 1
  %conv = zext i8 %18 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.6
  br label %do.body

do.body:                                          ; preds = %if.then
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  br label %syntax_error

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.6
  %value = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 4
  %20 = load i64, i64* %value, align 8
  %21 = load %struct.op*, %struct.op** %top, align 8
  %value8 = getelementptr inbounds %struct.op, %struct.op* %21, i32 0, i32 4
  store i64 %20, i64* %value8, align 8
  %unsignedp = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 3
  %22 = load i8, i8* %unsignedp, align 1
  %23 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp9 = getelementptr inbounds %struct.op, %struct.op* %23, i32 0, i32 3
  store i8 %22, i8* %unsignedp9, align 1
  %24 = load %struct.op*, %struct.op** %top, align 8
  %flags10 = getelementptr inbounds %struct.op, %struct.op* %24, i32 0, i32 2
  %25 = load i8, i8* %flags10, align 1
  %conv11 = zext i8 %25 to i32
  %or = or i32 %conv11, 1
  %conv12 = trunc i32 %or to i8
  store i8 %conv12, i8* %flags10, align 1
  br label %for.cond

sw.bb.13:                                         ; preds = %for.cond
  store i32 0, i32* %prio2, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.cond
  %26 = load i32, i32* %lex_count, align 4
  %cmp = icmp eq i32 %26, 1
  %conv15 = zext i1 %cmp to i32
  store i32 %conv15, i32* %saw_leading_not, align 4
  %op16 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %27 = load i32, i32* %op16, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [28 x i16], [28 x i16]* @op_to_prio, i32 0, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2
  %conv17 = sext i16 %28 to i32
  store i32 %conv17, i32* %prio2, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.cond, %for.cond
  store i32 7680, i32* %prio2, align 4
  %29 = load %struct.op*, %struct.op** %top, align 8
  %flags19 = getelementptr inbounds %struct.op, %struct.op* %29, i32 0, i32 2
  %30 = load i8, i8* %flags19, align 1
  %conv20 = zext i8 %30 to i32
  %and21 = and i32 %conv20, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.18
  br label %sw.epilog

if.end.24:                                        ; preds = %sw.bb.18
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %if.end.24
  %op25 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %31 = load i32, i32* %op25, align 4
  %idxprom26 = zext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [28 x i16], [28 x i16]* @op_to_prio, i32 0, i64 %idxprom26
  %32 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %32 to i32
  store i32 %conv28, i32* %prio2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.23, %sw.bb.14, %sw.bb.13
  %33 = load i32, i32* %prio2, align 4
  %and29 = and i32 %33, 255
  store i32 %and29, i32* %flags3, align 4
  %34 = load i32, i32* %prio2, align 4
  %shr = lshr i32 %34, 8
  store i32 %shr, i32* %prio2, align 4
  %35 = load i32, i32* %prio2, align 4
  %cmp30 = icmp eq i32 %35, 4
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %sw.epilog
  br label %skip_reduction

if.end.33:                                        ; preds = %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.450, %if.end.33
  %36 = load i32, i32* %prio2, align 4
  %37 = load %struct.op*, %struct.op** %top, align 8
  %prio34 = getelementptr inbounds %struct.op, %struct.op* %37, i32 0, i32 1
  %38 = load i8, i8* %prio34, align 1
  %conv35 = zext i8 %38 to i32
  %cmp36 = icmp ule i32 %36, %conv35
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.op*, %struct.op** %top, align 8
  %flags38 = getelementptr inbounds %struct.op, %struct.op* %39, i32 0, i32 2
  %40 = load i8, i8* %flags38, align 1
  %conv39 = zext i8 %40 to i32
  %and40 = and i32 %conv39, 5
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %while.body
  %41 = load %struct.op*, %struct.op** %top, align 8
  %op44 = getelementptr inbounds %struct.op, %struct.op* %41, i32 0, i32 0
  %42 = load i32, i32* %op44, align 4
  %cmp45 = icmp eq i32 %42, 22
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.43
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %43 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  br label %syntax_error

do.end.49:                                        ; No predecessors!
  br label %if.end.54

if.else:                                          ; preds = %if.then.43
  br label %do.body.50

do.body.50:                                       ; preds = %if.else
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %46 = load %struct.op*, %struct.op** %top, align 8
  %op51 = getelementptr inbounds %struct.op, %struct.op* %46, i32 0, i32 0
  %47 = load i32, i32* %op51, align 4
  %call52 = call i8* @op_as_text(%struct.cpp_reader* %45, i32 %47)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* %call52)
  br label %syntax_error

do.end.53:                                        ; No predecessors!
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.end.49
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %while.body
  %48 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp56 = getelementptr inbounds %struct.op, %struct.op* %48, i32 0, i32 3
  %49 = load i8, i8* %unsignedp56, align 1
  %conv57 = zext i8 %49 to i32
  store i32 %conv57, i32* %unsigned2, align 4
  %50 = load %struct.op*, %struct.op** %top, align 8
  %value58 = getelementptr inbounds %struct.op, %struct.op* %50, i32 0, i32 4
  %51 = load i64, i64* %value58, align 8
  store i64 %51, i64* %v2, align 8
  %52 = load %struct.op*, %struct.op** %top, align 8
  %incdec.ptr = getelementptr inbounds %struct.op, %struct.op* %52, i32 -1
  store %struct.op* %incdec.ptr, %struct.op** %top, align 8
  %53 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp59 = getelementptr inbounds %struct.op, %struct.op* %53, i32 0, i32 3
  %54 = load i8, i8* %unsignedp59, align 1
  %conv60 = zext i8 %54 to i32
  store i32 %conv60, i32* %unsigned1, align 4
  %55 = load %struct.op*, %struct.op** %top, align 8
  %value61 = getelementptr inbounds %struct.op, %struct.op* %55, i32 0, i32 4
  %56 = load i64, i64* %value61, align 8
  store i64 %56, i64* %v1, align 8
  %57 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx62 = getelementptr inbounds %struct.op, %struct.op* %57, i64 1
  %op63 = getelementptr inbounds %struct.op, %struct.op* %arrayidx62, i32 0, i32 0
  %58 = load i32, i32* %op63, align 4
  switch i32 %58, label %sw.default.64 [
    i32 1, label %sw.bb.68
    i32 16, label %sw.bb.78
    i32 3, label %sw.bb.86
    i32 2, label %sw.bb.96
    i32 27, label %sw.bb.110
    i32 26, label %sw.bb.124
    i32 24, label %sw.bb.138
    i32 25, label %sw.bb.144
    i32 9, label %sw.bb.150
    i32 11, label %sw.bb.156
    i32 10, label %sw.bb.161
    i32 13, label %sw.bb.167
    i32 12, label %sw.bb.183
    i32 14, label %sw.bb.201
    i32 15, label %sw.bb.212
    i32 4, label %sw.bb.223
    i32 5, label %sw.bb.259
    i32 6, label %sw.bb.305
    i32 7, label %sw.bb.332
    i32 8, label %sw.bb.332
    i32 18, label %sw.bb.376
    i32 17, label %sw.bb.385
    i32 21, label %sw.bb.395
    i32 19, label %sw.bb.403
    i32 20, label %sw.bb.406
    i32 22, label %sw.bb.431
    i32 67, label %sw.bb.442
  ]

sw.default.64:                                    ; preds = %if.end.55
  %59 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %60 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %61 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx65 = getelementptr inbounds %struct.op, %struct.op* %61, i64 1
  %op66 = getelementptr inbounds %struct.op, %struct.op* %arrayidx65, i32 0, i32 0
  %62 = load i32, i32* %op66, align 4
  %call67 = call i8* @op_as_text(%struct.cpp_reader* %60, i32 %62)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8* %call67)
  br label %syntax_error

sw.bb.68:                                         ; preds = %if.end.55
  %63 = load i64, i64* %v2, align 8
  %tobool69 = icmp ne i64 %63, 0
  %lnot = xor i1 %tobool69, true
  %lnot.ext = zext i1 %lnot to i32
  %conv70 = sext i32 %lnot.ext to i64
  %64 = load %struct.op*, %struct.op** %top, align 8
  %value71 = getelementptr inbounds %struct.op, %struct.op* %64, i32 0, i32 4
  store i64 %conv70, i64* %value71, align 8
  %65 = load i32, i32* %unsigned2, align 4
  %conv72 = trunc i32 %65 to i8
  %66 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp73 = getelementptr inbounds %struct.op, %struct.op* %66, i32 0, i32 3
  store i8 %conv72, i8* %unsignedp73, align 1
  %67 = load %struct.op*, %struct.op** %top, align 8
  %flags74 = getelementptr inbounds %struct.op, %struct.op* %67, i32 0, i32 2
  %68 = load i8, i8* %flags74, align 1
  %conv75 = zext i8 %68 to i32
  %or76 = or i32 %conv75, 1
  %conv77 = trunc i32 %or76 to i8
  store i8 %conv77, i8* %flags74, align 1
  br label %sw.epilog.450

sw.bb.78:                                         ; preds = %if.end.55
  %69 = load i64, i64* %v2, align 8
  %neg = xor i64 %69, -1
  %70 = load %struct.op*, %struct.op** %top, align 8
  %value79 = getelementptr inbounds %struct.op, %struct.op* %70, i32 0, i32 4
  store i64 %neg, i64* %value79, align 8
  %71 = load i32, i32* %unsigned2, align 4
  %conv80 = trunc i32 %71 to i8
  %72 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp81 = getelementptr inbounds %struct.op, %struct.op* %72, i32 0, i32 3
  store i8 %conv80, i8* %unsignedp81, align 1
  %73 = load %struct.op*, %struct.op** %top, align 8
  %flags82 = getelementptr inbounds %struct.op, %struct.op* %73, i32 0, i32 2
  %74 = load i8, i8* %flags82, align 1
  %conv83 = zext i8 %74 to i32
  %or84 = or i32 %conv83, 1
  %conv85 = trunc i32 %or84 to i8
  store i8 %conv85, i8* %flags82, align 1
  br label %sw.epilog.450

sw.bb.86:                                         ; preds = %if.end.55
  %75 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp87 = getelementptr inbounds %struct.op, %struct.op* %75, i32 0, i32 3
  store i8 0, i8* %unsignedp87, align 1
  %76 = load i32, i32* %unsigned1, align 4
  %77 = load i32, i32* %unsigned2, align 4
  %or88 = or i32 %76, %77
  %tobool89 = icmp ne i32 %or88, 0
  br i1 %tobool89, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.86
  %78 = load i64, i64* %v1, align 8
  %79 = load i64, i64* %v2, align 8
  %cmp90 = icmp ult i64 %78, %79
  %conv91 = zext i1 %cmp90 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.86
  %80 = load i64, i64* %v1, align 8
  %81 = load i64, i64* %v2, align 8
  %cmp92 = icmp slt i64 %80, %81
  %conv93 = zext i1 %cmp92 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv91, %cond.true ], [ %conv93, %cond.false ]
  %conv94 = sext i32 %cond to i64
  %82 = load %struct.op*, %struct.op** %top, align 8
  %value95 = getelementptr inbounds %struct.op, %struct.op* %82, i32 0, i32 4
  store i64 %conv94, i64* %value95, align 8
  br label %sw.epilog.450

sw.bb.96:                                         ; preds = %if.end.55
  %83 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp97 = getelementptr inbounds %struct.op, %struct.op* %83, i32 0, i32 3
  store i8 0, i8* %unsignedp97, align 1
  %84 = load i32, i32* %unsigned1, align 4
  %85 = load i32, i32* %unsigned2, align 4
  %or98 = or i32 %84, %85
  %tobool99 = icmp ne i32 %or98, 0
  br i1 %tobool99, label %cond.true.100, label %cond.false.103

cond.true.100:                                    ; preds = %sw.bb.96
  %86 = load i64, i64* %v1, align 8
  %87 = load i64, i64* %v2, align 8
  %cmp101 = icmp ugt i64 %86, %87
  %conv102 = zext i1 %cmp101 to i32
  br label %cond.end.106

cond.false.103:                                   ; preds = %sw.bb.96
  %88 = load i64, i64* %v1, align 8
  %89 = load i64, i64* %v2, align 8
  %cmp104 = icmp sgt i64 %88, %89
  %conv105 = zext i1 %cmp104 to i32
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.100
  %cond107 = phi i32 [ %conv102, %cond.true.100 ], [ %conv105, %cond.false.103 ]
  %conv108 = sext i32 %cond107 to i64
  %90 = load %struct.op*, %struct.op** %top, align 8
  %value109 = getelementptr inbounds %struct.op, %struct.op* %90, i32 0, i32 4
  store i64 %conv108, i64* %value109, align 8
  br label %sw.epilog.450

sw.bb.110:                                        ; preds = %if.end.55
  %91 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp111 = getelementptr inbounds %struct.op, %struct.op* %91, i32 0, i32 3
  store i8 0, i8* %unsignedp111, align 1
  %92 = load i32, i32* %unsigned1, align 4
  %93 = load i32, i32* %unsigned2, align 4
  %or112 = or i32 %92, %93
  %tobool113 = icmp ne i32 %or112, 0
  br i1 %tobool113, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %sw.bb.110
  %94 = load i64, i64* %v1, align 8
  %95 = load i64, i64* %v2, align 8
  %cmp115 = icmp ule i64 %94, %95
  %conv116 = zext i1 %cmp115 to i32
  br label %cond.end.120

cond.false.117:                                   ; preds = %sw.bb.110
  %96 = load i64, i64* %v1, align 8
  %97 = load i64, i64* %v2, align 8
  %cmp118 = icmp sle i64 %96, %97
  %conv119 = zext i1 %cmp118 to i32
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.117, %cond.true.114
  %cond121 = phi i32 [ %conv116, %cond.true.114 ], [ %conv119, %cond.false.117 ]
  %conv122 = sext i32 %cond121 to i64
  %98 = load %struct.op*, %struct.op** %top, align 8
  %value123 = getelementptr inbounds %struct.op, %struct.op* %98, i32 0, i32 4
  store i64 %conv122, i64* %value123, align 8
  br label %sw.epilog.450

sw.bb.124:                                        ; preds = %if.end.55
  %99 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp125 = getelementptr inbounds %struct.op, %struct.op* %99, i32 0, i32 3
  store i8 0, i8* %unsignedp125, align 1
  %100 = load i32, i32* %unsigned1, align 4
  %101 = load i32, i32* %unsigned2, align 4
  %or126 = or i32 %100, %101
  %tobool127 = icmp ne i32 %or126, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %sw.bb.124
  %102 = load i64, i64* %v1, align 8
  %103 = load i64, i64* %v2, align 8
  %cmp129 = icmp uge i64 %102, %103
  %conv130 = zext i1 %cmp129 to i32
  br label %cond.end.134

cond.false.131:                                   ; preds = %sw.bb.124
  %104 = load i64, i64* %v1, align 8
  %105 = load i64, i64* %v2, align 8
  %cmp132 = icmp sge i64 %104, %105
  %conv133 = zext i1 %cmp132 to i32
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.128
  %cond135 = phi i32 [ %conv130, %cond.true.128 ], [ %conv133, %cond.false.131 ]
  %conv136 = sext i32 %cond135 to i64
  %106 = load %struct.op*, %struct.op** %top, align 8
  %value137 = getelementptr inbounds %struct.op, %struct.op* %106, i32 0, i32 4
  store i64 %conv136, i64* %value137, align 8
  br label %sw.epilog.450

sw.bb.138:                                        ; preds = %if.end.55
  %107 = load i64, i64* %v1, align 8
  %108 = load i64, i64* %v2, align 8
  %cmp139 = icmp eq i64 %107, %108
  %conv140 = zext i1 %cmp139 to i32
  %conv141 = sext i32 %conv140 to i64
  %109 = load %struct.op*, %struct.op** %top, align 8
  %value142 = getelementptr inbounds %struct.op, %struct.op* %109, i32 0, i32 4
  store i64 %conv141, i64* %value142, align 8
  %110 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp143 = getelementptr inbounds %struct.op, %struct.op* %110, i32 0, i32 3
  store i8 0, i8* %unsignedp143, align 1
  br label %sw.epilog.450

sw.bb.144:                                        ; preds = %if.end.55
  %111 = load i64, i64* %v1, align 8
  %112 = load i64, i64* %v2, align 8
  %cmp145 = icmp ne i64 %111, %112
  %conv146 = zext i1 %cmp145 to i32
  %conv147 = sext i32 %conv146 to i64
  %113 = load %struct.op*, %struct.op** %top, align 8
  %value148 = getelementptr inbounds %struct.op, %struct.op* %113, i32 0, i32 4
  store i64 %conv147, i64* %value148, align 8
  %114 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp149 = getelementptr inbounds %struct.op, %struct.op* %114, i32 0, i32 3
  store i8 0, i8* %unsignedp149, align 1
  br label %sw.epilog.450

sw.bb.150:                                        ; preds = %if.end.55
  %115 = load i64, i64* %v1, align 8
  %116 = load i64, i64* %v2, align 8
  %and151 = and i64 %115, %116
  %117 = load %struct.op*, %struct.op** %top, align 8
  %value152 = getelementptr inbounds %struct.op, %struct.op* %117, i32 0, i32 4
  store i64 %and151, i64* %value152, align 8
  %118 = load i32, i32* %unsigned1, align 4
  %119 = load i32, i32* %unsigned2, align 4
  %or153 = or i32 %118, %119
  %conv154 = trunc i32 %or153 to i8
  %120 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp155 = getelementptr inbounds %struct.op, %struct.op* %120, i32 0, i32 3
  store i8 %conv154, i8* %unsignedp155, align 1
  br label %sw.epilog.450

sw.bb.156:                                        ; preds = %if.end.55
  %121 = load i64, i64* %v1, align 8
  %122 = load i64, i64* %v2, align 8
  %xor = xor i64 %121, %122
  %123 = load %struct.op*, %struct.op** %top, align 8
  %value157 = getelementptr inbounds %struct.op, %struct.op* %123, i32 0, i32 4
  store i64 %xor, i64* %value157, align 8
  %124 = load i32, i32* %unsigned1, align 4
  %125 = load i32, i32* %unsigned2, align 4
  %or158 = or i32 %124, %125
  %conv159 = trunc i32 %or158 to i8
  %126 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp160 = getelementptr inbounds %struct.op, %struct.op* %126, i32 0, i32 3
  store i8 %conv159, i8* %unsignedp160, align 1
  br label %sw.epilog.450

sw.bb.161:                                        ; preds = %if.end.55
  %127 = load i64, i64* %v1, align 8
  %128 = load i64, i64* %v2, align 8
  %or162 = or i64 %127, %128
  %129 = load %struct.op*, %struct.op** %top, align 8
  %value163 = getelementptr inbounds %struct.op, %struct.op* %129, i32 0, i32 4
  store i64 %or162, i64* %value163, align 8
  %130 = load i32, i32* %unsigned1, align 4
  %131 = load i32, i32* %unsigned2, align 4
  %or164 = or i32 %130, %131
  %conv165 = trunc i32 %or164 to i8
  %132 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp166 = getelementptr inbounds %struct.op, %struct.op* %132, i32 0, i32 3
  store i8 %conv165, i8* %unsignedp166, align 1
  br label %sw.epilog.450

sw.bb.167:                                        ; preds = %if.end.55
  %133 = load i32, i32* %skip_evaluation, align 4
  %tobool168 = icmp ne i32 %133, 0
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %sw.bb.167
  br label %sw.epilog.450

if.end.170:                                       ; preds = %sw.bb.167
  %134 = load i32, i32* %unsigned1, align 4
  %conv171 = trunc i32 %134 to i8
  %135 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp172 = getelementptr inbounds %struct.op, %struct.op* %135, i32 0, i32 3
  store i8 %conv171, i8* %unsignedp172, align 1
  %136 = load i64, i64* %v2, align 8
  %cmp173 = icmp slt i64 %136, 0
  br i1 %cmp173, label %land.lhs.true, label %if.else.179

land.lhs.true:                                    ; preds = %if.end.170
  %137 = load i32, i32* %unsigned2, align 4
  %tobool175 = icmp ne i32 %137, 0
  br i1 %tobool175, label %if.else.179, label %if.then.176

if.then.176:                                      ; preds = %land.lhs.true
  %138 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %139 = load i64, i64* %v1, align 8
  %140 = load i32, i32* %unsigned1, align 4
  %141 = load i64, i64* %v2, align 8
  %sub = sub nsw i64 0, %141
  %call177 = call i64 @right_shift(%struct.cpp_reader* %138, i64 %139, i32 %140, i64 %sub)
  %142 = load %struct.op*, %struct.op** %top, align 8
  %value178 = getelementptr inbounds %struct.op, %struct.op* %142, i32 0, i32 4
  store i64 %call177, i64* %value178, align 8
  br label %if.end.182

if.else.179:                                      ; preds = %land.lhs.true, %if.end.170
  %143 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %144 = load i64, i64* %v1, align 8
  %145 = load i32, i32* %unsigned1, align 4
  %146 = load i64, i64* %v2, align 8
  %call180 = call i64 @left_shift(%struct.cpp_reader* %143, i64 %144, i32 %145, i64 %146)
  %147 = load %struct.op*, %struct.op** %top, align 8
  %value181 = getelementptr inbounds %struct.op, %struct.op* %147, i32 0, i32 4
  store i64 %call180, i64* %value181, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.176
  br label %sw.epilog.450

sw.bb.183:                                        ; preds = %if.end.55
  %148 = load i32, i32* %skip_evaluation, align 4
  %tobool184 = icmp ne i32 %148, 0
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %sw.bb.183
  br label %sw.epilog.450

if.end.186:                                       ; preds = %sw.bb.183
  %149 = load i32, i32* %unsigned1, align 4
  %conv187 = trunc i32 %149 to i8
  %150 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp188 = getelementptr inbounds %struct.op, %struct.op* %150, i32 0, i32 3
  store i8 %conv187, i8* %unsignedp188, align 1
  %151 = load i64, i64* %v2, align 8
  %cmp189 = icmp slt i64 %151, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.197

land.lhs.true.191:                                ; preds = %if.end.186
  %152 = load i32, i32* %unsigned2, align 4
  %tobool192 = icmp ne i32 %152, 0
  br i1 %tobool192, label %if.else.197, label %if.then.193

if.then.193:                                      ; preds = %land.lhs.true.191
  %153 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %154 = load i64, i64* %v1, align 8
  %155 = load i32, i32* %unsigned1, align 4
  %156 = load i64, i64* %v2, align 8
  %sub194 = sub nsw i64 0, %156
  %call195 = call i64 @left_shift(%struct.cpp_reader* %153, i64 %154, i32 %155, i64 %sub194)
  %157 = load %struct.op*, %struct.op** %top, align 8
  %value196 = getelementptr inbounds %struct.op, %struct.op* %157, i32 0, i32 4
  store i64 %call195, i64* %value196, align 8
  br label %if.end.200

if.else.197:                                      ; preds = %land.lhs.true.191, %if.end.186
  %158 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %159 = load i64, i64* %v1, align 8
  %160 = load i32, i32* %unsigned1, align 4
  %161 = load i64, i64* %v2, align 8
  %call198 = call i64 @right_shift(%struct.cpp_reader* %158, i64 %159, i32 %160, i64 %161)
  %162 = load %struct.op*, %struct.op** %top, align 8
  %value199 = getelementptr inbounds %struct.op, %struct.op* %162, i32 0, i32 4
  store i64 %call198, i64* %value199, align 8
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.197, %if.then.193
  br label %sw.epilog.450

sw.bb.201:                                        ; preds = %if.end.55
  %163 = load i64, i64* %v1, align 8
  %164 = load i64, i64* %v2, align 8
  %cmp202 = icmp slt i64 %163, %164
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %sw.bb.201
  %165 = load i64, i64* %v1, align 8
  br label %cond.end.206

cond.false.205:                                   ; preds = %sw.bb.201
  %166 = load i64, i64* %v2, align 8
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.true.204
  %cond207 = phi i64 [ %165, %cond.true.204 ], [ %166, %cond.false.205 ]
  %167 = load %struct.op*, %struct.op** %top, align 8
  %value208 = getelementptr inbounds %struct.op, %struct.op* %167, i32 0, i32 4
  store i64 %cond207, i64* %value208, align 8
  %168 = load i32, i32* %unsigned1, align 4
  %169 = load i32, i32* %unsigned2, align 4
  %or209 = or i32 %168, %169
  %conv210 = trunc i32 %or209 to i8
  %170 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp211 = getelementptr inbounds %struct.op, %struct.op* %170, i32 0, i32 3
  store i8 %conv210, i8* %unsignedp211, align 1
  br label %sw.epilog.450

sw.bb.212:                                        ; preds = %if.end.55
  %171 = load i64, i64* %v1, align 8
  %172 = load i64, i64* %v2, align 8
  %cmp213 = icmp sgt i64 %171, %172
  br i1 %cmp213, label %cond.true.215, label %cond.false.216

cond.true.215:                                    ; preds = %sw.bb.212
  %173 = load i64, i64* %v1, align 8
  br label %cond.end.217

cond.false.216:                                   ; preds = %sw.bb.212
  %174 = load i64, i64* %v2, align 8
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.215
  %cond218 = phi i64 [ %173, %cond.true.215 ], [ %174, %cond.false.216 ]
  %175 = load %struct.op*, %struct.op** %top, align 8
  %value219 = getelementptr inbounds %struct.op, %struct.op* %175, i32 0, i32 4
  store i64 %cond218, i64* %value219, align 8
  %176 = load i32, i32* %unsigned1, align 4
  %177 = load i32, i32* %unsigned2, align 4
  %or220 = or i32 %176, %177
  %conv221 = trunc i32 %or220 to i8
  %178 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp222 = getelementptr inbounds %struct.op, %struct.op* %178, i32 0, i32 3
  store i8 %conv221, i8* %unsignedp222, align 1
  br label %sw.epilog.450

sw.bb.223:                                        ; preds = %if.end.55
  %179 = load %struct.op*, %struct.op** %top, align 8
  %flags224 = getelementptr inbounds %struct.op, %struct.op* %179, i32 0, i32 2
  %180 = load i8, i8* %flags224, align 1
  %conv225 = zext i8 %180 to i32
  %and226 = and i32 %conv225, 1
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.else.239, label %if.then.228

if.then.228:                                      ; preds = %sw.bb.223
  %181 = load i64, i64* %v2, align 8
  %182 = load %struct.op*, %struct.op** %top, align 8
  %value229 = getelementptr inbounds %struct.op, %struct.op* %182, i32 0, i32 4
  store i64 %181, i64* %value229, align 8
  %183 = load i32, i32* %unsigned2, align 4
  %conv230 = trunc i32 %183 to i8
  %184 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp231 = getelementptr inbounds %struct.op, %struct.op* %184, i32 0, i32 3
  store i8 %conv230, i8* %unsignedp231, align 1
  %185 = load %struct.op*, %struct.op** %top, align 8
  %flags232 = getelementptr inbounds %struct.op, %struct.op* %185, i32 0, i32 2
  %186 = load i8, i8* %flags232, align 1
  %conv233 = zext i8 %186 to i32
  %or234 = or i32 %conv233, 1
  %conv235 = trunc i32 %or234 to i8
  store i8 %conv235, i8* %flags232, align 1
  %187 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %187, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 33
  %188 = load i8, i8* %warn_traditional, align 1
  %tobool236 = icmp ne i8 %188, 0
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %if.then.228
  %189 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %189, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %if.then.228
  br label %if.end.258

if.else.239:                                      ; preds = %sw.bb.223
  %190 = load i64, i64* %v1, align 8
  %191 = load i64, i64* %v2, align 8
  %add = add nsw i64 %190, %191
  %192 = load %struct.op*, %struct.op** %top, align 8
  %value240 = getelementptr inbounds %struct.op, %struct.op* %192, i32 0, i32 4
  store i64 %add, i64* %value240, align 8
  %193 = load i32, i32* %unsigned1, align 4
  %194 = load i32, i32* %unsigned2, align 4
  %or241 = or i32 %193, %194
  %conv242 = trunc i32 %or241 to i8
  %195 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp243 = getelementptr inbounds %struct.op, %struct.op* %195, i32 0, i32 3
  store i8 %conv242, i8* %unsignedp243, align 1
  %196 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp244 = getelementptr inbounds %struct.op, %struct.op* %196, i32 0, i32 3
  %197 = load i8, i8* %unsignedp244, align 1
  %tobool245 = icmp ne i8 %197, 0
  br i1 %tobool245, label %if.end.257, label %land.lhs.true.246

land.lhs.true.246:                                ; preds = %if.else.239
  %198 = load i32, i32* %skip_evaluation, align 4
  %tobool247 = icmp ne i32 %198, 0
  br i1 %tobool247, label %if.end.257, label %land.lhs.true.248

land.lhs.true.248:                                ; preds = %land.lhs.true.246
  %199 = load i64, i64* %v1, align 8
  %200 = load i64, i64* %v2, align 8
  %xor249 = xor i64 %199, %200
  %201 = load i64, i64* %v1, align 8
  %202 = load %struct.op*, %struct.op** %top, align 8
  %value250 = getelementptr inbounds %struct.op, %struct.op* %202, i32 0, i32 4
  %203 = load i64, i64* %value250, align 8
  %xor251 = xor i64 %201, %203
  %neg252 = xor i64 %xor251, -1
  %or253 = or i64 %xor249, %neg252
  %cmp254 = icmp slt i64 %or253, 0
  br i1 %cmp254, label %if.end.257, label %if.then.256

if.then.256:                                      ; preds = %land.lhs.true.248
  %204 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %204)
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %land.lhs.true.248, %land.lhs.true.246, %if.else.239
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.238
  br label %sw.epilog.450

sw.bb.259:                                        ; preds = %if.end.55
  %205 = load %struct.op*, %struct.op** %top, align 8
  %flags260 = getelementptr inbounds %struct.op, %struct.op* %205, i32 0, i32 2
  %206 = load i8, i8* %flags260, align 1
  %conv261 = zext i8 %206 to i32
  %and262 = and i32 %conv261, 1
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.else.283, label %if.then.264

if.then.264:                                      ; preds = %sw.bb.259
  %207 = load i64, i64* %v2, align 8
  %sub265 = sub nsw i64 0, %207
  %208 = load %struct.op*, %struct.op** %top, align 8
  %value266 = getelementptr inbounds %struct.op, %struct.op* %208, i32 0, i32 4
  store i64 %sub265, i64* %value266, align 8
  %209 = load i32, i32* %unsigned2, align 4
  %conv267 = trunc i32 %209 to i8
  %210 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp268 = getelementptr inbounds %struct.op, %struct.op* %210, i32 0, i32 3
  store i8 %conv267, i8* %unsignedp268, align 1
  %211 = load %struct.op*, %struct.op** %top, align 8
  %flags269 = getelementptr inbounds %struct.op, %struct.op* %211, i32 0, i32 2
  %212 = load i8, i8* %flags269, align 1
  %conv270 = zext i8 %212 to i32
  %or271 = or i32 %conv270, 1
  %conv272 = trunc i32 %or271 to i8
  store i8 %conv272, i8* %flags269, align 1
  %213 = load i32, i32* %skip_evaluation, align 4
  %tobool273 = icmp ne i32 %213, 0
  br i1 %tobool273, label %if.end.282, label %land.lhs.true.274

land.lhs.true.274:                                ; preds = %if.then.264
  %214 = load %struct.op*, %struct.op** %top, align 8
  %value275 = getelementptr inbounds %struct.op, %struct.op* %214, i32 0, i32 4
  %215 = load i64, i64* %value275, align 8
  %216 = load i64, i64* %v2, align 8
  %and276 = and i64 %215, %216
  %cmp277 = icmp slt i64 %and276, 0
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.282

land.lhs.true.279:                                ; preds = %land.lhs.true.274
  %217 = load i32, i32* %unsigned2, align 4
  %tobool280 = icmp ne i32 %217, 0
  br i1 %tobool280, label %if.end.282, label %if.then.281

if.then.281:                                      ; preds = %land.lhs.true.279
  %218 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %218)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.281, %land.lhs.true.279, %land.lhs.true.274, %if.then.264
  br label %if.end.304

if.else.283:                                      ; preds = %sw.bb.259
  %219 = load i64, i64* %v1, align 8
  %220 = load i64, i64* %v2, align 8
  %sub284 = sub nsw i64 %219, %220
  %221 = load %struct.op*, %struct.op** %top, align 8
  %value285 = getelementptr inbounds %struct.op, %struct.op* %221, i32 0, i32 4
  store i64 %sub284, i64* %value285, align 8
  %222 = load i32, i32* %unsigned1, align 4
  %223 = load i32, i32* %unsigned2, align 4
  %or286 = or i32 %222, %223
  %conv287 = trunc i32 %or286 to i8
  %224 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp288 = getelementptr inbounds %struct.op, %struct.op* %224, i32 0, i32 3
  store i8 %conv287, i8* %unsignedp288, align 1
  %225 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp289 = getelementptr inbounds %struct.op, %struct.op* %225, i32 0, i32 3
  %226 = load i8, i8* %unsignedp289, align 1
  %tobool290 = icmp ne i8 %226, 0
  br i1 %tobool290, label %if.end.303, label %land.lhs.true.291

land.lhs.true.291:                                ; preds = %if.else.283
  %227 = load i32, i32* %skip_evaluation, align 4
  %tobool292 = icmp ne i32 %227, 0
  br i1 %tobool292, label %if.end.303, label %land.lhs.true.293

land.lhs.true.293:                                ; preds = %land.lhs.true.291
  %228 = load %struct.op*, %struct.op** %top, align 8
  %value294 = getelementptr inbounds %struct.op, %struct.op* %228, i32 0, i32 4
  %229 = load i64, i64* %value294, align 8
  %230 = load i64, i64* %v2, align 8
  %xor295 = xor i64 %229, %230
  %231 = load %struct.op*, %struct.op** %top, align 8
  %value296 = getelementptr inbounds %struct.op, %struct.op* %231, i32 0, i32 4
  %232 = load i64, i64* %value296, align 8
  %233 = load i64, i64* %v1, align 8
  %xor297 = xor i64 %232, %233
  %neg298 = xor i64 %xor297, -1
  %or299 = or i64 %xor295, %neg298
  %cmp300 = icmp slt i64 %or299, 0
  br i1 %cmp300, label %if.end.303, label %if.then.302

if.then.302:                                      ; preds = %land.lhs.true.293
  %234 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %234)
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.302, %land.lhs.true.293, %land.lhs.true.291, %if.else.283
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.end.282
  br label %sw.epilog.450

sw.bb.305:                                        ; preds = %if.end.55
  %235 = load i32, i32* %unsigned1, align 4
  %236 = load i32, i32* %unsigned2, align 4
  %or306 = or i32 %235, %236
  %conv307 = trunc i32 %or306 to i8
  %237 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp308 = getelementptr inbounds %struct.op, %struct.op* %237, i32 0, i32 3
  store i8 %conv307, i8* %unsignedp308, align 1
  %238 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp309 = getelementptr inbounds %struct.op, %struct.op* %238, i32 0, i32 3
  %239 = load i8, i8* %unsignedp309, align 1
  %tobool310 = icmp ne i8 %239, 0
  br i1 %tobool310, label %if.then.311, label %if.else.313

if.then.311:                                      ; preds = %sw.bb.305
  %240 = load i64, i64* %v1, align 8
  %241 = load i64, i64* %v2, align 8
  %mul = mul i64 %240, %241
  %242 = load %struct.op*, %struct.op** %top, align 8
  %value312 = getelementptr inbounds %struct.op, %struct.op* %242, i32 0, i32 4
  store i64 %mul, i64* %value312, align 8
  br label %if.end.331

if.else.313:                                      ; preds = %sw.bb.305
  %243 = load i32, i32* %skip_evaluation, align 4
  %tobool314 = icmp ne i32 %243, 0
  br i1 %tobool314, label %if.end.330, label %if.then.315

if.then.315:                                      ; preds = %if.else.313
  %244 = load i64, i64* %v1, align 8
  %245 = load i64, i64* %v2, align 8
  %mul316 = mul nsw i64 %244, %245
  %246 = load %struct.op*, %struct.op** %top, align 8
  %value317 = getelementptr inbounds %struct.op, %struct.op* %246, i32 0, i32 4
  store i64 %mul316, i64* %value317, align 8
  %247 = load i64, i64* %v1, align 8
  %tobool318 = icmp ne i64 %247, 0
  br i1 %tobool318, label %land.lhs.true.319, label %if.end.329

land.lhs.true.319:                                ; preds = %if.then.315
  %248 = load %struct.op*, %struct.op** %top, align 8
  %value320 = getelementptr inbounds %struct.op, %struct.op* %248, i32 0, i32 4
  %249 = load i64, i64* %value320, align 8
  %250 = load i64, i64* %v1, align 8
  %div = sdiv i64 %249, %250
  %251 = load i64, i64* %v2, align 8
  %cmp321 = icmp ne i64 %div, %251
  br i1 %cmp321, label %if.then.328, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.319
  %252 = load %struct.op*, %struct.op** %top, align 8
  %value323 = getelementptr inbounds %struct.op, %struct.op* %252, i32 0, i32 4
  %253 = load i64, i64* %value323, align 8
  %254 = load i64, i64* %v1, align 8
  %and324 = and i64 %253, %254
  %255 = load i64, i64* %v2, align 8
  %and325 = and i64 %and324, %255
  %cmp326 = icmp slt i64 %and325, 0
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %lor.lhs.false, %land.lhs.true.319
  %256 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %256)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %lor.lhs.false, %if.then.315
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.else.313
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %if.then.311
  br label %sw.epilog.450

sw.bb.332:                                        ; preds = %if.end.55, %if.end.55
  %257 = load i32, i32* %skip_evaluation, align 4
  %tobool333 = icmp ne i32 %257, 0
  br i1 %tobool333, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %sw.bb.332
  br label %sw.epilog.450

if.end.335:                                       ; preds = %sw.bb.332
  %258 = load i64, i64* %v2, align 8
  %cmp336 = icmp eq i64 %258, 0
  br i1 %cmp336, label %if.then.338, label %if.end.341

if.then.338:                                      ; preds = %if.end.335
  br label %do.body.339

do.body.339:                                      ; preds = %if.then.338
  %259 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %syntax_error

do.end.340:                                       ; No predecessors!
  br label %if.end.341

if.end.341:                                       ; preds = %do.end.340, %if.end.335
  %260 = load i32, i32* %unsigned1, align 4
  %261 = load i32, i32* %unsigned2, align 4
  %or342 = or i32 %260, %261
  %conv343 = trunc i32 %or342 to i8
  %262 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp344 = getelementptr inbounds %struct.op, %struct.op* %262, i32 0, i32 3
  store i8 %conv343, i8* %unsignedp344, align 1
  %263 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx345 = getelementptr inbounds %struct.op, %struct.op* %263, i64 1
  %op346 = getelementptr inbounds %struct.op, %struct.op* %arrayidx345, i32 0, i32 0
  %264 = load i32, i32* %op346, align 4
  %cmp347 = icmp eq i32 %264, 7
  br i1 %cmp347, label %if.then.349, label %if.else.366

if.then.349:                                      ; preds = %if.end.341
  %265 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp350 = getelementptr inbounds %struct.op, %struct.op* %265, i32 0, i32 3
  %266 = load i8, i8* %unsignedp350, align 1
  %tobool351 = icmp ne i8 %266, 0
  br i1 %tobool351, label %if.then.352, label %if.else.355

if.then.352:                                      ; preds = %if.then.349
  %267 = load i64, i64* %v1, align 8
  %268 = load i64, i64* %v2, align 8
  %div353 = udiv i64 %267, %268
  %269 = load %struct.op*, %struct.op** %top, align 8
  %value354 = getelementptr inbounds %struct.op, %struct.op* %269, i32 0, i32 4
  store i64 %div353, i64* %value354, align 8
  br label %if.end.365

if.else.355:                                      ; preds = %if.then.349
  %270 = load i64, i64* %v1, align 8
  %271 = load i64, i64* %v2, align 8
  %div356 = sdiv i64 %270, %271
  %272 = load %struct.op*, %struct.op** %top, align 8
  %value357 = getelementptr inbounds %struct.op, %struct.op* %272, i32 0, i32 4
  store i64 %div356, i64* %value357, align 8
  %273 = load %struct.op*, %struct.op** %top, align 8
  %value358 = getelementptr inbounds %struct.op, %struct.op* %273, i32 0, i32 4
  %274 = load i64, i64* %value358, align 8
  %275 = load i64, i64* %v1, align 8
  %and359 = and i64 %274, %275
  %276 = load i64, i64* %v2, align 8
  %and360 = and i64 %and359, %276
  %cmp361 = icmp slt i64 %and360, 0
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.else.355
  %277 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %277)
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.363, %if.else.355
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.then.352
  br label %if.end.375

if.else.366:                                      ; preds = %if.end.341
  %278 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp367 = getelementptr inbounds %struct.op, %struct.op* %278, i32 0, i32 3
  %279 = load i8, i8* %unsignedp367, align 1
  %tobool368 = icmp ne i8 %279, 0
  br i1 %tobool368, label %if.then.369, label %if.else.371

if.then.369:                                      ; preds = %if.else.366
  %280 = load i64, i64* %v1, align 8
  %281 = load i64, i64* %v2, align 8
  %rem = urem i64 %280, %281
  %282 = load %struct.op*, %struct.op** %top, align 8
  %value370 = getelementptr inbounds %struct.op, %struct.op* %282, i32 0, i32 4
  store i64 %rem, i64* %value370, align 8
  br label %if.end.374

if.else.371:                                      ; preds = %if.else.366
  %283 = load i64, i64* %v1, align 8
  %284 = load i64, i64* %v2, align 8
  %rem372 = srem i64 %283, %284
  %285 = load %struct.op*, %struct.op** %top, align 8
  %value373 = getelementptr inbounds %struct.op, %struct.op* %285, i32 0, i32 4
  store i64 %rem372, i64* %value373, align 8
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.371, %if.then.369
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.end.365
  br label %sw.epilog.450

sw.bb.376:                                        ; preds = %if.end.55
  %286 = load i64, i64* %v1, align 8
  %tobool377 = icmp ne i64 %286, 0
  br i1 %tobool377, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.376
  %287 = load i64, i64* %v2, align 8
  %tobool378 = icmp ne i64 %287, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.376
  %288 = phi i1 [ true, %sw.bb.376 ], [ %tobool378, %lor.rhs ]
  %lor.ext = zext i1 %288 to i32
  %conv379 = sext i32 %lor.ext to i64
  %289 = load %struct.op*, %struct.op** %top, align 8
  %value380 = getelementptr inbounds %struct.op, %struct.op* %289, i32 0, i32 4
  store i64 %conv379, i64* %value380, align 8
  %290 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp381 = getelementptr inbounds %struct.op, %struct.op* %290, i32 0, i32 3
  store i8 0, i8* %unsignedp381, align 1
  %291 = load i64, i64* %v1, align 8
  %tobool382 = icmp ne i64 %291, 0
  br i1 %tobool382, label %if.then.383, label %if.end.384

if.then.383:                                      ; preds = %lor.end
  %292 = load i32, i32* %skip_evaluation, align 4
  %dec = add nsw i32 %292, -1
  store i32 %dec, i32* %skip_evaluation, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.383, %lor.end
  br label %sw.epilog.450

sw.bb.385:                                        ; preds = %if.end.55
  %293 = load i64, i64* %v1, align 8
  %tobool386 = icmp ne i64 %293, 0
  br i1 %tobool386, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.385
  %294 = load i64, i64* %v2, align 8
  %tobool387 = icmp ne i64 %294, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.385
  %295 = phi i1 [ false, %sw.bb.385 ], [ %tobool387, %land.rhs ]
  %land.ext = zext i1 %295 to i32
  %conv388 = sext i32 %land.ext to i64
  %296 = load %struct.op*, %struct.op** %top, align 8
  %value389 = getelementptr inbounds %struct.op, %struct.op* %296, i32 0, i32 4
  store i64 %conv388, i64* %value389, align 8
  %297 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp390 = getelementptr inbounds %struct.op, %struct.op* %297, i32 0, i32 3
  store i8 0, i8* %unsignedp390, align 1
  %298 = load i64, i64* %v1, align 8
  %tobool391 = icmp ne i64 %298, 0
  br i1 %tobool391, label %if.end.394, label %if.then.392

if.then.392:                                      ; preds = %land.end
  %299 = load i32, i32* %skip_evaluation, align 4
  %dec393 = add nsw i32 %299, -1
  store i32 %dec393, i32* %skip_evaluation, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.392, %land.end
  br label %sw.epilog.450

sw.bb.395:                                        ; preds = %if.end.55
  %300 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts396 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %300, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts396, i32 0, i32 42
  %301 = load i8, i8* %pedantic, align 1
  %tobool397 = icmp ne i8 %301, 0
  br i1 %tobool397, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %sw.bb.395
  %302 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %302, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %sw.bb.395
  %303 = load i64, i64* %v2, align 8
  %304 = load %struct.op*, %struct.op** %top, align 8
  %value400 = getelementptr inbounds %struct.op, %struct.op* %304, i32 0, i32 4
  store i64 %303, i64* %value400, align 8
  %305 = load i32, i32* %unsigned2, align 4
  %conv401 = trunc i32 %305 to i8
  %306 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp402 = getelementptr inbounds %struct.op, %struct.op* %306, i32 0, i32 3
  store i8 %conv401, i8* %unsignedp402, align 1
  br label %sw.epilog.450

sw.bb.403:                                        ; preds = %if.end.55
  br label %do.body.404

do.body.404:                                      ; preds = %sw.bb.403
  %307 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %307, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  br label %syntax_error

do.end.405:                                       ; No predecessors!
  br label %sw.bb.406

sw.bb.406:                                        ; preds = %if.end.55, %do.end.405
  %308 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx407 = getelementptr inbounds %struct.op, %struct.op* %308, i64 0
  %op408 = getelementptr inbounds %struct.op, %struct.op* %arrayidx407, i32 0, i32 0
  %309 = load i32, i32* %op408, align 4
  %cmp409 = icmp ne i32 %309, 19
  br i1 %cmp409, label %if.then.411, label %if.end.414

if.then.411:                                      ; preds = %sw.bb.406
  br label %do.body.412

do.body.412:                                      ; preds = %if.then.411
  %310 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %310, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  br label %syntax_error

do.end.413:                                       ; No predecessors!
  br label %if.end.414

if.end.414:                                       ; preds = %do.end.413, %sw.bb.406
  %311 = load %struct.op*, %struct.op** %top, align 8
  %incdec.ptr415 = getelementptr inbounds %struct.op, %struct.op* %311, i32 -1
  store %struct.op* %incdec.ptr415, %struct.op** %top, align 8
  %312 = load %struct.op*, %struct.op** %top, align 8
  %value416 = getelementptr inbounds %struct.op, %struct.op* %312, i32 0, i32 4
  %313 = load i64, i64* %value416, align 8
  %tobool417 = icmp ne i64 %313, 0
  br i1 %tobool417, label %if.then.418, label %if.end.420

if.then.418:                                      ; preds = %if.end.414
  %314 = load i32, i32* %skip_evaluation, align 4
  %dec419 = add nsw i32 %314, -1
  store i32 %dec419, i32* %skip_evaluation, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.418, %if.end.414
  %315 = load %struct.op*, %struct.op** %top, align 8
  %value421 = getelementptr inbounds %struct.op, %struct.op* %315, i32 0, i32 4
  %316 = load i64, i64* %value421, align 8
  %tobool422 = icmp ne i64 %316, 0
  br i1 %tobool422, label %cond.true.423, label %cond.false.424

cond.true.423:                                    ; preds = %if.end.420
  %317 = load i64, i64* %v1, align 8
  br label %cond.end.425

cond.false.424:                                   ; preds = %if.end.420
  %318 = load i64, i64* %v2, align 8
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.424, %cond.true.423
  %cond426 = phi i64 [ %317, %cond.true.423 ], [ %318, %cond.false.424 ]
  %319 = load %struct.op*, %struct.op** %top, align 8
  %value427 = getelementptr inbounds %struct.op, %struct.op* %319, i32 0, i32 4
  store i64 %cond426, i64* %value427, align 8
  %320 = load i32, i32* %unsigned1, align 4
  %321 = load i32, i32* %unsigned2, align 4
  %or428 = or i32 %320, %321
  %conv429 = trunc i32 %or428 to i8
  %322 = load %struct.op*, %struct.op** %top, align 8
  %unsignedp430 = getelementptr inbounds %struct.op, %struct.op* %322, i32 0, i32 3
  store i8 %conv429, i8* %unsignedp430, align 1
  br label %sw.epilog.450

sw.bb.431:                                        ; preds = %if.end.55
  %op432 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %323 = load i32, i32* %op432, align 4
  %cmp433 = icmp ne i32 %323, 23
  br i1 %cmp433, label %if.then.435, label %if.end.438

if.then.435:                                      ; preds = %sw.bb.431
  br label %do.body.436

do.body.436:                                      ; preds = %if.then.435
  %324 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %324, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %syntax_error

do.end.437:                                       ; No predecessors!
  br label %if.end.438

if.end.438:                                       ; preds = %do.end.437, %sw.bb.431
  %325 = load i64, i64* %v2, align 8
  %value439 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 4
  store i64 %325, i64* %value439, align 8
  %326 = load i32, i32* %unsigned2, align 4
  %conv440 = trunc i32 %326 to i8
  %unsignedp441 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 3
  store i8 %conv440, i8* %unsignedp441, align 1
  br label %push_immediate

sw.bb.442:                                        ; preds = %if.end.55
  %op443 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %327 = load i32, i32* %op443, align 4
  %cmp444 = icmp eq i32 %327, 23
  br i1 %cmp444, label %if.then.446, label %if.end.449

if.then.446:                                      ; preds = %sw.bb.442
  br label %do.body.447

do.body.447:                                      ; preds = %if.then.446
  %328 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %328, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %syntax_error

do.end.448:                                       ; No predecessors!
  br label %if.end.449

if.end.449:                                       ; preds = %do.end.448, %sw.bb.442
  br label %done

sw.epilog.450:                                    ; preds = %cond.end.425, %if.end.399, %if.end.394, %if.end.384, %if.end.375, %if.then.334, %if.end.331, %if.end.304, %if.end.258, %cond.end.217, %cond.end.206, %if.end.200, %if.then.185, %if.end.182, %if.then.169, %sw.bb.161, %sw.bb.156, %sw.bb.150, %sw.bb.144, %sw.bb.138, %cond.end.134, %cond.end.120, %cond.end.106, %cond.end, %sw.bb.78, %sw.bb.68
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %329 = load i32, i32* %flags3, align 4
  %and451 = and i32 %329, 8
  %tobool452 = icmp ne i32 %and451, 0
  br i1 %tobool452, label %if.then.453, label %if.end.478

if.then.453:                                      ; preds = %while.end
  %op454 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %330 = load i32, i32* %op454, align 4
  switch i32 %330, label %sw.default.476 [
    i32 18, label %sw.bb.455
    i32 17, label %sw.bb.461
    i32 19, label %sw.bb.461
    i32 20, label %sw.bb.467
  ]

sw.bb.455:                                        ; preds = %if.then.453
  %331 = load %struct.op*, %struct.op** %top, align 8
  %value456 = getelementptr inbounds %struct.op, %struct.op* %331, i32 0, i32 4
  %332 = load i64, i64* %value456, align 8
  %tobool457 = icmp ne i64 %332, 0
  br i1 %tobool457, label %if.then.458, label %if.end.460

if.then.458:                                      ; preds = %sw.bb.455
  %333 = load i32, i32* %skip_evaluation, align 4
  %inc459 = add nsw i32 %333, 1
  store i32 %inc459, i32* %skip_evaluation, align 4
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.458, %sw.bb.455
  br label %sw.epilog.477

sw.bb.461:                                        ; preds = %if.then.453, %if.then.453
  %334 = load %struct.op*, %struct.op** %top, align 8
  %value462 = getelementptr inbounds %struct.op, %struct.op* %334, i32 0, i32 4
  %335 = load i64, i64* %value462, align 8
  %tobool463 = icmp ne i64 %335, 0
  br i1 %tobool463, label %if.end.466, label %if.then.464

if.then.464:                                      ; preds = %sw.bb.461
  %336 = load i32, i32* %skip_evaluation, align 4
  %inc465 = add nsw i32 %336, 1
  store i32 %inc465, i32* %skip_evaluation, align 4
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.464, %sw.bb.461
  br label %sw.epilog.477

sw.bb.467:                                        ; preds = %if.then.453
  %337 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx468 = getelementptr inbounds %struct.op, %struct.op* %337, i64 -1
  %value469 = getelementptr inbounds %struct.op, %struct.op* %arrayidx468, i32 0, i32 4
  %338 = load i64, i64* %value469, align 8
  %tobool470 = icmp ne i64 %338, 0
  br i1 %tobool470, label %if.then.471, label %if.else.473

if.then.471:                                      ; preds = %sw.bb.467
  %339 = load i32, i32* %skip_evaluation, align 4
  %inc472 = add nsw i32 %339, 1
  store i32 %inc472, i32* %skip_evaluation, align 4
  br label %if.end.475

if.else.473:                                      ; preds = %sw.bb.467
  %340 = load i32, i32* %skip_evaluation, align 4
  %dec474 = add nsw i32 %340, -1
  store i32 %dec474, i32* %skip_evaluation, align 4
  br label %if.end.475

if.end.475:                                       ; preds = %if.else.473, %if.then.471
  br label %sw.default.476

sw.default.476:                                   ; preds = %if.then.453, %if.end.475
  br label %sw.epilog.477

sw.epilog.477:                                    ; preds = %sw.default.476, %if.end.466, %if.end.460
  br label %if.end.478

if.end.478:                                       ; preds = %sw.epilog.477, %while.end
  br label %skip_reduction

skip_reduction:                                   ; preds = %if.end.478, %if.then.32
  %341 = load i32, i32* %flags3, align 4
  %and479 = and i32 %341, 2
  %tobool480 = icmp ne i32 %and479, 0
  br i1 %tobool480, label %if.then.481, label %if.else.492

if.then.481:                                      ; preds = %skip_reduction
  %342 = load %struct.op*, %struct.op** %top, align 8
  %flags482 = getelementptr inbounds %struct.op, %struct.op* %342, i32 0, i32 2
  %343 = load i8, i8* %flags482, align 1
  %conv483 = zext i8 %343 to i32
  %and484 = and i32 %conv483, 1
  %tobool485 = icmp ne i32 %and484, 0
  br i1 %tobool485, label %if.then.486, label %if.end.491

if.then.486:                                      ; preds = %if.then.481
  br label %do.body.487

do.body.487:                                      ; preds = %if.then.486
  %344 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %345 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %op488 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %346 = load i32, i32* %op488, align 4
  %call489 = call i8* @op_as_text(%struct.cpp_reader* %345, i32 %346)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %344, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* %call489)
  br label %syntax_error

do.end.490:                                       ; No predecessors!
  br label %if.end.491

if.end.491:                                       ; preds = %do.end.490, %if.then.481
  br label %if.end.503

if.else.492:                                      ; preds = %skip_reduction
  %347 = load %struct.op*, %struct.op** %top, align 8
  %flags493 = getelementptr inbounds %struct.op, %struct.op* %347, i32 0, i32 2
  %348 = load i8, i8* %flags493, align 1
  %conv494 = zext i8 %348 to i32
  %and495 = and i32 %conv494, 1
  %tobool496 = icmp ne i32 %and495, 0
  br i1 %tobool496, label %if.end.502, label %if.then.497

if.then.497:                                      ; preds = %if.else.492
  br label %do.body.498

do.body.498:                                      ; preds = %if.then.497
  %349 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %350 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %op499 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %351 = load i32, i32* %op499, align 4
  %call500 = call i8* @op_as_text(%struct.cpp_reader* %350, i32 %351)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %349, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* %call500)
  br label %syntax_error

do.end.501:                                       ; No predecessors!
  br label %if.end.502

if.end.502:                                       ; preds = %do.end.501, %if.else.492
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %if.end.491
  %352 = load %struct.op*, %struct.op** %top, align 8
  %incdec.ptr504 = getelementptr inbounds %struct.op, %struct.op* %352, i32 1
  store %struct.op* %incdec.ptr504, %struct.op** %top, align 8
  %353 = load %struct.op*, %struct.op** %top, align 8
  %354 = load %struct.op*, %struct.op** %limit, align 8
  %cmp505 = icmp eq %struct.op* %353, %354
  br i1 %cmp505, label %if.then.507, label %if.end.524

if.then.507:                                      ; preds = %if.end.503
  %355 = load %struct.op*, %struct.op** %limit, align 8
  %356 = bitcast %struct.op* %355 to i8*
  %357 = load %struct.op*, %struct.op** %stack, align 8
  %358 = bitcast %struct.op* %357 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %356 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %358 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv508 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv508, i32* %old_size, align 4
  %359 = load i32, i32* %old_size, align 4
  %mul509 = mul nsw i32 2, %359
  store i32 %mul509, i32* %new_size, align 4
  %360 = load %struct.op*, %struct.op** %stack, align 8
  %arraydecay510 = getelementptr inbounds [20 x %struct.op], [20 x %struct.op]* %init_stack, i32 0, i32 0
  %cmp511 = icmp ne %struct.op* %360, %arraydecay510
  br i1 %cmp511, label %if.then.513, label %if.else.516

if.then.513:                                      ; preds = %if.then.507
  %361 = load %struct.op*, %struct.op** %stack, align 8
  %362 = bitcast %struct.op* %361 to i8*
  %363 = load i32, i32* %new_size, align 4
  %conv514 = sext i32 %363 to i64
  %call515 = call i8* @xrealloc(i8* %362, i64 %conv514)
  %364 = bitcast i8* %call515 to %struct.op*
  store %struct.op* %364, %struct.op** %new_stack, align 8
  br label %if.end.520

if.else.516:                                      ; preds = %if.then.507
  %365 = load i32, i32* %new_size, align 4
  %conv517 = sext i32 %365 to i64
  %call518 = call noalias i8* @xmalloc(i64 %conv517)
  %366 = bitcast i8* %call518 to %struct.op*
  store %struct.op* %366, %struct.op** %new_stack, align 8
  %367 = load %struct.op*, %struct.op** %new_stack, align 8
  %368 = bitcast %struct.op* %367 to i8*
  %369 = load %struct.op*, %struct.op** %stack, align 8
  %370 = bitcast %struct.op* %369 to i8*
  %371 = load i32, i32* %old_size, align 4
  %conv519 = sext i32 %371 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %368, i8* %370, i64 %conv519, i32 8, i1 false)
  br label %if.end.520

if.end.520:                                       ; preds = %if.else.516, %if.then.513
  %372 = load %struct.op*, %struct.op** %new_stack, align 8
  store %struct.op* %372, %struct.op** %stack, align 8
  %373 = load %struct.op*, %struct.op** %new_stack, align 8
  %374 = bitcast %struct.op* %373 to i8*
  %375 = load i32, i32* %old_size, align 4
  %idx.ext = sext i32 %375 to i64
  %add.ptr521 = getelementptr inbounds i8, i8* %374, i64 %idx.ext
  %376 = bitcast i8* %add.ptr521 to %struct.op*
  store %struct.op* %376, %struct.op** %top, align 8
  %377 = load %struct.op*, %struct.op** %new_stack, align 8
  %378 = bitcast %struct.op* %377 to i8*
  %379 = load i32, i32* %new_size, align 4
  %idx.ext522 = sext i32 %379 to i64
  %add.ptr523 = getelementptr inbounds i8, i8* %378, i64 %idx.ext522
  %380 = bitcast i8* %add.ptr523 to %struct.op*
  store %struct.op* %380, %struct.op** %limit, align 8
  br label %if.end.524

if.end.524:                                       ; preds = %if.end.520, %if.end.503
  %381 = load i32, i32* %flags3, align 4
  %conv525 = trunc i32 %381 to i8
  %382 = load %struct.op*, %struct.op** %top, align 8
  %flags526 = getelementptr inbounds %struct.op, %struct.op* %382, i32 0, i32 2
  store i8 %conv525, i8* %flags526, align 1
  %383 = load i32, i32* %prio2, align 4
  %and527 = and i32 %383, -2
  %conv528 = trunc i32 %and527 to i8
  %384 = load %struct.op*, %struct.op** %top, align 8
  %prio529 = getelementptr inbounds %struct.op, %struct.op* %384, i32 0, i32 1
  store i8 %conv528, i8* %prio529, align 1
  %op530 = getelementptr inbounds %struct.op, %struct.op* %op4, i32 0, i32 0
  %385 = load i32, i32* %op530, align 4
  %386 = load %struct.op*, %struct.op** %top, align 8
  %op531 = getelementptr inbounds %struct.op, %struct.op* %386, i32 0, i32 0
  store i32 %385, i32* %op531, align 4
  br label %for.cond

done:                                             ; preds = %if.end.449
  %387 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_ind_cmacro532 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %387, i32 0, i32 13
  %388 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_ind_cmacro532, align 8
  %tobool533 = icmp ne %struct.cpp_hashnode* %388, null
  br i1 %tobool533, label %land.lhs.true.534, label %if.end.541

land.lhs.true.534:                                ; preds = %done
  %389 = load i32, i32* %saw_leading_not, align 4
  %tobool535 = icmp ne i32 %389, 0
  br i1 %tobool535, label %land.lhs.true.536, label %if.then.539

land.lhs.true.536:                                ; preds = %land.lhs.true.534
  %390 = load i32, i32* %lex_count, align 4
  %cmp537 = icmp eq i32 %390, 3
  br i1 %cmp537, label %if.end.541, label %if.then.539

if.then.539:                                      ; preds = %land.lhs.true.536, %land.lhs.true.534
  %391 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_ind_cmacro540 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %391, i32 0, i32 13
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_ind_cmacro540, align 8
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.539, %land.lhs.true.536, %done
  %392 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx542 = getelementptr inbounds %struct.op, %struct.op* %392, i64 1
  %value543 = getelementptr inbounds %struct.op, %struct.op* %arrayidx542, i32 0, i32 4
  %393 = load i64, i64* %value543, align 8
  %cmp544 = icmp ne i64 %393, 0
  %conv545 = zext i1 %cmp544 to i32
  store i32 %conv545, i32* %result, align 4
  %394 = load %struct.op*, %struct.op** %top, align 8
  %395 = load %struct.op*, %struct.op** %stack, align 8
  %cmp546 = icmp ne %struct.op* %394, %395
  br i1 %cmp546, label %if.then.548, label %if.else.551

if.then.548:                                      ; preds = %if.end.541
  br label %do.body.549

do.body.549:                                      ; preds = %if.then.548
  %396 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %396, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  br label %syntax_error

do.end.550:                                       ; No predecessors!
  br label %if.end.561

if.else.551:                                      ; preds = %if.end.541
  %397 = load %struct.op*, %struct.op** %top, align 8
  %arrayidx552 = getelementptr inbounds %struct.op, %struct.op* %397, i64 1
  %flags553 = getelementptr inbounds %struct.op, %struct.op* %arrayidx552, i32 0, i32 2
  %398 = load i8, i8* %flags553, align 1
  %conv554 = zext i8 %398 to i32
  %and555 = and i32 %conv554, 1
  %tobool556 = icmp ne i32 %and555, 0
  br i1 %tobool556, label %if.end.560, label %if.then.557

if.then.557:                                      ; preds = %if.else.551
  br label %do.body.558

do.body.558:                                      ; preds = %if.then.557
  %399 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %399, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  br label %syntax_error

do.end.559:                                       ; No predecessors!
  br label %syntax_error

syntax_error:                                     ; preds = %do.end.559, %do.body.558, %do.body.549, %do.body.498, %do.body.487, %do.body.447, %do.body.436, %do.body.412, %do.body.404, %do.body.339, %sw.default.64, %do.body.50, %do.body.48, %do.body, %sw.bb
  store i32 0, i32* %result, align 4
  br label %if.end.560

if.end.560:                                       ; preds = %syntax_error, %if.else.551
  br label %if.end.561

if.end.561:                                       ; preds = %if.end.560, %do.end.550
  %400 = load %struct.op*, %struct.op** %stack, align 8
  %arraydecay562 = getelementptr inbounds [20 x %struct.op], [20 x %struct.op]* %init_stack, i32 0, i32 0
  %cmp563 = icmp ne %struct.op* %400, %arraydecay562
  br i1 %cmp563, label %if.then.565, label %if.end.566

if.then.565:                                      ; preds = %if.end.561
  %401 = load %struct.op*, %struct.op** %stack, align 8
  %402 = bitcast %struct.op* %401 to i8*
  call void @free(i8* %402) #1
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.565, %if.end.561
  %403 = load i32, i32* %result, align 4
  ret i32 %403
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @lex(%struct.cpp_reader* %pfile, i32 %skip_evaluation) #0 {
entry:
  %retval = alloca %struct.op, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %skip_evaluation.addr = alloca i32, align 4
  %op = alloca %struct.op, align 8
  %token = alloca %struct.cpp_token*, align 8
  %chars_seen = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %skip_evaluation, i32* %skip_evaluation.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  switch i32 %bf.cast, label %sw.default [
    i32 57, label %sw.bb
    i32 58, label %sw.bb.2
    i32 59, label %sw.bb.2
    i32 61, label %sw.bb.9
    i32 62, label %sw.bb.9
    i32 60, label %sw.bb.10
    i32 56, label %sw.bb.26
    i32 40, label %sw.bb.81
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call1 = call { i64, i64 } @parse_number(%struct.cpp_reader* %2, %struct.cpp_token* %3)
  %4 = bitcast %struct.op* %retval to { i64, i64 }*
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  %6 = extractvalue { i64, i64 } %call1, 0
  store i64 %6, i64* %5, align 8
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %8 = extractvalue { i64, i64 } %call1, 1
  store i64 %8, i64* %7, align 8
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 2
  %bf.load4 = load i8, i8* %type3, align 2
  %bf.cast5 = zext i8 %bf.load4 to i32
  %cmp = icmp eq i32 %bf.cast5, 58
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %unsignedp = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp, align 1
  br label %if.end

if.else:                                          ; preds = %sw.bb.2
  %unsignedp6 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %op7 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 57, i32* %op7, align 4
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call8 = call i64 @cpp_interpret_charconst(%struct.cpp_reader* %10, %struct.cpp_token* %11, i32 1, i32 0, i32* %chars_seen)
  %value = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 4
  store i64 %call8, i64* %value, align 8
  %12 = bitcast %struct.op* %retval to i8*
  %13 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  br label %return

sw.bb.9:                                          ; preds = %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.9
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  br label %syntax_error

do.end:                                           ; No predecessors!
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %entry, %do.end
  %15 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i32 0, i32 4
  %c = bitcast %union.anon* %val to i8*
  %16 = load i8, i8* %c, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2
  %conv11 = zext i16 %17 to i32
  %and12 = and i32 %conv11, 172
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then.13, label %if.else.19

if.then.13:                                       ; preds = %sw.bb.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val15 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i32 0, i32 4
  %c16 = bitcast %union.anon* %val15 to i8*
  %20 = load i8, i8* %c16, align 1
  %conv17 = zext i8 %20 to i32
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 %conv17)
  br label %syntax_error

do.end.18:                                        ; No predecessors!
  br label %if.end.25

if.else.19:                                       ; preds = %sw.bb.10
  br label %do.body.20

do.body.20:                                       ; preds = %if.else.19
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val21 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %22, i32 0, i32 4
  %c22 = bitcast %union.anon* %val21 to i8*
  %23 = load i8, i8* %c22, align 1
  %conv23 = zext i8 %23 to i32
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i32 %conv23)
  br label %syntax_error

do.end.24:                                        ; No predecessors!
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.end.18
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %entry, %if.end.25
  %24 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val27 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %24, i32 0, i32 4
  %node = bitcast %union.anon* %val27 to %struct.cpp_hashnode**
  %25 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 38
  %n_defined = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes, i32 0, i32 0
  %27 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_defined, align 8
  %cmp28 = icmp eq %struct.cpp_hashnode* %25, %27
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %sw.bb.26
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call31 = call { i64, i64 } @parse_defined(%struct.cpp_reader* %28)
  %29 = bitcast %struct.op* %retval to { i64, i64 }*
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i64, i64 } %call31, 0
  store i64 %31, i64* %30, align 8
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i64, i64 } %call31, 1
  store i64 %33, i64* %32, align 8
  br label %return

if.else.32:                                       ; preds = %sw.bb.26
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 37
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 14
  %35 = load i8, i8* %cplusplus, align 1
  %conv33 = zext i8 %35 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %land.lhs.true, label %if.else.66

land.lhs.true:                                    ; preds = %if.else.32
  %36 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val35 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %36, i32 0, i32 4
  %node36 = bitcast %union.anon* %val35 to %struct.cpp_hashnode**
  %37 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node36, align 8
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes37 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %38, i32 0, i32 38
  %n_true = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes37, i32 0, i32 1
  %39 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_true, align 8
  %cmp38 = icmp eq %struct.cpp_hashnode* %37, %39
  br i1 %cmp38, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %40 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val40 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %40, i32 0, i32 4
  %node41 = bitcast %union.anon* %val40 to %struct.cpp_hashnode**
  %41 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node41, align 8
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes42 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %42, i32 0, i32 38
  %n_false = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes42, i32 0, i32 2
  %43 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_false, align 8
  %cmp43 = icmp eq %struct.cpp_hashnode* %41, %43
  br i1 %cmp43, label %if.then.45, label %if.else.66

if.then.45:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %op46 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 57, i32* %op46, align 4
  %unsignedp47 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp47, align 1
  %44 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val48 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %44, i32 0, i32 4
  %node49 = bitcast %union.anon* %val48 to %struct.cpp_hashnode**
  %45 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node49, align 8
  %46 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes50 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %46, i32 0, i32 38
  %n_true51 = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes50, i32 0, i32 1
  %47 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_true51, align 8
  %cmp52 = icmp eq %struct.cpp_hashnode* %45, %47
  %conv53 = zext i1 %cmp52 to i32
  %conv54 = sext i32 %conv53 to i64
  %value55 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 4
  store i64 %conv54, i64* %value55, align 8
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts56 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %48, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts56, i32 0, i32 42
  %49 = load i8, i8* %pedantic, align 1
  %conv57 = zext i8 %49 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.65

land.lhs.true.59:                                 ; preds = %if.then.45
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call60 = call i32 @cpp_defined(%struct.cpp_reader* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i32 29)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.65, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.59
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %52 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val63 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i32 0, i32 4
  %node64 = bitcast %union.anon* %val63 to %struct.cpp_hashnode**
  %53 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node64, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %53, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %54 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %54)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %land.lhs.true.59, %if.then.45
  %55 = bitcast %struct.op* %retval to i8*
  %56 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 16, i32 8, i1 false)
  br label %return

if.else.66:                                       ; preds = %lor.lhs.false, %if.else.32
  %op67 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 57, i32* %op67, align 4
  %unsignedp68 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp68, align 1
  %value69 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 4
  store i64 0, i64* %value69, align 8
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts70 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %57, i32 0, i32 37
  %warn_undef = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts70, i32 0, i32 40
  %58 = load i8, i8* %warn_undef, align 1
  %conv71 = zext i8 %58 to i32
  %tobool72 = icmp ne i32 %conv71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.80

land.lhs.true.73:                                 ; preds = %if.else.66
  %59 = load i32, i32* %skip_evaluation.addr, align 4
  %tobool74 = icmp ne i32 %59, 0
  br i1 %tobool74, label %if.end.80, label %if.then.75

if.then.75:                                       ; preds = %land.lhs.true.73
  %60 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %61 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val76 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %61, i32 0, i32 4
  %node77 = bitcast %union.anon* %val76 to %struct.cpp_hashnode**
  %62 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node77, align 8
  %ident78 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %62, i32 0, i32 0
  %str79 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident78, i32 0, i32 1
  %63 = load i8*, i8** %str79, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %63)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %land.lhs.true.73, %if.else.66
  %64 = bitcast %struct.op* %retval to i8*
  %65 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 8, i1 false)
  br label %return

sw.bb.81:                                         ; preds = %entry
  %op82 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 57, i32* %op82, align 4
  %66 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call83 = call i32 @_cpp_test_assertion(%struct.cpp_reader* %66, i32* %temp)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %sw.bb.81
  %op86 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 64, i32* %op86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %sw.bb.81
  %unsignedp88 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp88, align 1
  %67 = load i32, i32* %temp, align 4
  %conv89 = sext i32 %67 to i64
  %value90 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 4
  store i64 %conv89, i64* %value90, align 8
  %68 = bitcast %struct.op* %retval to i8*
  %69 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 16, i32 8, i1 false)
  br label %return

sw.default:                                       ; preds = %entry
  %70 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type91 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %70, i32 0, i32 2
  %bf.load92 = load i8, i8* %type91, align 2
  %bf.cast93 = zext i8 %bf.load92 to i32
  %cmp94 = icmp sgt i32 %bf.cast93, 0
  br i1 %cmp94, label %land.lhs.true.96, label %lor.lhs.false.102

land.lhs.true.96:                                 ; preds = %sw.default
  %71 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type97 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %71, i32 0, i32 2
  %bf.load98 = load i8, i8* %type97, align 2
  %bf.cast99 = zext i8 %bf.load98 to i32
  %cmp100 = icmp slt i32 %bf.cast99, 28
  br i1 %cmp100, label %if.then.108, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.96, %sw.default
  %72 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type103 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %72, i32 0, i32 2
  %bf.load104 = load i8, i8* %type103, align 2
  %bf.cast105 = zext i8 %bf.load104 to i32
  %cmp106 = icmp eq i32 %bf.cast105, 67
  br i1 %cmp106, label %if.then.108, label %if.end.113

if.then.108:                                      ; preds = %lor.lhs.false.102, %land.lhs.true.96
  %73 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type109 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %73, i32 0, i32 2
  %bf.load110 = load i8, i8* %type109, align 2
  %bf.cast111 = zext i8 %bf.load110 to i32
  %op112 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 %bf.cast111, i32* %op112, align 4
  %74 = bitcast %struct.op* %retval to i8*
  %75 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 16, i32 8, i1 false)
  br label %return

if.end.113:                                       ; preds = %lor.lhs.false.102
  br label %do.body.114

do.body.114:                                      ; preds = %if.end.113
  %76 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %77 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %78 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call115 = call i8* @cpp_token_as_text(%struct.cpp_reader* %77, %struct.cpp_token* %78)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i8* %call115)
  br label %syntax_error

do.end.116:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.116
  br label %syntax_error

syntax_error:                                     ; preds = %sw.epilog, %do.body.114, %do.body.20, %do.body.14, %do.body
  %op117 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 64, i32* %op117, align 4
  %79 = bitcast %struct.op* %retval to i8*
  %80 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %syntax_error, %if.then.108, %if.end.87, %if.end.80, %if.end.65, %if.then.30, %if.end, %sw.bb
  %81 = bitcast %struct.op* %retval to { i64, i64 }*
  %82 = load { i64, i64 }, { i64, i64 }* %81, align 8
  ret { i64, i64 } %82
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @cpp_error(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @op_as_text(%struct.cpp_reader* %pfile, i32 %op) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %op.addr = alloca i32, align 4
  %token = alloca %struct.cpp_token, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i32 0, i32 2
  %1 = trunc i32 %0 to i8
  store i8 %1, i8* %type, align 2
  %bf.result.cast = zext i8 %1 to i32
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i8* @cpp_token_as_text(%struct.cpp_reader* %2, %struct.cpp_token* %token)
  ret i8* %call
}

declare void @cpp_ice(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i64 @right_shift(%struct.cpp_reader* %pfile, i64 %a, i32 %unsignedp, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %a.addr = alloca i64, align 8
  %unsignedp.addr = alloca i32, align 4
  %b.addr = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp uge i64 %0, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %2 = load i64, i64* %a.addr, align 8
  %shr = ashr i64 %2, 63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %shr, %cond.false ]
  store i64 %cond, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %unsignedp.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %4 = load i64, i64* %a.addr, align 8
  %5 = load i64, i64* %b.addr, align 8
  %shr3 = lshr i64 %4, %5
  store i64 %shr3, i64* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %6 = load i64, i64* %a.addr, align 8
  %7 = load i64, i64* %b.addr, align 8
  %shr5 = ashr i64 %6, %7
  store i64 %shr5, i64* %retval
  br label %return

return:                                           ; preds = %if.else.4, %if.then.2, %cond.end
  %8 = load i64, i64* %retval
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @left_shift(%struct.cpp_reader* %pfile, i64 %a, i32 %unsignedp, i64 %b) #0 {
entry:
  %retval = alloca i64, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %a.addr = alloca i64, align 8
  %unsignedp.addr = alloca i32, align 4
  %b.addr = alloca i64, align 8
  %l = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp uge i64 %0, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %a.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %unsignedp.addr, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %5 = load i64, i64* %a.addr, align 8
  %6 = load i64, i64* %b.addr, align 8
  %shl = shl i64 %5, %6
  store i64 %shl, i64* %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %7 = load i64, i64* %a.addr, align 8
  %8 = load i64, i64* %b.addr, align 8
  %shl6 = shl i64 %7, %8
  store i64 %shl6, i64* %l, align 8
  %9 = load i64, i64* %l, align 8
  %10 = load i64, i64* %b.addr, align 8
  %shr = ashr i64 %9, %10
  %11 = load i64, i64* %a.addr, align 8
  %cmp7 = icmp ne i64 %shr, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else.5
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @integer_overflow(%struct.cpp_reader* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else.5
  %13 = load i64, i64* %l, align 8
  store i64 %13, i64* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.4, %if.end
  %14 = load i64, i64* %retval
  ret i64 %14
}

declare void @cpp_warning(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @integer_overflow(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 42
  %1 = load i8, i8* %pedantic, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @cpp_pedwarn(%struct.cpp_reader*, i8*, ...) #2

declare i8* @xrealloc(i8*, i64) #2

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) #2

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @parse_number(%struct.cpp_reader* %pfile, %struct.cpp_token* %tok) #0 {
entry:
  %retval = alloca %struct.op, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %tok.addr = alloca %struct.cpp_token*, align 8
  %op = alloca %struct.op, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %nsuff = alloca i32, align 4
  %n = alloca i64, align 8
  %nd = alloca i64, align 8
  %MAX_over_base = alloca i64, align 8
  %base = alloca i32, align 4
  %overflow = alloca i32, align 4
  %digit = alloca i32, align 4
  %largest_digit = alloca i32, align 4
  %sufftab = alloca %struct.suffix*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %tok, %struct.cpp_token** %tok.addr, align 8
  %0 = load %struct.cpp_token*, %struct.cpp_token** %tok.addr, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  %1 = load i8*, i8** %text, align 8
  store i8* %1, i8** %start, align 8
  %2 = load i8*, i8** %start, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %tok.addr, align 8
  %val1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 4
  %str2 = bitcast %union.anon* %val1 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str2, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8
  %5 = load i8*, i8** %start, align 8
  store i8* %5, i8** %p, align 8
  store i32 0, i32* %c, align 4
  store i64 0, i64* %n, align 8
  store i32 10, i32* %base, align 4
  store i32 0, i32* %overflow, align 4
  store i32 0, i32* %largest_digit, align 4
  %unsignedp = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp, align 1
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %end, align 8
  %9 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp4 = icmp sge i64 %sub.ptr.sub, 3
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %10 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 120
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i8*, i8** %p, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 88
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i8*, i8** %p, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr15, i8** %p, align 8
  store i32 16, i32* %base, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %if.then
  %15 = load i8*, i8** %p, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr16, i8** %p, align 8
  store i32 8, i32* %base, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %16 = load i32, i32* %base, align 4
  %conv18 = sext i32 %16 to i64
  %div = udiv i64 -1, %conv18
  store i64 %div, i64* %MAX_over_base, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %end, align 8
  %cmp19 = icmp ult i8* %17, %18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv21 = zext i8 %20 to i32
  store i32 %conv21, i32* %c, align 4
  %21 = load i32, i32* %c, align 4
  %and = and i32 %21, 255
  %idxprom = sext i32 %and to i64
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %22 to i32
  %and24 = and i32 %conv23, 4
  %tobool = icmp ne i32 %and24, 0
  br i1 %tobool, label %if.then.35, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %for.body
  %23 = load i32, i32* %base, align 4
  %cmp26 = icmp eq i32 %23, 16
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.40

land.lhs.true.28:                                 ; preds = %lor.lhs.false.25
  %24 = load i32, i32* %c, align 4
  %and29 = and i32 %24, 255
  %idxprom30 = sext i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom30
  %25 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %25 to i32
  %and33 = and i32 %conv32, 256
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %land.lhs.true.28, %for.body
  %26 = load i32, i32* %c, align 4
  %conv36 = trunc i32 %26 to i8
  %idxprom37 = zext i8 %conv36 to i64
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i32 0, i64 %idxprom37
  %27 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %27 to i32
  store i32 %conv39, i32* %digit, align 4
  br label %if.end.41

if.else.40:                                       ; preds = %land.lhs.true.28, %lor.lhs.false.25
  br label %for.end

if.end.41:                                        ; preds = %if.then.35
  %28 = load i32, i32* %largest_digit, align 4
  %29 = load i32, i32* %digit, align 4
  %cmp42 = icmp slt i32 %28, %29
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  %30 = load i32, i32* %digit, align 4
  store i32 %30, i32* %largest_digit, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.41
  %31 = load i64, i64* %n, align 8
  %32 = load i32, i32* %base, align 4
  %conv46 = sext i32 %32 to i64
  %mul = mul i64 %31, %conv46
  %33 = load i32, i32* %digit, align 4
  %conv47 = sext i32 %33 to i64
  %add = add i64 %mul, %conv47
  store i64 %add, i64* %nd, align 8
  %34 = load i64, i64* %MAX_over_base, align 8
  %35 = load i64, i64* %n, align 8
  %cmp48 = icmp ult i64 %34, %35
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.45
  %36 = load i64, i64* %nd, align 8
  %37 = load i64, i64* %n, align 8
  %cmp50 = icmp ult i64 %36, %37
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.45
  %38 = phi i1 [ true, %if.end.45 ], [ %cmp50, %lor.rhs ]
  %lor.ext = zext i1 %38 to i32
  %39 = load i32, i32* %overflow, align 4
  %or = or i32 %39, %lor.ext
  store i32 %or, i32* %overflow, align 4
  %40 = load i64, i64* %nd, align 8
  store i64 %40, i64* %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.40, %for.cond
  %42 = load i8*, i8** %p, align 8
  %43 = load i8*, i8** %end, align 8
  %cmp52 = icmp ult i8* %42, %43
  br i1 %cmp52, label %if.then.54, label %if.end.165

if.then.54:                                       ; preds = %for.end
  %44 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %44, 46
  br i1 %cmp55, label %if.then.109, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.54
  %45 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %45, 70
  br i1 %cmp58, label %if.then.109, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.57
  %46 = load i32, i32* %c, align 4
  %cmp61 = icmp eq i32 %46, 102
  br i1 %cmp61, label %if.then.109, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %47 = load i32, i32* %base, align 4
  %cmp64 = icmp eq i32 %47, 10
  br i1 %cmp64, label %land.lhs.true.66, label %lor.lhs.false.86

land.lhs.true.66:                                 ; preds = %lor.lhs.false.63
  %48 = load i32, i32* %c, align 4
  %cmp67 = icmp eq i32 %48, 69
  br i1 %cmp67, label %land.lhs.true.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %land.lhs.true.66
  %49 = load i32, i32* %c, align 4
  %cmp70 = icmp eq i32 %49, 101
  br i1 %cmp70, label %land.lhs.true.72, label %lor.lhs.false.86

land.lhs.true.72:                                 ; preds = %lor.lhs.false.69, %land.lhs.true.66
  %50 = load i8*, i8** %p, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8*, i8** %end, align 8
  %cmp74 = icmp ult i8* %add.ptr73, %51
  br i1 %cmp74, label %land.lhs.true.76, label %lor.lhs.false.86

land.lhs.true.76:                                 ; preds = %land.lhs.true.72
  %52 = load i8*, i8** %p, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %53 to i32
  %cmp79 = icmp eq i32 %conv78, 43
  br i1 %cmp79, label %if.then.109, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %land.lhs.true.76
  %54 = load i8*, i8** %p, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %55 to i32
  %cmp84 = icmp eq i32 %conv83, 45
  br i1 %cmp84, label %if.then.109, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.81, %land.lhs.true.72, %lor.lhs.false.69, %lor.lhs.false.63
  %56 = load i32, i32* %base, align 4
  %cmp87 = icmp eq i32 %56, 16
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.110

land.lhs.true.89:                                 ; preds = %lor.lhs.false.86
  %57 = load i32, i32* %c, align 4
  %cmp90 = icmp eq i32 %57, 80
  br i1 %cmp90, label %land.lhs.true.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.89
  %58 = load i32, i32* %c, align 4
  %cmp93 = icmp eq i32 %58, 112
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.110

land.lhs.true.95:                                 ; preds = %lor.lhs.false.92, %land.lhs.true.89
  %59 = load i8*, i8** %p, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8*, i8** %end, align 8
  %cmp97 = icmp ult i8* %add.ptr96, %60
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.110

land.lhs.true.99:                                 ; preds = %land.lhs.true.95
  %61 = load i8*, i8** %p, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %62 to i32
  %cmp102 = icmp eq i32 %conv101, 43
  br i1 %cmp102, label %if.then.109, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.99
  %63 = load i8*, i8** %p, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %64 to i32
  %cmp107 = icmp eq i32 %conv106, 45
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %lor.lhs.false.104, %land.lhs.true.99, %lor.lhs.false.81, %land.lhs.true.76, %lor.lhs.false.60, %lor.lhs.false.57, %if.then.54
  br label %do.body

do.body:                                          ; preds = %if.then.109
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0))
  br label %syntax_error

do.end:                                           ; No predecessors!
  br label %if.end.110

if.end.110:                                       ; preds = %do.end, %lor.lhs.false.104, %land.lhs.true.95, %lor.lhs.false.92, %lor.lhs.false.86
  %66 = load i8*, i8** %end, align 8
  %67 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast111 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast112 = ptrtoint i8* %67 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  switch i64 %sub.ptr.sub113, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.114
    i64 3, label %sw.bb.115
  ]

sw.bb:                                            ; preds = %if.end.110
  store %struct.suffix* getelementptr inbounds ([4 x %struct.suffix], [4 x %struct.suffix]* @vsuf_1, i32 0, i32 0), %struct.suffix** %sufftab, align 8
  store i32 4, i32* %nsuff, align 4
  br label %sw.epilog

sw.bb.114:                                        ; preds = %if.end.110
  store %struct.suffix* getelementptr inbounds ([10 x %struct.suffix], [10 x %struct.suffix]* @vsuf_2, i32 0, i32 0), %struct.suffix** %sufftab, align 8
  store i32 10, i32* %nsuff, align 4
  br label %sw.epilog

sw.bb.115:                                        ; preds = %if.end.110
  store %struct.suffix* getelementptr inbounds ([8 x %struct.suffix], [8 x %struct.suffix]* @vsuf_3, i32 0, i32 0), %struct.suffix** %sufftab, align 8
  store i32 8, i32* %nsuff, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.110
  br label %invalid_suffix

sw.epilog:                                        ; preds = %sw.bb.115, %sw.bb.114, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.129, %sw.epilog
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %nsuff, align 4
  %cmp117 = icmp slt i32 %68, %69
  br i1 %cmp117, label %for.body.119, label %for.end.130

for.body.119:                                     ; preds = %for.cond.116
  %70 = load i8*, i8** %p, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %71 to i64
  %72 = load %struct.suffix*, %struct.suffix** %sufftab, align 8
  %arrayidx121 = getelementptr inbounds %struct.suffix, %struct.suffix* %72, i64 %idxprom120
  %s = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx121, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %s, i32 0, i32 0
  %73 = load i8*, i8** %end, align 8
  %74 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast122 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast123 = ptrtoint i8* %74 to i64
  %sub.ptr.sub124 = sub i64 %sub.ptr.lhs.cast122, %sub.ptr.rhs.cast123
  %call = call i32 @memcmp(i8* %70, i8* %arraydecay, i64 %sub.ptr.sub124) #5
  %cmp125 = icmp eq i32 %call, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.body.119
  br label %for.end.130

if.end.128:                                       ; preds = %for.body.119
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.116

for.end.130:                                      ; preds = %if.then.127, %for.cond.116
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %nsuff, align 4
  %cmp131 = icmp eq i32 %76, %77
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %for.end.130
  br label %invalid_suffix

if.end.134:                                       ; preds = %for.end.130
  %78 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %78 to i64
  %79 = load %struct.suffix*, %struct.suffix** %sufftab, align 8
  %arrayidx136 = getelementptr inbounds %struct.suffix, %struct.suffix* %79, i64 %idxprom135
  %u = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx136, i32 0, i32 1
  %80 = load i8, i8* %u, align 1
  %unsignedp137 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 %80, i8* %unsignedp137, align 1
  %81 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %81, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 33
  %82 = load i8, i8* %warn_traditional, align 1
  %conv138 = zext i8 %82 to i32
  %tobool139 = icmp ne i32 %conv138, 0
  br i1 %tobool139, label %land.lhs.true.140, label %if.end.150

land.lhs.true.140:                                ; preds = %if.end.134
  %83 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %83 to i64
  %84 = load %struct.suffix*, %struct.suffix** %sufftab, align 8
  %arrayidx142 = getelementptr inbounds %struct.suffix, %struct.suffix* %84, i64 %idxprom141
  %u143 = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx142, i32 0, i32 1
  %85 = load i8, i8* %u143, align 1
  %conv144 = zext i8 %85 to i32
  %tobool145 = icmp ne i32 %conv144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.150

land.lhs.true.146:                                ; preds = %land.lhs.true.140
  %86 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call147 = call i32 @cpp_sys_macro_p(%struct.cpp_reader* %86)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.150, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.146
  %87 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %land.lhs.true.146, %land.lhs.true.140, %if.end.134
  %88 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %88 to i64
  %89 = load %struct.suffix*, %struct.suffix** %sufftab, align 8
  %arrayidx152 = getelementptr inbounds %struct.suffix, %struct.suffix* %89, i64 %idxprom151
  %l = getelementptr inbounds %struct.suffix, %struct.suffix* %arrayidx152, i32 0, i32 2
  %90 = load i8, i8* %l, align 1
  %conv153 = zext i8 %90 to i32
  %cmp154 = icmp eq i32 %conv153, 2
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.164

land.lhs.true.156:                                ; preds = %if.end.150
  %91 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts157 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %91, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts157, i32 0, i32 42
  %92 = load i8, i8* %pedantic, align 1
  %conv158 = zext i8 %92 to i32
  %tobool159 = icmp ne i32 %conv158, 0
  br i1 %tobool159, label %land.lhs.true.160, label %if.end.164

land.lhs.true.160:                                ; preds = %land.lhs.true.156
  %93 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts161 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %93, i32 0, i32 37
  %c99 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts161, i32 0, i32 41
  %94 = load i8, i8* %c99, align 1
  %tobool162 = icmp ne i8 %94, 0
  br i1 %tobool162, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %land.lhs.true.160
  %95 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %land.lhs.true.160, %land.lhs.true.156, %if.end.150
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %for.end
  %96 = load i32, i32* %base, align 4
  %97 = load i32, i32* %largest_digit, align 4
  %cmp166 = icmp sle i32 %96, %97
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.end.165
  %98 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %if.end.165
  %99 = load i32, i32* %overflow, align 4
  %tobool170 = icmp ne i32 %99, 0
  br i1 %tobool170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %if.end.169
  %100 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.185

if.else.172:                                      ; preds = %if.end.169
  %101 = load i64, i64* %n, align 8
  %cmp173 = icmp slt i64 %101, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.184

land.lhs.true.175:                                ; preds = %if.else.172
  %unsignedp176 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  %102 = load i8, i8* %unsignedp176, align 1
  %tobool177 = icmp ne i8 %102, 0
  br i1 %tobool177, label %if.end.184, label %if.then.178

if.then.178:                                      ; preds = %land.lhs.true.175
  %103 = load i32, i32* %base, align 4
  %cmp179 = icmp eq i32 %103, 10
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.then.178
  %104 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.then.178
  %unsignedp183 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 1, i8* %unsignedp183, align 1
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.182, %land.lhs.true.175, %if.else.172
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.171
  %105 = load i64, i64* %n, align 8
  %value = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 4
  store i64 %105, i64* %value, align 8
  %op186 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 57, i32* %op186, align 4
  %106 = bitcast %struct.op* %retval to i8*
  %107 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 16, i32 8, i1 false)
  br label %return

invalid_suffix:                                   ; preds = %if.then.133, %sw.default
  %108 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %109 = load i8*, i8** %end, align 8
  %110 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast187 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast188 = ptrtoint i8* %110 to i64
  %sub.ptr.sub189 = sub i64 %sub.ptr.lhs.cast187, %sub.ptr.rhs.cast188
  %conv190 = trunc i64 %sub.ptr.sub189 to i32
  %111 = load i8*, i8** %p, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i32 0, i32 0), i32 %conv190, i8* %111)
  br label %syntax_error

syntax_error:                                     ; preds = %invalid_suffix, %do.body
  %op191 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 64, i32* %op191, align 4
  %112 = bitcast %struct.op* %retval to i8*
  %113 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %syntax_error, %if.end.185
  %114 = bitcast %struct.op* %retval to { i64, i64 }*
  %115 = load { i64, i64 }, { i64, i64 }* %114, align 8
  ret { i64, i64 } %115
}

declare i64 @cpp_interpret_charconst(%struct.cpp_reader*, %struct.cpp_token*, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @parse_defined(%struct.cpp_reader* %pfile) #0 {
entry:
  %retval = alloca %struct.op, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %paren = alloca i32, align 4
  %node = alloca %struct.cpp_hashnode*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %op = alloca %struct.op, align 8
  %initial_context = alloca %struct.cpp_context*, align 8
  %op17 = alloca %struct.cpp_token, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 0, i32* %paren, align 4
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %node, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  store %struct.cpp_context* %1, %struct.cpp_context** %initial_context, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 7
  %3 = load i8, i8* %prevent_expansion, align 1
  %inc = add i8 %3, 1
  store i8 %inc, i8* %prevent_expansion, align 1
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %4)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %paren, align 4
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %6)
  store %struct.cpp_token* %call1, %struct.cpp_token** %token, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 2
  %bf.load3 = load i8, i8* %type2, align 2
  %bf.cast4 = zext i8 %bf.load3 to i32
  %cmp5 = icmp eq i32 %bf.cast4, 56
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 4
  %node7 = bitcast %union.anon* %val to %struct.cpp_hashnode**
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node7, align 8
  store %struct.cpp_hashnode* %9, %struct.cpp_hashnode** %node, align 8
  %10 = load i32, i32* %paren, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then.6
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call8 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %11)
  %type9 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call8, i32 0, i32 2
  %bf.load10 = load i8, i8* %type9, align 2
  %bf.cast11 = zext i8 %bf.load10 to i32
  %cmp12 = icmp ne i32 %bf.cast11, 23
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0))
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %node, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true, %if.then.6
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  %14 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 3
  %15 = load i8, i8* %flags, align 1
  %conv = zext i8 %15 to i32
  %and = and i32 %conv, 16
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.else
  %flags18 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %op17, i32 0, i32 3
  store i8 0, i8* %flags18, align 1
  %16 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type19 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %16, i32 0, i32 2
  %bf.load20 = load i8, i8* %type19, align 2
  %bf.cast21 = zext i8 %bf.load20 to i32
  %type22 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %op17, i32 0, i32 2
  %17 = trunc i32 %bf.cast21 to i8
  store i8 %17, i8* %type22, align 2
  %bf.result.cast = zext i8 %17 to i32
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %20 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call23 = call i8* @cpp_token_as_text(%struct.cpp_reader* %19, %struct.cpp_token* %20)
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call24 = call i8* @cpp_token_as_text(%struct.cpp_reader* %21, %struct.cpp_token* %op17)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i32 0, i32 0), i8* %call23, i8* %call24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.16, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.14
  %22 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool27 = icmp ne %struct.cpp_hashnode* %22, null
  br i1 %tobool27, label %if.else.30, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  %op29 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 64, i32* %op29, align 4
  br label %if.end.43

if.else.30:                                       ; preds = %if.end.26
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context31 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 10
  %24 = load %struct.cpp_context*, %struct.cpp_context** %context31, align 8
  %25 = load %struct.cpp_context*, %struct.cpp_context** %initial_context, align 8
  %cmp32 = icmp ne %struct.cpp_context* %24, %25
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.30
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.30
  %27 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type36 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %27, i32 0, i32 4
  %bf.load37 = load i8, i8* %type36, align 4
  %bf.cast38 = zext i8 %bf.load37 to i32
  %cmp39 = icmp eq i32 %bf.cast38, 1
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = sext i32 %conv40 to i64
  %value = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 4
  store i64 %conv41, i64* %value, align 8
  %unsignedp = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 3
  store i8 0, i8* %unsignedp, align 1
  %op42 = getelementptr inbounds %struct.op, %struct.op* %op, i32 0, i32 0
  store i32 57, i32* %op42, align 4
  %28 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_ind_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 13
  store %struct.cpp_hashnode* %28, %struct.cpp_hashnode** %mi_ind_cmacro, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.35, %if.then.28
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state44 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 1
  %prevent_expansion45 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state44, i32 0, i32 7
  %31 = load i8, i8* %prevent_expansion45, align 1
  %dec = add i8 %31, -1
  store i8 %dec, i8* %prevent_expansion45, align 1
  %32 = bitcast %struct.op* %retval to i8*
  %33 = bitcast %struct.op* %op to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  %34 = bitcast %struct.op* %retval to { i64, i64 }*
  %35 = load { i64, i64 }, { i64, i64 }* %34, align 8
  ret { i64, i64 } %35
}

declare i32 @cpp_defined(%struct.cpp_reader*, i8*, i32) #2

declare i32 @_cpp_test_assertion(%struct.cpp_reader*, i32*) #2

declare i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @cpp_sys_macro_p(%struct.cpp_reader*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
