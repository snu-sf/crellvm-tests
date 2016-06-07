; ModuleID = 'c-lex.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.cpp_reader = type opaque
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i32, i32, %struct.cpp_reader*, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ht_identifier = type { i32, i8* }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.3, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon.1 = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.3 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8 }
%struct.file_stack = type { i8*, %struct.file_stack*, i32, i32 }
%struct.realvaluetype = type { [3 x i64] }
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i32, i8*, %struct.cpp_token*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)* }
%struct.cpp_token = type { i32, i16, i8, i8, %union.anon }
%union.anon = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon.0 }
%union.anon.0 = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.c_fileinfo = type { i32, i16, i16 }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.pf_args = type { i8*, i32, i32, i32, i32, %struct.realvaluetype, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.4, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.4 = type { i8* }
%struct.lang_type = type { i32, [1 x %union.tree_node*] }

@file_info_tree = internal global %struct.splay_tree_s* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"<top level>\00", align 1
@flag_detailed_statistics = external global i32, align 4
@header_time = internal global i32 0, align 4
@body_time = internal global i32 0, align 4
@parse_in = external global %struct.cpp_reader*, align 8
@debug_info_level = external global i32, align 4
@write_symbols = external global i32, align 4
@lineno = external global i32, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ident_hash = external global %struct.ht*, align 8
@debug_hooks = external global %struct.gcc_debug_hooks*, align 8
@input_filename = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"\0A******\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"header files (total)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"main file (total)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ratio = %g : 1\0A\00", align 1
@src_lineno = internal global i32 0, align 4
@indent_level = common global i32 0, align 4
@_sch_istable = external constant [256 x i16], align 16
@.str.7 = private unnamed_addr constant [22 x i8] c"stray '%c' in program\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"stray '\5C%o' in program\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"c-lex.c\00", align 1
@__FUNCTION__.c_lex = private unnamed_addr constant [6 x i8] c"c_lex\00", align 1
@pending_lang_change = common global i32 0, align 4
@c_header_level = common global i32 0, align 4
@flag_no_ident = external global i32, align 4
@asm_out_file = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"%s\22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@map = internal global %struct.line_map* null, align 8
@main_input_filename = external global i8*, align 8
@input_file_stack = external global %struct.file_stack*, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"badly nested C headers from preprocessor\00", align 1
@in_system_header = external global i32, align 4
@warn_unknown_pragmas = external global i32, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"ignoring #pragma %s %s\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.14 = private unnamed_addr constant [45 x i8] c"too many decimal points in floating constant\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"decimal point in exponent - impossible!\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"underscore in number\00", align 1
@_hex_value = external constant [256 x i8], align 16
@.str.17 = private unnamed_addr constant [32 x i8] c"numeric constant with no digits\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"numeric constant contains digits beyond the radix\00", align 1
@pedantic = external global i32, align 4
@flag_isoc99 = external global i32, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"floating constant may not be in radix 16\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"hexadecimal floating constant has no exponent\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"floating constant exponent has no digits\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"more than one 'f' suffix on floating constant\00", align 1
@warn_traditional = external global i32, align 4
@.str.23 = private unnamed_addr constant [37 x i8] c"traditional C rejects the 'f' suffix\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"more than one 'l' suffix on floating constant\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"traditional C rejects the 'l' suffix\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"more than one 'i' or 'j' suffix on floating constant\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"ISO C forbids imaginary numeric constants\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"invalid suffix on floating constant\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"floating constant out of range\00", align 1
@flag_traditional = external global i32, align 4
@dconst1 = external global %struct.realvaluetype, align 8
@dconstm1 = external global %struct.realvaluetype, align 8
@.str.30 = private unnamed_addr constant [48 x i8] c"floating point number exceeds range of 'double'\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"two 'u' suffixes on integer constant\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"traditional C rejects the 'u' suffix\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"three 'l' suffixes on integer constant\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"'lul' is not a valid integer suffix\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"'Ll' and 'lL' are not valid integer suffixes\00", align 1
@warn_long_long = external global i32, align 4
@.str.36 = private unnamed_addr constant [44 x i8] c"ISO C89 forbids long long integer constants\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"more than one 'i' or 'j' suffix on integer constant\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"invalid suffix on integer constant\00", align 1
@.str.39 = private unnamed_addr constant [92 x i8] c"integer constant is too large for this configuration of the compiler - truncated to %d bits\00", align 1
@integer_types = external global [11 x %union.tree_node*], align 16
@c_global_trees = external global [32 x %union.tree_node*], align 16
@.str.40 = private unnamed_addr constant [52 x i8] c"width of integer constant changes with -traditional\00", align 1
@.str.41 = private unnamed_addr constant [64 x i8] c"integer constant is unsigned in ISO C, signed with -traditional\00", align 1
@.str.42 = private unnamed_addr constant [72 x i8] c"width of integer constant may change on other systems with -traditional\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"integer constant larger than the maximum value of %s\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"an unsigned long long int\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"a long long int\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"an unsigned long int\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"decimal constant is so large that it is unsigned\00", align 1
@.str.48 = private unnamed_addr constant [55 x i8] c"complex integer constant is too wide for 'complex int'\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"integer constant is larger than the maximum value for its type\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"missing white space after number '%.*s'\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"both 'f' and 'l' suffixes on floating constant\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@flag_single_precision_constant = external global i32, align 4
@.str.55 = private unnamed_addr constant [44 x i8] c"floating point number exceeds range of '%s'\00", align 1
@ignore_escape_flag = internal global i32 0, align 4
@warn_multichar = external global i32, align 4
@c_language = external global i32, align 4

; Function Attrs: nounwind uwtable
define i8* @init_c_lex(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %cb = alloca %struct.cpp_callbacks*, align 8
  %toplevel = alloca %struct.c_fileinfo*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %call = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* bitcast (i32 (i8*, i8*)* @strcmp to i32 (i64, i64)*), void (i64)* null, void (i64)* bitcast (void (i8*)* @free to void (i64)*))
  store %struct.splay_tree_s* %call, %struct.splay_tree_s** @file_info_tree, align 8
  %call1 = call %struct.c_fileinfo* @get_fileinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store %struct.c_fileinfo* %call1, %struct.c_fileinfo** %toplevel, align 8
  %0 = load i32, i32* @flag_detailed_statistics, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @header_time, align 4
  %call2 = call i64 @get_run_time()
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* @body_time, align 4
  %1 = load i32, i32* @body_time, align 4
  %2 = load %struct.c_fileinfo*, %struct.c_fileinfo** %toplevel, align 8
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %2, i32 0, i32 0
  store i32 %1, i32* %time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %call3 = call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %3)
  store %struct.cpp_callbacks* %call3, %struct.cpp_callbacks** %cb, align 8
  %4 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb, align 8
  %line_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %4, i32 0, i32 0
  store void (%struct.cpp_reader*, %struct.cpp_token*, i32)* @cb_line_change, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8
  %5 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb, align 8
  %ident = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %5, i32 0, i32 5
  store void (%struct.cpp_reader*, i32, %struct.cpp_string*)* @cb_ident, void (%struct.cpp_reader*, i32, %struct.cpp_string*)** %ident, align 8
  %6 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb, align 8
  %file_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %6, i32 0, i32 1
  store void (%struct.cpp_reader*, %struct.line_map*)* @cb_file_change, void (%struct.cpp_reader*, %struct.line_map*)** %file_change, align 8
  %7 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb, align 8
  %def_pragma = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %7, i32 0, i32 6
  store void (%struct.cpp_reader*, i32)* @cb_def_pragma, void (%struct.cpp_reader*, i32)** %def_pragma, align 8
  %8 = load i32, i32* @debug_info_level, align 4
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* @write_symbols, align 4
  %cmp5 = icmp eq i32 %9, 3
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, i32* @write_symbols, align 4
  %cmp7 = icmp eq i32 %10, 4
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* @write_symbols, align 4
  %cmp10 = icmp eq i32 %11, 7
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %land.lhs.true
  %12 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb, align 8
  %define = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %12, i32 0, i32 3
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_define, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define, align 8
  %13 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %cb, align 8
  %undef = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %13, i32 0, i32 4
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_undef, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false.9, %if.end
  store i32 0, i32* @lineno, align 4
  %14 = load i8*, i8** %filename.addr, align 8
  %cmp14 = icmp eq i8* %14, null
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end.13
  %15 = load i8*, i8** %filename.addr, align 8
  %call17 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #7
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.end.13
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %filename.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false.16
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct.ht*, %struct.ht** @ident_hash, align 8
  %call21 = call i8* @cpp_read_main_file(%struct.cpp_reader* %16, i8* %17, %struct.ht* %18)
  ret i8* %call21
}

declare %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.c_fileinfo* @get_fileinfo(i8* %name) #0 {
entry:
  %retval = alloca %struct.c_fileinfo*, align 8
  %name.addr = alloca i8*, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  %fi = alloca %struct.c_fileinfo*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @file_info_tree, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %call = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %0, i64 %2)
  store %struct.splay_tree_node_s* %call, %struct.splay_tree_node_s** %n, align 8
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %4, i32 0, i32 1
  %5 = load i64, i64* %value, align 8
  %6 = inttoptr i64 %5 to %struct.c_fileinfo*
  store %struct.c_fileinfo* %6, %struct.c_fileinfo** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @xmalloc(i64 8)
  %7 = bitcast i8* %call1 to %struct.c_fileinfo*
  store %struct.c_fileinfo* %7, %struct.c_fileinfo** %fi, align 8
  %8 = load %struct.c_fileinfo*, %struct.c_fileinfo** %fi, align 8
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %8, i32 0, i32 0
  store i32 0, i32* %time, align 4
  %9 = load %struct.c_fileinfo*, %struct.c_fileinfo** %fi, align 8
  %interface_only = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %9, i32 0, i32 1
  store i16 0, i16* %interface_only, align 2
  %10 = load %struct.c_fileinfo*, %struct.c_fileinfo** %fi, align 8
  %interface_unknown = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %10, i32 0, i32 2
  store i16 1, i16* %interface_unknown, align 2
  %11 = load %struct.splay_tree_s*, %struct.splay_tree_s** @file_info_tree, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.c_fileinfo*, %struct.c_fileinfo** %fi, align 8
  %15 = ptrtoint %struct.c_fileinfo* %14 to i64
  %call2 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %11, i64 %13, i64 %15)
  %16 = load %struct.c_fileinfo*, %struct.c_fileinfo** %fi, align 8
  store %struct.c_fileinfo* %16, %struct.c_fileinfo** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct.c_fileinfo*, %struct.c_fileinfo** %retval
  ret %struct.c_fileinfo* %17
}

declare i64 @get_run_time() #1

declare %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader*) #1

; Function Attrs: nounwind uwtable
define internal void @cb_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %parsing_args) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %token.addr = alloca %struct.cpp_token*, align 8
  %parsing_args.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  store i32 %parsing_args, i32* %parsing_args.addr, align 4
  %0 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %line = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i32 0, i32 0
  %1 = load i32, i32* %line, align 4
  %2 = load %struct.line_map*, %struct.line_map** @map, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i32 0, i32 1
  %3 = load i32, i32* %to_line, align 4
  %add = add i32 %1, %3
  %4 = load %struct.line_map*, %struct.line_map** @map, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 2
  %5 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add, %5
  store i32 %sub, i32* @src_lineno, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cb_ident(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_string* %str) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %str.addr = alloca %struct.cpp_string*, align 8
  %value = alloca %union.tree_node*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store %struct.cpp_string* %str, %struct.cpp_string** %str.addr, align 8
  %0 = load i32, i32* @flag_no_ident, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.cpp_string*, %struct.cpp_string** %str.addr, align 8
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %1, i32 0, i32 1
  %2 = load i8*, i8** %text, align 8
  %3 = load %struct.cpp_string*, %struct.cpp_string** %str.addr, align 8
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %3, i32 0, i32 0
  %4 = load i32, i32* %len, align 4
  %call = call %union.tree_node* @lex_string(i8* %2, i32 %4, i32 0)
  store %union.tree_node* %call, %union.tree_node** %value, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  %string = bitcast %union.tree_node* %6 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %7 = load i8*, i8** %pointer, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cb_file_change(%struct.cpp_reader* %pfile, %struct.line_map* %new_map) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %new_map.addr = alloca %struct.line_map*, align 8
  %to_line = alloca i32, align 4
  %included_at = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.line_map* %new_map, %struct.line_map** %new_map.addr, align 8
  %0 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_line1 = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i32 0, i32 1
  %1 = load i32, i32* %to_line1, align 4
  %2 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_line2 = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i32 0, i32 1
  %3 = load i32, i32* %to_line2, align 4
  %add = add i32 %1, %3
  %4 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 2
  %5 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add, %5
  store i32 %sub, i32* %to_line, align 4
  %6 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %reason = getelementptr inbounds %struct.line_map, %struct.line_map* %6, i32 0, i32 4
  %bf.load = load i8, i8* %reason, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.else.22

if.then:                                          ; preds = %entry
  %7 = load %struct.line_map*, %struct.line_map** @map, align 8
  %cmp3 = icmp eq %struct.line_map* %7, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %8, i32 0, i32 0
  %9 = load i8*, i8** %to_file, align 8
  store i8* %9, i8** @main_input_filename, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.then
  %10 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %from_line5 = getelementptr inbounds %struct.line_map, %struct.line_map* %10, i32 0, i32 2
  %11 = load i32, i32* %from_line5, align 4
  %sub6 = sub i32 %11, 1
  %12 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %add.ptr = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 -1
  %to_line7 = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr, i32 0, i32 1
  %13 = load i32, i32* %to_line7, align 4
  %add8 = add i32 %sub6, %13
  %14 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %add.ptr9 = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 -1
  %from_line10 = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr9, i32 0, i32 2
  %15 = load i32, i32* %from_line10, align 4
  %sub11 = sub i32 %add8, %15
  store i32 %sub11, i32* %included_at, align 4
  %16 = load i32, i32* %included_at, align 4
  store i32 %16, i32* @lineno, align 4
  %17 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_file12 = getelementptr inbounds %struct.line_map, %struct.line_map* %17, i32 0, i32 0
  %18 = load i8*, i8** %to_file12, align 8
  call void @push_srcloc(i8* %18, i32 1)
  %19 = load i32, i32* @indent_level, align 4
  %20 = load %struct.file_stack*, %struct.file_stack** @input_file_stack, align 8
  %indent_level = getelementptr inbounds %struct.file_stack, %struct.file_stack* %20, i32 0, i32 3
  store i32 %19, i32* %indent_level, align 4
  %21 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %start_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %21, i32 0, i32 4
  %22 = load void (i32, i8*)*, void (i32, i8*)** %start_source_file, align 8
  %23 = load i32, i32* %included_at, align 4
  %24 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_file13 = getelementptr inbounds %struct.line_map, %struct.line_map* %24, i32 0, i32 0
  %25 = load i8*, i8** %to_file13, align 8
  call void %22(i32 %23, i8* %25)
  %26 = load i32, i32* @c_header_level, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  %27 = load i32, i32* @c_header_level, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* @c_header_level, align 4
  br label %if.end.20

if.else.15:                                       ; preds = %if.else
  %28 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %28, i32 0, i32 5
  %29 = load i8, i8* %sysp, align 1
  %conv = zext i8 %29 to i32
  %cmp16 = icmp eq i32 %conv, 2
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else.15
  store i32 1, i32* @c_header_level, align 4
  %30 = load i32, i32* @pending_lang_change, align 4
  %inc19 = add nsw i32 %30, 1
  store i32 %inc19, i32* @pending_lang_change, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.4
  br label %if.end.42

if.else.22:                                       ; preds = %entry
  %31 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %reason23 = getelementptr inbounds %struct.line_map, %struct.line_map* %31, i32 0, i32 4
  %bf.load24 = load i8, i8* %reason23, align 4
  %bf.cast25 = zext i8 %bf.load24 to i32
  %cmp26 = icmp eq i32 %bf.cast25, 1
  br i1 %cmp26, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.else.22
  %32 = load i32, i32* @c_header_level, align 4
  %tobool29 = icmp ne i32 %32, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.then.28
  %33 = load i32, i32* @c_header_level, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* @c_header_level, align 4
  %cmp30 = icmp eq i32 %dec, 0
  br i1 %cmp30, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %land.lhs.true
  %34 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %sysp33 = getelementptr inbounds %struct.line_map, %struct.line_map* %34, i32 0, i32 5
  %35 = load i8, i8* %sysp33, align 1
  %conv34 = zext i8 %35 to i32
  %cmp35 = icmp eq i32 %conv34, 2
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.32
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.32
  %36 = load i32, i32* @pending_lang_change, align 4
  %dec39 = add nsw i32 %36, -1
  store i32 %dec39, i32* @pending_lang_change, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.38, %land.lhs.true, %if.then.28
  call void @pop_srcloc()
  %37 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %end_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %37, i32 0, i32 5
  %38 = load void (i32)*, void (i32)** %end_source_file, align 8
  %39 = load i32, i32* %to_line, align 4
  call void %38(i32 %39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.else.22
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.21
  %40 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_file43 = getelementptr inbounds %struct.line_map, %struct.line_map* %40, i32 0, i32 0
  %41 = load i8*, i8** %to_file43, align 8
  call void @update_header_times(i8* %41)
  %42 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %sysp44 = getelementptr inbounds %struct.line_map, %struct.line_map* %42, i32 0, i32 5
  %43 = load i8, i8* %sysp44, align 1
  %conv45 = zext i8 %43 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  %conv47 = zext i1 %cmp46 to i32
  store i32 %conv47, i32* @in_system_header, align 4
  %44 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  %to_file48 = getelementptr inbounds %struct.line_map, %struct.line_map* %44, i32 0, i32 0
  %45 = load i8*, i8** %to_file48, align 8
  store i8* %45, i8** @input_filename, align 8
  %46 = load i32, i32* %to_line, align 4
  store i32 %46, i32* @lineno, align 4
  %47 = load %struct.line_map*, %struct.line_map** %new_map.addr, align 8
  store %struct.line_map* %47, %struct.line_map** @map, align 8
  call void @extract_interface_info()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cb_def_pragma(%struct.cpp_reader* %pfile, i32 %line) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %space = alloca i8*, align 8
  %name = alloca i8*, align 8
  %s = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i32, i32* @warn_unknown_pragmas, align 4
  %1 = load i32, i32* @in_system_header, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %name, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %space, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %2)
  store %struct.cpp_token* %call, %struct.cpp_token** %s, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %s, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp1 = icmp ne i32 %bf.cast, 67
  br i1 %cmp1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %5 = load %struct.cpp_token*, %struct.cpp_token** %s, align 8
  %call3 = call i8* @cpp_token_as_text(%struct.cpp_reader* %4, %struct.cpp_token* %5)
  store i8* %call3, i8** %space, align 8
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call4 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %6)
  store %struct.cpp_token* %call4, %struct.cpp_token** %s, align 8
  %7 = load %struct.cpp_token*, %struct.cpp_token** %s, align 8
  %type5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 2
  %bf.load6 = load i8, i8* %type5, align 2
  %bf.cast7 = zext i8 %bf.load6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 56
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.2
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load %struct.cpp_token*, %struct.cpp_token** %s, align 8
  %call10 = call i8* @cpp_token_as_text(%struct.cpp_reader* %8, %struct.cpp_token* %9)
  store i8* %call10, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.2
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %10 = load i32, i32* %line.addr, align 4
  %11 = load %struct.line_map*, %struct.line_map** @map, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %11, i32 0, i32 1
  %12 = load i32, i32* %to_line, align 4
  %add = add i32 %10, %12
  %13 = load %struct.line_map*, %struct.line_map** @map, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %13, i32 0, i32 2
  %14 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add, %14
  store i32 %sub, i32* @lineno, align 4
  %15 = load i8*, i8** %space, align 8
  %16 = load i8*, i8** %name, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i8* %15, i8* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cb_define(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_hashnode* %node) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  %0 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %define = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %0, i32 0, i32 2
  %1 = load void (i32, i8*)*, void (i32, i8*)** %define, align 8
  %2 = load i32, i32* %line.addr, align 4
  %3 = load %struct.line_map*, %struct.line_map** @map, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %3, i32 0, i32 1
  %4 = load i32, i32* %to_line, align 4
  %add = add i32 %2, %4
  %5 = load %struct.line_map*, %struct.line_map** @map, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %5, i32 0, i32 2
  %6 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add, %6
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %call = call i8* @cpp_macro_definition(%struct.cpp_reader* %7, %struct.cpp_hashnode* %8)
  call void %1(i32 %sub, i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cb_undef(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_hashnode* %node) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  %0 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %undef = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %0, i32 0, i32 3
  %1 = load void (i32, i8*)*, void (i32, i8*)** %undef, align 8
  %2 = load i32, i32* %line.addr, align 4
  %3 = load %struct.line_map*, %struct.line_map** @map, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %3, i32 0, i32 1
  %4 = load i32, i32* %to_line, align 4
  %add = add i32 %2, %4
  %5 = load %struct.line_map*, %struct.line_map** @map, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %5, i32 0, i32 2
  %6 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add, %6
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %8 = load i8*, i8** %str, align 8
  call void %1(i32 %sub, i8* %8)
  ret void
}

declare i8* @cpp_read_main_file(%struct.cpp_reader*, i8*, %struct.ht*) #1

; Function Attrs: nounwind uwtable
define i32 @yyparse() #0 {
entry:
  %0 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %start_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %0, i32 0, i32 4
  %1 = load void (i32, i8*)*, void (i32, i8*)** %start_source_file, align 8
  %2 = load i32, i32* @lineno, align 4
  %3 = load i8*, i8** @input_filename, align 8
  call void %1(i32 %2, i8* %3)
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  call void @cpp_finish_options(%struct.cpp_reader* %4)
  %call = call i32 @yyparse_1()
  ret i32 %call
}

declare void @cpp_finish_options(%struct.cpp_reader*) #1

declare i32 @yyparse_1() #1

declare %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) #1

declare noalias i8* @xmalloc(i64) #1

declare %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @dump_time_statistics() #0 {
entry:
  %file = alloca %struct.c_fileinfo*, align 8
  %this_time = alloca i32, align 4
  %0 = load i8*, i8** @input_filename, align 8
  %call = call %struct.c_fileinfo* @get_fileinfo(i8* %0)
  store %struct.c_fileinfo* %call, %struct.c_fileinfo** %file, align 8
  %call1 = call i64 @get_run_time()
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %this_time, align 4
  %1 = load i32, i32* %this_time, align 4
  %2 = load i32, i32* @body_time, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load %struct.c_fileinfo*, %struct.c_fileinfo** %file, align 8
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %3, i32 0, i32 0
  %4 = load i32, i32* %time, align 4
  %add = add nsw i32 %4, %sub
  store i32 %add, i32* %time, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %6 = load i32, i32* @header_time, align 4
  %conv3 = sext i32 %6 to i64
  call void @print_time(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i64 %conv3)
  %7 = load i32, i32* %this_time, align 4
  %8 = load i32, i32* @body_time, align 4
  %sub4 = sub nsw i32 %7, %8
  %conv5 = sext i32 %sub4 to i64
  call void @print_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i64 %conv5)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i32, i32* @header_time, align 4
  %conv6 = sitofp i32 %10 to double
  %11 = load i32, i32* %this_time, align 4
  %12 = load i32, i32* @body_time, align 4
  %sub7 = sub nsw i32 %11, %12
  %conv8 = sitofp i32 %sub7 to double
  %div = fdiv double %conv6, %conv8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), double %div)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  %14 = load %struct.splay_tree_s*, %struct.splay_tree_s** @file_info_tree, align 8
  %call11 = call i32 @splay_tree_foreach(%struct.splay_tree_s* %14, i32 (%struct.splay_tree_node_s*, i8*)* @dump_one_header, i8* null)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @print_time(i8*, i64) #1

declare i32 @splay_tree_foreach(%struct.splay_tree_s*, i32 (%struct.splay_tree_node_s*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dump_one_header(%struct.splay_tree_node_s* %n, i8* %dummy) #0 {
entry:
  %n.addr = alloca %struct.splay_tree_node_s*, align 8
  %dummy.addr = alloca i8*, align 8
  store %struct.splay_tree_node_s* %n, %struct.splay_tree_node_s** %n.addr, align 8
  store i8* %dummy, i8** %dummy.addr, align 8
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n.addr, align 8
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i32 0, i32 0
  %1 = load i64, i64* %key, align 8
  %2 = inttoptr i64 %1 to i8*
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n.addr, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i32 0, i32 1
  %4 = load i64, i64* %value, align 8
  %5 = inttoptr i64 %4 to %struct.c_fileinfo*
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %5, i32 0, i32 0
  %6 = load i32, i32* %time, align 4
  %conv = sext i32 %6 to i64
  call void @print_time(i8* %2, i64 %conv)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @c_lex(%union.tree_node** %value) #0 {
entry:
  %value.addr = alloca %union.tree_node**, align 8
  %tok = alloca %struct.cpp_token*, align 8
  store %union.tree_node** %value, %union.tree_node*** %value.addr, align 8
  br label %retry

retry:                                            ; preds = %if.end, %entry
  call void @timevar_push(i32 7)
  br label %do.body

do.body:                                          ; preds = %do.cond, %retry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %tok, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 66
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @timevar_pop(i32 7)
  %2 = load i32, i32* @src_lineno, align 4
  store i32 %2, i32* @lineno, align 4
  %3 = load %union.tree_node**, %union.tree_node*** %value.addr, align 8
  store %union.tree_node* null, %union.tree_node** %3, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load2 = load i8, i8* %type1, align 2
  %bf.cast3 = zext i8 %bf.load2 to i32
  switch i32 %bf.cast3, label %sw.default [
    i32 44, label %sw.bb
    i32 45, label %sw.bb.4
    i32 60, label %sw.bb.5
    i32 56, label %sw.bb.14
    i32 57, label %sw.bb.16
    i32 58, label %sw.bb.21
    i32 59, label %sw.bb.21
    i32 61, label %sw.bb.23
    i32 62, label %sw.bb.23
    i32 63, label %sw.bb.36
    i32 64, label %sw.bb.36
    i32 65, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %do.end
  %5 = load i32, i32* @indent_level, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @indent_level, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %do.end
  %6 = load i32, i32* @indent_level, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @indent_level, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %do.end
  %7 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 4
  %c = bitcast %union.anon* %val to i8*
  %8 = load i8, i8* %c, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %9 to i32
  %and7 = and i32 %conv6, 172
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %10 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 4
  %c9 = bitcast %union.anon* %val8 to i8*
  %11 = load i8, i8* %c9, align 1
  %conv10 = zext i8 %11 to i32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %conv10)
  br label %if.end

if.else:                                          ; preds = %sw.bb.5
  %12 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val11 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 4
  %c12 = bitcast %union.anon* %val11 to i8*
  %13 = load i8, i8* %c12, align 1
  %conv13 = zext i8 %13 to i32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 %conv13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %retry

sw.bb.14:                                         ; preds = %do.end
  %14 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val15 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 4
  %node = bitcast %union.anon* %val15 to %struct.cpp_hashnode**
  %15 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %16 = bitcast %struct.cpp_hashnode* %15 to %struct.ht_identifier*
  %17 = bitcast %struct.ht_identifier* %16 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 -24
  %18 = bitcast i8* %add.ptr to %union.tree_node*
  %19 = load %union.tree_node**, %union.tree_node*** %value.addr, align 8
  store %union.tree_node* %18, %union.tree_node** %19, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  %20 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val17 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %20, i32 0, i32 4
  %str = bitcast %union.anon* %val17 to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  %21 = load i8*, i8** %text, align 8
  %22 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val18 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %22, i32 0, i32 4
  %str19 = bitcast %union.anon* %val18 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str19, i32 0, i32 0
  %23 = load i32, i32* %len, align 4
  %call20 = call %union.tree_node* @lex_number(i8* %21, i32 %23)
  %24 = load %union.tree_node**, %union.tree_node*** %value.addr, align 8
  store %union.tree_node* %call20, %union.tree_node** %24, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %do.end, %do.end
  %25 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %call22 = call %union.tree_node* @lex_charconst(%struct.cpp_token* %25)
  %26 = load %union.tree_node**, %union.tree_node*** %value.addr, align 8
  store %union.tree_node* %call22, %union.tree_node** %26, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %do.end, %do.end
  %27 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val24 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %27, i32 0, i32 4
  %str25 = bitcast %union.anon* %val24 to %struct.cpp_string*
  %text26 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str25, i32 0, i32 1
  %28 = load i8*, i8** %text26, align 8
  %29 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %val27 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %29, i32 0, i32 4
  %str28 = bitcast %union.anon* %val27 to %struct.cpp_string*
  %len29 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str28, i32 0, i32 0
  %30 = load i32, i32* %len29, align 4
  %31 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %type30 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 0, i32 2
  %bf.load31 = load i8, i8* %type30, align 2
  %bf.cast32 = zext i8 %bf.load31 to i32
  %cmp33 = icmp eq i32 %bf.cast32, 62
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call %union.tree_node* @lex_string(i8* %28, i32 %30, i32 %conv34)
  %32 = load %union.tree_node**, %union.tree_node*** %value.addr, align 8
  store %union.tree_node* %call35, %union.tree_node** %32, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %do.end, %do.end, %do.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 822, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__FUNCTION__.c_lex, i32 0, i32 0)) #8
  unreachable

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb.21, %sw.bb.16, %sw.bb.14, %sw.bb.4, %sw.bb
  %33 = load %struct.cpp_token*, %struct.cpp_token** %tok, align 8
  %type37 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %33, i32 0, i32 2
  %bf.load38 = load i8, i8* %type37, align 2
  %bf.cast39 = zext i8 %bf.load38 to i32
  ret i32 %bf.cast39
}

declare void @timevar_push(i32) #1

declare %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) #1

declare void @timevar_pop(i32) #1

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @lex_number(i8* %str, i32 %len) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %base = alloca i32, align 4
  %count = alloca i32, align 4
  %largest_digit = alloca i32, align 4
  %numdigits = alloca i32, align 4
  %overflow = alloca i32, align 4
  %c = alloca i32, align 4
  %value = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  %floatflag = alloca i32, align 4
  %parts = alloca [16 x i32], align 16
  %n = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %imag = alloca i32, align 4
  %fflag = alloca i32, align 4
  %lflag = alloca i32, align 4
  %conversion_errno = alloca i32, align 4
  %real = alloca %struct.realvaluetype, align 8
  %args = alloca %struct.pf_args, align 8
  %copy = alloca i8*, align 8
  %trad_type = alloca %union.tree_node*, align 8
  %ansi_type = alloca %union.tree_node*, align 8
  %type369 = alloca %union.tree_node*, align 8
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  %spec_unsigned = alloca i32, align 4
  %spec_long = alloca i32, align 4
  %spec_long_long = alloca i32, align 4
  %spec_imag = alloca i32, align 4
  %suffix_lu = alloca i32, align 4
  %warn = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 10, i32* %base, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %largest_digit, align 4
  store i32 0, i32* %numdigits, align 4
  store i32 0, i32* %overflow, align 4
  store i32 0, i32* %floatflag, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %3, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 49
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  store %union.tree_node* %6, %union.tree_node** %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv9 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv9, 48
  %conv10 = sext i32 %sub to i64
  %call = call %union.tree_node* @build_int_2_wide(i64 %conv10, i64 0)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %count, align 4
  %cmp11 = icmp slt i32 %9, 16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %count, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %str.addr, align 8
  store i8* %12, i8** %p, align 8
  %13 = load i32, i32* %len.addr, align 4
  %cmp13 = icmp ugt i32 %13, 2
  br i1 %cmp13, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %for.end
  %14 = load i8*, i8** %str.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 48
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.29

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp eq i32 %conv21, 120
  br i1 %cmp22, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %18 = load i8*, i8** %str.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %19 to i32
  %cmp26 = icmp eq i32 %conv25, 88
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true.19
  store i32 16, i32* %base, align 4
  %20 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.44

if.else.29:                                       ; preds = %lor.lhs.false, %land.lhs.true, %for.end
  %21 = load i8*, i8** %str.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %22 to i32
  %cmp32 = icmp eq i32 %conv31, 48
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.43

land.lhs.true.34:                                 ; preds = %if.else.29
  %23 = load i8*, i8** %str.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %24 to i32
  %and = and i32 %conv36, 255
  %idxprom37 = sext i32 %and to i64
  %arrayidx38 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom37
  %25 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %25 to i32
  %and40 = and i32 %conv39, 4
  %tobool = icmp ne i32 %and40, 0
  br i1 %tobool, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %land.lhs.true.34
  store i32 8, i32* %base, align 4
  %26 = load i8*, i8** %str.addr, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %add.ptr42, i8** %p, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %land.lhs.true.34, %if.else.29
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.28
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.44
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv45 = sext i8 %28 to i32
  store i32 %conv45, i32* %c, align 4
  %29 = load i32, i32* %c, align 4
  %cmp46 = icmp eq i32 %29, 46
  br i1 %cmp46, label %if.then.48, label %if.else.66

if.then.48:                                       ; preds = %do.body
  %30 = load i32, i32* %floatflag, align 4
  %cmp49 = icmp eq i32 %30, 1
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.then.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0))
  br label %syntax_error

do.end:                                           ; No predecessors!
  br label %if.end.61

if.else.53:                                       ; preds = %if.then.48
  %31 = load i32, i32* %floatflag, align 4
  %cmp54 = icmp eq i32 %31, 2
  br i1 %cmp54, label %if.then.56, label %if.else.59

if.then.56:                                       ; preds = %if.else.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0))
  br label %syntax_error

do.end.58:                                        ; No predecessors!
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.53
  store i32 1, i32* %floatflag, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %do.end.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %do.end
  %32 = load i32, i32* %base, align 4
  %cmp62 = icmp eq i32 %32, 8
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  store i32 10, i32* %base, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.61
  br label %if.end.154

if.else.66:                                       ; preds = %do.body
  %33 = load i32, i32* %c, align 4
  %cmp67 = icmp eq i32 %33, 95
  br i1 %cmp67, label %if.then.69, label %if.else.72

if.then.69:                                       ; preds = %if.else.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0))
  br label %syntax_error

do.end.71:                                        ; No predecessors!
  br label %if.end.153

if.else.72:                                       ; preds = %if.else.66
  %34 = load i32, i32* %c, align 4
  %and73 = and i32 %34, 255
  %idxprom74 = sext i32 %and73 to i64
  %arrayidx75 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom74
  %35 = load i16, i16* %arrayidx75, align 2
  %conv76 = zext i16 %35 to i32
  %and77 = and i32 %conv76, 4
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.89, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.else.72
  %36 = load i32, i32* %base, align 4
  %cmp80 = icmp eq i32 %36, 16
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.94

land.lhs.true.82:                                 ; preds = %lor.lhs.false.79
  %37 = load i32, i32* %c, align 4
  %and83 = and i32 %37, 255
  %idxprom84 = sext i32 %and83 to i64
  %arrayidx85 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom84
  %38 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %38 to i32
  %and87 = and i32 %conv86, 256
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %land.lhs.true.82, %if.else.72
  %39 = load i32, i32* %c, align 4
  %conv90 = trunc i32 %39 to i8
  %idxprom91 = zext i8 %conv90 to i64
  %arrayidx92 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i32 0, i64 %idxprom91
  %40 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %40 to i32
  store i32 %conv93, i32* %n, align 4
  br label %if.end.116

if.else.94:                                       ; preds = %land.lhs.true.82, %lor.lhs.false.79
  %41 = load i32, i32* %base, align 4
  %cmp95 = icmp sle i32 %41, 10
  br i1 %cmp95, label %land.lhs.true.97, label %if.else.104

land.lhs.true.97:                                 ; preds = %if.else.94
  %42 = load i32, i32* %c, align 4
  %cmp98 = icmp eq i32 %42, 101
  br i1 %cmp98, label %if.then.103, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.97
  %43 = load i32, i32* %c, align 4
  %cmp101 = icmp eq i32 %43, 69
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %lor.lhs.false.100, %land.lhs.true.97
  store i32 10, i32* %base, align 4
  store i32 2, i32* %floatflag, align 4
  br label %do.end.158

if.else.104:                                      ; preds = %lor.lhs.false.100, %if.else.94
  %44 = load i32, i32* %base, align 4
  %cmp105 = icmp eq i32 %44, 16
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.114

land.lhs.true.107:                                ; preds = %if.else.104
  %45 = load i32, i32* %c, align 4
  %cmp108 = icmp eq i32 %45, 112
  br i1 %cmp108, label %if.then.113, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.107
  %46 = load i32, i32* %c, align 4
  %cmp111 = icmp eq i32 %46, 80
  br i1 %cmp111, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %lor.lhs.false.110, %land.lhs.true.107
  store i32 2, i32* %floatflag, align 4
  br label %do.end.158

if.else.114:                                      ; preds = %lor.lhs.false.110, %if.else.104
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %incdec.ptr115, i8** %p, align 8
  br label %do.end.158

if.end.116:                                       ; preds = %if.then.89
  %48 = load i32, i32* %n, align 4
  %49 = load i32, i32* %largest_digit, align 4
  %cmp117 = icmp sge i32 %48, %49
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  %50 = load i32, i32* %n, align 4
  store i32 %50, i32* %largest_digit, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.116
  %51 = load i32, i32* %numdigits, align 4
  %inc121 = add nsw i32 %51, 1
  store i32 %inc121, i32* %numdigits, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.143, %if.end.120
  %52 = load i32, i32* %count, align 4
  %cmp123 = icmp slt i32 %52, 16
  br i1 %cmp123, label %for.body.125, label %for.end.145

for.body.125:                                     ; preds = %for.cond.122
  %53 = load i32, i32* %base, align 4
  %54 = load i32, i32* %count, align 4
  %idxprom126 = sext i32 %54 to i64
  %arrayidx127 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom126
  %55 = load i32, i32* %arrayidx127, align 4
  %mul = mul i32 %55, %53
  store i32 %mul, i32* %arrayidx127, align 4
  %56 = load i32, i32* %count, align 4
  %tobool128 = icmp ne i32 %56, 0
  br i1 %tobool128, label %if.then.129, label %if.else.139

if.then.129:                                      ; preds = %for.body.125
  %57 = load i32, i32* %count, align 4
  %sub130 = sub nsw i32 %57, 1
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom131
  %58 = load i32, i32* %arrayidx132, align 4
  %shr = lshr i32 %58, 8
  %59 = load i32, i32* %count, align 4
  %idxprom133 = sext i32 %59 to i64
  %arrayidx134 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom133
  %60 = load i32, i32* %arrayidx134, align 4
  %add = add i32 %60, %shr
  store i32 %add, i32* %arrayidx134, align 4
  %61 = load i32, i32* %count, align 4
  %sub135 = sub nsw i32 %61, 1
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom136
  %62 = load i32, i32* %arrayidx137, align 4
  %and138 = and i32 %62, 255
  store i32 %and138, i32* %arrayidx137, align 4
  br label %if.end.142

if.else.139:                                      ; preds = %for.body.125
  %63 = load i32, i32* %n, align 4
  %arrayidx140 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 0
  %64 = load i32, i32* %arrayidx140, align 4
  %add141 = add i32 %64, %63
  store i32 %add141, i32* %arrayidx140, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.129
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %65 = load i32, i32* %count, align 4
  %inc144 = add nsw i32 %65, 1
  store i32 %inc144, i32* %count, align 4
  br label %for.cond.122

for.end.145:                                      ; preds = %for.cond.122
  %arrayidx146 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 15
  %66 = load i32, i32* %arrayidx146, align 4
  %shr147 = lshr i32 %66, 8
  %tobool148 = icmp ne i32 %shr147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %for.end.145
  store i32 1, i32* %overflow, align 4
  %arrayidx150 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 15
  %67 = load i32, i32* %arrayidx150, align 4
  %and151 = and i32 %67, 255
  store i32 %and151, i32* %arrayidx150, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %for.end.145
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %do.end.71
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.65
  br label %do.cond

do.cond:                                          ; preds = %if.end.154
  %68 = load i8*, i8** %p, align 8
  %69 = load i8*, i8** %str.addr, align 8
  %70 = load i32, i32* %len.addr, align 4
  %idx.ext = zext i32 %70 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %69, i64 %idx.ext
  %cmp156 = icmp ult i8* %68, %add.ptr155
  br i1 %cmp156, label %do.body, label %do.end.158

do.end.158:                                       ; preds = %do.cond, %if.else.114, %if.then.113, %if.then.103
  %71 = load i32, i32* %numdigits, align 4
  %cmp159 = icmp eq i32 %71, 0
  br i1 %cmp159, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %do.end.158
  br label %do.body.162

do.body.162:                                      ; preds = %if.then.161
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0))
  br label %syntax_error

do.end.164:                                       ; No predecessors!
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.end.158
  %72 = load i32, i32* %largest_digit, align 4
  %73 = load i32, i32* %base, align 4
  %cmp166 = icmp sge i32 %72, %73
  br i1 %cmp166, label %if.then.168, label %if.end.172

if.then.168:                                      ; preds = %if.end.165
  br label %do.body.169

do.body.169:                                      ; preds = %if.then.168
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0))
  br label %syntax_error

do.end.171:                                       ; No predecessors!
  br label %if.end.172

if.end.172:                                       ; preds = %do.end.171, %if.end.165
  %74 = load i32, i32* %floatflag, align 4
  %cmp173 = icmp ne i32 %74, 0
  br i1 %cmp173, label %if.then.175, label %if.else.368

if.then.175:                                      ; preds = %if.end.172
  %75 = load i32, i32* %base, align 4
  %cmp176 = icmp eq i32 %75, 16
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.183

land.lhs.true.178:                                ; preds = %if.then.175
  %76 = load i32, i32* @pedantic, align 4
  %tobool179 = icmp ne i32 %76, 0
  br i1 %tobool179, label %land.lhs.true.180, label %if.end.183

land.lhs.true.180:                                ; preds = %land.lhs.true.178
  %77 = load i32, i32* @flag_isoc99, align 4
  %tobool181 = icmp ne i32 %77, 0
  br i1 %tobool181, label %if.end.183, label %if.then.182

if.then.182:                                      ; preds = %land.lhs.true.180
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %land.lhs.true.180, %land.lhs.true.178, %if.then.175
  %78 = load i32, i32* %base, align 4
  %cmp184 = icmp eq i32 %78, 16
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.193

land.lhs.true.186:                                ; preds = %if.end.183
  %79 = load i32, i32* %floatflag, align 4
  %cmp187 = icmp ne i32 %79, 2
  br i1 %cmp187, label %if.then.189, label %if.end.193

if.then.189:                                      ; preds = %land.lhs.true.186
  br label %do.body.190

do.body.190:                                      ; preds = %if.then.189
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0))
  br label %syntax_error

do.end.192:                                       ; No predecessors!
  br label %if.end.193

if.end.193:                                       ; preds = %do.end.192, %land.lhs.true.186, %if.end.183
  %80 = load i32, i32* %base, align 4
  %cmp194 = icmp eq i32 %80, 10
  br i1 %cmp194, label %land.lhs.true.196, label %lor.lhs.false.202

land.lhs.true.196:                                ; preds = %if.end.193
  %81 = load i32, i32* %c, align 4
  %cmp197 = icmp eq i32 %81, 101
  br i1 %cmp197, label %if.then.211, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %land.lhs.true.196
  %82 = load i32, i32* %c, align 4
  %cmp200 = icmp eq i32 %82, 69
  br i1 %cmp200, label %if.then.211, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %lor.lhs.false.199, %if.end.193
  %83 = load i32, i32* %base, align 4
  %cmp203 = icmp eq i32 %83, 16
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.266

land.lhs.true.205:                                ; preds = %lor.lhs.false.202
  %84 = load i32, i32* %c, align 4
  %cmp206 = icmp eq i32 %84, 112
  br i1 %cmp206, label %if.then.211, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %land.lhs.true.205
  %85 = load i32, i32* %c, align 4
  %cmp209 = icmp eq i32 %85, 80
  br i1 %cmp209, label %if.then.211, label %if.end.266

if.then.211:                                      ; preds = %lor.lhs.false.208, %land.lhs.true.205, %lor.lhs.false.199, %land.lhs.true.196
  %86 = load i8*, i8** %p, align 8
  %87 = load i8*, i8** %str.addr, align 8
  %88 = load i32, i32* %len.addr, align 4
  %idx.ext212 = zext i32 %88 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %87, i64 %idx.ext212
  %cmp214 = icmp ult i8* %86, %add.ptr213
  br i1 %cmp214, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %if.then.211
  %89 = load i8*, i8** %p, align 8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr217, i8** %p, align 8
  %90 = load i8, i8* %89, align 1
  %conv218 = sext i8 %90 to i32
  store i32 %conv218, i32* %c, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %if.then.211
  %91 = load i8*, i8** %p, align 8
  %92 = load i8*, i8** %str.addr, align 8
  %93 = load i32, i32* %len.addr, align 4
  %idx.ext220 = zext i32 %93 to i64
  %add.ptr221 = getelementptr inbounds i8, i8* %92, i64 %idx.ext220
  %cmp222 = icmp ult i8* %91, %add.ptr221
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.233

land.lhs.true.224:                                ; preds = %if.end.219
  %94 = load i32, i32* %c, align 4
  %cmp225 = icmp eq i32 %94, 43
  br i1 %cmp225, label %if.then.230, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %land.lhs.true.224
  %95 = load i32, i32* %c, align 4
  %cmp228 = icmp eq i32 %95, 45
  br i1 %cmp228, label %if.then.230, label %if.end.233

if.then.230:                                      ; preds = %lor.lhs.false.227, %land.lhs.true.224
  %96 = load i8*, i8** %p, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr231, i8** %p, align 8
  %97 = load i8, i8* %96, align 1
  %conv232 = sext i8 %97 to i32
  store i32 %conv232, i32* %c, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.230, %lor.lhs.false.227, %if.end.219
  %98 = load i32, i32* %c, align 4
  %and234 = and i32 %98, 255
  %idxprom235 = sext i32 %and234 to i64
  %arrayidx236 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom235
  %99 = load i16, i16* %arrayidx236, align 2
  %conv237 = zext i16 %99 to i32
  %and238 = and i32 %conv237, 4
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.end.244, label %if.then.240

if.then.240:                                      ; preds = %if.end.233
  br label %do.body.241

do.body.241:                                      ; preds = %if.then.240
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0))
  br label %syntax_error

do.end.243:                                       ; No predecessors!
  br label %if.end.244

if.end.244:                                       ; preds = %do.end.243, %if.end.233
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.244
  %100 = load i8*, i8** %p, align 8
  %101 = load i8*, i8** %str.addr, align 8
  %102 = load i32, i32* %len.addr, align 4
  %idx.ext245 = zext i32 %102 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %101, i64 %idx.ext245
  %cmp247 = icmp ult i8* %100, %add.ptr246
  br i1 %cmp247, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %103 = load i32, i32* %c, align 4
  %and249 = and i32 %103, 255
  %idxprom250 = sext i32 %and249 to i64
  %arrayidx251 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom250
  %104 = load i16, i16* %arrayidx251, align 2
  %conv252 = zext i16 %104 to i32
  %and253 = and i32 %conv252, 4
  %tobool254 = icmp ne i32 %and253, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %105 = phi i1 [ false, %while.cond ], [ %tobool254, %land.rhs ]
  br i1 %105, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %106 = load i8*, i8** %p, align 8
  %incdec.ptr255 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr255, i8** %p, align 8
  %107 = load i8, i8* %106, align 1
  %conv256 = sext i8 %107 to i32
  store i32 %conv256, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %108 = load i32, i32* %c, align 4
  %and257 = and i32 %108, 255
  %idxprom258 = sext i32 %and257 to i64
  %arrayidx259 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom258
  %109 = load i16, i16* %arrayidx259, align 2
  %conv260 = zext i16 %109 to i32
  %and261 = and i32 %conv260, 4
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %if.end.265, label %if.then.263

if.then.263:                                      ; preds = %while.end
  %110 = load i8*, i8** %p, align 8
  %incdec.ptr264 = getelementptr inbounds i8, i8* %110, i32 -1
  store i8* %incdec.ptr264, i8** %p, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %while.end
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %lor.lhs.false.208, %lor.lhs.false.202
  %111 = load i8*, i8** %p, align 8
  %112 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %111 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %112 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add267 = add nsw i64 %sub.ptr.sub, 1
  %113 = alloca i8, i64 %add267
  store i8* %113, i8** %copy, align 8
  %114 = load i8*, i8** %copy, align 8
  %115 = load i8*, i8** %str.addr, align 8
  %116 = load i8*, i8** %p, align 8
  %117 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast268 = ptrtoint i8* %116 to i64
  %sub.ptr.rhs.cast269 = ptrtoint i8* %117 to i64
  %sub.ptr.sub270 = sub i64 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 %sub.ptr.sub270, i32 1, i1 false)
  %118 = load i8*, i8** %p, align 8
  %119 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast271 = ptrtoint i8* %118 to i64
  %sub.ptr.rhs.cast272 = ptrtoint i8* %119 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %120 = load i8*, i8** %copy, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %120, i64 %sub.ptr.sub273
  store i8 0, i8* %arrayidx274, align 1
  store i32 0, i32* %imag, align 4
  store i32 0, i32* %lflag, align 4
  store i32 0, i32* %fflag, align 4
  br label %while.cond.275

while.cond.275:                                   ; preds = %sw.epilog, %if.end.266
  %121 = load i8*, i8** %p, align 8
  %122 = load i8*, i8** %str.addr, align 8
  %123 = load i32, i32* %len.addr, align 4
  %idx.ext276 = zext i32 %123 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %122, i64 %idx.ext276
  %cmp278 = icmp ult i8* %121, %add.ptr277
  br i1 %cmp278, label %while.body.280, label %while.end.328

while.body.280:                                   ; preds = %while.cond.275
  %124 = load i8*, i8** %p, align 8
  %incdec.ptr281 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr281, i8** %p, align 8
  %125 = load i8, i8* %124, align 1
  %conv282 = sext i8 %125 to i32
  switch i32 %conv282, label %sw.default [
    i32 102, label %sw.bb
    i32 70, label %sw.bb
    i32 108, label %sw.bb.298
    i32 76, label %sw.bb.298
    i32 105, label %sw.bb.314
    i32 73, label %sw.bb.314
    i32 106, label %sw.bb.314
    i32 74, label %sw.bb.314
  ]

sw.bb:                                            ; preds = %while.body.280, %while.body.280
  %126 = load i32, i32* %fflag, align 4
  %tobool283 = icmp ne i32 %126, 0
  br i1 %tobool283, label %if.then.284, label %if.else.288

if.then.284:                                      ; preds = %sw.bb
  br label %do.body.285

do.body.285:                                      ; preds = %if.then.284
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0))
  br label %syntax_error

do.end.287:                                       ; No predecessors!
  br label %if.end.297

if.else.288:                                      ; preds = %sw.bb
  %127 = load i32, i32* @warn_traditional, align 4
  %tobool289 = icmp ne i32 %127, 0
  br i1 %tobool289, label %land.lhs.true.290, label %if.end.296

land.lhs.true.290:                                ; preds = %if.else.288
  %128 = load i32, i32* @in_system_header, align 4
  %tobool291 = icmp ne i32 %128, 0
  br i1 %tobool291, label %if.end.296, label %land.lhs.true.292

land.lhs.true.292:                                ; preds = %land.lhs.true.290
  %129 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %call293 = call i32 @cpp_sys_macro_p(%struct.cpp_reader* %129)
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.end.296, label %if.then.295

if.then.295:                                      ; preds = %land.lhs.true.292
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %land.lhs.true.292, %land.lhs.true.290, %if.else.288
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %do.end.287
  store i32 1, i32* %fflag, align 4
  br label %sw.epilog

sw.bb.298:                                        ; preds = %while.body.280, %while.body.280
  %130 = load i32, i32* %lflag, align 4
  %tobool299 = icmp ne i32 %130, 0
  br i1 %tobool299, label %if.then.300, label %if.else.304

if.then.300:                                      ; preds = %sw.bb.298
  br label %do.body.301

do.body.301:                                      ; preds = %if.then.300
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0))
  br label %syntax_error

do.end.303:                                       ; No predecessors!
  br label %if.end.313

if.else.304:                                      ; preds = %sw.bb.298
  %131 = load i32, i32* @warn_traditional, align 4
  %tobool305 = icmp ne i32 %131, 0
  br i1 %tobool305, label %land.lhs.true.306, label %if.end.312

land.lhs.true.306:                                ; preds = %if.else.304
  %132 = load i32, i32* @in_system_header, align 4
  %tobool307 = icmp ne i32 %132, 0
  br i1 %tobool307, label %if.end.312, label %land.lhs.true.308

land.lhs.true.308:                                ; preds = %land.lhs.true.306
  %133 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %call309 = call i32 @cpp_sys_macro_p(%struct.cpp_reader* %133)
  %tobool310 = icmp ne i32 %call309, 0
  br i1 %tobool310, label %if.end.312, label %if.then.311

if.then.311:                                      ; preds = %land.lhs.true.308
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %land.lhs.true.308, %land.lhs.true.306, %if.else.304
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %do.end.303
  store i32 1, i32* %lflag, align 4
  br label %sw.epilog

sw.bb.314:                                        ; preds = %while.body.280, %while.body.280, %while.body.280, %while.body.280
  %134 = load i32, i32* %imag, align 4
  %tobool315 = icmp ne i32 %134, 0
  br i1 %tobool315, label %if.then.316, label %if.else.320

if.then.316:                                      ; preds = %sw.bb.314
  br label %do.body.317

do.body.317:                                      ; preds = %if.then.316
  call void (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i32 0, i32 0))
  br label %syntax_error

do.end.319:                                       ; No predecessors!
  br label %if.end.324

if.else.320:                                      ; preds = %sw.bb.314
  %135 = load i32, i32* @pedantic, align 4
  %tobool321 = icmp ne i32 %135, 0
  br i1 %tobool321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.else.320
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.322, %if.else.320
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %do.end.319
  store i32 1, i32* %imag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.280
  br label %do.body.325

do.body.325:                                      ; preds = %sw.default
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0))
  br label %syntax_error

do.end.327:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.327, %if.end.324, %if.end.313, %if.end.297
  br label %while.cond.275

while.end.328:                                    ; preds = %while.cond.275
  %136 = load i8*, i8** %copy, align 8
  %str329 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 0
  store i8* %136, i8** %str329, align 8
  %137 = load i32, i32* %fflag, align 4
  %fflag330 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 1
  store i32 %137, i32* %fflag330, align 4
  %138 = load i32, i32* %lflag, align 4
  %lflag331 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 2
  store i32 %138, i32* %lflag331, align 4
  %139 = load i32, i32* %base, align 4
  %base332 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 3
  store i32 %139, i32* %base332, align 4
  %140 = bitcast %struct.pf_args* %args to i8*
  %call333 = call i32 @do_float_handler(void (i8*)* @parse_float, i8* %140)
  %tobool334 = icmp ne i32 %call333, 0
  br i1 %tobool334, label %if.then.335, label %if.else.337

if.then.335:                                      ; preds = %while.end.328
  %value336 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 5
  %141 = bitcast %struct.realvaluetype* %real to i8*
  %142 = bitcast %struct.realvaluetype* %value336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 24, i32 8, i1 false)
  br label %if.end.341

if.else.337:                                      ; preds = %while.end.328
  br label %do.body.338

do.body.338:                                      ; preds = %if.else.337
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0))
  br label %syntax_error

do.end.340:                                       ; No predecessors!
  br label %if.end.341

if.end.341:                                       ; preds = %do.end.340, %if.then.335
  %conversion_errno342 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 4
  %143 = load i32, i32* %conversion_errno342, align 4
  store i32 %143, i32* %conversion_errno, align 4
  %type343 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %args, i32 0, i32 6
  %144 = load %union.tree_node*, %union.tree_node** %type343, align 8
  store %union.tree_node* %144, %union.tree_node** %type, align 8
  %145 = load i32, i32* %conversion_errno, align 4
  %cmp344 = icmp eq i32 %145, 34
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.359

land.lhs.true.346:                                ; preds = %if.end.341
  %146 = load i32, i32* @flag_traditional, align 4
  %tobool347 = icmp ne i32 %146, 0
  br i1 %tobool347, label %if.end.359, label %land.lhs.true.348

land.lhs.true.348:                                ; preds = %land.lhs.true.346
  %147 = load i32, i32* @pedantic, align 4
  %tobool349 = icmp ne i32 %147, 0
  br i1 %tobool349, label %land.lhs.true.350, label %if.end.359

land.lhs.true.350:                                ; preds = %land.lhs.true.348
  %call351 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 @dconst1, %struct.realvaluetype* byval align 8 %real)
  %cmp352 = icmp eq i32 %call351, -1
  br i1 %cmp352, label %if.then.358, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %land.lhs.true.350
  %call355 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 %real, %struct.realvaluetype* byval align 8 @dconstm1)
  %cmp356 = icmp eq i32 %call355, -1
  br i1 %cmp356, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %lor.lhs.false.354, %land.lhs.true.350
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.358, %lor.lhs.false.354, %land.lhs.true.348, %land.lhs.true.346, %if.end.341
  %148 = load i32, i32* %imag, align 4
  %tobool360 = icmp ne i32 %148, 0
  br i1 %tobool360, label %if.then.361, label %if.else.365

if.then.361:                                      ; preds = %if.end.359
  %149 = load %union.tree_node*, %union.tree_node** %type, align 8
  %150 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call362 = call %union.tree_node* @convert(%union.tree_node* %149, %union.tree_node* %150)
  %151 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call363 = call %union.tree_node* @build_real(%union.tree_node* %151, %struct.realvaluetype* byval align 8 %real)
  %call364 = call %union.tree_node* @build_complex(%union.tree_node* null, %union.tree_node* %call362, %union.tree_node* %call363)
  store %union.tree_node* %call364, %union.tree_node** %value, align 8
  br label %if.end.367

if.else.365:                                      ; preds = %if.end.359
  %152 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call366 = call %union.tree_node* @build_real(%union.tree_node* %152, %struct.realvaluetype* byval align 8 %real)
  store %union.tree_node* %call366, %union.tree_node** %value, align 8
  br label %if.end.367

if.end.367:                                       ; preds = %if.else.365, %if.then.361
  br label %if.end.731

if.else.368:                                      ; preds = %if.end.172
  store i32 0, i32* %spec_unsigned, align 4
  store i32 0, i32* %spec_long, align 4
  store i32 0, i32* %spec_long_long, align 4
  store i32 0, i32* %spec_imag, align 4
  store i32 0, i32* %suffix_lu, align 4
  store i32 0, i32* %warn, align 4
  store %union.tree_node* null, %union.tree_node** %type369, align 8
  store %union.tree_node* null, %union.tree_node** %ansi_type, align 8
  store %union.tree_node* null, %union.tree_node** %trad_type, align 8
  br label %while.cond.370

while.cond.370:                                   ; preds = %sw.epilog.432, %if.else.368
  %153 = load i8*, i8** %p, align 8
  %154 = load i8*, i8** %str.addr, align 8
  %155 = load i32, i32* %len.addr, align 4
  %idx.ext371 = zext i32 %155 to i64
  %add.ptr372 = getelementptr inbounds i8, i8* %154, i64 %idx.ext371
  %cmp373 = icmp ult i8* %153, %add.ptr372
  br i1 %cmp373, label %while.body.375, label %while.end.433

while.body.375:                                   ; preds = %while.cond.370
  %156 = load i8*, i8** %p, align 8
  %incdec.ptr376 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr376, i8** %p, align 8
  %157 = load i8, i8* %156, align 1
  %conv377 = sext i8 %157 to i32
  store i32 %conv377, i32* %c, align 4
  %158 = load i32, i32* %c, align 4
  switch i32 %158, label %sw.default.428 [
    i32 117, label %sw.bb.378
    i32 85, label %sw.bb.378
    i32 108, label %sw.bb.394
    i32 76, label %sw.bb.394
    i32 105, label %sw.bb.420
    i32 73, label %sw.bb.420
    i32 106, label %sw.bb.420
    i32 74, label %sw.bb.420
  ]

sw.bb.378:                                        ; preds = %while.body.375, %while.body.375
  %159 = load i32, i32* %spec_unsigned, align 4
  %tobool379 = icmp ne i32 %159, 0
  br i1 %tobool379, label %if.then.380, label %if.else.381

if.then.380:                                      ; preds = %sw.bb.378
  call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.390

if.else.381:                                      ; preds = %sw.bb.378
  %160 = load i32, i32* @warn_traditional, align 4
  %tobool382 = icmp ne i32 %160, 0
  br i1 %tobool382, label %land.lhs.true.383, label %if.end.389

land.lhs.true.383:                                ; preds = %if.else.381
  %161 = load i32, i32* @in_system_header, align 4
  %tobool384 = icmp ne i32 %161, 0
  br i1 %tobool384, label %if.end.389, label %land.lhs.true.385

land.lhs.true.385:                                ; preds = %land.lhs.true.383
  %162 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %call386 = call i32 @cpp_sys_macro_p(%struct.cpp_reader* %162)
  %tobool387 = icmp ne i32 %call386, 0
  br i1 %tobool387, label %if.end.389, label %if.then.388

if.then.388:                                      ; preds = %land.lhs.true.385
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.388, %land.lhs.true.385, %land.lhs.true.383, %if.else.381
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %if.then.380
  store i32 1, i32* %spec_unsigned, align 4
  %163 = load i32, i32* %spec_long, align 4
  %tobool391 = icmp ne i32 %163, 0
  br i1 %tobool391, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %if.end.390
  store i32 1, i32* %suffix_lu, align 4
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.392, %if.end.390
  br label %sw.epilog.432

sw.bb.394:                                        ; preds = %while.body.375, %while.body.375
  %164 = load i32, i32* %spec_long, align 4
  %tobool395 = icmp ne i32 %164, 0
  br i1 %tobool395, label %if.then.396, label %if.end.419

if.then.396:                                      ; preds = %sw.bb.394
  %165 = load i32, i32* %spec_long_long, align 4
  %tobool397 = icmp ne i32 %165, 0
  br i1 %tobool397, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %if.then.396
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.418

if.else.399:                                      ; preds = %if.then.396
  %166 = load i32, i32* %suffix_lu, align 4
  %tobool400 = icmp ne i32 %166, 0
  br i1 %tobool400, label %if.then.401, label %if.else.402

if.then.401:                                      ; preds = %if.else.399
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.417

if.else.402:                                      ; preds = %if.else.399
  %167 = load i32, i32* %c, align 4
  %168 = load i32, i32* %spec_long, align 4
  %cmp403 = icmp ne i32 %167, %168
  br i1 %cmp403, label %if.then.405, label %if.else.406

if.then.405:                                      ; preds = %if.else.402
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.416

if.else.406:                                      ; preds = %if.else.402
  %169 = load i32, i32* @pedantic, align 4
  %tobool407 = icmp ne i32 %169, 0
  br i1 %tobool407, label %land.lhs.true.408, label %if.end.415

land.lhs.true.408:                                ; preds = %if.else.406
  %170 = load i32, i32* @flag_isoc99, align 4
  %tobool409 = icmp ne i32 %170, 0
  br i1 %tobool409, label %if.end.415, label %land.lhs.true.410

land.lhs.true.410:                                ; preds = %land.lhs.true.408
  %171 = load i32, i32* @in_system_header, align 4
  %tobool411 = icmp ne i32 %171, 0
  br i1 %tobool411, label %if.end.415, label %land.lhs.true.412

land.lhs.true.412:                                ; preds = %land.lhs.true.410
  %172 = load i32, i32* @warn_long_long, align 4
  %tobool413 = icmp ne i32 %172, 0
  br i1 %tobool413, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %land.lhs.true.412
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.414, %land.lhs.true.412, %land.lhs.true.410, %land.lhs.true.408, %if.else.406
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.405
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %if.then.401
  br label %if.end.418

if.end.418:                                       ; preds = %if.end.417, %if.then.398
  store i32 1, i32* %spec_long_long, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %sw.bb.394
  %173 = load i32, i32* %c, align 4
  store i32 %173, i32* %spec_long, align 4
  br label %sw.epilog.432

sw.bb.420:                                        ; preds = %while.body.375, %while.body.375, %while.body.375, %while.body.375
  %174 = load i32, i32* %spec_imag, align 4
  %tobool421 = icmp ne i32 %174, 0
  br i1 %tobool421, label %if.then.422, label %if.else.423

if.then.422:                                      ; preds = %sw.bb.420
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.427

if.else.423:                                      ; preds = %sw.bb.420
  %175 = load i32, i32* @pedantic, align 4
  %tobool424 = icmp ne i32 %175, 0
  br i1 %tobool424, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.else.423
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %if.else.423
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.then.422
  store i32 1, i32* %spec_imag, align 4
  br label %sw.epilog.432

sw.default.428:                                   ; preds = %while.body.375
  br label %do.body.429

do.body.429:                                      ; preds = %sw.default.428
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i32 0, i32 0))
  br label %syntax_error

do.end.431:                                       ; No predecessors!
  br label %sw.epilog.432

sw.epilog.432:                                    ; preds = %do.end.431, %if.end.427, %if.end.419, %if.end.393
  br label %while.cond.370

while.end.433:                                    ; preds = %while.cond.370
  %176 = load i32, i32* %overflow, align 4
  %tobool434 = icmp ne i32 %176, 0
  br i1 %tobool434, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %while.end.433
  store i32 1, i32* %warn, align 4
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.39, i32 0, i32 0), i32 128)
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.435, %while.end.433
  store i64 0, i64* %low, align 8
  store i64 0, i64* %high, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.453, %if.end.436
  %177 = load i32, i32* %i, align 4
  %cmp438 = icmp slt i32 %177, 8
  br i1 %cmp438, label %for.body.440, label %for.end.455

for.body.440:                                     ; preds = %for.cond.437
  %178 = load i32, i32* %i, align 4
  %add441 = add nsw i32 %178, 8
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom442
  %179 = load i32, i32* %arrayidx443, align 4
  %conv444 = zext i32 %179 to i64
  %180 = load i32, i32* %i, align 4
  %mul445 = mul nsw i32 %180, 8
  %sh_prom = zext i32 %mul445 to i64
  %shl = shl i64 %conv444, %sh_prom
  %181 = load i64, i64* %high, align 8
  %or = or i64 %181, %shl
  store i64 %or, i64* %high, align 8
  %182 = load i32, i32* %i, align 4
  %idxprom446 = sext i32 %182 to i64
  %arrayidx447 = getelementptr inbounds [16 x i32], [16 x i32]* %parts, i32 0, i64 %idxprom446
  %183 = load i32, i32* %arrayidx447, align 4
  %conv448 = zext i32 %183 to i64
  %184 = load i32, i32* %i, align 4
  %mul449 = mul nsw i32 %184, 8
  %sh_prom450 = zext i32 %mul449 to i64
  %shl451 = shl i64 %conv448, %sh_prom450
  %185 = load i64, i64* %low, align 8
  %or452 = or i64 %185, %shl451
  store i64 %or452, i64* %low, align 8
  br label %for.inc.453

for.inc.453:                                      ; preds = %for.body.440
  %186 = load i32, i32* %i, align 4
  %inc454 = add nsw i32 %186, 1
  store i32 %inc454, i32* %i, align 4
  br label %for.cond.437

for.end.455:                                      ; preds = %for.cond.437
  %187 = load i64, i64* %low, align 8
  %188 = load i64, i64* %high, align 8
  %call456 = call %union.tree_node* @build_int_2_wide(i64 %187, i64 %188)
  store %union.tree_node* %call456, %union.tree_node** %value, align 8
  %189 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  %190 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %190 to %struct.tree_common*
  %type457 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %189, %union.tree_node** %type457, align 8
  %191 = load i32, i32* @warn_traditional, align 4
  %tobool458 = icmp ne i32 %191, 0
  br i1 %tobool458, label %if.then.461, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %for.end.455
  %192 = load i32, i32* @flag_traditional, align 4
  %tobool460 = icmp ne i32 %192, 0
  br i1 %tobool460, label %if.then.461, label %if.end.517

if.then.461:                                      ; preds = %lor.lhs.false.459, %for.end.455
  %193 = load i32, i32* %spec_long, align 4
  %tobool462 = icmp ne i32 %193, 0
  br i1 %tobool462, label %if.else.471, label %land.lhs.true.463

land.lhs.true.463:                                ; preds = %if.then.461
  %194 = load i32, i32* %base, align 4
  %cmp464 = icmp ne i32 %194, 10
  br i1 %cmp464, label %land.lhs.true.466, label %if.else.471

land.lhs.true.466:                                ; preds = %land.lhs.true.463
  %195 = load %union.tree_node*, %union.tree_node** %value, align 8
  %196 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  %call467 = call i32 @int_fits_type_p(%union.tree_node* %195, %union.tree_node* %196)
  %tobool468 = icmp ne i32 %call467, 0
  br i1 %tobool468, label %if.then.469, label %if.else.471

if.then.469:                                      ; preds = %land.lhs.true.466
  %197 = load i32, i32* %spec_unsigned, align 4
  %tobool470 = icmp ne i32 %197, 0
  br i1 %tobool470, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.469
  %198 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.469
  %199 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %198, %cond.true ], [ %199, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %trad_type, align 8
  br label %if.end.516

if.else.471:                                      ; preds = %land.lhs.true.466, %land.lhs.true.463, %if.then.461
  %200 = load i32, i32* %spec_long, align 4
  %tobool472 = icmp ne i32 %200, 0
  br i1 %tobool472, label %if.else.485, label %land.lhs.true.473

land.lhs.true.473:                                ; preds = %if.else.471
  %201 = load i32, i32* %base, align 4
  %cmp474 = icmp eq i32 %201, 10
  br i1 %cmp474, label %land.lhs.true.476, label %if.else.485

land.lhs.true.476:                                ; preds = %land.lhs.true.473
  %202 = load %union.tree_node*, %union.tree_node** %value, align 8
  %203 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %call477 = call i32 @int_fits_type_p(%union.tree_node* %202, %union.tree_node* %203)
  %tobool478 = icmp ne i32 %call477, 0
  br i1 %tobool478, label %if.then.479, label %if.else.485

if.then.479:                                      ; preds = %land.lhs.true.476
  %204 = load i32, i32* %spec_unsigned, align 4
  %tobool480 = icmp ne i32 %204, 0
  br i1 %tobool480, label %cond.true.481, label %cond.false.482

cond.true.481:                                    ; preds = %if.then.479
  %205 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  br label %cond.end.483

cond.false.482:                                   ; preds = %if.then.479
  %206 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  br label %cond.end.483

cond.end.483:                                     ; preds = %cond.false.482, %cond.true.481
  %cond484 = phi %union.tree_node* [ %205, %cond.true.481 ], [ %206, %cond.false.482 ]
  store %union.tree_node* %cond484, %union.tree_node** %trad_type, align 8
  br label %if.end.515

if.else.485:                                      ; preds = %land.lhs.true.476, %land.lhs.true.473, %if.else.471
  %207 = load i32, i32* %spec_long_long, align 4
  %tobool486 = icmp ne i32 %207, 0
  br i1 %tobool486, label %if.else.493, label %if.then.487

if.then.487:                                      ; preds = %if.else.485
  %208 = load i32, i32* %spec_unsigned, align 4
  %tobool488 = icmp ne i32 %208, 0
  br i1 %tobool488, label %cond.true.489, label %cond.false.490

cond.true.489:                                    ; preds = %if.then.487
  %209 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 8), align 8
  br label %cond.end.491

cond.false.490:                                   ; preds = %if.then.487
  %210 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 7), align 8
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.490, %cond.true.489
  %cond492 = phi %union.tree_node* [ %209, %cond.true.489 ], [ %210, %cond.false.490 ]
  store %union.tree_node* %cond492, %union.tree_node** %trad_type, align 8
  br label %if.end.514

if.else.493:                                      ; preds = %if.else.485
  %211 = load %union.tree_node*, %union.tree_node** %value, align 8
  %212 = load i32, i32* %spec_unsigned, align 4
  %tobool494 = icmp ne i32 %212, 0
  br i1 %tobool494, label %cond.true.495, label %cond.false.496

cond.true.495:                                    ; preds = %if.else.493
  %213 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  br label %cond.end.497

cond.false.496:                                   ; preds = %if.else.493
  %214 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  br label %cond.end.497

cond.end.497:                                     ; preds = %cond.false.496, %cond.true.495
  %cond498 = phi %union.tree_node* [ %213, %cond.true.495 ], [ %214, %cond.false.496 ]
  %call499 = call i32 @int_fits_type_p(%union.tree_node* %211, %union.tree_node* %cond498)
  %tobool500 = icmp ne i32 %call499, 0
  br i1 %tobool500, label %if.then.501, label %if.else.507

if.then.501:                                      ; preds = %cond.end.497
  %215 = load i32, i32* %spec_unsigned, align 4
  %tobool502 = icmp ne i32 %215, 0
  br i1 %tobool502, label %cond.true.503, label %cond.false.504

cond.true.503:                                    ; preds = %if.then.501
  %216 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  br label %cond.end.505

cond.false.504:                                   ; preds = %if.then.501
  %217 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.504, %cond.true.503
  %cond506 = phi %union.tree_node* [ %216, %cond.true.503 ], [ %217, %cond.false.504 ]
  store %union.tree_node* %cond506, %union.tree_node** %trad_type, align 8
  br label %if.end.513

if.else.507:                                      ; preds = %cond.end.497
  %218 = load i32, i32* %spec_unsigned, align 4
  %tobool508 = icmp ne i32 %218, 0
  br i1 %tobool508, label %cond.true.509, label %cond.false.510

cond.true.509:                                    ; preds = %if.else.507
  %219 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 10), align 8
  br label %cond.end.511

cond.false.510:                                   ; preds = %if.else.507
  %220 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 9), align 8
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.false.510, %cond.true.509
  %cond512 = phi %union.tree_node* [ %219, %cond.true.509 ], [ %220, %cond.false.510 ]
  store %union.tree_node* %cond512, %union.tree_node** %trad_type, align 8
  br label %if.end.513

if.end.513:                                       ; preds = %cond.end.511, %cond.end.505
  br label %if.end.514

if.end.514:                                       ; preds = %if.end.513, %cond.end.491
  br label %if.end.515

if.end.515:                                       ; preds = %if.end.514, %cond.end.483
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %cond.end
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %lor.lhs.false.459
  %221 = load i32, i32* @warn_traditional, align 4
  %tobool518 = icmp ne i32 %221, 0
  br i1 %tobool518, label %if.then.521, label %lor.lhs.false.519

lor.lhs.false.519:                                ; preds = %if.end.517
  %222 = load i32, i32* @flag_traditional, align 4
  %tobool520 = icmp ne i32 %222, 0
  br i1 %tobool520, label %if.end.578, label %if.then.521

if.then.521:                                      ; preds = %lor.lhs.false.519, %if.end.517
  %223 = load i32, i32* %spec_long, align 4
  %tobool522 = icmp ne i32 %223, 0
  br i1 %tobool522, label %if.else.529, label %land.lhs.true.523

land.lhs.true.523:                                ; preds = %if.then.521
  %224 = load i32, i32* %spec_unsigned, align 4
  %tobool524 = icmp ne i32 %224, 0
  br i1 %tobool524, label %if.else.529, label %land.lhs.true.525

land.lhs.true.525:                                ; preds = %land.lhs.true.523
  %225 = load %union.tree_node*, %union.tree_node** %value, align 8
  %226 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %call526 = call i32 @int_fits_type_p(%union.tree_node* %225, %union.tree_node* %226)
  %tobool527 = icmp ne i32 %call526, 0
  br i1 %tobool527, label %if.then.528, label %if.else.529

if.then.528:                                      ; preds = %land.lhs.true.525
  %227 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  store %union.tree_node* %227, %union.tree_node** %ansi_type, align 8
  br label %if.end.577

if.else.529:                                      ; preds = %land.lhs.true.525, %land.lhs.true.523, %if.then.521
  %228 = load i32, i32* %spec_long, align 4
  %tobool530 = icmp ne i32 %228, 0
  br i1 %tobool530, label %if.else.540, label %land.lhs.true.531

land.lhs.true.531:                                ; preds = %if.else.529
  %229 = load i32, i32* %base, align 4
  %cmp532 = icmp ne i32 %229, 10
  br i1 %cmp532, label %land.lhs.true.536, label %lor.lhs.false.534

lor.lhs.false.534:                                ; preds = %land.lhs.true.531
  %230 = load i32, i32* %spec_unsigned, align 4
  %tobool535 = icmp ne i32 %230, 0
  br i1 %tobool535, label %land.lhs.true.536, label %if.else.540

land.lhs.true.536:                                ; preds = %lor.lhs.false.534, %land.lhs.true.531
  %231 = load %union.tree_node*, %union.tree_node** %value, align 8
  %232 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  %call537 = call i32 @int_fits_type_p(%union.tree_node* %231, %union.tree_node* %232)
  %tobool538 = icmp ne i32 %call537, 0
  br i1 %tobool538, label %if.then.539, label %if.else.540

if.then.539:                                      ; preds = %land.lhs.true.536
  %233 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 6), align 8
  store %union.tree_node* %233, %union.tree_node** %ansi_type, align 8
  br label %if.end.576

if.else.540:                                      ; preds = %land.lhs.true.536, %lor.lhs.false.534, %if.else.529
  %234 = load i32, i32* %spec_unsigned, align 4
  %tobool541 = icmp ne i32 %234, 0
  br i1 %tobool541, label %if.else.548, label %land.lhs.true.542

land.lhs.true.542:                                ; preds = %if.else.540
  %235 = load i32, i32* %spec_long_long, align 4
  %tobool543 = icmp ne i32 %235, 0
  br i1 %tobool543, label %if.else.548, label %land.lhs.true.544

land.lhs.true.544:                                ; preds = %land.lhs.true.542
  %236 = load %union.tree_node*, %union.tree_node** %value, align 8
  %237 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 7), align 8
  %call545 = call i32 @int_fits_type_p(%union.tree_node* %236, %union.tree_node* %237)
  %tobool546 = icmp ne i32 %call545, 0
  br i1 %tobool546, label %if.then.547, label %if.else.548

if.then.547:                                      ; preds = %land.lhs.true.544
  %238 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 7), align 8
  store %union.tree_node* %238, %union.tree_node** %ansi_type, align 8
  br label %if.end.575

if.else.548:                                      ; preds = %land.lhs.true.544, %land.lhs.true.542, %if.else.540
  %239 = load i32, i32* %spec_long_long, align 4
  %tobool549 = icmp ne i32 %239, 0
  br i1 %tobool549, label %if.else.554, label %land.lhs.true.550

land.lhs.true.550:                                ; preds = %if.else.548
  %240 = load %union.tree_node*, %union.tree_node** %value, align 8
  %241 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 8), align 8
  %call551 = call i32 @int_fits_type_p(%union.tree_node* %240, %union.tree_node* %241)
  %tobool552 = icmp ne i32 %call551, 0
  br i1 %tobool552, label %if.then.553, label %if.else.554

if.then.553:                                      ; preds = %land.lhs.true.550
  %242 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 8), align 8
  store %union.tree_node* %242, %union.tree_node** %ansi_type, align 8
  br label %if.end.574

if.else.554:                                      ; preds = %land.lhs.true.550, %if.else.548
  %243 = load i32, i32* %spec_unsigned, align 4
  %tobool555 = icmp ne i32 %243, 0
  br i1 %tobool555, label %if.else.560, label %land.lhs.true.556

land.lhs.true.556:                                ; preds = %if.else.554
  %244 = load %union.tree_node*, %union.tree_node** %value, align 8
  %245 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  %call557 = call i32 @int_fits_type_p(%union.tree_node* %244, %union.tree_node* %245)
  %tobool558 = icmp ne i32 %call557, 0
  br i1 %tobool558, label %if.then.559, label %if.else.560

if.then.559:                                      ; preds = %land.lhs.true.556
  %246 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  store %union.tree_node* %246, %union.tree_node** %ansi_type, align 8
  br label %if.end.573

if.else.560:                                      ; preds = %land.lhs.true.556, %if.else.554
  %247 = load %union.tree_node*, %union.tree_node** %value, align 8
  %248 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  %call561 = call i32 @int_fits_type_p(%union.tree_node* %247, %union.tree_node* %248)
  %tobool562 = icmp ne i32 %call561, 0
  br i1 %tobool562, label %if.then.563, label %if.else.564

if.then.563:                                      ; preds = %if.else.560
  %249 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 10), align 8
  store %union.tree_node* %249, %union.tree_node** %ansi_type, align 8
  br label %if.end.572

if.else.564:                                      ; preds = %if.else.560
  %250 = load i32, i32* %spec_unsigned, align 4
  %tobool565 = icmp ne i32 %250, 0
  br i1 %tobool565, label %if.else.570, label %land.lhs.true.566

land.lhs.true.566:                                ; preds = %if.else.564
  %251 = load %union.tree_node*, %union.tree_node** %value, align 8
  %252 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 9), align 8
  %call567 = call i32 @int_fits_type_p(%union.tree_node* %251, %union.tree_node* %252)
  %tobool568 = icmp ne i32 %call567, 0
  br i1 %tobool568, label %if.then.569, label %if.else.570

if.then.569:                                      ; preds = %land.lhs.true.566
  %253 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 9), align 8
  store %union.tree_node* %253, %union.tree_node** %ansi_type, align 8
  br label %if.end.571

if.else.570:                                      ; preds = %land.lhs.true.566, %if.else.564
  %254 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 10), align 8
  store %union.tree_node* %254, %union.tree_node** %ansi_type, align 8
  br label %if.end.571

if.end.571:                                       ; preds = %if.else.570, %if.then.569
  br label %if.end.572

if.end.572:                                       ; preds = %if.end.571, %if.then.563
  br label %if.end.573

if.end.573:                                       ; preds = %if.end.572, %if.then.559
  br label %if.end.574

if.end.574:                                       ; preds = %if.end.573, %if.then.553
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %if.then.547
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.then.539
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.then.528
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %lor.lhs.false.519
  %255 = load i32, i32* @flag_traditional, align 4
  %tobool579 = icmp ne i32 %255, 0
  br i1 %tobool579, label %cond.true.580, label %cond.false.581

cond.true.580:                                    ; preds = %if.end.578
  %256 = load %union.tree_node*, %union.tree_node** %trad_type, align 8
  br label %cond.end.582

cond.false.581:                                   ; preds = %if.end.578
  %257 = load %union.tree_node*, %union.tree_node** %ansi_type, align 8
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.581, %cond.true.580
  %cond583 = phi %union.tree_node* [ %256, %cond.true.580 ], [ %257, %cond.false.581 ]
  store %union.tree_node* %cond583, %union.tree_node** %type369, align 8
  %258 = load i32, i32* @warn_traditional, align 4
  %tobool584 = icmp ne i32 %258, 0
  br i1 %tobool584, label %land.lhs.true.585, label %if.end.617

land.lhs.true.585:                                ; preds = %cond.end.582
  %259 = load i32, i32* @in_system_header, align 4
  %tobool586 = icmp ne i32 %259, 0
  br i1 %tobool586, label %if.end.617, label %land.lhs.true.587

land.lhs.true.587:                                ; preds = %land.lhs.true.585
  %260 = load i32, i32* %base, align 4
  %cmp588 = icmp eq i32 %260, 10
  br i1 %cmp588, label %land.lhs.true.590, label %if.end.617

land.lhs.true.590:                                ; preds = %land.lhs.true.587
  %261 = load %union.tree_node*, %union.tree_node** %trad_type, align 8
  %262 = load %union.tree_node*, %union.tree_node** %ansi_type, align 8
  %cmp591 = icmp ne %union.tree_node* %261, %262
  br i1 %cmp591, label %if.then.593, label %if.end.617

if.then.593:                                      ; preds = %land.lhs.true.590
  %263 = load %union.tree_node*, %union.tree_node** %trad_type, align 8
  %type594 = bitcast %union.tree_node* %263 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type594, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  %264 = load %union.tree_node*, %union.tree_node** %ansi_type, align 8
  %type595 = bitcast %union.tree_node* %264 to %struct.tree_type*
  %precision596 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type595, i32 0, i32 6
  %bf.load597 = load i32, i32* %precision596, align 4
  %bf.clear598 = and i32 %bf.load597, 511
  %cmp599 = icmp ne i32 %bf.clear, %bf.clear598
  br i1 %cmp599, label %if.then.601, label %if.else.602

if.then.601:                                      ; preds = %if.then.593
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.616

if.else.602:                                      ; preds = %if.then.593
  %265 = load %union.tree_node*, %union.tree_node** %trad_type, align 8
  %common603 = bitcast %union.tree_node* %265 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common603, i32 0, i32 2
  %bf.load604 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load604, 13
  %bf.clear605 = and i32 %bf.lshr, 1
  %266 = load %union.tree_node*, %union.tree_node** %ansi_type, align 8
  %common606 = bitcast %union.tree_node* %266 to %struct.tree_common*
  %unsigned_flag607 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common606, i32 0, i32 2
  %bf.load608 = load i32, i32* %unsigned_flag607, align 8
  %bf.lshr609 = lshr i32 %bf.load608, 13
  %bf.clear610 = and i32 %bf.lshr609, 1
  %cmp611 = icmp ne i32 %bf.clear605, %bf.clear610
  br i1 %cmp611, label %if.then.613, label %if.else.614

if.then.613:                                      ; preds = %if.else.602
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.615

if.else.614:                                      ; preds = %if.else.602
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.615

if.end.615:                                       ; preds = %if.else.614, %if.then.613
  br label %if.end.616

if.end.616:                                       ; preds = %if.end.615, %if.then.601
  br label %if.end.617

if.end.617:                                       ; preds = %if.end.616, %land.lhs.true.590, %land.lhs.true.587, %land.lhs.true.585, %cond.end.582
  %267 = load i32, i32* @pedantic, align 4
  %tobool618 = icmp ne i32 %267, 0
  br i1 %tobool618, label %land.lhs.true.619, label %if.end.660

land.lhs.true.619:                                ; preds = %if.end.617
  %268 = load i32, i32* @flag_traditional, align 4
  %tobool620 = icmp ne i32 %268, 0
  br i1 %tobool620, label %if.end.660, label %land.lhs.true.621

land.lhs.true.621:                                ; preds = %land.lhs.true.619
  %269 = load i32, i32* @flag_isoc99, align 4
  %tobool622 = icmp ne i32 %269, 0
  br i1 %tobool622, label %land.lhs.true.625, label %lor.lhs.false.623

lor.lhs.false.623:                                ; preds = %land.lhs.true.621
  %270 = load i32, i32* %spec_long_long, align 4
  %tobool624 = icmp ne i32 %270, 0
  br i1 %tobool624, label %if.end.660, label %land.lhs.true.625

land.lhs.true.625:                                ; preds = %lor.lhs.false.623, %land.lhs.true.621
  %271 = load i32, i32* %warn, align 4
  %tobool626 = icmp ne i32 %271, 0
  br i1 %tobool626, label %if.end.660, label %land.lhs.true.627

land.lhs.true.627:                                ; preds = %land.lhs.true.625
  %272 = load i32, i32* @flag_isoc99, align 4
  %tobool628 = icmp ne i32 %272, 0
  br i1 %tobool628, label %cond.true.629, label %cond.false.634

cond.true.629:                                    ; preds = %land.lhs.true.627
  %273 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 9), align 8
  %type630 = bitcast %union.tree_node* %273 to %struct.tree_type*
  %precision631 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type630, i32 0, i32 6
  %bf.load632 = load i32, i32* %precision631, align 4
  %bf.clear633 = and i32 %bf.load632, 511
  br label %cond.end.639

cond.false.634:                                   ; preds = %land.lhs.true.627
  %274 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 7), align 8
  %type635 = bitcast %union.tree_node* %274 to %struct.tree_type*
  %precision636 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type635, i32 0, i32 6
  %bf.load637 = load i32, i32* %precision636, align 4
  %bf.clear638 = and i32 %bf.load637, 511
  br label %cond.end.639

cond.end.639:                                     ; preds = %cond.false.634, %cond.true.629
  %cond640 = phi i32 [ %bf.clear633, %cond.true.629 ], [ %bf.clear638, %cond.false.634 ]
  %275 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %type641 = bitcast %union.tree_node* %275 to %struct.tree_type*
  %precision642 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type641, i32 0, i32 6
  %bf.load643 = load i32, i32* %precision642, align 4
  %bf.clear644 = and i32 %bf.load643, 511
  %cmp645 = icmp slt i32 %cond640, %bf.clear644
  br i1 %cmp645, label %if.then.647, label %if.end.660

if.then.647:                                      ; preds = %cond.end.639
  store i32 1, i32* %warn, align 4
  %276 = load i32, i32* @flag_isoc99, align 4
  %tobool648 = icmp ne i32 %276, 0
  br i1 %tobool648, label %cond.true.649, label %cond.false.657

cond.true.649:                                    ; preds = %if.then.647
  %277 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %common650 = bitcast %union.tree_node* %277 to %struct.tree_common*
  %unsigned_flag651 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common650, i32 0, i32 2
  %bf.load652 = load i32, i32* %unsigned_flag651, align 8
  %bf.lshr653 = lshr i32 %bf.load652, 13
  %bf.clear654 = and i32 %bf.lshr653, 1
  %tobool655 = icmp ne i32 %bf.clear654, 0
  %cond656 = select i1 %tobool655, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0)
  br label %cond.end.658

cond.false.657:                                   ; preds = %if.then.647
  br label %cond.end.658

cond.end.658:                                     ; preds = %cond.false.657, %cond.true.649
  %cond659 = phi i8* [ %cond656, %cond.true.649 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), %cond.false.657 ]
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0), i8* %cond659)
  br label %if.end.660

if.end.660:                                       ; preds = %cond.end.658, %cond.end.639, %land.lhs.true.625, %lor.lhs.false.623, %land.lhs.true.619, %if.end.617
  %278 = load i32, i32* %base, align 4
  %cmp661 = icmp eq i32 %278, 10
  br i1 %cmp661, label %land.lhs.true.663, label %if.end.673

land.lhs.true.663:                                ; preds = %if.end.660
  %279 = load i32, i32* %spec_unsigned, align 4
  %tobool664 = icmp ne i32 %279, 0
  br i1 %tobool664, label %if.end.673, label %land.lhs.true.665

land.lhs.true.665:                                ; preds = %land.lhs.true.663
  %280 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %common666 = bitcast %union.tree_node* %280 to %struct.tree_common*
  %unsigned_flag667 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common666, i32 0, i32 2
  %bf.load668 = load i32, i32* %unsigned_flag667, align 8
  %bf.lshr669 = lshr i32 %bf.load668, 13
  %bf.clear670 = and i32 %bf.lshr669, 1
  %tobool671 = icmp ne i32 %bf.clear670, 0
  br i1 %tobool671, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %land.lhs.true.665
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.673

if.end.673:                                       ; preds = %if.then.672, %land.lhs.true.665, %land.lhs.true.663, %if.end.660
  %281 = load i32, i32* %spec_imag, align 4
  %tobool674 = icmp ne i32 %281, 0
  br i1 %tobool674, label %if.then.675, label %if.else.694

if.then.675:                                      ; preds = %if.end.673
  %282 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %type676 = bitcast %union.tree_node* %282 to %struct.tree_type*
  %precision677 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type676, i32 0, i32 6
  %bf.load678 = load i32, i32* %precision677, align 4
  %bf.clear679 = and i32 %bf.load678, 511
  %283 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type680 = bitcast %union.tree_node* %283 to %struct.tree_type*
  %precision681 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type680, i32 0, i32 6
  %bf.load682 = load i32, i32* %precision681, align 4
  %bf.clear683 = and i32 %bf.load682, 511
  %cmp684 = icmp sle i32 %bf.clear679, %bf.clear683
  br i1 %cmp684, label %if.then.686, label %if.else.689

if.then.686:                                      ; preds = %if.then.675
  %284 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %285 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %286 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call687 = call %union.tree_node* @convert(%union.tree_node* %285, %union.tree_node* %286)
  %call688 = call %union.tree_node* @build_complex(%union.tree_node* null, %union.tree_node* %284, %union.tree_node* %call687)
  store %union.tree_node* %call688, %union.tree_node** %value, align 8
  br label %if.end.693

if.else.689:                                      ; preds = %if.then.675
  br label %do.body.690

do.body.690:                                      ; preds = %if.else.689
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.48, i32 0, i32 0))
  br label %syntax_error

do.end.692:                                       ; No predecessors!
  br label %if.end.693

if.end.693:                                       ; preds = %do.end.692, %if.then.686
  br label %if.end.714

if.else.694:                                      ; preds = %if.end.673
  %287 = load i32, i32* @flag_traditional, align 4
  %tobool695 = icmp ne i32 %287, 0
  br i1 %tobool695, label %land.lhs.true.696, label %if.else.710

land.lhs.true.696:                                ; preds = %if.else.694
  %288 = load %union.tree_node*, %union.tree_node** %value, align 8
  %289 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %call697 = call i32 @int_fits_type_p(%union.tree_node* %288, %union.tree_node* %289)
  %tobool698 = icmp ne i32 %call697, 0
  br i1 %tobool698, label %if.else.710, label %if.then.699

if.then.699:                                      ; preds = %land.lhs.true.696
  %290 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %call700 = call %union.tree_node* @unsigned_type(%union.tree_node* %290)
  %291 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common701 = bitcast %union.tree_node* %291 to %struct.tree_common*
  %type702 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common701, i32 0, i32 1
  store %union.tree_node* %call700, %union.tree_node** %type702, align 8
  %292 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %293 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call703 = call %union.tree_node* @convert(%union.tree_node* %292, %union.tree_node* %293)
  store %union.tree_node* %call703, %union.tree_node** %value, align 8
  %294 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common704 = bitcast %union.tree_node* %294 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common704, i32 0, i32 2
  %bf.load705 = load i32, i32* %static_flag, align 8
  %bf.clear706 = and i32 %bf.load705, -262145
  store i32 %bf.clear706, i32* %static_flag, align 8
  %295 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common707 = bitcast %union.tree_node* %295 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common707, i32 0, i32 2
  %bf.load708 = load i32, i32* %public_flag, align 8
  %bf.clear709 = and i32 %bf.load708, -524289
  store i32 %bf.clear709, i32* %public_flag, align 8
  br label %if.end.713

if.else.710:                                      ; preds = %land.lhs.true.696, %if.else.694
  %296 = load %union.tree_node*, %union.tree_node** %type369, align 8
  %297 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common711 = bitcast %union.tree_node* %297 to %struct.tree_common*
  %type712 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common711, i32 0, i32 1
  store %union.tree_node* %296, %union.tree_node** %type712, align 8
  br label %if.end.713

if.end.713:                                       ; preds = %if.else.710, %if.then.699
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.713, %if.end.693
  %298 = load i32, i32* %warn, align 4
  %tobool715 = icmp ne i32 %298, 0
  br i1 %tobool715, label %if.end.730, label %land.lhs.true.716

land.lhs.true.716:                                ; preds = %if.end.714
  %299 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common717 = bitcast %union.tree_node* %299 to %struct.tree_common*
  %type718 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common717, i32 0, i32 1
  %300 = load %union.tree_node*, %union.tree_node** %type718, align 8
  %common719 = bitcast %union.tree_node* %300 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common719, i32 0, i32 2
  %bf.load720 = load i32, i32* %code, align 8
  %bf.clear721 = and i32 %bf.load720, 255
  %cmp722 = icmp eq i32 %bf.clear721, 6
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.730

land.lhs.true.724:                                ; preds = %land.lhs.true.716
  %301 = load %union.tree_node*, %union.tree_node** %value, align 8
  %302 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common725 = bitcast %union.tree_node* %302 to %struct.tree_common*
  %type726 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common725, i32 0, i32 1
  %303 = load %union.tree_node*, %union.tree_node** %type726, align 8
  %call727 = call i32 @int_fits_type_p(%union.tree_node* %301, %union.tree_node* %303)
  %tobool728 = icmp ne i32 %call727, 0
  br i1 %tobool728, label %if.end.730, label %if.then.729

if.then.729:                                      ; preds = %land.lhs.true.724
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.730

if.end.730:                                       ; preds = %if.then.729, %land.lhs.true.724, %land.lhs.true.716, %if.end.714
  br label %if.end.731

if.end.731:                                       ; preds = %if.end.730, %if.end.367
  %304 = load i8*, i8** %p, align 8
  %305 = load i8*, i8** %str.addr, align 8
  %306 = load i32, i32* %len.addr, align 4
  %idx.ext732 = zext i32 %306 to i64
  %add.ptr733 = getelementptr inbounds i8, i8* %305, i64 %idx.ext732
  %cmp734 = icmp ult i8* %304, %add.ptr733
  br i1 %cmp734, label %if.then.736, label %if.end.741

if.then.736:                                      ; preds = %if.end.731
  %307 = load i8*, i8** %p, align 8
  %308 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast737 = ptrtoint i8* %307 to i64
  %sub.ptr.rhs.cast738 = ptrtoint i8* %308 to i64
  %sub.ptr.sub739 = sub i64 %sub.ptr.lhs.cast737, %sub.ptr.rhs.cast738
  %conv740 = trunc i64 %sub.ptr.sub739 to i32
  %309 = load i8*, i8** %str.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i32 0, i32 0), i32 %conv740, i8* %309)
  br label %if.end.741

if.end.741:                                       ; preds = %if.then.736, %if.end.731
  %310 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %310, %union.tree_node** %retval
  br label %return

syntax_error:                                     ; preds = %do.body.690, %do.body.429, %do.body.338, %do.body.325, %do.body.317, %do.body.301, %do.body.285, %do.body.241, %do.body.190, %do.body.169, %do.body.162, %do.body.70, %do.body.57, %do.body.52
  %311 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %311, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %syntax_error, %if.end.741, %if.else.8, %if.then.7, %if.then.3
  %312 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %312
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @lex_charconst(%struct.cpp_token* %token) #0 {
entry:
  %token.addr = alloca %struct.cpp_token*, align 8
  %result = alloca i64, align 8
  %type = alloca %union.tree_node*, align 8
  %value = alloca %union.tree_node*, align 8
  %chars_seen = alloca i32, align 4
  store %struct.cpp_token* %token, %struct.cpp_token** %token.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %2 = load i32, i32* @warn_multichar, align 4
  %3 = load i32, i32* @flag_traditional, align 4
  %call = call i64 @cpp_interpret_charconst(%struct.cpp_reader* %0, %struct.cpp_token* %1, i32 %2, i32 %3, i32* %chars_seen)
  store i64 %call, i64* %result, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token.addr, align 8
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load = load i8, i8* %type1, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 59
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %result, align 8
  %call2 = call %union.tree_node* @build_int_2_wide(i64 %5, i64 0)
  store %union.tree_node* %call2, %union.tree_node** %value, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  store %union.tree_node* %6, %union.tree_node** %type, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %7 = load i64, i64* %result, align 8
  %cmp3 = icmp slt i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %8 = load i64, i64* %result, align 8
  %call5 = call %union.tree_node* @build_int_2_wide(i64 %8, i64 -1)
  store %union.tree_node* %call5, %union.tree_node** %value, align 8
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %9 = load i64, i64* %result, align 8
  %call7 = call %union.tree_node* @build_int_2_wide(i64 %9, i64 0)
  store %union.tree_node* %call7, %union.tree_node** %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  %10 = load i32, i32* @c_language, align 4
  %cmp8 = icmp eq i32 %10, 1
  br i1 %cmp8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %chars_seen, align 4
  %cmp9 = icmp ule i32 %11, 1
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  store %union.tree_node* %12, %union.tree_node** %type, align 8
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true, %if.end
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  store %union.tree_node* %13, %union.tree_node** %type, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 9), align 8
  %15 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %type14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %14, %union.tree_node** %type14, align 8
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %17 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call15 = call %union.tree_node* @convert(%union.tree_node* %16, %union.tree_node* %17)
  store %union.tree_node* %call15, %union.tree_node** %value, align 8
  %18 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common16 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load17 = load i32, i32* %public_flag, align 8
  %bf.clear = and i32 %bf.load17, -524289
  store i32 %bf.clear, i32* %public_flag, align 8
  %19 = load %union.tree_node*, %union.tree_node** %value, align 8
  ret %union.tree_node* %19
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @lex_string(i8* %str, i32 %len, i32 %wide) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %wide.addr = alloca i32, align 4
  %value = alloca %union.tree_node*, align 8
  %buf = alloca i8*, align 8
  %q = alloca i8*, align 8
  %p = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %c = alloca i32, align 4
  %width = alloca i32, align 4
  %mask = alloca i32, align 4
  %charwidth = alloca i32, align 4
  %bytemask = alloca i32, align 4
  %byte = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %wide, i32* %wide.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %add = add i32 %0, 1
  %1 = load i32, i32* %wide.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  %type = bitcast %union.tree_node* %2 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  %div = sdiv i32 %bf.clear, 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 1, %cond.false ]
  %mul = mul i32 %add, %cond
  %conv = zext i32 %mul to i64
  %3 = alloca i8, i64 %conv
  store i8* %3, i8** %buf, align 8
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %q, align 8
  %5 = load i8*, i8** %str.addr, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %len.addr, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  %8 = load i32, i32* %wide.addr, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.7

cond.true.2:                                      ; preds = %cond.end
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  %type3 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %precision4 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 6
  %bf.load5 = load i32, i32* %precision4, align 4
  %bf.clear6 = and i32 %bf.load5, 511
  br label %cond.end.12

cond.false.7:                                     ; preds = %cond.end
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %type8 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %precision9 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 6
  %bf.load10 = load i32, i32* %precision9, align 4
  %bf.clear11 = and i32 %bf.load10, 511
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.7, %cond.true.2
  %cond13 = phi i32 [ %bf.clear6, %cond.true.2 ], [ %bf.clear11, %cond.false.7 ]
  store i32 %cond13, i32* %width, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %cond.end.12
  %11 = load i8*, i8** %p, align 8
  %12 = load i8*, i8** %limit, align 8
  %cmp = icmp ult i8* %11, %12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv15 = zext i8 %14 to i32
  store i32 %conv15, i32* %c, align 4
  %15 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %15, 92
  br i1 %cmp16, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.body
  %16 = load i32, i32* @ignore_escape_flag, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.end.23, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, i32* %width, align 4
  %cmp19 = icmp ult i32 %17, 32
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then
  %18 = load i32, i32* %width, align 4
  %shl = shl i32 1, %18
  %sub = sub i32 %shl, 1
  store i32 %sub, i32* %mask, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  %20 = load i8*, i8** %limit, align 8
  %21 = load i32, i32* %mask, align 4
  %conv22 = zext i32 %21 to i64
  %22 = load i32, i32* @flag_traditional, align 4
  %call = call i32 @cpp_parse_escape(%struct.cpp_reader* %19, i8** %p, i8* %20, i64 %conv22, i32 %22)
  store i32 %call, i32* %c, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true, %while.body
  %23 = load i32, i32* %wide.addr, align 4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.53

if.then.25:                                       ; preds = %if.end.23
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %type26 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %precision27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 6
  %bf.load28 = load i32, i32* %precision27, align 4
  %bf.clear29 = and i32 %bf.load28, 511
  store i32 %bf.clear29, i32* %charwidth, align 4
  %25 = load i32, i32* %charwidth, align 4
  %shl30 = shl i32 1, %25
  %sub31 = sub nsw i32 %shl30, 1
  store i32 %sub31, i32* %bytemask, align 4
  store i32 0, i32* %byte, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.25
  %26 = load i32, i32* %byte, align 4
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  %type32 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %precision33 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type32, i32 0, i32 6
  %bf.load34 = load i32, i32* %precision33, align 4
  %bf.clear35 = and i32 %bf.load34, 511
  %div36 = sdiv i32 %bf.clear35, 8
  %cmp37 = icmp slt i32 %26, %div36
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %byte, align 4
  %cmp39 = icmp sge i32 %28, 4
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %for.body
  store i32 0, i32* %n, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %for.body
  %29 = load i32, i32* %c, align 4
  %30 = load i32, i32* %byte, align 4
  %31 = load i32, i32* %charwidth, align 4
  %mul43 = mul i32 %30, %31
  %shr = lshr i32 %29, %mul43
  %32 = load i32, i32* %bytemask, align 4
  %and = and i32 %shr, %32
  store i32 %and, i32* %n, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  %33 = load i32, i32* %n, align 4
  %conv45 = trunc i32 %33 to i8
  %34 = load i32, i32* %byte, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i8*, i8** %q, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 %idxprom
  store i8 %conv45, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %36 = load i32, i32* %byte, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %byte, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  %type46 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %precision47 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type46, i32 0, i32 6
  %bf.load48 = load i32, i32* %precision47, align 4
  %bf.clear49 = and i32 %bf.load48, 511
  %div50 = sdiv i32 %bf.clear49, 8
  %38 = load i8*, i8** %q, align 8
  %idx.ext51 = sext i32 %div50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %38, i64 %idx.ext51
  store i8* %add.ptr52, i8** %q, align 8
  br label %if.end.56

if.else.53:                                       ; preds = %if.end.23
  %39 = load i32, i32* %c, align 4
  %conv54 = trunc i32 %39 to i8
  %40 = load i8*, i8** %q, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr55, i8** %q, align 8
  store i8 %conv54, i8* %40, align 1
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load i32, i32* %wide.addr, align 4
  %tobool57 = icmp ne i32 %41, 0
  br i1 %tobool57, label %if.then.58, label %if.else.72

if.then.58:                                       ; preds = %while.end
  %42 = load i8*, i8** %q, align 8
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  %type59 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %precision60 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type59, i32 0, i32 6
  %bf.load61 = load i32, i32* %precision60, align 4
  %bf.clear62 = and i32 %bf.load61, 511
  %div63 = sdiv i32 %bf.clear62, 8
  %conv64 = sext i32 %div63 to i64
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 %conv64, i32 1, i1 false)
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 0), align 8
  %type65 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %precision66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type65, i32 0, i32 6
  %bf.load67 = load i32, i32* %precision66, align 4
  %bf.clear68 = and i32 %bf.load67, 511
  %div69 = sdiv i32 %bf.clear68, 8
  %45 = load i8*, i8** %q, align 8
  %idx.ext70 = sext i32 %div69 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %45, i64 %idx.ext70
  store i8* %add.ptr71, i8** %q, align 8
  br label %if.end.74

if.else.72:                                       ; preds = %while.end
  %46 = load i8*, i8** %q, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr73, i8** %q, align 8
  store i8 0, i8* %46, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.58
  %47 = load i8*, i8** %q, align 8
  %48 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv75 = trunc i64 %sub.ptr.sub to i32
  %49 = load i8*, i8** %buf, align 8
  %call76 = call %union.tree_node* @build_string(i32 %conv75, i8* %49)
  store %union.tree_node* %call76, %union.tree_node** %value, align 8
  %50 = load i32, i32* %wide.addr, align 4
  %tobool77 = icmp ne i32 %50, 0
  br i1 %tobool77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.end.74
  %51 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 12), align 8
  %52 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %52 to %struct.tree_common*
  %type79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %51, %union.tree_node** %type79, align 8
  br label %if.end.83

if.else.80:                                       ; preds = %if.end.74
  %53 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 11), align 8
  %54 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common81 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %type82 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common81, i32 0, i32 1
  store %union.tree_node* %53, %union.tree_node** %type82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.78
  %55 = load %union.tree_node*, %union.tree_node** %value, align 8
  ret %union.tree_node* %55
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

declare void @push_srcloc(i8*, i32) #1

declare void @warning(i8*, ...) #1

declare void @pop_srcloc() #1

; Function Attrs: nounwind uwtable
define internal void @update_header_times(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %this_time = alloca i32, align 4
  %file = alloca %struct.c_fileinfo*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* @flag_detailed_statistics, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @get_run_time()
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %this_time, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct.c_fileinfo* @get_fileinfo(i8* %1)
  store %struct.c_fileinfo* %call1, %struct.c_fileinfo** %file, align 8
  %2 = load i32, i32* %this_time, align 4
  %3 = load i32, i32* @body_time, align 4
  %sub = sub nsw i32 %2, %3
  %4 = load i32, i32* @header_time, align 4
  %add = add nsw i32 %4, %sub
  store i32 %add, i32* @header_time, align 4
  %5 = load i32, i32* %this_time, align 4
  %6 = load i32, i32* @body_time, align 4
  %sub2 = sub nsw i32 %5, %6
  %7 = load %struct.c_fileinfo*, %struct.c_fileinfo** %file, align 8
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %7, i32 0, i32 0
  %8 = load i32, i32* %time, align 4
  %add3 = add nsw i32 %8, %sub2
  store i32 %add3, i32* %time, align 4
  %9 = load i32, i32* %this_time, align 4
  store i32 %9, i32* @body_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @extract_interface_info() #1

declare i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) #1

declare i8* @cpp_macro_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) #1

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

declare void @pedwarn(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @cpp_sys_macro_p(%struct.cpp_reader*) #1

declare i32 @do_float_handler(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @parse_float(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %args = alloca %struct.pf_args*, align 8
  %typename = alloca i8*, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %tmp27 = alloca %struct.realvaluetype, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.pf_args*
  store %struct.pf_args* %1, %struct.pf_args** %args, align 8
  %2 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %conversion_errno = getelementptr inbounds %struct.pf_args, %struct.pf_args* %2, i32 0, i32 4
  store i32 0, i32* %conversion_errno, align 4
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 25), align 8
  %4 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %type = getelementptr inbounds %struct.pf_args, %struct.pf_args* %4, i32 0, i32 6
  store %union.tree_node* %3, %union.tree_node** %type, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8** %typename, align 8
  %5 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %fflag = getelementptr inbounds %struct.pf_args, %struct.pf_args* %5, i32 0, i32 1
  %6 = load i32, i32* %fflag, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %lflag = getelementptr inbounds %struct.pf_args, %struct.pf_args* %7, i32 0, i32 2
  %8 = load i32, i32* %lflag, align 4
  %tobool1 = icmp ne i32 %8, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %10 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %type3 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %10, i32 0, i32 6
  store %union.tree_node* %9, %union.tree_node** %type3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8** %typename, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %11 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %lflag4 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %11, i32 0, i32 2
  %12 = load i32, i32* %lflag4, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 26), align 8
  %14 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %type7 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %14, i32 0, i32 6
  store %union.tree_node* %13, %union.tree_node** %type7, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8** %typename, align 8
  br label %if.end.13

if.else.8:                                        ; preds = %if.else
  %15 = load i32, i32* @flag_single_precision_constant, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.else.8
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 24), align 8
  %17 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %type11 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %17, i32 0, i32 6
  store %union.tree_node* %16, %union.tree_node** %type11, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8** %typename, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.else.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %call = call i32* @__errno_location() #9
  store i32 0, i32* %call, align 4
  %18 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %base = getelementptr inbounds %struct.pf_args, %struct.pf_args* %18, i32 0, i32 3
  %19 = load i32, i32* %base, align 4
  %cmp = icmp eq i32 %19, 16
  br i1 %cmp, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.end.14
  %20 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %value = getelementptr inbounds %struct.pf_args, %struct.pf_args* %20, i32 0, i32 5
  %21 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %str = getelementptr inbounds %struct.pf_args, %struct.pf_args* %21, i32 0, i32 0
  %22 = load i8*, i8** %str, align 8
  %23 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %type16 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %23, i32 0, i32 6
  %24 = load %union.tree_node*, %union.tree_node** %type16, align 8
  %type17 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type17, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  call void @ereal_atof(%struct.realvaluetype* sret %tmp, i8* %22, i32 %bf.clear)
  %25 = bitcast %struct.realvaluetype* %value to i8*
  %26 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 24, i32 8, i1 false)
  br label %if.end.28

if.else.18:                                       ; preds = %if.end.14
  %27 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %value19 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %27, i32 0, i32 5
  %28 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %str20 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %28, i32 0, i32 0
  %29 = load i8*, i8** %str20, align 8
  %30 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %type21 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %30, i32 0, i32 6
  %31 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %type22 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 9
  %bf.clear26 = and i32 %bf.lshr25, 127
  call void @ereal_atof(%struct.realvaluetype* sret %tmp27, i8* %29, i32 %bf.clear26)
  %32 = bitcast %struct.realvaluetype* %value19 to i8*
  %33 = bitcast %struct.realvaluetype* %tmp27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 8, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.18, %if.then.15
  %call29 = call i32* @__errno_location() #9
  %34 = load i32, i32* %call29, align 4
  %35 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %conversion_errno30 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %35, i32 0, i32 4
  store i32 %34, i32* %conversion_errno30, align 4
  %36 = load %struct.pf_args*, %struct.pf_args** %args, align 8
  %value31 = getelementptr inbounds %struct.pf_args, %struct.pf_args* %36, i32 0, i32 5
  %call32 = call i32 @target_isinf(%struct.realvaluetype* byval align 8 %value31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.28
  %37 = load i32, i32* @pedantic, align 4
  %tobool34 = icmp ne i32 %37, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** %typename, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.55, i32 0, i32 0), i8* %38)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true, %if.end.28
  ret void
}

declare i32 @ereal_cmp(%struct.realvaluetype* byval align 8, %struct.realvaluetype* byval align 8) #1

declare %union.tree_node* @build_complex(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_real(%union.tree_node*, %struct.realvaluetype* byval align 8) #1

declare i32 @int_fits_type_p(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @unsigned_type(%union.tree_node*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @ereal_atof(%struct.realvaluetype* sret, i8*, i32) #1

declare i32 @target_isinf(%struct.realvaluetype* byval align 8) #1

declare i32 @cpp_parse_escape(%struct.cpp_reader*, i8**, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %union.tree_node* @build_string(i32, i8*) #1

declare i64 @cpp_interpret_charconst(%struct.cpp_reader*, %struct.cpp_token*, i32, i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
