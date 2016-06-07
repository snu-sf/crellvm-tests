; ModuleID = 'cppmacro.c'
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
%struct.cpp_macro = type { %struct.cpp_hashnode**, %struct.cpp_token*, i32, i32, i16, i8 }
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
%struct.macro_arg = type { %struct.cpp_token**, %struct.cpp_token**, %struct.cpp_token*, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@_sch_istable = external constant [256 x i16], align 16
@.str = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"ISO C requires whitespace after the macro name\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"'#' is not followed by a macro parameter\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"'##' cannot appear at either end of a macro expansion\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\22%s\22 redefined\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"this is the location of the previous definition\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__STDC_\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"invalid hash type %d in cpp_macro_definition\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"pasting \22%s\22 and \22%s\22 does not give a valid preprocessing token\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"function-like macro \22%s\22 must be used with arguments in traditional C\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"directives may not be used inside a macro argument\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"ISO C99 requires rest arguments to be used\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"macro \22%s\22 requires %u arguments, but only %u given\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"macro \22%s\22 passed %u arguments, but takes just %u\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"invalid string literal, ignoring final '\5C'\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"invalid built-in macro \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%s %2d %4d\00", align 1
@monthnames = internal constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)], align 16
@.str.18 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"\22%s\22 may not appear in macro parameter list\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"macro parameters must be comma-separated\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"parameter name missing\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"anonymous variadic macros were introduced in C99\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"ISO C does not permit named variadic macros\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"missing ')' in macro parameter list\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"duplicate macro parameter \22%s\22\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"macro argument \22%s\22 would be stringified with -traditional\00", align 1

; Function Attrs: nounwind uwtable
define i8* @cpp_quote_string(i8* %dest, i8* %src, i32 %len) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %entry
  %0 = load i32, i32* %len.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %len.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %3 = load i8, i8* %c, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i8, i8* %c, align 1
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 34
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr5, i8** %dest.addr, align 8
  store i8 92, i8* %5, align 1
  %6 = load i8, i8* %c, align 1
  %7 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %dest.addr, align 8
  store i8 %6, i8* %7, align 1
  br label %if.end.15

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i8, i8* %c, align 1
  %conv7 = zext i8 %8 to i32
  %and = and i32 %conv7, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv8 = zext i16 %9 to i32
  %and9 = and i32 %conv8, 16
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else
  %10 = load i8, i8* %c, align 1
  %11 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr12, i8** %dest.addr, align 8
  store i8 %10, i8* %11, align 1
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %12 = load i8*, i8** %dest.addr, align 8
  %13 = load i8, i8* %c, align 1
  %conv14 = zext i8 %13 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 %conv14) #3
  %14 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 4
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %dest.addr, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @_cpp_pop_context(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %context = alloca %struct.cpp_context*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8
  store %struct.cpp_context* %1, %struct.cpp_context** %context, align 8
  %2 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %2, i32 0, i32 5
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %macro2 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %4, i32 0, i32 5
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro2, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %5, i32 0, i32 5
  %6 = load i8, i8* %flags, align 1
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, -33
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, i8* %flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %buff = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %7, i32 0, i32 4
  %8 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %tobool4 = icmp ne %struct._cpp_buff* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %10 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %buff6 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %10, i32 0, i32 4
  %11 = load %struct._cpp_buff*, %struct._cpp_buff** %buff6, align 8
  call void @_cpp_release_buff(%struct.cpp_reader* %9, %struct._cpp_buff* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %12, i32 0, i32 1
  %13 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 10
  store %struct.cpp_context* %13, %struct.cpp_context** %context8, align 8
  ret void
}

declare void @_cpp_release_buff(%struct.cpp_reader*, %struct._cpp_buff*) #2

; Function Attrs: nounwind uwtable
define %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #0 {
entry:
  %retval = alloca %struct.cpp_token*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %result = alloca %struct.cpp_token*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  %context = alloca %struct.cpp_context*, align 8
  %t = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.then.55, %if.then.22, %if.then.14, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8
  store %struct.cpp_context* %1, %struct.cpp_context** %context, align 8
  %2 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %2, i32 0, i32 1
  %3 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8
  %tobool = icmp ne %struct.cpp_context* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.cond
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %4)
  store %struct.cpp_token* %call, %struct.cpp_token** %result, align 8
  br label %if.end.25

if.else:                                          ; preds = %for.cond
  %5 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %5, i32 0, i32 2
  %token = bitcast %union.utoken* %first to %struct.cpp_token**
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %7 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %last = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %7, i32 0, i32 3
  %token2 = bitcast %union.utoken* %last to %struct.cpp_token**
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token2, align 8
  %cmp = icmp ne %struct.cpp_token* %6, %8
  br i1 %cmp, label %if.then.3, label %if.else.18

if.then.3:                                        ; preds = %if.else
  %9 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %9, i32 0, i32 6
  %10 = load i8, i8* %direct_p, align 1
  %tobool4 = trunc i8 %10 to i1
  br i1 %tobool4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.then.3
  %11 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first6 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %11, i32 0, i32 2
  %token7 = bitcast %union.utoken* %first6 to %struct.cpp_token**
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token7, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %token7, align 8
  store %struct.cpp_token* %12, %struct.cpp_token** %result, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.then.3
  %13 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first9 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %13, i32 0, i32 2
  %ptoken = bitcast %union.utoken* %first9 to %struct.cpp_token***
  %14 = load %struct.cpp_token**, %struct.cpp_token*** %ptoken, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %14, i32 1
  store %struct.cpp_token** %incdec.ptr10, %struct.cpp_token*** %ptoken, align 8
  %15 = load %struct.cpp_token*, %struct.cpp_token** %14, align 8
  store %struct.cpp_token* %15, %struct.cpp_token** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.5
  %16 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %16, i32 0, i32 3
  %17 = load i8, i8* %flags, align 1
  %conv = zext i8 %17 to i32
  %and = and i32 %conv, 8
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  call void @paste_all_tokens(%struct.cpp_reader* %18, %struct.cpp_token* %19)
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 0
  %21 = load i8, i8* %in_directive, align 1
  %tobool13 = icmp ne i8 %21, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  br label %for.cond

if.end.15:                                        ; preds = %if.then.12
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %call16 = call %struct.cpp_token* @padding_token(%struct.cpp_reader* %22, %struct.cpp_token* %23)
  store %struct.cpp_token* %call16, %struct.cpp_token** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  br label %if.end.24

if.else.18:                                       ; preds = %if.else
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_context(%struct.cpp_reader* %24)
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 1
  %in_directive20 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state19, i32 0, i32 0
  %26 = load i8, i8* %in_directive20, align 1
  %tobool21 = icmp ne i8 %26, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.else.18
  br label %for.cond

if.end.23:                                        ; preds = %if.else.18
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %avoid_paste = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 29
  store %struct.cpp_token* %avoid_paste, %struct.cpp_token** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %28 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %28, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp26 = icmp ne i32 %bf.cast, 56
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  br label %for.end

if.end.29:                                        ; preds = %if.end.25
  %29 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %29, i32 0, i32 4
  %node30 = bitcast %union.anon* %val to %struct.cpp_hashnode**
  %30 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node30, align 8
  store %struct.cpp_hashnode* %30, %struct.cpp_hashnode** %node, align 8
  %31 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %type31 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %31, i32 0, i32 4
  %bf.load32 = load i8, i8* %type31, align 4
  %bf.cast33 = zext i8 %bf.load32 to i32
  %cmp34 = icmp ne i32 %bf.cast33, 1
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %32 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags36 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %32, i32 0, i32 3
  %33 = load i8, i8* %flags36, align 1
  %conv37 = zext i8 %33 to i32
  %and38 = and i32 %conv37, 32
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.29
  br label %for.end

if.end.41:                                        ; preds = %lor.lhs.false
  %34 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %flags42 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %34, i32 0, i32 5
  %35 = load i8, i8* %flags42, align 1
  %conv43 = zext i8 %35 to i32
  %and44 = and i32 %conv43, 32
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.else.59, label %if.then.46

if.then.46:                                       ; preds = %if.end.41
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state47 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %36, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state47, i32 0, i32 7
  %37 = load i8, i8* %prevent_expansion, align 1
  %tobool48 = icmp ne i8 %37, 0
  br i1 %tobool48, label %if.end.58, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.46
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %39 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call49 = call i32 @enter_macro_context(%struct.cpp_reader* %38, %struct.cpp_hashnode* %39)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %land.lhs.true
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state52 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %40, i32 0, i32 1
  %in_directive53 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state52, i32 0, i32 0
  %41 = load i8, i8* %in_directive53, align 1
  %tobool54 = icmp ne i8 %41, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.51
  br label %for.cond

if.end.56:                                        ; preds = %if.then.51
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %43 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %call57 = call %struct.cpp_token* @padding_token(%struct.cpp_reader* %42, %struct.cpp_token* %43)
  store %struct.cpp_token* %call57, %struct.cpp_token** %retval
  br label %return

if.end.58:                                        ; preds = %land.lhs.true, %if.then.46
  br label %if.end.72

if.else.59:                                       ; preds = %if.end.41
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call60 = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %44)
  store %struct.cpp_token* %call60, %struct.cpp_token** %t, align 8
  %45 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type61 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %45, i32 0, i32 2
  %bf.load62 = load i8, i8* %type61, align 2
  %bf.cast63 = zext i8 %bf.load62 to i32
  %46 = load %struct.cpp_token*, %struct.cpp_token** %t, align 8
  %type64 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %46, i32 0, i32 2
  %47 = trunc i32 %bf.cast63 to i8
  store i8 %47, i8* %type64, align 2
  %bf.result.cast = zext i8 %47 to i32
  %48 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags65 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %48, i32 0, i32 3
  %49 = load i8, i8* %flags65, align 1
  %conv66 = zext i8 %49 to i32
  %or = or i32 %conv66, 32
  %conv67 = trunc i32 %or to i8
  %50 = load %struct.cpp_token*, %struct.cpp_token** %t, align 8
  %flags68 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %50, i32 0, i32 3
  store i8 %conv67, i8* %flags68, align 1
  %51 = load %struct.cpp_token*, %struct.cpp_token** %t, align 8
  %val69 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %51, i32 0, i32 4
  %str = bitcast %union.anon* %val69 to %struct.cpp_string*
  %52 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val70 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i32 0, i32 4
  %str71 = bitcast %union.anon* %val70 to %struct.cpp_string*
  %53 = bitcast %struct.cpp_string* %str to i8*
  %54 = bitcast %struct.cpp_string* %str71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  %55 = load %struct.cpp_token*, %struct.cpp_token** %t, align 8
  store %struct.cpp_token* %55, %struct.cpp_token** %result, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.59, %if.end.58
  br label %for.end

for.end:                                          ; preds = %if.end.72, %if.then.40, %if.then.28
  %56 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  store %struct.cpp_token* %56, %struct.cpp_token** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.56, %if.end.23, %if.end.15
  %57 = load %struct.cpp_token*, %struct.cpp_token** %retval
  ret %struct.cpp_token* %57
}

declare %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader*) #2

; Function Attrs: nounwind uwtable
define internal void @paste_all_tokens(%struct.cpp_reader* %pfile, %struct.cpp_token* %lhs) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %lhs.addr = alloca %struct.cpp_token*, align 8
  %rhs = alloca %struct.cpp_token*, align 8
  %context = alloca %struct.cpp_context*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %lhs, %struct.cpp_token** %lhs.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8
  store %struct.cpp_context* %1, %struct.cpp_context** %context, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %2, i32 0, i32 6
  %3 = load i8, i8* %direct_p, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %4, i32 0, i32 2
  %token = bitcast %union.utoken* %first to %struct.cpp_token**
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %token, align 8
  store %struct.cpp_token* %5, %struct.cpp_token** %rhs, align 8
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first2 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %6, i32 0, i32 2
  %ptoken = bitcast %union.utoken* %first2 to %struct.cpp_token***
  %7 = load %struct.cpp_token**, %struct.cpp_token*** %ptoken, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %7, i32 1
  store %struct.cpp_token** %incdec.ptr3, %struct.cpp_token*** %ptoken, align 8
  %8 = load %struct.cpp_token*, %struct.cpp_token** %7, align 8
  store %struct.cpp_token* %8, %struct.cpp_token** %rhs, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.cpp_token*, %struct.cpp_token** %rhs, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 66
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @abort() #7
  unreachable

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %rhs, align 8
  %call = call zeroext i1 @paste_tokens(%struct.cpp_reader* %10, %struct.cpp_token** %lhs.addr, %struct.cpp_token* %11)
  br i1 %call, label %if.end.12, label %if.then.6

if.then.6:                                        ; preds = %if.end.5
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %12, i32 1)
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 37
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 11
  %14 = load i32, i32* %lang, align 4
  %cmp7 = icmp ne i32 %14, 9
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.6
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %17 = load %struct.cpp_token*, %struct.cpp_token** %lhs.addr, align 8
  %call9 = call i8* @cpp_token_as_text(%struct.cpp_reader* %16, %struct.cpp_token* %17)
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load %struct.cpp_token*, %struct.cpp_token** %rhs, align 8
  %call10 = call i8* @cpp_token_as_text(%struct.cpp_reader* %18, %struct.cpp_token* %19)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), i8* %call9, i8* %call10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.then.6
  br label %do.end

if.end.12:                                        ; preds = %if.end.5
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %20 = load %struct.cpp_token*, %struct.cpp_token** %rhs, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %20, i32 0, i32 3
  %21 = load i8, i8* %flags, align 1
  %conv = zext i8 %21 to i32
  %and = and i32 %conv, 8
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.11
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %23 = load %struct.cpp_token*, %struct.cpp_token** %lhs.addr, align 8
  call void @push_token_context(%struct.cpp_reader* %22, %struct.cpp_hashnode* null, %struct.cpp_token* %23, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %source) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %source.addr = alloca %struct.cpp_token*, align 8
  %result = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token* %source, %struct.cpp_token** %source.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %result, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  store i8 66, i8* %type, align 2
  %2 = load %struct.cpp_token*, %struct.cpp_token** %source.addr, align 8
  %3 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 4
  %source1 = bitcast %union.anon* %val to %struct.cpp_token**
  store %struct.cpp_token* %2, %struct.cpp_token** %source1, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %5 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  ret %struct.cpp_token* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @enter_macro_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %macro = alloca %struct.cpp_macro*, align 8
  %buff = alloca %struct._cpp_buff*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 14
  store i8 0, i8* %mi_valid, align 1
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 1
  %angled_headers = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 2
  store i8 0, i8* %angled_headers, align 1
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 5
  %3 = load i8, i8* %flags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.42, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %4, i32 0, i32 6
  %macro1 = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %5 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  store %struct.cpp_macro* %5, %struct.cpp_macro** %macro, align 8
  %6 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i32 0, i32 5
  %bf.load = load i8, i8* %fun_like, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.then.3, label %if.end.32

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 1
  %prevent_expansion = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state4, i32 0, i32 7
  %8 = load i8, i8* %prevent_expansion, align 1
  %inc = add i8 %8, 1
  store i8 %inc, i8* %prevent_expansion, align 1
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 19
  %10 = load i32, i32* %keep_tokens, align 4
  %inc5 = add i32 %10, 1
  store i32 %inc5, i32* %keep_tokens, align 4
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 1
  %parsing_args = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state6, i32 0, i32 8
  store i8 1, i8* %parsing_args, align 1
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %13 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %call = call %struct._cpp_buff* @funlike_invocation_p(%struct.cpp_reader* %12, %struct.cpp_hashnode* %13)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %buff, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 1
  %parsing_args8 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state7, i32 0, i32 8
  store i8 0, i8* %parsing_args8, align 1
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %keep_tokens9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 19
  %16 = load i32, i32* %keep_tokens9, align 4
  %dec = add i32 %16, -1
  store i32 %dec, i32* %keep_tokens9, align 4
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 1
  %prevent_expansion11 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state10, i32 0, i32 7
  %18 = load i8, i8* %prevent_expansion11, align 1
  %dec12 = add i8 %18, -1
  store i8 %dec12, i8* %prevent_expansion11, align 1
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cmp = icmp eq %struct._cpp_buff* %19, null
  br i1 %cmp, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.then.3
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 33
  %21 = load i8, i8* %warn_traditional, align 1
  %conv15 = zext i8 %21 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.14
  %22 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value17 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %22, i32 0, i32 6
  %macro18 = bitcast %union.anon.0* %value17 to %struct.cpp_macro**
  %23 = load %struct.cpp_macro*, %struct.cpp_macro** %macro18, align 8
  %syshdr = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %23, i32 0, i32 5
  %bf.load19 = load i8, i8* %syshdr, align 2
  %bf.lshr = lshr i8 %bf.load19, 2
  %bf.clear20 = and i8 %bf.lshr, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  %tobool22 = icmp ne i32 %bf.cast21, 0
  br i1 %tobool22, label %if.end, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %25, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %26 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %24, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i32 0, i32 0), i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %land.lhs.true, %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.3
  %27 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value25 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %27, i32 0, i32 6
  %macro26 = bitcast %union.anon.0* %value25 to %struct.cpp_macro**
  %28 = load %struct.cpp_macro*, %struct.cpp_macro** %macro26, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %28, i32 0, i32 4
  %29 = load i16, i16* %paramc, align 2
  %conv27 = zext i16 %29 to i32
  %cmp28 = icmp sgt i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.24
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %31 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %32 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %32, i32 0, i32 1
  %33 = load i8*, i8** %base, align 8
  %34 = bitcast i8* %33 to %struct.macro_arg*
  call void @replace_args(%struct.cpp_reader* %30, %struct.cpp_hashnode* %31, %struct.macro_arg* %34)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.24
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %36 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  call void @_cpp_release_buff(%struct.cpp_reader* %35, %struct._cpp_buff* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %37 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags33 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %37, i32 0, i32 5
  %38 = load i8, i8* %flags33, align 1
  %conv34 = zext i8 %38 to i32
  %or = or i32 %conv34, 32
  %conv35 = trunc i32 %or to i8
  store i8 %conv35, i8* %flags33, align 1
  %39 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc36 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %39, i32 0, i32 4
  %40 = load i16, i16* %paramc36, align 2
  %conv37 = zext i16 %40 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.32
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %42 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %43 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %43, i32 0, i32 1
  %44 = load %struct.cpp_token*, %struct.cpp_token** %expansion, align 8
  %45 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %45, i32 0, i32 3
  %46 = load i32, i32* %count, align 4
  call void @push_token_context(%struct.cpp_reader* %41, %struct.cpp_hashnode* %42, %struct.cpp_token* %44, i32 %46)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.32
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %entry
  %47 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %48 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %call43 = call i32 @builtin_macro(%struct.cpp_reader* %47, %struct.cpp_hashnode* %48)
  store i32 %call43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.end.41, %if.end
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @cpp_sys_macro_p(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i32 0, i32 5
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro, align 8
  store %struct.cpp_hashnode* %2, %struct.cpp_hashnode** %node, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %tobool = icmp ne %struct.cpp_hashnode* %3, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %4, i32 0, i32 6
  %macro1 = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %5 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %tobool2 = icmp ne %struct.cpp_macro* %5, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %value3 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i32 0, i32 6
  %macro4 = bitcast %union.anon.0* %value3 to %struct.cpp_macro**
  %7 = load %struct.cpp_macro*, %struct.cpp_macro** %macro4, align 8
  %syshdr = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %7, i32 0, i32 5
  %bf.load = load i8, i8* %syshdr, align 2
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @cpp_scan_nooutput(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 67
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 %count) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %count.addr = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i32 0, i32 1
  %2 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8
  %cmp = icmp eq %struct.cpp_context* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %count.addr, align 4
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %lookaheads = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %4, i32 0, i32 18
  %5 = load i32, i32* %lookaheads, align 4
  %add = add i32 %5, %3
  store i32 %add, i32* %lookaheads, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load i32, i32* %count.addr, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %count.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %7, i32 0, i32 15
  %8 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 -1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token, align 8
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 15
  %10 = load %struct.cpp_token*, %struct.cpp_token** %cur_token1, align 8
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 17
  %12 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %12, i32 0, i32 2
  %13 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8
  %cmp2 = icmp eq %struct.cpp_token* %10, %13
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 17
  %15 = load %struct.tokenrun*, %struct.tokenrun** %cur_run3, align 8
  %prev4 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %15, i32 0, i32 1
  %16 = load %struct.tokenrun*, %struct.tokenrun** %prev4, align 8
  %cmp5 = icmp ne %struct.tokenrun* %16, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 17
  %18 = load %struct.tokenrun*, %struct.tokenrun** %cur_run7, align 8
  %prev8 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %18, i32 0, i32 1
  %19 = load %struct.tokenrun*, %struct.tokenrun** %prev8, align 8
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 17
  store %struct.tokenrun* %19, %struct.tokenrun** %cur_run9, align 8
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_run10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 17
  %22 = load %struct.tokenrun*, %struct.tokenrun** %cur_run10, align 8
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %22, i32 0, i32 3
  %23 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 15
  store %struct.cpp_token* %23, %struct.cpp_token** %cur_token11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.25

if.else:                                          ; preds = %entry
  %25 = load i32, i32* %count.addr, align 4
  %cmp12 = icmp ne i32 %25, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  call void @abort() #7
  unreachable

if.end.14:                                        ; preds = %if.else
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 10
  %27 = load %struct.cpp_context*, %struct.cpp_context** %context15, align 8
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %27, i32 0, i32 6
  %28 = load i8, i8* %direct_p, align 1
  %tobool16 = trunc i8 %28 to i1
  br i1 %tobool16, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.end.14
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 10
  %30 = load %struct.cpp_context*, %struct.cpp_context** %context18, align 8
  %first = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %30, i32 0, i32 2
  %token = bitcast %union.utoken* %first to %struct.cpp_token**
  %31 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 -1
  store %struct.cpp_token* %incdec.ptr19, %struct.cpp_token** %token, align 8
  br label %if.end.24

if.else.20:                                       ; preds = %if.end.14
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 10
  %33 = load %struct.cpp_context*, %struct.cpp_context** %context21, align 8
  %first22 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %33, i32 0, i32 2
  %ptoken = bitcast %union.utoken* %first22 to %struct.cpp_token***
  %34 = load %struct.cpp_token**, %struct.cpp_token*** %ptoken, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %34, i32 -1
  store %struct.cpp_token** %incdec.ptr23, %struct.cpp_token*** %ptoken, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.20, %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %while.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define void @_cpp_free_definition(%struct.cpp_hashnode* %h) #0 {
entry:
  %h.addr = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_hashnode* %h, %struct.cpp_hashnode** %h.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %h.addr, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 4
  store i8 0, i8* %type, align 4
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %h.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %1, i32 0, i32 5
  %2 = load i8, i8* %flags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, -37
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %flags, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cpp_create_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %macro = alloca %struct.cpp_macro*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %saved_cur_token = alloca %struct.cpp_token*, align 8
  %ctoken = alloca %struct.cpp_token*, align 8
  %i = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  store i32 1, i32* %ok, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i8* @_cpp_aligned_alloc(%struct.cpp_reader* %0, i64 32)
  %1 = bitcast i8* %call to %struct.cpp_macro*
  store %struct.cpp_macro* %1, %struct.cpp_macro** %macro, align 8
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 5
  %3 = load i32, i32* %directive_line, align 4
  %4 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %line = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %4, i32 0, i32 2
  store i32 %3, i32* %line, align 4
  %5 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %5, i32 0, i32 0
  store %struct.cpp_hashnode** null, %struct.cpp_hashnode*** %params, align 8
  %6 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i32 0, i32 4
  store i16 0, i16* %paramc, align 2
  %7 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %7, i32 0, i32 5
  %bf.load = load i8, i8* %variadic, align 2
  %bf.clear = and i8 %bf.load, -3
  store i8 %bf.clear, i8* %variadic, align 2
  %8 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %8, i32 0, i32 3
  store i32 0, i32* %count, align 4
  %9 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %9, i32 0, i32 5
  %bf.load1 = load i8, i8* %fun_like, align 2
  %bf.clear2 = and i8 %bf.load1, -2
  store i8 %bf.clear2, i8* %fun_like, align 2
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call3 = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %10)
  store %struct.cpp_token* %call3, %struct.cpp_token** %ctoken, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %ctoken, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %11, i32 0, i32 2
  %bf.load4 = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load4 to i32
  %cmp = icmp eq i32 %bf.cast, 22
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.cpp_token*, %struct.cpp_token** %ctoken, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 3
  %13 = load i8, i8* %flags, align 1
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %15 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %call5 = call i32 @parse_params(%struct.cpp_reader* %14, %struct.cpp_macro* %15)
  store i32 %call5, i32* %ok, align 4
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %16, i32 0, i32 6
  %17 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %17, i32 0, i32 2
  %18 = load i8*, i8** %cur, align 8
  %19 = bitcast i8* %18 to %struct.cpp_hashnode**
  %20 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params6 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %20, i32 0, i32 0
  store %struct.cpp_hashnode** %19, %struct.cpp_hashnode*** %params6, align 8
  %21 = load i32, i32* %ok, align 4
  %tobool7 = icmp ne i32 %21, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then
  br label %cleanup2

if.end:                                           ; preds = %if.then
  %22 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc9 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %22, i32 0, i32 4
  %23 = load i16, i16* %paramc9, align 2
  %idxprom = zext i16 %23 to i64
  %24 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params10 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %24, i32 0, i32 0
  %25 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params10, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %25, i64 %idxprom
  %26 = bitcast %struct.cpp_hashnode** %arrayidx to i8*
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 6
  %28 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff11, align 8
  %cur12 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %28, i32 0, i32 2
  store i8* %26, i8** %cur12, align 8
  %29 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like13 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %29, i32 0, i32 5
  %bf.load14 = load i8, i8* %fun_like13, align 2
  %bf.clear15 = and i8 %bf.load14, -2
  %bf.set = or i8 %bf.clear15, 1
  store i8 %bf.set, i8* %fun_like13, align 2
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %entry
  %30 = load %struct.cpp_token*, %struct.cpp_token** %ctoken, align 8
  %type16 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %30, i32 0, i32 2
  %bf.load17 = load i8, i8* %type16, align 2
  %bf.cast18 = zext i8 %bf.load17 to i32
  %cmp19 = icmp ne i32 %bf.cast18, 67
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %if.else
  %31 = load %struct.cpp_token*, %struct.cpp_token** %ctoken, align 8
  %flags22 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %31, i32 0, i32 3
  %32 = load i8, i8* %flags22, align 1
  %conv23 = zext i8 %32 to i32
  %and24 = and i32 %conv23, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.21
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.21, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 15
  %35 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  store %struct.cpp_token* %35, %struct.cpp_token** %saved_cur_token, align 8
  %36 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like29 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %36, i32 0, i32 5
  %bf.load30 = load i8, i8* %fun_like29, align 2
  %bf.clear31 = and i8 %bf.load30, 1
  %bf.cast32 = zext i8 %bf.clear31 to i32
  %tobool33 = icmp ne i32 %bf.cast32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.28
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %38 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %call35 = call %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %37, %struct.cpp_macro* %38)
  store %struct.cpp_token* %call35, %struct.cpp_token** %token, align 8
  br label %if.end.38

if.else.36:                                       ; preds = %if.end.28
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %40 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %call37 = call %struct.cpp_token* @alloc_expansion_token(%struct.cpp_reader* %39, %struct.cpp_macro* %40)
  store %struct.cpp_token* %call37, %struct.cpp_token** %token, align 8
  %41 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %42 = load %struct.cpp_token*, %struct.cpp_token** %ctoken, align 8
  %43 = bitcast %struct.cpp_token* %41 to i8*
  %44 = bitcast %struct.cpp_token* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 24, i32 8, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.34
  br label %for.cond

for.cond:                                         ; preds = %if.end.122, %if.end.38
  %45 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count39 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %45, i32 0, i32 3
  %46 = load i32, i32* %count39, align 4
  %cmp40 = icmp ugt i32 %46, 1
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.86

land.lhs.true.42:                                 ; preds = %for.cond
  %47 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %arrayidx43 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %47, i64 -1
  %type44 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx43, i32 0, i32 2
  %bf.load45 = load i8, i8* %type44, align 2
  %bf.cast46 = zext i8 %bf.load45 to i32
  %cmp47 = icmp eq i32 %bf.cast46, 40
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.86

land.lhs.true.49:                                 ; preds = %land.lhs.true.42
  %48 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like50 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %48, i32 0, i32 5
  %bf.load51 = load i8, i8* %fun_like50, align 2
  %bf.clear52 = and i8 %bf.load51, 1
  %bf.cast53 = zext i8 %bf.clear52 to i32
  %tobool54 = icmp ne i32 %bf.cast53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.86

if.then.55:                                       ; preds = %land.lhs.true.49
  %49 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type56 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %49, i32 0, i32 2
  %bf.load57 = load i8, i8* %type56, align 2
  %bf.cast58 = zext i8 %bf.load57 to i32
  %cmp59 = icmp eq i32 %bf.cast58, 65
  br i1 %cmp59, label %if.then.61, label %if.else.80

if.then.61:                                       ; preds = %if.then.55
  %50 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags62 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %50, i32 0, i32 3
  %51 = load i8, i8* %flags62, align 1
  %conv63 = zext i8 %51 to i32
  %and64 = and i32 %conv63, -2
  %conv65 = trunc i32 %and64 to i8
  store i8 %conv65, i8* %flags62, align 1
  %52 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags66 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i32 0, i32 3
  %53 = load i8, i8* %flags66, align 1
  %conv67 = zext i8 %53 to i32
  %or = or i32 %conv67, 4
  %conv68 = trunc i32 %or to i8
  store i8 %conv68, i8* %flags66, align 1
  %54 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %arrayidx69 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %54, i64 -1
  %flags70 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx69, i32 0, i32 3
  %55 = load i8, i8* %flags70, align 1
  %conv71 = zext i8 %55 to i32
  %and72 = and i32 %conv71, 1
  %56 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags73 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %56, i32 0, i32 3
  %57 = load i8, i8* %flags73, align 1
  %conv74 = zext i8 %57 to i32
  %or75 = or i32 %conv74, %and72
  %conv76 = trunc i32 %or75 to i8
  store i8 %conv76, i8* %flags73, align 1
  %58 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %arrayidx77 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %58, i64 -1
  %59 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %arrayidx78 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %59, i64 0
  %60 = bitcast %struct.cpp_token* %arrayidx77 to i8*
  %61 = bitcast %struct.cpp_token* %arrayidx78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 24, i32 8, i1 false)
  %62 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count79 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %62, i32 0, i32 3
  %63 = load i32, i32* %count79, align 4
  %dec = add i32 %63, -1
  store i32 %dec, i32* %count79, align 4
  br label %if.end.85

if.else.80:                                       ; preds = %if.then.55
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %64, i32 0, i32 37
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 11
  %65 = load i32, i32* %lang, align 4
  %cmp81 = icmp ne i32 %65, 9
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.80
  store i32 0, i32* %ok, align 4
  %66 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  br label %cleanup1

if.end.84:                                        ; preds = %if.else.80
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.61
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.49, %land.lhs.true.42, %for.cond
  %67 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type87 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %67, i32 0, i32 2
  %bf.load88 = load i8, i8* %type87, align 2
  %bf.cast89 = zext i8 %bf.load88 to i32
  %cmp90 = icmp eq i32 %bf.cast89, 67
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.86
  br label %for.end

if.end.93:                                        ; preds = %if.end.86
  %68 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type94 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %68, i32 0, i32 2
  %bf.load95 = load i8, i8* %type94, align 2
  %bf.cast96 = zext i8 %bf.load95 to i32
  %cmp97 = icmp eq i32 %bf.cast96, 41
  br i1 %cmp97, label %if.then.99, label %if.end.122

if.then.99:                                       ; preds = %if.end.93
  %69 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count100 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %69, i32 0, i32 3
  %70 = load i32, i32* %count100, align 4
  %dec101 = add i32 %70, -1
  store i32 %dec101, i32* %count100, align 4
  %cmp102 = icmp ugt i32 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.99
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %72 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %call105 = call %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %71, %struct.cpp_macro* %72)
  store %struct.cpp_token* %call105, %struct.cpp_token** %token, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.99
  %73 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count107 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %73, i32 0, i32 3
  %74 = load i32, i32* %count107, align 4
  %cmp108 = icmp eq i32 %74, 0
  br i1 %cmp108, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.106
  %75 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type110 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %75, i32 0, i32 2
  %bf.load111 = load i8, i8* %type110, align 2
  %bf.cast112 = zext i8 %bf.load111 to i32
  %cmp113 = icmp eq i32 %bf.cast112, 67
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false, %if.end.106
  store i32 0, i32* %ok, align 4
  %76 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0))
  br label %cleanup1

if.end.116:                                       ; preds = %lor.lhs.false
  %77 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %arrayidx117 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %77, i64 -1
  %flags118 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx117, i32 0, i32 3
  %78 = load i8, i8* %flags118, align 1
  %conv119 = zext i8 %78 to i32
  %or120 = or i32 %conv119, 8
  %conv121 = trunc i32 %or120 to i8
  store i8 %conv121, i8* %flags118, align 1
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.116, %if.end.93
  %79 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %80 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %call123 = call %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %79, %struct.cpp_macro* %80)
  store %struct.cpp_token* %call123, %struct.cpp_token** %token, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.92
  %81 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff124 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %81, i32 0, i32 6
  %82 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff124, align 8
  %cur125 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %82, i32 0, i32 2
  %83 = load i8*, i8** %cur125, align 8
  %84 = bitcast i8* %83 to %struct.cpp_token*
  %85 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %85, i32 0, i32 1
  store %struct.cpp_token* %84, %struct.cpp_token** %expansion, align 8
  %86 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count126 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %86, i32 0, i32 3
  %87 = load i32, i32* %count126, align 4
  %dec127 = add i32 %87, -1
  store i32 %dec127, i32* %count126, align 4
  %88 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count128 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %88, i32 0, i32 3
  %89 = load i32, i32* %count128, align 4
  %tobool129 = icmp ne i32 %89, 0
  br i1 %tobool129, label %if.then.130, label %if.end.137

if.then.130:                                      ; preds = %for.end
  %90 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion131 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %90, i32 0, i32 1
  %91 = load %struct.cpp_token*, %struct.cpp_token** %expansion131, align 8
  %arrayidx132 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %91, i64 0
  %flags133 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx132, i32 0, i32 3
  %92 = load i8, i8* %flags133, align 1
  %conv134 = zext i8 %92 to i32
  %and135 = and i32 %conv134, -2
  %conv136 = trunc i32 %and135 to i8
  store i8 %conv136, i8* %flags133, align 1
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.130, %for.end
  %93 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count138 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %93, i32 0, i32 3
  %94 = load i32, i32* %count138, align 4
  %idxprom139 = zext i32 %94 to i64
  %95 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion140 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %95, i32 0, i32 1
  %96 = load %struct.cpp_token*, %struct.cpp_token** %expansion140, align 8
  %arrayidx141 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %96, i64 %idxprom139
  %97 = bitcast %struct.cpp_token* %arrayidx141 to i8*
  %98 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff142 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %98, i32 0, i32 6
  %99 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff142, align 8
  %cur143 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %99, i32 0, i32 2
  store i8* %97, i8** %cur143, align 8
  %100 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count144 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %100, i32 0, i32 3
  %101 = load i32, i32* %count144, align 4
  %cmp145 = icmp eq i32 %101, 1
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.172

land.lhs.true.147:                                ; preds = %if.end.137
  %102 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like148 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %102, i32 0, i32 5
  %bf.load149 = load i8, i8* %fun_like148, align 2
  %bf.clear150 = and i8 %bf.load149, 1
  %bf.cast151 = zext i8 %bf.clear150 to i32
  %tobool152 = icmp ne i32 %bf.cast151, 0
  br i1 %tobool152, label %if.end.172, label %land.lhs.true.153

land.lhs.true.153:                                ; preds = %land.lhs.true.147
  %103 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion154 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %103, i32 0, i32 1
  %104 = load %struct.cpp_token*, %struct.cpp_token** %expansion154, align 8
  %arrayidx155 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %104, i64 0
  %type156 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx155, i32 0, i32 2
  %bf.load157 = load i8, i8* %type156, align 2
  %bf.cast158 = zext i8 %bf.load157 to i32
  %cmp159 = icmp eq i32 %bf.cast158, 56
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.172

land.lhs.true.161:                                ; preds = %land.lhs.true.153
  %105 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion162 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %105, i32 0, i32 1
  %106 = load %struct.cpp_token*, %struct.cpp_token** %expansion162, align 8
  %arrayidx163 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %106, i64 0
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx163, i32 0, i32 4
  %node164 = bitcast %union.anon* %val to %struct.cpp_hashnode**
  %107 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node164, align 8
  %108 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %cmp165 = icmp eq %struct.cpp_hashnode* %107, %108
  br i1 %cmp165, label %if.then.167, label %if.end.172

if.then.167:                                      ; preds = %land.lhs.true.161
  %109 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags168 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %109, i32 0, i32 5
  %110 = load i8, i8* %flags168, align 1
  %conv169 = zext i8 %110 to i32
  %or170 = or i32 %conv169, 32
  %conv171 = trunc i32 %or170 to i8
  store i8 %conv171, i8* %flags168, align 1
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.167, %land.lhs.true.161, %land.lhs.true.153, %land.lhs.true.147, %if.end.137
  %111 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %111, i32 0, i32 3
  %112 = load %struct.line_map*, %struct.line_map** %map, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %112, i32 0, i32 5
  %113 = load i8, i8* %sysp, align 1
  %conv173 = zext i8 %113 to i32
  %cmp174 = icmp ne i32 %conv173, 0
  %conv175 = zext i1 %cmp174 to i32
  %114 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %syshdr = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %114, i32 0, i32 5
  %115 = trunc i32 %conv175 to i8
  %bf.load176 = load i8, i8* %syshdr, align 2
  %bf.value = and i8 %115, 1
  %bf.shl = shl i8 %bf.value, 2
  %bf.clear177 = and i8 %bf.load176, -5
  %bf.set178 = or i8 %bf.clear177, %bf.shl
  store i8 %bf.set178, i8* %syshdr, align 2
  %bf.result.cast = zext i8 %bf.value to i32
  %116 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %type179 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %116, i32 0, i32 4
  %bf.load180 = load i8, i8* %type179, align 4
  %bf.cast181 = zext i8 %bf.load180 to i32
  %cmp182 = icmp ne i32 %bf.cast181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.204

if.then.184:                                      ; preds = %if.end.172
  %117 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %118 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %call185 = call i32 @warn_of_redefinition(%struct.cpp_hashnode* %117, %struct.cpp_macro* %118)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then.187, label %if.end.203

if.then.187:                                      ; preds = %if.then.184
  %119 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %120 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %directive_line188 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %120, i32 0, i32 5
  %121 = load i32, i32* %directive_line188, align 4
  %122 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %122, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %123 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_pedwarn_with_line(%struct.cpp_reader* %119, i32 %121, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %123)
  %124 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %type189 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %124, i32 0, i32 4
  %bf.load190 = load i8, i8* %type189, align 4
  %bf.cast191 = zext i8 %bf.load190 to i32
  %cmp192 = icmp eq i32 %bf.cast191, 1
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.202

land.lhs.true.194:                                ; preds = %if.then.187
  %125 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags195 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %125, i32 0, i32 5
  %126 = load i8, i8* %flags195, align 1
  %conv196 = zext i8 %126 to i32
  %and197 = and i32 %conv196, 4
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.end.202, label %if.then.199

if.then.199:                                      ; preds = %land.lhs.true.194
  %127 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %128 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %128, i32 0, i32 6
  %macro200 = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %129 = load %struct.cpp_macro*, %struct.cpp_macro** %macro200, align 8
  %line201 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %129, i32 0, i32 2
  %130 = load i32, i32* %line201, align 4
  call void (%struct.cpp_reader*, i32, i32, i8*, ...) @cpp_pedwarn_with_line(%struct.cpp_reader* %127, i32 %130, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %land.lhs.true.194, %if.then.187
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.184
  %131 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  call void @_cpp_free_definition(%struct.cpp_hashnode* %131)
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.172
  %132 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %type205 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %132, i32 0, i32 4
  store i8 1, i8* %type205, align 4
  %133 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %134 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value206 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %134, i32 0, i32 6
  %macro207 = bitcast %union.anon.0* %value206 to %struct.cpp_macro**
  store %struct.cpp_macro* %133, %struct.cpp_macro** %macro207, align 8
  %135 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident208 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %135, i32 0, i32 0
  %str209 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident208, i32 0, i32 1
  %136 = load i8*, i8** %str209, align 8
  %call210 = call i32 @ustrncmp(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i64 7)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.end.217, label %if.then.212

if.then.212:                                      ; preds = %if.end.204
  %137 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags213 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %137, i32 0, i32 5
  %138 = load i8, i8* %flags213, align 1
  %conv214 = zext i8 %138 to i32
  %or215 = or i32 %conv214, 16
  %conv216 = trunc i32 %or215 to i8
  store i8 %conv216, i8* %flags213, align 1
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.212, %if.end.204
  br label %cleanup1

cleanup1:                                         ; preds = %if.end.217, %if.then.115, %if.then.83
  %139 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token218 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %139, i32 0, i32 15
  %140 = load %struct.cpp_token*, %struct.cpp_token** %cur_token218, align 8
  %arrayidx219 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %140, i64 -1
  %type220 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx219, i32 0, i32 2
  %bf.load221 = load i8, i8* %type220, align 2
  %bf.cast222 = zext i8 %bf.load221 to i32
  %141 = load %struct.cpp_token*, %struct.cpp_token** %saved_cur_token, align 8
  %arrayidx223 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %141, i64 -1
  %type224 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx223, i32 0, i32 2
  %142 = trunc i32 %bf.cast222 to i8
  store i8 %142, i8* %type224, align 2
  %bf.result.cast225 = zext i8 %142 to i32
  %143 = load %struct.cpp_token*, %struct.cpp_token** %saved_cur_token, align 8
  %144 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token226 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %144, i32 0, i32 15
  store %struct.cpp_token* %143, %struct.cpp_token** %cur_token226, align 8
  br label %cleanup2

cleanup2:                                         ; preds = %cleanup1, %if.then.8
  %145 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %145, i32 0, i32 1
  %va_args_ok = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 5
  store i8 0, i8* %va_args_ok, align 1
  %146 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc227 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %146, i32 0, i32 4
  %147 = load i16, i16* %paramc227, align 2
  %conv228 = zext i16 %147 to i32
  store i32 %conv228, i32* %i, align 4
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.body, %cleanup2
  %148 = load i32, i32* %i, align 4
  %dec230 = add i32 %148, -1
  store i32 %dec230, i32* %i, align 4
  %cmp231 = icmp ugt i32 %148, 0
  br i1 %cmp231, label %for.body, label %for.end.236

for.body:                                         ; preds = %for.cond.229
  %149 = load i32, i32* %i, align 4
  %idxprom233 = zext i32 %149 to i64
  %150 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params234 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %150, i32 0, i32 0
  %151 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params234, align 8
  %arrayidx235 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %151, i64 %idxprom233
  %152 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx235, align 8
  %arg_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %152, i32 0, i32 1
  store i16 0, i16* %arg_index, align 2
  br label %for.cond.229

for.end.236:                                      ; preds = %for.cond.229
  %153 = load i32, i32* %ok, align 4
  ret i32 %153
}

declare i8* @_cpp_aligned_alloc(%struct.cpp_reader*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_params(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_macro*, align 8
  %prev_ident = alloca i32, align 4
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_macro* %macro, %struct.cpp_macro** %macro.addr, align 8
  store i32 0, i32* %prev_ident, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.14, %if.end.5, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  switch i32 %bf.cast, label %sw.default [
    i32 56, label %sw.bb
    i32 23, label %sw.bb.6
    i32 21, label %sw.bb.11
    i32 47, label %sw.bb.15
    i32 67, label %sw.bb.40
  ]

sw.default:                                       ; preds = %for.cond
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call1 = call i8* @cpp_token_as_text(%struct.cpp_reader* %3, %struct.cpp_token* %4)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i32 0, i32 0), i8* %call1)
  store i32 0, i32* %retval
  br label %return

sw.bb:                                            ; preds = %for.cond
  %5 = load i32, i32* %prev_ident, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  store i32 1, i32* %prev_ident, align 4
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %8 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 4
  %node = bitcast %union.anon* %val to %struct.cpp_hashnode**
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %call2 = call i32 @save_parameter(%struct.cpp_reader* %7, %struct.cpp_macro* %8, %struct.cpp_hashnode* %10)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %for.cond

sw.bb.6:                                          ; preds = %for.cond
  %11 = load i32, i32* %prev_ident, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %12 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %12, i32 0, i32 4
  %13 = load i16, i16* %paramc, align 2
  %conv = zext i16 %13 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %sw.bb.6
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %for.cond, %if.end.10
  %14 = load i32, i32* %prev_ident, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb.11
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %sw.bb.11
  store i32 0, i32* %prev_ident, align 4
  br label %for.cond

sw.bb.15:                                         ; preds = %for.cond
  %16 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %16, i32 0, i32 5
  %bf.load16 = load i8, i8* %variadic, align 2
  %bf.clear = and i8 %bf.load16, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %variadic, align 2
  %17 = load i32, i32* %prev_ident, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %if.else, label %if.then.18

if.then.18:                                       ; preds = %sw.bb.15
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %20, i32 0, i32 38
  %n__VA_ARGS__ = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes, i32 0, i32 4
  %21 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8
  %call19 = call i32 @save_parameter(%struct.cpp_reader* %18, %struct.cpp_macro* %19, %struct.cpp_hashnode* %21)
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i32 0, i32 1
  %va_args_ok = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 5
  store i8 1, i8* %va_args_ok, align 1
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 37
  %c99 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 41
  %24 = load i8, i8* %c99, align 1
  %tobool20 = icmp ne i8 %24, 0
  br i1 %tobool20, label %if.end.25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.18
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts21, i32 0, i32 42
  %26 = load i8, i8* %pedantic, align 1
  %conv22 = zext i8 %26 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true, %if.then.18
  br label %if.end.31

if.else:                                          ; preds = %sw.bb.15
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts26 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 37
  %pedantic27 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts26, i32 0, i32 42
  %29 = load i8, i8* %pedantic27, align 1
  %tobool28 = icmp ne i8 %29, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.25
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call32 = call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %31)
  store %struct.cpp_token* %call32, %struct.cpp_token** %token, align 8
  %32 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type33 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %32, i32 0, i32 2
  %bf.load34 = load i8, i8* %type33, align 2
  %bf.cast35 = zext i8 %bf.load34 to i32
  %cmp36 = icmp eq i32 %bf.cast35, 23
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.31
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.31
  br label %sw.bb.40

sw.bb.40:                                         ; preds = %for.cond, %if.end.39
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.bb.40, %if.then.38, %if.then.13, %if.then.9, %if.then.4, %if.then, %sw.default
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare void @cpp_pedwarn(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_macro*, align 8
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_macro* %macro, %struct.cpp_macro** %macro.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %call = call %struct.cpp_token* @alloc_expansion_token(%struct.cpp_reader* %0, %struct.cpp_macro* %1)
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 15
  store %struct.cpp_token* %call, %struct.cpp_token** %cur_token, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %3)
  store %struct.cpp_token* %call1, %struct.cpp_token** %token, align 8
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 56
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 4
  %node = bitcast %union.anon* %val to %struct.cpp_hashnode**
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %arg_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i32 0, i32 1
  %7 = load i16, i16* %arg_index, align 2
  %conv = zext i16 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  store i8 65, i8* %type2, align 2
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 4
  %node4 = bitcast %union.anon* %val3 to %struct.cpp_hashnode**
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node4, align 8
  %arg_index5 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i32 0, i32 1
  %11 = load i16, i16* %arg_index5, align 2
  %conv6 = zext i16 %11 to i32
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val7 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 4
  %arg_no = bitcast %union.anon* %val7 to i32*
  store i32 %conv6, i32* %arg_no, align 4
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 37
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 33
  %14 = load i8, i8* %warn_traditional, align 1
  %conv8 = zext i8 %14 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %if.else
  %15 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %15, i32 0, i32 4
  %16 = load i16, i16* %paramc, align 2
  %conv11 = zext i16 %16 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %17 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type15 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %17, i32 0, i32 2
  %bf.load16 = load i8, i8* %type15, align 2
  %bf.cast17 = zext i8 %bf.load16 to i32
  %cmp18 = icmp eq i32 %bf.cast17, 61
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14
  %18 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type20 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %18, i32 0, i32 2
  %bf.load21 = load i8, i8* %type20, align 2
  %bf.cast22 = zext i8 %bf.load21 to i32
  %cmp23 = icmp eq i32 %bf.cast22, 58
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %lor.lhs.false, %land.lhs.true.14
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %20 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %21 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val26 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 4
  %str = bitcast %union.anon* %val26 to %struct.cpp_string*
  call void @check_trad_stringification(%struct.cpp_reader* %19, %struct.cpp_macro* %20, %struct.cpp_string* %str)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %lor.lhs.false, %land.lhs.true.10, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %22 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  ret %struct.cpp_token* %22
}

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @alloc_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_macro*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_macro* %macro, %struct.cpp_macro** %macro.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 6
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i32 0, i32 3
  %2 = load i8*, i8** %limit, align 8
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 6
  %4 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff1, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %4, i32 0, i32 2
  %5 = load i8*, i8** %cur, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i32 0, i32 3
  %7 = load i32, i32* %count, align 4
  %add = add i32 %7, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 24
  %cmp = icmp ult i64 %sub.ptr.sub, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 6
  call void @_cpp_extend_buff(%struct.cpp_reader* %8, %struct._cpp_buff** %a_buff3, i64 24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %count4 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %10, i32 0, i32 3
  %11 = load i32, i32* %count4, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %count4, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 6
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff5, align 8
  %cur6 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %13, i32 0, i32 2
  %14 = load i8*, i8** %cur6, align 8
  %15 = bitcast i8* %14 to %struct.cpp_token*
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i64 %idxprom
  ret %struct.cpp_token* %arrayidx
}

declare void @cpp_error(%struct.cpp_reader*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @warn_of_redefinition(%struct.cpp_hashnode* %node, %struct.cpp_macro* %macro2) #0 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %macro2.addr = alloca %struct.cpp_macro*, align 8
  %macro1 = alloca %struct.cpp_macro*, align 8
  %i = alloca i32, align 4
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  store %struct.cpp_macro* %macro2, %struct.cpp_macro** %macro2.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 5
  %1 = load i8, i8* %flags, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 6
  %macro = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %3 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  store %struct.cpp_macro* %3, %struct.cpp_macro** %macro1, align 8
  %4 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2.addr, align 8
  %count1 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %8, i32 0, i32 4
  %9 = load i16, i16* %paramc, align 2
  %conv3 = zext i16 %9 to i32
  %10 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2.addr, align 8
  %paramc4 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %10, i32 0, i32 4
  %11 = load i16, i16* %paramc4, align 2
  %conv5 = zext i16 %11 to i32
  %cmp6 = icmp ne i32 %conv3, %conv5
  br i1 %cmp6, label %if.then.26, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %12 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %12, i32 0, i32 5
  %bf.load = load i8, i8* %fun_like, align 2
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %13 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2.addr, align 8
  %fun_like9 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %13, i32 0, i32 5
  %bf.load10 = load i8, i8* %fun_like9, align 2
  %bf.clear11 = and i8 %bf.load10, 1
  %bf.cast12 = zext i8 %bf.clear11 to i32
  %cmp13 = icmp ne i32 %bf.cast, %bf.cast12
  br i1 %cmp13, label %if.then.26, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.8
  %14 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %14, i32 0, i32 5
  %bf.load16 = load i8, i8* %variadic, align 2
  %bf.lshr = lshr i8 %bf.load16, 1
  %bf.clear17 = and i8 %bf.lshr, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  %15 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2.addr, align 8
  %variadic19 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %15, i32 0, i32 5
  %bf.load20 = load i8, i8* %variadic19, align 2
  %bf.lshr21 = lshr i8 %bf.load20, 1
  %bf.clear22 = and i8 %bf.lshr21, 1
  %bf.cast23 = zext i8 %bf.clear22 to i32
  %cmp24 = icmp ne i32 %bf.cast18, %bf.cast23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.8, %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.27
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %count28 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %17, i32 0, i32 3
  %18 = load i32, i32* %count28, align 4
  %cmp29 = icmp ult i32 %16, %18
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %expansion = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %20, i32 0, i32 1
  %21 = load %struct.cpp_token*, %struct.cpp_token** %expansion, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i64 %idxprom
  %22 = load i32, i32* %i, align 4
  %idxprom31 = zext i32 %22 to i64
  %23 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2.addr, align 8
  %expansion32 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %23, i32 0, i32 1
  %24 = load %struct.cpp_token*, %struct.cpp_token** %expansion32, align 8
  %arrayidx33 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %24, i64 %idxprom31
  %call = call i32 @_cpp_equiv_tokens(%struct.cpp_token* %arrayidx, %struct.cpp_token* %arrayidx33)
  %tobool34 = icmp ne i32 %call, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.52, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %paramc38 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %27, i32 0, i32 4
  %28 = load i16, i16* %paramc38, align 2
  %conv39 = zext i16 %28 to i32
  %cmp40 = icmp ult i32 %26, %conv39
  br i1 %cmp40, label %for.body.42, label %for.end.54

for.body.42:                                      ; preds = %for.cond.37
  %29 = load i32, i32* %i, align 4
  %idxprom43 = zext i32 %29 to i64
  %30 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %30, i32 0, i32 0
  %31 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8
  %arrayidx44 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %31, i64 %idxprom43
  %32 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx44, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %33 to i64
  %34 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2.addr, align 8
  %params46 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %34, i32 0, i32 0
  %35 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params46, align 8
  %arrayidx47 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %35, i64 %idxprom45
  %36 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx47, align 8
  %cmp48 = icmp ne %struct.cpp_hashnode* %32, %36
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body.42
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %for.body.42
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %37 = load i32, i32* %i, align 4
  %inc53 = add i32 %37, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.37

for.end.54:                                       ; preds = %for.cond.37
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.54, %if.then.50, %if.then.35, %if.then.26, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare void @cpp_pedwarn_with_line(%struct.cpp_reader*, i32, i32, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ustrncmp(i8* %s1, i8* %s2, i64 %n) #5 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* %1, i64 %2) #8
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #0 {
entry:
  %retval = alloca i8*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %macro = alloca %struct.cpp_macro*, align 8
  %buffer = alloca i8*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %param = alloca %struct.cpp_hashnode*, align 8
  %token131 = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 6
  %macro1 = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  store %struct.cpp_macro* %1, %struct.cpp_macro** %macro, align 8
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %3, i32 0, i32 5
  %4 = load i8, i8* %flags, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %type2 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i32 0, i32 4
  %bf.load3 = load i8, i8* %type2, align 4
  %bf.cast4 = zext i8 %bf.load3 to i32
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0), i32 %bf.cast4)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i32 0, i32 0
  %len5 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 0
  %8 = load i32, i32* %len5, align 4
  %add = add i32 %8, 2
  store i32 %add, i32* %len, align 4
  %9 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %9, i32 0, i32 5
  %bf.load6 = load i8, i8* %fun_like, align 2
  %bf.clear = and i8 %bf.load6, 1
  %bf.cast7 = zext i8 %bf.clear to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end
  %10 = load i32, i32* %len, align 4
  %add10 = add i32 %10, 4
  store i32 %add10, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %12, i32 0, i32 4
  %13 = load i16, i16* %paramc, align 2
  %conv11 = zext i16 %13 to i32
  %cmp12 = icmp ult i32 %11, %conv11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %15, i32 0, i32 0
  %16 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %16, i64 %idxprom
  %17 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8
  %ident14 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %17, i32 0, i32 0
  %len15 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident14, i32 0, i32 0
  %18 = load i32, i32* %len15, align 4
  %add16 = add i32 %18, 1
  %19 = load i32, i32* %len, align 4
  %add17 = add i32 %19, %add16
  store i32 %add17, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.53, %if.end.18
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %22, i32 0, i32 3
  %23 = load i32, i32* %count, align 4
  %cmp20 = icmp ult i32 %21, %23
  br i1 %cmp20, label %for.body.22, label %for.end.55

for.body.22:                                      ; preds = %for.cond.19
  %24 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %24 to i64
  %25 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %25, i32 0, i32 1
  %26 = load %struct.cpp_token*, %struct.cpp_token** %expansion, align 8
  %arrayidx24 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %26, i64 %idxprom23
  store %struct.cpp_token* %arrayidx24, %struct.cpp_token** %token, align 8
  %27 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %27, i32 0, i32 2
  %bf.load26 = load i8, i8* %type25, align 2
  %bf.cast27 = zext i8 %bf.load26 to i32
  %cmp28 = icmp eq i32 %bf.cast27, 65
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.body.22
  %28 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %28, i32 0, i32 4
  %arg_no = bitcast %union.anon* %val to i32*
  %29 = load i32, i32* %arg_no, align 4
  %sub = sub i32 %29, 1
  %idxprom31 = zext i32 %sub to i64
  %30 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params32 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %30, i32 0, i32 0
  %31 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params32, align 8
  %arrayidx33 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %31, i64 %idxprom31
  %32 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx33, align 8
  %ident34 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %32, i32 0, i32 0
  %len35 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident34, i32 0, i32 0
  %33 = load i32, i32* %len35, align 4
  %34 = load i32, i32* %len, align 4
  %add36 = add i32 %34, %33
  store i32 %add36, i32* %len, align 4
  br label %if.end.38

if.else:                                          ; preds = %for.body.22
  %35 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call = call i32 @cpp_token_len(%struct.cpp_token* %35)
  %36 = load i32, i32* %len, align 4
  %add37 = add i32 %36, %call
  store i32 %add37, i32* %len, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.30
  %37 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags39 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %37, i32 0, i32 3
  %38 = load i8, i8* %flags39, align 1
  %conv40 = zext i8 %38 to i32
  %and41 = and i32 %conv40, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.38
  %39 = load i32, i32* %len, align 4
  %inc44 = add i32 %39, 1
  store i32 %inc44, i32* %len, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.38
  %40 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags46 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %40, i32 0, i32 3
  %41 = load i8, i8* %flags46, align 1
  %conv47 = zext i8 %41 to i32
  %and48 = and i32 %conv47, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.45
  %42 = load i32, i32* %len, align 4
  %add51 = add i32 %42, 3
  store i32 %add51, i32* %len, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.45
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %43 = load i32, i32* %i, align 4
  %inc54 = add i32 %43, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.19

for.end.55:                                       ; preds = %for.cond.19
  %44 = load i32, i32* %len, align 4
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %45, i32 0, i32 24
  %46 = load i32, i32* %macro_buffer_len, align 4
  %cmp56 = icmp ugt i32 %44, %46
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %for.end.55
  %47 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %47, i32 0, i32 23
  %48 = load i8*, i8** %macro_buffer, align 8
  %49 = load i32, i32* %len, align 4
  %conv59 = zext i32 %49 to i64
  %call60 = call i8* @xrealloc(i8* %48, i64 %conv59)
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer61 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %50, i32 0, i32 23
  store i8* %call60, i8** %macro_buffer61, align 8
  %51 = load i32, i32* %len, align 4
  %52 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer_len62 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %52, i32 0, i32 24
  store i32 %51, i32* %macro_buffer_len62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %for.end.55
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer64 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %53, i32 0, i32 23
  %54 = load i8*, i8** %macro_buffer64, align 8
  store i8* %54, i8** %buffer, align 8
  %55 = load i8*, i8** %buffer, align 8
  %56 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident65 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %56, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident65, i32 0, i32 1
  %57 = load i8*, i8** %str, align 8
  %58 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident66 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %58, i32 0, i32 0
  %len67 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident66, i32 0, i32 0
  %59 = load i32, i32* %len67, align 4
  %conv68 = zext i32 %59 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %57, i64 %conv68, i32 1, i1 false)
  %60 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident69 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %60, i32 0, i32 0
  %len70 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident69, i32 0, i32 0
  %61 = load i32, i32* %len70, align 4
  %62 = load i8*, i8** %buffer, align 8
  %idx.ext = zext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer, align 8
  %63 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %fun_like71 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %63, i32 0, i32 5
  %bf.load72 = load i8, i8* %fun_like71, align 2
  %bf.clear73 = and i8 %bf.load72, 1
  %bf.cast74 = zext i8 %bf.clear73 to i32
  %tobool75 = icmp ne i32 %bf.cast74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.121

if.then.76:                                       ; preds = %if.end.63
  %64 = load i8*, i8** %buffer, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %buffer, align 8
  store i8 40, i8* %64, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.117, %if.then.76
  %65 = load i32, i32* %i, align 4
  %66 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc78 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %66, i32 0, i32 4
  %67 = load i16, i16* %paramc78, align 2
  %conv79 = zext i16 %67 to i32
  %cmp80 = icmp ult i32 %65, %conv79
  br i1 %cmp80, label %for.body.82, label %for.end.119

for.body.82:                                      ; preds = %for.cond.77
  %68 = load i32, i32* %i, align 4
  %idxprom83 = zext i32 %68 to i64
  %69 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params84 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %69, i32 0, i32 0
  %70 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params84, align 8
  %arrayidx85 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %70, i64 %idxprom83
  %71 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx85, align 8
  store %struct.cpp_hashnode* %71, %struct.cpp_hashnode** %param, align 8
  %72 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %param, align 8
  %73 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %73, i32 0, i32 38
  %n__VA_ARGS__ = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes, i32 0, i32 4
  %74 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8
  %cmp86 = icmp ne %struct.cpp_hashnode* %72, %74
  br i1 %cmp86, label %if.then.88, label %if.end.98

if.then.88:                                       ; preds = %for.body.82
  %75 = load i8*, i8** %buffer, align 8
  %76 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %param, align 8
  %ident89 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %76, i32 0, i32 0
  %str90 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident89, i32 0, i32 1
  %77 = load i8*, i8** %str90, align 8
  %78 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %param, align 8
  %ident91 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %78, i32 0, i32 0
  %len92 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident91, i32 0, i32 0
  %79 = load i32, i32* %len92, align 4
  %conv93 = zext i32 %79 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %77, i64 %conv93, i32 1, i1 false)
  %80 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %param, align 8
  %ident94 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %80, i32 0, i32 0
  %len95 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident94, i32 0, i32 0
  %81 = load i32, i32* %len95, align 4
  %82 = load i8*, i8** %buffer, align 8
  %idx.ext96 = zext i32 %81 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %82, i64 %idx.ext96
  store i8* %add.ptr97, i8** %buffer, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.88, %for.body.82
  %83 = load i32, i32* %i, align 4
  %add99 = add i32 %83, 1
  %84 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc100 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %84, i32 0, i32 4
  %85 = load i16, i16* %paramc100, align 2
  %conv101 = zext i16 %85 to i32
  %cmp102 = icmp ult i32 %add99, %conv101
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.end.98
  %86 = load i8*, i8** %buffer, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr105, i8** %buffer, align 8
  store i8 44, i8* %86, align 1
  br label %if.end.116

if.else.106:                                      ; preds = %if.end.98
  %87 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %87, i32 0, i32 5
  %bf.load107 = load i8, i8* %variadic, align 2
  %bf.lshr = lshr i8 %bf.load107, 1
  %bf.clear108 = and i8 %bf.lshr, 1
  %bf.cast109 = zext i8 %bf.clear108 to i32
  %tobool110 = icmp ne i32 %bf.cast109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.else.106
  %88 = load i8*, i8** %buffer, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr112, i8** %buffer, align 8
  store i8 46, i8* %88, align 1
  %89 = load i8*, i8** %buffer, align 8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr113, i8** %buffer, align 8
  store i8 46, i8* %89, align 1
  %90 = load i8*, i8** %buffer, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr114, i8** %buffer, align 8
  store i8 46, i8* %90, align 1
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %if.else.106
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.104
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %91 = load i32, i32* %i, align 4
  %inc118 = add i32 %91, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.77

for.end.119:                                      ; preds = %for.cond.77
  %92 = load i8*, i8** %buffer, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr120, i8** %buffer, align 8
  store i8 41, i8* %92, align 1
  br label %if.end.121

if.end.121:                                       ; preds = %for.end.119, %if.end.63
  %93 = load i8*, i8** %buffer, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr122, i8** %buffer, align 8
  store i8 32, i8* %93, align 1
  %94 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count123 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %94, i32 0, i32 3
  %95 = load i32, i32* %count123, align 4
  %tobool124 = icmp ne i32 %95, 0
  br i1 %tobool124, label %if.then.125, label %if.end.189

if.then.125:                                      ; preds = %if.end.121
  store i32 0, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.186, %if.then.125
  %96 = load i32, i32* %i, align 4
  %97 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count127 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %97, i32 0, i32 3
  %98 = load i32, i32* %count127, align 4
  %cmp128 = icmp ult i32 %96, %98
  br i1 %cmp128, label %for.body.130, label %for.end.188

for.body.130:                                     ; preds = %for.cond.126
  %99 = load i32, i32* %i, align 4
  %idxprom132 = zext i32 %99 to i64
  %100 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion133 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %100, i32 0, i32 1
  %101 = load %struct.cpp_token*, %struct.cpp_token** %expansion133, align 8
  %arrayidx134 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %101, i64 %idxprom132
  store %struct.cpp_token* %arrayidx134, %struct.cpp_token** %token131, align 8
  %102 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %flags135 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %102, i32 0, i32 3
  %103 = load i8, i8* %flags135, align 1
  %conv136 = zext i8 %103 to i32
  %and137 = and i32 %conv136, 1
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %for.body.130
  %104 = load i8*, i8** %buffer, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr140, i8** %buffer, align 8
  store i8 32, i8* %104, align 1
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %for.body.130
  %105 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %flags142 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %105, i32 0, i32 3
  %106 = load i8, i8* %flags142, align 1
  %conv143 = zext i8 %106 to i32
  %and144 = and i32 %conv143, 4
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.end.141
  %107 = load i8*, i8** %buffer, align 8
  %incdec.ptr147 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr147, i8** %buffer, align 8
  store i8 35, i8* %107, align 1
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.end.141
  %108 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %type149 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %108, i32 0, i32 2
  %bf.load150 = load i8, i8* %type149, align 2
  %bf.cast151 = zext i8 %bf.load150 to i32
  %cmp152 = icmp eq i32 %bf.cast151, 65
  br i1 %cmp152, label %if.then.154, label %if.else.174

if.then.154:                                      ; preds = %if.end.148
  %109 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %val155 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %109, i32 0, i32 4
  %arg_no156 = bitcast %union.anon* %val155 to i32*
  %110 = load i32, i32* %arg_no156, align 4
  %sub157 = sub i32 %110, 1
  %idxprom158 = zext i32 %sub157 to i64
  %111 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params159 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %111, i32 0, i32 0
  %112 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params159, align 8
  %arrayidx160 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %112, i64 %idxprom158
  %113 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx160, align 8
  %ident161 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %113, i32 0, i32 0
  %len162 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident161, i32 0, i32 0
  %114 = load i32, i32* %len162, align 4
  store i32 %114, i32* %len, align 4
  %115 = load i8*, i8** %buffer, align 8
  %116 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %val163 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %116, i32 0, i32 4
  %arg_no164 = bitcast %union.anon* %val163 to i32*
  %117 = load i32, i32* %arg_no164, align 4
  %sub165 = sub i32 %117, 1
  %idxprom166 = zext i32 %sub165 to i64
  %118 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %params167 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %118, i32 0, i32 0
  %119 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params167, align 8
  %arrayidx168 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %119, i64 %idxprom166
  %120 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx168, align 8
  %ident169 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %120, i32 0, i32 0
  %str170 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident169, i32 0, i32 1
  %121 = load i8*, i8** %str170, align 8
  %122 = load i32, i32* %len, align 4
  %conv171 = zext i32 %122 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %121, i64 %conv171, i32 1, i1 false)
  %123 = load i32, i32* %len, align 4
  %124 = load i8*, i8** %buffer, align 8
  %idx.ext172 = zext i32 %123 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %124, i64 %idx.ext172
  store i8* %add.ptr173, i8** %buffer, align 8
  br label %if.end.176

if.else.174:                                      ; preds = %if.end.148
  %125 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %126 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %127 = load i8*, i8** %buffer, align 8
  %call175 = call i8* @cpp_spell_token(%struct.cpp_reader* %125, %struct.cpp_token* %126, i8* %127)
  store i8* %call175, i8** %buffer, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.174, %if.then.154
  %128 = load %struct.cpp_token*, %struct.cpp_token** %token131, align 8
  %flags177 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %128, i32 0, i32 3
  %129 = load i8, i8* %flags177, align 1
  %conv178 = zext i8 %129 to i32
  %and179 = and i32 %conv178, 8
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.185

if.then.181:                                      ; preds = %if.end.176
  %130 = load i8*, i8** %buffer, align 8
  %incdec.ptr182 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr182, i8** %buffer, align 8
  store i8 32, i8* %130, align 1
  %131 = load i8*, i8** %buffer, align 8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr183, i8** %buffer, align 8
  store i8 35, i8* %131, align 1
  %132 = load i8*, i8** %buffer, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr184, i8** %buffer, align 8
  store i8 35, i8* %132, align 1
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.181, %if.end.176
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %133 = load i32, i32* %i, align 4
  %inc187 = add i32 %133, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.126

for.end.188:                                      ; preds = %for.cond.126
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %if.end.121
  %134 = load i8*, i8** %buffer, align 8
  store i8 0, i8* %134, align 1
  %135 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %macro_buffer190 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %135, i32 0, i32 23
  %136 = load i8*, i8** %macro_buffer190, align 8
  store i8* %136, i8** %retval
  br label %return

return:                                           ; preds = %if.end.189, %if.then
  %137 = load i8*, i8** %retval
  ret i8* %137
}

declare void @cpp_ice(%struct.cpp_reader*, i8*, ...) #2

declare i32 @cpp_token_len(%struct.cpp_token*) #2

declare i8* @xrealloc(i8*, i64) #2

declare i8* @cpp_spell_token(%struct.cpp_reader*, %struct.cpp_token*, i8*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @paste_tokens(%struct.cpp_reader* %pfile, %struct.cpp_token** %plhs, %struct.cpp_token* %rhs) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %plhs.addr = alloca %struct.cpp_token**, align 8
  %rhs.addr = alloca %struct.cpp_token*, align 8
  %buf = alloca i8*, align 8
  %end = alloca i8*, align 8
  %lhs = alloca %struct.cpp_token*, align 8
  %len = alloca i32, align 4
  %valid = alloca i8, align 1
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_token** %plhs, %struct.cpp_token*** %plhs.addr, align 8
  store %struct.cpp_token* %rhs, %struct.cpp_token** %rhs.addr, align 8
  %0 = load %struct.cpp_token**, %struct.cpp_token*** %plhs.addr, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %0, align 8
  store %struct.cpp_token* %1, %struct.cpp_token** %lhs, align 8
  %2 = load %struct.cpp_token*, %struct.cpp_token** %lhs, align 8
  %call = call i32 @cpp_token_len(%struct.cpp_token* %2)
  %3 = load %struct.cpp_token*, %struct.cpp_token** %rhs.addr, align 8
  %call1 = call i32 @cpp_token_len(%struct.cpp_token* %3)
  %add = add i32 %call, %call1
  %add2 = add i32 %add, 1
  store i32 %add2, i32* %len, align 4
  %4 = load i32, i32* %len, align 4
  %conv = zext i32 %4 to i64
  %5 = alloca i8, i64 %conv
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %7 = load %struct.cpp_token*, %struct.cpp_token** %lhs, align 8
  %8 = load i8*, i8** %buf, align 8
  %call3 = call i8* @cpp_spell_token(%struct.cpp_reader* %6, %struct.cpp_token* %7, i8* %8)
  store i8* %call3, i8** %end, align 8
  %9 = load %struct.cpp_token*, %struct.cpp_token** %lhs, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp eq i32 %bf.cast, 7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.cpp_token*, %struct.cpp_token** %rhs.addr, align 8
  %type5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 2
  %bf.load6 = load i8, i8* %type5, align 2
  %bf.cast7 = zext i8 %bf.load6 to i32
  %cmp8 = icmp eq i32 %bf.cast7, 6
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load %struct.cpp_token*, %struct.cpp_token** %rhs.addr, align 8
  %type10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %11, i32 0, i32 2
  %bf.load11 = load i8, i8* %type10, align 2
  %bf.cast12 = zext i8 %bf.load11 to i32
  %cmp13 = icmp eq i32 %bf.cast12, 7
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  store i8 32, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load %struct.cpp_token*, %struct.cpp_token** %rhs.addr, align 8
  %15 = load i8*, i8** %end, align 8
  %call15 = call i8* @cpp_spell_token(%struct.cpp_reader* %13, %struct.cpp_token* %14, i8* %15)
  store i8* %call15, i8** %end, align 8
  %16 = load i8*, i8** %end, align 8
  store i8 0, i8* %16, align 1
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i8*, i8** %end, align 8
  %20 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call16 = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %17, i8* %18, i64 %sub.ptr.sub, i32 1, i32 1)
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 15
  %22 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %22, i64 -1
  %col = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx, i32 0, i32 1
  %23 = load i16, i16* %col, align 2
  %conv17 = zext i16 %23 to i32
  %sub = sub nsw i32 %conv17, 1
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %24, i32 0, i32 0
  %25 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %col_adjust = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %25, i32 0, i32 8
  store i32 %sub, i32* %col_adjust, align 4
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 0
  %27 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer18, align 8
  %saved_flags = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %27, i32 0, i32 9
  store i8 0, i8* %saved_flags, align 1
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call19 = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %28)
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 15
  store %struct.cpp_token* %call19, %struct.cpp_token** %cur_token20, align 8
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call21 = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %30)
  %31 = load %struct.cpp_token**, %struct.cpp_token*** %plhs.addr, align 8
  store %struct.cpp_token* %call21, %struct.cpp_token** %31, align 8
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i32 0, i32 0
  %33 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer22, align 8
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %33, i32 0, i32 0
  %34 = load i8*, i8** %cur, align 8
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer23 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 0
  %36 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer23, align 8
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %36, i32 0, i32 2
  %37 = load i8*, i8** %rlimit, align 8
  %cmp24 = icmp eq i8* %34, %37
  %frombool = zext i1 %cmp24 to i8
  store i8 %frombool, i8* %valid, align 1
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_buffer(%struct.cpp_reader* %38)
  %39 = load i8, i8* %valid, align 1
  %tobool = trunc i8 %39 to i1
  ret i1 %tobool
}

declare void @cpp_warning(%struct.cpp_reader*, i8*, ...) #2

declare i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) #2

; Function Attrs: nounwind uwtable
define internal void @push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %macro, %struct.cpp_token* %first, i32 %count) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_hashnode*, align 8
  %first.addr = alloca %struct.cpp_token*, align 8
  %count.addr = alloca i32, align 4
  %context = alloca %struct.cpp_context*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %macro, %struct.cpp_hashnode** %macro.addr, align 8
  store %struct.cpp_token* %first, %struct.cpp_token** %first.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_context* @next_context(%struct.cpp_reader* %0)
  store %struct.cpp_context* %call, %struct.cpp_context** %context, align 8
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i32 0, i32 6
  store i8 1, i8* %direct_p, align 1
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro.addr, align 8
  %3 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %macro1 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %3, i32 0, i32 5
  store %struct.cpp_hashnode* %2, %struct.cpp_hashnode** %macro1, align 8
  %4 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %buff = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %4, i32 0, i32 4
  store %struct._cpp_buff* null, %struct._cpp_buff** %buff, align 8
  %5 = load %struct.cpp_token*, %struct.cpp_token** %first.addr, align 8
  %6 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first2 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %6, i32 0, i32 2
  %token = bitcast %union.utoken* %first2 to %struct.cpp_token**
  store %struct.cpp_token* %5, %struct.cpp_token** %token, align 8
  %7 = load %struct.cpp_token*, %struct.cpp_token** %first.addr, align 8
  %8 = load i32, i32* %count.addr, align 4
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i64 %idx.ext
  %9 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %last = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %9, i32 0, i32 3
  %token3 = bitcast %union.utoken* %last to %struct.cpp_token**
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %token3, align 8
  ret void
}

declare %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader*, i8*, i64, i32, i32) #2

declare %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader*) #2

declare void @_cpp_pop_buffer(%struct.cpp_reader*) #2

; Function Attrs: nounwind uwtable
define internal %struct.cpp_context* @next_context(%struct.cpp_reader* %pfile) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %result = alloca %struct.cpp_context*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 10
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %next = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i32 0, i32 0
  %2 = load %struct.cpp_context*, %struct.cpp_context** %next, align 8
  store %struct.cpp_context* %2, %struct.cpp_context** %result, align 8
  %3 = load %struct.cpp_context*, %struct.cpp_context** %result, align 8
  %cmp = icmp eq %struct.cpp_context* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @xmalloc(i64 56)
  %4 = bitcast i8* %call to %struct.cpp_context*
  store %struct.cpp_context* %4, %struct.cpp_context** %result, align 8
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 10
  %6 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8
  %7 = load %struct.cpp_context*, %struct.cpp_context** %result, align 8
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %7, i32 0, i32 1
  store %struct.cpp_context* %6, %struct.cpp_context** %prev, align 8
  %8 = load %struct.cpp_context*, %struct.cpp_context** %result, align 8
  %next2 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %8, i32 0, i32 0
  store %struct.cpp_context* null, %struct.cpp_context** %next2, align 8
  %9 = load %struct.cpp_context*, %struct.cpp_context** %result, align 8
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i32 0, i32 10
  %11 = load %struct.cpp_context*, %struct.cpp_context** %context3, align 8
  %next4 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %11, i32 0, i32 0
  store %struct.cpp_context* %9, %struct.cpp_context** %next4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.cpp_context*, %struct.cpp_context** %result, align 8
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 10
  store %struct.cpp_context* %12, %struct.cpp_context** %context5, align 8
  %14 = load %struct.cpp_context*, %struct.cpp_context** %result, align 8
  ret %struct.cpp_context* %14
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._cpp_buff* @funlike_invocation_p(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #0 {
entry:
  %retval = alloca %struct._cpp_buff*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %padding = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  store %struct.cpp_token* null, %struct.cpp_token** %padding, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.5, %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp = icmp ne i32 %bf.cast, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load %struct.cpp_token*, %struct.cpp_token** %padding, align 8
  %cmp1 = icmp eq %struct.cpp_token* %2, null
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.cpp_token*, %struct.cpp_token** %padding, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 3
  %4 = load i8, i8* %flags, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 4
  %source = bitcast %union.anon* %val to %struct.cpp_token**
  %6 = load %struct.cpp_token*, %struct.cpp_token** %source, align 8
  %cmp2 = icmp eq %struct.cpp_token* %6, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true, %if.end
  %7 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  store %struct.cpp_token* %7, %struct.cpp_token** %padding, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %land.lhs.true, %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type6 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 2
  %bf.load7 = load i8, i8* %type6, align 2
  %bf.cast8 = zext i8 %bf.load7 to i32
  %cmp9 = icmp eq i32 %bf.cast8, 22
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 1
  %parsing_args = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 8
  store i8 2, i8* %parsing_args, align 1
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %call12 = call %struct._cpp_buff* @collect_args(%struct.cpp_reader* %10, %struct.cpp_hashnode* %11)
  store %struct._cpp_buff* %call12, %struct._cpp_buff** %retval
  br label %return

if.end.13:                                        ; preds = %for.end
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 2
  %bf.load15 = load i8, i8* %type14, align 2
  %bf.cast16 = zext i8 %bf.load15 to i32
  %cmp17 = icmp ne i32 %bf.cast16, 67
  br i1 %cmp17, label %if.then.22, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.13
  %13 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %eof = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 30
  %cmp20 = icmp eq %struct.cpp_token* %13, %eof
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %lor.lhs.false.19, %if.end.13
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %15, i32 1)
  %16 = load %struct.cpp_token*, %struct.cpp_token** %padding, align 8
  %tobool23 = icmp ne %struct.cpp_token* %16, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.22
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %18 = load %struct.cpp_token*, %struct.cpp_token** %padding, align 8
  call void @push_token_context(%struct.cpp_reader* %17, %struct.cpp_hashnode* null, %struct.cpp_token* %18, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false.19
  store %struct._cpp_buff* null, %struct._cpp_buff** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.11
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %retval
  ret %struct._cpp_buff* %19
}

; Function Attrs: nounwind uwtable
define internal void @replace_args(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.macro_arg* %args) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %args.addr = alloca %struct.macro_arg*, align 8
  %i = alloca i32, align 4
  %total = alloca i32, align 4
  %src = alloca %struct.cpp_token*, align 8
  %limit = alloca %struct.cpp_token*, align 8
  %dest = alloca %struct.cpp_token**, align 8
  %first = alloca %struct.cpp_token**, align 8
  %arg = alloca %struct.macro_arg*, align 8
  %buff = alloca %struct._cpp_buff*, align 8
  %macro = alloca %struct.cpp_macro*, align 8
  %count41 = alloca i32, align 4
  %from = alloca %struct.cpp_token**, align 8
  %paste_flag = alloca %struct.cpp_token**, align 8
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  store %struct.macro_arg* %args, %struct.macro_arg** %args.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 6
  %macro1 = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  store %struct.cpp_macro* %1, %struct.cpp_macro** %macro, align 8
  %2 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %2, i32 0, i32 3
  %3 = load i32, i32* %count, align 4
  store i32 %3, i32* %total, align 4
  %4 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %4, i32 0, i32 1
  %5 = load %struct.cpp_token*, %struct.cpp_token** %expansion, align 8
  %6 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %count2 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i32 0, i32 3
  %7 = load i32, i32* %count2, align 4
  %idx.ext = zext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i64 %idx.ext
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %limit, align 8
  %8 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion3 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %8, i32 0, i32 1
  %9 = load %struct.cpp_token*, %struct.cpp_token** %expansion3, align 8
  store %struct.cpp_token* %9, %struct.cpp_token** %src, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %11 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8
  %cmp = icmp ult %struct.cpp_token* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp4 = icmp eq i32 %bf.cast, 65
  br i1 %cmp4, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %total, align 4
  %add = add i32 %13, 2
  store i32 %add, i32* %total, align 4
  %14 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 4
  %arg_no = bitcast %union.anon* %val to i32*
  %15 = load i32, i32* %arg_no, align 4
  %sub = sub i32 %15, 1
  %idxprom = zext i32 %sub to i64
  %16 = load %struct.macro_arg*, %struct.macro_arg** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %16, i64 %idxprom
  store %struct.macro_arg* %arrayidx, %struct.macro_arg** %arg, align 8
  %17 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %17, i32 0, i32 3
  %18 = load i8, i8* %flags, align 1
  %conv = zext i8 %18 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %19 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %stringified = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %19, i32 0, i32 2
  %20 = load %struct.cpp_token*, %struct.cpp_token** %stringified, align 8
  %tobool6 = icmp ne %struct.cpp_token* %20, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %22 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %call = call %struct.cpp_token* @stringify_arg(%struct.cpp_reader* %21, %struct.macro_arg* %22)
  %23 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %stringified8 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %23, i32 0, i32 2
  store %struct.cpp_token* %call, %struct.cpp_token** %stringified8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.5
  br label %if.end.32

if.else:                                          ; preds = %if.then
  %24 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags9 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %24, i32 0, i32 3
  %25 = load i8, i8* %flags9, align 1
  %conv10 = zext i8 %25 to i32
  %and11 = and i32 %conv10, 8
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %26 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %27 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion13 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %27, i32 0, i32 1
  %28 = load %struct.cpp_token*, %struct.cpp_token** %expansion13, align 8
  %cmp14 = icmp ugt %struct.cpp_token* %26, %28
  br i1 %cmp14, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %lor.lhs.false
  %29 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %arrayidx16 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %29, i64 -1
  %flags17 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx16, i32 0, i32 3
  %30 = load i8, i8* %flags17, align 1
  %conv18 = zext i8 %30 to i32
  %and19 = and i32 %conv18, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %land.lhs.true, %if.else
  %31 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %count22 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %31, i32 0, i32 3
  %32 = load i32, i32* %count22, align 4
  %sub23 = sub i32 %32, 1
  %33 = load i32, i32* %total, align 4
  %add24 = add i32 %33, %sub23
  store i32 %add24, i32* %total, align 4
  br label %if.end.31

if.else.25:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %34 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %expanded = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %34, i32 0, i32 1
  %35 = load %struct.cpp_token**, %struct.cpp_token*** %expanded, align 8
  %tobool26 = icmp ne %struct.cpp_token** %35, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.25
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %37 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  call void @expand_arg(%struct.cpp_reader* %36, %struct.macro_arg* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.25
  %38 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %expanded_count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %38, i32 0, i32 4
  %39 = load i32, i32* %expanded_count, align 4
  %sub29 = sub i32 %39, 1
  %40 = load i32, i32* %total, align 4
  %add30 = add i32 %40, %sub29
  store i32 %add30, i32* %total, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %if.then.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %41 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %41, i32 1
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %src, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %43 = load i32, i32* %total, align 4
  %conv34 = zext i32 %43 to i64
  %mul = mul i64 %conv34, 8
  %call35 = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %42, i64 %mul)
  store %struct._cpp_buff* %call35, %struct._cpp_buff** %buff, align 8
  %44 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %44, i32 0, i32 1
  %45 = load i8*, i8** %base, align 8
  %46 = bitcast i8* %45 to %struct.cpp_token**
  store %struct.cpp_token** %46, %struct.cpp_token*** %first, align 8
  %47 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8
  store %struct.cpp_token** %47, %struct.cpp_token*** %dest, align 8
  %48 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion36 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %48, i32 0, i32 1
  %49 = load %struct.cpp_token*, %struct.cpp_token** %expansion36, align 8
  store %struct.cpp_token* %49, %struct.cpp_token** %src, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.190, %for.end
  %50 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %51 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8
  %cmp38 = icmp ult %struct.cpp_token* %50, %51
  br i1 %cmp38, label %for.body.40, label %for.end.192

for.body.40:                                      ; preds = %for.cond.37
  %52 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %type42 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i32 0, i32 2
  %bf.load43 = load i8, i8* %type42, align 2
  %bf.cast44 = zext i8 %bf.load43 to i32
  %cmp45 = icmp ne i32 %bf.cast44, 65
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %for.body.40
  %53 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %54 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %incdec.ptr48 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %54, i32 1
  store %struct.cpp_token** %incdec.ptr48, %struct.cpp_token*** %dest, align 8
  store %struct.cpp_token* %53, %struct.cpp_token** %54, align 8
  br label %for.inc.190

if.end.49:                                        ; preds = %for.body.40
  store %struct.cpp_token** null, %struct.cpp_token*** %paste_flag, align 8
  %55 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %val50 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %55, i32 0, i32 4
  %arg_no51 = bitcast %union.anon* %val50 to i32*
  %56 = load i32, i32* %arg_no51, align 4
  %sub52 = sub i32 %56, 1
  %idxprom53 = zext i32 %sub52 to i64
  %57 = load %struct.macro_arg*, %struct.macro_arg** %args.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %57, i64 %idxprom53
  store %struct.macro_arg* %arrayidx54, %struct.macro_arg** %arg, align 8
  %58 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags55 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %58, i32 0, i32 3
  %59 = load i8, i8* %flags55, align 1
  %conv56 = zext i8 %59 to i32
  %and57 = and i32 %conv56, 4
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.end.49
  store i32 1, i32* %count41, align 4
  %60 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %stringified60 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %60, i32 0, i32 2
  store %struct.cpp_token** %stringified60, %struct.cpp_token*** %from, align 8
  br label %if.end.122

if.else.61:                                       ; preds = %if.end.49
  %61 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags62 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %61, i32 0, i32 3
  %62 = load i8, i8* %flags62, align 1
  %conv63 = zext i8 %62 to i32
  %and64 = and i32 %conv63, 8
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.69

if.then.66:                                       ; preds = %if.else.61
  %63 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %count67 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %63, i32 0, i32 3
  %64 = load i32, i32* %count67, align 4
  store i32 %64, i32* %count41, align 4
  %65 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first68 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %65, i32 0, i32 0
  %66 = load %struct.cpp_token**, %struct.cpp_token*** %first68, align 8
  store %struct.cpp_token** %66, %struct.cpp_token*** %from, align 8
  br label %if.end.121

if.else.69:                                       ; preds = %if.else.61
  %67 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %68 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion70 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %68, i32 0, i32 1
  %69 = load %struct.cpp_token*, %struct.cpp_token** %expansion70, align 8
  %cmp71 = icmp ne %struct.cpp_token* %67, %69
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.117

land.lhs.true.73:                                 ; preds = %if.else.69
  %70 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %arrayidx74 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %70, i64 -1
  %flags75 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx74, i32 0, i32 3
  %71 = load i8, i8* %flags75, align 1
  %conv76 = zext i8 %71 to i32
  %and77 = and i32 %conv76, 8
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.117

if.then.79:                                       ; preds = %land.lhs.true.73
  %72 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %count80 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %72, i32 0, i32 3
  %73 = load i32, i32* %count80, align 4
  store i32 %73, i32* %count41, align 4
  %74 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first81 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %74, i32 0, i32 0
  %75 = load %struct.cpp_token**, %struct.cpp_token*** %first81, align 8
  store %struct.cpp_token** %75, %struct.cpp_token*** %from, align 8
  %76 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %77 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8
  %cmp82 = icmp ne %struct.cpp_token** %76, %77
  br i1 %cmp82, label %if.then.84, label %if.end.116

if.then.84:                                       ; preds = %if.then.79
  %78 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %arrayidx85 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %78, i64 -1
  %79 = load %struct.cpp_token*, %struct.cpp_token** %arrayidx85, align 8
  %type86 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %79, i32 0, i32 2
  %bf.load87 = load i8, i8* %type86, align 2
  %bf.cast88 = zext i8 %bf.load87 to i32
  %cmp89 = icmp eq i32 %bf.cast88, 21
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.109

land.lhs.true.91:                                 ; preds = %if.then.84
  %80 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %80, i32 0, i32 5
  %bf.load92 = load i8, i8* %variadic, align 2
  %bf.lshr = lshr i8 %bf.load92, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast93 = zext i8 %bf.clear to i32
  %tobool94 = icmp ne i32 %bf.cast93, 0
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.109

land.lhs.true.95:                                 ; preds = %land.lhs.true.91
  %81 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %val96 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %81, i32 0, i32 4
  %arg_no97 = bitcast %union.anon* %val96 to i32*
  %82 = load i32, i32* %arg_no97, align 4
  %83 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %83, i32 0, i32 4
  %84 = load i16, i16* %paramc, align 2
  %conv98 = zext i16 %84 to i32
  %cmp99 = icmp eq i32 %82, %conv98
  br i1 %cmp99, label %if.then.101, label %if.else.109

if.then.101:                                      ; preds = %land.lhs.true.95
  %85 = load i32, i32* %count41, align 4
  %cmp102 = icmp eq i32 %85, 0
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.then.101
  %86 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %incdec.ptr105 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %86, i32 -1
  store %struct.cpp_token** %incdec.ptr105, %struct.cpp_token*** %dest, align 8
  br label %if.end.108

if.else.106:                                      ; preds = %if.then.101
  %87 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %add.ptr107 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %87, i64 -1
  store %struct.cpp_token** %add.ptr107, %struct.cpp_token*** %paste_flag, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %if.then.104
  br label %if.end.115

if.else.109:                                      ; preds = %land.lhs.true.95, %land.lhs.true.91, %if.then.84
  %88 = load i32, i32* %count41, align 4
  %cmp110 = icmp eq i32 %88, 0
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.else.109
  %89 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %add.ptr113 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %89, i64 -1
  store %struct.cpp_token** %add.ptr113, %struct.cpp_token*** %paste_flag, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.else.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.108
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.79
  br label %if.end.120

if.else.117:                                      ; preds = %land.lhs.true.73, %if.else.69
  %90 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %expanded_count118 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %90, i32 0, i32 4
  %91 = load i32, i32* %expanded_count118, align 4
  store i32 %91, i32* %count41, align 4
  %92 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %expanded119 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %92, i32 0, i32 1
  %93 = load %struct.cpp_token**, %struct.cpp_token*** %expanded119, align 8
  store %struct.cpp_token** %93, %struct.cpp_token*** %from, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.end.116
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.66
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.59
  %94 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %94, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 0
  %95 = load i8, i8* %in_directive, align 1
  %tobool123 = icmp ne i8 %95, 0
  br i1 %tobool123, label %if.end.137, label %land.lhs.true.124

land.lhs.true.124:                                ; preds = %if.end.122
  %96 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %97 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %expansion125 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %97, i32 0, i32 1
  %98 = load %struct.cpp_token*, %struct.cpp_token** %expansion125, align 8
  %cmp126 = icmp ne %struct.cpp_token* %96, %98
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.137

land.lhs.true.128:                                ; preds = %land.lhs.true.124
  %99 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %arrayidx129 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %99, i64 -1
  %flags130 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx129, i32 0, i32 3
  %100 = load i8, i8* %flags130, align 1
  %conv131 = zext i8 %100 to i32
  %and132 = and i32 %conv131, 8
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.end.137, label %if.then.134

if.then.134:                                      ; preds = %land.lhs.true.128
  %101 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %102 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %call135 = call %struct.cpp_token* @padding_token(%struct.cpp_reader* %101, %struct.cpp_token* %102)
  %103 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %incdec.ptr136 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %103, i32 1
  store %struct.cpp_token** %incdec.ptr136, %struct.cpp_token*** %dest, align 8
  store %struct.cpp_token* %call135, %struct.cpp_token** %103, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %land.lhs.true.128, %land.lhs.true.124, %if.end.122
  %104 = load i32, i32* %count41, align 4
  %tobool138 = icmp ne i32 %104, 0
  br i1 %tobool138, label %if.then.139, label %if.end.151

if.then.139:                                      ; preds = %if.end.137
  %105 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %106 = bitcast %struct.cpp_token** %105 to i8*
  %107 = load %struct.cpp_token**, %struct.cpp_token*** %from, align 8
  %108 = bitcast %struct.cpp_token** %107 to i8*
  %109 = load i32, i32* %count41, align 4
  %conv140 = zext i32 %109 to i64
  %mul141 = mul i64 %conv140, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %108, i64 %mul141, i32 8, i1 false)
  %110 = load i32, i32* %count41, align 4
  %111 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %idx.ext142 = zext i32 %110 to i64
  %add.ptr143 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %111, i64 %idx.ext142
  store %struct.cpp_token** %add.ptr143, %struct.cpp_token*** %dest, align 8
  %112 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags144 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %112, i32 0, i32 3
  %113 = load i8, i8* %flags144, align 1
  %conv145 = zext i8 %113 to i32
  %and146 = and i32 %conv145, 8
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.then.139
  %114 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %add.ptr149 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %114, i64 -1
  store %struct.cpp_token** %add.ptr149, %struct.cpp_token*** %paste_flag, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.then.139
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.137
  %115 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state152 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %115, i32 0, i32 1
  %in_directive153 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state152, i32 0, i32 0
  %116 = load i8, i8* %in_directive153, align 1
  %tobool154 = icmp ne i8 %116, 0
  br i1 %tobool154, label %if.end.162, label %land.lhs.true.155

land.lhs.true.155:                                ; preds = %if.end.151
  %117 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags156 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %117, i32 0, i32 3
  %118 = load i8, i8* %flags156, align 1
  %conv157 = zext i8 %118 to i32
  %and158 = and i32 %conv157, 8
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.end.162, label %if.then.160

if.then.160:                                      ; preds = %land.lhs.true.155
  %119 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %avoid_paste = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %119, i32 0, i32 29
  %120 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %incdec.ptr161 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %120, i32 1
  store %struct.cpp_token** %incdec.ptr161, %struct.cpp_token*** %dest, align 8
  store %struct.cpp_token* %avoid_paste, %struct.cpp_token** %120, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %land.lhs.true.155, %if.end.151
  %121 = load %struct.cpp_token**, %struct.cpp_token*** %paste_flag, align 8
  %tobool163 = icmp ne %struct.cpp_token** %121, null
  br i1 %tobool163, label %if.then.164, label %if.end.189

if.then.164:                                      ; preds = %if.end.162
  %122 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call165 = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %122)
  store %struct.cpp_token* %call165, %struct.cpp_token** %token, align 8
  %123 = load %struct.cpp_token**, %struct.cpp_token*** %paste_flag, align 8
  %124 = load %struct.cpp_token*, %struct.cpp_token** %123, align 8
  %type166 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %124, i32 0, i32 2
  %bf.load167 = load i8, i8* %type166, align 2
  %bf.cast168 = zext i8 %bf.load167 to i32
  %125 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type169 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %125, i32 0, i32 2
  %126 = trunc i32 %bf.cast168 to i8
  store i8 %126, i8* %type169, align 2
  %bf.result.cast = zext i8 %126 to i32
  %127 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val170 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %127, i32 0, i32 4
  %str = bitcast %union.anon* %val170 to %struct.cpp_string*
  %128 = load %struct.cpp_token**, %struct.cpp_token*** %paste_flag, align 8
  %129 = load %struct.cpp_token*, %struct.cpp_token** %128, align 8
  %val171 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %129, i32 0, i32 4
  %str172 = bitcast %union.anon* %val171 to %struct.cpp_string*
  %130 = bitcast %struct.cpp_string* %str to i8*
  %131 = bitcast %struct.cpp_string* %str172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 16, i32 8, i1 false)
  %132 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %flags173 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %132, i32 0, i32 3
  %133 = load i8, i8* %flags173, align 1
  %conv174 = zext i8 %133 to i32
  %and175 = and i32 %conv174, 8
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %if.then.177, label %if.else.182

if.then.177:                                      ; preds = %if.then.164
  %134 = load %struct.cpp_token**, %struct.cpp_token*** %paste_flag, align 8
  %135 = load %struct.cpp_token*, %struct.cpp_token** %134, align 8
  %flags178 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %135, i32 0, i32 3
  %136 = load i8, i8* %flags178, align 1
  %conv179 = zext i8 %136 to i32
  %or = or i32 %conv179, 8
  %conv180 = trunc i32 %or to i8
  %137 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags181 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %137, i32 0, i32 3
  store i8 %conv180, i8* %flags181, align 1
  br label %if.end.188

if.else.182:                                      ; preds = %if.then.164
  %138 = load %struct.cpp_token**, %struct.cpp_token*** %paste_flag, align 8
  %139 = load %struct.cpp_token*, %struct.cpp_token** %138, align 8
  %flags183 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %139, i32 0, i32 3
  %140 = load i8, i8* %flags183, align 1
  %conv184 = zext i8 %140 to i32
  %and185 = and i32 %conv184, -9
  %conv186 = trunc i32 %and185 to i8
  %141 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags187 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %141, i32 0, i32 3
  store i8 %conv186, i8* %flags187, align 1
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.182, %if.then.177
  %142 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %143 = load %struct.cpp_token**, %struct.cpp_token*** %paste_flag, align 8
  store %struct.cpp_token* %142, %struct.cpp_token** %143, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.162
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189, %if.then.47
  %144 = load %struct.cpp_token*, %struct.cpp_token** %src, align 8
  %incdec.ptr191 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %144, i32 1
  store %struct.cpp_token* %incdec.ptr191, %struct.cpp_token** %src, align 8
  br label %for.cond.37

for.end.192:                                      ; preds = %for.cond.37
  store i32 0, i32* %i, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.208, %for.end.192
  %145 = load i32, i32* %i, align 4
  %146 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc194 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %146, i32 0, i32 4
  %147 = load i16, i16* %paramc194, align 2
  %conv195 = zext i16 %147 to i32
  %cmp196 = icmp ult i32 %145, %conv195
  br i1 %cmp196, label %for.body.198, label %for.end.209

for.body.198:                                     ; preds = %for.cond.193
  %148 = load i32, i32* %i, align 4
  %idxprom199 = zext i32 %148 to i64
  %149 = load %struct.macro_arg*, %struct.macro_arg** %args.addr, align 8
  %arrayidx200 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %149, i64 %idxprom199
  %expanded201 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arrayidx200, i32 0, i32 1
  %150 = load %struct.cpp_token**, %struct.cpp_token*** %expanded201, align 8
  %tobool202 = icmp ne %struct.cpp_token** %150, null
  br i1 %tobool202, label %if.then.203, label %if.end.207

if.then.203:                                      ; preds = %for.body.198
  %151 = load i32, i32* %i, align 4
  %idxprom204 = zext i32 %151 to i64
  %152 = load %struct.macro_arg*, %struct.macro_arg** %args.addr, align 8
  %arrayidx205 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %152, i64 %idxprom204
  %expanded206 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arrayidx205, i32 0, i32 1
  %153 = load %struct.cpp_token**, %struct.cpp_token*** %expanded206, align 8
  %154 = bitcast %struct.cpp_token** %153 to i8*
  call void @free(i8* %154) #3
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.203, %for.body.198
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.207
  %155 = load i32, i32* %i, align 4
  %inc = add i32 %155, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.193

for.end.209:                                      ; preds = %for.cond.193
  %156 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %157 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %158 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %159 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8
  %160 = load %struct.cpp_token**, %struct.cpp_token*** %dest, align 8
  %161 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.cpp_token** %160 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cpp_token** %161 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv210 = trunc i64 %sub.ptr.div to i32
  call void @push_ptoken_context(%struct.cpp_reader* %156, %struct.cpp_hashnode* %157, %struct._cpp_buff* %158, %struct.cpp_token** %159, i32 %conv210)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @builtin_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %result = alloca %struct.cpp_token*, align 8
  %len = alloca i32, align 4
  %name = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %map = alloca %struct.line_map*, align 8
  %stdc = alloca i32, align 4
  %tt = alloca i64, align 8
  %tb = alloca %struct.tm*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 6
  %builtin = bitcast %union.anon.0* %value to i32*
  %1 = load i32, i32* %builtin, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.11
    i32 0, label %sw.bb.14
    i32 6, label %sw.bb.21
    i32 1, label %sw.bb.29
    i32 5, label %sw.bb.29
    i32 7, label %sw.bb.82
  ]

sw.default:                                       ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %3, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %4 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_ice(%struct.cpp_reader* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* %4)
  store i32 0, i32* %retval
  br label %return

sw.bb:                                            ; preds = %entry, %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 3
  %6 = load %struct.line_map*, %struct.line_map** %map1, align 8
  store %struct.line_map* %6, %struct.line_map** %map, align 8
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value2 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i32 0, i32 6
  %builtin3 = bitcast %union.anon.0* %value2 to i32*
  %8 = load i32, i32* %builtin3, align 4
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i32 0, i32 3
  %10 = load i32, i32* %included_from, align 4
  %cmp4 = icmp slt i32 %10, 0
  %lnot = xor i1 %cmp4, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.line_map*, %struct.line_map** %map, align 8
  %included_from5 = getelementptr inbounds %struct.line_map, %struct.line_map* %11, i32 0, i32 3
  %12 = load i32, i32* %included_from5, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 2
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %line_maps, i32 0, i32 0
  %14 = load %struct.line_map*, %struct.line_map** %maps, align 8
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom
  store %struct.line_map* %arrayidx, %struct.line_map** %map, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %sw.bb
  %15 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %15, i32 0, i32 0
  %16 = load i8*, i8** %to_file, align 8
  store i8* %16, i8** %name, align 8
  %17 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %17) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %19 = load i32, i32* %len, align 4
  %mul = mul i32 %19, 4
  %add = add i32 %mul, 1
  %conv6 = zext i32 %add to i64
  %call7 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %18, i64 %conv6)
  store i8* %call7, i8** %buf, align 8
  %20 = load i8*, i8** %buf, align 8
  %21 = load i8*, i8** %name, align 8
  %22 = load i32, i32* %len, align 4
  %call8 = call i8* @cpp_quote_string(i8* %20, i8* %21, i32 %22)
  %23 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv9 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv9, i32* %len, align 4
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %25 = load i8*, i8** %buf, align 8
  %26 = load i32, i32* %len, align 4
  %call10 = call %struct.cpp_token* @new_string_token(%struct.cpp_reader* %24, i8* %25, i32 %26)
  store %struct.cpp_token* %call10, %struct.cpp_token** %result, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps12 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %28, i32 0, i32 2
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %line_maps12, i32 0, i32 4
  %29 = load i32, i32* %depth, align 4
  %sub = sub i32 %29, 1
  %call13 = call %struct.cpp_token* @new_number_token(%struct.cpp_reader* %27, i32 %sub)
  store %struct.cpp_token* %call13, %struct.cpp_token** %result, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %31, i32 0, i32 15
  %32 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %arrayidx15 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %32, i64 -1
  %line = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx15, i32 0, i32 0
  %33 = load i32, i32* %line, align 4
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map16 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %34, i32 0, i32 3
  %35 = load %struct.line_map*, %struct.line_map** %map16, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i32 0, i32 1
  %36 = load i32, i32* %to_line, align 4
  %add17 = add i32 %33, %36
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %37, i32 0, i32 3
  %38 = load %struct.line_map*, %struct.line_map** %map18, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %38, i32 0, i32 2
  %39 = load i32, i32* %from_line, align 4
  %sub19 = sub i32 %add17, %39
  %call20 = call %struct.cpp_token* @new_number_token(%struct.cpp_reader* %30, i32 %sub19)
  store %struct.cpp_token* %call20, %struct.cpp_token** %result, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %40, i32 0, i32 3
  %41 = load %struct.line_map*, %struct.line_map** %map22, align 8
  %tobool = icmp ne %struct.line_map* %41, null
  br i1 %tobool, label %land.lhs.true, label %lor.end

land.lhs.true:                                    ; preds = %sw.bb.21
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map23 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %42, i32 0, i32 3
  %43 = load %struct.line_map*, %struct.line_map** %map23, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %43, i32 0, i32 5
  %44 = load i8, i8* %sysp, align 1
  %conv24 = zext i8 %44 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %spec_nodes = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %45, i32 0, i32 38
  %n__STRICT_ANSI__ = getelementptr inbounds %struct.spec_nodes, %struct.spec_nodes* %spec_nodes, i32 0, i32 3
  %46 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__STRICT_ANSI__, align 8
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %46, i32 0, i32 4
  %bf.load = load i8, i8* %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %cmp26 = icmp ne i32 %bf.cast, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true, %sw.bb.21
  %47 = phi i1 [ true, %land.lhs.true ], [ true, %sw.bb.21 ], [ %cmp26, %lor.rhs ]
  %lor.ext = zext i1 %47 to i32
  store i32 %lor.ext, i32* %stdc, align 4
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %49 = load i32, i32* %stdc, align 4
  %call28 = call %struct.cpp_token* @new_number_token(%struct.cpp_reader* %48, i32 %49)
  store %struct.cpp_token* %call28, %struct.cpp_token** %result, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry, %entry
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %50, i32 0, i32 27
  %type30 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date, i32 0, i32 2
  %bf.load31 = load i8, i8* %type30, align 2
  %bf.cast32 = zext i8 %bf.load31 to i32
  %cmp33 = icmp eq i32 %bf.cast32, 67
  br i1 %cmp33, label %if.then.35, label %if.end.73

if.then.35:                                       ; preds = %sw.bb.29
  %call36 = call i64 @time(i64* null) #3
  store i64 %call36, i64* %tt, align 8
  %call37 = call %struct.tm* @localtime(i64* %tt) #3
  store %struct.tm* %call37, %struct.tm** %tb, align 8
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call38 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %51, i64 12)
  %52 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %52, i32 0, i32 27
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date39, i32 0, i32 4
  %str40 = bitcast %union.anon* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str40, i32 0, i32 1
  store i8* %call38, i8** %text, align 8
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date41 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %53, i32 0, i32 27
  %val42 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date41, i32 0, i32 4
  %str43 = bitcast %union.anon* %val42 to %struct.cpp_string*
  %len44 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str43, i32 0, i32 0
  store i32 11, i32* %len44, align 4
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date45 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %54, i32 0, i32 27
  %type46 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date45, i32 0, i32 2
  store i8 61, i8* %type46, align 2
  %55 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date47 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %55, i32 0, i32 27
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date47, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date48 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %56, i32 0, i32 27
  %val49 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %date48, i32 0, i32 4
  %str50 = bitcast %union.anon* %val49 to %struct.cpp_string*
  %text51 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str50, i32 0, i32 1
  %57 = load i8*, i8** %text51, align 8
  %58 = load %struct.tm*, %struct.tm** %tb, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 4
  %59 = load i32, i32* %tm_mon, align 4
  %idxprom52 = sext i32 %59 to i64
  %arrayidx53 = getelementptr inbounds [12 x i8*], [12 x i8*]* @monthnames, i32 0, i64 %idxprom52
  %60 = load i8*, i8** %arrayidx53, align 8
  %61 = load %struct.tm*, %struct.tm** %tb, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 3
  %62 = load i32, i32* %tm_mday, align 4
  %63 = load %struct.tm*, %struct.tm** %tb, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 5
  %64 = load i32, i32* %tm_year, align 4
  %add54 = add nsw i32 %64, 1900
  %call55 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8* %60, i32 %62, i32 %add54) #3
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call56 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %65, i64 9)
  %66 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %time = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %66, i32 0, i32 28
  %val57 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %time, i32 0, i32 4
  %str58 = bitcast %union.anon* %val57 to %struct.cpp_string*
  %text59 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str58, i32 0, i32 1
  store i8* %call56, i8** %text59, align 8
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %time60 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %67, i32 0, i32 28
  %val61 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %time60, i32 0, i32 4
  %str62 = bitcast %union.anon* %val61 to %struct.cpp_string*
  %len63 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str62, i32 0, i32 0
  store i32 8, i32* %len63, align 4
  %68 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %time64 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %68, i32 0, i32 28
  %type65 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %time64, i32 0, i32 2
  store i8 61, i8* %type65, align 2
  %69 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %time66 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %69, i32 0, i32 28
  %flags67 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %time66, i32 0, i32 3
  store i8 0, i8* %flags67, align 1
  %70 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %time68 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %70, i32 0, i32 28
  %val69 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %time68, i32 0, i32 4
  %str70 = bitcast %union.anon* %val69 to %struct.cpp_string*
  %text71 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str70, i32 0, i32 1
  %71 = load i8*, i8** %text71, align 8
  %72 = load %struct.tm*, %struct.tm** %tb, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 2
  %73 = load i32, i32* %tm_hour, align 4
  %74 = load %struct.tm*, %struct.tm** %tb, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 1
  %75 = load i32, i32* %tm_min, align 4
  %76 = load %struct.tm*, %struct.tm** %tb, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 0
  %77 = load i32, i32* %tm_sec, align 4
  %call72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 %73, i32 %75, i32 %77) #3
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.35, %sw.bb.29
  %78 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value74 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %78, i32 0, i32 6
  %builtin75 = bitcast %union.anon.0* %value74 to i32*
  %79 = load i32, i32* %builtin75, align 4
  %cmp76 = icmp eq i32 %79, 1
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %if.end.73
  %80 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %date79 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %80, i32 0, i32 27
  store %struct.cpp_token* %date79, %struct.cpp_token** %result, align 8
  br label %if.end.81

if.else:                                          ; preds = %if.end.73
  %81 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %time80 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %81, i32 0, i32 28
  store %struct.cpp_token* %time80, %struct.cpp_token** %result, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.78
  br label %sw.epilog

sw.bb.82:                                         ; preds = %entry
  %82 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %82, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 0
  %83 = load i8, i8* %in_directive, align 1
  %tobool83 = icmp ne i8 %83, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %sw.bb.82
  store i32 0, i32* %retval
  br label %return

if.end.85:                                        ; preds = %sw.bb.82
  %84 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_do__Pragma(%struct.cpp_reader* %84)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.81, %lor.end, %sw.bb.14, %sw.bb.11, %if.end
  %85 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %86 = load %struct.cpp_token*, %struct.cpp_token** %result, align 8
  call void @push_token_context(%struct.cpp_reader* %85, %struct.cpp_hashnode* null, %struct.cpp_token* %86, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.85, %if.then.84, %sw.default
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal %struct._cpp_buff* @collect_args(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #0 {
entry:
  %retval = alloca %struct._cpp_buff*, align 8
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  %buff = alloca %struct._cpp_buff*, align 8
  %base_buff = alloca %struct._cpp_buff*, align 8
  %macro = alloca %struct.cpp_macro*, align 8
  %args = alloca %struct.macro_arg*, align 8
  %arg = alloca %struct.macro_arg*, align 8
  %token = alloca %struct.cpp_token*, align 8
  %argc = alloca i32, align 4
  %error = alloca i8, align 1
  %paren_depth = alloca i32, align 4
  %ntokens = alloca i32, align 4
  %step_back = alloca i8, align 1
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  store i8 0, i8* %error, align 1
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 6
  %macro1 = bitcast %union.anon.0* %value to %struct.cpp_macro**
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8
  store %struct.cpp_macro* %1, %struct.cpp_macro** %macro, align 8
  %2 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %2, i32 0, i32 4
  %3 = load i16, i16* %paramc, align 2
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc2 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %4, i32 0, i32 4
  %5 = load i16, i16* %paramc2, align 2
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %argc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %argc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %7 = load i32, i32* %argc, align 4
  %conv3 = zext i32 %7 to i64
  %mul = mul i64 %conv3, 432
  %call = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %6, i64 %mul)
  store %struct._cpp_buff* %call, %struct._cpp_buff** %buff, align 8
  %8 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  store %struct._cpp_buff* %8, %struct._cpp_buff** %base_buff, align 8
  %9 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %9, i32 0, i32 1
  %10 = load i8*, i8** %base, align 8
  %11 = bitcast i8* %10 to %struct.macro_arg*
  store %struct.macro_arg* %11, %struct.macro_arg** %args, align 8
  %12 = load %struct.macro_arg*, %struct.macro_arg** %args, align 8
  %13 = bitcast %struct.macro_arg* %12 to i8*
  %14 = load i32, i32* %argc, align 4
  %conv4 = zext i32 %14 to i64
  %mul5 = mul i64 %conv4, 32
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul5, i32 8, i1 false)
  %15 = load i32, i32* %argc, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.macro_arg*, %struct.macro_arg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %16, i64 %idxprom
  %17 = bitcast %struct.macro_arg* %arrayidx to i8*
  %18 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %18, i32 0, i32 2
  store i8* %17, i8** %cur, align 8
  %19 = load %struct.macro_arg*, %struct.macro_arg** %args, align 8
  store %struct.macro_arg* %19, %struct.macro_arg** %arg, align 8
  store i32 0, i32* %argc, align 4
  br label %do.body

do.body:                                          ; preds = %land.end.134, %if.end
  store i32 0, i32* %paren_depth, align 4
  store i32 0, i32* %ntokens, align 4
  %20 = load i32, i32* %argc, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %argc, align 4
  %21 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur6 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %21, i32 0, i32 2
  %22 = load i8*, i8** %cur6, align 8
  %23 = bitcast i8* %22 to %struct.cpp_token**
  %24 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %24, i32 0, i32 0
  store %struct.cpp_token** %23, %struct.cpp_token*** %first, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.81, %if.then.22, %do.body
  %25 = load i32, i32* %ntokens, align 4
  %add = add i32 %25, 2
  %idxprom7 = zext i32 %add to i64
  %26 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first8 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %26, i32 0, i32 0
  %27 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8
  %arrayidx9 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %27, i64 %idxprom7
  %28 = bitcast %struct.cpp_token** %arrayidx9 to i8*
  %29 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %29, i32 0, i32 3
  %30 = load i8*, i8** %limit, align 8
  %cmp = icmp ugt i8* %28, %30
  br i1 %cmp, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %for.cond
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %32 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %call12 = call %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader* %31, %struct._cpp_buff* %32, i64 8000)
  store %struct._cpp_buff* %call12, %struct._cpp_buff** %buff, align 8
  %33 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur13 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %33, i32 0, i32 2
  %34 = load i8*, i8** %cur13, align 8
  %35 = bitcast i8* %34 to %struct.cpp_token**
  %36 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first14 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %36, i32 0, i32 0
  store %struct.cpp_token** %35, %struct.cpp_token*** %first14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %for.cond
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call16 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %37)
  store %struct.cpp_token* %call16, %struct.cpp_token** %token, align 8
  %38 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %38, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp17 = icmp eq i32 %bf.cast, 66
  br i1 %cmp17, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.end.15
  %39 = load i32, i32* %ntokens, align 4
  %cmp20 = icmp eq i32 %39, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  br label %for.cond

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.81

if.else.24:                                       ; preds = %if.end.15
  %40 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %40, i32 0, i32 2
  %bf.load26 = load i8, i8* %type25, align 2
  %bf.cast27 = zext i8 %bf.load26 to i32
  %cmp28 = icmp eq i32 %bf.cast27, 22
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.24
  %41 = load i32, i32* %paren_depth, align 4
  %inc31 = add i32 %41, 1
  store i32 %inc31, i32* %paren_depth, align 4
  br label %if.end.80

if.else.32:                                       ; preds = %if.else.24
  %42 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type33 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %42, i32 0, i32 2
  %bf.load34 = load i8, i8* %type33, align 2
  %bf.cast35 = zext i8 %bf.load34 to i32
  %cmp36 = icmp eq i32 %bf.cast35, 23
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.else.32
  %43 = load i32, i32* %paren_depth, align 4
  %dec = add i32 %43, -1
  store i32 %dec, i32* %paren_depth, align 4
  %cmp39 = icmp eq i32 %43, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  br label %for.end

if.end.42:                                        ; preds = %if.then.38
  br label %if.end.79

if.else.43:                                       ; preds = %if.else.32
  %44 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type44 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %44, i32 0, i32 2
  %bf.load45 = load i8, i8* %type44, align 2
  %bf.cast46 = zext i8 %bf.load45 to i32
  %cmp47 = icmp eq i32 %bf.cast46, 21
  br i1 %cmp47, label %if.then.49, label %if.else.62

if.then.49:                                       ; preds = %if.else.43
  %45 = load i32, i32* %paren_depth, align 4
  %cmp50 = icmp eq i32 %45, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.then.49
  %46 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %46, i32 0, i32 5
  %bf.load52 = load i8, i8* %variadic, align 2
  %bf.lshr = lshr i8 %bf.load52, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast53 = zext i8 %bf.clear to i32
  %tobool54 = icmp ne i32 %bf.cast53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.then.60

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %47 = load i32, i32* %argc, align 4
  %48 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc56 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %48, i32 0, i32 4
  %49 = load i16, i16* %paramc56, align 2
  %conv57 = zext i16 %49 to i32
  %cmp58 = icmp eq i32 %47, %conv57
  br i1 %cmp58, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.55, %land.lhs.true
  br label %for.end

if.end.61:                                        ; preds = %land.lhs.true.55, %if.then.49
  br label %if.end.78

if.else.62:                                       ; preds = %if.else.43
  %50 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type63 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %50, i32 0, i32 2
  %bf.load64 = load i8, i8* %type63, align 2
  %bf.cast65 = zext i8 %bf.load64 to i32
  %cmp66 = icmp eq i32 %bf.cast65, 67
  br i1 %cmp66, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.62
  %51 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type68 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %51, i32 0, i32 2
  %bf.load69 = load i8, i8* %type68, align 2
  %bf.cast70 = zext i8 %bf.load69 to i32
  %cmp71 = icmp eq i32 %bf.cast70, 40
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.77

land.lhs.true.73:                                 ; preds = %lor.lhs.false
  %52 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i32 0, i32 3
  %53 = load i8, i8* %flags, align 1
  %conv74 = zext i8 %53 to i32
  %and = and i32 %conv74, 64
  %tobool75 = icmp ne i32 %and, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.73, %if.else.62
  br label %for.end

if.end.77:                                        ; preds = %land.lhs.true.73, %lor.lhs.false
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.61
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.42
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.30
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.23
  %54 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %55 = load i32, i32* %ntokens, align 4
  %inc82 = add i32 %55, 1
  store i32 %inc82, i32* %ntokens, align 4
  %idxprom83 = zext i32 %55 to i64
  %56 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first84 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %56, i32 0, i32 0
  %57 = load %struct.cpp_token**, %struct.cpp_token*** %first84, align 8
  %arrayidx85 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %57, i64 %idxprom83
  store %struct.cpp_token* %54, %struct.cpp_token** %arrayidx85, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.76, %if.then.60, %if.then.41
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %58 = load i32, i32* %ntokens, align 4
  %cmp86 = icmp ugt i32 %58, 0
  br i1 %cmp86, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %59 = load i32, i32* %ntokens, align 4
  %sub = sub i32 %59, 1
  %idxprom88 = zext i32 %sub to i64
  %60 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first89 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %60, i32 0, i32 0
  %61 = load %struct.cpp_token**, %struct.cpp_token*** %first89, align 8
  %arrayidx90 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %61, i64 %idxprom88
  %62 = load %struct.cpp_token*, %struct.cpp_token** %arrayidx90, align 8
  %type91 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %62, i32 0, i32 2
  %bf.load92 = load i8, i8* %type91, align 2
  %bf.cast93 = zext i8 %bf.load92 to i32
  %cmp94 = icmp eq i32 %bf.cast93, 66
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %63 = phi i1 [ false, %while.cond ], [ %cmp94, %land.rhs ]
  br i1 %63, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %64 = load i32, i32* %ntokens, align 4
  %dec96 = add i32 %64, -1
  store i32 %dec96, i32* %ntokens, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %65 = load i32, i32* %ntokens, align 4
  %66 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %66, i32 0, i32 3
  store i32 %65, i32* %count, align 4
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %eof = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %67, i32 0, i32 30
  %68 = load i32, i32* %ntokens, align 4
  %idxprom97 = zext i32 %68 to i64
  %69 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first98 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %69, i32 0, i32 0
  %70 = load %struct.cpp_token**, %struct.cpp_token*** %first98, align 8
  %arrayidx99 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %70, i64 %idxprom97
  store %struct.cpp_token* %eof, %struct.cpp_token** %arrayidx99, align 8
  %71 = load i32, i32* %argc, align 4
  %72 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc100 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %72, i32 0, i32 4
  %73 = load i16, i16* %paramc100, align 2
  %conv101 = zext i16 %73 to i32
  %cmp102 = icmp ule i32 %71, %conv101
  br i1 %cmp102, label %if.then.104, label %if.end.116

if.then.104:                                      ; preds = %while.end
  %74 = load i32, i32* %ntokens, align 4
  %add105 = add i32 %74, 1
  %idxprom106 = zext i32 %add105 to i64
  %75 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %first107 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %75, i32 0, i32 0
  %76 = load %struct.cpp_token**, %struct.cpp_token*** %first107, align 8
  %arrayidx108 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %76, i64 %idxprom106
  %77 = bitcast %struct.cpp_token** %arrayidx108 to i8*
  %78 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur109 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %78, i32 0, i32 2
  store i8* %77, i8** %cur109, align 8
  %79 = load i32, i32* %argc, align 4
  %80 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc110 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %80, i32 0, i32 4
  %81 = load i16, i16* %paramc110, align 2
  %conv111 = zext i16 %81 to i32
  %cmp112 = icmp ne i32 %79, %conv111
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.104
  %82 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %incdec.ptr = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %82, i32 1
  store %struct.macro_arg* %incdec.ptr, %struct.macro_arg** %arg, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.then.104
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.116
  %83 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type117 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %83, i32 0, i32 2
  %bf.load118 = load i8, i8* %type117, align 2
  %bf.cast119 = zext i8 %bf.load118 to i32
  %cmp120 = icmp ne i32 %bf.cast119, 23
  br i1 %cmp120, label %land.lhs.true.122, label %land.end.134

land.lhs.true.122:                                ; preds = %do.cond
  %84 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type123 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %84, i32 0, i32 2
  %bf.load124 = load i8, i8* %type123, align 2
  %bf.cast125 = zext i8 %bf.load124 to i32
  %cmp126 = icmp ne i32 %bf.cast125, 67
  br i1 %cmp126, label %land.rhs.128, label %land.end.134

land.rhs.128:                                     ; preds = %land.lhs.true.122
  %85 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type129 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %85, i32 0, i32 2
  %bf.load130 = load i8, i8* %type129, align 2
  %bf.cast131 = zext i8 %bf.load130 to i32
  %cmp132 = icmp ne i32 %bf.cast131, 40
  br label %land.end.134

land.end.134:                                     ; preds = %land.rhs.128, %land.lhs.true.122, %do.cond
  %86 = phi i1 [ false, %land.lhs.true.122 ], [ false, %do.cond ], [ %cmp132, %land.rhs.128 ]
  br i1 %86, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.134
  %87 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type135 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %87, i32 0, i32 2
  %bf.load136 = load i8, i8* %type135, align 2
  %bf.cast137 = zext i8 %bf.load136 to i32
  %cmp138 = icmp eq i32 %bf.cast137, 67
  br i1 %cmp138, label %if.then.146, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %do.end
  %88 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type141 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %88, i32 0, i32 2
  %bf.load142 = load i8, i8* %type141, align 2
  %bf.cast143 = zext i8 %bf.load142 to i32
  %cmp144 = icmp eq i32 %bf.cast143, 40
  br i1 %cmp144, label %if.then.146, label %if.else.161

if.then.146:                                      ; preds = %lor.lhs.false.140, %do.end
  store i8 0, i8* %step_back, align 1
  %89 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type147 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %89, i32 0, i32 2
  %bf.load148 = load i8, i8* %type147, align 2
  %bf.cast149 = zext i8 %bf.load148 to i32
  %cmp150 = icmp eq i32 %bf.cast149, 40
  br i1 %cmp150, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %if.then.146
  %90 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  store i8 1, i8* %step_back, align 1
  br label %if.end.157

if.else.153:                                      ; preds = %if.then.146
  %91 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %91, i32 0, i32 10
  %92 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %92, i32 0, i32 1
  %93 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8
  %tobool154 = icmp ne %struct.cpp_context* %93, null
  br i1 %tobool154, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.153
  %94 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %state = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %94, i32 0, i32 1
  %in_directive = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %state, i32 0, i32 0
  %95 = load i8, i8* %in_directive, align 1
  %conv155 = zext i8 %95 to i32
  %tobool156 = icmp ne i32 %conv155, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.153
  %96 = phi i1 [ true, %if.else.153 ], [ %tobool156, %lor.rhs ]
  %frombool = zext i1 %96 to i8
  store i8 %frombool, i8* %step_back, align 1
  br label %if.end.157

if.end.157:                                       ; preds = %lor.end, %if.then.152
  %97 = load i8, i8* %step_back, align 1
  %tobool158 = trunc i8 %97 to i1
  br i1 %tobool158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.157
  %98 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_backup_tokens(%struct.cpp_reader* %98, i32 1)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.end.157
  %99 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %100 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %100, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %101 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), i8* %101)
  store i8 1, i8* %error, align 1
  br label %if.end.215

if.else.161:                                      ; preds = %lor.lhs.false.140
  %102 = load i32, i32* %argc, align 4
  %103 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc162 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %103, i32 0, i32 4
  %104 = load i16, i16* %paramc162, align 2
  %conv163 = zext i16 %104 to i32
  %cmp164 = icmp ult i32 %102, %conv163
  br i1 %cmp164, label %if.then.166, label %if.else.196

if.then.166:                                      ; preds = %if.else.161
  %105 = load i32, i32* %argc, align 4
  %add167 = add i32 %105, 1
  %106 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc168 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %106, i32 0, i32 4
  %107 = load i16, i16* %paramc168, align 2
  %conv169 = zext i16 %107 to i32
  %cmp170 = icmp eq i32 %add167, %conv169
  br i1 %cmp170, label %land.lhs.true.172, label %if.else.190

land.lhs.true.172:                                ; preds = %if.then.166
  %108 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %variadic173 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %108, i32 0, i32 5
  %bf.load174 = load i8, i8* %variadic173, align 2
  %bf.lshr175 = lshr i8 %bf.load174, 1
  %bf.clear176 = and i8 %bf.lshr175, 1
  %bf.cast177 = zext i8 %bf.clear176 to i32
  %tobool178 = icmp ne i32 %bf.cast177, 0
  br i1 %tobool178, label %if.then.179, label %if.else.190

if.then.179:                                      ; preds = %land.lhs.true.172
  %109 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %109, i32 0, i32 37
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 42
  %110 = load i8, i8* %pedantic, align 1
  %conv180 = zext i8 %110 to i32
  %tobool181 = icmp ne i32 %conv180, 0
  br i1 %tobool181, label %land.lhs.true.182, label %if.end.189

land.lhs.true.182:                                ; preds = %if.then.179
  %111 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %syshdr = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %111, i32 0, i32 5
  %bf.load183 = load i8, i8* %syshdr, align 2
  %bf.lshr184 = lshr i8 %bf.load183, 2
  %bf.clear185 = and i8 %bf.lshr184, 1
  %bf.cast186 = zext i8 %bf.clear185 to i32
  %tobool187 = icmp ne i32 %bf.cast186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %land.lhs.true.182
  %112 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_pedwarn(%struct.cpp_reader* %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %land.lhs.true.182, %if.then.179
  br label %if.end.195

if.else.190:                                      ; preds = %land.lhs.true.172, %if.then.166
  %113 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %114 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident191 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %114, i32 0, i32 0
  %str192 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident191, i32 0, i32 1
  %115 = load i8*, i8** %str192, align 8
  %116 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc193 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %116, i32 0, i32 4
  %117 = load i16, i16* %paramc193, align 2
  %conv194 = zext i16 %117 to i32
  %118 = load i32, i32* %argc, align 4
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0), i8* %115, i32 %conv194, i32 %118)
  store i8 1, i8* %error, align 1
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.190, %if.end.189
  br label %if.end.214

if.else.196:                                      ; preds = %if.else.161
  %119 = load i32, i32* %argc, align 4
  %120 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc197 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %120, i32 0, i32 4
  %121 = load i16, i16* %paramc197, align 2
  %conv198 = zext i16 %121 to i32
  %cmp199 = icmp ugt i32 %119, %conv198
  br i1 %cmp199, label %if.then.201, label %if.end.213

if.then.201:                                      ; preds = %if.else.196
  %122 = load i32, i32* %argc, align 4
  %cmp202 = icmp ne i32 %122, 1
  br i1 %cmp202, label %if.then.207, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %if.then.201
  %123 = load %struct.macro_arg*, %struct.macro_arg** %arg, align 8
  %count205 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %123, i32 0, i32 3
  %124 = load i32, i32* %count205, align 4
  %tobool206 = icmp ne i32 %124, 0
  br i1 %tobool206, label %if.then.207, label %if.end.212

if.then.207:                                      ; preds = %lor.lhs.false.204, %if.then.201
  %125 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %126 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident208 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %126, i32 0, i32 0
  %str209 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident208, i32 0, i32 1
  %127 = load i8*, i8** %str209, align 8
  %128 = load i32, i32* %argc, align 4
  %129 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8
  %paramc210 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %129, i32 0, i32 4
  %130 = load i16, i16* %paramc210, align 2
  %conv211 = zext i16 %130 to i32
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i8* %127, i32 %128, i32 %conv211)
  store i8 1, i8* %error, align 1
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.207, %lor.lhs.false.204
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.else.196
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.195
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.160
  %131 = load i8, i8* %error, align 1
  %tobool216 = trunc i8 %131 to i1
  br i1 %tobool216, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %if.end.215
  %132 = load %struct._cpp_buff*, %struct._cpp_buff** %base_buff, align 8
  store %struct._cpp_buff* %132, %struct._cpp_buff** %retval
  br label %return

if.end.218:                                       ; preds = %if.end.215
  %133 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %134 = load %struct._cpp_buff*, %struct._cpp_buff** %base_buff, align 8
  call void @_cpp_release_buff(%struct.cpp_reader* %133, %struct._cpp_buff* %134)
  store %struct._cpp_buff* null, %struct._cpp_buff** %retval
  br label %return

return:                                           ; preds = %if.end.218, %if.then.217
  %135 = load %struct._cpp_buff*, %struct._cpp_buff** %retval
  ret %struct._cpp_buff* %135
}

declare %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader*, %struct._cpp_buff*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @stringify_arg(%struct.cpp_reader* %pfile, %struct.macro_arg* %arg) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %arg.addr = alloca %struct.macro_arg*, align 8
  %dest = alloca i8*, align 8
  %i = alloca i32, align 4
  %escape_it = alloca i32, align 4
  %backslash_count = alloca i32, align 4
  %source = alloca %struct.cpp_token*, align 8
  %len = alloca i64, align 8
  %token = alloca %struct.cpp_token*, align 8
  %len_so_far = alloca i64, align 8
  %buff = alloca %struct._cpp_buff*, align 8
  %buf = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.macro_arg* %arg, %struct.macro_arg** %arg.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 7
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i32 0, i32 2
  %2 = load i8*, i8** %cur, align 8
  store i8* %2, i8** %dest, align 8
  store i32 0, i32* %backslash_count, align 4
  store %struct.cpp_token* null, %struct.cpp_token** %source, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %first = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %7, i32 0, i32 0
  %8 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %8, i64 %idxprom
  %9 = load %struct.cpp_token*, %struct.cpp_token** %arrayidx, align 8
  store %struct.cpp_token* %9, %struct.cpp_token** %token, align 8
  %10 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp1 = icmp eq i32 %bf.cast, 66
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %for.body
  %11 = load %struct.cpp_token*, %struct.cpp_token** %source, align 8
  %cmp2 = icmp eq %struct.cpp_token* %11, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i32 0, i32 4
  %source4 = bitcast %union.anon* %val to %struct.cpp_token**
  %13 = load %struct.cpp_token*, %struct.cpp_token** %source4, align 8
  store %struct.cpp_token* %13, %struct.cpp_token** %source, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %14 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type6 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i32 0, i32 2
  %bf.load7 = load i8, i8* %type6, align 2
  %bf.cast8 = zext i8 %bf.load7 to i32
  %cmp9 = icmp eq i32 %bf.cast8, 61
  br i1 %cmp9, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %15 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %15, i32 0, i32 2
  %bf.load11 = load i8, i8* %type10, align 2
  %bf.cast12 = zext i8 %bf.load11 to i32
  %cmp13 = icmp eq i32 %bf.cast12, 62
  br i1 %cmp13, label %lor.end, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %16 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type15 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %16, i32 0, i32 2
  %bf.load16 = load i8, i8* %type15, align 2
  %bf.cast17 = zext i8 %bf.load16 to i32
  %cmp18 = icmp eq i32 %bf.cast17, 58
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.14
  %17 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type19 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %17, i32 0, i32 2
  %bf.load20 = load i8, i8* %type19, align 2
  %bf.cast21 = zext i8 %bf.load20 to i32
  %cmp22 = icmp eq i32 %bf.cast21, 59
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.14, %lor.lhs.false, %if.end.5
  %18 = phi i1 [ true, %lor.lhs.false.14 ], [ true, %lor.lhs.false ], [ true, %if.end.5 ], [ %cmp22, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32
  store i32 %lor.ext, i32* %escape_it, align 4
  %19 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %call = call i32 @cpp_token_len(%struct.cpp_token* %19)
  %conv = zext i32 %call to i64
  store i64 %conv, i64* %len, align 8
  %20 = load i32, i32* %escape_it, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.end
  %21 = load i64, i64* %len, align 8
  %mul = mul i64 %21, 4
  store i64 %mul, i64* %len, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %lor.end
  %22 = load i64, i64* %len, align 8
  %add = add i64 %22, 2
  store i64 %add, i64* %len, align 8
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 7
  %24 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff25, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %24, i32 0, i32 3
  %25 = load i8*, i8** %limit, align 8
  %26 = load i8*, i8** %dest, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i64, i64* %len, align 8
  %cmp26 = icmp ult i64 %sub.ptr.sub, %27
  br i1 %cmp26, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %if.end.24
  %28 = load i8*, i8** %dest, align 8
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff29 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 7
  %30 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff29, align 8
  %cur30 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %30, i32 0, i32 2
  %31 = load i8*, i8** %cur30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast32 = ptrtoint i8* %31 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  store i64 %sub.ptr.sub33, i64* %len_so_far, align 8
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff34 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %33, i32 0, i32 7
  %34 = load i64, i64* %len, align 8
  call void @_cpp_extend_buff(%struct.cpp_reader* %32, %struct._cpp_buff** %u_buff34, i64 %34)
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %35, i32 0, i32 7
  %36 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff35, align 8
  %cur36 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %36, i32 0, i32 2
  %37 = load i8*, i8** %cur36, align 8
  %38 = load i64, i64* %len_so_far, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %add.ptr, i8** %dest, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.28, %if.end.24
  %39 = load i8*, i8** %dest, align 8
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff38 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %40, i32 0, i32 7
  %41 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff38, align 8
  %cur39 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %41, i32 0, i32 2
  %42 = load i8*, i8** %cur39, align 8
  %cmp40 = icmp ne i8* %39, %42
  br i1 %cmp40, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %if.end.37
  %43 = load %struct.cpp_token*, %struct.cpp_token** %source, align 8
  %cmp43 = icmp eq %struct.cpp_token* %43, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  %44 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  store %struct.cpp_token* %44, %struct.cpp_token** %source, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.42
  %45 = load %struct.cpp_token*, %struct.cpp_token** %source, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %45, i32 0, i32 3
  %46 = load i8, i8* %flags, align 1
  %conv47 = zext i8 %46 to i32
  %and = and i32 %conv47, 1
  %tobool48 = icmp ne i32 %and, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  %47 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 32, i8* %47, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  store %struct.cpp_token* null, %struct.cpp_token** %source, align 8
  %48 = load i32, i32* %escape_it, align 4
  %tobool52 = icmp ne i32 %48, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.51
  %49 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %50 = load i64, i64* %len, align 8
  %call54 = call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %49, i64 %50)
  store %struct._cpp_buff* %call54, %struct._cpp_buff** %buff, align 8
  %51 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  %cur55 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %51, i32 0, i32 2
  %52 = load i8*, i8** %cur55, align 8
  store i8* %52, i8** %buf, align 8
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %54 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %55 = load i8*, i8** %buf, align 8
  %call56 = call i8* @cpp_spell_token(%struct.cpp_reader* %53, %struct.cpp_token* %54, i8* %55)
  %56 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast57 = ptrtoint i8* %call56 to i64
  %sub.ptr.rhs.cast58 = ptrtoint i8* %56 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  store i64 %sub.ptr.sub59, i64* %len, align 8
  %57 = load i8*, i8** %dest, align 8
  %58 = load i8*, i8** %buf, align 8
  %59 = load i64, i64* %len, align 8
  %conv60 = trunc i64 %59 to i32
  %call61 = call i8* @cpp_quote_string(i8* %57, i8* %58, i32 %conv60)
  store i8* %call61, i8** %dest, align 8
  %60 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %61 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8
  call void @_cpp_release_buff(%struct.cpp_reader* %60, %struct._cpp_buff* %61)
  br label %if.end.63

if.else:                                          ; preds = %if.end.51
  %62 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %63 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %64 = load i8*, i8** %dest, align 8
  %call62 = call i8* @cpp_spell_token(%struct.cpp_reader* %62, %struct.cpp_token* %63, i8* %64)
  store i8* %call62, i8** %dest, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.53
  %65 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type64 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %65, i32 0, i32 2
  %bf.load65 = load i8, i8* %type64, align 2
  %bf.cast66 = zext i8 %bf.load65 to i32
  %cmp67 = icmp eq i32 %bf.cast66, 60
  br i1 %cmp67, label %land.lhs.true, label %if.else.74

land.lhs.true:                                    ; preds = %if.end.63
  %66 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val69 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %66, i32 0, i32 4
  %c = bitcast %union.anon* %val69 to i8*
  %67 = load i8, i8* %c, align 1
  %conv70 = zext i8 %67 to i32
  %cmp71 = icmp eq i32 %conv70, 92
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true
  %68 = load i32, i32* %backslash_count, align 4
  %inc = add i32 %68, 1
  store i32 %inc, i32* %backslash_count, align 4
  br label %if.end.75

if.else.74:                                       ; preds = %land.lhs.true, %if.end.63
  store i32 0, i32* %backslash_count, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.73
  br label %for.inc

for.inc:                                          ; preds = %if.end.75, %if.end
  %69 = load i32, i32* %i, align 4
  %inc76 = add i32 %69, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32, i32* %backslash_count, align 4
  %and77 = and i32 %70, 1
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %for.end
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0))
  %72 = load i8*, i8** %dest, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %incdec.ptr80, i8** %dest, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %for.end
  %73 = load i8*, i8** %dest, align 8
  %74 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff82 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %74, i32 0, i32 7
  %75 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff82, align 8
  %cur83 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %75, i32 0, i32 2
  %76 = load i8*, i8** %cur83, align 8
  %sub.ptr.lhs.cast84 = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %76 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  store i64 %sub.ptr.sub86, i64* %len, align 8
  %77 = load i8*, i8** %dest, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %u_buff88 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %78, i32 0, i32 7
  %79 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff88, align 8
  %cur89 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %79, i32 0, i32 2
  store i8* %add.ptr87, i8** %cur89, align 8
  %80 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %81 = load i8*, i8** %dest, align 8
  %82 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %82
  %add.ptr90 = getelementptr inbounds i8, i8* %81, i64 %idx.neg
  %83 = load i64, i64* %len, align 8
  %conv91 = trunc i64 %83 to i32
  %call92 = call %struct.cpp_token* @new_string_token(%struct.cpp_reader* %80, i8* %add.ptr90, i32 %conv91)
  ret %struct.cpp_token* %call92
}

; Function Attrs: nounwind uwtable
define internal void @expand_arg(%struct.cpp_reader* %pfile, %struct.macro_arg* %arg) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %arg.addr = alloca %struct.macro_arg*, align 8
  %capacity = alloca i32, align 4
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.macro_arg* %arg, %struct.macro_arg** %arg.addr, align 8
  %0 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 256, i32* %capacity, align 4
  %2 = load i32, i32* %capacity, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to %struct.cpp_token**
  %4 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %expanded = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %4, i32 0, i32 1
  store %struct.cpp_token** %3, %struct.cpp_token*** %expanded, align 8
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %6 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %first = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %6, i32 0, i32 0
  %7 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8
  %8 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %count1 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %8, i32 0, i32 3
  %9 = load i32, i32* %count1, align 4
  %add = add i32 %9, 1
  call void @push_ptoken_context(%struct.cpp_reader* %5, %struct.cpp_hashnode* null, %struct._cpp_buff* null, %struct.cpp_token** %7, i32 %add)
  br label %for.cond

for.cond:                                         ; preds = %if.end.17, %if.end
  %10 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %expanded_count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %10, i32 0, i32 4
  %11 = load i32, i32* %expanded_count, align 4
  %add2 = add i32 %11, 1
  %12 = load i32, i32* %capacity, align 4
  %cmp3 = icmp uge i32 %add2, %12
  br i1 %cmp3, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %for.cond
  %13 = load i32, i32* %capacity, align 4
  %mul6 = mul i32 %13, 2
  store i32 %mul6, i32* %capacity, align 4
  %14 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %expanded7 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %14, i32 0, i32 1
  %15 = load %struct.cpp_token**, %struct.cpp_token*** %expanded7, align 8
  %16 = bitcast %struct.cpp_token** %15 to i8*
  %17 = load i32, i32* %capacity, align 4
  %conv8 = zext i32 %17 to i64
  %mul9 = mul i64 %conv8, 8
  %call10 = call i8* @xrealloc(i8* %16, i64 %mul9)
  %18 = bitcast i8* %call10 to %struct.cpp_token**
  %19 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %expanded11 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %19, i32 0, i32 1
  store %struct.cpp_token** %18, %struct.cpp_token*** %expanded11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.5, %for.cond
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call13 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %20)
  store %struct.cpp_token* %call13, %struct.cpp_token** %token, align 8
  %21 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %21, i32 0, i32 2
  %bf.load = load i8, i8* %type, align 2
  %bf.cast = zext i8 %bf.load to i32
  %cmp14 = icmp eq i32 %bf.cast, 67
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  br label %for.end

if.end.17:                                        ; preds = %if.end.12
  %22 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %23 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %expanded_count18 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %23, i32 0, i32 4
  %24 = load i32, i32* %expanded_count18, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %expanded_count18, align 4
  %idxprom = zext i32 %24 to i64
  %25 = load %struct.macro_arg*, %struct.macro_arg** %arg.addr, align 8
  %expanded19 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %25, i32 0, i32 1
  %26 = load %struct.cpp_token**, %struct.cpp_token*** %expanded19, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %26, i64 %idxprom
  store %struct.cpp_token* %22, %struct.cpp_token** %arrayidx, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.16
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  call void @_cpp_pop_context(%struct.cpp_reader* %27)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @push_ptoken_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %macro, %struct._cpp_buff* %buff, %struct.cpp_token** %first, i32 %count) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_hashnode*, align 8
  %buff.addr = alloca %struct._cpp_buff*, align 8
  %first.addr = alloca %struct.cpp_token**, align 8
  %count.addr = alloca i32, align 4
  %context = alloca %struct.cpp_context*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_hashnode* %macro, %struct.cpp_hashnode** %macro.addr, align 8
  store %struct._cpp_buff* %buff, %struct._cpp_buff** %buff.addr, align 8
  store %struct.cpp_token** %first, %struct.cpp_token*** %first.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_context* @next_context(%struct.cpp_reader* %0)
  store %struct.cpp_context* %call, %struct.cpp_context** %context, align 8
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i32 0, i32 6
  store i8 0, i8* %direct_p, align 1
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro.addr, align 8
  %3 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %macro1 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %3, i32 0, i32 5
  store %struct.cpp_hashnode* %2, %struct.cpp_hashnode** %macro1, align 8
  %4 = load %struct._cpp_buff*, %struct._cpp_buff** %buff.addr, align 8
  %5 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %buff2 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %5, i32 0, i32 4
  store %struct._cpp_buff* %4, %struct._cpp_buff** %buff2, align 8
  %6 = load %struct.cpp_token**, %struct.cpp_token*** %first.addr, align 8
  %7 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %first3 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %7, i32 0, i32 2
  %ptoken = bitcast %union.utoken* %first3 to %struct.cpp_token***
  store %struct.cpp_token** %6, %struct.cpp_token*** %ptoken, align 8
  %8 = load %struct.cpp_token**, %struct.cpp_token*** %first.addr, align 8
  %9 = load i32, i32* %count.addr, align 4
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %8, i64 %idx.ext
  %10 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8
  %last = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %10, i32 0, i32 3
  %ptoken4 = bitcast %union.utoken* %last to %struct.cpp_token***
  store %struct.cpp_token** %add.ptr, %struct.cpp_token*** %ptoken4, align 8
  ret void
}

declare void @_cpp_extend_buff(%struct.cpp_reader*, %struct._cpp_buff**, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @new_string_token(%struct.cpp_reader* %pfile, i8* %text, i32 %len) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %text.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %token = alloca %struct.cpp_token*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load i32, i32* %len.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i8*, i8** %text.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i32 0, i32 2
  store i8 61, i8* %type, align 2
  %4 = load i32, i32* %len.addr, align 4
  %5 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %5, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %len1 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 0
  store i32 %4, i32* %len1, align 4
  %6 = load i8*, i8** %text.addr, align 8
  %7 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i32 0, i32 4
  %str3 = bitcast %union.anon* %val2 to %struct.cpp_string*
  %text4 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str3, i32 0, i32 1
  store i8* %6, i8** %text4, align 8
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  ret %struct.cpp_token* %9
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i8* @_cpp_unaligned_alloc(%struct.cpp_reader*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.cpp_token* @new_number_token(%struct.cpp_reader* %pfile, i32 %number) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %number.addr = alloca i32, align 4
  %token = alloca %struct.cpp_token*, align 8
  %buf = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %0)
  store %struct.cpp_token* %call, %struct.cpp_token** %token, align 8
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call1 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %1, i64 21)
  store i8* %call1, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %3 = load i32, i32* %number.addr, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %3) #3
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i32 0, i32 2
  store i8 57, i8* %type, align 2
  %5 = load i8*, i8** %buf, align 8
  %6 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i32 0, i32 4
  %str = bitcast %union.anon* %val to %struct.cpp_string*
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i32 0, i32 1
  store i8* %5, i8** %text, align 8
  %7 = load i8*, i8** %buf, align 8
  %call3 = call i64 @ustrlen(i8* %7)
  %conv = trunc i64 %call3 to i32
  %8 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %val4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %8, i32 0, i32 4
  %str5 = bitcast %union.anon* %val4 to %struct.cpp_string*
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str5, i32 0, i32 0
  store i32 %conv, i32* %len, align 4
  %9 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i32 0, i32 3
  store i8 0, i8* %flags, align 1
  %10 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8
  ret %struct.cpp_token* %10
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

declare void @_cpp_do__Pragma(%struct.cpp_reader*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ustrlen(i8* %s1) #5 {
entry:
  %s1.addr = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @save_parameter(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_hashnode* %node) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_macro*, align 8
  %node.addr = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_macro* %macro, %struct.cpp_macro** %macro.addr, align 8
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node.addr, align 8
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %arg_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i32 0, i32 1
  %1 = load i16, i16* %arg_index, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %3, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 1
  %4 = load i8*, i8** %str, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* %4)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %5, i32 0, i32 6
  %6 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %6, i32 0, i32 3
  %7 = load i8*, i8** %limit, align 8
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 6
  %9 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff1, align 8
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %9, i32 0, i32 2
  %10 = load i8*, i8** %cur, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %11, i32 0, i32 4
  %12 = load i16, i16* %paramc, align 2
  %conv = zext i16 %12 to i32
  %add = add nsw i32 %conv, 1
  %conv2 = sext i32 %add to i64
  %mul = mul i64 %conv2, 8
  %cmp = icmp ult i64 %sub.ptr.sub, %mul
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 6
  call void @_cpp_extend_buff(%struct.cpp_reader* %13, %struct._cpp_buff** %a_buff5, i64 8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %15 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %16 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %paramc7 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %16, i32 0, i32 4
  %17 = load i16, i16* %paramc7, align 2
  %inc = add i16 %17, 1
  store i16 %inc, i16* %paramc7, align 2
  %idxprom = zext i16 %17 to i64
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %a_buff8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %18, i32 0, i32 6
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff8, align 8
  %cur9 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %19, i32 0, i32 2
  %20 = load i8*, i8** %cur9, align 8
  %21 = bitcast i8* %20 to %struct.cpp_hashnode**
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %21, i64 %idxprom
  store %struct.cpp_hashnode* %15, %struct.cpp_hashnode** %arrayidx, align 8
  %22 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %paramc10 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %22, i32 0, i32 4
  %23 = load i16, i16* %paramc10, align 2
  %24 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node.addr, align 8
  %arg_index11 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %24, i32 0, i32 1
  store i16 %23, i16* %arg_index11, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @check_trad_stringification(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_string* %string) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %macro.addr = alloca %struct.cpp_macro*, align 8
  %string.addr = alloca %struct.cpp_string*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %node = alloca %struct.cpp_hashnode*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store %struct.cpp_macro* %macro, %struct.cpp_macro** %macro.addr, align 8
  store %struct.cpp_string* %string, %struct.cpp_string** %string.addr, align 8
  %0 = load %struct.cpp_string*, %struct.cpp_string** %string.addr, align 8
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %0, i32 0, i32 1
  %1 = load i8*, i8** %text, align 8
  %2 = load %struct.cpp_string*, %struct.cpp_string** %string.addr, align 8
  %len1 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %2, i32 0, i32 0
  %3 = load i32, i32* %len1, align 4
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  %4 = load %struct.cpp_string*, %struct.cpp_string** %string.addr, align 8
  %text2 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %4, i32 0, i32 1
  %5 = load i8*, i8** %text2, align 8
  store i8* %5, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %6 = load i8*, i8** %p, align 8
  %7 = load i8*, i8** %limit, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %limit, align 8
  %cmp3 = icmp ult i8* %8, %9
  br i1 %cmp3, label %land.rhs, label %land.end.12

land.rhs:                                         ; preds = %while.cond
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %12 to i32
  %and5 = and i32 %conv4, 512
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv6 = zext i8 %14 to i32
  %cmp7 = icmp eq i32 %conv6, 36
  br i1 %cmp7, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %lor.rhs
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 37
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 39
  %16 = load i8, i8* %dollars_in_ident, align 1
  %conv10 = zext i8 %16 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %tobool11, %land.rhs.9 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %17, %land.end ]
  %lnot = xor i1 %18, true
  br label %land.end.12

land.end.12:                                      ; preds = %lor.end, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %lnot, %lor.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.12
  %20 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.12
  %21 = load i8*, i8** %p, align 8
  store i8* %21, i8** %q, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.36, %while.end
  %22 = load i8*, i8** %q, align 8
  %23 = load i8*, i8** %limit, align 8
  %cmp14 = icmp ult i8* %22, %23
  br i1 %cmp14, label %land.rhs.16, label %land.end.35

land.rhs.16:                                      ; preds = %while.cond.13
  %24 = load i8*, i8** %q, align 8
  %25 = load i8, i8* %24, align 1
  %conv17 = zext i8 %25 to i32
  %and18 = and i32 %conv17, 255
  %idxprom19 = sext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom19
  %26 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %26 to i32
  %and22 = and i32 %conv21, 516
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %lor.end.34, label %lor.rhs.24

lor.rhs.24:                                       ; preds = %land.rhs.16
  %27 = load i8*, i8** %q, align 8
  %28 = load i8, i8* %27, align 1
  %conv25 = zext i8 %28 to i32
  %cmp26 = icmp eq i32 %conv25, 36
  br i1 %cmp26, label %land.rhs.28, label %land.end.33

land.rhs.28:                                      ; preds = %lor.rhs.24
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts29 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 37
  %dollars_in_ident30 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts29, i32 0, i32 39
  %30 = load i8, i8* %dollars_in_ident30, align 1
  %conv31 = zext i8 %30 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.28, %lor.rhs.24
  %31 = phi i1 [ false, %lor.rhs.24 ], [ %tobool32, %land.rhs.28 ]
  br label %lor.end.34

lor.end.34:                                       ; preds = %land.end.33, %land.rhs.16
  %32 = phi i1 [ true, %land.rhs.16 ], [ %31, %land.end.33 ]
  br label %land.end.35

land.end.35:                                      ; preds = %lor.end.34, %while.cond.13
  %33 = phi i1 [ false, %while.cond.13 ], [ %32, %lor.end.34 ]
  br i1 %33, label %while.body.36, label %while.end.38

while.body.36:                                    ; preds = %land.end.35
  %34 = load i8*, i8** %q, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr37, i8** %q, align 8
  br label %while.cond.13

while.end.38:                                     ; preds = %land.end.35
  %35 = load i8*, i8** %q, align 8
  %36 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv39 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv39, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %while.end.38
  %37 = load i32, i32* %i, align 4
  %38 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %38, i32 0, i32 4
  %39 = load i16, i16* %paramc, align 2
  %conv41 = zext i16 %39 to i32
  %cmp42 = icmp ult i32 %37, %conv41
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.40
  %40 = load i32, i32* %i, align 4
  %idxprom45 = zext i32 %40 to i64
  %41 = load %struct.cpp_macro*, %struct.cpp_macro** %macro.addr, align 8
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %41, i32 0, i32 0
  %42 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8
  %arrayidx46 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %42, i64 %idxprom45
  %43 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx46, align 8
  store %struct.cpp_hashnode* %43, %struct.cpp_hashnode** %node, align 8
  %44 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %44, i32 0, i32 0
  %len47 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident, i32 0, i32 0
  %45 = load i32, i32* %len47, align 4
  %46 = load i32, i32* %len, align 4
  %cmp48 = icmp eq i32 %45, %46
  br i1 %cmp48, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.44
  %47 = load i8*, i8** %p, align 8
  %48 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident50 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %48, i32 0, i32 0
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident50, i32 0, i32 1
  %49 = load i8*, i8** %str, align 8
  %50 = load i32, i32* %len, align 4
  %conv51 = zext i32 %50 to i64
  %call = call i32 @memcmp(i8* %47, i8* %49, i64 %conv51) #8
  %tobool52 = icmp ne i32 %call, 0
  br i1 %tobool52, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %52 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8
  %ident53 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %52, i32 0, i32 0
  %str54 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %ident53, i32 0, i32 1
  %53 = load i8*, i8** %str54, align 8
  call void (%struct.cpp_reader*, i8*, ...) @cpp_warning(%struct.cpp_reader* %51, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i32 0, i32 0), i8* %53)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body.44
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %54 = load i32, i32* %i, align 4
  %inc = add i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.40

for.end:                                          ; preds = %if.then, %for.cond.40
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %55 = load i8*, i8** %q, align 8
  store i8* %55, i8** %p, align 8
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

declare i32 @_cpp_equiv_tokens(%struct.cpp_token*, %struct.cpp_token*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
