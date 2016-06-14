; ModuleID = 'diagnostic.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diagnostic_context = type { %struct.output_buffer, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32, void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)*, i8* }
%struct.output_buffer = type { %struct.output_state, %struct._IO_FILE*, %struct.obstack, i32, [128 x i8], i32 (%struct.output_buffer*)* }
%struct.output_state = type { i8*, i32, i32, i32, i8, i8, i32, i8*, [1 x %struct.__va_list_tag]*, [7 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.file_stack = type { i8*, %struct.file_stack*, i32, i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque

@global_diagnostic_context = internal global %struct.diagnostic_context zeroinitializer, align 8
@global_dc = global %struct.diagnostic_context* @global_diagnostic_context, align 8
@diagnostic_buffer = global %struct.output_buffer* getelementptr inbounds (%struct.diagnostic_context, %struct.diagnostic_context* @global_diagnostic_context, i32 0, i32 0), align 8
@print_error_function = global void (%struct.diagnostic_context*, i8*)* @default_print_error_function, align 8
@last_error_tick = internal global i32 0, align 4
@input_file_stack_tick = external global i32, align 4
@last_error_function = internal global %union.tree_node* null, align 8
@current_function_decl = external global %union.tree_node*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s:%d: warning: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: warning: \00", align 1
@progname = external global i8*, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@inhibit_warnings = external global i32, align 4
@in_system_header = external global i32, align 4
@warn_system_headers = external global i32, align 4
@warnings_are_errors = external global i32, align 4
@count_error.warning_message = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: warnings being treated as errors\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@input_filename = external global i8*, align 8
@lineno = external global i32, align 4
@flag_pedantic_errors = external global i32, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"sorry, not implemented: \00", align 1
@quiet_flag = external global i32, align 4
@rtl_dump_and_exit = external global i32, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@decl_printable_name = external global i8* (%union.tree_node*, i32)*, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"compilation terminated.\0A\00", align 1
@internal_error_function = internal global void (i8*, [1 x %struct.__va_list_tag]*)* null, align 8
@diagnostic_lock = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"%s:%d: confused by earlier errors, bailing out\0A\00", align 1
@.str.12 = private unnamed_addr constant [421 x i8] c"It is possible that you may be trying to use SPEC's version of gcc \0Awithout first defining the appropriate flags.  Please check the flags \0Athat are in the config files from recently-published results on your \0Aplatform, and check that you are using an up-to-date compiler.  If\0Ayou still need help, please contact SPEC, reporting your hw/os \0Aplatform, your compiler version, and your compilation flags.\0AContact SPEC at %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"<URL:http://www.spec.org/>\00", align 1
@trim_filename.this_file = internal constant [13 x i8] c"diagnostic.c\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Internal compiler error in %s, at %s:%d\00", align 1
@warn_deprecated_decl = external global i32, align 4
@tree_code_type = external global [256 x i8], align 16
@.str.15 = private unnamed_addr constant [39 x i8] c"`%s' is deprecated (declared at %s:%d)\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"`%s' is deprecated\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"type is deprecated (declared at %s:%d)\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"type is deprecated\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"diagnostic.c\00", align 1
@__FUNCTION__.output_format = private unnamed_addr constant [14 x i8] c"output_format\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@__FUNCTION__.format_with_decl = private unnamed_addr constant [17 x i8] c"format_with_decl\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"((anonymous))\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.28 = private unnamed_addr constant [63 x i8] c"Internal compiler error: Error reporting routines re-entered.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @default_print_error_function(%struct.diagnostic_context* %context, i8* %file) #0 {
entry:
  %context.addr = alloca %struct.diagnostic_context*, align 8
  %file.addr = alloca i8*, align 8
  store %struct.diagnostic_context* %context, %struct.diagnostic_context** %context.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @error_module_changed() #0 {
entry:
  %0 = load i32, i32* @last_error_tick, align 4
  %1 = load i32, i32* @input_file_stack_tick, align 4
  %cmp = icmp ne i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @record_last_error_module() #0 {
entry:
  %0 = load i32, i32* @input_file_stack_tick, align 4
  store i32 %0, i32* @last_error_tick, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @error_function_changed() #0 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @last_error_function, align 8
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp = icmp ne %union.tree_node* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @record_last_error_function() #0 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  store %union.tree_node* %0, %union.tree_node** @last_error_function, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @diagnostic_initialize(%struct.diagnostic_context* %context) #0 {
entry:
  %context.addr = alloca %struct.diagnostic_context*, align 8
  store %struct.diagnostic_context* %context, %struct.diagnostic_context** %context.addr, align 8
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** %context.addr, align 8
  %1 = bitcast %struct.diagnostic_context* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 376, i32 8, i1 false)
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** %context.addr, align 8
  %buffer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i32 0, i32 0
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %buffer, i32 0, i32 2
  %call = call i32 @_obstack_begin(%struct.obstack* %obstack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.diagnostic_context*, %struct.diagnostic_context** %context.addr, align 8
  %buffer1 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %4, i32 0, i32 0
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %buffer1, i32 0, i32 1
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stream, align 8
  %5 = load %struct.diagnostic_context*, %struct.diagnostic_context** %context.addr, align 8
  %6 = bitcast %struct.diagnostic_context* %5 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i32 0, i32 0
  %prefixing_rule = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 6
  store i32 0, i32* %prefixing_rule, align 4
  %7 = load %struct.diagnostic_context*, %struct.diagnostic_context** %context.addr, align 8
  %begin_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %7, i32 0, i32 6
  store void (%struct.output_buffer*, %struct.diagnostic_context*)* @default_diagnostic_starter, void (%struct.output_buffer*, %struct.diagnostic_context*)** %begin_diagnostic, align 8
  %8 = load %struct.diagnostic_context*, %struct.diagnostic_context** %context.addr, align 8
  %end_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i32 0, i32 7
  store void (%struct.output_buffer*, %struct.diagnostic_context*)* @default_diagnostic_finalizer, void (%struct.output_buffer*, %struct.diagnostic_context*)** %end_diagnostic, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #2

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @default_diagnostic_starter(%struct.output_buffer* %buffer, %struct.diagnostic_context* %dc) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %dc.addr = alloca %struct.diagnostic_context*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store %struct.diagnostic_context* %dc, %struct.diagnostic_context** %dc.addr, align 8
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %file = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i32 0, i32 3
  %1 = load i8*, i8** %file, align 8
  call void @report_error_function(i8* %1)
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %file1 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %3, i32 0, i32 3
  %4 = load i8*, i8** %file1, align 8
  %5 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %line = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %5, i32 0, i32 4
  %6 = load i32, i32* %line, align 4
  %7 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %warn = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %7, i32 0, i32 5
  %8 = load i32, i32* %warn, align 4
  %call = call i8* @context_as_prefix(i8* %4, i32 %6, i32 %8)
  call void @output_set_prefix(%struct.output_buffer* %2, i8* %call)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @default_diagnostic_finalizer(%struct.output_buffer* %buffer, %struct.diagnostic_context* %dc) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %dc.addr = alloca %struct.diagnostic_context*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store %struct.diagnostic_context* %dc, %struct.diagnostic_context** %dc.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_destroy_prefix(%struct.output_buffer* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @output_is_line_wrapping(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %ideal_maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 2
  %1 = load i32, i32* %ideal_maximum_length, align 4
  %cmp = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i8* @output_get_prefix(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %prefix = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 0
  %1 = load i8*, i8** %prefix, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @output_set_maximum_length(%struct.output_buffer* %buffer, i32 %length) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %length.addr = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 0
  %ideal_maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 2
  store i32 %0, i32* %ideal_maximum_length, align 4
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @set_real_maximum_length(%struct.output_buffer* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_real_maximum_length(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %prefix_length = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 @output_is_line_wrapping(%struct.output_buffer* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 0
  %prefixing_rule = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 6
  %2 = load i32, i32* %prefixing_rule, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %prefixing_rule3 = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 6
  %4 = load i32, i32* %prefixing_rule3, align 4
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %5 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %5, i32 0, i32 0
  %ideal_maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state5, i32 0, i32 2
  %6 = load i32, i32* %ideal_maximum_length, align 4
  %7 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state6 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %7, i32 0, i32 0
  %maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state6, i32 0, i32 1
  store i32 %6, i32* %maximum_length, align 4
  br label %if.end.26

if.else:                                          ; preds = %lor.lhs.false.1
  %8 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state7 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 0
  %prefix = getelementptr inbounds %struct.output_state, %struct.output_state* %state7, i32 0, i32 0
  %9 = load i8*, i8** %prefix, align 8
  %tobool8 = icmp ne i8* %9, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state9 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %10, i32 0, i32 0
  %prefix10 = getelementptr inbounds %struct.output_state, %struct.output_state* %state9, i32 0, i32 0
  %11 = load i8*, i8** %prefix10, align 8
  %call11 = call i64 @strlen(i8* %11) #8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call11, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %prefix_length, align 4
  %12 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state12 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 0
  %ideal_maximum_length13 = getelementptr inbounds %struct.output_state, %struct.output_state* %state12, i32 0, i32 2
  %13 = load i32, i32* %ideal_maximum_length13, align 4
  %14 = load i32, i32* %prefix_length, align 4
  %sub = sub nsw i32 %13, %14
  %cmp14 = icmp slt i32 %sub, 32
  br i1 %cmp14, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %cond.end
  %15 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state17 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %15, i32 0, i32 0
  %ideal_maximum_length18 = getelementptr inbounds %struct.output_state, %struct.output_state* %state17, i32 0, i32 2
  %16 = load i32, i32* %ideal_maximum_length18, align 4
  %add = add nsw i32 %16, 32
  %17 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state19 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %17, i32 0, i32 0
  %maximum_length20 = getelementptr inbounds %struct.output_state, %struct.output_state* %state19, i32 0, i32 1
  store i32 %add, i32* %maximum_length20, align 4
  br label %if.end

if.else.21:                                       ; preds = %cond.end
  %18 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state22 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %18, i32 0, i32 0
  %ideal_maximum_length23 = getelementptr inbounds %struct.output_state, %struct.output_state* %state22, i32 0, i32 2
  %19 = load i32, i32* %ideal_maximum_length23, align 4
  %20 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state24 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %20, i32 0, i32 0
  %maximum_length25 = getelementptr inbounds %struct.output_state, %struct.output_state* %state24, i32 0, i32 1
  store i32 %19, i32* %maximum_length25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_set_prefix(%struct.output_buffer* %buffer, i8* %prefix) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %prefix.addr = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i8*, i8** %prefix.addr, align 8
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 0
  %prefix1 = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 0
  store i8* %0, i8** %prefix1, align 8
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @set_real_maximum_length(%struct.output_buffer* %2)
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %emitted_prefix_p = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 4
  store i8 0, i8* %emitted_prefix_p, align 1
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 0
  %indent_skip = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 3
  store i32 0, i32* %indent_skip, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @output_last_position(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %p = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* null, i8** %p, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 2
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %obstack, i32 0, i32 2
  %1 = load i8*, i8** %object_base, align 8
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 2
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %obstack1, i32 0, i32 3
  %3 = load i8*, i8** %next_free, align 8
  %cmp = icmp ne i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 2
  %next_free3 = getelementptr inbounds %struct.obstack, %struct.obstack* %obstack2, i32 0, i32 3
  %5 = load i8*, i8** %next_free3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %p, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define void @output_destroy_prefix(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %prefix = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 0
  %1 = load i8*, i8** %prefix, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %prefix2 = getelementptr inbounds %struct.output_state, %struct.output_state* %state1, i32 0, i32 0
  %3 = load i8*, i8** %prefix2, align 8
  call void @free(i8* %3) #1
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 0
  %prefix4 = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 0
  store i8* null, i8** %prefix4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_clear_message_text(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 2
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 2
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %obstack1, i32 0, i32 2
  %2 = load i8*, i8** %object_base, align 8
  store i8* %2, i8** %__obj, align 8
  %3 = load i8*, i8** %__obj, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 1
  %5 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %6 = bitcast %struct._obstack_chunk* %5 to i8*
  %cmp = icmp ugt i8* %3, %6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %__obj, align 8
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %8, i32 0, i32 4
  %9 = load i8*, i8** %chunk_limit, align 8
  %cmp2 = icmp ult i8* %7, %9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %__obj, align 8
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base3 = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 2
  store i8* %10, i8** %object_base3, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 3
  store i8* %10, i8** %next_free, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %14 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %13, i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %15, i32 0, i32 3
  store i32 0, i32* %line_length, align 4
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #2

; Function Attrs: nounwind uwtable
define void @init_output_buffer(%struct.output_buffer* %buffer, i8* %prefix, i32 %maximum_length) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %prefix.addr = alloca i8*, align 8
  %maximum_length.addr = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 %maximum_length, i32* %maximum_length.addr, align 4
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %1 = bitcast %struct.output_buffer* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 320, i32 8, i1 false)
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 2
  %call = call i32 @_obstack_begin(%struct.obstack* %obstack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 1
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stream, align 8
  %5 = load i32, i32* %maximum_length.addr, align 4
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i32 0, i32 0
  %ideal_maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 2
  store i32 %5, i32* %ideal_maximum_length, align 4
  %7 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %8 = bitcast %struct.diagnostic_context* %7 to %struct.output_buffer*
  %state1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 0
  %prefixing_rule = getelementptr inbounds %struct.output_state, %struct.output_state* %state1, i32 0, i32 6
  %9 = load i32, i32* %prefixing_rule, align 4
  %10 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %10, i32 0, i32 0
  %prefixing_rule3 = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 6
  store i32 %9, i32* %prefixing_rule3, align 4
  %11 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %12 = load i8*, i8** %prefix.addr, align 8
  call void @output_set_prefix(%struct.output_buffer* %11, i8* %12)
  %13 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %13, i32 0, i32 3
  store i32 0, i32* %line_length, align 4
  %14 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @clear_diagnostic_info(%struct.output_buffer* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_diagnostic_info(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 7
  store i8* null, i8** %cursor, align 8
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state1, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* null, [1 x %struct.__va_list_tag]** %format_args, align 8
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %emitted_prefix_p = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 4
  store i8 0, i8* %emitted_prefix_p, align 1
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %indent_skip = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 3
  store i32 0, i32* %indent_skip, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_clear(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_clear_message_text(%struct.output_buffer* %0)
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @clear_diagnostic_info(%struct.output_buffer* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @output_finalize_message(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %__o = alloca %struct.obstack*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 2
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %1 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i32 0, i32 3
  %2 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %5, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free1 = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 3
  %7 = load i8*, i8** %next_free1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %next_free1, align 8
  store i8 0, i8* %7, align 1
  %8 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 2
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %obstack2, i32 0, i32 2
  %9 = load i8*, i8** %object_base, align 8
  ret i8* %9
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #2

; Function Attrs: nounwind uwtable
define void @flush_diagnostic_buffer() #0 {
entry:
  %0 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void @output_buffer_to_stream(%struct.output_buffer* %0)
  %1 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_buffer_to_stream(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %text = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i8* @output_finalize_message(%struct.output_buffer* %0)
  store i8* %call, i8** %text, align 8
  %1 = load i8*, i8** %text, align 8
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call1 = call i32 @fputs(i8* %1, %struct._IO_FILE* %3)
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_clear_message_text(%struct.output_buffer* %4)
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @output_space_left(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %maximum_length = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 1
  %1 = load i32, i32* %maximum_length, align 4
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 3
  %3 = load i32, i32* %line_length, align 4
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define void @output_emit_prefix(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %prefix_length = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %prefix = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 0
  %1 = load i8*, i8** %prefix, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %prefixing_rule = getelementptr inbounds %struct.output_state, %struct.output_state* %state1, i32 0, i32 6
  %3 = load i32, i32* %prefixing_rule, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
    i32 2, label %sw.bb.6
  ]

sw.default:                                       ; preds = %if.then
  br label %sw.bb

sw.bb:                                            ; preds = %if.then, %sw.default
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 0
  %emitted_prefix_p = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 4
  %5 = load i8, i8* %emitted_prefix_p, align 1
  %tobool = trunc i8 %5 to i1
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %sw.bb.2
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_indent(%struct.output_buffer* %6)
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.2
  %7 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %7, i32 0, i32 0
  %indent_skip = getelementptr inbounds %struct.output_state, %struct.output_state* %state5, i32 0, i32 3
  %8 = load i32, i32* %indent_skip, align 4
  %add = add nsw i32 %8, 3
  store i32 %add, i32* %indent_skip, align 4
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %if.then, %if.end
  %9 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state7 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %9, i32 0, i32 0
  %prefix8 = getelementptr inbounds %struct.output_state, %struct.output_state* %state7, i32 0, i32 0
  %10 = load i8*, i8** %prefix8, align 8
  %call = call i64 @strlen(i8* %10) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %prefix_length, align 4
  %11 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %12 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state9 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 0
  %prefix10 = getelementptr inbounds %struct.output_state, %struct.output_state* %state9, i32 0, i32 0
  %13 = load i8*, i8** %prefix10, align 8
  %14 = load i32, i32* %prefix_length, align 4
  call void @output_append_r(%struct.output_buffer* %11, i8* %13, i32 %14)
  %15 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state11 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %15, i32 0, i32 0
  %emitted_prefix_p12 = getelementptr inbounds %struct.output_state, %struct.output_state* %state11, i32 0, i32 4
  store i8 1, i8* %emitted_prefix_p12, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %if.then.4, %sw.bb
  br label %if.end.13

if.end.13:                                        ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_indent(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %indent_skip = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 3
  %1 = load i32, i32* %indent_skip, align 4
  store i32 %1, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_character(%struct.output_buffer* %4, i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @output_append_r(%struct.output_buffer* %buffer, i8* %start, i32 %length) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %start.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 2
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %1 = load i32, i32* %length.addr, align 4
  store i32 %1, i32* %__len, align 4
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 3
  %3 = load i8*, i8** %next_free, align 8
  %4 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 4
  %6 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free1 = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 3
  %10 = load i8*, i8** %next_free1, align 8
  %11 = load i8*, i8** %start.addr, align 8
  %12 = load i32, i32* %__len, align 4
  %conv = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %conv, i32 1, i1 false)
  %13 = load i32, i32* %__len, align 4
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free2, align 8
  %idx.ext3 = sext i32 %13 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %15, i64 %idx.ext3
  store i8* %add.ptr4, i8** %next_free2, align 8
  %16 = load i32, i32* %length.addr, align 4
  %17 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %17, i32 0, i32 3
  %18 = load i32, i32* %line_length, align 4
  %add = add nsw i32 %18, %16
  store i32 %add, i32* %line_length, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_add_newline(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %__o = alloca %struct.obstack*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 2
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %1 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i32 0, i32 3
  %2 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %5, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free1 = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 3
  %7 = load i8*, i8** %next_free1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %next_free1, align 8
  store i8 10, i8* %7, align 1
  %8 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 3
  store i32 0, i32* %line_length, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_add_character(%struct.output_buffer* %buffer, i32 %c) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %c.addr = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 @output_is_line_wrapping(%struct.output_buffer* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call1 = call i32 @output_space_left(%struct.output_buffer* %1)
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_newline(%struct.output_buffer* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 2
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 3
  %5 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %cmp2 = icmp ugt i8* %add.ptr, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %8, i32 1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %9 to i8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %next_free5, align 8
  store i8 %conv, i8* %11, align 1
  %12 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 3
  %13 = load i32, i32* %line_length, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %line_length, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_add_space(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %__o = alloca %struct.obstack*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 @output_is_line_wrapping(%struct.output_buffer* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call1 = call i32 @output_space_left(%struct.output_buffer* %1)
  %cmp = icmp sle i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_newline(%struct.output_buffer* %2)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 2
  store %struct.obstack* %obstack, %struct.obstack** %__o, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 3
  %5 = load i8*, i8** %next_free, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %cmp2 = icmp ugt i8* %add.ptr, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  call void @_obstack_newchunk(%struct.obstack* %8, i32 1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 3
  %10 = load i8*, i8** %next_free5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %next_free5, align 8
  store i8 32, i8* %10, align 1
  %11 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %11, i32 0, i32 3
  %12 = load i32, i32* %line_length, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %line_length, align 4
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_decimal(%struct.output_buffer* %buffer, i32 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @output_add_string(%struct.output_buffer* %buffer, i8* %str) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %4) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %cond
  call void @maybe_wrap_text(%struct.output_buffer* %0, i8* %1, i8* %add.ptr)
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_append(%struct.output_buffer* %buffer, i8* %start, i8* %end) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 3
  %1 = load i32, i32* %line_length, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_emit_prefix(%struct.output_buffer* %2)
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 @output_is_line_wrapping(%struct.output_buffer* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.1
  %4 = load i8*, i8** %start.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ne i8* %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %start.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %start.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %start.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %11 = load i8*, i8** %start.addr, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %13 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  call void @output_append_r(%struct.output_buffer* %10, i8* %11, i32 %conv6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @maybe_wrap_text(%struct.output_buffer* %buffer, i8* %start, i8* %end) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 @output_is_line_wrapping(%struct.output_buffer* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  call void @wrap_text(%struct.output_buffer* %1, i8* %2, i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %5 = load i8*, i8** %start.addr, align 8
  %6 = load i8*, i8** %end.addr, align 8
  call void @output_append(%struct.output_buffer* %4, i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @context_as_prefix(i8* %file, i32 %line, i32 %warn) #0 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %warn.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %warn, i32* %warn.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %warn.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i32, i32* %line.addr, align 4
  %call = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %2, i32 %3)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i8*, i8** %file.addr, align 8
  %5 = load i32, i32* %line.addr, align 4
  %call3 = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %4, i32 %5)
  store i8* %call3, i8** %retval
  br label %return

if.else.4:                                        ; preds = %entry
  %6 = load i32, i32* %warn.addr, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else.4
  %7 = load i8*, i8** @progname, align 8
  %call7 = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %7)
  store i8* %call7, i8** %retval
  br label %return

if.else.8:                                        ; preds = %if.else.4
  %8 = load i8*, i8** @progname, align 8
  %call9 = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %8)
  store i8* %call9, i8** %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.6, %if.else, %if.then.2
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @build_message_string(i8* %msg, ...) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msg, i8** %msg.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msg.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i8* @vbuild_message_string(i8* %0, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %str, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %1 = load i8*, i8** %str, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @file_name_as_prefix(i8* %f) #0 {
entry:
  %f.addr = alloca i8*, align 8
  store i8* %f, i8** %f.addr, align 8
  %0 = load i8*, i8** %f.addr, align 8
  %call = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @output_printf(%struct.output_buffer* %buffer, i8* %msgid, ...) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %msgid.addr = alloca i8*, align 8
  %old_args = alloca [1 x %struct.__va_list_tag]*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 8
  %1 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args, align 8
  store [1 x %struct.__va_list_tag]* %1, [1 x %struct.__va_list_tag]** %old_args, align 8
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %format_args3 = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %ap, [1 x %struct.__va_list_tag]** %format_args3, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %4 = load i8*, i8** %msgid.addr, align 8
  call void @output_do_printf(%struct.output_buffer* %3, i8* %4)
  %5 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %old_args, align 8
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state4 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i32 0, i32 0
  %format_args5 = getelementptr inbounds %struct.output_state, %struct.output_state* %state4, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %5, [1 x %struct.__va_list_tag]** %format_args5, align 8
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @output_do_printf(%struct.output_buffer* %buffer, i8* %msg) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %msg.addr = alloca i8*, align 8
  %message = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %2 = bitcast %struct.output_buffer* %1 to %struct.output_state*
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %2, i32 0, i32 8
  %3 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0
  %call = call i8* @vbuild_message_string(i8* %0, %struct.__va_list_tag* %arraydecay)
  store i8* %call, i8** %message, align 8
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %5 = load i8*, i8** %message, align 8
  %6 = load i8*, i8** %message, align 8
  %7 = load i8*, i8** %message, align 8
  %call1 = call i64 @strlen(i8* %7) #8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %call1
  call void @wrap_text(%struct.output_buffer* %4, i8* %5, i8* %add.ptr)
  %8 = load i8*, i8** %message, align 8
  call void @free(i8* %8) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @count_error(i32 %warningp) #0 {
entry:
  %retval = alloca i32, align 4
  %warningp.addr = alloca i32, align 4
  store i32 %warningp, i32* %warningp.addr, align 4
  %0 = load i32, i32* %warningp.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @inhibit_warnings, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* @in_system_header, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %3 = load i32, i32* @warn_system_headers, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true.2, %entry
  %4 = load i32, i32* %warningp.addr, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %if.end
  %5 = load i32, i32* @warnings_are_errors, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7
  %6 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %7 = bitcast %struct.diagnostic_context* %6 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %7, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 4
  %8 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true.7, %if.end
  %9 = load i32, i32* %warningp.addr, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %if.else
  %10 = load i32, i32* @count_error.warning_message, align 4
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.11
  %11 = load i8*, i8** @progname, align 8
  call void (i8*, ...) @verbatim(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* %11)
  store i32 1, i32* @count_error.warning_message, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.else
  %12 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %13 = bitcast %struct.diagnostic_context* %12 to %struct.output_buffer*
  %state15 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %13, i32 0, i32 0
  %diagnostic_count16 = getelementptr inbounds %struct.output_state, %struct.output_state* %state15, i32 0, i32 9
  %arrayidx17 = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count16, i32 0, i64 3
  %14 = load i32, i32* %arrayidx17, align 4
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, i32* %arrayidx17, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %if.then.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @verbatim(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %1 = load i8*, i8** %msgid.addr, align 8
  call void @output_do_verbatim(%struct.output_buffer* %0, i8* %1, [1 x %struct.__va_list_tag]* %ap)
  %2 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void @output_buffer_to_stream(%struct.output_buffer* %2)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fnotice(%struct._IO_FILE* %file, i8* %msgid, ...) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i8*, i8** %msgid.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: noreturn nounwind uwtable
define void @fatal_io_error(i8* %msgid, ...) #5 {
entry:
  %msgid.addr = alloca i8*, align 8
  %os = alloca %struct.output_state, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %1 = bitcast %struct.output_state* %os to i8*
  %2 = bitcast %struct.output_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 80, i32 8, i1 false)
  %3 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %4 = load i8*, i8** @progname, align 8
  %call = call i32* @__errno_location() #9
  %5 = load i32, i32* %call, align 4
  %call2 = call i8* @xstrerror(i32 %5)
  call void (%struct.output_buffer*, i8*, ...) @output_printf(%struct.output_buffer* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %4, i8* %call2)
  %6 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %ap, [1 x %struct.__va_list_tag]** %format_args, align 8
  %7 = load i8*, i8** %msgid.addr, align 8
  %8 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state4 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state4, i32 0, i32 7
  store i8* %7, i8** %cursor, align 8
  %9 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void @output_format(%struct.output_buffer* %9)
  %10 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %11 = bitcast %struct.diagnostic_context* %10 to %struct.output_buffer*
  call void @diagnostic_finish(%struct.output_buffer* %11)
  %12 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 0
  %13 = bitcast %struct.output_state* %state5 to i8*
  %14 = bitcast %struct.output_state* %os to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 80, i32 8, i1 false)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @xstrerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define internal void @output_format(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %long_integer = alloca i32, align 4
  %p = alloca i8*, align 8
  %n = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 7
  %1 = load i8*, i8** %cursor, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %long_integer, align 4
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %cursor2 = getelementptr inbounds %struct.output_state, %struct.output_state* %state1, i32 0, i32 7
  %4 = load i8*, i8** %cursor2, align 8
  store i8* %4, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv4, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %12 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state6 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 0
  %cursor7 = getelementptr inbounds %struct.output_state, %struct.output_state* %state6, i32 0, i32 7
  %13 = load i8*, i8** %cursor7, align 8
  %14 = load i8*, i8** %p, align 8
  call void @wrap_text(%struct.output_buffer* %11, i8* %13, i8* %14)
  %15 = load i8*, i8** %p, align 8
  %16 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state8 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %16, i32 0, i32 0
  %cursor9 = getelementptr inbounds %struct.output_state, %struct.output_state* %state8, i32 0, i32 7
  store i8* %15, i8** %cursor9, align 8
  %17 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state10 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %17, i32 0, i32 0
  %cursor11 = getelementptr inbounds %struct.output_state, %struct.output_state* %state10, i32 0, i32 7
  %18 = load i8*, i8** %cursor11, align 8
  %19 = load i8, i8* %18, align 1
  %tobool12 = icmp ne i8 %19, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %20 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state13 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %20, i32 0, i32 0
  %cursor14 = getelementptr inbounds %struct.output_state, %struct.output_state* %state13, i32 0, i32 7
  %21 = load i8*, i8** %cursor14, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr15, i8** %cursor14, align 8
  %22 = load i8, i8* %incdec.ptr15, align 1
  %conv16 = sext i8 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 108
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end
  store i32 1, i32* %long_integer, align 4
  %23 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state20 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %23, i32 0, i32 0
  %cursor21 = getelementptr inbounds %struct.output_state, %struct.output_state* %state20, i32 0, i32 7
  %24 = load i8*, i8** %cursor21, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr22, i8** %cursor21, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end
  %25 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state24 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %25, i32 0, i32 0
  %cursor25 = getelementptr inbounds %struct.output_state, %struct.output_state* %state24, i32 0, i32 7
  %26 = load i8*, i8** %cursor25, align 8
  %27 = load i8, i8* %26, align 1
  %conv26 = sext i8 %27 to i32
  switch i32 %conv26, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb.27
    i32 105, label %sw.bb.27
    i32 111, label %sw.bb.57
    i32 115, label %sw.bb.88
    i32 117, label %sw.bb.102
    i32 120, label %sw.bb.133
    i32 37, label %sw.bb.164
    i32 46, label %sw.bb.165
  ]

sw.bb:                                            ; preds = %if.end.23
  %28 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %29 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %30 = bitcast %struct.output_buffer* %29 to %struct.output_state*
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %30, i32 0, i32 8
  %31 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %31, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %32
  %33 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %34 = bitcast i8* %33 to i32*
  %35 = add i32 %gp_offset, 8
  store i32 %35, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %36 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %34, %vaarg.in_reg ], [ %36, %vaarg.in_mem ]
  %37 = load i32, i32* %vaarg.addr
  call void @output_add_character(%struct.output_buffer* %28, i32 %37)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.23, %if.end.23
  %38 = load i32, i32* %long_integer, align 4
  %tobool28 = icmp ne i32 %38, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %sw.bb.27
  %39 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %40 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %41 = bitcast %struct.output_buffer* %40 to %struct.output_state*
  %format_args30 = getelementptr inbounds %struct.output_state, %struct.output_state* %41, i32 0, i32 8
  %42 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args30, align 8
  %arraydecay31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %42, i32 0, i32 0
  %gp_offset_p32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 0
  %gp_offset33 = load i32, i32* %gp_offset_p32
  %fits_in_gp34 = icmp ule i32 %gp_offset33, 40
  br i1 %fits_in_gp34, label %vaarg.in_reg.35, label %vaarg.in_mem.37

vaarg.in_reg.35:                                  ; preds = %if.then.29
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 3
  %reg_save_area36 = load i8*, i8** %43
  %44 = getelementptr i8, i8* %reg_save_area36, i32 %gp_offset33
  %45 = bitcast i8* %44 to i64*
  %46 = add i32 %gp_offset33, 8
  store i32 %46, i32* %gp_offset_p32
  br label %vaarg.end.41

vaarg.in_mem.37:                                  ; preds = %if.then.29
  %overflow_arg_area_p38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 2
  %overflow_arg_area39 = load i8*, i8** %overflow_arg_area_p38
  %47 = bitcast i8* %overflow_arg_area39 to i64*
  %overflow_arg_area.next40 = getelementptr i8, i8* %overflow_arg_area39, i32 8
  store i8* %overflow_arg_area.next40, i8** %overflow_arg_area_p38
  br label %vaarg.end.41

vaarg.end.41:                                     ; preds = %vaarg.in_mem.37, %vaarg.in_reg.35
  %vaarg.addr42 = phi i64* [ %45, %vaarg.in_reg.35 ], [ %47, %vaarg.in_mem.37 ]
  %48 = load i64, i64* %vaarg.addr42
  call void @output_long_decimal(%struct.output_buffer* %39, i64 %48)
  br label %if.end.56

if.else:                                          ; preds = %sw.bb.27
  %49 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %50 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %51 = bitcast %struct.output_buffer* %50 to %struct.output_state*
  %format_args43 = getelementptr inbounds %struct.output_state, %struct.output_state* %51, i32 0, i32 8
  %52 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args43, align 8
  %arraydecay44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %52, i32 0, i32 0
  %gp_offset_p45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 0
  %gp_offset46 = load i32, i32* %gp_offset_p45
  %fits_in_gp47 = icmp ule i32 %gp_offset46, 40
  br i1 %fits_in_gp47, label %vaarg.in_reg.48, label %vaarg.in_mem.50

vaarg.in_reg.48:                                  ; preds = %if.else
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 3
  %reg_save_area49 = load i8*, i8** %53
  %54 = getelementptr i8, i8* %reg_save_area49, i32 %gp_offset46
  %55 = bitcast i8* %54 to i32*
  %56 = add i32 %gp_offset46, 8
  store i32 %56, i32* %gp_offset_p45
  br label %vaarg.end.54

vaarg.in_mem.50:                                  ; preds = %if.else
  %overflow_arg_area_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 2
  %overflow_arg_area52 = load i8*, i8** %overflow_arg_area_p51
  %57 = bitcast i8* %overflow_arg_area52 to i32*
  %overflow_arg_area.next53 = getelementptr i8, i8* %overflow_arg_area52, i32 8
  store i8* %overflow_arg_area.next53, i8** %overflow_arg_area_p51
  br label %vaarg.end.54

vaarg.end.54:                                     ; preds = %vaarg.in_mem.50, %vaarg.in_reg.48
  %vaarg.addr55 = phi i32* [ %55, %vaarg.in_reg.48 ], [ %57, %vaarg.in_mem.50 ]
  %58 = load i32, i32* %vaarg.addr55
  call void @output_decimal(%struct.output_buffer* %49, i32 %58)
  br label %if.end.56

if.end.56:                                        ; preds = %vaarg.end.54, %vaarg.end.41
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.23
  %59 = load i32, i32* %long_integer, align 4
  %tobool58 = icmp ne i32 %59, 0
  br i1 %tobool58, label %if.then.59, label %if.else.73

if.then.59:                                       ; preds = %sw.bb.57
  %60 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %61 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %62 = bitcast %struct.output_buffer* %61 to %struct.output_state*
  %format_args60 = getelementptr inbounds %struct.output_state, %struct.output_state* %62, i32 0, i32 8
  %63 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args60, align 8
  %arraydecay61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %63, i32 0, i32 0
  %gp_offset_p62 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay61, i32 0, i32 0
  %gp_offset63 = load i32, i32* %gp_offset_p62
  %fits_in_gp64 = icmp ule i32 %gp_offset63, 40
  br i1 %fits_in_gp64, label %vaarg.in_reg.65, label %vaarg.in_mem.67

vaarg.in_reg.65:                                  ; preds = %if.then.59
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay61, i32 0, i32 3
  %reg_save_area66 = load i8*, i8** %64
  %65 = getelementptr i8, i8* %reg_save_area66, i32 %gp_offset63
  %66 = bitcast i8* %65 to i64*
  %67 = add i32 %gp_offset63, 8
  store i32 %67, i32* %gp_offset_p62
  br label %vaarg.end.71

vaarg.in_mem.67:                                  ; preds = %if.then.59
  %overflow_arg_area_p68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay61, i32 0, i32 2
  %overflow_arg_area69 = load i8*, i8** %overflow_arg_area_p68
  %68 = bitcast i8* %overflow_arg_area69 to i64*
  %overflow_arg_area.next70 = getelementptr i8, i8* %overflow_arg_area69, i32 8
  store i8* %overflow_arg_area.next70, i8** %overflow_arg_area_p68
  br label %vaarg.end.71

vaarg.end.71:                                     ; preds = %vaarg.in_mem.67, %vaarg.in_reg.65
  %vaarg.addr72 = phi i64* [ %66, %vaarg.in_reg.65 ], [ %68, %vaarg.in_mem.67 ]
  %69 = load i64, i64* %vaarg.addr72
  call void @output_long_octal(%struct.output_buffer* %60, i64 %69)
  br label %if.end.87

if.else.73:                                       ; preds = %sw.bb.57
  %70 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %71 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %72 = bitcast %struct.output_buffer* %71 to %struct.output_state*
  %format_args74 = getelementptr inbounds %struct.output_state, %struct.output_state* %72, i32 0, i32 8
  %73 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args74, align 8
  %arraydecay75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %73, i32 0, i32 0
  %gp_offset_p76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay75, i32 0, i32 0
  %gp_offset77 = load i32, i32* %gp_offset_p76
  %fits_in_gp78 = icmp ule i32 %gp_offset77, 40
  br i1 %fits_in_gp78, label %vaarg.in_reg.79, label %vaarg.in_mem.81

vaarg.in_reg.79:                                  ; preds = %if.else.73
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay75, i32 0, i32 3
  %reg_save_area80 = load i8*, i8** %74
  %75 = getelementptr i8, i8* %reg_save_area80, i32 %gp_offset77
  %76 = bitcast i8* %75 to i32*
  %77 = add i32 %gp_offset77, 8
  store i32 %77, i32* %gp_offset_p76
  br label %vaarg.end.85

vaarg.in_mem.81:                                  ; preds = %if.else.73
  %overflow_arg_area_p82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay75, i32 0, i32 2
  %overflow_arg_area83 = load i8*, i8** %overflow_arg_area_p82
  %78 = bitcast i8* %overflow_arg_area83 to i32*
  %overflow_arg_area.next84 = getelementptr i8, i8* %overflow_arg_area83, i32 8
  store i8* %overflow_arg_area.next84, i8** %overflow_arg_area_p82
  br label %vaarg.end.85

vaarg.end.85:                                     ; preds = %vaarg.in_mem.81, %vaarg.in_reg.79
  %vaarg.addr86 = phi i32* [ %76, %vaarg.in_reg.79 ], [ %78, %vaarg.in_mem.81 ]
  %79 = load i32, i32* %vaarg.addr86
  call void @output_octal(%struct.output_buffer* %70, i32 %79)
  br label %if.end.87

if.end.87:                                        ; preds = %vaarg.end.85, %vaarg.end.71
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end.23
  %80 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %81 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %82 = bitcast %struct.output_buffer* %81 to %struct.output_state*
  %format_args89 = getelementptr inbounds %struct.output_state, %struct.output_state* %82, i32 0, i32 8
  %83 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args89, align 8
  %arraydecay90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %83, i32 0, i32 0
  %gp_offset_p91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay90, i32 0, i32 0
  %gp_offset92 = load i32, i32* %gp_offset_p91
  %fits_in_gp93 = icmp ule i32 %gp_offset92, 40
  br i1 %fits_in_gp93, label %vaarg.in_reg.94, label %vaarg.in_mem.96

vaarg.in_reg.94:                                  ; preds = %sw.bb.88
  %84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay90, i32 0, i32 3
  %reg_save_area95 = load i8*, i8** %84
  %85 = getelementptr i8, i8* %reg_save_area95, i32 %gp_offset92
  %86 = bitcast i8* %85 to i8**
  %87 = add i32 %gp_offset92, 8
  store i32 %87, i32* %gp_offset_p91
  br label %vaarg.end.100

vaarg.in_mem.96:                                  ; preds = %sw.bb.88
  %overflow_arg_area_p97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay90, i32 0, i32 2
  %overflow_arg_area98 = load i8*, i8** %overflow_arg_area_p97
  %88 = bitcast i8* %overflow_arg_area98 to i8**
  %overflow_arg_area.next99 = getelementptr i8, i8* %overflow_arg_area98, i32 8
  store i8* %overflow_arg_area.next99, i8** %overflow_arg_area_p97
  br label %vaarg.end.100

vaarg.end.100:                                    ; preds = %vaarg.in_mem.96, %vaarg.in_reg.94
  %vaarg.addr101 = phi i8** [ %86, %vaarg.in_reg.94 ], [ %88, %vaarg.in_mem.96 ]
  %89 = load i8*, i8** %vaarg.addr101
  call void @output_add_string(%struct.output_buffer* %80, i8* %89)
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.23
  %90 = load i32, i32* %long_integer, align 4
  %tobool103 = icmp ne i32 %90, 0
  br i1 %tobool103, label %if.then.104, label %if.else.118

if.then.104:                                      ; preds = %sw.bb.102
  %91 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %92 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %93 = bitcast %struct.output_buffer* %92 to %struct.output_state*
  %format_args105 = getelementptr inbounds %struct.output_state, %struct.output_state* %93, i32 0, i32 8
  %94 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args105, align 8
  %arraydecay106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %94, i32 0, i32 0
  %gp_offset_p107 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay106, i32 0, i32 0
  %gp_offset108 = load i32, i32* %gp_offset_p107
  %fits_in_gp109 = icmp ule i32 %gp_offset108, 40
  br i1 %fits_in_gp109, label %vaarg.in_reg.110, label %vaarg.in_mem.112

vaarg.in_reg.110:                                 ; preds = %if.then.104
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay106, i32 0, i32 3
  %reg_save_area111 = load i8*, i8** %95
  %96 = getelementptr i8, i8* %reg_save_area111, i32 %gp_offset108
  %97 = bitcast i8* %96 to i64*
  %98 = add i32 %gp_offset108, 8
  store i32 %98, i32* %gp_offset_p107
  br label %vaarg.end.116

vaarg.in_mem.112:                                 ; preds = %if.then.104
  %overflow_arg_area_p113 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay106, i32 0, i32 2
  %overflow_arg_area114 = load i8*, i8** %overflow_arg_area_p113
  %99 = bitcast i8* %overflow_arg_area114 to i64*
  %overflow_arg_area.next115 = getelementptr i8, i8* %overflow_arg_area114, i32 8
  store i8* %overflow_arg_area.next115, i8** %overflow_arg_area_p113
  br label %vaarg.end.116

vaarg.end.116:                                    ; preds = %vaarg.in_mem.112, %vaarg.in_reg.110
  %vaarg.addr117 = phi i64* [ %97, %vaarg.in_reg.110 ], [ %99, %vaarg.in_mem.112 ]
  %100 = load i64, i64* %vaarg.addr117
  call void @output_long_unsigned_decimal(%struct.output_buffer* %91, i64 %100)
  br label %if.end.132

if.else.118:                                      ; preds = %sw.bb.102
  %101 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %102 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %103 = bitcast %struct.output_buffer* %102 to %struct.output_state*
  %format_args119 = getelementptr inbounds %struct.output_state, %struct.output_state* %103, i32 0, i32 8
  %104 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args119, align 8
  %arraydecay120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %104, i32 0, i32 0
  %gp_offset_p121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay120, i32 0, i32 0
  %gp_offset122 = load i32, i32* %gp_offset_p121
  %fits_in_gp123 = icmp ule i32 %gp_offset122, 40
  br i1 %fits_in_gp123, label %vaarg.in_reg.124, label %vaarg.in_mem.126

vaarg.in_reg.124:                                 ; preds = %if.else.118
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay120, i32 0, i32 3
  %reg_save_area125 = load i8*, i8** %105
  %106 = getelementptr i8, i8* %reg_save_area125, i32 %gp_offset122
  %107 = bitcast i8* %106 to i32*
  %108 = add i32 %gp_offset122, 8
  store i32 %108, i32* %gp_offset_p121
  br label %vaarg.end.130

vaarg.in_mem.126:                                 ; preds = %if.else.118
  %overflow_arg_area_p127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay120, i32 0, i32 2
  %overflow_arg_area128 = load i8*, i8** %overflow_arg_area_p127
  %109 = bitcast i8* %overflow_arg_area128 to i32*
  %overflow_arg_area.next129 = getelementptr i8, i8* %overflow_arg_area128, i32 8
  store i8* %overflow_arg_area.next129, i8** %overflow_arg_area_p127
  br label %vaarg.end.130

vaarg.end.130:                                    ; preds = %vaarg.in_mem.126, %vaarg.in_reg.124
  %vaarg.addr131 = phi i32* [ %107, %vaarg.in_reg.124 ], [ %109, %vaarg.in_mem.126 ]
  %110 = load i32, i32* %vaarg.addr131
  call void @output_unsigned_decimal(%struct.output_buffer* %101, i32 %110)
  br label %if.end.132

if.end.132:                                       ; preds = %vaarg.end.130, %vaarg.end.116
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.23
  %111 = load i32, i32* %long_integer, align 4
  %tobool134 = icmp ne i32 %111, 0
  br i1 %tobool134, label %if.then.135, label %if.else.149

if.then.135:                                      ; preds = %sw.bb.133
  %112 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %113 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %114 = bitcast %struct.output_buffer* %113 to %struct.output_state*
  %format_args136 = getelementptr inbounds %struct.output_state, %struct.output_state* %114, i32 0, i32 8
  %115 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args136, align 8
  %arraydecay137 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %115, i32 0, i32 0
  %gp_offset_p138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay137, i32 0, i32 0
  %gp_offset139 = load i32, i32* %gp_offset_p138
  %fits_in_gp140 = icmp ule i32 %gp_offset139, 40
  br i1 %fits_in_gp140, label %vaarg.in_reg.141, label %vaarg.in_mem.143

vaarg.in_reg.141:                                 ; preds = %if.then.135
  %116 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay137, i32 0, i32 3
  %reg_save_area142 = load i8*, i8** %116
  %117 = getelementptr i8, i8* %reg_save_area142, i32 %gp_offset139
  %118 = bitcast i8* %117 to i64*
  %119 = add i32 %gp_offset139, 8
  store i32 %119, i32* %gp_offset_p138
  br label %vaarg.end.147

vaarg.in_mem.143:                                 ; preds = %if.then.135
  %overflow_arg_area_p144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay137, i32 0, i32 2
  %overflow_arg_area145 = load i8*, i8** %overflow_arg_area_p144
  %120 = bitcast i8* %overflow_arg_area145 to i64*
  %overflow_arg_area.next146 = getelementptr i8, i8* %overflow_arg_area145, i32 8
  store i8* %overflow_arg_area.next146, i8** %overflow_arg_area_p144
  br label %vaarg.end.147

vaarg.end.147:                                    ; preds = %vaarg.in_mem.143, %vaarg.in_reg.141
  %vaarg.addr148 = phi i64* [ %118, %vaarg.in_reg.141 ], [ %120, %vaarg.in_mem.143 ]
  %121 = load i64, i64* %vaarg.addr148
  call void @output_long_hexadecimal(%struct.output_buffer* %112, i64 %121)
  br label %if.end.163

if.else.149:                                      ; preds = %sw.bb.133
  %122 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %123 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %124 = bitcast %struct.output_buffer* %123 to %struct.output_state*
  %format_args150 = getelementptr inbounds %struct.output_state, %struct.output_state* %124, i32 0, i32 8
  %125 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args150, align 8
  %arraydecay151 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %125, i32 0, i32 0
  %gp_offset_p152 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay151, i32 0, i32 0
  %gp_offset153 = load i32, i32* %gp_offset_p152
  %fits_in_gp154 = icmp ule i32 %gp_offset153, 40
  br i1 %fits_in_gp154, label %vaarg.in_reg.155, label %vaarg.in_mem.157

vaarg.in_reg.155:                                 ; preds = %if.else.149
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay151, i32 0, i32 3
  %reg_save_area156 = load i8*, i8** %126
  %127 = getelementptr i8, i8* %reg_save_area156, i32 %gp_offset153
  %128 = bitcast i8* %127 to i32*
  %129 = add i32 %gp_offset153, 8
  store i32 %129, i32* %gp_offset_p152
  br label %vaarg.end.161

vaarg.in_mem.157:                                 ; preds = %if.else.149
  %overflow_arg_area_p158 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay151, i32 0, i32 2
  %overflow_arg_area159 = load i8*, i8** %overflow_arg_area_p158
  %130 = bitcast i8* %overflow_arg_area159 to i32*
  %overflow_arg_area.next160 = getelementptr i8, i8* %overflow_arg_area159, i32 8
  store i8* %overflow_arg_area.next160, i8** %overflow_arg_area_p158
  br label %vaarg.end.161

vaarg.end.161:                                    ; preds = %vaarg.in_mem.157, %vaarg.in_reg.155
  %vaarg.addr162 = phi i32* [ %128, %vaarg.in_reg.155 ], [ %130, %vaarg.in_mem.157 ]
  %131 = load i32, i32* %vaarg.addr162
  call void @output_hexadecimal(%struct.output_buffer* %122, i32 %131)
  br label %if.end.163

if.end.163:                                       ; preds = %vaarg.end.161, %vaarg.end.147
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.end.23
  %132 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_character(%struct.output_buffer* %132, i32 37)
  br label %sw.epilog

sw.bb.165:                                        ; preds = %if.end.23
  %133 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state166 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %133, i32 0, i32 0
  %cursor167 = getelementptr inbounds %struct.output_state, %struct.output_state* %state166, i32 0, i32 7
  %134 = load i8*, i8** %cursor167, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr168, i8** %cursor167, align 8
  %135 = load i8, i8* %incdec.ptr168, align 1
  %conv169 = sext i8 %135 to i32
  %cmp170 = icmp ne i32 %conv169, 42
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %sw.bb.165
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 723, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.output_format, i32 0, i32 0)) #11
  unreachable

if.else.173:                                      ; preds = %sw.bb.165
  %136 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state174 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %136, i32 0, i32 0
  %cursor175 = getelementptr inbounds %struct.output_state, %struct.output_state* %state174, i32 0, i32 7
  %137 = load i8*, i8** %cursor175, align 8
  %incdec.ptr176 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr176, i8** %cursor175, align 8
  %138 = load i8, i8* %incdec.ptr176, align 1
  %conv177 = sext i8 %138 to i32
  %cmp178 = icmp ne i32 %conv177, 115
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %if.else.173
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 725, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.output_format, i32 0, i32 0)) #11
  unreachable

if.end.181:                                       ; preds = %if.else.173
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181
  %139 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %140 = bitcast %struct.output_buffer* %139 to %struct.output_state*
  %format_args183 = getelementptr inbounds %struct.output_state, %struct.output_state* %140, i32 0, i32 8
  %141 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args183, align 8
  %arraydecay184 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %141, i32 0, i32 0
  %gp_offset_p185 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay184, i32 0, i32 0
  %gp_offset186 = load i32, i32* %gp_offset_p185
  %fits_in_gp187 = icmp ule i32 %gp_offset186, 40
  br i1 %fits_in_gp187, label %vaarg.in_reg.188, label %vaarg.in_mem.190

vaarg.in_reg.188:                                 ; preds = %if.end.182
  %142 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay184, i32 0, i32 3
  %reg_save_area189 = load i8*, i8** %142
  %143 = getelementptr i8, i8* %reg_save_area189, i32 %gp_offset186
  %144 = bitcast i8* %143 to i32*
  %145 = add i32 %gp_offset186, 8
  store i32 %145, i32* %gp_offset_p185
  br label %vaarg.end.194

vaarg.in_mem.190:                                 ; preds = %if.end.182
  %overflow_arg_area_p191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay184, i32 0, i32 2
  %overflow_arg_area192 = load i8*, i8** %overflow_arg_area_p191
  %146 = bitcast i8* %overflow_arg_area192 to i32*
  %overflow_arg_area.next193 = getelementptr i8, i8* %overflow_arg_area192, i32 8
  store i8* %overflow_arg_area.next193, i8** %overflow_arg_area_p191
  br label %vaarg.end.194

vaarg.end.194:                                    ; preds = %vaarg.in_mem.190, %vaarg.in_reg.188
  %vaarg.addr195 = phi i32* [ %144, %vaarg.in_reg.188 ], [ %146, %vaarg.in_mem.190 ]
  %147 = load i32, i32* %vaarg.addr195
  store i32 %147, i32* %n, align 4
  %148 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %149 = bitcast %struct.output_buffer* %148 to %struct.output_state*
  %format_args196 = getelementptr inbounds %struct.output_state, %struct.output_state* %149, i32 0, i32 8
  %150 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args196, align 8
  %arraydecay197 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %150, i32 0, i32 0
  %gp_offset_p198 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay197, i32 0, i32 0
  %gp_offset199 = load i32, i32* %gp_offset_p198
  %fits_in_gp200 = icmp ule i32 %gp_offset199, 40
  br i1 %fits_in_gp200, label %vaarg.in_reg.201, label %vaarg.in_mem.203

vaarg.in_reg.201:                                 ; preds = %vaarg.end.194
  %151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay197, i32 0, i32 3
  %reg_save_area202 = load i8*, i8** %151
  %152 = getelementptr i8, i8* %reg_save_area202, i32 %gp_offset199
  %153 = bitcast i8* %152 to i8**
  %154 = add i32 %gp_offset199, 8
  store i32 %154, i32* %gp_offset_p198
  br label %vaarg.end.207

vaarg.in_mem.203:                                 ; preds = %vaarg.end.194
  %overflow_arg_area_p204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay197, i32 0, i32 2
  %overflow_arg_area205 = load i8*, i8** %overflow_arg_area_p204
  %155 = bitcast i8* %overflow_arg_area205 to i8**
  %overflow_arg_area.next206 = getelementptr i8, i8* %overflow_arg_area205, i32 8
  store i8* %overflow_arg_area.next206, i8** %overflow_arg_area_p204
  br label %vaarg.end.207

vaarg.end.207:                                    ; preds = %vaarg.in_mem.203, %vaarg.in_reg.201
  %vaarg.addr208 = phi i8** [ %153, %vaarg.in_reg.201 ], [ %155, %vaarg.in_mem.203 ]
  %156 = load i8*, i8** %vaarg.addr208
  store i8* %156, i8** %s, align 8
  %157 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %158 = load i8*, i8** %s, align 8
  %159 = load i8*, i8** %s, align 8
  %160 = load i32, i32* %n, align 4
  %idx.ext = sext i32 %160 to i64
  %add.ptr = getelementptr inbounds i8, i8* %159, i64 %idx.ext
  call void @output_append(%struct.output_buffer* %157, i8* %158, i8* %add.ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.23
  %161 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %format_decoder = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %161, i32 0, i32 5
  %162 = load i32 (%struct.output_buffer*)*, i32 (%struct.output_buffer*)** %format_decoder, align 8
  %tobool209 = icmp ne i32 (%struct.output_buffer*)* %162, null
  br i1 %tobool209, label %lor.lhs.false, label %if.then.212

lor.lhs.false:                                    ; preds = %sw.default
  %163 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %format_decoder210 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %163, i32 0, i32 5
  %164 = load i32 (%struct.output_buffer*)*, i32 (%struct.output_buffer*)** %format_decoder210, align 8
  %165 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 %164(%struct.output_buffer* %165)
  %tobool211 = icmp ne i32 %call, 0
  br i1 %tobool211, label %if.end.213, label %if.then.212

if.then.212:                                      ; preds = %lor.lhs.false, %sw.default
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 737, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.output_format, i32 0, i32 0)) #11
  unreachable

if.end.213:                                       ; preds = %lor.lhs.false
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.213, %vaarg.end.207, %sw.bb.164, %if.end.163, %if.end.132, %vaarg.end.100, %if.end.87, %if.end.56, %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %166 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state214 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %166, i32 0, i32 0
  %cursor215 = getelementptr inbounds %struct.output_state, %struct.output_state* %state214, i32 0, i32 7
  %167 = load i8*, i8** %cursor215, align 8
  %incdec.ptr216 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr216, i8** %cursor215, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @diagnostic_finish(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_buffer_to_stream(%struct.output_buffer* %0)
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @clear_diagnostic_info(%struct.output_buffer* %1)
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %stream1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream1, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %5)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind uwtable
define void @pedwarn(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msgid.addr, align 8
  %1 = load i8*, i8** @input_filename, align 8
  %2 = load i32, i32* @lineno, align 4
  %3 = load i32, i32* @flag_pedantic_errors, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %ap, i8* %1, i32 %2, i32 %lnot.ext)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %msgid, [1 x %struct.__va_list_tag]* %args_ptr, i8* %file, i32 %line, i32 %warn) #0 {
entry:
  %dc.addr = alloca %struct.diagnostic_context*, align 8
  %msgid.addr = alloca i8*, align 8
  %args_ptr.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %warn.addr = alloca i32, align 4
  store %struct.diagnostic_context* %dc, %struct.diagnostic_context** %dc.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  store [1 x %struct.__va_list_tag]* %args_ptr, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %warn, i32* %warn.addr, align 4
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %1 = bitcast %struct.diagnostic_context* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 376, i32 8, i1 false)
  %2 = load i8*, i8** %msgid.addr, align 8
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %message = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %3, i32 0, i32 1
  store i8* %2, i8** %message, align 8
  %4 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  %5 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %args_ptr1 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %5, i32 0, i32 2
  store [1 x %struct.__va_list_tag]* %4, [1 x %struct.__va_list_tag]** %args_ptr1, align 8
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %file2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %7, i32 0, i32 3
  store i8* %6, i8** %file2, align 8
  %8 = load i32, i32* %line.addr, align 4
  %9 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %line3 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %9, i32 0, i32 4
  store i32 %8, i32* %line3, align 4
  %10 = load i32, i32* %warn.addr, align 4
  %11 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %warn4 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %11, i32 0, i32 5
  store i32 %10, i32* %warn4, align 4
  %12 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %begin_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %12, i32 0, i32 6
  %13 = load void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)** %begin_diagnostic, align 8
  %14 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %begin_diagnostic5 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %14, i32 0, i32 6
  store void (%struct.output_buffer*, %struct.diagnostic_context*)* %13, void (%struct.output_buffer*, %struct.diagnostic_context*)** %begin_diagnostic5, align 8
  %15 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %end_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %15, i32 0, i32 7
  %16 = load void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)** %end_diagnostic, align 8
  %17 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %end_diagnostic6 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %17, i32 0, i32 7
  store void (%struct.output_buffer*, %struct.diagnostic_context*)* %16, void (%struct.output_buffer*, %struct.diagnostic_context*)** %end_diagnostic6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @report_diagnostic(%struct.diagnostic_context* %dc) #0 {
entry:
  %dc.addr = alloca %struct.diagnostic_context*, align 8
  %os = alloca %struct.output_state, align 8
  store %struct.diagnostic_context* %dc, %struct.diagnostic_context** %dc.addr, align 8
  %0 = load i32, i32* @diagnostic_lock, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @diagnostic_lock, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error_recursion() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %warn = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i32 0, i32 5
  %2 = load i32, i32* %warn, align 4
  %call = call i32 @count_error(i32 %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %4 = bitcast %struct.output_state* %os to i8*
  %5 = bitcast %struct.output_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 80, i32 8, i1 false)
  %6 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %message = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %6, i32 0, i32 1
  %7 = load i8*, i8** %message, align 8
  %8 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 7
  store i8* %7, i8** %cursor, align 8
  %9 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %args_ptr = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %9, i32 0, i32 2
  %10 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr, align 8
  %11 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state4 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %11, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state4, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %10, [1 x %struct.__va_list_tag]** %format_args, align 8
  %12 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %begin_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %12, i32 0, i32 6
  %13 = load void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)** %begin_diagnostic, align 8
  %14 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %15 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  call void %13(%struct.output_buffer* %14, %struct.diagnostic_context* %15)
  %16 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void @output_format(%struct.output_buffer* %16)
  %17 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  %end_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %17, i32 0, i32 7
  %18 = load void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)** %end_diagnostic, align 8
  %19 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %20 = load %struct.diagnostic_context*, %struct.diagnostic_context** %dc.addr, align 8
  call void %18(%struct.output_buffer* %19, %struct.diagnostic_context* %20)
  %21 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %22 = bitcast %struct.diagnostic_context* %21 to %struct.output_buffer*
  call void @diagnostic_finish(%struct.output_buffer* %22)
  %23 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %23, i32 0, i32 0
  %24 = bitcast %struct.output_state* %state5 to i8*
  %25 = bitcast %struct.output_state* %os to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 80, i32 8, i1 false)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %26 = load i32, i32* @diagnostic_lock, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* @diagnostic_lock, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pedwarn_with_decl(%union.tree_node* %decl, i8* %msgid, ...) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %in_system_header_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 5
  %1 = bitcast i48* %in_system_header_flag to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 16
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %3 = load i8*, i8** %msgid.addr, align 8
  %4 = load i32, i32* @flag_pedantic_errors, align 4
  %tobool3 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  call void @diagnostic_for_decl(%union.tree_node* %2, i8* %3, [1 x %struct.__va_list_tag]* %ap, i32 %lnot.ext)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @diagnostic_for_decl(%union.tree_node* %decl, i8* %msgid, [1 x %struct.__va_list_tag]* %args_ptr, i32 %warn) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %msgid.addr = alloca i8*, align 8
  %args_ptr.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %warn.addr = alloca i32, align 4
  %os = alloca %struct.output_state, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  store [1 x %struct.__va_list_tag]* %args_ptr, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  store i32 %warn, i32* %warn.addr, align 4
  %0 = load i32, i32* @diagnostic_lock, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @diagnostic_lock, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error_recursion() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %warn.addr, align 4
  %call = call i32 @count_error(i32 %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %3 = bitcast %struct.output_state* %os to i8*
  %4 = bitcast %struct.output_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 80, i32 8, i1 false)
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl3 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 1
  %6 = load i8*, i8** %filename, align 8
  call void @report_error_function(i8* %6)
  %7 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %filename5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 1
  %9 = load i8*, i8** %filename5, align 8
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 2
  %11 = load i32, i32* %linenum, align 4
  %12 = load i32, i32* %warn.addr, align 4
  %call7 = call i8* @context_as_prefix(i8* %9, i32 %11, i32 %12)
  call void @output_set_prefix(%struct.output_buffer* %7, i8* %call7)
  %13 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  %14 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state8 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %14, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state8, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %13, [1 x %struct.__va_list_tag]** %format_args, align 8
  %15 = load i8*, i8** %msgid.addr, align 8
  %16 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state9 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %16, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state9, i32 0, i32 7
  store i8* %15, i8** %cursor, align 8
  %17 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @format_with_decl(%struct.output_buffer* %17, %union.tree_node* %18)
  %19 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %20 = bitcast %struct.diagnostic_context* %19 to %struct.output_buffer*
  call void @diagnostic_finish(%struct.output_buffer* %20)
  %21 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void @output_destroy_prefix(%struct.output_buffer* %21)
  %22 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state10 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %22, i32 0, i32 0
  %23 = bitcast %struct.output_state* %state10 to i8*
  %24 = bitcast %struct.output_state* %os to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 80, i32 8, i1 false)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.2, %if.end
  %25 = load i32, i32* @diagnostic_lock, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* @diagnostic_lock, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pedwarn_with_file_and_line(i8* %file, i32 %line, i8* %msgid, ...) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msgid.addr, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %2 = load i32, i32* %line.addr, align 4
  %3 = load i32, i32* @flag_pedantic_errors, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %ap, i8* %1, i32 %2, i32 %lnot.ext)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sorry(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %os = alloca %struct.output_state, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %1 = bitcast %struct.diagnostic_context* %0 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 2
  %2 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4
  %3 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %4 = bitcast %struct.output_state* %os to i8*
  %5 = bitcast %struct.output_state* %state2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 80, i32 8, i1 false)
  %6 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %7 = load i8*, i8** @input_filename, align 8
  %8 = load i32, i32* @lineno, align 4
  %call = call i8* @context_as_prefix(i8* %7, i32 %8, i32 0)
  call void @output_set_prefix(%struct.output_buffer* %6, i8* %call)
  %9 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void (%struct.output_buffer*, i8*, ...) @output_printf(%struct.output_buffer* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %10 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %10, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %ap, [1 x %struct.__va_list_tag]** %format_args, align 8
  %11 = load i8*, i8** %msgid.addr, align 8
  %12 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state4 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %12, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state4, i32 0, i32 7
  store i8* %11, i8** %cursor, align 8
  %13 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  call void @output_format(%struct.output_buffer* %13)
  %14 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %15 = bitcast %struct.diagnostic_context* %14 to %struct.output_buffer*
  call void @diagnostic_finish(%struct.output_buffer* %15)
  %16 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %16, i32 0, i32 0
  %17 = bitcast %struct.output_state* %state5 to i8*
  %18 = bitcast %struct.output_state* %os to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 80, i32 8, i1 false)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  ret void
}

; Function Attrs: nounwind uwtable
define void @announce_function(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load i32, i32* @quiet_flag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @rtl_dump_and_exit, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl3 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 8
  %3 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %3 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %4 = load i8*, i8** %str, align 8
  call void (i8*, ...) @verbatim(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %4)
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** @decl_printable_name, align 8
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call = call i8* %5(%union.tree_node* %6, i32 2)
  call void (i8*, ...) @verbatim(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %7)
  %8 = load %struct.output_buffer*, %struct.output_buffer** @diagnostic_buffer, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 0
  %need_newline_p = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 5
  store i8 1, i8* %need_newline_p, align 1
  call void @record_last_error_function()
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @report_error_function(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %1 = bitcast %struct.diagnostic_context* %0 to %struct.output_buffer*
  call void @report_problematic_module(%struct.output_buffer* %1)
  %2 = load void (%struct.diagnostic_context*, i8*)*, void (%struct.diagnostic_context*, i8*)** @print_error_function, align 8
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %4 = load i8*, i8** @input_filename, align 8
  call void %2(%struct.diagnostic_context* %3, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @report_problematic_module(%struct.output_buffer* %buffer) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %p = alloca %struct.file_stack*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @error_with_file_and_line(i8* %file, i32 %line, i8* %msgid, ...) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msgid.addr, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %2 = load i32, i32* %line.addr, align 4
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %ap, i8* %1, i32 %2, i32 0)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @error_with_decl(%union.tree_node* %decl, i8* %msgid, ...) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %1 = load i8*, i8** %msgid.addr, align 8
  call void @diagnostic_for_decl(%union.tree_node* %0, i8* %1, [1 x %struct.__va_list_tag]* %ap, i32 0)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @error(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msgid.addr, align 8
  %1 = load i8*, i8** @input_filename, align 8
  %2 = load i32, i32* @lineno, align 4
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %ap, i8* %1, i32 %2, i32 0)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @fatal_error(i8* %msgid, ...) #5 {
entry:
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msgid.addr, align 8
  %1 = load i8*, i8** @input_filename, align 8
  %2 = load i32, i32* @lineno, align 4
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %ap, i8* %1, i32 %2, i32 0)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_internal_error_function(void (i8*, [1 x %struct.__va_list_tag]*)* %f) #0 {
entry:
  %f.addr = alloca void (i8*, [1 x %struct.__va_list_tag]*)*, align 8
  store void (i8*, [1 x %struct.__va_list_tag]*)* %f, void (i8*, [1 x %struct.__va_list_tag]*)** %f.addr, align 8
  %0 = load void (i8*, [1 x %struct.__va_list_tag]*)*, void (i8*, [1 x %struct.__va_list_tag]*)** %f.addr, align 8
  store void (i8*, [1 x %struct.__va_list_tag]*)* %0, void (i8*, [1 x %struct.__va_list_tag]*)** @internal_error_function, align 8
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @internal_error(i8* %msgid, ...) #5 {
entry:
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* @diagnostic_lock, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @error_recursion() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %2 = bitcast %struct.diagnostic_context* %1 to %struct.output_buffer*
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 0
  %diagnostic_count = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 9
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count, i32 0, i64 3
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %5 = bitcast %struct.diagnostic_context* %4 to %struct.output_buffer*
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %5, i32 0, i32 0
  %diagnostic_count3 = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [7 x i32], [7 x i32]* %diagnostic_count3, i32 0, i64 2
  %6 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** @input_filename, align 8
  %9 = load i32, i32* @lineno, align 4
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* %8, i32 %9)
  call void @exit(i32 1) #10
  unreachable

if.end.7:                                         ; preds = %lor.lhs.false
  %10 = load void (i8*, [1 x %struct.__va_list_tag]*)*, void (i8*, [1 x %struct.__va_list_tag]*)** @internal_error_function, align 8
  %cmp8 = icmp ne void (i8*, [1 x %struct.__va_list_tag]*)* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %11 = load void (i8*, [1 x %struct.__va_list_tag]*)*, void (i8*, [1 x %struct.__va_list_tag]*)** @internal_error_function, align 8
  %12 = load i8*, i8** %msgid.addr, align 8
  call void %11(i8* %12, [1 x %struct.__va_list_tag]* %ap)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %13 = load i8*, i8** %msgid.addr, align 8
  %14 = load i8*, i8** @input_filename, align 8
  %15 = load i32, i32* @lineno, align 4
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %13, [1 x %struct.__va_list_tag]* %ap, i8* %14, i32 %15, i32 0)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %16, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal void @error_recursion() #5 {
entry:
  %0 = load i32, i32* @diagnostic_lock, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %2 = bitcast %struct.diagnostic_context* %1 to %struct.output_buffer*
  call void @diagnostic_finish(%struct.output_buffer* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.28, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %4, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @warning_with_file_and_line(i8* %file, i32 %line, i8* %msgid, ...) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %msgid.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %msgid, i8** %msgid.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @warning_with_decl(%union.tree_node* %decl, i8* %msgid, ...) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %msgid.addr = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @warning(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_verbatim(%struct.output_buffer* %buffer, i8* %msgid, ...) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %msgid.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %1 = load i8*, i8** %msgid.addr, align 8
  call void @output_do_verbatim(%struct.output_buffer* %0, i8* %1, [1 x %struct.__va_list_tag]* %ap)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_do_verbatim(%struct.output_buffer* %buffer, i8* %msgid, [1 x %struct.__va_list_tag]* %args_ptr) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %msgid.addr = alloca i8*, align 8
  %args_ptr.addr = alloca [1 x %struct.__va_list_tag]*, align 8
  %os = alloca %struct.output_state, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  store [1 x %struct.__va_list_tag]* %args_ptr, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %1 = bitcast %struct.output_state* %os to i8*
  %2 = bitcast %struct.output_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 80, i32 8, i1 false)
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 0
  %prefix = getelementptr inbounds %struct.output_state, %struct.output_state* %state1, i32 0, i32 0
  store i8* null, i8** %prefix, align 8
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i32 0, i32 0
  %prefixing_rule = getelementptr inbounds %struct.output_state, %struct.output_state* %state2, i32 0, i32 6
  store i32 1, i32* %prefixing_rule, align 4
  %5 = load i8*, i8** %msgid.addr, align 8
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state3 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state3, i32 0, i32 7
  store i8* %5, i8** %cursor, align 8
  %7 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr.addr, align 8
  %8 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state4 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i32 0, i32 0
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %state4, i32 0, i32 8
  store [1 x %struct.__va_list_tag]* %7, [1 x %struct.__va_list_tag]** %format_args, align 8
  %9 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_set_maximum_length(%struct.output_buffer* %9, i32 0)
  %10 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_format(%struct.output_buffer* %10)
  %11 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %11, i32 0, i32 0
  %12 = bitcast %struct.output_state* %state5 to i8*
  %13 = bitcast %struct.output_state* %os to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 80, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @trim_filename(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i32 0, i32 0), i8** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 46
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 3
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.26, %while.end
  %9 = load i8*, i8** %q, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %land.lhs.true.15, label %land.end.25

land.lhs.true.15:                                 ; preds = %while.cond.10
  %11 = load i8*, i8** %q, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %12 to i32
  %cmp18 = icmp eq i32 %conv17, 46
  br i1 %cmp18, label %land.rhs.20, label %land.end.25

land.rhs.20:                                      ; preds = %land.lhs.true.15
  %13 = load i8*, i8** %q, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %13, i64 2
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %14 to i32
  %cmp23 = icmp eq i32 %conv22, 47
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.20, %land.lhs.true.15, %while.cond.10
  %15 = phi i1 [ false, %land.lhs.true.15 ], [ false, %while.cond.10 ], [ %cmp23, %land.rhs.20 ]
  br i1 %15, label %while.body.26, label %while.end.28

while.body.26:                                    ; preds = %land.end.25
  %16 = load i8*, i8** %q, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %16, i64 3
  store i8* %add.ptr27, i8** %q, align 8
  br label %while.cond.10

while.end.28:                                     ; preds = %land.end.25
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.43, %while.end.28
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv30 = sext i8 %18 to i32
  %19 = load i8*, i8** %q, align 8
  %20 = load i8, i8* %19, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv30, %conv31
  br i1 %cmp32, label %land.lhs.true.34, label %land.end.42

land.lhs.true.34:                                 ; preds = %while.cond.29
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv35 = sext i8 %22 to i32
  %cmp36 = icmp ne i32 %conv35, 0
  br i1 %cmp36, label %land.rhs.38, label %land.end.42

land.rhs.38:                                      ; preds = %land.lhs.true.34
  %23 = load i8*, i8** %q, align 8
  %24 = load i8, i8* %23, align 1
  %conv39 = sext i8 %24 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.38, %land.lhs.true.34, %while.cond.29
  %25 = phi i1 [ false, %land.lhs.true.34 ], [ false, %while.cond.29 ], [ %cmp40, %land.rhs.38 ]
  br i1 %25, label %while.body.43, label %while.end.45

while.body.43:                                    ; preds = %land.end.42
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %27 = load i8*, i8** %q, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr44, i8** %q, align 8
  br label %while.cond.29

while.end.45:                                     ; preds = %land.end.42
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.55, %while.end.45
  %28 = load i8*, i8** %p, align 8
  %29 = load i8*, i8** %name.addr, align 8
  %cmp47 = icmp ugt i8* %28, %29
  br i1 %cmp47, label %land.rhs.49, label %land.end.54

land.rhs.49:                                      ; preds = %while.cond.46
  %30 = load i8*, i8** %p, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %30, i64 -1
  %31 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %31 to i32
  %cmp52 = icmp ne i32 %conv51, 47
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.49, %while.cond.46
  %32 = phi i1 [ false, %while.cond.46 ], [ %cmp52, %land.rhs.49 ]
  br i1 %32, label %while.body.55, label %while.end.57

while.body.55:                                    ; preds = %land.end.54
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %incdec.ptr56, i8** %p, align 8
  br label %while.cond.46

while.end.57:                                     ; preds = %land.end.54
  %34 = load i8*, i8** %p, align 8
  ret i8* %34
}

; Function Attrs: noreturn nounwind uwtable
define void @fancy_abort(i8* %file, i32 %line, i8* %function) #5 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %function.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %function, i8** %function.addr, align 8
  %0 = load i8*, i8** %function.addr, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %call = call i8* @trim_filename(i8* %1)
  %2 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i8* %0, i8* %call, i32 %2) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @warn_deprecated_use(%union.tree_node* %node) #0 {
entry:
  %node.addr = alloca %union.tree_node*, align 8
  %what = alloca i8*, align 8
  %decl16 = alloca %union.tree_node*, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @warn_deprecated_decl, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.76

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 100
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %5 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  %7 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl4 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 1
  %8 = load i8*, i8** %filename, align 8
  %9 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %decl5 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 2
  %10 = load i32, i32* %linenum, align 4
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* %6, i8* %8, i32 %10)
  br label %if.end.76

if.else:                                          ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common6 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %idxprom10 = sext i32 %bf.clear9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 116
  br i1 %cmp13, label %if.then.15, label %if.end.75

if.then.15:                                       ; preds = %if.else
  store i8* null, i8** %what, align 8
  %13 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %common17 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %14, %union.tree_node** %decl16, align 8
  %15 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type = bitcast %union.tree_node* %15 to %struct.tree_type*
  %name18 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 11
  %16 = load %union.tree_node*, %union.tree_node** %name18, align 8
  %common19 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %code20, align 8
  %bf.clear22 = and i32 %bf.load21, 255
  %cmp23 = icmp eq i32 %bf.clear22, 1
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %if.then.15
  %17 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type26 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %name27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 11
  %18 = load %union.tree_node*, %union.tree_node** %name27, align 8
  %identifier28 = bitcast %union.tree_node* %18 to %struct.tree_identifier*
  %id29 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier28, i32 0, i32 1
  %str30 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id29, i32 0, i32 1
  %19 = load i8*, i8** %str30, align 8
  store i8* %19, i8** %what, align 8
  br label %if.end.54

if.else.31:                                       ; preds = %if.then.15
  %20 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type32 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %name33 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type32, i32 0, i32 11
  %21 = load %union.tree_node*, %union.tree_node** %name33, align 8
  %common34 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load36 = load i32, i32* %code35, align 8
  %bf.clear37 = and i32 %bf.load36, 255
  %cmp38 = icmp eq i32 %bf.clear37, 33
  br i1 %cmp38, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.else.31
  %22 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type40 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %name41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 11
  %23 = load %union.tree_node*, %union.tree_node** %name41, align 8
  %decl42 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %name43 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl42, i32 0, i32 8
  %24 = load %union.tree_node*, %union.tree_node** %name43, align 8
  %tobool44 = icmp ne %union.tree_node* %24, null
  br i1 %tobool44, label %if.then.45, label %if.end.53

if.then.45:                                       ; preds = %land.lhs.true
  %25 = load %union.tree_node*, %union.tree_node** %node.addr, align 8
  %type46 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %name47 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type46, i32 0, i32 11
  %26 = load %union.tree_node*, %union.tree_node** %name47, align 8
  %decl48 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %name49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl48, i32 0, i32 8
  %27 = load %union.tree_node*, %union.tree_node** %name49, align 8
  %identifier50 = bitcast %union.tree_node* %27 to %struct.tree_identifier*
  %id51 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier50, i32 0, i32 1
  %str52 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id51, i32 0, i32 1
  %28 = load i8*, i8** %str52, align 8
  store i8* %28, i8** %what, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.45, %land.lhs.true, %if.else.31
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.25
  %29 = load i8*, i8** %what, align 8
  %tobool55 = icmp ne i8* %29, null
  br i1 %tobool55, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %if.end.54
  %30 = load %union.tree_node*, %union.tree_node** %decl16, align 8
  %tobool57 = icmp ne %union.tree_node* %30, null
  br i1 %tobool57, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %if.then.56
  %31 = load i8*, i8** %what, align 8
  %32 = load %union.tree_node*, %union.tree_node** %decl16, align 8
  %decl59 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %filename60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 1
  %33 = load i8*, i8** %filename60, align 8
  %34 = load %union.tree_node*, %union.tree_node** %decl16, align 8
  %decl61 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %linenum62 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl61, i32 0, i32 2
  %35 = load i32, i32* %linenum62, align 4
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0), i8* %31, i8* %33, i32 %35)
  br label %if.end.64

if.else.63:                                       ; preds = %if.then.56
  %36 = load i8*, i8** %what, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %36)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.58
  br label %if.end.74

if.else.65:                                       ; preds = %if.end.54
  %37 = load %union.tree_node*, %union.tree_node** %decl16, align 8
  %tobool66 = icmp ne %union.tree_node* %37, null
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.else.65
  %38 = load %union.tree_node*, %union.tree_node** %decl16, align 8
  %decl68 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %filename69 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl68, i32 0, i32 1
  %39 = load i8*, i8** %filename69, align 8
  %40 = load %union.tree_node*, %union.tree_node** %decl16, align 8
  %decl70 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %linenum71 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl70, i32 0, i32 2
  %41 = load i32, i32* %linenum71, align 4
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i8* %39, i32 %41)
  br label %if.end.73

if.else.72:                                       ; preds = %if.else.65
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.64
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.else
  br label %if.end.76

if.end.76:                                        ; preds = %if.then, %if.end.75, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wrap_text(%struct.output_buffer* %buffer, i8* %start, i8* %end) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %is_wrapping = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call = call i32 @output_is_line_wrapping(%struct.output_buffer* %0)
  store i32 %call, i32* %is_wrapping, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %entry
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ne i8* %1, %2
  br i1 %cmp, label %while.body, label %while.end.32

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %start.addr, align 8
  store i8* %3, i8** %p, align 8
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.8, %while.body
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ne i8* %4, %5
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.1
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 32
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.1
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.1 ], [ %cmp6, %land.rhs ]
  br i1 %10, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %land.end
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %is_wrapping, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %while.end
  %13 = load i8*, i8** %p, align 8
  %14 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %call10 = call i32 @output_space_left(%struct.output_buffer* %15)
  %conv11 = sext i32 %call10 to i64
  %cmp12 = icmp sge i64 %sub.ptr.sub, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %16 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_newline(%struct.output_buffer* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.9, %while.end
  %17 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %18 = load i8*, i8** %start.addr, align 8
  %19 = load i8*, i8** %p, align 8
  call void @output_append(%struct.output_buffer* %17, i8* %18, i8* %19)
  %20 = load i8*, i8** %p, align 8
  store i8* %20, i8** %start.addr, align 8
  %21 = load i8*, i8** %start.addr, align 8
  %22 = load i8*, i8** %end.addr, align 8
  %cmp14 = icmp ne i8* %21, %22
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.22

land.lhs.true.16:                                 ; preds = %if.end
  %23 = load i8*, i8** %start.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv17 = sext i8 %24 to i32
  %cmp18 = icmp eq i32 %conv17, 32
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.16
  %25 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_space(%struct.output_buffer* %25)
  %26 = load i8*, i8** %start.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr21, i8** %start.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true.16, %if.end
  %27 = load i8*, i8** %start.addr, align 8
  %28 = load i8*, i8** %end.addr, align 8
  %cmp23 = icmp ne i8* %27, %28
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.31

land.lhs.true.25:                                 ; preds = %if.end.22
  %29 = load i8*, i8** %start.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv26 = sext i8 %30 to i32
  %cmp27 = icmp eq i32 %conv26, 10
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true.25
  %31 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_add_newline(%struct.output_buffer* %31)
  %32 = load i8*, i8** %start.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr30, i8** %start.addr, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true.25, %if.end.22
  br label %while.cond

while.end.32:                                     ; preds = %while.cond
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i8* @vbuild_message_string(i8* %msg, %struct.__va_list_tag* %ap) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %str = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %call = call i32 @vasprintf(i8** %str, i8* %0, %struct.__va_list_tag* %1) #1
  %2 = load i8*, i8** %str, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind uwtable
define internal void @output_long_decimal(%struct.output_buffer* %buffer, i64 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i64, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i64, i64* %i.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i64 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_long_octal(%struct.output_buffer* %buffer, i64 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i64, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i64, i64* %i.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i64 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_octal(%struct.output_buffer* %buffer, i32 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_long_unsigned_decimal(%struct.output_buffer* %buffer, i64 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i64, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i64, i64* %i.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_unsigned_decimal(%struct.output_buffer* %buffer, i32 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_long_hexadecimal(%struct.output_buffer* %buffer, i64 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i64, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i64, i64* %i.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i64 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_hexadecimal(%struct.output_buffer* %buffer, i32 %i) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %i.addr = alloca i32, align 4
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer, i32 0, i32 0
  %1 = load i32, i32* %i.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 %1) #1
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %digit_buffer1 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %digit_buffer1, i32 0, i32 0
  call void @output_add_string(%struct.output_buffer* %2, i8* %arraydecay2)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @format_with_decl(%struct.output_buffer* %buffer, %union.tree_node* %decl) #0 {
entry:
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  %n = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 7
  %1 = load i8*, i8** %cursor, align 8
  store i8* %1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %add.ptr, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 37
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load i8*, i8** %p, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %add.ptr6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp ne i32 %conv7, 115
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 858, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.format_with_decl, i32 0, i32 0)) #11
  unreachable

if.else.11:                                       ; preds = %if.else
  br label %for.end

if.end:                                           ; preds = %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.11, %for.cond
  %12 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %13 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state14 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %13, i32 0, i32 0
  %cursor15 = getelementptr inbounds %struct.output_state, %struct.output_state* %state14, i32 0, i32 7
  %14 = load i8*, i8** %cursor15, align 8
  %15 = load i8*, i8** %p, align 8
  call void @maybe_wrap_text(%struct.output_buffer* %12, i8* %14, i8* %15)
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 37
  br i1 %cmp17, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %for.end
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl20 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 8
  %19 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool21 = icmp ne %union.tree_node* %19, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %20 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** @decl_printable_name, align 8
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call = call i8* %20(%union.tree_node* %21, i32 2)
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %n, align 8
  %22 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %23 = load i8*, i8** %n, align 8
  call void @output_add_string(%struct.output_buffer* %22, i8* %23)
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %cond.end
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %tobool22 = icmp ne i8 %25, 0
  br i1 %tobool22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  %27 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %27, i64 -1
  %28 = load i8, i8* %add.ptr24, align 1
  %conv25 = sext i8 %28 to i32
  %and = and i32 %conv25, 255
  %and26 = and i32 %and, 255
  %idxprom = sext i32 %and26 to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %29 = load i16, i16* %arrayidx, align 2
  %conv27 = zext i16 %29 to i32
  %and28 = and i32 %conv27, 136
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.body
  br label %while.end

if.end.31:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.30, %while.cond
  br label %if.end.32

if.end.32:                                        ; preds = %while.end, %for.end
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %tobool33 = icmp ne i8 %31, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.32
  %32 = load i8*, i8** %p, align 8
  %33 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state35 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %33, i32 0, i32 0
  %cursor36 = getelementptr inbounds %struct.output_state, %struct.output_state* %state35, i32 0, i32 7
  store i8* %32, i8** %cursor36, align 8
  %34 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  call void @output_format(%struct.output_buffer* %34)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.32
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
