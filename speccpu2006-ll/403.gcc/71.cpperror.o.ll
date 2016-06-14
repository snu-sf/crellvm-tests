; ModuleID = 'cpperror.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"internal error: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@progname = external global i8*, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s:%u:\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s:%u:%u:\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_cpp_begin_message(%struct.cpp_reader* %pfile, i32 %code, i32 %line, i32 %column) #0 {
entry:
  %retval = alloca i32, align 4
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %code.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %is_warning = alloca i32, align 4
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  store i32 %column, i32* %column.addr, align 4
  store i32 0, i32* %is_warning, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.42
    i32 5, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i32 0, i32 3
  %2 = load %struct.line_map*, %struct.line_map** %map, align 8
  %tobool = icmp ne %struct.line_map* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %map1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %3, i32 0, i32 3
  %4 = load %struct.line_map*, %struct.line_map** %map1, align 8
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %4, i32 0, i32 5
  %5 = load i8, i8* %sysp, align 1
  %conv = zext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 37
  %warn_system_headers = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 28
  %7 = load i8, i8* %warn_system_headers, align 1
  %tobool4 = icmp ne i8 %7, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %sw.bb
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %if.end
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %8, i32 0, i32 37
  %warnings_are_errors = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts6, i32 0, i32 34
  %9 = load i8, i8* %warnings_are_errors, align 1
  %conv7 = zext i8 %9 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.5
  %10 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i32 0, i32 37
  %pedantic_errors = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts11, i32 0, i32 26
  %12 = load i8, i8* %pedantic_errors, align 1
  %conv12 = zext i8 %12 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.10, %sw.bb.5
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %13, i32 0, i32 37
  %inhibit_errors = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts15, i32 0, i32 29
  %14 = load i8, i8* %inhibit_errors, align 1
  %tobool16 = icmp ne i8 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %15, i32 0, i32 20
  %16 = load i32, i32* %errors, align 4
  %cmp19 = icmp ult i32 %16, 1000
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors22 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i32 0, i32 20
  %18 = load i32, i32* %errors22, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %errors22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.18
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true.10, %lor.lhs.false
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts24 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %19, i32 0, i32 37
  %inhibit_warnings = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts24, i32 0, i32 27
  %20 = load i8, i8* %inhibit_warnings, align 1
  %tobool25 = icmp ne i8 %20, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.else
  store i32 1, i32* %is_warning, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.23
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %21, i32 0, i32 37
  %inhibit_errors31 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts30, i32 0, i32 29
  %22 = load i8, i8* %inhibit_errors31, align 1
  %tobool32 = icmp ne i8 %22, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.29
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.29
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %23, i32 0, i32 20
  %24 = load i32, i32* %errors35, align 4
  %cmp36 = icmp ult i32 %24, 1000
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.34
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %25, i32 0, i32 20
  %26 = load i32, i32* %errors39, align 4
  %inc40 = add i32 %26, 1
  store i32 %inc40, i32* %errors39, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.34
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors43 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %27, i32 0, i32 20
  store i32 1000, i32* %errors43, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors45 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %29, i32 0, i32 20
  store i32 1000, i32* %errors45, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.44, %sw.bb.42, %if.end.41, %if.end.28
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %31 = load i32, i32* %line.addr, align 4
  %32 = load i32, i32* %column.addr, align 4
  call void @print_location(%struct.cpp_reader* %30, i32 %31, i32 %32)
  %33 = load i32, i32* %is_warning, align 4
  %tobool46 = icmp ne i32 %33, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %sw.epilog
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call48 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %34)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %sw.epilog
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.33, %if.then.26, %if.then.17, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_location(%struct.cpp_reader* %pfile, i32 %line, i32 %col) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %buffer = alloca %struct.cpp_buffer*, align 8
  %map = alloca %struct.line_map*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 0
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8
  store %struct.cpp_buffer* %1, %struct.cpp_buffer** %buffer, align 8
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8
  %tobool = icmp ne %struct.cpp_buffer* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %4)
  br label %if.end.30

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %line.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %6, i32 0, i32 15
  %7 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i64 -1
  %line3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %line3, align 4
  store i32 %8, i32* %line.addr, align 4
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %cur_token4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %9, i32 0, i32 15
  %10 = load %struct.cpp_token*, %struct.cpp_token** %cur_token4, align 8
  %arrayidx5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 -1
  %col6 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %arrayidx5, i32 0, i32 1
  %11 = load i16, i16* %col6, align 2
  %conv = zext i16 %11 to i32
  store i32 %conv, i32* %col.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %12, i32 0, i32 2
  %13 = load i32, i32* %line.addr, align 4
  %call7 = call %struct.line_map* @lookup_line(%struct.line_maps* %line_maps, i32 %13)
  store %struct.line_map* %call7, %struct.line_map** %map, align 8
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %line_maps8 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i32 0, i32 2
  %15 = load %struct.line_map*, %struct.line_map** %map, align 8
  call void @print_containing_files(%struct.line_maps* %line_maps8, %struct.line_map* %15)
  %16 = load i32, i32* %line.addr, align 4
  %17 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %17, i32 0, i32 1
  %18 = load i32, i32* %to_line, align 4
  %add = add i32 %16, %18
  %19 = load %struct.line_map*, %struct.line_map** %map, align 8
  %from_line = getelementptr inbounds %struct.line_map, %struct.line_map* %19, i32 0, i32 2
  %20 = load i32, i32* %from_line, align 4
  %sub = sub i32 %add, %20
  store i32 %sub, i32* %line.addr, align 4
  %21 = load i32, i32* %col.addr, align 4
  %cmp9 = icmp eq i32 %21, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* %col.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %22 = load i32, i32* %line.addr, align 4
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %24, i32 0, i32 0
  %25 = load i8*, i8** %to_file, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %25)
  br label %if.end.28

if.else.17:                                       ; preds = %if.end.12
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %26, i32 0, i32 37
  %show_column = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %opts, i32 0, i32 48
  %27 = load i8, i8* %show_column, align 1
  %conv18 = zext i8 %27 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else.17
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file22 = getelementptr inbounds %struct.line_map, %struct.line_map* %29, i32 0, i32 0
  %30 = load i8*, i8** %to_file22, align 8
  %31 = load i32, i32* %line.addr, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %30, i32 %31)
  br label %if.end.27

if.else.24:                                       ; preds = %if.else.17
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load %struct.line_map*, %struct.line_map** %map, align 8
  %to_file25 = getelementptr inbounds %struct.line_map, %struct.line_map* %33, i32 0, i32 0
  %34 = load i8*, i8** %to_file25, align 8
  %35 = load i32, i32* %line.addr, align 4
  %36 = load i32, i32* %col.addr, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %34, i32 %35, i32 %36)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.15
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call29 = call i32 @fputc(i32 32, %struct._IO_FILE* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @cpp_ice(%struct.cpp_reader* %pfile, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 5, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define void @cpp_fatal(%struct.cpp_reader* %pfile, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 4, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_error(%struct.cpp_reader* %pfile, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 3, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 %line, i32 %column, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %column, i32* %column.addr, align 4
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %column.addr, align 4
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 3, i32 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %3, i8* %4, %struct.__va_list_tag* %arraydecay2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_error_from_errno(%struct.cpp_reader* %pfile, i8* %name) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32* @__errno_location() #4
  %2 = load i32, i32* %call, align 4
  %call1 = call i8* @xstrerror(i32 %2)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_error(%struct.cpp_reader* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* %call1)
  ret void
}

declare i8* @xstrerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define void @cpp_warning(%struct.cpp_reader* %pfile, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_warning_with_line(%struct.cpp_reader* %pfile, i32 %line, i32 %column, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %column, i32* %column.addr, align 4
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %column.addr, align 4
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 0, i32 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %3, i8* %4, %struct.__va_list_tag* %arraydecay2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_pedwarn(%struct.cpp_reader* %pfile, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 2, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %1, i8* %2, %struct.__va_list_tag* %arraydecay2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_pedwarn_with_line(%struct.cpp_reader* %pfile, i32 %line, i32 %column, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %line.addr = alloca i32, align 4
  %column.addr = alloca i32, align 4
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %column, i32* %column.addr, align 4
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %column.addr, align 4
  %call = call i32 @_cpp_begin_message(%struct.cpp_reader* %0, i32 2, i32 %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %3, i8* %4, %struct.__va_list_tag* %arraydecay2)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_notice(%struct.cpp_reader* %pfile, i8* %msgid, ...) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i32 0, i32 20
  %1 = load i32, i32* %errors, align 4
  %cmp = icmp ult i32 %1, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %errors2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %2, i32 0, i32 20
  %3 = load i32, i32* %errors2, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %errors2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %msgid.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %4, i8* %5, %struct.__va_list_tag* %arraydecay3)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %6)
  br label %do.end

do.end:                                           ; preds = %do.body
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpp_notice_from_errno(%struct.cpp_reader* %pfile, i8* %name) #0 {
entry:
  %pfile.addr = alloca %struct.cpp_reader*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32* @__errno_location() #4
  %4 = load i32, i32* %call, align 4
  %call2 = call i8* @xstrerror(i32 %4)
  call void (%struct.cpp_reader*, i8*, ...) @cpp_notice(%struct.cpp_reader* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %3, i8* %call2)
  ret void
}

declare %struct.line_map* @lookup_line(%struct.line_maps*, i32) #1

declare void @print_containing_files(%struct.line_maps*, %struct.line_map*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
