; ModuleID = 'cpplib.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directive = type { void (%struct.cpp_reader*)*, i8*, i16, i8, i8 }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps, %struct.line_map*, i32, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i32, i32, i32, i8*, i32, %struct.splay_tree_s*, i32, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.cpp_options, %struct.spec_nodes, i8, i8 }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, %struct.cpp_buffer*, i8*, %struct.include_file*, %struct.if_stack*, i32, i8, i8*, i8, i8, i8, i8, %struct.search_path }
%struct.include_file = type opaque
%struct.if_stack = type { %struct.if_stack*, i32, %struct.cpp_hashnode*, i8, i8, i32 }
%struct.search_path = type { %struct.search_path*, i8*, i32, i64, i64, i32, %struct.file_name_map* }
%struct.file_name_map = type opaque
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i8 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.utoken, %union.utoken, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.utoken = type { %struct.cpp_token* }
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon }
%struct.ht_identifier = type { i32, i8* }
%union.anon = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.splay_tree_s = type opaque
%struct.cpp_token = type { i32, i16, i8, i8, %union.anon.0 }
%union.anon.0 = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type { %struct.pragma_entry*, %struct.cpp_hashnode*, i32, %union.anon.1 }
%union.anon.1 = type { void (%struct.cpp_reader*)* }
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.cpp_options = type { i8*, i8*, i32, %struct.cpp_pending*, i8*, %struct.search_path*, %struct.search_path*, %struct.file_name_map_list*, i8*, i32, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cpp_pending = type opaque
%struct.file_name_map_list = type opaque
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.answer = type { %struct.answer*, i32, [1 x %struct.cpp_token] }

@dtable = internal constant [19 x %struct.directive] [%struct.directive { void (%struct.cpp_reader*)* @do_define, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i16 6, i8 0, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_include, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i16 7, i8 0, i8 4 }, %struct.directive { void (%struct.cpp_reader*)* @do_endif, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i16 5, i8 0, i8 1 }, %struct.directive { void (%struct.cpp_reader*)* @do_ifdef, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i16 5, i8 0, i8 3 }, %struct.directive { void (%struct.cpp_reader*)* @do_if, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i16 2, i8 0, i8 3 }, %struct.directive { void (%struct.cpp_reader*)* @do_else, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i16 4, i8 0, i8 1 }, %struct.directive { void (%struct.cpp_reader*)* @do_ifndef, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i16 6, i8 0, i8 3 }, %struct.directive { void (%struct.cpp_reader*)* @do_undef, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i16 5, i8 0, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_line, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i16 4, i8 0, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_elif, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i16 4, i8 1, i8 1 }, %struct.directive { void (%struct.cpp_reader*)* @do_error, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i16 5, i8 1, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_pragma, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i16 6, i8 1, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_warning, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i16 7, i8 2, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_include_next, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i16 12, i8 2, i8 4 }, %struct.directive { void (%struct.cpp_reader*)* @do_ident, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i16 5, i8 2, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_import, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i16 6, i8 2, i8 4 }, %struct.directive { void (%struct.cpp_reader*)* @do_assert, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i16 6, i8 2, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_unassert, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i16 8, i8 2, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_sccs, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i16 4, i8 2, i8 0 }], align 16
@linemarker_dir = internal constant %struct.directive { void (%struct.cpp_reader*)* @do_linemarker, i8* bitcast ([2 x i32]* @.str.56 to i8*), i16 1, i8 0, i8 8 }, align 8
@.str = private unnamed_addr constant [43 x i8] c"style of line directive is a GCC extension\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid preprocessing directive #%s\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"registering \22%s\22 as both a pragma and a pragma namespace\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"#pragma %s %s is already registered\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"#pragma %s is already registered\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"system_header\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"dependency\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"_Pragma takes a parenthesized string literal\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"unterminated #%s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"include_next\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"unassert\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"sccs\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"no macro name given in #%s directive\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"\22%s\22 cannot be used as a macro name as it is an operator in C++\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"macro names must be identifiers\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"\22%s\22 cannot be used as a macro name\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"#include_next in primary source file\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"#import is obsolete, use an #ifndef wrapper in the header file\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"#include nested too deeply\00", align 1
@.str.38 = private unnamed_addr constant [18 x i32] [i32 112, i32 114, i32 97, i32 103, i32 109, i32 97, i32 32, i32 100, i32 101, i32 112, i32 101, i32 110, i32 100, i32 101, i32 110, i32 99, i32 121, i32 0], align 4
@.str.39 = private unnamed_addr constant [37 x i8] c"#%s expects \22FILENAME\22 or <FILENAME>\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"empty file name in #%s\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"missing terminating > character\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"extra tokens at end of #%s directive\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"#endif without #if\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"#else without #if\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"#else after #else\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"the conditional began here\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"undefining \22%s\22\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"\22%s\22 after #line is not a positive integer\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"line number out of range\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"\22%s\22 is not a valid filename\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.51 = private unnamed_addr constant [18 x i8] c"#elif without #if\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"#elif after #else\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.53 = private unnamed_addr constant [5 x i8] c"#%s \00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"invalid #ident directive\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"\22%s\22 re-asserted\00", align 1
@.str.56 = private unnamed_addr constant [2 x i32] [i32 35, i32 0], align 4
@.str.57 = private unnamed_addr constant [39 x i8] c"\22%s\22 after # is not a positive integer\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"invalid flag \22%s\22 in line directive\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"#%s is a GCC extension\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"suggest not using #elif in traditional C\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"traditional C ignores #%s with the # indented\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"suggest hiding #%s from traditional C with an indented #\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"#pragma once is obsolete\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"#pragma once in main file\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"invalid #pragma GCC poison directive\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"poisoning existing macro \22%s\22\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"#pragma system_header ignored outside include file\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"cannot find source %s\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"current file is older than %s\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"assertion without predicate\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"predicate must be an identifier\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"missing '(' after predicate\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"missing ')' to complete answer\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"predicate's answer is empty\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_cpp_handle_directive(%struct.cpp_reader* %pfile, i32 %indented) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %indented.addr = alloca i32, align 4
  %dir = alloca %struct.directive*, align 8
  %dname = alloca %struct.cpp_token*, align 8
  %skip = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %indented, i32* %indented.addr, align 4
  store %struct.directive* null, %struct.directive** %dir, align 8
  store i32 1, i32* %skip, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @start_directive(%struct.cpp_reader* %0)
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %1)
  store %struct.cpp_token* %call, %struct.cpp_token** %dname, align 8
  %2 = load %struct.cpp_token*, %struct.cpp_token** %dname, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.cpp_token*, %struct.cpp_token** %dname, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 4
  %node = bitcast %union.anon.0* %val to %struct.cpp_hashnode**
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %directive_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %4, i32 0, i32 2
  %5 = load i8, i8* %directive_index, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %6 = load %struct.cpp_token*, %struct.cpp_token** %dname, align 8
  %val2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 4
  %node3 = bitcast %union.anon.0* %val2 to %struct.cpp_hashnode**
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node3, align 8
  %directive_index4 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i32 0, i32 2
  %8 = load i8, i8* %directive_index4, align 1
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 %idxprom
  store %struct.directive* %arrayidx, %struct.directive** %dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.24

if.else:                                          ; preds = %entry
  %9 = load %struct.cpp_token*, %struct.cpp_token** %dname, align 8
  %type5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 2
  %bf.load6 = load i8, i8* %type5, align 2
  %bf.cast7 = zext i8 %bf.load6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 57
  br i1 %cmp8, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 37
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 11
  %11 = load i32, i32* %lang, align 4
  %cmp10 = icmp ne i32 %11, 9
  br i1 %cmp10, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %land.lhs.true
  store %struct.directive* @linemarker_dir, %struct.directive** %dir, align 8
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts13 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts13, i32 0, i32 42
  %13 = load i8, i8* %pedantic, align 1
  %conv14 = zext i8 %13 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.22

land.lhs.true.16:                                 ; preds = %if.then.12
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 37
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts17, i32 0, i32 43
  %15 = load i8, i8* %preprocessed, align 1
  %tobool18 = icmp ne i8 %15, 0
  br i1 %tobool18, label %if.end.22, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %land.lhs.true.16
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %17 = load i8, i8* %skipping, align 1
  %tobool20 = icmp ne i8 %17, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.19, %land.lhs.true.16, %if.then.12
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %19 = load %struct.directive*, %struct.directive** %dir, align 8
  %tobool25 = icmp ne %struct.directive* %19, null
  br i1 %tobool25, label %if.then.26, label %if.else.65

if.then.26:                                       ; preds = %if.end.24
  %20 = load %struct.directive*, %struct.directive** %dir, align 8
  %flags = getelementptr inbounds %struct.directive, %struct.directive* %20, i32 0, i32 4
  %21 = load i8, i8* %flags, align 1
  %conv27 = zext i8 %21 to i32
  %and = and i32 %conv27, 2
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 14
  store i8 0, i8* %mi_valid, align 1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.26
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts31 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 37
  %preprocessed32 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts31, i32 0, i32 43
  %24 = load i8, i8* %preprocessed32, align 1
  %conv33 = zext i8 %24 to i32
  %tobool34 = icmp ne i32 %conv33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.42

land.lhs.true.35:                                 ; preds = %if.end.30
  %25 = load i32, i32* %indented.addr, align 4
  %tobool36 = icmp ne i32 %25, 0
  br i1 %tobool36, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35
  %26 = load %struct.directive*, %struct.directive** %dir, align 8
  %flags37 = getelementptr inbounds %struct.directive, %struct.directive* %26, i32 0, i32 4
  %27 = load i8, i8* %flags37, align 1
  %conv38 = zext i8 %27 to i32
  %and39 = and i32 %conv38, 8
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true.35
  store i32 0, i32* %skip, align 4
  store %struct.directive* null, %struct.directive** %dir, align 8
  br label %if.end.64

if.else.42:                                       ; preds = %lor.lhs.false, %if.end.30
  %28 = load %struct.directive*, %struct.directive** %dir, align 8
  %flags43 = getelementptr inbounds %struct.directive, %struct.directive* %28, i32 0, i32 4
  %29 = load i8, i8* %flags43, align 1
  %conv44 = zext i8 %29 to i32
  %and45 = and i32 %conv44, 4
  %conv46 = trunc i32 %and45 to i8
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state47 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i32 0, i32 1
  %angled_headers = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state47, i32 0, i32 2
  store i8 %conv46, i8* %angled_headers, align 1
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts48 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 37
  %preprocessed49 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts48, i32 0, i32 43
  %32 = load i8, i8* %preprocessed49, align 1
  %tobool50 = icmp ne i8 %32, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.else.42
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load %struct.directive*, %struct.directive** %dir, align 8
  %35 = load i32, i32* %indented.addr, align 4
  call void @directive_diagnostics(%struct.cpp_reader* %33, %struct.directive* %34, i32 %35)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.else.42
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state53 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %36, i32 0, i32 1
  %skipping54 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state53, i32 0, i32 1
  %37 = load i8, i8* %skipping54, align 1
  %conv55 = zext i8 %37 to i32
  %tobool56 = icmp ne i32 %conv55, 0
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.63

land.lhs.true.57:                                 ; preds = %if.end.52
  %38 = load %struct.directive*, %struct.directive** %dir, align 8
  %flags58 = getelementptr inbounds %struct.directive, %struct.directive* %38, i32 0, i32 4
  %39 = load i8, i8* %flags58, align 1
  %conv59 = zext i8 %39 to i32
  %and60 = and i32 %conv59, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.57
  store %struct.directive* null, %struct.directive** %dir, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %land.lhs.true.57, %if.end.52
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.41
  br label %if.end.87

if.else.65:                                       ; preds = %if.end.24
  %40 = load %struct.cpp_token*, %struct.cpp_token** %dname, align 8
  %type66 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %40, i32 0, i32 2
  %bf.load67 = load i8, i8* %type66, align 2
  %bf.cast68 = zext i8 %bf.load67 to i32
  %cmp69 = icmp eq i32 %bf.cast68, 67
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.65
  br label %if.end.86

if.else.72:                                       ; preds = %if.else.65
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts73 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %41, i32 0, i32 37
  %lang74 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts73, i32 0, i32 11
  %42 = load i32, i32* %lang74, align 4
  %cmp75 = icmp eq i32 %42, 9
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.72
  store i32 0, i32* %skip, align 4
  br label %if.end.85

if.else.78:                                       ; preds = %if.else.72
  %43 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state79 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %43, i32 0, i32 1
  %skipping80 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state79, i32 0, i32 1
  %44 = load i8, i8* %skipping80, align 1
  %tobool81 = icmp ne i8 %44, 0
  br i1 %tobool81, label %if.end.84, label %if.then.82

if.then.82:                                       ; preds = %if.else.78
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %46 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %47 = load %struct.cpp_token*, %struct.cpp_token** %dname, align 8
  %call83 = call i8* @cpp_token_as_text(%struct.cpp_reader* %46, %struct.cpp_token* %47)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8* %call83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.else.78
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.77
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.71
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.64
  %48 = load %struct.directive*, %struct.directive** %dir, align 8
  %tobool88 = icmp ne %struct.directive* %48, null
  br i1 %tobool88, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %if.end.87
  %49 = load %struct.directive*, %struct.directive** %dir, align 8
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %50, i32 0, i32 11
  store %struct.directive* %49, %struct.directive** %directive, align 8
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive90 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %51, i32 0, i32 11
  %52 = load %struct.directive*, %struct.directive** %directive90, align 8
  %handler = getelementptr inbounds %struct.directive, %struct.directive* %52, i32 0, i32 0
  %53 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler, align 8
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void %53(%struct.cpp_reader* %54)
  br label %if.end.96

if.else.91:                                       ; preds = %if.end.87
  %55 = load i32, i32* %skip, align 4
  %cmp92 = icmp eq i32 %55, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.else.91
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %56, i32 1)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.else.91
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.89
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %58 = load i32, i32* %skip, align 4
  call void @end_directive(%struct.cpp_reader* %57, i32 %58)
  %59 = load i32, i32* %skip, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal void @start_directive(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 0
  store i8 1, i8* %in_directive, align 1
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 1
  %save_comments = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state1, i32 0, i32 3
  store i8 0, i8* %save_comments, align 1
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 4
  %3 = load i32, i32* %line, align 4
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 5
  store i32 %3, i32* %directive_line, align 4
  ret void
}

declare %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader*) #1

declare void @cpp_pedwarn(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @directive_diagnostics(%struct.cpp_reader* %pfile, %struct.directive* %dir, i32 %indented) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %dir.addr = alloca %struct.directive*, align 8
  %indented.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.directive* %dir, %struct.directive** %dir.addr, align 8
  store i32 %indented, i32* %indented.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 42
  %1 = load i8, i8* %pedantic, align 1
  %conv = zext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %3 = load i8, i8* %skipping, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %origin = getelementptr inbounds %struct.directive, %struct.directive* %4, i32 0, i32 3
  %5 = load i8, i8* %origin, align 1
  %conv3 = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %7 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %name = getelementptr inbounds %struct.directive, %struct.directive* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts5, i32 0, i32 33
  %10 = load i8, i8* %warn_traditional, align 1
  %tobool6 = icmp ne i8 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.end.31

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %cmp8 = icmp eq %struct.directive* %11, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 9)
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.30

if.else:                                          ; preds = %if.then.7
  %13 = load i32, i32* %indented.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.else.19

land.lhs.true.12:                                 ; preds = %if.else
  %14 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %origin13 = getelementptr inbounds %struct.directive, %struct.directive* %14, i32 0, i32 3
  %15 = load i8, i8* %origin13, align 1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %land.lhs.true.12
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %name18 = getelementptr inbounds %struct.directive, %struct.directive* %17, i32 0, i32 1
  %18 = load i8*, i8** %name18, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.61, i32 0, i32 0), i8* %18)
  br label %if.end.29

if.else.19:                                       ; preds = %land.lhs.true.12, %if.else
  %19 = load i32, i32* %indented.addr, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.end.28, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %if.else.19
  %20 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %origin22 = getelementptr inbounds %struct.directive, %struct.directive* %20, i32 0, i32 3
  %21 = load i8, i8* %origin22, align 1
  %conv23 = zext i8 %21 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.21
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load %struct.directive*, %struct.directive** %dir.addr, align 8
  %name27 = getelementptr inbounds %struct.directive, %struct.directive* %23, i32 0, i32 1
  %24 = load i8*, i8** %name27, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.62, i32 0, i32 0), i8* %24)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.21, %if.else.19
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.17
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.10
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  ret void
}

declare void @cpp_error(%struct.cpp_reader*, i8*, ...) #1

declare i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) #1

declare void @_cpp_backup_tokens(%struct.cpp_reader*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @end_directive(%struct.cpp_reader* %pfile, i32 %skip_line) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %skip_line.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %skip_line, i32* %skip_line.addr, align 4
  %0 = load i32, i32* %skip_line.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @skip_rest_of_line(%struct.cpp_reader* %1)
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 19
  %3 = load i32, i32* %keep_tokens, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 16
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 17
  store %struct.tokenrun* %base_run, %struct.tokenrun** %cur_run, align 8
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_run3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 16
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %base_run3, i32 0, i32 2
  %7 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 15
  store %struct.cpp_token* %7, %struct.cpp_token** %cur_token, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 37
  %discard_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 17
  %10 = load i8, i8* %discard_comments, align 1
  %tobool5 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 1
  %save_comments = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 3
  store i8 %conv, i8* %save_comments, align 1
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state6, i32 0, i32 0
  store i8 0, i8* %in_directive, align 1
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 1
  %angled_headers = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state7, i32 0, i32 2
  store i8 0, i8* %angled_headers, align 1
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 11
  store %struct.directive* null, %struct.directive** %directive, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 %reason, i8* %to_file, i32 %file_line, i32 %sysp) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %reason.addr = alloca i32, align 4
  %to_file.addr = alloca i8*, align 8
  %file_line.addr = alloca i32, align 4
  %sysp.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %reason, i32* %reason.addr, align 4
  store i8* %to_file, i8** %to_file.addr, align 8
  store i32 %file_line, i32* %file_line.addr, align 4
  store i32 %sysp, i32* %sysp.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 2
  %1 = load i32, i32* %reason.addr, align 4
  %2 = load i32, i32* %sysp.addr, align 4
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 4
  %4 = load i32, i32* %line, align 4
  %5 = load i8*, i8** %to_file.addr, align 8
  %6 = load i32, i32* %file_line.addr, align 4
  %call = call %struct.line_map* @add_line_map(%struct.line_maps* %line_maps, i32 %1, i32 %2, i32 %4, i8* %5, i32 %6)
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 3
  store %struct.line_map* %call, %struct.line_map** %map, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 35
  %file_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 1
  %9 = load void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, %struct.line_map*)** %file_change, align 8
  %tobool = icmp ne void (%struct.cpp_reader*, %struct.line_map*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 35
  %file_change2 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb1, i32 0, i32 1
  %11 = load void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, %struct.line_map*)** %file_change2, align 8
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 3
  %14 = load %struct.line_map*, %struct.line_map** %map3, align 8
  call void %11(%struct.cpp_reader* %12, %struct.line_map* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.line_map* @add_line_map(%struct.line_maps*, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @cpp_register_pragma(%struct.cpp_reader* %pfile, i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %space.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %handler.addr = alloca void (%struct.cpp_reader*)*, align 8
  %chain = alloca %struct.pragma_entry**, align 8
  %entry1 = alloca %struct.pragma_entry*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %space, i8** %space.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store void (%struct.cpp_reader*)* %handler, void (%struct.cpp_reader*)** %handler.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %pragmas = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 34
  store %struct.pragma_entry** %pragmas, %struct.pragma_entry*** %chain, align 8
  %1 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler.addr, align 8
  %tobool = icmp ne void (%struct.cpp_reader*)* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %space.addr, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load i8*, i8** %space.addr, align 8
  %5 = load i8*, i8** %space.addr, align 8
  %call = call i64 @strlen(i8* %5) #7
  %conv = trunc i64 %call to i32
  %call4 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %3, i8* %4, i32 %conv)
  store %struct.cpp_hashnode* %call4, %struct.cpp_hashnode** %node, align 8
  %6 = load %struct.pragma_entry**, %struct.pragma_entry*** %chain, align 8
  %7 = load %struct.pragma_entry*, %struct.pragma_entry** %6, align 8
  %8 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call5 = call %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %7, %struct.cpp_hashnode* %8)
  store %struct.pragma_entry* %call5, %struct.pragma_entry** %entry1, align 8
  %9 = load %struct.pragma_entry*, %struct.pragma_entry** %entry1, align 8
  %tobool6 = icmp ne %struct.pragma_entry* %9, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.3
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.pragma_entry**, %struct.pragma_entry*** %chain, align 8
  %12 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call8 = call %struct.pragma_entry* @insert_pragma_entry(%struct.cpp_reader* %10, %struct.pragma_entry** %11, %struct.cpp_hashnode* %12, void (%struct.cpp_reader*)* null)
  store %struct.pragma_entry* %call8, %struct.pragma_entry** %entry1, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.then.3
  %13 = load %struct.pragma_entry*, %struct.pragma_entry** %entry1, align 8
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %13, i32 0, i32 2
  %14 = load i32, i32* %is_nspace, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.else
  br label %clash

if.end.11:                                        ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.7
  %15 = load %struct.pragma_entry*, %struct.pragma_entry** %entry1, align 8
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %15, i32 0, i32 3
  %space13 = bitcast %union.anon.1* %u to %struct.pragma_entry**
  store %struct.pragma_entry** %space13, %struct.pragma_entry*** %chain, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.12, %if.end
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %call15 = call i64 @strlen(i8* %18) #7
  %conv16 = trunc i64 %call15 to i32
  %call17 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %16, i8* %17, i32 %conv16)
  store %struct.cpp_hashnode* %call17, %struct.cpp_hashnode** %node, align 8
  %19 = load %struct.pragma_entry**, %struct.pragma_entry*** %chain, align 8
  %20 = load %struct.pragma_entry*, %struct.pragma_entry** %19, align 8
  %21 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call18 = call %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %20, %struct.cpp_hashnode* %21)
  store %struct.pragma_entry* %call18, %struct.pragma_entry** %entry1, align 8
  %22 = load %struct.pragma_entry*, %struct.pragma_entry** %entry1, align 8
  %tobool19 = icmp ne %struct.pragma_entry* %22, null
  br i1 %tobool19, label %if.then.20, label %if.else.30

if.then.20:                                       ; preds = %if.end.14
  %23 = load %struct.pragma_entry*, %struct.pragma_entry** %entry1, align 8
  %is_nspace21 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %23, i32 0, i32 2
  %24 = load i32, i32* %is_nspace21, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.then.20
  br label %clash

clash:                                            ; preds = %if.then.23, %if.then.10
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %26 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %26, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %27 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0), i8* %27)
  br label %if.end.29

if.else.24:                                       ; preds = %if.then.20
  %28 = load i8*, i8** %space.addr, align 8
  %tobool25 = icmp ne i8* %28, null
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.24
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %30 = load i8*, i8** %space.addr, align 8
  %31 = load i8*, i8** %name.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* %30, i8* %31)
  br label %if.end.28

if.else.27:                                       ; preds = %if.else.24
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %33 = load i8*, i8** %name.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %33)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %clash
  br label %if.end.32

if.else.30:                                       ; preds = %if.end.14
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %35 = load %struct.pragma_entry**, %struct.pragma_entry*** %chain, align 8
  %36 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %37 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler.addr, align 8
  %call31 = call %struct.pragma_entry* @insert_pragma_entry(%struct.cpp_reader* %34, %struct.pragma_entry** %35, %struct.cpp_hashnode* %36, void (%struct.cpp_reader*)* %37)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.end.29
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %chain, %struct.cpp_hashnode* %pragma) #0 {
entry:
  %chain.addr = alloca %struct.pragma_entry*, align 8
  %pragma.addr = alloca %struct.cpp_hashnode*, align 8
  store %struct.pragma_entry* %chain, %struct.pragma_entry** %chain.addr, align 8
  store %struct.cpp_hashnode* %pragma, %struct.cpp_hashnode** %pragma.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.pragma_entry*, %struct.pragma_entry** %chain.addr, align 8
  %tobool = icmp ne %struct.pragma_entry* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.pragma_entry*, %struct.pragma_entry** %chain.addr, align 8
  %pragma1 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %1, i32 0, i32 1
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %pragma1, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %pragma.addr, align 8
  %cmp = icmp ne %struct.cpp_hashnode* %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.pragma_entry*, %struct.pragma_entry** %chain.addr, align 8
  %next = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %5, i32 0, i32 0
  %6 = load %struct.pragma_entry*, %struct.pragma_entry** %next, align 8
  store %struct.pragma_entry* %6, %struct.pragma_entry** %chain.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct.pragma_entry*, %struct.pragma_entry** %chain.addr, align 8
  ret %struct.pragma_entry* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.pragma_entry* @insert_pragma_entry(%struct.cpp_reader* %pfile, %struct.pragma_entry** %chain, %struct.cpp_hashnode* %pragma, void (%struct.cpp_reader*)* %handler) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %chain.addr = alloca %struct.pragma_entry**, align 8
  %pragma.addr = alloca %struct.cpp_hashnode*, align 8
  %handler.addr = alloca void (%struct.cpp_reader*)*, align 8
  %new = alloca %struct.pragma_entry*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.pragma_entry** %chain, %struct.pragma_entry*** %chain.addr, align 8
  store %struct.cpp_hashnode* %pragma, %struct.cpp_hashnode** %pragma.addr, align 8
  store void (%struct.cpp_reader*)* %handler, void (%struct.cpp_reader*)** %handler.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i8* @_cpp_aligned_alloc(%struct.cpp_reader* %0, i64 32)
  %1 = bitcast i8* %call to %struct.pragma_entry*
  store %struct.pragma_entry* %1, %struct.pragma_entry** %new, align 8
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %pragma.addr, align 8
  %3 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %pragma1 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %3, i32 0, i32 1
  store %struct.cpp_hashnode* %2, %struct.cpp_hashnode** %pragma1, align 8
  %4 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler.addr, align 8
  %tobool = icmp ne void (%struct.cpp_reader*)* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %5, i32 0, i32 2
  store i32 0, i32* %is_nspace, align 4
  %6 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler.addr, align 8
  %7 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %7, i32 0, i32 3
  %handler2 = bitcast %union.anon.1* %u to void (%struct.cpp_reader*)**
  store void (%struct.cpp_reader*)* %6, void (%struct.cpp_reader*)** %handler2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %is_nspace3 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %8, i32 0, i32 2
  store i32 1, i32* %is_nspace3, align 4
  %9 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %u4 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %9, i32 0, i32 3
  %space = bitcast %union.anon.1* %u4 to %struct.pragma_entry**
  store %struct.pragma_entry* null, %struct.pragma_entry** %space, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.pragma_entry**, %struct.pragma_entry*** %chain.addr, align 8
  %11 = load %struct.pragma_entry*, %struct.pragma_entry** %10, align 8
  %12 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %next = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %12, i32 0, i32 0
  store %struct.pragma_entry* %11, %struct.pragma_entry** %next, align 8
  %13 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  %14 = load %struct.pragma_entry**, %struct.pragma_entry*** %chain.addr, align 8
  store %struct.pragma_entry* %13, %struct.pragma_entry** %14, align 8
  %15 = load %struct.pragma_entry*, %struct.pragma_entry** %new, align 8
  ret %struct.pragma_entry* %15
}

declare void @cpp_ice(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @_cpp_init_internal_pragmas(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %0, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void (%struct.cpp_reader*)* @do_pragma_poison)
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %1, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), void (%struct.cpp_reader*)* @do_pragma_once)
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void (%struct.cpp_reader*)* @do_pragma_poison)
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (%struct.cpp_reader*)* @do_pragma_system_header)
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (%struct.cpp_reader*)* @do_pragma_dependency)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_poison(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %tok = alloca %struct.cpp_token*, align 8
  %hp = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %poisoned_ok = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 6
  store i8 1, i8* %poisoned_ok, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end.15, %if.then.7, %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %1)
  store %struct.cpp_token* %call, %struct.cpp_token** %tok, align 8
  %2 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 67
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  %cmp4 = icmp ne i32 %bf.cast3, 56
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0))
  br label %for.end

if.end.6:                                         ; preds = %if.end
  %5 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 4
  %node = bitcast %union.anon.0* %val to %struct.cpp_hashnode**
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  store %struct.cpp_hashnode* %6, %struct.cpp_hashnode** %hp, align 8
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i32 0, i32 5
  %8 = load i8, i8* %flags, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.6
  br label %for.cond

if.end.8:                                         ; preds = %if.end.6
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %type9 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %9, i32 0, i32 4
  %bf.load10 = load i8, i8* %type9, align 4
  %bf.cast11 = zext i8 %bf.load10 to i32
  %cmp12 = icmp eq i32 %bf.cast11, 1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %11, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i32 0, i32 0), i8* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.8
  %13 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  call void @_cpp_free_definition(%struct.cpp_hashnode* %13)
  %14 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %hp, align 8
  %flags16 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i32 0, i32 5
  %15 = load i8, i8* %flags16, align 1
  %conv17 = zext i8 %15 to i32
  %or = or i32 %conv17, 10
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* %flags16, align 1
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %if.then
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 1
  %poisoned_ok20 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state19, i32 0, i32 6
  store i8 0, i8* %poisoned_ok20, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_once(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0))
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 0
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 4
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8
  %cmp = icmp eq %struct.cpp_buffer* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 0
  %6 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  %inc = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %6, i32 0, i32 6
  %7 = load %struct.include_file*, %struct.include_file** %inc, align 8
  call void @_cpp_never_reread(%struct.include_file* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_system_header(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 4
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8
  %cmp = icmp eq %struct.cpp_buffer* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %5)
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @skip_rest_of_line(%struct.cpp_reader* %6)
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @cpp_make_system_header(%struct.cpp_reader* %7, i32 1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_dependency(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %header = alloca %struct.cpp_token*, align 8
  %ordering = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @parse_include(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %header, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %tobool = icmp ne %struct.cpp_token* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.12

if.end:                                           ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %call1 = call i32 @_cpp_compare_file_date(%struct.cpp_reader* %2, %struct.cpp_token* %3)
  store i32 %call1, i32* %ordering, align 4
  %4 = load i32, i32* %ordering, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %7 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %call3 = call i8* @cpp_token_as_text(%struct.cpp_reader* %6, %struct.cpp_token* %7)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0), i8* %call3)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %ordering, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.else
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %call6 = call i8* @cpp_token_as_text(%struct.cpp_reader* %10, %struct.cpp_token* %11)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.69, i32 0, i32 0), i8* %call6)
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call7 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %12)
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call7, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp8 = icmp ne i32 %bf.cast, 67
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %13, i32 1)
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @do_diagnostic(%struct.cpp_reader* %14, i32 0, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.end.11, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_do__Pragma(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %string = alloca %struct.cpp_token*, align 8
  %orig_line = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @get__Pragma_string(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %string, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %string, align 8
  %tobool = icmp ne %struct.cpp_token* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 4
  %4 = load i32, i32* %line, align 4
  store i32 %4, i32* %orig_line, align 4
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.cpp_token*, %struct.cpp_token** %string, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  call void @destringize_and_run(%struct.cpp_reader* %5, %struct.cpp_string* %str)
  %7 = load i32, i32* %orig_line, align 4
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 4
  store i32 %7, i32* %line1, align 4
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 0
  %10 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %10, i32 0, i32 9
  store i8 64, i8* %saved_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @get__Pragma_string(%struct.cpp_reader* %pfile) #0 {
entry:
  %retval = alloca %struct.cpp_token*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %string = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %0)
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cpp_token* null, %struct.cpp_token** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %1)
  store %struct.cpp_token* %call1, %struct.cpp_token** %string, align 8
  %2 = load %struct.cpp_token*, %struct.cpp_token** %string, align 8
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 2
  %bf.load3 = load i8, i8* %type2, align 2
  %bf.cast4 = zext i8 %bf.load3 to i32
  %cmp5 = icmp ne i32 %bf.cast4, 61
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.cpp_token*, %struct.cpp_token** %string, align 8
  %type6 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 2
  %bf.load7 = load i8, i8* %type6, align 2
  %bf.cast8 = zext i8 %bf.load7 to i32
  %cmp9 = icmp ne i32 %bf.cast8, 62
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store %struct.cpp_token* null, %struct.cpp_token** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call12 = call %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %4)
  %type13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call12, i32 0, i32 2
  %bf.load14 = load i8, i8* %type13, align 2
  %bf.cast15 = zext i8 %bf.load14 to i32
  %cmp16 = icmp ne i32 %bf.cast15, 23
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  store %struct.cpp_token* null, %struct.cpp_token** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.11
  %5 = load %struct.cpp_token*, %struct.cpp_token** %string, align 8
  store %struct.cpp_token* %5, %struct.cpp_token** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.10, %if.then
  %6 = load %struct.cpp_token*, %struct.cpp_token** %retval
  ret %struct.cpp_token* %6
}

; Function Attrs: nounwind uwtable
define internal void @destringize_and_run(%struct.cpp_reader* %pfile, %struct.cpp_string* %in) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %in.addr = alloca %struct.cpp_string*, align 8
  %src = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %result = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_string* %in, %struct.cpp_string** %in.addr, align 8
  %0 = load %struct.cpp_string*, %struct.cpp_string** %in.addr, align 8
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %0, i32 0, i32 0
  %1 = load i32, i32* %len, align 4
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %2 = alloca i8, i64 %conv
  store i8* %2, i8** %result, align 8
  store i8* %2, i8** %dest, align 8
  %3 = load %struct.cpp_string*, %struct.cpp_string** %in.addr, align 8
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %3, i32 0, i32 1
  %4 = load i8*, i8** %text, align 8
  store i8* %4, i8** %src, align 8
  %5 = load i8*, i8** %src, align 8
  %6 = load %struct.cpp_string*, %struct.cpp_string** %in.addr, align 8
  %len1 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %6, i32 0, i32 0
  %7 = load i32, i32* %len1, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load i8*, i8** %src, align 8
  %9 = load i8*, i8** %limit, align 8
  %cmp = icmp ult i8* %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %src, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = zext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, 92
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i8*, i8** %src, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv10, 34
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  %17 = load i8*, i8** %src, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr13, i8** %src, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %dest, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr14, i8** %dest, align 8
  store i8 %18, i8* %19, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** %dest, align 8
  store i8 0, i8* %20, align 1
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load i8*, i8** %result, align 8
  %23 = load i8*, i8** %dest, align 8
  %24 = load i8*, i8** %result, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @run_directive(%struct.cpp_reader* %21, i32 11, i8* %22, i64 %sub.ptr.sub)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cpp_test_assertion(%struct.cpp_reader* %pfile, i32* %value) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %value.addr = alloca i32*, align 8
  %answer = alloca %struct.answer*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %0, %struct.answer** %answer, i32 4)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %3 = load %struct.answer*, %struct.answer** %answer, align 8
  %cmp1 = icmp eq %struct.answer* %3, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %5 = load %struct.answer*, %struct.answer** %answer, align 8
  %call2 = call %struct.answer** @find_answer(%struct.cpp_hashnode* %4, %struct.answer* %5)
  %6 = load %struct.answer*, %struct.answer** %call2, align 8
  %cmp3 = icmp ne %struct.answer* %6, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %7 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.then
  %8 = phi i1 [ false, %if.then ], [ %7, %lor.end ]
  %land.ext = zext i1 %8 to i32
  %9 = load i32*, i32** %value.addr, align 8
  store i32 %land.ext, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %entry
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %cmp4 = icmp eq %struct.cpp_hashnode* %10, null
  %conv = zext i1 %cmp4 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %pfile, %struct.answer** %answerp, i32 %type) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %answerp.addr = alloca %struct.answer**, align 8
  %type.addr = alloca i32, align 4
  %result = alloca %struct.cpp_hashnode*, align 8
  %predicate = alloca %struct.cpp_token*, align 8
  %len = alloca i32, align 4
  %sym = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.answer** %answerp, %struct.answer*** %answerp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %result, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 7
  %1 = load i8, i8* %prevent_expansion, align 1
  %inc = add i8 %1, 1
  store i8 %inc, i8* %prevent_expansion, align 1
  %2 = load %struct.answer**, %struct.answer*** %answerp.addr, align 8
  store %struct.answer* null, %struct.answer** %2, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %3)
  store %struct.cpp_token* %call, %struct.cpp_token** %predicate, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %predicate, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load = load i8, i8* %type1, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 67
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %entry
  %6 = load %struct.cpp_token*, %struct.cpp_token** %predicate, align 8
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 2
  %bf.load3 = load i8, i8* %type2, align 2
  %bf.cast4 = zext i8 %bf.load3 to i32
  %cmp5 = icmp ne i32 %bf.cast4, 56
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.18

if.else.7:                                        ; preds = %if.else
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load %struct.answer**, %struct.answer*** %answerp.addr, align 8
  %10 = load i32, i32* %type.addr, align 4
  %call8 = call i32 @parse_answer(%struct.cpp_reader* %8, %struct.answer** %9, i32 %10)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.7
  %11 = load %struct.cpp_token*, %struct.cpp_token** %predicate, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %11, i32 0, i32 4
  %node = bitcast %union.anon.0* %val to %struct.cpp_hashnode**
  %12 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %12, i32 0, i32 0
  %len11 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 0
  %13 = load i32, i32* %len11, align 4
  store i32 %13, i32* %len, align 4
  %14 = load i32, i32* %len, align 4
  %add = add i32 %14, 1
  %conv = zext i32 %add to i64
  %15 = alloca i8, i64 %conv
  store i8* %15, i8** %sym, align 8
  %16 = load i8*, i8** %sym, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  store i8 35, i8* %arrayidx, align 1
  %17 = load i8*, i8** %sym, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load %struct.cpp_token*, %struct.cpp_token** %predicate, align 8
  %val12 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %18, i32 0, i32 4
  %node13 = bitcast %union.anon.0* %val12 to %struct.cpp_hashnode**
  %19 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node13, align 8
  %ident14 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %19, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident14, i32 0, i32 1
  %20 = load i8*, i8** %str, align 8
  %21 = load i32, i32* %len, align 4
  %conv15 = zext i32 %21 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %20, i64 %conv15, i32 1, i1 false)
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load i8*, i8** %sym, align 8
  %24 = load i32, i32* %len, align 4
  %add16 = add i32 %24, 1
  %call17 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %22, i8* %23, i32 %add16)
  store %struct.cpp_hashnode* %call17, %struct.cpp_hashnode** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.6
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 1
  %prevent_expansion21 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state20, i32 0, i32 7
  %26 = load i8, i8* %prevent_expansion21, align 1
  %dec = add i8 %26, -1
  store i8 %dec, i8* %prevent_expansion21, align 1
  %27 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %result, align 8
  ret %struct.cpp_hashnode* %27
}

; Function Attrs: nounwind uwtable
define internal %struct.answer** @find_answer(%struct.cpp_hashnode* %node, %struct.answer* %candidate) #0 {
entry:
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %candidate.addr = alloca %struct.answer*, align 8
  %i = alloca i32, align 4
  %result = alloca %struct.answer**, align 8
  %answer = alloca %struct.answer*, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  store %struct.answer* %candidate, %struct.answer** %candidate.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 6
  %answers = bitcast %union.anon* %value to %struct.answer**
  store %struct.answer** %answers, %struct.answer*** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load %struct.answer**, %struct.answer*** %result, align 8
  %2 = load %struct.answer*, %struct.answer** %1, align 8
  %tobool = icmp ne %struct.answer* %2, null
  br i1 %tobool, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load %struct.answer**, %struct.answer*** %result, align 8
  %4 = load %struct.answer*, %struct.answer** %3, align 8
  store %struct.answer* %4, %struct.answer** %answer, align 8
  %5 = load %struct.answer*, %struct.answer** %answer, align 8
  %count = getelementptr inbounds %struct.answer, %struct.answer* %5, i32 0, i32 1
  %6 = load i32, i32* %count, align 4
  %7 = load %struct.answer*, %struct.answer** %candidate.addr, align 8
  %count1 = getelementptr inbounds %struct.answer, %struct.answer* %7, i32 0, i32 1
  %8 = load i32, i32* %count1, align 4
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.answer*, %struct.answer** %answer, align 8
  %count3 = getelementptr inbounds %struct.answer, %struct.answer* %10, i32 0, i32 1
  %11 = load i32, i32* %count3, align 4
  %cmp4 = icmp ult i32 %9, %11
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.answer*, %struct.answer** %answer, align 8
  %first = getelementptr inbounds %struct.answer, %struct.answer* %13, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.cpp_token], [1 x %struct.cpp_token]* %first, i32 0, i64 %idxprom
  %14 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct.answer*, %struct.answer** %candidate.addr, align 8
  %first7 = getelementptr inbounds %struct.answer, %struct.answer* %15, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %struct.cpp_token], [1 x %struct.cpp_token]* %first7, i32 0, i64 %idxprom6
  %call = call i32 @_cpp_equiv_tokens(%struct.cpp_token* %arrayidx, %struct.cpp_token* %arrayidx8)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %for.body.5
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.then.10, %for.cond.2
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.answer*, %struct.answer** %answer, align 8
  %count11 = getelementptr inbounds %struct.answer, %struct.answer* %18, i32 0, i32 1
  %19 = load i32, i32* %count11, align 4
  %cmp12 = icmp eq i32 %17, %19
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  br label %for.end.17

if.end.14:                                        ; preds = %for.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %for.body
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %20 = load %struct.answer**, %struct.answer*** %result, align 8
  %21 = load %struct.answer*, %struct.answer** %20, align 8
  %next = getelementptr inbounds %struct.answer, %struct.answer* %21, i32 0, i32 0
  store %struct.answer** %next, %struct.answer*** %result, align 8
  br label %for.cond

for.end.17:                                       ; preds = %if.then.13, %for.cond
  %22 = load %struct.answer**, %struct.answer*** %result, align 8
  ret %struct.answer** %22
}

; Function Attrs: nounwind uwtable
define void @cpp_define(%struct.cpp_reader* %pfile, i8* %str) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %count = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %count, align 8
  %1 = load i64, i64* %count, align 8
  %add = add i64 %1, 3
  %2 = alloca i8, i64 %add
  store i8* %2, i8** %buf, align 8
  %3 = load i8*, i8** %buf, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %count, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 %5, i32 1, i1 false)
  %6 = load i8*, i8** %str.addr, align 8
  %call1 = call i8* @strchr(i8* %6, i32 61) #7
  store i8* %call1, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub.ptr.sub
  store i8 32, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i64, i64* %count, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %count, align 8
  %12 = load i8*, i8** %buf, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %12, i64 %11
  store i8 32, i8* %arrayidx2, align 1
  %13 = load i64, i64* %count, align 8
  %inc3 = add i64 %13, 1
  store i64 %inc3, i64* %count, align 8
  %14 = load i8*, i8** %buf, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8 49, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i64, i64* %count, align 8
  %16 = load i8*, i8** %buf, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %16, i64 %15
  store i8 0, i8* %arrayidx5, align 1
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %count, align 8
  call void @run_directive(%struct.cpp_reader* %17, i32 0, i8* %18, i64 %19)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @run_directive(%struct.cpp_reader* %pfile, i32 %dir_no, i8* %buf, i64 %count) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %dir_no.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %dir_no, i32* %dir_no.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %count.addr, align 8
  %call = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %0, i8* %1, i64 %2, i32 1, i32 1)
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @start_directive(%struct.cpp_reader* %3)
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 0
  %5 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %saved_flags = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %5, i32 0, i32 9
  store i8 0, i8* %saved_flags, align 1
  %6 = load i32, i32* %dir_no.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 %idxprom
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 11
  store %struct.directive* %arrayidx, %struct.directive** %directive, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 11
  %9 = load %struct.directive*, %struct.directive** %directive1, align 8
  %handler = getelementptr inbounds %struct.directive, %struct.directive* %9, i32 0, i32 0
  %10 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void %10(%struct.cpp_reader* %11)
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @end_directive(%struct.cpp_reader* %12, i32 1)
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_buffer(%struct.cpp_reader* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* %str) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  call void @run_directive(%struct.cpp_reader* %0, i32 0, i8* %1, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_undef(%struct.cpp_reader* %pfile, i8* %macro) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %macro, i8** %macro.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %macro.addr, align 8
  %2 = load i8*, i8** %macro.addr, align 8
  %call = call i64 @strlen(i8* %2) #7
  call void @run_directive(%struct.cpp_reader* %0, i32 7, i8* %1, i64 %call)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_assert(%struct.cpp_reader* %pfile, i8* %str) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  call void @handle_assertion(%struct.cpp_reader* %0, i8* %1, i32 16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_assertion(%struct.cpp_reader* %pfile, i8* %str, i32 %type) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %count = alloca i64, align 8
  %p = alloca i8*, align 8
  %buf = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %count, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call1 = call i8* @strchr(i8* %1, i32 61) #7
  store i8* %call1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %count, align 8
  %add = add i64 %3, 2
  %4 = alloca i8, i64 %add
  store i8* %4, i8** %buf, align 8
  %5 = load i8*, i8** %buf, align 8
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i64, i64* %count, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 %7, i32 1, i1 false)
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub.ptr.sub
  store i8 40, i8* %arrayidx, align 1
  %11 = load i64, i64* %count, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %count, align 8
  %12 = load i8*, i8** %buf, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %12, i64 %11
  store i8 41, i8* %arrayidx2, align 1
  %13 = load i64, i64* %count, align 8
  %14 = load i8*, i8** %buf, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8 0, i8* %arrayidx3, align 1
  %15 = load i8*, i8** %buf, align 8
  store i8* %15, i8** %str.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load i32, i32* %type.addr, align 4
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i64, i64* %count, align 8
  call void @run_directive(%struct.cpp_reader* %16, i32 %17, i8* %18, i64 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_unassert(%struct.cpp_reader* %pfile, i8* %str) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  call void @handle_assertion(%struct.cpp_reader* %0, i8* %1, i32 17)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cpp_errors(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 20
  %1 = load i32, i32* %errors, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 37
  ret %struct.cpp_options* %opts
}

; Function Attrs: nounwind uwtable
define %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 35
  ret %struct.cpp_callbacks* %cb
}

; Function Attrs: nounwind uwtable
define %struct.line_maps* @cpp_get_line_maps(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 2
  ret %struct.line_maps* %line_maps
}

; Function Attrs: nounwind uwtable
define void @cpp_set_callbacks(%struct.cpp_reader* %pfile, %struct.cpp_callbacks* %cb) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %cb.addr = alloca %struct.cpp_callbacks*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_callbacks* %cb, %struct.cpp_callbacks** %cb.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 35
  %1 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb.addr, align 8
  %2 = bitcast %struct.cpp_callbacks* %cb1 to i8*
  %3 = bitcast %struct.cpp_callbacks* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 56, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* %buffer, i64 %len, i32 %from_stage3, i32 %return_at_eof) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %from_stage3.addr = alloca i32, align 4
  %return_at_eof.addr = alloca i32, align 4
  %new = alloca %struct.cpp_buffer*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %from_stage3, i32* %from_stage3.addr, align 4
  store i32 %return_at_eof, i32* %return_at_eof.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 33
  store %struct.obstack* %buffer_ob, %struct.obstack** %__h, align 8
  %1 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %1, %struct.obstack** %__o, align 8
  store i32 144, i32* %__len, align 4
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 4
  %3 = load i8*, i8** %chunk_limit, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 3
  %5 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i32, i32* %__len, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %__len, align 4
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %12, %struct.obstack** %__o1, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 2
  %14 = load i8*, i8** %object_base, align 8
  store i8* %14, i8** %value, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free5, align 8
  %17 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %16, %17
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %20 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 6
  %22 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %24, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free18, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 1
  %29 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %30 = bitcast %struct._obstack_chunk* %29 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %30 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit22, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 1
  %34 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %35 = bitcast %struct._obstack_chunk* %34 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %35 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit30, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  store i8* %37, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free33, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2
  store i8* %40, i8** %object_base34, align 8
  %42 = load i8*, i8** %value, align 8
  store i8* %42, i8** %tmp35
  %43 = load i8*, i8** %tmp35
  store i8* %43, i8** %tmp
  %44 = load i8*, i8** %tmp
  %45 = bitcast i8* %44 to %struct.cpp_buffer*
  store %struct.cpp_buffer* %45, %struct.cpp_buffer** %new, align 8
  %46 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %47 = bitcast %struct.cpp_buffer* %46 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 144, i32 8, i1 false)
  %48 = load i8*, i8** %buffer.addr, align 8
  %49 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %49, i32 0, i32 0
  store i8* %48, i8** %cur, align 8
  %50 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %buf = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %50, i32 0, i32 5
  store i8* %48, i8** %buf, align 8
  %51 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %51, i32 0, i32 3
  store i8* %48, i8** %line_base, align 8
  %52 = load i8*, i8** %buffer.addr, align 8
  %53 = load i64, i64* %len.addr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %54, i32 0, i32 2
  store i8* %add.ptr36, i8** %rlimit, align 8
  %55 = load i32, i32* %from_stage3.addr, align 4
  %conv37 = trunc i32 %55 to i8
  %56 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %from_stage338 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %56, i32 0, i32 12
  store i8 %conv37, i8* %from_stage338, align 1
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %57, i32 0, i32 0
  %58 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer39, align 8
  %59 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %59, i32 0, i32 4
  store %struct.cpp_buffer* %58, %struct.cpp_buffer** %prev, align 8
  %60 = load i32, i32* %return_at_eof.addr, align 4
  %tobool = icmp ne i32 %60, 0
  %61 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %return_at_eof40 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %61, i32 0, i32 14
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %return_at_eof40, align 1
  %62 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %saved_flags = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %62, i32 0, i32 9
  store i8 64, i8* %saved_flags, align 1
  %63 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer41 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %64, i32 0, i32 0
  store %struct.cpp_buffer* %63, %struct.cpp_buffer** %buffer41, align 8
  %65 = load %struct.cpp_buffer*, %struct.cpp_buffer** %new, align 8
  ret %struct.cpp_buffer* %65
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %ifs = alloca %struct.if_stack*, align 8
  %pushed = alloca i8, align 1
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  store i8 0, i8* %pushed, align 1
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 7
  %3 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8
  store %struct.if_stack* %3, %struct.if_stack** %ifs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %tobool = icmp ne %struct.if_stack* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %6, i32 0, i32 1
  %7 = load i32, i32* %line, align 4
  %8 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %type = getelementptr inbounds %struct.if_stack, %struct.if_stack* %8, i32 0, i32 5
  %9 = load i32, i32* %type, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.directive, %struct.directive* %arrayidx, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %5, i32 %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %next = getelementptr inbounds %struct.if_stack, %struct.if_stack* %11, i32 0, i32 0
  %12 = load %struct.if_stack*, %struct.if_stack** %next, align 8
  store %struct.if_stack* %12, %struct.if_stack** %ifs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  store i8 0, i8* %skipping, align 1
  %14 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %14, i32 0, i32 4
  %15 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 0
  store %struct.cpp_buffer* %15, %struct.cpp_buffer** %buffer2, align 8
  %17 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i32 0, i32 6
  %18 = load %struct.include_file*, %struct.include_file** %inc, align 8
  %tobool3 = icmp ne %struct.include_file* %18, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %20 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %inc4 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %20, i32 0, i32 6
  %21 = load %struct.include_file*, %struct.include_file** %inc4, align 8
  %call = call zeroext i1 @_cpp_pop_file_buffer(%struct.cpp_reader* %19, %struct.include_file* %21)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %pushed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %22 = load i8, i8* %pushed, align 1
  %tobool5 = trunc i8 %22 to i1
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 33
  store %struct.obstack* %buffer_ob, %struct.obstack** %__o, align 8
  %24 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %25 = bitcast %struct.cpp_buffer* %24 to i8*
  store i8* %25, i8** %__obj, align 8
  %26 = load i8*, i8** %__obj, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 1
  %28 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %29 = bitcast %struct._obstack_chunk* %28 to i8*
  %cmp = icmp ugt i8* %26, %29
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.6
  %30 = load i8*, i8** %__obj, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit, align 8
  %cmp7 = icmp ult i8* %30, %32
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %33 = load i8*, i8** %__obj, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 2
  store i8* %33, i8** %object_base, align 8
  %35 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 3
  store i8* %33, i8** %next_free, align 8
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %if.then.6
  %36 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %37 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %36, i8* %37)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  ret void
}

declare void @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i8*, ...) #1

declare zeroext i1 @_cpp_pop_file_buffer(%struct.cpp_reader*, %struct.include_file*) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind uwtable
define void @_cpp_init_directives(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %i = alloca i32, align 4
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.directive, %struct.directive* %arrayidx, i32 0, i32 1
  %3 = load i8*, i8** %name, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 %idxprom1
  %length = getelementptr inbounds %struct.directive, %struct.directive* %arrayidx2, i32 0, i32 2
  %5 = load i16, i16* %length, align 2
  %conv = zext i16 %5 to i32
  %call = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %1, i8* %3, i32 %conv)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %6 = load i32, i32* %i, align 4
  %add = add i32 %6, 1
  %conv3 = trunc i32 %add to i8
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %directive_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i32 0, i32 2
  store i8 %conv3, i8* %directive_index, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_define(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %0)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %1, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call1 = call i32 @_cpp_create_definition(%struct.cpp_reader* %2, %struct.cpp_hashnode* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 35
  %define = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 3
  %5 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define, align 8
  %tobool4 = icmp ne void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 35
  %define7 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb6, i32 0, i32 3
  %7 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define7, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 5
  %10 = load i32, i32* %directive_line, align 4
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  call void %7(%struct.cpp_reader* %8, i32 %10, %struct.cpp_hashnode* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_include(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @do_include_common(%struct.cpp_reader* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_endif(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %ifs = alloca %struct.if_stack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 7
  %3 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8
  store %struct.if_stack* %3, %struct.if_stack** %ifs, align 8
  %4 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %cmp = icmp eq %struct.if_stack* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.21

if.else:                                          ; preds = %entry
  %6 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %was_skipping = getelementptr inbounds %struct.if_stack, %struct.if_stack* %6, i32 0, i32 4
  %7 = load i8, i8* %was_skipping, align 1
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %9 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %next = getelementptr inbounds %struct.if_stack, %struct.if_stack* %9, i32 0, i32 0
  %10 = load %struct.if_stack*, %struct.if_stack** %next, align 8
  %cmp3 = icmp eq %struct.if_stack* %10, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %mi_cmacro = getelementptr inbounds %struct.if_stack, %struct.if_stack* %11, i32 0, i32 2
  %12 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_cmacro, align 8
  %tobool4 = icmp ne %struct.cpp_hashnode* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 14
  store i8 1, i8* %mi_valid, align 1
  %14 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %mi_cmacro6 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %14, i32 0, i32 2
  %15 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_cmacro6, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_cmacro7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 12
  store %struct.cpp_hashnode* %15, %struct.cpp_hashnode** %mi_cmacro7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %17 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %next9 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %17, i32 0, i32 0
  %18 = load %struct.if_stack*, %struct.if_stack** %next9, align 8
  %19 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack10 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %19, i32 0, i32 7
  store %struct.if_stack* %18, %struct.if_stack** %if_stack10, align 8
  %20 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %was_skipping11 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %20, i32 0, i32 4
  %21 = load i8, i8* %was_skipping11, align 1
  %tobool12 = trunc i8 %21 to i1
  %conv = zext i1 %tobool12 to i8
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  store i8 %conv, i8* %skipping, align 1
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 33
  store %struct.obstack* %buffer_ob, %struct.obstack** %__o, align 8
  %24 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %25 = bitcast %struct.if_stack* %24 to i8*
  store i8* %25, i8** %__obj, align 8
  %26 = load i8*, i8** %__obj, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 1
  %28 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %29 = bitcast %struct._obstack_chunk* %28 to i8*
  %cmp13 = icmp ugt i8* %26, %29
  br i1 %cmp13, label %land.lhs.true.15, label %if.else.19

land.lhs.true.15:                                 ; preds = %if.end.8
  %30 = load i8*, i8** %__obj, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit, align 8
  %cmp16 = icmp ult i8* %30, %32
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true.15
  %33 = load i8*, i8** %__obj, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 2
  store i8* %33, i8** %object_base, align 8
  %35 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 3
  store i8* %33, i8** %next_free, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %land.lhs.true.15, %if.end.8
  %36 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %37 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %36, i8* %37)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_ifdef(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %skip = alloca i32, align 4
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 1, i32* %skip, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %1 = load i8, i8* %skipping, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %2)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool1 = icmp ne %struct.cpp_hashnode* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %4, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %skip, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool3 = icmp ne %struct.cpp_hashnode* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load i32, i32* %skip, align 4
  call void @push_conditional(%struct.cpp_reader* %7, i32 %8, i32 3, %struct.cpp_hashnode* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_if(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %skip = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 1, i32* %skip, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %1 = load i8, i8* %skipping, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_parse_expr(%struct.cpp_reader* %2)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %skip, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load i32, i32* %skip, align 4
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_ind_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 13
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_ind_cmacro, align 8
  call void @push_conditional(%struct.cpp_reader* %3, i32 %4, i32 4, %struct.cpp_hashnode* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_else(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %ifs = alloca %struct.if_stack*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 7
  %3 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8
  store %struct.if_stack* %3, %struct.if_stack** %ifs, align 8
  %4 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %cmp = icmp eq %struct.if_stack* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %type = getelementptr inbounds %struct.if_stack, %struct.if_stack* %6, i32 0, i32 5
  %7 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %7, 5
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0))
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %10, i32 0, i32 1
  %11 = load i32, i32* %line, align 4
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %9, i32 %11, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %12 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %type4 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %12, i32 0, i32 5
  store i32 5, i32* %type4, align 4
  %13 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %skip_elses = getelementptr inbounds %struct.if_stack, %struct.if_stack* %13, i32 0, i32 3
  %14 = load i8, i8* %skip_elses, align 1
  %tobool = trunc i8 %14 to i1
  %conv = zext i1 %tobool to i8
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  store i8 %conv, i8* %skipping, align 1
  %16 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %skip_elses5 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %16, i32 0, i32 3
  store i8 1, i8* %skip_elses5, align 1
  %17 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %mi_cmacro = getelementptr inbounds %struct.if_stack, %struct.if_stack* %17, i32 0, i32 2
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro, align 8
  %18 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %was_skipping = getelementptr inbounds %struct.if_stack, %struct.if_stack* %18, i32 0, i32 4
  %19 = load i8, i8* %was_skipping, align 1
  %tobool6 = trunc i8 %19 to i1
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %20)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_ifndef(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %skip = alloca i32, align 4
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 1, i32* %skip, align 4
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %node, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %1 = load i8, i8* %skipping, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %2)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool1 = icmp ne %struct.cpp_hashnode* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %4, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %skip, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool3 = icmp ne %struct.cpp_hashnode* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load i32, i32* %skip, align 4
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  call void @push_conditional(%struct.cpp_reader* %7, i32 %8, i32 6, %struct.cpp_hashnode* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_undef(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %0)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 35
  %undef = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 4
  %4 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef, align 8
  %tobool1 = icmp ne void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 35
  %undef4 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb3, i32 0, i32 4
  %6 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef4, align 8
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 5
  %9 = load i32, i32* %directive_line, align 4
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  call void %6(%struct.cpp_reader* %7, i32 %9, %struct.cpp_hashnode* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %11, i32 0, i32 5
  %12 = load i8, i8* %flags, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 16
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %15 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i8* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %16 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  call void @_cpp_free_definition(%struct.cpp_hashnode* %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %land.lhs.true, %entry
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_line(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %new_file = alloca i8*, align 8
  %new_lineno = alloca i64, align 8
  %cap = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 3
  %1 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i32 0, i32 0
  %2 = load i8*, i8** %to_file, align 8
  store i8* %2, i8** %new_file, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 37
  %c99 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 41
  %4 = load i8, i8* %c99, align 1
  %conv = zext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 2147483647, i32 32767
  store i32 %cond, i32* %cap, align 4
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %5)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 57
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  %8 = load i8*, i8** %text, align 8
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 4
  %str3 = bitcast %union.anon.0* %val2 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str3, i32 0, i32 0
  %10 = load i32, i32* %len, align 4
  %call4 = call i32 @strtoul_for_line(i8* %8, i32 %10, i64* %new_lineno)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %13 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call6 = call i8* @cpp_token_as_text(%struct.cpp_reader* %12, %struct.cpp_token* %13)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i32 0, i32 0), i8* %call6)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts7, i32 0, i32 42
  %15 = load i8, i8* %pedantic, align 1
  %conv8 = zext i8 %15 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %16 = load i64, i64* %new_lineno, align 8
  %cmp10 = icmp eq i64 %16, 0
  br i1 %cmp10, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true
  %17 = load i64, i64* %new_lineno, align 8
  %18 = load i32, i32* %cap, align 4
  %conv13 = zext i32 %18 to i64
  %cmp14 = icmp ugt i64 %17, %conv13
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.12, %land.lhs.true
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %lor.lhs.false.12, %if.end
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call18 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %20)
  store %struct.cpp_token* %call18, %struct.cpp_token** %token, align 8
  %21 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type19 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 2
  %bf.load20 = load i8, i8* %type19, align 2
  %bf.cast21 = zext i8 %bf.load20 to i32
  %cmp22 = icmp eq i32 %bf.cast21, 61
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.17
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %23, i32 0, i32 4
  %str26 = bitcast %union.anon.0* %val25 to %struct.cpp_string*
  %text27 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str26, i32 0, i32 1
  %24 = load i8*, i8** %text27, align 8
  %25 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val28 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %25, i32 0, i32 4
  %str29 = bitcast %union.anon.0* %val28 to %struct.cpp_string*
  %len30 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str29, i32 0, i32 0
  %26 = load i32, i32* %len30, align 4
  %call31 = call i8* @dequote_string(%struct.cpp_reader* %22, i8* %24, i32 %26)
  store i8* %call31, i8** %new_file, align 8
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %27)
  br label %if.end.40

if.else:                                          ; preds = %if.end.17
  %28 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type32 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %28, i32 0, i32 2
  %bf.load33 = load i8, i8* %type32, align 2
  %bf.cast34 = zext i8 %bf.load33 to i32
  %cmp35 = icmp ne i32 %bf.cast34, 67
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.else
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %31 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call38 = call i8* @cpp_token_as_text(%struct.cpp_reader* %30, %struct.cpp_token* %31)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i8* %call38)
  br label %return

if.end.39:                                        ; preds = %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.24
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @skip_rest_of_line(%struct.cpp_reader* %32)
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load i8*, i8** %new_file, align 8
  %35 = load i64, i64* %new_lineno, align 8
  %conv41 = trunc i64 %35 to i32
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map42 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %36, i32 0, i32 3
  %37 = load %struct.line_map*, %struct.line_map** %map42, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %37, i32 0, i32 5
  %38 = load i8, i8* %sysp, align 1
  %conv43 = zext i8 %38 to i32
  call void @_cpp_do_file_change(%struct.cpp_reader* %33, i32 2, i8* %34, i32 %conv41, i32 %conv43)
  br label %return

return:                                           ; preds = %if.end.40, %if.then.37, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_elif(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %ifs = alloca %struct.if_stack*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 7
  %3 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8
  store %struct.if_stack* %3, %struct.if_stack** %ifs, align 8
  %4 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %cmp = icmp eq %struct.if_stack* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %entry
  %6 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %type = getelementptr inbounds %struct.if_stack, %struct.if_stack* %6, i32 0, i32 5
  %7 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %7, 5
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0))
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %10, i32 0, i32 1
  %11 = load i32, i32* %line, align 4
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %9, i32 %11, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %12 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %type4 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %12, i32 0, i32 5
  store i32 9, i32* %type4, align 4
  %13 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %skip_elses = getelementptr inbounds %struct.if_stack, %struct.if_stack* %13, i32 0, i32 3
  %14 = load i8, i8* %skip_elses, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  store i8 1, i8* %skipping, align 1
  br label %if.end.18

if.else.6:                                        ; preds = %if.end
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 1
  %skipping8 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state7, i32 0, i32 1
  store i8 0, i8* %skipping8, align 1
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_parse_expr(%struct.cpp_reader* %17)
  %tobool9 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool9, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 1
  %skipping11 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state10, i32 0, i32 1
  store i8 %conv, i8* %skipping11, align 1
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 1
  %skipping13 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state12, i32 0, i32 1
  %20 = load i8, i8* %skipping13, align 1
  %tobool14 = icmp ne i8 %20, 0
  %lnot15 = xor i1 %tobool14, true
  %21 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %skip_elses17 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %21, i32 0, i32 3
  %frombool = zext i1 %lnot15 to i8
  store i8 %frombool, i8* %skip_elses17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.6, %if.then.5
  %22 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %mi_cmacro = getelementptr inbounds %struct.if_stack, %struct.if_stack* %22, i32 0, i32 2
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_error(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @do_diagnostic(%struct.cpp_reader* %0, i32 3, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %p = alloca %struct.pragma_entry*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %count = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.pragma_entry* null, %struct.pragma_entry** %p, align 8
  store i32 1, i32* %count, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 7
  %1 = load i8, i8* %prevent_expansion, align 1
  %inc = add i8 %1, 1
  store i8 %inc, i8* %prevent_expansion, align 1
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %2)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 56
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %pragmas = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 34
  %5 = load %struct.pragma_entry*, %struct.pragma_entry** %pragmas, align 8
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 4
  %node = bitcast %union.anon.0* %val to %struct.cpp_hashnode**
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call1 = call %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %5, %struct.cpp_hashnode* %7)
  store %struct.pragma_entry* %call1, %struct.pragma_entry** %p, align 8
  %8 = load %struct.pragma_entry*, %struct.pragma_entry** %p, align 8
  %tobool = icmp ne %struct.pragma_entry* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.pragma_entry*, %struct.pragma_entry** %p, align 8
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %9, i32 0, i32 2
  %10 = load i32, i32* %is_nspace, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %land.lhs.true
  store i32 2, i32* %count, align 4
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call4 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %11)
  store %struct.cpp_token* %call4, %struct.cpp_token** %token, align 8
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 2
  %bf.load6 = load i8, i8* %type5, align 2
  %bf.cast7 = zext i8 %bf.load6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 56
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.3
  %13 = load %struct.pragma_entry*, %struct.pragma_entry** %p, align 8
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %13, i32 0, i32 3
  %space = bitcast %union.anon.1* %u to %struct.pragma_entry**
  %14 = load %struct.pragma_entry*, %struct.pragma_entry** %space, align 8
  %15 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i32 0, i32 4
  %node11 = bitcast %union.anon.0* %val10 to %struct.cpp_hashnode**
  %16 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node11, align 8
  %call12 = call %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %14, %struct.cpp_hashnode* %16)
  store %struct.pragma_entry* %call12, %struct.pragma_entry** %p, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.3
  store %struct.pragma_entry* null, %struct.pragma_entry** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 35
  %line_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 0
  %18 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8
  %tobool15 = icmp ne void (%struct.cpp_reader*, %struct.cpp_token*, i32)* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 35
  %line_change18 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb17, i32 0, i32 0
  %20 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change18, align 8
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  call void %20(%struct.cpp_reader* %21, %struct.cpp_token* %22, i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  %23 = load %struct.pragma_entry*, %struct.pragma_entry** %p, align 8
  %tobool20 = icmp ne %struct.pragma_entry* %23, null
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.end.19
  %24 = load %struct.pragma_entry*, %struct.pragma_entry** %p, align 8
  %u22 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %24, i32 0, i32 3
  %handler = bitcast %union.anon.1* %u22 to void (%struct.cpp_reader*)**
  %25 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler, align 8
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void %25(%struct.cpp_reader* %26)
  br label %if.end.30

if.else.23:                                       ; preds = %if.end.19
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb24 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 35
  %def_pragma = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb24, i32 0, i32 6
  %28 = load void (%struct.cpp_reader*, i32)*, void (%struct.cpp_reader*, i32)** %def_pragma, align 8
  %tobool25 = icmp ne void (%struct.cpp_reader*, i32)* %28, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.else.23
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %30 = load i32, i32* %count, align 4
  call void @_cpp_backup_tokens(%struct.cpp_reader* %29, i32 %30)
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb27 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 35
  %def_pragma28 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb27, i32 0, i32 6
  %32 = load void (%struct.cpp_reader*, i32)*, void (%struct.cpp_reader*, i32)** %def_pragma28, align 8
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 5
  %35 = load i32, i32* %directive_line, align 4
  call void %32(%struct.cpp_reader* %33, i32 %35)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.else.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.21
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state31 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %36, i32 0, i32 1
  %prevent_expansion32 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state31, i32 0, i32 7
  %37 = load i8, i8* %prevent_expansion32, align 1
  %dec = add i8 %37, -1
  store i8 %dec, i8* %prevent_expansion32, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_warning(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @do_diagnostic(%struct.cpp_reader* %0, i32 1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_include_next(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @do_include_common(%struct.cpp_reader* %0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_ident(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %str, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %str, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 35
  %ident = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 5
  %4 = load void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)** %ident, align 8
  %tobool = icmp ne void (%struct.cpp_reader*, i32, %struct.cpp_string*)* %4, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 35
  %ident3 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb2, i32 0, i32 5
  %6 = load void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)** %ident3, align 8
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 5
  %9 = load i32, i32* %directive_line, align 4
  %10 = load %struct.cpp_token*, %struct.cpp_token** %str, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 4
  %str4 = bitcast %union.anon.0* %val to %struct.cpp_string*
  call void %6(%struct.cpp_reader* %7, i32 %9, %struct.cpp_string* %str4)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_import(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @do_include_common(%struct.cpp_reader* %0, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_assert(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %new_answer = alloca %struct.answer*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %0, %struct.answer** %new_answer, i32 16)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %1, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load %struct.answer*, %struct.answer** %new_answer, align 8
  %next = getelementptr inbounds %struct.answer, %struct.answer* %2, i32 0, i32 0
  store %struct.answer* null, %struct.answer** %next, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %3, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %5 = load %struct.answer*, %struct.answer** %new_answer, align 8
  %call2 = call %struct.answer** @find_answer(%struct.cpp_hashnode* %4, %struct.answer* %5)
  %6 = load %struct.answer*, %struct.answer** %call2, align 8
  %tobool3 = icmp ne %struct.answer* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.1
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %8, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %9 = load i8*, i8** %str, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* %add.ptr)
  br label %if.end.11

if.end:                                           ; preds = %if.then.1
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i32 0, i32 6
  %answers = bitcast %union.anon* %value to %struct.answer**
  %11 = load %struct.answer*, %struct.answer** %answers, align 8
  %12 = load %struct.answer*, %struct.answer** %new_answer, align 8
  %next5 = getelementptr inbounds %struct.answer, %struct.answer* %12, i32 0, i32 0
  store %struct.answer* %11, %struct.answer** %next5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type7 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %13, i32 0, i32 4
  store i8 2, i8* %type7, align 4
  %14 = load %struct.answer*, %struct.answer** %new_answer, align 8
  %15 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %value8 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %15, i32 0, i32 6
  %answers9 = bitcast %union.anon* %value8 to %struct.answer**
  store %struct.answer* %14, %struct.answer** %answers9, align 8
  %16 = load %struct.answer*, %struct.answer** %new_answer, align 8
  %count = getelementptr inbounds %struct.answer, %struct.answer* %16, i32 0, i32 1
  %17 = load i32, i32* %count, align 4
  %sub = sub i32 %17, 1
  %conv = zext i32 %sub to i64
  %mul = mul i64 %conv, 24
  %add = add i64 40, %mul
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 6
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %19, i32 0, i32 2
  %20 = load i8*, i8** %cur, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %20, i64 %add
  store i8* %add.ptr10, i8** %cur, align 8
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.4, %if.end.6, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_unassert(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  %answer = alloca %struct.answer*, align 8
  %p = alloca %struct.answer**, align 8
  %temp = alloca %struct.answer*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %0, %struct.answer** %answer, i32 17)
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %node, align 8
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.answer*, %struct.answer** %answer, align 8
  %tobool1 = icmp ne %struct.answer* %3, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %5 = load %struct.answer*, %struct.answer** %answer, align 8
  %call3 = call %struct.answer** @find_answer(%struct.cpp_hashnode* %4, %struct.answer* %5)
  store %struct.answer** %call3, %struct.answer*** %p, align 8
  %6 = load %struct.answer**, %struct.answer*** %p, align 8
  %7 = load %struct.answer*, %struct.answer** %6, align 8
  store %struct.answer* %7, %struct.answer** %temp, align 8
  %8 = load %struct.answer*, %struct.answer** %temp, align 8
  %tobool4 = icmp ne %struct.answer* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct.answer*, %struct.answer** %temp, align 8
  %next = getelementptr inbounds %struct.answer, %struct.answer* %9, i32 0, i32 0
  %10 = load %struct.answer*, %struct.answer** %next, align 8
  %11 = load %struct.answer**, %struct.answer*** %p, align 8
  store %struct.answer* %10, %struct.answer** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  %12 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %12, i32 0, i32 6
  %answers = bitcast %union.anon* %value to %struct.answer**
  %13 = load %struct.answer*, %struct.answer** %answers, align 8
  %cmp6 = icmp eq %struct.answer* %13, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %14 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type8 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i32 0, i32 4
  store i8 0, i8* %type8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %15)
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %16 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  call void @_cpp_free_definition(%struct.cpp_hashnode* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_sccs(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %pfile) #0 {
entry:
  %retval = alloca %struct.cpp_hashnode*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 56
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  %cmp4 = icmp eq i32 %bf.cast3, 67
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 11
  %5 = load %struct.directive*, %struct.directive** %directive, align 8
  %name = getelementptr inbounds %struct.directive, %struct.directive* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* %6)
  br label %if.end.9

if.else:                                          ; preds = %if.then
  %7 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 3
  %8 = load i8, i8* %flags, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 4
  %node7 = bitcast %union.anon.0* %val to %struct.cpp_hashnode**
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node7, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %11, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %9, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i32 0, i32 0), i8* %12)
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.5
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %14 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val11 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 4
  %node12 = bitcast %union.anon.0* %val11 to %struct.cpp_hashnode**
  %15 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node12, align 8
  store %struct.cpp_hashnode* %15, %struct.cpp_hashnode** %node, align 8
  %16 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %flags13 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %16, i32 0, i32 5
  %17 = load i8, i8* %flags13, align 1
  %conv14 = zext i8 %17 to i32
  %and15 = and i32 %conv14, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  %18 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 38
  %n_defined = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes, i32 0, i32 0
  %20 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_defined, align 8
  %cmp19 = icmp eq %struct.cpp_hashnode* %18, %20
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident22 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %22, i32 0, i32 0
  %str23 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident22, i32 0, i32 1
  %23 = load i8*, i8** %str23, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i8* %23)
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %24 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  store %struct.cpp_hashnode* %24, %struct.cpp_hashnode** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.21, %if.then.17, %if.end.9
  %25 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %retval
  ret %struct.cpp_hashnode* %25
}

declare i32 @_cpp_create_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) #1

; Function Attrs: nounwind uwtable
define internal void @do_include_common(%struct.cpp_reader* %pfile, i32 %type) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %type.addr = alloca i32, align 4
  %header = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 0
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i32 0, i32 4
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8
  %tobool = icmp ne %struct.cpp_buffer* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0))
  store i32 0, i32* %type.addr, align 4
  br label %if.end.7

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %if.else
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %warn_import = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 32
  %7 = load i8, i8* %warn_import, align 1
  %conv = zext i8 %7 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true.2
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %warn_import6 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts5, i32 0, i32 32
  store i8 0, i8* %warn_import6, align 1
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true.2, %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @parse_include(%struct.cpp_reader* %10)
  store %struct.cpp_token* %call, %struct.cpp_token** %header, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %tobool8 = icmp ne %struct.cpp_token* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 2
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %line_maps, i32 0, i32 4
  %13 = load i32, i32* %depth, align 4
  %cmp10 = icmp uge i32 %13, 200
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.9
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_fatal(%struct.cpp_reader* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.20

if.else.13:                                       ; preds = %if.then.9
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %15)
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @skip_rest_of_line(%struct.cpp_reader* %16)
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 35
  %include = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb, i32 0, i32 2
  %18 = load void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)** %include, align 8
  %tobool14 = icmp ne void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.else.13
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cb16 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 35
  %include17 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %cb16, i32 0, i32 2
  %20 = load void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)** %include17, align 8
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 5
  %23 = load i32, i32* %directive_line, align 4
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 11
  %25 = load %struct.directive*, %struct.directive** %directive, align 8
  %name = getelementptr inbounds %struct.directive, %struct.directive* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  call void %20(%struct.cpp_reader* %21, i32 %23, i8* %26, %struct.cpp_token* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.else.13
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %29 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %30 = load i32, i32* %type.addr, align 4
  %call19 = call zeroext i1 @_cpp_execute_include(%struct.cpp_reader* %28, %struct.cpp_token* %29, i32 %30)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.18, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.7
  ret void
}

declare void @cpp_warning(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @parse_include(%struct.cpp_reader* %pfile) #0 {
entry:
  %retval = alloca %struct.cpp_token*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %dir = alloca i8*, align 8
  %header = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 11
  %1 = load %struct.directive*, %struct.directive** %directive, align 8
  %cmp = icmp eq %struct.directive* %1, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i32 0, i64 11)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* bitcast ([18 x i32]* @.str.38 to i8*), i8** %dir, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 11
  %3 = load %struct.directive*, %struct.directive** %directive1, align 8
  %name = getelementptr inbounds %struct.directive, %struct.directive* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  store i8* %4, i8** %dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %5)
  store %struct.cpp_token* %call, %struct.cpp_token** %header, align 8
  %6 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp2 = icmp ne i32 %bf.cast, 61
  br i1 %cmp2, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %type3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 2
  %bf.load4 = load i8, i8* %type3, align 2
  %bf.cast5 = zext i8 %bf.load4 to i32
  %cmp6 = icmp ne i32 %bf.cast5, 63
  br i1 %cmp6, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %land.lhs.true
  %8 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %type8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  %bf.load9 = load i8, i8* %type8, align 2
  %bf.cast10 = zext i8 %bf.load9 to i32
  %cmp11 = icmp ne i32 %bf.cast10, 3
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load i8*, i8** %dir, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i8* %10)
  store %struct.cpp_token* null, %struct.cpp_token** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call14 = call %struct.cpp_token* @glue_header_name(%struct.cpp_reader* %11)
  store %struct.cpp_token* %call14, %struct.cpp_token** %header, align 8
  %12 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %cmp15 = icmp eq %struct.cpp_token* %12, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %13 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  store %struct.cpp_token* %13, %struct.cpp_token** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.end
  %14 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  %15 = load i32, i32* %len, align 4
  %cmp19 = icmp eq i32 %15, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load i8*, i8** %dir, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i8* %17)
  store %struct.cpp_token* null, %struct.cpp_token** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.18
  %18 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  store %struct.cpp_token* %18, %struct.cpp_token** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.16, %if.then.12
  %19 = load %struct.cpp_token*, %struct.cpp_token** %retval
  ret %struct.cpp_token* %19
}

declare void @cpp_fatal(%struct.cpp_reader*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @check_eol(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 15
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i64 -1
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 67
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %2)
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  %cmp4 = icmp ne i32 %bf.cast3, 67
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 11
  %5 = load %struct.directive*, %struct.directive** %directive, align 8
  %name = getelementptr inbounds %struct.directive, %struct.directive* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @skip_rest_of_line(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %base_context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 9
  %cmp = icmp ne %struct.cpp_context* %1, %base_context
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_context(%struct.cpp_reader* %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 15
  %5 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i64 -1
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp1 = icmp eq i32 %bf.cast, 67
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.7, %if.then
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %6)
  %type3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i32 0, i32 2
  %bf.load4 = load i8, i8* %type3, align 2
  %bf.cast5 = zext i8 %bf.load4 to i32
  %cmp6 = icmp ne i32 %bf.cast5, 67
  br i1 %cmp6, label %while.body.7, label %while.end.8

while.body.7:                                     ; preds = %while.cond.2
  br label %while.cond.2

while.end.8:                                      ; preds = %while.cond.2
  br label %if.end

if.end:                                           ; preds = %while.end.8, %while.end
  ret void
}

declare zeroext i1 @_cpp_execute_include(%struct.cpp_reader*, %struct.cpp_token*, i32) #1

declare %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @glue_header_name(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %header = alloca %struct.cpp_token*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %buffer = alloca i8*, align 8
  %len = alloca i64, align 8
  %total_len = alloca i64, align 8
  %capacity = alloca i64, align 8
  %token_mem = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* null, %struct.cpp_token** %header, align 8
  store i64 0, i64* %total_len, align 8
  store i64 1024, i64* %capacity, align 8
  %0 = load i64, i64* %capacity, align 8
  %call = call noalias i8* @xmalloc(i64 %0)
  store i8* %call, i8** %buffer, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.15, %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %1)
  store %struct.cpp_token* %call1, %struct.cpp_token** %token, align 8
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 2
  %bf.load3 = load i8, i8* %type2, align 2
  %bf.cast4 = zext i8 %bf.load3 to i32
  %cmp5 = icmp eq i32 %bf.cast4, 67
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call6 = call i32 @cpp_token_len(%struct.cpp_token* %4)
  %conv = zext i32 %call6 to i64
  store i64 %conv, i64* %len, align 8
  %5 = load i64, i64* %total_len, align 8
  %6 = load i64, i64* %len, align 8
  %add = add i64 %5, %6
  %7 = load i64, i64* %capacity, align 8
  %cmp7 = icmp ugt i64 %add, %7
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %8 = load i64, i64* %capacity, align 8
  %9 = load i64, i64* %len, align 8
  %add10 = add i64 %8, %9
  %mul = mul i64 %add10, 2
  store i64 %mul, i64* %capacity, align 8
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i64, i64* %capacity, align 8
  %call11 = call i8* @xrealloc(i8* %10, i64 %11)
  store i8* %call11, i8** %buffer, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 3
  %13 = load i8, i8* %flags, align 1
  %conv13 = zext i8 %13 to i32
  %and = and i32 %conv13, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %14 = load i64, i64* %total_len, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %total_len, align 8
  %15 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %14
  store i8 32, i8* %arrayidx, align 1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %18 = load i64, i64* %total_len, align 8
  %19 = load i8*, i8** %buffer, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 %18
  %call17 = call i8* @cpp_spell_token(%struct.cpp_reader* %16, %struct.cpp_token* %17, i8* %arrayidx16)
  %20 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %total_len, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %21 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type18 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 2
  %bf.load19 = load i8, i8* %type18, align 2
  %bf.cast20 = zext i8 %bf.load19 to i32
  %cmp21 = icmp eq i32 %bf.cast20, 67
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.end
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.34

if.else:                                          ; preds = %for.end
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %24 = load i64, i64* %total_len, align 8
  %add24 = add i64 %24, 1
  %call25 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %23, i64 %add24)
  store i8* %call25, i8** %token_mem, align 8
  %25 = load i8*, i8** %token_mem, align 8
  %26 = load i8*, i8** %buffer, align 8
  %27 = load i64, i64* %total_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %27, i32 1, i1 false)
  %28 = load i64, i64* %total_len, align 8
  %29 = load i8*, i8** %token_mem, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 %28
  store i8 0, i8* %arrayidx26, align 1
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call27 = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %30)
  store %struct.cpp_token* %call27, %struct.cpp_token** %header, align 8
  %31 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %type28 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 0, i32 2
  store i8 63, i8* %type28, align 2
  %32 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %flags29 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %32, i32 0, i32 3
  store i8 0, i8* %flags29, align 1
  %33 = load i64, i64* %total_len, align 8
  %conv30 = trunc i64 %33 to i32
  %34 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %34, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %len31 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  store i32 %conv30, i32* %len31, align 4
  %35 = load i8*, i8** %token_mem, align 8
  %36 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  %val32 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %36, i32 0, i32 4
  %str33 = bitcast %union.anon.0* %val32 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str33, i32 0, i32 1
  store i8* %35, i8** %text, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.23
  %37 = load i8*, i8** %buffer, align 8
  call void @free(i8* %37) #4
  %38 = load %struct.cpp_token*, %struct.cpp_token** %header, align 8
  ret %struct.cpp_token* %38
}

declare noalias i8* @xmalloc(i64) #1

declare i32 @cpp_token_len(%struct.cpp_token*) #1

declare i8* @xrealloc(i8*, i64) #1

declare i8* @cpp_spell_token(%struct.cpp_reader*, %struct.cpp_token*, i8*) #1

declare i8* @_cpp_unaligned_alloc(%struct.cpp_reader*, i64) #1

declare %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader*) #1

; Function Attrs: nounwind
declare void @free(i8*) #5

declare void @_cpp_pop_context(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define internal void @push_conditional(%struct.cpp_reader* %pfile, i32 %skip, i32 %type, %struct.cpp_hashnode* %cmacro) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %skip.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %cmacro.addr = alloca %struct.cpp_hashnode*, align 8
  %ifs = alloca %struct.if_stack*, align 8
  %buffer = alloca %struct.cpp_buffer*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp36 = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %skip, i32* %skip.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store %struct.cpp_hashnode* %cmacro, %struct.cpp_hashnode** %cmacro.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 33
  store %struct.obstack* %buffer_ob, %struct.obstack** %__h, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %3, %struct.obstack** %__o, align 8
  store i32 32, i32* %__len, align 4
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 4
  %5 = load i8*, i8** %chunk_limit, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 3
  %7 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load i32, i32* %__len, align 4
  %conv = sext i32 %8 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %10 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %__len, align 4
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free3 = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 3
  %13 = load i8*, i8** %next_free3, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free3, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %14, %struct.obstack** %__o1, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 2
  %16 = load i8*, i8** %object_base, align 8
  store i8* %16, i8** %value, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 3
  %18 = load i8*, i8** %next_free6, align 8
  %19 = load i8*, i8** %value, align 8
  %cmp7 = icmp eq i8* %18, %19
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free11 = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  %22 = load i8*, i8** %next_free11, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %22 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast12, 0
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask, align 4
  %conv14 = sext i32 %24 to i64
  %add = add nsw i64 %sub.ptr.sub13, %conv14
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask15 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 6
  %26 = load i32, i32* %alignment_mask15, align 4
  %neg = xor i32 %26, -1
  %conv16 = sext i32 %neg to i64
  %and = and i64 %add, %conv16
  %add.ptr17 = getelementptr inbounds i8, i8* null, i64 %and
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  store i8* %add.ptr17, i8** %next_free18, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  %29 = load i8*, i8** %next_free19, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 1
  %31 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %32 = bitcast %struct._obstack_chunk* %31 to i8*
  %sub.ptr.lhs.cast20 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %32 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit23 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 4
  %34 = load i8*, i8** %chunk_limit23, align 8
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk24 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 1
  %36 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk24, align 8
  %37 = bitcast %struct._obstack_chunk* %36 to i8*
  %sub.ptr.lhs.cast25 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %37 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %cmp28 = icmp sgt i64 %sub.ptr.sub22, %sub.ptr.sub27
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.10
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit31 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 4
  %39 = load i8*, i8** %chunk_limit31, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free32 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  store i8* %39, i8** %next_free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.10
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  %42 = load i8*, i8** %next_free34, align 8
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base35 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 2
  store i8* %42, i8** %object_base35, align 8
  %44 = load i8*, i8** %value, align 8
  store i8* %44, i8** %tmp36
  %45 = load i8*, i8** %tmp36
  store i8* %45, i8** %tmp
  %46 = load i8*, i8** %tmp
  %47 = bitcast i8* %46 to %struct.if_stack*
  store %struct.if_stack* %47, %struct.if_stack** %ifs, align 8
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %48, i32 0, i32 5
  %49 = load i32, i32* %directive_line, align 4
  %50 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %50, i32 0, i32 1
  store i32 %49, i32* %line, align 4
  %51 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %51, i32 0, i32 7
  %52 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8
  %53 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %next = getelementptr inbounds %struct.if_stack, %struct.if_stack* %53, i32 0, i32 0
  store %struct.if_stack* %52, %struct.if_stack** %next, align 8
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %54, i32 0, i32 1
  %skipping = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 1
  %55 = load i8, i8* %skipping, align 1
  %conv37 = zext i8 %55 to i32
  %tobool = icmp ne i32 %conv37, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.33
  %56 = load i32, i32* %skip.addr, align 4
  %tobool38 = icmp ne i32 %56, 0
  %lnot = xor i1 %tobool38, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.33
  %57 = phi i1 [ true, %if.end.33 ], [ %lnot, %lor.rhs ]
  %58 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %skip_elses = getelementptr inbounds %struct.if_stack, %struct.if_stack* %58, i32 0, i32 3
  %frombool = zext i1 %57 to i8
  store i8 %frombool, i8* %skip_elses, align 1
  %59 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %59, i32 0, i32 1
  %skipping40 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state39, i32 0, i32 1
  %60 = load i8, i8* %skipping40, align 1
  %tobool41 = icmp ne i8 %60, 0
  %61 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %was_skipping = getelementptr inbounds %struct.if_stack, %struct.if_stack* %61, i32 0, i32 4
  %frombool42 = zext i1 %tobool41 to i8
  store i8 %frombool42, i8* %was_skipping, align 1
  %62 = load i32, i32* %type.addr, align 4
  %63 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %type43 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %63, i32 0, i32 5
  store i32 %62, i32* %type43, align 4
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %64, i32 0, i32 14
  %65 = load i8, i8* %mi_valid, align 1
  %tobool44 = trunc i8 %65 to i1
  br i1 %tobool44, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.end
  %66 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %66, i32 0, i32 12
  %67 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_cmacro, align 8
  %cmp46 = icmp eq %struct.cpp_hashnode* %67, null
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %land.lhs.true
  %68 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro.addr, align 8
  %69 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %mi_cmacro49 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %69, i32 0, i32 2
  store %struct.cpp_hashnode* %68, %struct.cpp_hashnode** %mi_cmacro49, align 8
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %70 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %mi_cmacro50 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %70, i32 0, i32 2
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.48
  %71 = load i32, i32* %skip.addr, align 4
  %conv52 = trunc i32 %71 to i8
  %72 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state53 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %72, i32 0, i32 1
  %skipping54 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state53, i32 0, i32 1
  store i8 %conv52, i8* %skipping54, align 1
  %73 = load %struct.if_stack*, %struct.if_stack** %ifs, align 8
  %74 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %if_stack55 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %74, i32 0, i32 7
  store %struct.if_stack* %73, %struct.if_stack** %if_stack55, align 8
  ret void
}

declare i32 @_cpp_parse_expr(%struct.cpp_reader*) #1

declare void @_cpp_free_definition(%struct.cpp_hashnode*) #1

; Function Attrs: nounwind uwtable
define internal i32 @strtoul_for_line(i8* %str, i32 %len, i64* %nump) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %nump.addr = alloca i64*, align 8
  %reg = alloca i64, align 8
  %c = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i64* %nump, i64** %nump.addr, align 8
  store i64 0, i64* %reg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %len.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %3 = load i8, i8* %c, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and2 = and i32 %conv1, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i64, i64* %reg, align 8
  %mul = mul i64 %5, 10
  store i64 %mul, i64* %reg, align 8
  %6 = load i8, i8* %c, align 1
  %conv4 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv4, 48
  %conv5 = sext i32 %sub to i64
  %7 = load i64, i64* %reg, align 8
  %add = add i64 %7, %conv5
  store i64 %add, i64* %reg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %reg, align 8
  %9 = load i64*, i64** %nump.addr, align 8
  store i64 %8, i64* %9, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i8* @dequote_string(%struct.cpp_reader* %pfile, i8* %str, i32 %len) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %c = alloca i32, align 4
  %mask = alloca i64, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %call = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %0, i64 %conv)
  store i8* %call, i8** %result, align 8
  %2 = load i8*, i8** %result, align 8
  store i8* %2, i8** %dst, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  store i64 255, i64* %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8*, i8** %limit, align 8
  %cmp = icmp ult i8* %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = zext i8 %8 to i32
  store i32 %conv2, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp3 = icmp ne i32 %9, 92
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %c, align 4
  %conv5 = trunc i32 %10 to i8
  %11 = load i8*, i8** %dst, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr6, i8** %dst, align 8
  store i8 %conv5, i8* %11, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %13 = load i8*, i8** %limit, align 8
  %14 = load i64, i64* %mask, align 8
  %call7 = call i32 @cpp_parse_escape(%struct.cpp_reader* %12, i8** %str.addr, i8* %13, i64 %14, i32 0)
  %conv8 = trunc i32 %call7 to i8
  %15 = load i8*, i8** %dst, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr9, i8** %dst, align 8
  store i8 %conv8, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %dst, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr10, i8** %dst, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %result, align 8
  ret i8* %17
}

declare i32 @cpp_parse_escape(%struct.cpp_reader*, i8**, i8*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal void @do_diagnostic(%struct.cpp_reader* %pfile, i32 %code, i32 %print_dir) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %code.addr = alloca i32, align 4
  %print_dir.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %print_dir, i32* %print_dir.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i32, i32* %code.addr, align 4
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 %1, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %print_dir.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 11
  %5 = load %struct.directive*, %struct.directive** %directive, align 8
  %name = getelementptr inbounds %struct.directive, %struct.directive* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 7
  %8 = load i8, i8* %prevent_expansion, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %prevent_expansion, align 1
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @cpp_output_line(%struct.cpp_reader* %9, %struct._IO_FILE* %10)
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 1
  %prevent_expansion5 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state4, i32 0, i32 7
  %12 = load i8, i8* %prevent_expansion5, align 1
  %dec = add i8 %12, -1
  store i8 %dec, i8* %prevent_expansion5, align 1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @_cpp_begin_message(%struct.cpp_reader*, i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @cpp_output_line(%struct.cpp_reader*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @do_linemarker(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %new_file = alloca i8*, align 8
  %new_lineno = alloca i64, align 8
  %new_sysp = alloca i32, align 4
  %reason = alloca i32, align 4
  %flag = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 3
  %1 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i32 0, i32 0
  %2 = load i8*, i8** %to_file, align 8
  store i8* %2, i8** %new_file, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 3
  %4 = load %struct.line_map*, %struct.line_map** %map1, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 5
  %5 = load i8, i8* %sysp, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %new_sysp, align 4
  store i32 2, i32* %reason, align 4
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %6, i32 1)
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %7)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 57
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  %10 = load i8*, i8** %text, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %11, i32 0, i32 4
  %str4 = bitcast %union.anon.0* %val3 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str4, i32 0, i32 0
  %12 = load i32, i32* %len, align 4
  %call5 = call i32 @strtoul_for_line(i8* %10, i32 %12, i64* %new_lineno)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %15 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call6 = call i8* @cpp_token_as_text(%struct.cpp_reader* %14, %struct.cpp_token* %15)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i32 0, i32 0), i8* %call6)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call7 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %16)
  store %struct.cpp_token* %call7, %struct.cpp_token** %token, align 8
  %17 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %17, i32 0, i32 2
  %bf.load9 = load i8, i8* %type8, align 2
  %bf.cast10 = zext i8 %bf.load9 to i32
  %cmp11 = icmp eq i32 %bf.cast10, 61
  br i1 %cmp11, label %if.then.13, label %if.else.41

if.then.13:                                       ; preds = %if.end
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i32 0, i32 4
  %str15 = bitcast %union.anon.0* %val14 to %struct.cpp_string*
  %text16 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str15, i32 0, i32 1
  %20 = load i8*, i8** %text16, align 8
  %21 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val17 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 4
  %str18 = bitcast %union.anon.0* %val17 to %struct.cpp_string*
  %len19 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str18, i32 0, i32 0
  %22 = load i32, i32* %len19, align 4
  %call20 = call i8* @dequote_string(%struct.cpp_reader* %18, i8* %20, i32 %22)
  store i8* %call20, i8** %new_file, align 8
  store i32 0, i32* %new_sysp, align 4
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call21 = call i32 @read_flag(%struct.cpp_reader* %23, i32 0)
  store i32 %call21, i32* %flag, align 4
  %24 = load i32, i32* %flag, align 4
  %cmp22 = icmp eq i32 %24, 1
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.13
  store i32 0, i32* %reason, align 4
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %26 = load i8*, i8** %new_file, align 8
  call void @_cpp_fake_include(%struct.cpp_reader* %25, i8* %26)
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %28 = load i32, i32* %flag, align 4
  %call25 = call i32 @read_flag(%struct.cpp_reader* %27, i32 %28)
  store i32 %call25, i32* %flag, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.then.13
  %29 = load i32, i32* %flag, align 4
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.else
  store i32 1, i32* %reason, align 4
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %31 = load i32, i32* %flag, align 4
  %call29 = call i32 @read_flag(%struct.cpp_reader* %30, i32 %31)
  store i32 %call29, i32* %flag, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.24
  %32 = load i32, i32* %flag, align 4
  %cmp32 = icmp eq i32 %32, 3
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.end.31
  store i32 1, i32* %new_sysp, align 4
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %34 = load i32, i32* %flag, align 4
  %call35 = call i32 @read_flag(%struct.cpp_reader* %33, i32 %34)
  store i32 %call35, i32* %flag, align 4
  %35 = load i32, i32* %flag, align 4
  %cmp36 = icmp eq i32 %35, 4
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.34
  store i32 2, i32* %new_sysp, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.31
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @check_eol(%struct.cpp_reader* %36)
  br label %if.end.50

if.else.41:                                       ; preds = %if.end
  %37 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type42 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %37, i32 0, i32 2
  %bf.load43 = load i8, i8* %type42, align 2
  %bf.cast44 = zext i8 %bf.load43 to i32
  %cmp45 = icmp ne i32 %bf.cast44, 67
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.else.41
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %40 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call48 = call i8* @cpp_token_as_text(%struct.cpp_reader* %39, %struct.cpp_token* %40)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i8* %call48)
  br label %return

if.end.49:                                        ; preds = %if.else.41
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.40
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @skip_rest_of_line(%struct.cpp_reader* %41)
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %43 = load i32, i32* %reason, align 4
  %44 = load i8*, i8** %new_file, align 8
  %45 = load i64, i64* %new_lineno, align 8
  %conv51 = trunc i64 %45 to i32
  %46 = load i32, i32* %new_sysp, align 4
  call void @_cpp_do_file_change(%struct.cpp_reader* %42, i32 %43, i8* %44, i32 %conv51, i32 %46)
  br label %return

return:                                           ; preds = %if.end.50, %if.then.47, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_flag(%struct.cpp_reader* %pfile, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %last.addr = alloca i32, align 4
  %token = alloca %struct.cpp_token*, align 8
  %flag = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %last, i32* %last.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 57
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i32 0, i32 4
  %str = bitcast %union.anon.0* %val to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  %3 = load i32, i32* %len, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 4
  %str3 = bitcast %union.anon.0* %val2 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str3, i32 0, i32 1
  %5 = load i8*, i8** %text, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %sub = sub nsw i32 %conv, 48
  store i32 %sub, i32* %flag, align 4
  %7 = load i32, i32* %flag, align 4
  %8 = load i32, i32* %last.addr, align 4
  %cmp4 = icmp ugt i32 %7, %8
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then
  %9 = load i32, i32* %flag, align 4
  %cmp7 = icmp ule i32 %9, 4
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %10 = load i32, i32* %flag, align 4
  %cmp10 = icmp ne i32 %10, 4
  br i1 %cmp10, label %land.lhs.true.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.9
  %11 = load i32, i32* %last.addr, align 4
  %cmp12 = icmp eq i32 %11, 3
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %lor.lhs.false, %land.lhs.true.9
  %12 = load i32, i32* %flag, align 4
  %cmp15 = icmp ne i32 %12, 2
  br i1 %cmp15, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.14
  %13 = load i32, i32* %last.addr, align 4
  %cmp18 = icmp eq i32 %13, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.14
  %14 = load i32, i32* %flag, align 4
  store i32 %14, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.17, %lor.lhs.false, %land.lhs.true.6, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %land.lhs.true, %entry
  %15 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type22 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i32 0, i32 2
  %bf.load23 = load i8, i8* %type22, align 2
  %bf.cast24 = zext i8 %bf.load23 to i32
  %cmp25 = icmp ne i32 %bf.cast24, 67
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.21
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %18 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call28 = call i8* @cpp_token_as_text(%struct.cpp_reader* %17, %struct.cpp_token* %18)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), i8* %call28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.21
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.20
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @_cpp_fake_include(%struct.cpp_reader*, i8*) #1

declare i8* @_cpp_aligned_alloc(%struct.cpp_reader*, i64) #1

declare void @_cpp_never_reread(%struct.include_file*) #1

declare void @cpp_make_system_header(%struct.cpp_reader*, i32, i32) #1

declare i32 @_cpp_compare_file_date(%struct.cpp_reader*, %struct.cpp_token*) #1

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %result = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %result, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %2 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  ret %struct.cpp_token* %2

if.end:                                           ; preds = %for.cond
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_answer(%struct.cpp_reader* %pfile, %struct.answer** %answerp, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %answerp.addr = alloca %struct.answer**, align 8
  %type.addr = alloca i32, align 4
  %paren = alloca %struct.cpp_token*, align 8
  %answer = alloca %struct.answer*, align 8
  %acount = alloca i32, align 4
  %room_needed = alloca i64, align 8
  %token = alloca %struct.cpp_token*, align 8
  %dest = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.answer** %answerp, %struct.answer*** %answerp.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %paren, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %paren, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type1, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 22
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp eq i32 %2, 4
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %3, i32 1)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %type.addr, align 4
  %cmp4 = icmp eq i32 %4, 17
  br i1 %cmp4, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.cpp_token*, %struct.cpp_token** %paren, align 8
  %type5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 2
  %bf.load6 = load i8, i8* %type5, align 2
  %bf.cast7 = zext i8 %bf.load6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 67
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.end
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %entry
  store i32 0, i32* %acount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call12 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %7)
  store %struct.cpp_token* %call12, %struct.cpp_token** %token, align 8
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  %bf.load14 = load i8, i8* %type13, align 2
  %bf.cast15 = zext i8 %bf.load14 to i32
  %cmp16 = icmp eq i32 %bf.cast15, 23
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.cond
  br label %for.end

if.end.18:                                        ; preds = %for.cond
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type19 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 2
  %bf.load20 = load i8, i8* %type19, align 2
  %bf.cast21 = zext i8 %bf.load20 to i32
  %cmp22 = icmp eq i32 %bf.cast21, 67
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.73, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %11 = load i32, i32* %acount, align 4
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, 24
  %add = add i64 40, %mul
  store i64 %add, i64* %room_needed, align 8
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 6
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %13, i32 0, i32 3
  %14 = load i8*, i8** %limit, align 8
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 6
  %16 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff25, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %16, i32 0, i32 2
  %17 = load i8*, i8** %cur, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i64, i64* %room_needed, align 8
  %cmp26 = icmp ult i64 %sub.ptr.sub, %18
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.24
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff29 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 6
  call void @_cpp_extend_buff(%struct.cpp_reader* %19, %struct._cpp_buff** %a_buff29, i64 40)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.24
  %21 = load i32, i32* %acount, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff31 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 6
  %23 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff31, align 8
  %cur32 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %23, i32 0, i32 2
  %24 = load i8*, i8** %cur32, align 8
  %25 = bitcast i8* %24 to %struct.answer*
  %first = getelementptr inbounds %struct.answer, %struct.answer* %25, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.cpp_token], [1 x %struct.cpp_token]* %first, i32 0, i64 %idxprom
  store %struct.cpp_token* %arrayidx, %struct.cpp_token** %dest, align 8
  %26 = load %struct.cpp_token*, %struct.cpp_token** %dest, align 8
  %27 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %28 = bitcast %struct.cpp_token* %26 to i8*
  %29 = bitcast %struct.cpp_token* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 8, i1 false)
  %30 = load i32, i32* %acount, align 4
  %cmp33 = icmp eq i32 %30, 0
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.30
  %31 = load %struct.cpp_token*, %struct.cpp_token** %dest, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 0, i32 3
  %32 = load i8, i8* %flags, align 1
  %conv36 = zext i8 %32 to i32
  %and = and i32 %conv36, -2
  %conv37 = trunc i32 %and to i8
  store i8 %conv37, i8* %flags, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %33 = load i32, i32* %acount, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %acount, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.17
  %34 = load i32, i32* %acount, align 4
  %cmp39 = icmp eq i32 %34, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.end
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff43 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %36, i32 0, i32 6
  %37 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff43, align 8
  %cur44 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %37, i32 0, i32 2
  %38 = load i8*, i8** %cur44, align 8
  %39 = bitcast i8* %38 to %struct.answer*
  store %struct.answer* %39, %struct.answer** %answer, align 8
  %40 = load i32, i32* %acount, align 4
  %41 = load %struct.answer*, %struct.answer** %answer, align 8
  %count = getelementptr inbounds %struct.answer, %struct.answer* %41, i32 0, i32 1
  store i32 %40, i32* %count, align 4
  %42 = load %struct.answer*, %struct.answer** %answer, align 8
  %next = getelementptr inbounds %struct.answer, %struct.answer* %42, i32 0, i32 0
  store %struct.answer* null, %struct.answer** %next, align 8
  %43 = load %struct.answer*, %struct.answer** %answer, align 8
  %44 = load %struct.answer**, %struct.answer*** %answerp.addr, align 8
  store %struct.answer* %43, %struct.answer** %44, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.41, %if.then.23, %if.end.10, %if.then.9, %if.then.3
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare void @_cpp_extend_buff(%struct.cpp_reader*, %struct._cpp_buff**, i64) #1

declare i32 @_cpp_equiv_tokens(%struct.cpp_token*, %struct.cpp_token*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
