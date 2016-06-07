; ModuleID = 'dbxout.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.typeinfo = type { i32, i32, i32 }
%struct.dbx_file = type { %struct.dbx_file*, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@dbx_debug_hooks = global %struct.gcc_debug_hooks { void (i8*)* @dbxout_init, void (i8*)* @dbxout_finish, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @dbxout_start_source_file, void (i32)* @dbxout_end_source_file, void (i32, i32)* @dbxout_begin_block, void (i32, i32)* @dbxout_end_block, i1 (%union.tree_node*)* @debug_true_tree, void (i32, i8*)* @dbxout_source_line, void (i32, i8*)* @dbxout_source_line, void (i32)* @debug_nothing_int, void ()* @debug_nothing_void, void (%union.tree_node*)* @dbxout_begin_function, void (i32)* @debug_nothing_int, void (%union.tree_node*)* @dbxout_function_decl, void (%union.tree_node*)* @dbxout_global_decl, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%struct.rtx_def*)* @debug_nothing_rtx }, align 8
@current_sym_code = internal global i32 0, align 4
@current_sym_value = internal global i32 0, align 4
@current_sym_addr = internal global %struct.rtx_def* null, align 8
@current_sym_nchars = internal global i32 0, align 4
@current_function_decl = external global %union.tree_node*, align 8
@asmfile = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s\22%s:%c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\09.stabs\09\00", align 1
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c",%s,%s\00", align 1
@use_gnu_debug_info_extensions = external global i32, align 4
@have_used_extensions = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%s\22%s:T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s\22%s:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s\22 :T\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dbxout.c\00", align 1
@__FUNCTION__.dbxout_symbol = private unnamed_addr constant [14 x i8] c"dbxout_symbol\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s\22%s:c=i\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\22,0x%x,0,0,0\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s\22(anon):%c\00", align 1
@target_flags = external global i32, align 4
@dbx64_register_map = external constant [53 x i32], align 16
@svr4_dbx_register_map = external constant [53 x i32], align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s\22%s:v\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@typevec = common global %struct.typeinfo* null, align 8
@asm_out_file = external global %struct._IO_FILE*, align 8
@typevec_len = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Ltext\00", align 1
@cwd = internal global i8* null, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c",%d,0,0,\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c".%s%u:\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"%s\22%s\22,%d,0,0,0\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gcc2_compiled.\00", align 1
@lastfile = internal global i8* null, align 8
@next_type_number = internal global i32 0, align 4
@current_file = internal global %struct.dbx_file* null, align 8
@next_file_number = internal global i32 0, align 4
@integer_types = external global [11 x %union.tree_node*], align 16
@.str.21 = private unnamed_addr constant [11 x i8] c",%d,0,0,0\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"%s%d,0,0,0\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\09.stabn\09\00", align 1
@dbxout_source_line.sym_lineno = internal global i32 1, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"\09.stabn 68,0,%d,\00", align 1
@source_label_number = internal global i32 1, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"LBB\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"LBE\00", align 1
@targetm = external global %struct.gcc_target, align 8
@current_function_func_begin_label = external global %union.tree_node*, align 8
@debug_info_level = external global i32, align 4
@.str.28 = private unnamed_addr constant [18 x i8] c"%s\22%s:C1\22,%d,0,0,\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%s%d,0,0,\00", align 1
@dbxout_function_end.scope_labelno = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"Lscope\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"%s\22\22,%d,0,0,\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"\09.text\0A\09.stabs \22\22,%d,0,0,%LLetext\0A%LLetext:\0A\00", align 1
@dbxout_type.anonymous_type_number = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c";0;127;\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"@s%d;\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c";0;\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c";-20;\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c";0;%d;\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c";-16;\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"eFalse:0,True:1,;\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"real:\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c",0,%d;\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"imag:\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c",%d,%d;;\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"@S;\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c";@S;S\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c";0;-1;\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xu\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"$$%d\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"!%d,\00", align 1
@lang_hooks = external constant %struct.lang_hooks, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"xe\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@__FUNCTION__.dbxout_type = private unnamed_addr constant [12 x i8] c"dbxout_type\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c";0\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c";-1;\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%o%01o\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"%01o\00", align 1
@__FUNCTION__.dbxout_type_name = private unnamed_addr constant [17 x i8] c"dbxout_type_name\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c":%s;\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c",0,0;\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"%s::\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c":%s;%c%c%c\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.75 = private unnamed_addr constant [9 x i8] c"%s\22%s%s:\00", align 1
@.str.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"\22,%d,0,%d,\00", align 1

; Function Attrs: nounwind uwtable
define internal void @dbxout_init(i8* %input_file_name) #0 {
entry:
  %input_file_name.addr = alloca i8*, align 8
  %ltext_label_name = alloca [100 x i8], align 16
  %syms = alloca %union.tree_node*, align 8
  store i8* %input_file_name, i8** %input_file_name.addr, align 8
  %call = call %union.tree_node* @getdecls()
  store %union.tree_node* %call, %union.tree_node** %syms, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @asmfile, align 8
  store i32 100, i32* @typevec_len, align 4
  %1 = load i32, i32* @typevec_len, align 4
  %conv = sext i32 %1 to i64
  %call1 = call noalias i8* @xcalloc(i64 %conv, i64 12)
  %2 = bitcast i8* %call1 to %struct.typeinfo*
  store %struct.typeinfo* %2, %struct.typeinfo** @typevec, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %ltext_label_name, i32 0, i32 0
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %do.end
  %4 = load i8*, i8** @cwd, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call4 = call i8* @getpwd()
  store i8* %call4, i8** @cwd, align 8
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** @cwd, align 8
  %6 = load i8, i8* %5, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %land.lhs.true.6
  %7 = load i8*, i8** @cwd, align 8
  %call8 = call i64 @strlen(i8* %7) #6
  %sub = sub i64 %call8, 1
  %8 = load i8*, i8** @cwd, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub
  %9 = load i8, i8* %arrayidx, align 1
  %conv9 = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv9, 47
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %land.lhs.true.6
  %10 = load i8*, i8** @cwd, align 8
  %call12 = call noalias i8* (i8*, ...) @concat(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null)
  store i8* %call12, i8** @cwd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false, %land.lhs.true, %if.then
  %11 = load i8*, i8** @cwd, align 8
  %tobool13 = icmp ne i8* %11, null
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %14 = load i8*, i8** @cwd, align 8
  call void @output_quoted_string(%struct._IO_FILE* %13, i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 100)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay17 = getelementptr inbounds [100 x i8], [100 x i8]* %ltext_label_name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %16, i8* %arraydecay17)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call18 = call i32 @fputc(i32 10, %struct._IO_FILE* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %do.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %20 = load i8*, i8** %input_file_name.addr, align 8
  call void @output_quoted_string(%struct._IO_FILE* %19, i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 100)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay23 = getelementptr inbounds [100 x i8], [100 x i8]* %ltext_label_name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %22, i8* %arraydecay23)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call24 = call i32 @fputc(i32 10, %struct._IO_FILE* %23)
  call void @text_section()
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0)
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.25
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 60)
  %26 = load i8*, i8** %input_file_name.addr, align 8
  store i8* %26, i8** @lastfile, align 8
  store i32 1, i32* @next_type_number, align 4
  %call29 = call noalias i8* @xmalloc(i64 16)
  %27 = bitcast i8* %call29 to %struct.dbx_file*
  store %struct.dbx_file* %27, %struct.dbx_file** @current_file, align 8
  %28 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %next = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %28, i32 0, i32 0
  store %struct.dbx_file* null, %struct.dbx_file** %next, align 8
  %29 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %file_number = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %29, i32 0, i32 1
  store i32 0, i32* %file_number, align 4
  %30 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %next_type_number = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %30, i32 0, i32 2
  store i32 1, i32* %next_type_number, align 4
  store i32 1, i32* @next_file_number, align 4
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type = bitcast %union.tree_node* %31 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 11
  %32 = load %union.tree_node*, %union.tree_node** %name, align 8
  %call30 = call i32 @dbxout_symbol(%union.tree_node* %32, i32 0)
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %type31 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %name32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 11
  %34 = load %union.tree_node*, %union.tree_node** %name32, align 8
  %call33 = call i32 @dbxout_symbol(%union.tree_node* %34, i32 0)
  %35 = load %union.tree_node*, %union.tree_node** %syms, align 8
  call void @dbxout_typedefs(%union.tree_node* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_finish(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0), i32 100)
  ret void
}

declare void @debug_nothing_int_charstar(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_start_source_file(i32 %line, i8* %filename) #0 {
entry:
  %line.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %n = alloca %struct.dbx_file*, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %call = call noalias i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.dbx_file*
  store %struct.dbx_file* %0, %struct.dbx_file** %n, align 8
  %1 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %2 = load %struct.dbx_file*, %struct.dbx_file** %n, align 8
  %next = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %2, i32 0, i32 0
  store %struct.dbx_file* %1, %struct.dbx_file** %next, align 8
  %3 = load i32, i32* @next_file_number, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @next_file_number, align 4
  %4 = load %struct.dbx_file*, %struct.dbx_file** %n, align 8
  %file_number = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %4, i32 0, i32 1
  store i32 %3, i32* %file_number, align 4
  %5 = load %struct.dbx_file*, %struct.dbx_file** %n, align 8
  %next_type_number = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %5, i32 0, i32 2
  store i32 1, i32* %next_type_number, align 4
  %6 = load %struct.dbx_file*, %struct.dbx_file** %n, align 8
  store %struct.dbx_file* %6, %struct.dbx_file** @current_file, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  call void @output_quoted_string(%struct._IO_FILE* %8, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_end_source_file(i32 %line) #0 {
entry:
  %line.addr = alloca i32, align 4
  %next = alloca %struct.dbx_file*, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 162)
  %1 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %next1 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %1, i32 0, i32 0
  %2 = load %struct.dbx_file*, %struct.dbx_file** %next1, align 8
  store %struct.dbx_file* %2, %struct.dbx_file** %next, align 8
  %3 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %4 = bitcast %struct.dbx_file* %3 to i8*
  call void @free(i8* %4) #5
  %5 = load %struct.dbx_file*, %struct.dbx_file** %next, align 8
  store %struct.dbx_file* %5, %struct.dbx_file** @current_file, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_begin_block(i32 %line, i32 %n) #0 {
entry:
  %line.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %line, i32* %line.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_end_block(i32 %line, i32 %n) #0 {
entry:
  %line.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %line, i32* %line.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1 = load i32, i32* %n.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare zeroext i1 @debug_true_tree(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_source_line(i32 %lineno, i8* %filename) #0 {
entry:
  %lineno.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %temp = alloca [256 x i8], align 16
  store i32 %lineno, i32* %lineno.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  call void @dbxout_source_file(%struct._IO_FILE* %0, i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %temp, i32 0, i32 0
  %2 = load i32, i32* @dbxout_source_line.sym_lineno, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %2) #5
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %4 = load i32, i32* %lineno.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %temp, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %5, i8* %arraydecay3)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call4 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %10 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl5 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl6, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @make_decl_rtl(%union.tree_node* %12, i8* null)
  %13 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl7 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %rtl8 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 17
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtl8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %11, %cond.true ], [ %14, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx10 to i8**
  %16 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %7, i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call11 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %17)
  br label %do.body.12

do.body.12:                                       ; preds = %cond.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %19 = load i32, i32* @dbxout_source_line.sym_lineno, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %19)
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.12
  %20 = load i32, i32* @dbxout_source_line.sym_lineno, align 4
  %add = add nsw i32 %20, 1
  store i32 %add, i32* @dbxout_source_line.sym_lineno, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.end.14
  ret void
}

declare void @debug_nothing_int(i32) #1

declare void @debug_nothing_void() #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_begin_function(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call = call i32 @dbxout_symbol(%union.tree_node* %0, i32 0)
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 10
  %2 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  call void @dbxout_parms(%union.tree_node* %2)
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 11
  %4 = load %union.tree_node*, %union.tree_node** %result, align 8
  %decl3 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 8
  %5 = load %union.tree_node*, %union.tree_node** %name, align 8
  %cmp = icmp ne %union.tree_node* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %result5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 11
  %7 = load %union.tree_node*, %union.tree_node** %result5, align 8
  %call6 = call i32 @dbxout_symbol(%union.tree_node* %7, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_function_decl(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 12
  %1 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 10
  %3 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  call void @dbxout_block(%union.tree_node* %1, i32 0, %union.tree_node* %3)
  %4 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 13), align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @dbxout_function_end()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_global_decl(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %2 = bitcast i48* %external_flag to i64*
  %bf.load2 = load i64, i64* %2, align 8
  %bf.lshr = lshr i64 %bf.load2, 8
  %bf.clear3 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear3 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl5 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp6 = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call = call i32 @dbxout_symbol(%union.tree_node* %5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  ret void
}

declare void @debug_nothing_tree(%union.tree_node*) #1

declare void @debug_nothing_rtx(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @dbxout_symbol(%union.tree_node* %decl, i32 %local) #0 {
entry:
  %retval = alloca i32, align 4
  %decl.addr = alloca %union.tree_node*, align 8
  %local.addr = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %context = alloca %union.tree_node*, align 8
  %result = alloca i32, align 4
  %tag_needed = alloca i32, align 4
  %did_output = alloca i32, align 4
  %name194 = alloca %union.tree_node*, align 8
  %name299 = alloca %union.tree_node*, align 8
  %name397 = alloca i8*, align 8
  %ival = alloca i64, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %local, i32* %local.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  store %union.tree_node* null, %union.tree_node** %context, align 8
  store i32 0, i32* %result, align 4
  store i32 0, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 8
  %3 = load %union.tree_node*, %union.tree_node** %name, align 8
  %cmp = icmp eq %union.tree_node* %3, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp4 = icmp ne i32 %bf.clear, 33
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl5 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %ignored_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 5
  %6 = bitcast i48* %ignored_flag to i64*
  %bf.load6 = load i64, i64* %6, align 8
  %bf.lshr = lshr i64 %bf.load6, 14
  %bf.clear7 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear7 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl8 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %name9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 8
  %9 = load %union.tree_node*, %union.tree_node** %name9, align 8
  %cmp10 = icmp ne %union.tree_node* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl12 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %name13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 8
  %11 = load %union.tree_node*, %union.tree_node** %name13, align 8
  %identifier = bitcast %union.tree_node* %11 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 0
  %12 = load i32, i32* %len, align 4
  %add = add i32 2, %12
  store i32 %add, i32* @current_sym_nchars, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common15 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  switch i32 %bf.clear18, label %sw.default [
    i32 32, label %sw.bb
    i32 30, label %sw.bb.19
    i32 33, label %sw.bb.128
    i32 35, label %sw.bb.335
    i32 36, label %sw.bb.336
    i32 34, label %sw.bb.336
  ]

sw.bb:                                            ; preds = %if.end.14
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.14
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl20 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 17
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool21 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.19
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl22 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %rtl23 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl22, i32 0, i32 17
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtl23, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.19
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %18, i8* null)
  %19 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl24 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %rtl25 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl24, i32 0, i32 17
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtl25, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %17, %cond.true ], [ %20, %cond.false ]
  %cmp26 = icmp eq %struct.rtx_def* %cond, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %cond.end
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl29 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl29, i32 0, i32 5
  %22 = bitcast i48* %external_flag to i64*
  %bf.load30 = load i64, i64* %22, align 8
  %bf.lshr31 = lshr i64 %bf.load30, 8
  %bf.clear32 = and i64 %bf.lshr31, 1
  %bf.cast33 = trunc i64 %bf.clear32 to i32
  %tobool34 = icmp ne i32 %bf.cast33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.28
  br label %sw.epilog

if.end.36:                                        ; preds = %if.end.28
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call = call %union.tree_node* @decl_function_context(%union.tree_node* %23)
  store %union.tree_node* %call, %union.tree_node** %context, align 8
  %24 = load %union.tree_node*, %union.tree_node** %context, align 8
  %25 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp37 = icmp eq %union.tree_node* %24, %25
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  br label %sw.epilog

if.end.39:                                        ; preds = %if.end.36
  %26 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl40 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %rtl41 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl40, i32 0, i32 17
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtl41, align 8
  %tobool42 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool42, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %if.end.39
  %28 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl44 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %rtl45 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl44, i32 0, i32 17
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtl45, align 8
  br label %cond.end.49

cond.false.46:                                    ; preds = %if.end.39
  %30 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %30, i8* null)
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl47 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %rtl48 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 17
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtl48, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.46, %cond.true.43
  %cond50 = phi %struct.rtx_def* [ %29, %cond.true.43 ], [ %32, %cond.false.46 ]
  %33 = bitcast %struct.rtx_def* %cond50 to i32*
  %bf.load51 = load i32, i32* %33, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp ne i32 %bf.clear52, 66
  br i1 %cmp53, label %if.then.69, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %cond.end.49
  %34 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl55 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %rtl56 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl55, i32 0, i32 17
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtl56, align 8
  %tobool57 = icmp ne %struct.rtx_def* %35, null
  br i1 %tobool57, label %cond.true.58, label %cond.false.61

cond.true.58:                                     ; preds = %lor.lhs.false.54
  %36 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl59 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %rtl60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 17
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtl60, align 8
  br label %cond.end.64

cond.false.61:                                    ; preds = %lor.lhs.false.54
  %38 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %38, i8* null)
  %39 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl62 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %rtl63 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl62, i32 0, i32 17
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtl63, align 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.58
  %cond65 = phi %struct.rtx_def* [ %37, %cond.true.58 ], [ %40, %cond.false.61 ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond65, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load66 = load i32, i32* %42, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp ne i32 %bf.clear67, 68
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %cond.end.64, %cond.end.49
  br label %sw.epilog

if.end.70:                                        ; preds = %cond.end.64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %44 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl71 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl71, i32 0, i32 14
  %45 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp72 = icmp ne %union.tree_node* %45, null
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.end.70
  br label %cond.end.75

cond.false.74:                                    ; preds = %if.end.70
  %46 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %47 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %46(%union.tree_node* %47)
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.74, %cond.true.73
  %48 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl76 = bitcast %union.tree_node* %48 to %struct.tree_decl*
  %assembler_name77 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl76, i32 0, i32 14
  %49 = load %union.tree_node*, %union.tree_node** %assembler_name77, align 8
  %identifier78 = bitcast %union.tree_node* %49 to %struct.tree_identifier*
  %id79 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier78, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id79, i32 0, i32 1
  %50 = load i8*, i8** %str, align 8
  %51 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common80 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load81 = load i32, i32* %public_flag, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 19
  %bf.clear83 = and i32 %bf.lshr82, 1
  %tobool84 = icmp ne i32 %bf.clear83, 0
  %cond85 = select i1 %tobool84, i32 70, i32 102
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %50, i32 %cond85)
  store i32 1, i32* %result, align 4
  store i32 36, i32* @current_sym_code, align 4
  %52 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl87 = bitcast %union.tree_node* %52 to %struct.tree_decl*
  %rtl88 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl87, i32 0, i32 17
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtl88, align 8
  %tobool89 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool89, label %cond.true.90, label %cond.false.93

cond.true.90:                                     ; preds = %cond.end.75
  %54 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl91 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %rtl92 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl91, i32 0, i32 17
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtl92, align 8
  br label %cond.end.96

cond.false.93:                                    ; preds = %cond.end.75
  %56 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %56, i8* null)
  %57 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl94 = bitcast %union.tree_node* %57 to %struct.tree_decl*
  %rtl95 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl94, i32 0, i32 17
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtl95, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.90
  %cond97 = phi %struct.rtx_def* [ %55, %cond.true.90 ], [ %58, %cond.false.93 ]
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond97, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** @current_sym_addr, align 8
  %60 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common101 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %type102 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common101, i32 0, i32 1
  %61 = load %union.tree_node*, %union.tree_node** %type102, align 8
  %tobool103 = icmp ne %union.tree_node* %61, null
  br i1 %tobool103, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %cond.end.96
  %62 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common105 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %type106 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common105, i32 0, i32 1
  %63 = load %union.tree_node*, %union.tree_node** %type106, align 8
  call void @dbxout_type(%union.tree_node* %63, i32 0)
  br label %if.end.107

if.else:                                          ; preds = %cond.end.96
  %64 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  call void @dbxout_type(%union.tree_node* %64, i32 0)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.104
  %65 = load %union.tree_node*, %union.tree_node** %context, align 8
  %cmp108 = icmp ne %union.tree_node* %65, null
  br i1 %cmp108, label %if.then.109, label %if.end.127

if.then.109:                                      ; preds = %if.end.107
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %67 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl110 = bitcast %union.tree_node* %67 to %struct.tree_decl*
  %assembler_name111 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl110, i32 0, i32 14
  %68 = load %union.tree_node*, %union.tree_node** %assembler_name111, align 8
  %cmp112 = icmp ne %union.tree_node* %68, null
  br i1 %cmp112, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %if.then.109
  br label %cond.end.115

cond.false.114:                                   ; preds = %if.then.109
  %69 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %70 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %69(%union.tree_node* %70)
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %71 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl116 = bitcast %union.tree_node* %71 to %struct.tree_decl*
  %assembler_name117 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl116, i32 0, i32 14
  %72 = load %union.tree_node*, %union.tree_node** %assembler_name117, align 8
  %identifier118 = bitcast %union.tree_node* %72 to %struct.tree_identifier*
  %id119 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier118, i32 0, i32 1
  %str120 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id119, i32 0, i32 1
  %73 = load i8*, i8** %str120, align 8
  %74 = load %union.tree_node*, %union.tree_node** %context, align 8
  %decl121 = bitcast %union.tree_node* %74 to %struct.tree_decl*
  %name122 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl121, i32 0, i32 8
  %75 = load %union.tree_node*, %union.tree_node** %name122, align 8
  %identifier123 = bitcast %union.tree_node* %75 to %struct.tree_identifier*
  %id124 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier123, i32 0, i32 1
  %str125 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id124, i32 0, i32 1
  %76 = load i8*, i8** %str125, align 8
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %73, i8* %76)
  br label %if.end.127

if.end.127:                                       ; preds = %cond.end.115, %if.end.107
  %77 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %77)
  br label %sw.epilog

sw.bb.128:                                        ; preds = %if.end.14
  %78 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common129 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common129, i32 0, i32 2
  %bf.load130 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr131 = lshr i32 %bf.load130, 14
  %bf.clear132 = and i32 %bf.lshr131, 1
  %tobool133 = icmp ne i32 %bf.clear132, 0
  br i1 %tobool133, label %if.then.142, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %sw.bb.128
  %79 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl135 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %external_flag136 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl135, i32 0, i32 5
  %80 = bitcast i48* %external_flag136 to i64*
  %bf.load137 = load i64, i64* %80, align 8
  %bf.lshr138 = lshr i64 %bf.load137, 8
  %bf.clear139 = and i64 %bf.lshr138, 1
  %bf.cast140 = trunc i64 %bf.clear139 to i32
  %tobool141 = icmp ne i32 %bf.cast140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %lor.lhs.false.134, %sw.bb.128
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %lor.lhs.false.134
  store i32 1, i32* %result, align 4
  store i32 1, i32* %tag_needed, align 4
  store i32 0, i32* %did_output, align 4
  %81 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl144 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %name145 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl144, i32 0, i32 8
  %82 = load %union.tree_node*, %union.tree_node** %name145, align 8
  %tobool146 = icmp ne %union.tree_node* %82, null
  br i1 %tobool146, label %if.then.147, label %if.end.265

if.then.147:                                      ; preds = %if.end.143
  store i32 0, i32* %tag_needed, align 4
  %83 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common148 = bitcast %union.tree_node* %83 to %struct.tree_common*
  %code149 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common148, i32 0, i32 2
  %bf.load150 = load i32, i32* %code149, align 8
  %bf.clear151 = and i32 %bf.load150, 255
  %cmp152 = icmp eq i32 %bf.clear151, 20
  br i1 %cmp152, label %land.lhs.true.165, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %if.then.147
  %84 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common154 = bitcast %union.tree_node* %84 to %struct.tree_common*
  %code155 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common154, i32 0, i32 2
  %bf.load156 = load i32, i32* %code155, align 8
  %bf.clear157 = and i32 %bf.load156, 255
  %cmp158 = icmp eq i32 %bf.clear157, 21
  br i1 %cmp158, label %land.lhs.true.165, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.153
  %85 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common160 = bitcast %union.tree_node* %85 to %struct.tree_common*
  %code161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common160, i32 0, i32 2
  %bf.load162 = load i32, i32* %code161, align 8
  %bf.clear163 = and i32 %bf.load162, 255
  %cmp164 = icmp eq i32 %bf.clear163, 22
  br i1 %cmp164, label %land.lhs.true.165, label %if.end.214

land.lhs.true.165:                                ; preds = %lor.lhs.false.159, %lor.lhs.false.153, %if.then.147
  %86 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type166 = bitcast %union.tree_node* %86 to %struct.tree_type*
  %name167 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type166, i32 0, i32 11
  %87 = load %union.tree_node*, %union.tree_node** %name167, align 8
  %88 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %cmp168 = icmp eq %union.tree_node* %87, %88
  br i1 %cmp168, label %land.lhs.true.169, label %if.end.214

land.lhs.true.169:                                ; preds = %land.lhs.true.165
  %89 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool170 = icmp ne i32 %89, 0
  br i1 %tobool170, label %land.lhs.true.171, label %land.lhs.true.173

land.lhs.true.171:                                ; preds = %land.lhs.true.169
  %90 = load i32, i32* @have_used_extensions, align 4
  %tobool172 = icmp ne i32 %90, 0
  br i1 %tobool172, label %if.end.214, label %land.lhs.true.173

land.lhs.true.173:                                ; preds = %land.lhs.true.171, %land.lhs.true.169
  %91 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type174 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %name175 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type174, i32 0, i32 11
  %92 = load %union.tree_node*, %union.tree_node** %name175, align 8
  %common176 = bitcast %union.tree_node* %92 to %struct.tree_common*
  %asm_written_flag177 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common176, i32 0, i32 2
  %bf.load178 = load i32, i32* %asm_written_flag177, align 8
  %bf.lshr179 = lshr i32 %bf.load178, 14
  %bf.clear180 = and i32 %bf.lshr179, 1
  %tobool181 = icmp ne i32 %bf.clear180, 0
  br i1 %tobool181, label %if.end.214, label %land.lhs.true.182

land.lhs.true.182:                                ; preds = %land.lhs.true.173
  %93 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl183 = bitcast %union.tree_node* %93 to %struct.tree_decl*
  %artificial_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl183, i32 0, i32 5
  %94 = bitcast i48* %artificial_flag to i64*
  %bf.load184 = load i64, i64* %94, align 8
  %bf.lshr185 = lshr i64 %bf.load184, 22
  %bf.clear186 = and i64 %bf.lshr185, 1
  %bf.cast187 = trunc i64 %bf.clear186 to i32
  %tobool188 = icmp ne i32 %bf.cast187, 0
  br i1 %tobool188, label %land.lhs.true.189, label %if.end.214

land.lhs.true.189:                                ; preds = %land.lhs.true.182
  %95 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type190 = bitcast %union.tree_node* %95 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type190, i32 0, i32 2
  %96 = load %union.tree_node*, %union.tree_node** %size, align 8
  %call191 = call i32 @host_integerp(%union.tree_node* %96, i32 1)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.then.193, label %if.end.214

if.then.193:                                      ; preds = %land.lhs.true.189
  %97 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type195 = bitcast %union.tree_node* %97 to %struct.tree_type*
  %name196 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type195, i32 0, i32 11
  %98 = load %union.tree_node*, %union.tree_node** %name196, align 8
  store %union.tree_node* %98, %union.tree_node** %name194, align 8
  %99 = load %union.tree_node*, %union.tree_node** %name194, align 8
  %common197 = bitcast %union.tree_node* %99 to %struct.tree_common*
  %code198 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common197, i32 0, i32 2
  %bf.load199 = load i32, i32* %code198, align 8
  %bf.clear200 = and i32 %bf.load199, 255
  %cmp201 = icmp eq i32 %bf.clear200, 33
  br i1 %cmp201, label %if.then.202, label %if.end.205

if.then.202:                                      ; preds = %if.then.193
  %100 = load %union.tree_node*, %union.tree_node** %name194, align 8
  %decl203 = bitcast %union.tree_node* %100 to %struct.tree_decl*
  %name204 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl203, i32 0, i32 8
  %101 = load %union.tree_node*, %union.tree_node** %name204, align 8
  store %union.tree_node* %101, %union.tree_node** %name194, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.202, %if.then.193
  store i32 128, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %102 = load %union.tree_node*, %union.tree_node** %name194, align 8
  %identifier206 = bitcast %union.tree_node* %102 to %struct.tree_identifier*
  %id207 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier206, i32 0, i32 1
  %len208 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id207, i32 0, i32 0
  %103 = load i32, i32* %len208, align 4
  %add209 = add i32 2, %103
  store i32 %add209, i32* @current_sym_nchars, align 4
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %105 = load %union.tree_node*, %union.tree_node** %name194, align 8
  %identifier210 = bitcast %union.tree_node* %105 to %struct.tree_identifier*
  %id211 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier210, i32 0, i32 1
  %str212 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id211, i32 0, i32 1
  %106 = load i8*, i8** %str212, align 8
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %106)
  %107 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @dbxout_type(%union.tree_node* %107, i32 1)
  call void @dbxout_finish_symbol(%union.tree_node* null)
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.205, %land.lhs.true.189, %land.lhs.true.182, %land.lhs.true.173, %land.lhs.true.171, %land.lhs.true.165, %lor.lhs.false.159
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %109 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl215 = bitcast %union.tree_node* %109 to %struct.tree_decl*
  %name216 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl215, i32 0, i32 8
  %110 = load %union.tree_node*, %union.tree_node** %name216, align 8
  %identifier217 = bitcast %union.tree_node* %110 to %struct.tree_identifier*
  %id218 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier217, i32 0, i32 1
  %str219 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id218, i32 0, i32 1
  %111 = load i8*, i8** %str219, align 8
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %111)
  %112 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common221 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %code222 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common221, i32 0, i32 2
  %bf.load223 = load i32, i32* %code222, align 8
  %bf.clear224 = and i32 %bf.load223, 255
  %cmp225 = icmp eq i32 %bf.clear224, 20
  br i1 %cmp225, label %land.lhs.true.238, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %if.end.214
  %113 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common227 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %code228 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common227, i32 0, i32 2
  %bf.load229 = load i32, i32* %code228, align 8
  %bf.clear230 = and i32 %bf.load229, 255
  %cmp231 = icmp eq i32 %bf.clear230, 21
  br i1 %cmp231, label %land.lhs.true.238, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %lor.lhs.false.226
  %114 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common233 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %code234 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common233, i32 0, i32 2
  %bf.load235 = load i32, i32* %code234, align 8
  %bf.clear236 = and i32 %bf.load235, 255
  %cmp237 = icmp eq i32 %bf.clear236, 22
  br i1 %cmp237, label %land.lhs.true.238, label %if.end.263

land.lhs.true.238:                                ; preds = %lor.lhs.false.232, %lor.lhs.false.226, %if.end.214
  %115 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type239 = bitcast %union.tree_node* %115 to %struct.tree_type*
  %name240 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type239, i32 0, i32 11
  %116 = load %union.tree_node*, %union.tree_node** %name240, align 8
  %117 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %cmp241 = icmp eq %union.tree_node* %116, %117
  br i1 %cmp241, label %land.lhs.true.242, label %if.end.263

land.lhs.true.242:                                ; preds = %land.lhs.true.238
  %118 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl243 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %artificial_flag244 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl243, i32 0, i32 5
  %119 = bitcast i48* %artificial_flag244 to i64*
  %bf.load245 = load i64, i64* %119, align 8
  %bf.lshr246 = lshr i64 %bf.load245, 22
  %bf.clear247 = and i64 %bf.lshr246, 1
  %bf.cast248 = trunc i64 %bf.clear247 to i32
  %tobool249 = icmp ne i32 %bf.cast248, 0
  br i1 %tobool249, label %if.then.250, label %if.end.263

if.then.250:                                      ; preds = %land.lhs.true.242
  %120 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool251 = icmp ne i32 %120, 0
  br i1 %tobool251, label %land.lhs.true.252, label %if.end.262

land.lhs.true.252:                                ; preds = %if.then.250
  %121 = load i32, i32* @have_used_extensions, align 4
  %tobool253 = icmp ne i32 %121, 0
  br i1 %tobool253, label %if.then.254, label %if.end.262

if.then.254:                                      ; preds = %land.lhs.true.252
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call255 = call i32 @_IO_putc(i32 84, %struct._IO_FILE* %122)
  %123 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type256 = bitcast %union.tree_node* %123 to %struct.tree_type*
  %name257 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type256, i32 0, i32 11
  %124 = load %union.tree_node*, %union.tree_node** %name257, align 8
  %common258 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %asm_written_flag259 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common258, i32 0, i32 2
  %bf.load260 = load i32, i32* %asm_written_flag259, align 8
  %bf.clear261 = and i32 %bf.load260, -16385
  %bf.set = or i32 %bf.clear261, 16384
  store i32 %bf.set, i32* %asm_written_flag259, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.254, %land.lhs.true.252, %if.then.250
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %land.lhs.true.242, %land.lhs.true.238, %lor.lhs.false.232
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call264 = call i32 @_IO_putc(i32 116, %struct._IO_FILE* %125)
  store i32 128, i32* @current_sym_code, align 4
  %126 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @dbxout_type(%union.tree_node* %126, i32 1)
  %127 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %127)
  store i32 1, i32* %did_output, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.263, %if.end.143
  %128 = load i32, i32* %tag_needed, align 4
  %tobool266 = icmp ne i32 %128, 0
  br i1 %tobool266, label %land.lhs.true.267, label %if.end.319

land.lhs.true.267:                                ; preds = %if.end.265
  %129 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type268 = bitcast %union.tree_node* %129 to %struct.tree_type*
  %name269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type268, i32 0, i32 11
  %130 = load %union.tree_node*, %union.tree_node** %name269, align 8
  %cmp270 = icmp ne %union.tree_node* %130, null
  br i1 %cmp270, label %land.lhs.true.271, label %if.end.319

land.lhs.true.271:                                ; preds = %land.lhs.true.267
  %131 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type272 = bitcast %union.tree_node* %131 to %struct.tree_type*
  %name273 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type272, i32 0, i32 11
  %132 = load %union.tree_node*, %union.tree_node** %name273, align 8
  %common274 = bitcast %union.tree_node* %132 to %struct.tree_common*
  %code275 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common274, i32 0, i32 2
  %bf.load276 = load i32, i32* %code275, align 8
  %bf.clear277 = and i32 %bf.load276, 255
  %cmp278 = icmp eq i32 %bf.clear277, 1
  br i1 %cmp278, label %land.lhs.true.285, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %land.lhs.true.271
  %133 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type280 = bitcast %union.tree_node* %133 to %struct.tree_type*
  %name281 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type280, i32 0, i32 11
  %134 = load %union.tree_node*, %union.tree_node** %name281, align 8
  %decl282 = bitcast %union.tree_node* %134 to %struct.tree_decl*
  %name283 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl282, i32 0, i32 8
  %135 = load %union.tree_node*, %union.tree_node** %name283, align 8
  %cmp284 = icmp ne %union.tree_node* %135, null
  br i1 %cmp284, label %land.lhs.true.285, label %if.end.319

land.lhs.true.285:                                ; preds = %lor.lhs.false.279, %land.lhs.true.271
  %136 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type286 = bitcast %union.tree_node* %136 to %struct.tree_type*
  %size287 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type286, i32 0, i32 2
  %137 = load %union.tree_node*, %union.tree_node** %size287, align 8
  %cmp288 = icmp ne %union.tree_node* %137, null
  br i1 %cmp288, label %land.lhs.true.289, label %if.end.319

land.lhs.true.289:                                ; preds = %land.lhs.true.285
  %138 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type290 = bitcast %union.tree_node* %138 to %struct.tree_type*
  %name291 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type290, i32 0, i32 11
  %139 = load %union.tree_node*, %union.tree_node** %name291, align 8
  %common292 = bitcast %union.tree_node* %139 to %struct.tree_common*
  %asm_written_flag293 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common292, i32 0, i32 2
  %bf.load294 = load i32, i32* %asm_written_flag293, align 8
  %bf.lshr295 = lshr i32 %bf.load294, 14
  %bf.clear296 = and i32 %bf.lshr295, 1
  %tobool297 = icmp ne i32 %bf.clear296, 0
  br i1 %tobool297, label %if.end.319, label %if.then.298

if.then.298:                                      ; preds = %land.lhs.true.289
  %140 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type300 = bitcast %union.tree_node* %140 to %struct.tree_type*
  %name301 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type300, i32 0, i32 11
  %141 = load %union.tree_node*, %union.tree_node** %name301, align 8
  store %union.tree_node* %141, %union.tree_node** %name299, align 8
  %142 = load %union.tree_node*, %union.tree_node** %name299, align 8
  %common302 = bitcast %union.tree_node* %142 to %struct.tree_common*
  %code303 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common302, i32 0, i32 2
  %bf.load304 = load i32, i32* %code303, align 8
  %bf.clear305 = and i32 %bf.load304, 255
  %cmp306 = icmp eq i32 %bf.clear305, 33
  br i1 %cmp306, label %if.then.307, label %if.end.310

if.then.307:                                      ; preds = %if.then.298
  %143 = load %union.tree_node*, %union.tree_node** %name299, align 8
  %decl308 = bitcast %union.tree_node* %143 to %struct.tree_decl*
  %name309 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl308, i32 0, i32 8
  %144 = load %union.tree_node*, %union.tree_node** %name309, align 8
  store %union.tree_node* %144, %union.tree_node** %name299, align 8
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.307, %if.then.298
  store i32 128, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %145 = load %union.tree_node*, %union.tree_node** %name299, align 8
  %identifier311 = bitcast %union.tree_node* %145 to %struct.tree_identifier*
  %id312 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier311, i32 0, i32 1
  %len313 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id312, i32 0, i32 0
  %146 = load i32, i32* %len313, align 4
  %add314 = add i32 2, %146
  store i32 %add314, i32* @current_sym_nchars, align 4
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %148 = load %union.tree_node*, %union.tree_node** %name299, align 8
  %identifier315 = bitcast %union.tree_node* %148 to %struct.tree_identifier*
  %id316 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier315, i32 0, i32 1
  %str317 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id316, i32 0, i32 1
  %149 = load i8*, i8** %str317, align 8
  %call318 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %149)
  %150 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @dbxout_type(%union.tree_node* %150, i32 1)
  call void @dbxout_finish_symbol(%union.tree_node* null)
  store i32 1, i32* %did_output, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.310, %land.lhs.true.289, %land.lhs.true.285, %lor.lhs.false.279, %land.lhs.true.267, %if.end.265
  %151 = load i32, i32* %did_output, align 4
  %tobool320 = icmp ne i32 %151, 0
  br i1 %tobool320, label %if.end.329, label %land.lhs.true.321

land.lhs.true.321:                                ; preds = %if.end.319
  %152 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common322 = bitcast %union.tree_node* %152 to %struct.tree_common*
  %code323 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common322, i32 0, i32 2
  %bf.load324 = load i32, i32* %code323, align 8
  %bf.clear325 = and i32 %bf.load324, 255
  %cmp326 = icmp eq i32 %bf.clear325, 10
  br i1 %cmp326, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %land.lhs.true.321
  store i32 128, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  store i32 2, i32* @current_sym_nchars, align 4
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call328 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %154 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @dbxout_type(%union.tree_node* %154, i32 1)
  call void @dbxout_finish_symbol(%union.tree_node* null)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %land.lhs.true.321, %if.end.319
  %155 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common330 = bitcast %union.tree_node* %155 to %struct.tree_common*
  %asm_written_flag331 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common330, i32 0, i32 2
  %bf.load332 = load i32, i32* %asm_written_flag331, align 8
  %bf.clear333 = and i32 %bf.load332, -16385
  %bf.set334 = or i32 %bf.clear333, 16384
  store i32 %bf.set334, i32* %asm_written_flag331, align 8
  br label %sw.epilog

sw.bb.335:                                        ; preds = %if.end.14
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 2058, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.dbxout_symbol, i32 0, i32 0)) #7
  unreachable

sw.bb.336:                                        ; preds = %if.end.14, %if.end.14
  %156 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl337 = bitcast %union.tree_node* %156 to %struct.tree_decl*
  %rtl338 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl337, i32 0, i32 17
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtl338, align 8
  %cmp339 = icmp ne %struct.rtx_def* %157, null
  br i1 %cmp339, label %if.end.341, label %if.then.340

if.then.340:                                      ; preds = %sw.bb.336
  store i32 0, i32* %retval
  br label %return

if.end.341:                                       ; preds = %sw.bb.336
  %158 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl342 = bitcast %union.tree_node* %158 to %struct.tree_decl*
  %external_flag343 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl342, i32 0, i32 5
  %159 = bitcast i48* %external_flag343 to i64*
  %bf.load344 = load i64, i64* %159, align 8
  %bf.lshr345 = lshr i64 %bf.load344, 8
  %bf.clear346 = and i64 %bf.lshr345, 1
  %bf.cast347 = trunc i64 %bf.clear346 to i32
  %tobool348 = icmp ne i32 %bf.cast347, 0
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.end.341
  br label %sw.epilog

if.end.350:                                       ; preds = %if.end.341
  %160 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common351 = bitcast %union.tree_node* %160 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common351, i32 0, i32 2
  %bf.load352 = load i32, i32* %static_flag, align 8
  %bf.lshr353 = lshr i32 %bf.load352, 18
  %bf.clear354 = and i32 %bf.lshr353, 1
  %tobool355 = icmp ne i32 %bf.clear354, 0
  br i1 %tobool355, label %land.lhs.true.356, label %if.end.437

land.lhs.true.356:                                ; preds = %if.end.350
  %161 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common357 = bitcast %union.tree_node* %161 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common357, i32 0, i32 2
  %bf.load358 = load i32, i32* %readonly_flag, align 8
  %bf.lshr359 = lshr i32 %bf.load358, 12
  %bf.clear360 = and i32 %bf.lshr359, 1
  %tobool361 = icmp ne i32 %bf.clear360, 0
  br i1 %tobool361, label %land.lhs.true.362, label %if.end.437

land.lhs.true.362:                                ; preds = %land.lhs.true.356
  %162 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl363 = bitcast %union.tree_node* %162 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl363, i32 0, i32 12
  %163 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp364 = icmp ne %union.tree_node* %163, null
  br i1 %cmp364, label %land.lhs.true.365, label %if.end.437

land.lhs.true.365:                                ; preds = %land.lhs.true.362
  %164 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl366 = bitcast %union.tree_node* %164 to %struct.tree_decl*
  %initial367 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl366, i32 0, i32 12
  %165 = load %union.tree_node*, %union.tree_node** %initial367, align 8
  %call368 = call i32 @host_integerp(%union.tree_node* %165, i32 0)
  %tobool369 = icmp ne i32 %call368, 0
  br i1 %tobool369, label %land.lhs.true.370, label %if.end.437

land.lhs.true.370:                                ; preds = %land.lhs.true.365
  %166 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common371 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %asm_written_flag372 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common371, i32 0, i32 2
  %bf.load373 = load i32, i32* %asm_written_flag372, align 8
  %bf.lshr374 = lshr i32 %bf.load373, 14
  %bf.clear375 = and i32 %bf.lshr374, 1
  %tobool376 = icmp ne i32 %bf.clear375, 0
  br i1 %tobool376, label %if.end.437, label %land.lhs.true.377

land.lhs.true.377:                                ; preds = %land.lhs.true.370
  %167 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl378 = bitcast %union.tree_node* %167 to %struct.tree_decl*
  %context379 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl378, i32 0, i32 9
  %168 = load %union.tree_node*, %union.tree_node** %context379, align 8
  %cmp380 = icmp eq %union.tree_node* %168, null
  br i1 %cmp380, label %if.then.389, label %lor.lhs.false.381

lor.lhs.false.381:                                ; preds = %land.lhs.true.377
  %169 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl382 = bitcast %union.tree_node* %169 to %struct.tree_decl*
  %context383 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl382, i32 0, i32 9
  %170 = load %union.tree_node*, %union.tree_node** %context383, align 8
  %common384 = bitcast %union.tree_node* %170 to %struct.tree_common*
  %code385 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common384, i32 0, i32 2
  %bf.load386 = load i32, i32* %code385, align 8
  %bf.clear387 = and i32 %bf.load386, 255
  %cmp388 = icmp eq i32 %bf.clear387, 4
  br i1 %cmp388, label %if.then.389, label %if.end.437

if.then.389:                                      ; preds = %lor.lhs.false.381, %land.lhs.true.377
  %171 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common390 = bitcast %union.tree_node* %171 to %struct.tree_common*
  %public_flag391 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common390, i32 0, i32 2
  %bf.load392 = load i32, i32* %public_flag391, align 8
  %bf.lshr393 = lshr i32 %bf.load392, 19
  %bf.clear394 = and i32 %bf.lshr393, 1
  %cmp395 = icmp eq i32 %bf.clear394, 0
  br i1 %cmp395, label %if.then.396, label %if.end.436

if.then.396:                                      ; preds = %if.then.389
  %172 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl398 = bitcast %union.tree_node* %172 to %struct.tree_decl*
  %name399 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl398, i32 0, i32 8
  %173 = load %union.tree_node*, %union.tree_node** %name399, align 8
  %identifier400 = bitcast %union.tree_node* %173 to %struct.tree_identifier*
  %id401 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier400, i32 0, i32 1
  %str402 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id401, i32 0, i32 1
  %174 = load i8*, i8** %str402, align 8
  store i8* %174, i8** %name397, align 8
  %175 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common403 = bitcast %union.tree_node* %175 to %struct.tree_common*
  %type404 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common403, i32 0, i32 1
  %176 = load %union.tree_node*, %union.tree_node** %type404, align 8
  %common405 = bitcast %union.tree_node* %176 to %struct.tree_common*
  %code406 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common405, i32 0, i32 2
  %bf.load407 = load i32, i32* %code406, align 8
  %bf.clear408 = and i32 %bf.load407, 255
  %cmp409 = icmp eq i32 %bf.clear408, 6
  br i1 %cmp409, label %if.then.418, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %if.then.396
  %177 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common411 = bitcast %union.tree_node* %177 to %struct.tree_common*
  %type412 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common411, i32 0, i32 1
  %178 = load %union.tree_node*, %union.tree_node** %type412, align 8
  %common413 = bitcast %union.tree_node* %178 to %struct.tree_common*
  %code414 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common413, i32 0, i32 2
  %bf.load415 = load i32, i32* %code414, align 8
  %bf.clear416 = and i32 %bf.load415, 255
  %cmp417 = icmp eq i32 %bf.clear416, 10
  br i1 %cmp417, label %if.then.418, label %if.else.425

if.then.418:                                      ; preds = %lor.lhs.false.410, %if.then.396
  %179 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl419 = bitcast %union.tree_node* %179 to %struct.tree_decl*
  %initial420 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl419, i32 0, i32 12
  %180 = load %union.tree_node*, %union.tree_node** %initial420, align 8
  %call421 = call i64 @tree_low_cst(%union.tree_node* %180, i32 0)
  store i64 %call421, i64* %ival, align 8
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %182 = load i8*, i8** %name397, align 8
  %call422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %182)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %184 = load i64, i64* %ival, align 8
  %call423 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %184)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call424 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 128)
  store i32 1, i32* %retval
  br label %return

if.else.425:                                      ; preds = %lor.lhs.false.410
  %186 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common426 = bitcast %union.tree_node* %186 to %struct.tree_common*
  %type427 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common426, i32 0, i32 1
  %187 = load %union.tree_node*, %union.tree_node** %type427, align 8
  %common428 = bitcast %union.tree_node* %187 to %struct.tree_common*
  %code429 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common428, i32 0, i32 2
  %bf.load430 = load i32, i32* %code429, align 8
  %bf.clear431 = and i32 %bf.load430, 255
  %cmp432 = icmp eq i32 %bf.clear431, 7
  br i1 %cmp432, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %if.else.425
  br label %if.end.434

if.end.434:                                       ; preds = %if.then.433, %if.else.425
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434
  br label %sw.epilog

if.end.436:                                       ; preds = %if.then.389
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %lor.lhs.false.381, %land.lhs.true.370, %land.lhs.true.365, %land.lhs.true.362, %land.lhs.true.356, %if.end.350
  %188 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl438 = bitcast %union.tree_node* %188 to %struct.tree_decl*
  %rtl439 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl438, i32 0, i32 17
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtl439, align 8
  %tobool440 = icmp ne %struct.rtx_def* %189, null
  br i1 %tobool440, label %cond.true.441, label %cond.false.444

cond.true.441:                                    ; preds = %if.end.437
  %190 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl442 = bitcast %union.tree_node* %190 to %struct.tree_decl*
  %rtl443 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl442, i32 0, i32 17
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtl443, align 8
  br label %cond.end.447

cond.false.444:                                   ; preds = %if.end.437
  %192 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %192, i8* null)
  %193 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl445 = bitcast %union.tree_node* %193 to %struct.tree_decl*
  %rtl446 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl445, i32 0, i32 17
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rtl446, align 8
  br label %cond.end.447

cond.end.447:                                     ; preds = %cond.false.444, %cond.true.441
  %cond448 = phi %struct.rtx_def* [ %191, %cond.true.441 ], [ %194, %cond.false.444 ]
  %call449 = call %struct.rtx_def* @eliminate_regs(%struct.rtx_def* %cond448, i32 0, %struct.rtx_def* null)
  %195 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl450 = bitcast %union.tree_node* %195 to %struct.tree_decl*
  %rtl451 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl450, i32 0, i32 17
  store %struct.rtx_def* %call449, %struct.rtx_def** %rtl451, align 8
  %196 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %197 = load %union.tree_node*, %union.tree_node** %type, align 8
  %198 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl452 = bitcast %union.tree_node* %198 to %struct.tree_decl*
  %rtl453 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl452, i32 0, i32 17
  %199 = load %struct.rtx_def*, %struct.rtx_def** %rtl453, align 8
  %tobool454 = icmp ne %struct.rtx_def* %199, null
  br i1 %tobool454, label %cond.true.455, label %cond.false.458

cond.true.455:                                    ; preds = %cond.end.447
  %200 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl456 = bitcast %union.tree_node* %200 to %struct.tree_decl*
  %rtl457 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl456, i32 0, i32 17
  %201 = load %struct.rtx_def*, %struct.rtx_def** %rtl457, align 8
  br label %cond.end.461

cond.false.458:                                   ; preds = %cond.end.447
  %202 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %202, i8* null)
  %203 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl459 = bitcast %union.tree_node* %203 to %struct.tree_decl*
  %rtl460 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl459, i32 0, i32 17
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtl460, align 8
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.458, %cond.true.455
  %cond462 = phi %struct.rtx_def* [ %201, %cond.true.455 ], [ %204, %cond.false.458 ]
  %call463 = call i32 @dbxout_symbol_location(%union.tree_node* %196, %union.tree_node* %197, i8* null, %struct.rtx_def* %cond462)
  store i32 %call463, i32* %result, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.461, %if.end.435, %if.then.349, %if.end.329, %if.end.127, %if.then.69, %if.then.38, %if.then.35, %sw.bb
  %205 = load i32, i32* %result, align 4
  store i32 %205, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.418, %if.then.340, %if.then.142, %if.then.27, %if.then
  %206 = load i32, i32* %retval
  ret i32 %206
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_prepare_symbol(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  ret void
}

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare %union.tree_node* @decl_function_context(%union.tree_node*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_type(%union.tree_node* %type, i32 %full) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %full.addr = alloca i32, align 4
  %tem = alloca %union.tree_node*, align 8
  %main_variant = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %n_baseclasses = alloca i32, align 4
  %child = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 %full, i32* %full.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %2, %union.tree_node** %type.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp2 = icmp eq %union.tree_node* %3, %4
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  store %union.tree_node* %5, %union.tree_node** %type.addr, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type4 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 11
  %7 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool = icmp ne %union.tree_node* %7, null
  br i1 %tobool, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type5 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %name6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 11
  %9 = load %union.tree_node*, %union.tree_node** %name6, align 8
  %common7 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp eq i32 %bf.clear10, 33
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type13 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %name14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 11
  %11 = load %union.tree_node*, %union.tree_node** %name14, align 8
  %decl = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %12 = bitcast i48* %external_flag to i64*
  %bf.load15 = load i64, i64* %12, align 8
  %bf.lshr = lshr i64 %bf.load15, 8
  %bf.clear16 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear16 to i32
  %tobool17 = icmp ne i32 %bf.cast, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.12
  store i32 0, i32* %full.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.12, %land.lhs.true, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.3
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type21 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %name22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 11
  %14 = load %union.tree_node*, %union.tree_node** %name22, align 8
  %tobool23 = icmp ne %union.tree_node* %14, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.42

land.lhs.true.24:                                 ; preds = %if.end.20
  %15 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type25 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %name26 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type25, i32 0, i32 11
  %16 = load %union.tree_node*, %union.tree_node** %name26, align 8
  %common27 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load29 = load i32, i32* %code28, align 8
  %bf.clear30 = and i32 %bf.load29, 255
  %cmp31 = icmp eq i32 %bf.clear30, 33
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.42

land.lhs.true.32:                                 ; preds = %land.lhs.true.24
  %17 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type33 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %name34 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i32 0, i32 11
  %18 = load %union.tree_node*, %union.tree_node** %name34, align 8
  %decl35 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl35, i32 0, i32 11
  %19 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool36 = icmp ne %union.tree_node* %19, null
  br i1 %tobool36, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %land.lhs.true.32
  %20 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type38 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %name39 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type38, i32 0, i32 11
  %21 = load %union.tree_node*, %union.tree_node** %name39, align 8
  %common40 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type41, align 8
  store %union.tree_node* %22, %union.tree_node** %main_variant, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %land.lhs.true.32, %land.lhs.true.24, %if.end.20
  %23 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type43 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %main_variant44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type43, i32 0, i32 15
  %24 = load %union.tree_node*, %union.tree_node** %main_variant44, align 8
  store %union.tree_node* %24, %union.tree_node** %main_variant, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.37
  %25 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool46 = icmp ne i32 %25, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.45
  %26 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %26, %union.tree_node** %type.addr, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  %27 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type49 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %symtab = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type49, i32 0, i32 10
  %address = bitcast %union.anon.2* %symtab to i32*
  %28 = load i32, i32* %address, align 4
  %cmp50 = icmp eq i32 %28, 0
  br i1 %cmp50, label %if.then.51, label %if.end.72

if.then.51:                                       ; preds = %if.end.48
  %29 = load i32, i32* @next_type_number, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* @next_type_number, align 4
  %30 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type52 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %symtab53 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type52, i32 0, i32 10
  %address54 = bitcast %union.anon.2* %symtab53 to i32*
  store i32 %29, i32* %address54, align 4
  %31 = load i32, i32* @next_type_number, align 4
  %32 = load i32, i32* @typevec_len, align 4
  %cmp55 = icmp eq i32 %31, %32
  br i1 %cmp55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.then.51
  %33 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %34 = bitcast %struct.typeinfo* %33 to i8*
  %35 = load i32, i32* @typevec_len, align 4
  %mul = mul nsw i32 %35, 2
  %conv = sext i32 %mul to i64
  %mul57 = mul i64 %conv, 12
  %call = call i8* @xrealloc(i8* %34, i64 %mul57)
  %36 = bitcast i8* %call to %struct.typeinfo*
  store %struct.typeinfo* %36, %struct.typeinfo** @typevec, align 8
  %37 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %38 = load i32, i32* @typevec_len, align 4
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %37, i64 %idx.ext
  %39 = bitcast %struct.typeinfo* %add.ptr to i8*
  %40 = load i32, i32* @typevec_len, align 4
  %conv58 = sext i32 %40 to i64
  %mul59 = mul i64 %conv58, 12
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 %mul59, i32 1, i1 false)
  %41 = load i32, i32* @typevec_len, align 4
  %mul60 = mul nsw i32 %41, 2
  store i32 %mul60, i32* @typevec_len, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %if.then.51
  %42 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %file_number = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %42, i32 0, i32 1
  %43 = load i32, i32* %file_number, align 4
  %44 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type62 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %symtab63 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type62, i32 0, i32 10
  %address64 = bitcast %union.anon.2* %symtab63 to i32*
  %45 = load i32, i32* %address64, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %46, i64 %idxprom
  %file_number65 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %arrayidx, i32 0, i32 1
  store i32 %43, i32* %file_number65, align 4
  %47 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %next_type_number = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %47, i32 0, i32 2
  %48 = load i32, i32* %next_type_number, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %next_type_number, align 4
  %49 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type67 = bitcast %union.tree_node* %49 to %struct.tree_type*
  %symtab68 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type67, i32 0, i32 10
  %address69 = bitcast %union.anon.2* %symtab68 to i32*
  %50 = load i32, i32* %address69, align 4
  %idxprom70 = sext i32 %50 to i64
  %51 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx71 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %51, i64 %idxprom70
  %type_number = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %arrayidx71, i32 0, i32 2
  store i32 %48, i32* %type_number, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.61, %if.end.48
  %52 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_index(%union.tree_node* %52)
  %53 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type73 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %symtab74 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type73, i32 0, i32 10
  %address75 = bitcast %union.anon.2* %symtab74 to i32*
  %54 = load i32, i32* %address75, align 4
  %idxprom76 = sext i32 %54 to i64
  %55 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx77 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %55, i64 %idxprom76
  %status = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %arrayidx77, i32 0, i32 0
  %56 = load i32, i32* %status, align 4
  switch i32 %56, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.78
    i32 2, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %if.end.72
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.72
  %57 = load i32, i32* %full.addr, align 4
  %tobool79 = icmp ne i32 %57, 0
  br i1 %tobool79, label %lor.lhs.false, label %if.then.88

lor.lhs.false:                                    ; preds = %sw.bb.78
  %58 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type80 = bitcast %union.tree_node* %58 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type80, i32 0, i32 2
  %59 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp81 = icmp ne %union.tree_node* %59, null
  br i1 %cmp81, label %lor.lhs.false.83, label %if.then.88

lor.lhs.false.83:                                 ; preds = %lor.lhs.false
  %60 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type84 = bitcast %union.tree_node* %60 to %struct.tree_type*
  %size85 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type84, i32 0, i32 2
  %61 = load %union.tree_node*, %union.tree_node** %size85, align 8
  %call86 = call i32 @host_integerp(%union.tree_node* %61, i32 1)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %lor.lhs.false.83, %lor.lhs.false, %sw.bb.78
  br label %sw.epilog.903

if.end.89:                                        ; preds = %lor.lhs.false.83
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.end.72
  br label %sw.epilog.903

sw.epilog:                                        ; preds = %if.end.72, %if.end.89, %sw.bb
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %63 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %63, 1
  store i32 %add, i32* @current_sym_nchars, align 4
  %64 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type92 = bitcast %union.tree_node* %64 to %struct.tree_type*
  %symtab93 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type92, i32 0, i32 10
  %address94 = bitcast %union.anon.2* %symtab93 to i32*
  %65 = load i32, i32* %address94, align 4
  %idxprom95 = sext i32 %65 to i64
  %66 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx96 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %66, i64 %idxprom95
  %status97 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %arrayidx96, i32 0, i32 0
  store i32 2, i32* %status97, align 4
  %67 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common98 = bitcast %union.tree_node* %67 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common98, i32 0, i32 2
  %bf.load99 = load i32, i32* %readonly_flag, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 12
  %bf.clear101 = and i32 %bf.lshr100, 1
  %68 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %common102 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %readonly_flag103 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common102, i32 0, i32 2
  %bf.load104 = load i32, i32* %readonly_flag103, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 12
  %bf.clear106 = and i32 %bf.lshr105, 1
  %cmp107 = icmp sgt i32 %bf.clear101, %bf.clear106
  br i1 %cmp107, label %if.then.109, label %if.else.118

if.then.109:                                      ; preds = %sw.epilog
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call110 = call i32 @_IO_putc(i32 107, %struct._IO_FILE* %69)
  %70 = load i32, i32* @current_sym_nchars, align 4
  %add111 = add nsw i32 %70, 1
  store i32 %add111, i32* @current_sym_nchars, align 4
  %71 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %72 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common112 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common112, i32 0, i32 2
  %bf.load113 = load i32, i32* %volatile_flag, align 8
  %bf.lshr114 = lshr i32 %bf.load113, 11
  %bf.clear115 = and i32 %bf.lshr114, 1
  %tobool116 = icmp ne i32 %bf.clear115, 0
  %cond = select i1 %tobool116, i32 2, i32 0
  %or = or i32 0, %cond
  %call117 = call %union.tree_node* @build_qualified_type(%union.tree_node* %71, i32 %or)
  call void @dbxout_type(%union.tree_node* %call117, i32 0)
  br label %sw.epilog.903

if.else.118:                                      ; preds = %sw.epilog
  %73 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common119 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %volatile_flag120 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common119, i32 0, i32 2
  %bf.load121 = load i32, i32* %volatile_flag120, align 8
  %bf.lshr122 = lshr i32 %bf.load121, 11
  %bf.clear123 = and i32 %bf.lshr122, 1
  %74 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %common124 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %volatile_flag125 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common124, i32 0, i32 2
  %bf.load126 = load i32, i32* %volatile_flag125, align 8
  %bf.lshr127 = lshr i32 %bf.load126, 11
  %bf.clear128 = and i32 %bf.lshr127, 1
  %cmp129 = icmp sgt i32 %bf.clear123, %bf.clear128
  br i1 %cmp129, label %if.then.131, label %if.else.142

if.then.131:                                      ; preds = %if.else.118
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call132 = call i32 @_IO_putc(i32 66, %struct._IO_FILE* %75)
  %76 = load i32, i32* @current_sym_nchars, align 4
  %add133 = add nsw i32 %76, 1
  store i32 %add133, i32* @current_sym_nchars, align 4
  %77 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %78 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common134 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %readonly_flag135 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common134, i32 0, i32 2
  %bf.load136 = load i32, i32* %readonly_flag135, align 8
  %bf.lshr137 = lshr i32 %bf.load136, 12
  %bf.clear138 = and i32 %bf.lshr137, 1
  %tobool139 = icmp ne i32 %bf.clear138, 0
  %cond140 = select i1 %tobool139, i32 1, i32 0
  %call141 = call %union.tree_node* @build_qualified_type(%union.tree_node* %77, i32 %cond140)
  call void @dbxout_type(%union.tree_node* %call141, i32 0)
  br label %sw.epilog.903

if.else.142:                                      ; preds = %if.else.118
  %79 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %80 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type143 = bitcast %union.tree_node* %80 to %struct.tree_type*
  %main_variant144 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type143, i32 0, i32 15
  %81 = load %union.tree_node*, %union.tree_node** %main_variant144, align 8
  %cmp145 = icmp ne %union.tree_node* %79, %81
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %if.else.142
  %82 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type148 = bitcast %union.tree_node* %82 to %struct.tree_type*
  %name149 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type148, i32 0, i32 11
  %83 = load %union.tree_node*, %union.tree_node** %name149, align 8
  %decl150 = bitcast %union.tree_node* %83 to %struct.tree_decl*
  %result151 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl150, i32 0, i32 11
  %84 = load %union.tree_node*, %union.tree_node** %result151, align 8
  call void @dbxout_type(%union.tree_node* %84, i32 0)
  br label %sw.epilog.903

if.end.152:                                       ; preds = %if.else.142
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153
  %85 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common155 = bitcast %union.tree_node* %85 to %struct.tree_common*
  %code156 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common155, i32 0, i32 2
  %bf.load157 = load i32, i32* %code156, align 8
  %bf.clear158 = and i32 %bf.load157, 255
  switch i32 %bf.clear158, label %sw.default [
    i32 5, label %sw.bb.159
    i32 24, label %sw.bb.159
    i32 6, label %sw.bb.160
    i32 7, label %sw.bb.323
    i32 12, label %sw.bb.331
    i32 11, label %sw.bb.353
    i32 17, label %sw.bb.366
    i32 8, label %sw.bb.371
    i32 19, label %sw.bb.426
    i32 18, label %sw.bb.449
    i32 20, label %sw.bb.494
    i32 21, label %sw.bb.494
    i32 22, label %sw.bb.494
    i32 10, label %sw.bb.725
    i32 13, label %sw.bb.851
    i32 16, label %sw.bb.856
    i32 14, label %sw.bb.875
    i32 15, label %sw.bb.888
    i32 23, label %sw.bb.898
  ]

sw.bb.159:                                        ; preds = %if.end.154, %if.end.154
  %86 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_index(%union.tree_node* %86)
  br label %sw.epilog.903

sw.bb.160:                                        ; preds = %if.end.154
  %87 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %88 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp161 = icmp eq %union.tree_node* %87, %88
  br i1 %cmp161, label %land.lhs.true.163, label %if.else.174

land.lhs.true.163:                                ; preds = %sw.bb.160
  %89 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common164 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common164, i32 0, i32 2
  %bf.load165 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr166 = lshr i32 %bf.load165, 13
  %bf.clear167 = and i32 %bf.lshr166, 1
  %tobool168 = icmp ne i32 %bf.clear167, 0
  br i1 %tobool168, label %if.else.174, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true.163
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %91 = load i32, i32* @current_sym_nchars, align 4
  %add171 = add nsw i32 %91, 1
  store i32 %add171, i32* @current_sym_nchars, align 4
  %92 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_index(%union.tree_node* %92)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0))
  %94 = load i32, i32* @current_sym_nchars, align 4
  %add173 = add nsw i32 %94, 7
  store i32 %add173, i32* @current_sym_nchars, align 4
  br label %if.end.322

if.else.174:                                      ; preds = %land.lhs.true.163, %sw.bb.160
  %95 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common175 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %type176 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common175, i32 0, i32 1
  %96 = load %union.tree_node*, %union.tree_node** %type176, align 8
  %cmp177 = icmp ne %union.tree_node* %96, null
  br i1 %cmp177, label %land.lhs.true.179, label %if.else.208

land.lhs.true.179:                                ; preds = %if.else.174
  %97 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common180 = bitcast %union.tree_node* %97 to %struct.tree_common*
  %type181 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common180, i32 0, i32 1
  %98 = load %union.tree_node*, %union.tree_node** %type181, align 8
  %common182 = bitcast %union.tree_node* %98 to %struct.tree_common*
  %code183 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common182, i32 0, i32 2
  %bf.load184 = load i32, i32* %code183, align 8
  %bf.clear185 = and i32 %bf.load184, 255
  %cmp186 = icmp eq i32 %bf.clear185, 6
  br i1 %cmp186, label %if.then.188, label %if.else.208

if.then.188:                                      ; preds = %land.lhs.true.179
  %99 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool189 = icmp ne i32 %99, 0
  br i1 %tobool189, label %land.lhs.true.190, label %if.end.207

land.lhs.true.190:                                ; preds = %if.then.188
  %100 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type191 = bitcast %union.tree_node* %100 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type191, i32 0, i32 6
  %bf.load192 = load i32, i32* %precision, align 4
  %bf.clear193 = and i32 %bf.load192, 511
  %101 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type194 = bitcast %union.tree_node* %101 to %struct.tree_type*
  %precision195 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type194, i32 0, i32 6
  %bf.load196 = load i32, i32* %precision195, align 4
  %bf.clear197 = and i32 %bf.load196, 511
  %cmp198 = icmp ne i32 %bf.clear193, %bf.clear197
  br i1 %cmp198, label %if.then.200, label %if.end.207

if.then.200:                                      ; preds = %land.lhs.true.190
  store i32 1, i32* @have_used_extensions, align 4
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %103 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type201 = bitcast %union.tree_node* %103 to %struct.tree_type*
  %precision202 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type201, i32 0, i32 6
  %bf.load203 = load i32, i32* %precision202, align 4
  %bf.clear204 = and i32 %bf.load203, 511
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %bf.clear204)
  %104 = load i32, i32* @current_sym_nchars, align 4
  %add206 = add nsw i32 %104, 5
  store i32 %add206, i32* @current_sym_nchars, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.200, %land.lhs.true.190, %if.then.188
  %105 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_range_type(%union.tree_node* %105)
  br label %if.end.321

if.else.208:                                      ; preds = %land.lhs.true.179, %if.else.174
  %106 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool209 = icmp ne i32 %106, 0
  br i1 %tobool209, label %land.lhs.true.210, label %if.end.228

land.lhs.true.210:                                ; preds = %if.else.208
  %107 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type211 = bitcast %union.tree_node* %107 to %struct.tree_type*
  %precision212 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type211, i32 0, i32 6
  %bf.load213 = load i32, i32* %precision212, align 4
  %bf.clear214 = and i32 %bf.load213, 511
  %108 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type215 = bitcast %union.tree_node* %108 to %struct.tree_type*
  %precision216 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type215, i32 0, i32 6
  %bf.load217 = load i32, i32* %precision216, align 4
  %bf.clear218 = and i32 %bf.load217, 511
  %cmp219 = icmp ne i32 %bf.clear214, %bf.clear218
  br i1 %cmp219, label %if.then.221, label %if.end.228

if.then.221:                                      ; preds = %land.lhs.true.210
  store i32 1, i32* @have_used_extensions, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %110 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type222 = bitcast %union.tree_node* %110 to %struct.tree_type*
  %precision223 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type222, i32 0, i32 6
  %bf.load224 = load i32, i32* %precision223, align 4
  %bf.clear225 = and i32 %bf.load224, 511
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %bf.clear225)
  %111 = load i32, i32* @current_sym_nchars, align 4
  %add227 = add nsw i32 %111, 5
  store i32 %add227, i32* @current_sym_nchars, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.221, %land.lhs.true.210, %if.else.208
  %112 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool229 = icmp ne i32 %112, 0
  br i1 %tobool229, label %land.lhs.true.230, label %if.else.319

land.lhs.true.230:                                ; preds = %if.end.228
  %113 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type231 = bitcast %union.tree_node* %113 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type231, i32 0, i32 12
  %114 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %cmp232 = icmp ne %union.tree_node* %114, null
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.319

land.lhs.true.234:                                ; preds = %land.lhs.true.230
  %115 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type235 = bitcast %union.tree_node* %115 to %struct.tree_type*
  %minval236 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type235, i32 0, i32 12
  %116 = load %union.tree_node*, %union.tree_node** %minval236, align 8
  %common237 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %code238 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common237, i32 0, i32 2
  %bf.load239 = load i32, i32* %code238, align 8
  %bf.clear240 = and i32 %bf.load239, 255
  %cmp241 = icmp eq i32 %bf.clear240, 25
  br i1 %cmp241, label %land.lhs.true.243, label %if.else.319

land.lhs.true.243:                                ; preds = %land.lhs.true.234
  %117 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type244 = bitcast %union.tree_node* %117 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type244, i32 0, i32 13
  %118 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %cmp245 = icmp ne %union.tree_node* %118, null
  br i1 %cmp245, label %land.lhs.true.247, label %if.else.319

land.lhs.true.247:                                ; preds = %land.lhs.true.243
  %119 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type248 = bitcast %union.tree_node* %119 to %struct.tree_type*
  %maxval249 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type248, i32 0, i32 13
  %120 = load %union.tree_node*, %union.tree_node** %maxval249, align 8
  %common250 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %code251 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common250, i32 0, i32 2
  %bf.load252 = load i32, i32* %code251, align 8
  %bf.clear253 = and i32 %bf.load252, 255
  %cmp254 = icmp eq i32 %bf.clear253, 25
  br i1 %cmp254, label %land.lhs.true.256, label %if.else.319

land.lhs.true.256:                                ; preds = %land.lhs.true.247
  %121 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type257 = bitcast %union.tree_node* %121 to %struct.tree_type*
  %precision258 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type257, i32 0, i32 6
  %bf.load259 = load i32, i32* %precision258, align 4
  %bf.clear260 = and i32 %bf.load259, 511
  %122 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type261 = bitcast %union.tree_node* %122 to %struct.tree_type*
  %precision262 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type261, i32 0, i32 6
  %bf.load263 = load i32, i32* %precision262, align 4
  %bf.clear264 = and i32 %bf.load263, 511
  %cmp265 = icmp sgt i32 %bf.clear260, %bf.clear264
  br i1 %cmp265, label %if.then.306, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %land.lhs.true.256
  %123 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type268 = bitcast %union.tree_node* %123 to %struct.tree_type*
  %precision269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type268, i32 0, i32 6
  %bf.load270 = load i32, i32* %precision269, align 4
  %bf.clear271 = and i32 %bf.load270, 511
  %124 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type272 = bitcast %union.tree_node* %124 to %struct.tree_type*
  %precision273 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type272, i32 0, i32 6
  %bf.load274 = load i32, i32* %precision273, align 4
  %bf.clear275 = and i32 %bf.load274, 511
  %cmp276 = icmp eq i32 %bf.clear271, %bf.clear275
  br i1 %cmp276, label %land.lhs.true.278, label %lor.lhs.false.285

land.lhs.true.278:                                ; preds = %lor.lhs.false.267
  %125 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common279 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %unsigned_flag280 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common279, i32 0, i32 2
  %bf.load281 = load i32, i32* %unsigned_flag280, align 8
  %bf.lshr282 = lshr i32 %bf.load281, 13
  %bf.clear283 = and i32 %bf.lshr282, 1
  %tobool284 = icmp ne i32 %bf.clear283, 0
  br i1 %tobool284, label %if.then.306, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %land.lhs.true.278, %lor.lhs.false.267
  %126 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type286 = bitcast %union.tree_node* %126 to %struct.tree_type*
  %precision287 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type286, i32 0, i32 6
  %bf.load288 = load i32, i32* %precision287, align 4
  %bf.clear289 = and i32 %bf.load288, 511
  %cmp290 = icmp sgt i32 %bf.clear289, 64
  br i1 %cmp290, label %if.then.306, label %lor.lhs.false.292

lor.lhs.false.292:                                ; preds = %lor.lhs.false.285
  %127 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type293 = bitcast %union.tree_node* %127 to %struct.tree_type*
  %precision294 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type293, i32 0, i32 6
  %bf.load295 = load i32, i32* %precision294, align 4
  %bf.clear296 = and i32 %bf.load295, 511
  %cmp297 = icmp eq i32 %bf.clear296, 64
  br i1 %cmp297, label %land.lhs.true.299, label %if.else.319

land.lhs.true.299:                                ; preds = %lor.lhs.false.292
  %128 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common300 = bitcast %union.tree_node* %128 to %struct.tree_common*
  %unsigned_flag301 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common300, i32 0, i32 2
  %bf.load302 = load i32, i32* %unsigned_flag301, align 8
  %bf.lshr303 = lshr i32 %bf.load302, 13
  %bf.clear304 = and i32 %bf.lshr303, 1
  %tobool305 = icmp ne i32 %bf.clear304, 0
  br i1 %tobool305, label %if.then.306, label %if.else.319

if.then.306:                                      ; preds = %land.lhs.true.299, %lor.lhs.false.285, %land.lhs.true.278, %land.lhs.true.256
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call307 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %130 = load i32, i32* @current_sym_nchars, align 4
  %add308 = add nsw i32 %130, 1
  store i32 %add308, i32* @current_sym_nchars, align 4
  %131 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_index(%union.tree_node* %131)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %133 = load i32, i32* @current_sym_nchars, align 4
  %add310 = add nsw i32 %133, 1
  store i32 %add310, i32* @current_sym_nchars, align 4
  %134 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type311 = bitcast %union.tree_node* %134 to %struct.tree_type*
  %minval312 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type311, i32 0, i32 12
  %135 = load %union.tree_node*, %union.tree_node** %minval312, align 8
  call void @print_int_cst_octal(%union.tree_node* %135)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call313 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %137 = load i32, i32* @current_sym_nchars, align 4
  %add314 = add nsw i32 %137, 1
  store i32 %add314, i32* @current_sym_nchars, align 4
  %138 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type315 = bitcast %union.tree_node* %138 to %struct.tree_type*
  %maxval316 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type315, i32 0, i32 13
  %139 = load %union.tree_node*, %union.tree_node** %maxval316, align 8
  call void @print_int_cst_octal(%union.tree_node* %139)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %141 = load i32, i32* @current_sym_nchars, align 4
  %add318 = add nsw i32 %141, 1
  store i32 %add318, i32* @current_sym_nchars, align 4
  br label %if.end.320

if.else.319:                                      ; preds = %land.lhs.true.299, %lor.lhs.false.292, %land.lhs.true.247, %land.lhs.true.243, %land.lhs.true.234, %land.lhs.true.230, %if.end.228
  %142 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_range_type(%union.tree_node* %142)
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.319, %if.then.306
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.end.207
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.then.169
  br label %sw.epilog.903

sw.bb.323:                                        ; preds = %if.end.154
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %144 = load i32, i32* @current_sym_nchars, align 4
  %add325 = add nsw i32 %144, 1
  store i32 %add325, i32* @current_sym_nchars, align 4
  %145 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  call void @dbxout_type_index(%union.tree_node* %145)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call326 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %146)
  %147 = load i32, i32* @current_sym_nchars, align 4
  %add327 = add nsw i32 %147, 1
  store i32 %add327, i32* @current_sym_nchars, align 4
  %148 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call328 = call i64 @int_size_in_bytes(%union.tree_node* %148)
  call void @print_wide_int(i64 %call328)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call329 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %149)
  %150 = load i32, i32* @current_sym_nchars, align 4
  %add330 = add nsw i32 %150, 3
  store i32 %add330, i32* @current_sym_nchars, align 4
  br label %sw.epilog.903

sw.bb.331:                                        ; preds = %if.end.154
  %151 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool332 = icmp ne i32 %151, 0
  br i1 %tobool332, label %if.then.333, label %if.else.340

if.then.333:                                      ; preds = %sw.bb.331
  store i32 1, i32* @have_used_extensions, align 4
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call334 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %152)
  %153 = load i32, i32* @current_sym_nchars, align 4
  %add335 = add nsw i32 %153, 2
  store i32 %add335, i32* @current_sym_nchars, align 4
  %154 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call336 = call i64 @int_size_in_bytes(%union.tree_node* %154)
  %mul337 = mul nsw i64 8, %call336
  call void @print_wide_int(i64 %mul337)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call338 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %155)
  %156 = load i32, i32* @current_sym_nchars, align 4
  %add339 = add nsw i32 %156, 4
  store i32 %add339, i32* @current_sym_nchars, align 4
  br label %if.end.352

if.else.340:                                      ; preds = %sw.bb.331
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %158 = load i32, i32* @current_sym_nchars, align 4
  %add342 = add nsw i32 %158, 1
  store i32 %add342, i32* @current_sym_nchars, align 4
  %159 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  call void @dbxout_type_index(%union.tree_node* %159)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %161 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common343 = bitcast %union.tree_node* %161 to %struct.tree_common*
  %unsigned_flag344 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common343, i32 0, i32 2
  %bf.load345 = load i32, i32* %unsigned_flag344, align 8
  %bf.lshr346 = lshr i32 %bf.load345, 13
  %bf.clear347 = and i32 %bf.lshr346, 1
  %tobool348 = icmp ne i32 %bf.clear347, 0
  %cond349 = select i1 %tobool348, i32 255, i32 127
  %call350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %cond349)
  %162 = load i32, i32* @current_sym_nchars, align 4
  %add351 = add nsw i32 %162, 7
  store i32 %add351, i32* @current_sym_nchars, align 4
  br label %if.end.352

if.end.352:                                       ; preds = %if.else.340, %if.then.333
  br label %sw.epilog.903

sw.bb.353:                                        ; preds = %if.end.154
  %163 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool354 = icmp ne i32 %163, 0
  br i1 %tobool354, label %if.then.355, label %if.else.362

if.then.355:                                      ; preds = %sw.bb.353
  store i32 1, i32* @have_used_extensions, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call356 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %164)
  %165 = load i32, i32* @current_sym_nchars, align 4
  %add357 = add nsw i32 %165, 2
  store i32 %add357, i32* @current_sym_nchars, align 4
  %166 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call358 = call i64 @int_size_in_bytes(%union.tree_node* %166)
  %mul359 = mul nsw i64 8, %call358
  call void @print_wide_int(i64 %mul359)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call360 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %167)
  %168 = load i32, i32* @current_sym_nchars, align 4
  %add361 = add nsw i32 %168, 4
  store i32 %add361, i32* @current_sym_nchars, align 4
  br label %if.end.365

if.else.362:                                      ; preds = %sw.bb.353
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call363 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  %170 = load i32, i32* @current_sym_nchars, align 4
  %add364 = add nsw i32 %170, 17
  store i32 %add364, i32* @current_sym_nchars, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.362, %if.then.355
  br label %sw.epilog.903

sw.bb.366:                                        ; preds = %if.end.154
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call367 = call i32 @_IO_putc(i32 100, %struct._IO_FILE* %171)
  %172 = load i32, i32* @current_sym_nchars, align 4
  %add368 = add nsw i32 %172, 1
  store i32 %add368, i32* @current_sym_nchars, align 4
  %173 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common369 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %type370 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common369, i32 0, i32 1
  %174 = load %union.tree_node*, %union.tree_node** %type370, align 8
  call void @dbxout_type(%union.tree_node* %174, i32 0)
  br label %sw.epilog.903

sw.bb.371:                                        ; preds = %if.end.154
  %175 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common372 = bitcast %union.tree_node* %175 to %struct.tree_common*
  %type373 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common372, i32 0, i32 1
  %176 = load %union.tree_node*, %union.tree_node** %type373, align 8
  %common374 = bitcast %union.tree_node* %176 to %struct.tree_common*
  %code375 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common374, i32 0, i32 2
  %bf.load376 = load i32, i32* %code375, align 8
  %bf.clear377 = and i32 %bf.load376, 255
  %cmp378 = icmp eq i32 %bf.clear377, 7
  br i1 %cmp378, label %if.then.380, label %if.else.391

if.then.380:                                      ; preds = %sw.bb.371
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %178 = load i32, i32* @current_sym_nchars, align 4
  %add382 = add nsw i32 %178, 1
  store i32 %add382, i32* @current_sym_nchars, align 4
  %179 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_index(%union.tree_node* %179)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call383 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %180)
  %181 = load i32, i32* @current_sym_nchars, align 4
  %add384 = add nsw i32 %181, 1
  store i32 %add384, i32* @current_sym_nchars, align 4
  %182 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common385 = bitcast %union.tree_node* %182 to %struct.tree_common*
  %type386 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common385, i32 0, i32 1
  %183 = load %union.tree_node*, %union.tree_node** %type386, align 8
  %call387 = call i64 @int_size_in_bytes(%union.tree_node* %183)
  %mul388 = mul nsw i64 2, %call387
  call void @print_wide_int(i64 %mul388)
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call389 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %184)
  %185 = load i32, i32* @current_sym_nchars, align 4
  %add390 = add nsw i32 %185, 3
  store i32 %add390, i32* @current_sym_nchars, align 4
  br label %if.end.425

if.else.391:                                      ; preds = %sw.bb.371
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call392 = call i32 @_IO_putc(i32 115, %struct._IO_FILE* %186)
  %187 = load i32, i32* @current_sym_nchars, align 4
  %add393 = add nsw i32 %187, 1
  store i32 %add393, i32* @current_sym_nchars, align 4
  %188 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call394 = call i64 @int_size_in_bytes(%union.tree_node* %188)
  call void @print_wide_int(i64 %call394)
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %190 = load i32, i32* @current_sym_nchars, align 4
  %add396 = add nsw i32 %190, 5
  store i32 %add396, i32* @current_sym_nchars, align 4
  %191 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common397 = bitcast %union.tree_node* %191 to %struct.tree_common*
  %type398 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common397, i32 0, i32 1
  %192 = load %union.tree_node*, %union.tree_node** %type398, align 8
  call void @dbxout_type(%union.tree_node* %192, i32 0)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %194 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common399 = bitcast %union.tree_node* %194 to %struct.tree_common*
  %type400 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common399, i32 0, i32 1
  %195 = load %union.tree_node*, %union.tree_node** %type400, align 8
  %type401 = bitcast %union.tree_node* %195 to %struct.tree_type*
  %precision402 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type401, i32 0, i32 6
  %bf.load403 = load i32, i32* %precision402, align 4
  %bf.clear404 = and i32 %bf.load403, 511
  %call405 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %bf.clear404)
  %196 = load i32, i32* @current_sym_nchars, align 4
  %add406 = add nsw i32 %196, 7
  store i32 %add406, i32* @current_sym_nchars, align 4
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call407 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  %198 = load i32, i32* @current_sym_nchars, align 4
  %add408 = add nsw i32 %198, 5
  store i32 %add408, i32* @current_sym_nchars, align 4
  %199 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common409 = bitcast %union.tree_node* %199 to %struct.tree_common*
  %type410 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common409, i32 0, i32 1
  %200 = load %union.tree_node*, %union.tree_node** %type410, align 8
  call void @dbxout_type(%union.tree_node* %200, i32 0)
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %202 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common411 = bitcast %union.tree_node* %202 to %struct.tree_common*
  %type412 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common411, i32 0, i32 1
  %203 = load %union.tree_node*, %union.tree_node** %type412, align 8
  %type413 = bitcast %union.tree_node* %203 to %struct.tree_type*
  %precision414 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type413, i32 0, i32 6
  %bf.load415 = load i32, i32* %precision414, align 4
  %bf.clear416 = and i32 %bf.load415, 511
  %204 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common417 = bitcast %union.tree_node* %204 to %struct.tree_common*
  %type418 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common417, i32 0, i32 1
  %205 = load %union.tree_node*, %union.tree_node** %type418, align 8
  %type419 = bitcast %union.tree_node* %205 to %struct.tree_type*
  %precision420 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type419, i32 0, i32 6
  %bf.load421 = load i32, i32* %precision420, align 4
  %bf.clear422 = and i32 %bf.load421, 511
  %call423 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %bf.clear416, i32 %bf.clear422)
  %206 = load i32, i32* @current_sym_nchars, align 4
  %add424 = add nsw i32 %206, 10
  store i32 %add424, i32* @current_sym_nchars, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.else.391, %if.then.380
  br label %sw.epilog.903

sw.bb.426:                                        ; preds = %if.end.154
  %207 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool427 = icmp ne i32 %207, 0
  br i1 %tobool427, label %if.then.428, label %if.end.444

if.then.428:                                      ; preds = %sw.bb.426
  store i32 1, i32* @have_used_extensions, align 4
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call429 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %208)
  %209 = load i32, i32* @current_sym_nchars, align 4
  %add430 = add nsw i32 %209, 2
  store i32 %add430, i32* @current_sym_nchars, align 4
  %210 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call431 = call i64 @int_size_in_bytes(%union.tree_node* %210)
  %mul432 = mul nsw i64 8, %call431
  call void @print_wide_int(i64 %mul432)
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call433 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %211)
  %212 = load i32, i32* @current_sym_nchars, align 4
  %add434 = add nsw i32 %212, 1
  store i32 %add434, i32* @current_sym_nchars, align 4
  %213 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type435 = bitcast %union.tree_node* %213 to %struct.tree_type*
  %string_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type435, i32 0, i32 6
  %bf.load436 = load i32, i32* %string_flag, align 4
  %bf.lshr437 = lshr i32 %bf.load436, 16
  %bf.clear438 = and i32 %bf.lshr437, 1
  %tobool439 = icmp ne i32 %bf.clear438, 0
  br i1 %tobool439, label %if.then.440, label %if.end.443

if.then.440:                                      ; preds = %if.then.428
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call441 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0))
  %215 = load i32, i32* @current_sym_nchars, align 4
  %add442 = add nsw i32 %215, 3
  store i32 %add442, i32* @current_sym_nchars, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.440, %if.then.428
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.443, %sw.bb.426
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call445 = call i32 @_IO_putc(i32 83, %struct._IO_FILE* %216)
  %217 = load i32, i32* @current_sym_nchars, align 4
  %add446 = add nsw i32 %217, 1
  store i32 %add446, i32* @current_sym_nchars, align 4
  %218 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type447 = bitcast %union.tree_node* %218 to %struct.tree_type*
  %values448 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type447, i32 0, i32 1
  %219 = load %union.tree_node*, %union.tree_node** %values448, align 8
  call void @dbxout_type(%union.tree_node* %219, i32 0)
  br label %sw.epilog.903

sw.bb.449:                                        ; preds = %if.end.154
  %220 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type450 = bitcast %union.tree_node* %220 to %struct.tree_type*
  %packed_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type450, i32 0, i32 6
  %bf.load451 = load i32, i32* %packed_flag, align 4
  %bf.lshr452 = lshr i32 %bf.load451, 20
  %bf.clear453 = and i32 %bf.lshr452, 1
  %tobool454 = icmp ne i32 %bf.clear453, 0
  br i1 %tobool454, label %land.lhs.true.455, label %if.end.466

land.lhs.true.455:                                ; preds = %sw.bb.449
  %221 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool456 = icmp ne i32 %221, 0
  br i1 %tobool456, label %if.then.457, label %if.end.466

if.then.457:                                      ; preds = %land.lhs.true.455
  store i32 1, i32* @have_used_extensions, align 4
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call458 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %222)
  %223 = load i32, i32* @current_sym_nchars, align 4
  %add459 = add nsw i32 %223, 2
  store i32 %add459, i32* @current_sym_nchars, align 4
  %224 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call460 = call i64 @int_size_in_bytes(%union.tree_node* %224)
  %mul461 = mul nsw i64 8, %call460
  call void @print_wide_int(i64 %mul461)
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call462 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  %226 = load i32, i32* @current_sym_nchars, align 4
  %add463 = add nsw i32 %226, 5
  store i32 %add463, i32* @current_sym_nchars, align 4
  %227 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type464 = bitcast %union.tree_node* %227 to %struct.tree_type*
  %values465 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type464, i32 0, i32 1
  %228 = load %union.tree_node*, %union.tree_node** %values465, align 8
  call void @dbxout_type(%union.tree_node* %228, i32 0)
  br label %sw.epilog.903

if.end.466:                                       ; preds = %land.lhs.true.455, %sw.bb.449
  %229 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type467 = bitcast %union.tree_node* %229 to %struct.tree_type*
  %string_flag468 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type467, i32 0, i32 6
  %bf.load469 = load i32, i32* %string_flag468, align 4
  %bf.lshr470 = lshr i32 %bf.load469, 16
  %bf.clear471 = and i32 %bf.lshr470, 1
  %tobool472 = icmp ne i32 %bf.clear471, 0
  br i1 %tobool472, label %land.lhs.true.473, label %if.end.478

land.lhs.true.473:                                ; preds = %if.end.466
  %230 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool474 = icmp ne i32 %230, 0
  br i1 %tobool474, label %if.then.475, label %if.end.478

if.then.475:                                      ; preds = %land.lhs.true.473
  store i32 1, i32* @have_used_extensions, align 4
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0))
  %232 = load i32, i32* @current_sym_nchars, align 4
  %add477 = add nsw i32 %232, 3
  store i32 %add477, i32* @current_sym_nchars, align 4
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.475, %land.lhs.true.473, %if.end.466
  %233 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type479 = bitcast %union.tree_node* %233 to %struct.tree_type*
  %values480 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type479, i32 0, i32 1
  %234 = load %union.tree_node*, %union.tree_node** %values480, align 8
  store %union.tree_node* %234, %union.tree_node** %tem, align 8
  %235 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %cmp481 = icmp eq %union.tree_node* %235, null
  br i1 %cmp481, label %if.then.483, label %if.else.488

if.then.483:                                      ; preds = %if.end.478
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %237 = load i32, i32* @current_sym_nchars, align 4
  %add485 = add nsw i32 %237, 2
  store i32 %add485, i32* @current_sym_nchars, align 4
  %238 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  call void @dbxout_type_index(%union.tree_node* %238)
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call486 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0))
  %240 = load i32, i32* @current_sym_nchars, align 4
  %add487 = add nsw i32 %240, 6
  store i32 %add487, i32* @current_sym_nchars, align 4
  br label %if.end.491

if.else.488:                                      ; preds = %if.end.478
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call489 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0))
  %242 = load i32, i32* @current_sym_nchars, align 4
  %add490 = add nsw i32 %242, 1
  store i32 %add490, i32* @current_sym_nchars, align 4
  %243 = load %union.tree_node*, %union.tree_node** %tem, align 8
  call void @dbxout_range_type(%union.tree_node* %243)
  br label %if.end.491

if.end.491:                                       ; preds = %if.else.488, %if.then.483
  %244 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common492 = bitcast %union.tree_node* %244 to %struct.tree_common*
  %type493 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common492, i32 0, i32 1
  %245 = load %union.tree_node*, %union.tree_node** %type493, align 8
  call void @dbxout_type(%union.tree_node* %245, i32 0)
  br label %sw.epilog.903

sw.bb.494:                                        ; preds = %if.end.154, %if.end.154, %if.end.154
  store i32 0, i32* %n_baseclasses, align 4
  %246 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type495 = bitcast %union.tree_node* %246 to %struct.tree_type*
  %binfo = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type495, i32 0, i32 16
  %247 = load %union.tree_node*, %union.tree_node** %binfo, align 8
  %cmp496 = icmp ne %union.tree_node* %247, null
  br i1 %cmp496, label %land.lhs.true.498, label %if.end.520

land.lhs.true.498:                                ; preds = %sw.bb.494
  %248 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type499 = bitcast %union.tree_node* %248 to %struct.tree_type*
  %binfo500 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type499, i32 0, i32 16
  %249 = load %union.tree_node*, %union.tree_node** %binfo500, align 8
  %common501 = bitcast %union.tree_node* %249 to %struct.tree_common*
  %code502 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common501, i32 0, i32 2
  %bf.load503 = load i32, i32* %code502, align 8
  %bf.clear504 = and i32 %bf.load503, 255
  %cmp505 = icmp eq i32 %bf.clear504, 3
  br i1 %cmp505, label %land.lhs.true.507, label %if.end.520

land.lhs.true.507:                                ; preds = %land.lhs.true.498
  %250 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type508 = bitcast %union.tree_node* %250 to %struct.tree_type*
  %binfo509 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type508, i32 0, i32 16
  %251 = load %union.tree_node*, %union.tree_node** %binfo509, align 8
  %vec = bitcast %union.tree_node* %251 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 2
  %arrayidx510 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 4
  %252 = load %union.tree_node*, %union.tree_node** %arrayidx510, align 8
  %cmp511 = icmp ne %union.tree_node* %252, null
  br i1 %cmp511, label %if.then.513, label %if.end.520

if.then.513:                                      ; preds = %land.lhs.true.507
  %253 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type514 = bitcast %union.tree_node* %253 to %struct.tree_type*
  %binfo515 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type514, i32 0, i32 16
  %254 = load %union.tree_node*, %union.tree_node** %binfo515, align 8
  %vec516 = bitcast %union.tree_node* %254 to %struct.tree_vec*
  %a517 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec516, i32 0, i32 2
  %arrayidx518 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a517, i32 0, i64 4
  %255 = load %union.tree_node*, %union.tree_node** %arrayidx518, align 8
  %vec519 = bitcast %union.tree_node* %255 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec519, i32 0, i32 1
  %256 = load i32, i32* %length, align 4
  store i32 %256, i32* %n_baseclasses, align 4
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.513, %land.lhs.true.507, %land.lhs.true.498, %sw.bb.494
  %257 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type521 = bitcast %union.tree_node* %257 to %struct.tree_type*
  %name522 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type521, i32 0, i32 11
  %258 = load %union.tree_node*, %union.tree_node** %name522, align 8
  %cmp523 = icmp ne %union.tree_node* %258, null
  br i1 %cmp523, label %land.lhs.true.525, label %lor.lhs.false.545

land.lhs.true.525:                                ; preds = %if.end.520
  %259 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type526 = bitcast %union.tree_node* %259 to %struct.tree_type*
  %name527 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type526, i32 0, i32 11
  %260 = load %union.tree_node*, %union.tree_node** %name527, align 8
  %common528 = bitcast %union.tree_node* %260 to %struct.tree_common*
  %code529 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common528, i32 0, i32 2
  %bf.load530 = load i32, i32* %code529, align 8
  %bf.clear531 = and i32 %bf.load530, 255
  %cmp532 = icmp eq i32 %bf.clear531, 33
  br i1 %cmp532, label %land.lhs.true.534, label %land.lhs.true.543

land.lhs.true.534:                                ; preds = %land.lhs.true.525
  %261 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type535 = bitcast %union.tree_node* %261 to %struct.tree_type*
  %name536 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type535, i32 0, i32 11
  %262 = load %union.tree_node*, %union.tree_node** %name536, align 8
  %decl537 = bitcast %union.tree_node* %262 to %struct.tree_decl*
  %ignored_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl537, i32 0, i32 5
  %263 = bitcast i48* %ignored_flag to i64*
  %bf.load538 = load i64, i64* %263, align 8
  %bf.lshr539 = lshr i64 %bf.load538, 14
  %bf.clear540 = and i64 %bf.lshr539, 1
  %bf.cast541 = trunc i64 %bf.clear540 to i32
  %tobool542 = icmp ne i32 %bf.cast541, 0
  br i1 %tobool542, label %lor.lhs.false.545, label %land.lhs.true.543

land.lhs.true.543:                                ; preds = %land.lhs.true.534, %land.lhs.true.525
  %264 = load i32, i32* %full.addr, align 4
  %tobool544 = icmp ne i32 %264, 0
  br i1 %tobool544, label %lor.lhs.false.545, label %if.then.555

lor.lhs.false.545:                                ; preds = %land.lhs.true.543, %land.lhs.true.534, %if.end.520
  %265 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type546 = bitcast %union.tree_node* %265 to %struct.tree_type*
  %size547 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type546, i32 0, i32 2
  %266 = load %union.tree_node*, %union.tree_node** %size547, align 8
  %cmp548 = icmp ne %union.tree_node* %266, null
  br i1 %cmp548, label %lor.lhs.false.550, label %if.then.555

lor.lhs.false.550:                                ; preds = %lor.lhs.false.545
  %267 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type551 = bitcast %union.tree_node* %267 to %struct.tree_type*
  %size552 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type551, i32 0, i32 2
  %268 = load %union.tree_node*, %union.tree_node** %size552, align 8
  %call553 = call i32 @host_integerp(%union.tree_node* %268, i32 1)
  %tobool554 = icmp ne i32 %call553, 0
  br i1 %tobool554, label %if.end.583, label %if.then.555

if.then.555:                                      ; preds = %lor.lhs.false.550, %lor.lhs.false.545, %land.lhs.true.543
  %269 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common556 = bitcast %union.tree_node* %269 to %struct.tree_common*
  %code557 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common556, i32 0, i32 2
  %bf.load558 = load i32, i32* %code557, align 8
  %bf.clear559 = and i32 %bf.load558, 255
  %cmp560 = icmp eq i32 %bf.clear559, 20
  %cond562 = select i1 %cmp560, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call563 = call i32 @fputs(i8* %cond562, %struct._IO_FILE* %270)
  %271 = load i32, i32* @current_sym_nchars, align 4
  %add564 = add nsw i32 %271, 2
  store i32 %add564, i32* @current_sym_nchars, align 4
  %272 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type565 = bitcast %union.tree_node* %272 to %struct.tree_type*
  %name566 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type565, i32 0, i32 11
  %273 = load %union.tree_node*, %union.tree_node** %name566, align 8
  %cmp567 = icmp ne %union.tree_node* %273, null
  br i1 %cmp567, label %if.then.569, label %if.else.570

if.then.569:                                      ; preds = %if.then.555
  %274 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_name(%union.tree_node* %274)
  br label %if.end.574

if.else.570:                                      ; preds = %if.then.555
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %276 = load i32, i32* @dbxout_type.anonymous_type_number, align 4
  %inc571 = add nsw i32 %276, 1
  store i32 %inc571, i32* @dbxout_type.anonymous_type_number, align 4
  %call572 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 %276)
  %277 = load i32, i32* @current_sym_nchars, align 4
  %add573 = add nsw i32 %277, 5
  store i32 %add573, i32* @current_sym_nchars, align 4
  br label %if.end.574

if.end.574:                                       ; preds = %if.else.570, %if.then.569
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call575 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0))
  %279 = load i32, i32* @current_sym_nchars, align 4
  %add576 = add nsw i32 %279, 1
  store i32 %add576, i32* @current_sym_nchars, align 4
  %280 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type577 = bitcast %union.tree_node* %280 to %struct.tree_type*
  %symtab578 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type577, i32 0, i32 10
  %address579 = bitcast %union.anon.2* %symtab578 to i32*
  %281 = load i32, i32* %address579, align 4
  %idxprom580 = sext i32 %281 to i64
  %282 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx581 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %282, i64 %idxprom580
  %status582 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %arrayidx581, i32 0, i32 0
  store i32 1, i32* %status582, align 4
  br label %sw.epilog.903

if.end.583:                                       ; preds = %lor.lhs.false.550
  %283 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common584 = bitcast %union.tree_node* %283 to %struct.tree_common*
  %code585 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common584, i32 0, i32 2
  %bf.load586 = load i32, i32* %code585, align 8
  %bf.clear587 = and i32 %bf.load586, 255
  %cmp588 = icmp eq i32 %bf.clear587, 20
  %cond590 = select i1 %cmp588, i32 115, i32 117
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call591 = call i32 @_IO_putc(i32 %cond590, %struct._IO_FILE* %284)
  %285 = load i32, i32* @current_sym_nchars, align 4
  %add592 = add nsw i32 %285, 1
  store i32 %add592, i32* @current_sym_nchars, align 4
  %286 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call593 = call i64 @int_size_in_bytes(%union.tree_node* %286)
  call void @print_wide_int(i64 %call593)
  %287 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool594 = icmp ne i32 %287, 0
  br i1 %tobool594, label %if.then.595, label %if.end.601

if.then.595:                                      ; preds = %if.end.583
  %288 = load i32, i32* %n_baseclasses, align 4
  %tobool596 = icmp ne i32 %288, 0
  br i1 %tobool596, label %if.then.597, label %if.end.600

if.then.597:                                      ; preds = %if.then.595
  store i32 1, i32* @have_used_extensions, align 4
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %290 = load i32, i32* %n_baseclasses, align 4
  %call598 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 %290)
  %291 = load i32, i32* @current_sym_nchars, align 4
  %add599 = add nsw i32 %291, 8
  store i32 %add599, i32* @current_sym_nchars, align 4
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.597, %if.then.595
  br label %if.end.601

if.end.601:                                       ; preds = %if.end.600, %if.end.583
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.601
  %292 = load i32, i32* %i, align 4
  %293 = load i32, i32* %n_baseclasses, align 4
  %cmp602 = icmp slt i32 %292, %293
  br i1 %cmp602, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %294 = load i32, i32* %i, align 4
  %idxprom604 = sext i32 %294 to i64
  %295 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type605 = bitcast %union.tree_node* %295 to %struct.tree_type*
  %binfo606 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type605, i32 0, i32 16
  %296 = load %union.tree_node*, %union.tree_node** %binfo606, align 8
  %vec607 = bitcast %union.tree_node* %296 to %struct.tree_vec*
  %a608 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec607, i32 0, i32 2
  %arrayidx609 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a608, i32 0, i64 4
  %297 = load %union.tree_node*, %union.tree_node** %arrayidx609, align 8
  %vec610 = bitcast %union.tree_node* %297 to %struct.tree_vec*
  %a611 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec610, i32 0, i32 2
  %arrayidx612 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a611, i32 0, i64 %idxprom604
  %298 = load %union.tree_node*, %union.tree_node** %arrayidx612, align 8
  store %union.tree_node* %298, %union.tree_node** %child, align 8
  %299 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool613 = icmp ne i32 %299, 0
  br i1 %tobool613, label %if.then.614, label %if.else.659

if.then.614:                                      ; preds = %for.body
  store i32 1, i32* @have_used_extensions, align 4
  %300 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common615 = bitcast %union.tree_node* %300 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common615, i32 0, i32 2
  %bf.load616 = load i32, i32* %static_flag, align 8
  %bf.lshr617 = lshr i32 %bf.load616, 18
  %bf.clear618 = and i32 %bf.lshr617, 1
  %tobool619 = icmp ne i32 %bf.clear618, 0
  %cond620 = select i1 %tobool619, i32 49, i32 48
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call621 = call i32 @_IO_putc(i32 %cond620, %struct._IO_FILE* %301)
  %302 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common622 = bitcast %union.tree_node* %302 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common622, i32 0, i32 2
  %bf.load623 = load i32, i32* %public_flag, align 8
  %bf.lshr624 = lshr i32 %bf.load623, 19
  %bf.clear625 = and i32 %bf.lshr624, 1
  %tobool626 = icmp ne i32 %bf.clear625, 0
  %cond627 = select i1 %tobool626, i32 50, i32 48
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call628 = call i32 @_IO_putc(i32 %cond627, %struct._IO_FILE* %303)
  %304 = load i32, i32* @current_sym_nchars, align 4
  %add629 = add nsw i32 %304, 2
  store i32 %add629, i32* @current_sym_nchars, align 4
  %305 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common630 = bitcast %union.tree_node* %305 to %struct.tree_common*
  %static_flag631 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common630, i32 0, i32 2
  %bf.load632 = load i32, i32* %static_flag631, align 8
  %bf.lshr633 = lshr i32 %bf.load632, 18
  %bf.clear634 = and i32 %bf.lshr633, 1
  %tobool635 = icmp ne i32 %bf.clear634, 0
  br i1 %tobool635, label %land.lhs.true.636, label %if.else.646

land.lhs.true.636:                                ; preds = %if.then.614
  %306 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 0), align 8
  %call637 = call i32 @strcmp(i8* %306, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #6
  %cmp638 = icmp eq i32 %call637, 0
  br i1 %cmp638, label %if.then.640, label %if.else.646

if.then.640:                                      ; preds = %land.lhs.true.636
  %307 = load %union.tree_node*, %union.tree_node** %child, align 8
  %vec641 = bitcast %union.tree_node* %307 to %struct.tree_vec*
  %a642 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec641, i32 0, i32 2
  %arrayidx643 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a642, i32 0, i64 5
  %308 = load %union.tree_node*, %union.tree_node** %arrayidx643, align 8
  %call644 = call i64 @tree_low_cst(%union.tree_node* %308, i32 0)
  %mul645 = mul nsw i64 %call644, 8
  call void @print_wide_int(i64 %mul645)
  br label %if.end.652

if.else.646:                                      ; preds = %land.lhs.true.636, %if.then.614
  %309 = load %union.tree_node*, %union.tree_node** %child, align 8
  %vec647 = bitcast %union.tree_node* %309 to %struct.tree_vec*
  %a648 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec647, i32 0, i32 2
  %arrayidx649 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a648, i32 0, i64 1
  %310 = load %union.tree_node*, %union.tree_node** %arrayidx649, align 8
  %call650 = call i64 @tree_low_cst(%union.tree_node* %310, i32 0)
  %mul651 = mul nsw i64 %call650, 8
  call void @print_wide_int(i64 %mul651)
  br label %if.end.652

if.end.652:                                       ; preds = %if.else.646, %if.then.640
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call653 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %311)
  %312 = load i32, i32* @current_sym_nchars, align 4
  %add654 = add nsw i32 %312, 1
  store i32 %add654, i32* @current_sym_nchars, align 4
  %313 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common655 = bitcast %union.tree_node* %313 to %struct.tree_common*
  %type656 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common655, i32 0, i32 1
  %314 = load %union.tree_node*, %union.tree_node** %type656, align 8
  call void @dbxout_type(%union.tree_node* %314, i32 0)
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call657 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %315)
  %316 = load i32, i32* @current_sym_nchars, align 4
  %add658 = add nsw i32 %316, 1
  store i32 %add658, i32* @current_sym_nchars, align 4
  br label %if.end.685

if.else.659:                                      ; preds = %for.body
  %317 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common660 = bitcast %union.tree_node* %317 to %struct.tree_common*
  %type661 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common660, i32 0, i32 1
  %318 = load %union.tree_node*, %union.tree_node** %type661, align 8
  call void @dbxout_type_name(%union.tree_node* %318)
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call662 = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %319)
  %320 = load i32, i32* @current_sym_nchars, align 4
  %add663 = add nsw i32 %320, 1
  store i32 %add663, i32* @current_sym_nchars, align 4
  %321 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common664 = bitcast %union.tree_node* %321 to %struct.tree_common*
  %type665 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common664, i32 0, i32 1
  %322 = load %union.tree_node*, %union.tree_node** %type665, align 8
  %323 = load i32, i32* %full.addr, align 4
  call void @dbxout_type(%union.tree_node* %322, i32 %323)
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call666 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %324)
  %325 = load i32, i32* @current_sym_nchars, align 4
  %add667 = add nsw i32 %325, 1
  store i32 %add667, i32* @current_sym_nchars, align 4
  %326 = load %union.tree_node*, %union.tree_node** %child, align 8
  %vec668 = bitcast %union.tree_node* %326 to %struct.tree_vec*
  %a669 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec668, i32 0, i32 2
  %arrayidx670 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a669, i32 0, i64 1
  %327 = load %union.tree_node*, %union.tree_node** %arrayidx670, align 8
  %call671 = call i64 @tree_low_cst(%union.tree_node* %327, i32 0)
  %mul672 = mul nsw i64 %call671, 8
  call void @print_wide_int(i64 %mul672)
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call673 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %328)
  %329 = load i32, i32* @current_sym_nchars, align 4
  %add674 = add nsw i32 %329, 1
  store i32 %add674, i32* @current_sym_nchars, align 4
  %330 = load %union.tree_node*, %union.tree_node** %child, align 8
  %common675 = bitcast %union.tree_node* %330 to %struct.tree_common*
  %type676 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common675, i32 0, i32 1
  %331 = load %union.tree_node*, %union.tree_node** %type676, align 8
  %type677 = bitcast %union.tree_node* %331 to %struct.tree_type*
  %name678 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type677, i32 0, i32 11
  %332 = load %union.tree_node*, %union.tree_node** %name678, align 8
  %decl679 = bitcast %union.tree_node* %332 to %struct.tree_decl*
  %size680 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl679, i32 0, i32 4
  %333 = load %union.tree_node*, %union.tree_node** %size680, align 8
  %call681 = call i64 @tree_low_cst(%union.tree_node* %333, i32 0)
  %mul682 = mul nsw i64 %call681, 8
  call void @print_wide_int(i64 %mul682)
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call683 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %334)
  %335 = load i32, i32* @current_sym_nchars, align 4
  %add684 = add nsw i32 %335, 1
  store i32 %add684, i32* @current_sym_nchars, align 4
  br label %if.end.685

if.end.685:                                       ; preds = %if.else.659, %if.end.652
  br label %for.inc

for.inc:                                          ; preds = %if.end.685
  %336 = load i32, i32* %i, align 4
  %inc686 = add nsw i32 %336, 1
  store i32 %inc686, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %337 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_fields(%union.tree_node* %337)
  %338 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool687 = icmp ne i32 %338, 0
  br i1 %tobool687, label %land.lhs.true.688, label %if.end.694

land.lhs.true.688:                                ; preds = %for.end
  %339 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type689 = bitcast %union.tree_node* %339 to %struct.tree_type*
  %maxval690 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type689, i32 0, i32 13
  %340 = load %union.tree_node*, %union.tree_node** %maxval690, align 8
  %cmp691 = icmp ne %union.tree_node* %340, null
  br i1 %cmp691, label %if.then.693, label %if.end.694

if.then.693:                                      ; preds = %land.lhs.true.688
  store i32 1, i32* @have_used_extensions, align 4
  %341 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_methods(%union.tree_node* %341)
  br label %if.end.694

if.end.694:                                       ; preds = %if.then.693, %land.lhs.true.688, %for.end
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call695 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %342)
  %343 = load i32, i32* @current_sym_nchars, align 4
  %add696 = add nsw i32 %343, 1
  store i32 %add696, i32* @current_sym_nchars, align 4
  %344 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool697 = icmp ne i32 %344, 0
  br i1 %tobool697, label %land.lhs.true.698, label %if.end.724

land.lhs.true.698:                                ; preds = %if.end.694
  %345 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common699 = bitcast %union.tree_node* %345 to %struct.tree_common*
  %code700 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common699, i32 0, i32 2
  %bf.load701 = load i32, i32* %code700, align 8
  %bf.clear702 = and i32 %bf.load701, 255
  %cmp703 = icmp eq i32 %bf.clear702, 20
  br i1 %cmp703, label %land.lhs.true.705, label %if.end.724

land.lhs.true.705:                                ; preds = %land.lhs.true.698
  %346 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type706 = bitcast %union.tree_node* %346 to %struct.tree_type*
  %minval707 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type706, i32 0, i32 12
  %347 = load %union.tree_node*, %union.tree_node** %minval707, align 8
  %tobool708 = icmp ne %union.tree_node* %347, null
  br i1 %tobool708, label %if.then.709, label %if.end.724

if.then.709:                                      ; preds = %land.lhs.true.705
  store i32 1, i32* @have_used_extensions, align 4
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call710 = call i32 @_IO_putc(i32 126, %struct._IO_FILE* %348)
  %349 = load i32, i32* @current_sym_nchars, align 4
  %add711 = add nsw i32 %349, 1
  store i32 %add711, i32* @current_sym_nchars, align 4
  %350 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type712 = bitcast %union.tree_node* %350 to %struct.tree_type*
  %minval713 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type712, i32 0, i32 12
  %351 = load %union.tree_node*, %union.tree_node** %minval713, align 8
  %tobool714 = icmp ne %union.tree_node* %351, null
  br i1 %tobool714, label %if.then.715, label %if.end.721

if.then.715:                                      ; preds = %if.then.709
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call716 = call i32 @_IO_putc(i32 37, %struct._IO_FILE* %352)
  %353 = load i32, i32* @current_sym_nchars, align 4
  %add717 = add nsw i32 %353, 1
  store i32 %add717, i32* @current_sym_nchars, align 4
  %354 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type718 = bitcast %union.tree_node* %354 to %struct.tree_type*
  %minval719 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type718, i32 0, i32 12
  %355 = load %union.tree_node*, %union.tree_node** %minval719, align 8
  %decl720 = bitcast %union.tree_node* %355 to %struct.tree_decl*
  %vindex = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl720, i32 0, i32 22
  %356 = load %union.tree_node*, %union.tree_node** %vindex, align 8
  call void @dbxout_type(%union.tree_node* %356, i32 0)
  br label %if.end.721

if.end.721:                                       ; preds = %if.then.715, %if.then.709
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call722 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %357)
  %358 = load i32, i32* @current_sym_nchars, align 4
  %add723 = add nsw i32 %358, 1
  store i32 %add723, i32* @current_sym_nchars, align 4
  br label %if.end.724

if.end.724:                                       ; preds = %if.end.721, %land.lhs.true.705, %land.lhs.true.698, %if.end.694
  br label %sw.epilog.903

sw.bb.725:                                        ; preds = %if.end.154
  %359 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type726 = bitcast %union.tree_node* %359 to %struct.tree_type*
  %name727 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type726, i32 0, i32 11
  %360 = load %union.tree_node*, %union.tree_node** %name727, align 8
  %cmp728 = icmp ne %union.tree_node* %360, null
  br i1 %cmp728, label %land.lhs.true.730, label %lor.lhs.false.751

land.lhs.true.730:                                ; preds = %sw.bb.725
  %361 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type731 = bitcast %union.tree_node* %361 to %struct.tree_type*
  %name732 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type731, i32 0, i32 11
  %362 = load %union.tree_node*, %union.tree_node** %name732, align 8
  %common733 = bitcast %union.tree_node* %362 to %struct.tree_common*
  %code734 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common733, i32 0, i32 2
  %bf.load735 = load i32, i32* %code734, align 8
  %bf.clear736 = and i32 %bf.load735, 255
  %cmp737 = icmp eq i32 %bf.clear736, 33
  br i1 %cmp737, label %land.lhs.true.739, label %land.lhs.true.749

land.lhs.true.739:                                ; preds = %land.lhs.true.730
  %363 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type740 = bitcast %union.tree_node* %363 to %struct.tree_type*
  %name741 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type740, i32 0, i32 11
  %364 = load %union.tree_node*, %union.tree_node** %name741, align 8
  %decl742 = bitcast %union.tree_node* %364 to %struct.tree_decl*
  %ignored_flag743 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl742, i32 0, i32 5
  %365 = bitcast i48* %ignored_flag743 to i64*
  %bf.load744 = load i64, i64* %365, align 8
  %bf.lshr745 = lshr i64 %bf.load744, 14
  %bf.clear746 = and i64 %bf.lshr745, 1
  %bf.cast747 = trunc i64 %bf.clear746 to i32
  %tobool748 = icmp ne i32 %bf.cast747, 0
  br i1 %tobool748, label %lor.lhs.false.751, label %land.lhs.true.749

land.lhs.true.749:                                ; preds = %land.lhs.true.739, %land.lhs.true.730
  %366 = load i32, i32* %full.addr, align 4
  %tobool750 = icmp ne i32 %366, 0
  br i1 %tobool750, label %lor.lhs.false.751, label %if.then.756

lor.lhs.false.751:                                ; preds = %land.lhs.true.749, %land.lhs.true.739, %sw.bb.725
  %367 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type752 = bitcast %union.tree_node* %367 to %struct.tree_type*
  %size753 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type752, i32 0, i32 2
  %368 = load %union.tree_node*, %union.tree_node** %size753, align 8
  %cmp754 = icmp ne %union.tree_node* %368, null
  br i1 %cmp754, label %if.end.767, label %if.then.756

if.then.756:                                      ; preds = %lor.lhs.false.751, %land.lhs.true.749
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call757 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %369, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0))
  %370 = load i32, i32* @current_sym_nchars, align 4
  %add758 = add nsw i32 %370, 2
  store i32 %add758, i32* @current_sym_nchars, align 4
  %371 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_name(%union.tree_node* %371)
  %372 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type759 = bitcast %union.tree_node* %372 to %struct.tree_type*
  %symtab760 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type759, i32 0, i32 10
  %address761 = bitcast %union.anon.2* %symtab760 to i32*
  %373 = load i32, i32* %address761, align 4
  %idxprom762 = sext i32 %373 to i64
  %374 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx763 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %374, i64 %idxprom762
  %status764 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %arrayidx763, i32 0, i32 0
  store i32 1, i32* %status764, align 4
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call765 = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %375)
  %376 = load i32, i32* @current_sym_nchars, align 4
  %add766 = add nsw i32 %376, 1
  store i32 %add766, i32* @current_sym_nchars, align 4
  br label %sw.epilog.903

if.end.767:                                       ; preds = %lor.lhs.false.751
  %377 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool768 = icmp ne i32 %377, 0
  br i1 %tobool768, label %land.lhs.true.769, label %if.end.787

land.lhs.true.769:                                ; preds = %if.end.767
  %378 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type770 = bitcast %union.tree_node* %378 to %struct.tree_type*
  %precision771 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type770, i32 0, i32 6
  %bf.load772 = load i32, i32* %precision771, align 4
  %bf.clear773 = and i32 %bf.load772, 511
  %379 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %type774 = bitcast %union.tree_node* %379 to %struct.tree_type*
  %precision775 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type774, i32 0, i32 6
  %bf.load776 = load i32, i32* %precision775, align 4
  %bf.clear777 = and i32 %bf.load776, 511
  %cmp778 = icmp ne i32 %bf.clear773, %bf.clear777
  br i1 %cmp778, label %if.then.780, label %if.end.787

if.then.780:                                      ; preds = %land.lhs.true.769
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %381 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type781 = bitcast %union.tree_node* %381 to %struct.tree_type*
  %precision782 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type781, i32 0, i32 6
  %bf.load783 = load i32, i32* %precision782, align 4
  %bf.clear784 = and i32 %bf.load783, 511
  %call785 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %bf.clear784)
  %382 = load i32, i32* @current_sym_nchars, align 4
  %add786 = add nsw i32 %382, 5
  store i32 %add786, i32* @current_sym_nchars, align 4
  br label %if.end.787

if.end.787:                                       ; preds = %if.then.780, %land.lhs.true.769, %if.end.767
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call788 = call i32 @_IO_putc(i32 101, %struct._IO_FILE* %383)
  %384 = load i32, i32* @current_sym_nchars, align 4
  %add789 = add nsw i32 %384, 1
  store i32 %add789, i32* @current_sym_nchars, align 4
  %385 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type790 = bitcast %union.tree_node* %385 to %struct.tree_type*
  %values791 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type790, i32 0, i32 1
  %386 = load %union.tree_node*, %union.tree_node** %values791, align 8
  store %union.tree_node* %386, %union.tree_node** %tem, align 8
  br label %for.cond.792

for.cond.792:                                     ; preds = %for.inc.845, %if.end.787
  %387 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %tobool793 = icmp ne %union.tree_node* %387, null
  br i1 %tobool793, label %for.body.794, label %for.end.848

for.body.794:                                     ; preds = %for.cond.792
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %389 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list = bitcast %union.tree_node* %389 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %390 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %identifier = bitcast %union.tree_node* %390 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %391 = load i8*, i8** %str, align 8
  %call795 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %388, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %391)
  %392 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list796 = bitcast %union.tree_node* %392 to %struct.tree_list*
  %purpose797 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list796, i32 0, i32 1
  %393 = load %union.tree_node*, %union.tree_node** %purpose797, align 8
  %identifier798 = bitcast %union.tree_node* %393 to %struct.tree_identifier*
  %id799 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier798, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id799, i32 0, i32 0
  %394 = load i32, i32* %len, align 4
  %add800 = add i32 %394, 1
  %395 = load i32, i32* @current_sym_nchars, align 4
  %add801 = add i32 %395, %add800
  store i32 %add801, i32* @current_sym_nchars, align 4
  %396 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list802 = bitcast %union.tree_node* %396 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list802, i32 0, i32 2
  %397 = load %union.tree_node*, %union.tree_node** %value, align 8
  %int_cst = bitcast %union.tree_node* %397 to %struct.tree_int_cst*
  %int_cst803 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst803, i32 0, i32 1
  %398 = load i64, i64* %high, align 8
  %cmp804 = icmp eq i64 %398, 0
  br i1 %cmp804, label %if.then.806, label %if.else.811

if.then.806:                                      ; preds = %for.body.794
  %399 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list807 = bitcast %union.tree_node* %399 to %struct.tree_list*
  %value808 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list807, i32 0, i32 2
  %400 = load %union.tree_node*, %union.tree_node** %value808, align 8
  %int_cst809 = bitcast %union.tree_node* %400 to %struct.tree_int_cst*
  %int_cst810 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst809, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst810, i32 0, i32 0
  %401 = load i64, i64* %low, align 8
  call void @print_wide_int(i64 %401)
  br label %if.end.837

if.else.811:                                      ; preds = %for.body.794
  %402 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list812 = bitcast %union.tree_node* %402 to %struct.tree_list*
  %value813 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list812, i32 0, i32 2
  %403 = load %union.tree_node*, %union.tree_node** %value813, align 8
  %int_cst814 = bitcast %union.tree_node* %403 to %struct.tree_int_cst*
  %int_cst815 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst814, i32 0, i32 2
  %high816 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst815, i32 0, i32 1
  %404 = load i64, i64* %high816, align 8
  %cmp817 = icmp eq i64 %404, -1
  br i1 %cmp817, label %land.lhs.true.819, label %if.else.833

land.lhs.true.819:                                ; preds = %if.else.811
  %405 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list820 = bitcast %union.tree_node* %405 to %struct.tree_list*
  %value821 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list820, i32 0, i32 2
  %406 = load %union.tree_node*, %union.tree_node** %value821, align 8
  %int_cst822 = bitcast %union.tree_node* %406 to %struct.tree_int_cst*
  %int_cst823 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst822, i32 0, i32 2
  %low824 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst823, i32 0, i32 0
  %407 = load i64, i64* %low824, align 8
  %cmp825 = icmp slt i64 %407, 0
  br i1 %cmp825, label %if.then.827, label %if.else.833

if.then.827:                                      ; preds = %land.lhs.true.819
  %408 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list828 = bitcast %union.tree_node* %408 to %struct.tree_list*
  %value829 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list828, i32 0, i32 2
  %409 = load %union.tree_node*, %union.tree_node** %value829, align 8
  %int_cst830 = bitcast %union.tree_node* %409 to %struct.tree_int_cst*
  %int_cst831 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst830, i32 0, i32 2
  %low832 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst831, i32 0, i32 0
  %410 = load i64, i64* %low832, align 8
  call void @print_wide_int(i64 %410)
  br label %if.end.836

if.else.833:                                      ; preds = %land.lhs.true.819, %if.else.811
  %411 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list834 = bitcast %union.tree_node* %411 to %struct.tree_list*
  %value835 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list834, i32 0, i32 2
  %412 = load %union.tree_node*, %union.tree_node** %value835, align 8
  call void @print_int_cst_octal(%union.tree_node* %412)
  br label %if.end.836

if.end.836:                                       ; preds = %if.else.833, %if.then.827
  br label %if.end.837

if.end.837:                                       ; preds = %if.end.836, %if.then.806
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call838 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %413)
  %414 = load i32, i32* @current_sym_nchars, align 4
  %add839 = add nsw i32 %414, 1
  store i32 %add839, i32* @current_sym_nchars, align 4
  %415 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common840 = bitcast %union.tree_node* %415 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common840, i32 0, i32 0
  %416 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %cmp841 = icmp ne %union.tree_node* %416, null
  br i1 %cmp841, label %if.then.843, label %if.end.844

if.then.843:                                      ; preds = %if.end.837
  br label %do.body

do.body:                                          ; preds = %if.then.843
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.844

if.end.844:                                       ; preds = %do.end, %if.end.837
  br label %for.inc.845

for.inc.845:                                      ; preds = %if.end.844
  %417 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common846 = bitcast %union.tree_node* %417 to %struct.tree_common*
  %chain847 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common846, i32 0, i32 0
  %418 = load %union.tree_node*, %union.tree_node** %chain847, align 8
  store %union.tree_node* %418, %union.tree_node** %tem, align 8
  br label %for.cond.792

for.end.848:                                      ; preds = %for.cond.792
  %419 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call849 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %419)
  %420 = load i32, i32* @current_sym_nchars, align 4
  %add850 = add nsw i32 %420, 1
  store i32 %add850, i32* @current_sym_nchars, align 4
  br label %sw.epilog.903

sw.bb.851:                                        ; preds = %if.end.154
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call852 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %421)
  %422 = load i32, i32* @current_sym_nchars, align 4
  %add853 = add nsw i32 %422, 1
  store i32 %add853, i32* @current_sym_nchars, align 4
  %423 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common854 = bitcast %union.tree_node* %423 to %struct.tree_common*
  %type855 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common854, i32 0, i32 1
  %424 = load %union.tree_node*, %union.tree_node** %type855, align 8
  call void @dbxout_type(%union.tree_node* %424, i32 0)
  br label %sw.epilog.903

sw.bb.856:                                        ; preds = %if.end.154
  %425 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool857 = icmp ne i32 %425, 0
  br i1 %tobool857, label %if.then.858, label %if.else.871

if.then.858:                                      ; preds = %sw.bb.856
  store i32 1, i32* @have_used_extensions, align 4
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call859 = call i32 @_IO_putc(i32 35, %struct._IO_FILE* %426)
  %427 = load i32, i32* @current_sym_nchars, align 4
  %add860 = add nsw i32 %427, 1
  store i32 %add860, i32* @current_sym_nchars, align 4
  %428 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type861 = bitcast %union.tree_node* %428 to %struct.tree_type*
  %maxval862 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type861, i32 0, i32 13
  %429 = load %union.tree_node*, %union.tree_node** %maxval862, align 8
  call void @dbxout_type(%union.tree_node* %429, i32 0)
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call863 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %430)
  %431 = load i32, i32* @current_sym_nchars, align 4
  %add864 = add nsw i32 %431, 1
  store i32 %add864, i32* @current_sym_nchars, align 4
  %432 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common865 = bitcast %union.tree_node* %432 to %struct.tree_common*
  %type866 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common865, i32 0, i32 1
  %433 = load %union.tree_node*, %union.tree_node** %type866, align 8
  call void @dbxout_type(%union.tree_node* %433, i32 0)
  %434 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type867 = bitcast %union.tree_node* %434 to %struct.tree_type*
  %values868 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type867, i32 0, i32 1
  %435 = load %union.tree_node*, %union.tree_node** %values868, align 8
  call void @dbxout_args(%union.tree_node* %435)
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call869 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %436)
  %437 = load i32, i32* @current_sym_nchars, align 4
  %add870 = add nsw i32 %437, 1
  store i32 %add870, i32* @current_sym_nchars, align 4
  br label %if.end.874

if.else.871:                                      ; preds = %sw.bb.856
  %438 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common872 = bitcast %union.tree_node* %438 to %struct.tree_common*
  %type873 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common872, i32 0, i32 1
  %439 = load %union.tree_node*, %union.tree_node** %type873, align 8
  call void @dbxout_type(%union.tree_node* %439, i32 0)
  br label %if.end.874

if.end.874:                                       ; preds = %if.else.871, %if.then.858
  br label %sw.epilog.903

sw.bb.875:                                        ; preds = %if.end.154
  %440 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool876 = icmp ne i32 %440, 0
  br i1 %tobool876, label %if.then.877, label %if.else.886

if.then.877:                                      ; preds = %sw.bb.875
  store i32 1, i32* @have_used_extensions, align 4
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call878 = call i32 @_IO_putc(i32 64, %struct._IO_FILE* %441)
  %442 = load i32, i32* @current_sym_nchars, align 4
  %add879 = add nsw i32 %442, 1
  store i32 %add879, i32* @current_sym_nchars, align 4
  %443 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type880 = bitcast %union.tree_node* %443 to %struct.tree_type*
  %maxval881 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type880, i32 0, i32 13
  %444 = load %union.tree_node*, %union.tree_node** %maxval881, align 8
  call void @dbxout_type(%union.tree_node* %444, i32 0)
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call882 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %445)
  %446 = load i32, i32* @current_sym_nchars, align 4
  %add883 = add nsw i32 %446, 1
  store i32 %add883, i32* @current_sym_nchars, align 4
  %447 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common884 = bitcast %union.tree_node* %447 to %struct.tree_common*
  %type885 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common884, i32 0, i32 1
  %448 = load %union.tree_node*, %union.tree_node** %type885, align 8
  call void @dbxout_type(%union.tree_node* %448, i32 0)
  br label %if.end.887

if.else.886:                                      ; preds = %sw.bb.875
  %449 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  call void @dbxout_type(%union.tree_node* %449, i32 0)
  br label %if.end.887

if.end.887:                                       ; preds = %if.else.886, %if.then.877
  br label %sw.epilog.903

sw.bb.888:                                        ; preds = %if.end.154
  %450 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool889 = icmp ne i32 %450, 0
  br i1 %tobool889, label %if.then.890, label %if.end.891

if.then.890:                                      ; preds = %sw.bb.888
  store i32 1, i32* @have_used_extensions, align 4
  br label %if.end.891

if.end.891:                                       ; preds = %if.then.890, %sw.bb.888
  %451 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool892 = icmp ne i32 %451, 0
  %cond893 = select i1 %tobool892, i32 38, i32 42
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call894 = call i32 @_IO_putc(i32 %cond893, %struct._IO_FILE* %452)
  %453 = load i32, i32* @current_sym_nchars, align 4
  %add895 = add nsw i32 %453, 1
  store i32 %add895, i32* @current_sym_nchars, align 4
  %454 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common896 = bitcast %union.tree_node* %454 to %struct.tree_common*
  %type897 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common896, i32 0, i32 1
  %455 = load %union.tree_node*, %union.tree_node** %type897, align 8
  call void @dbxout_type(%union.tree_node* %455, i32 0)
  br label %sw.epilog.903

sw.bb.898:                                        ; preds = %if.end.154
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call899 = call i32 @_IO_putc(i32 102, %struct._IO_FILE* %456)
  %457 = load i32, i32* @current_sym_nchars, align 4
  %add900 = add nsw i32 %457, 1
  store i32 %add900, i32* @current_sym_nchars, align 4
  %458 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common901 = bitcast %union.tree_node* %458 to %struct.tree_common*
  %type902 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common901, i32 0, i32 1
  %459 = load %union.tree_node*, %union.tree_node** %type902, align 8
  call void @dbxout_type(%union.tree_node* %459, i32 0)
  br label %sw.epilog.903

sw.default:                                       ; preds = %if.end.154
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.dbxout_type, i32 0, i32 0)) #7
  unreachable

sw.epilog.903:                                    ; preds = %if.then.88, %sw.bb.90, %if.then.109, %if.then.131, %if.then.147, %if.then.756, %sw.bb.898, %if.end.891, %if.end.887, %if.end.874, %sw.bb.851, %for.end.848, %if.end.724, %if.end.574, %if.end.491, %if.then.457, %if.end.444, %if.end.425, %sw.bb.366, %if.end.365, %if.end.352, %sw.bb.323, %if.end.322, %sw.bb.159
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_finish_symbol(%union.tree_node* %sym) #0 {
entry:
  %sym.addr = alloca %union.tree_node*, align 8
  %line = alloca i32, align 4
  store %union.tree_node* %sym, %union.tree_node** %sym.addr, align 8
  store i32 0, i32* %line, align 4
  %0 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %sym.addr, align 8
  %cmp = icmp ne %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %sym.addr, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 2
  %3 = load i32, i32* %linenum, align 4
  store i32 %3, i32* %line, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %5 = load i32, i32* @current_sym_code, align 4
  %6 = load i32, i32* %line, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i32 %5, i32 %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %8, %struct.rtx_def* %9)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %11 = load i32, i32* @current_sym_value, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  ret void
}

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare %struct.rtx_def* @eliminate_regs(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dbxout_symbol_location(%union.tree_node* %decl, %union.tree_node* %type, i8* %suffix, %struct.rtx_def* %home) #0 {
entry:
  %retval = alloca i32, align 4
  %decl.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %suffix.addr = alloca i8*, align 8
  %home.addr = alloca %struct.rtx_def*, align 8
  %letter = alloca i32, align 4
  %regno = alloca i32, align 4
  %value = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %subtype = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store %struct.rtx_def* %home, %struct.rtx_def** %home.addr, align 8
  store i32 0, i32* %letter, align 4
  store i32 -1, i32* %regno, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %value, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 63
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %value, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %while.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %10 = load i32, i32* %rtuint, align 4
  %cmp10 = icmp uge i32 %10, 53
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %while.end
  %call = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %home.addr)
  store %struct.rtx_def* %call, %struct.rtx_def** %home.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load14 = load i32, i32* %12, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 61
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %14 = load i32, i32* %rtuint20, align 4
  store i32 %14, i32* %regno, align 4
  %15 = load i32, i32* %regno, align 4
  %cmp21 = icmp sge i32 %15, 53
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.17
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load25 = load i32, i32* %17, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 66
  br i1 %cmp27, label %land.lhs.true, label %if.else.83

land.lhs.true:                                    ; preds = %if.end.24
  %18 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load31 = load i32, i32* %20, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 68
  br i1 %cmp33, label %if.then.34, label %if.else.83

if.then.34:                                       ; preds = %land.lhs.true
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %21 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load35 = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load35, 19
  %bf.clear36 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear36, 0
  br i1 %tobool, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.34
  store i32 71, i32* %letter, align 4
  store i32 32, i32* @current_sym_code, align 4
  br label %if.end.82

if.else:                                          ; preds = %if.then.34
  %22 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** @current_sym_addr, align 8
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call41 = call %union.tree_node* @decl_function_context(%union.tree_node* %24)
  %tobool42 = icmp ne %union.tree_node* %call41, null
  %cond = select i1 %tobool42, i32 86, i32 83
  store i32 %cond, i32* %letter, align 4
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl43 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl43, i32 0, i32 12
  %26 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp44 = icmp eq %union.tree_node* %26, null
  br i1 %cmp44, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %27 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 0), align 8
  %call45 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #6
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else.52, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %lor.lhs.false
  %28 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl48 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %initial49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl48, i32 0, i32 12
  %29 = load %union.tree_node*, %union.tree_node** %initial49, align 8
  %30 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp50 = icmp eq %union.tree_node* %29, %30
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.47, %if.else
  store i32 40, i32* @current_sym_code, align 4
  br label %if.end.81

if.else.52:                                       ; preds = %land.lhs.true.47, %lor.lhs.false
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl53 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl53, i32 0, i32 5
  %32 = bitcast i48* %bit_field_flag to i64*
  %bf.load54 = load i64, i64* %32, align 8
  %bf.lshr55 = lshr i64 %bf.load54, 12
  %bf.clear56 = and i64 %bf.lshr55, 1
  %bf.cast = trunc i64 %bf.clear56 to i32
  %tobool57 = icmp ne i32 %bf.cast, 0
  br i1 %tobool57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.52
  store i32 36, i32* @current_sym_code, align 4
  br label %if.end.80

if.else.59:                                       ; preds = %if.else.52
  %33 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load60 = load i32, i32* %34, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 68
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.79

land.lhs.true.63:                                 ; preds = %if.else.59
  %35 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load64 = load i32, i32* %36, align 8
  %bf.lshr65 = lshr i32 %bf.load64, 26
  %bf.clear66 = and i32 %bf.lshr65, 1
  %tobool67 = icmp ne i32 %bf.clear66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.79

if.then.68:                                       ; preds = %land.lhs.true.63
  %37 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %call69 = call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %37)
  store %struct.rtx_def* %call69, %struct.rtx_def** %tmp, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load70 = load i32, i32* %39, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 68
  br i1 %cmp72, label %if.then.77, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.then.68
  %40 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load74 = load i32, i32* %41, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 67
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %lor.lhs.false.73, %if.then.68
  %42 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** @current_sym_addr, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %lor.lhs.false.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true.63, %if.else.59
  store i32 38, i32* @current_sym_code, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.58
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.51
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.37
  br label %if.end.334

if.else.83:                                       ; preds = %land.lhs.true, %if.end.24
  %43 = load i32, i32* %regno, align 4
  %cmp84 = icmp sge i32 %43, 0
  br i1 %cmp84, label %if.then.85, label %if.else.91

if.then.85:                                       ; preds = %if.else.83
  store i32 114, i32* %letter, align 4
  store i32 64, i32* @current_sym_code, align 4
  %44 = load i32, i32* @target_flags, align 4
  %and = and i32 %44, 33554432
  %tobool86 = icmp ne i32 %and, 0
  br i1 %tobool86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.85
  %45 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %45 to i64
  %arrayidx87 = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i32 0, i64 %idxprom
  %46 = load i32, i32* %arrayidx87, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.85
  %47 = load i32, i32* %regno, align 4
  %idxprom88 = sext i32 %47 to i64
  %arrayidx89 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i32 0, i64 %idxprom88
  %48 = load i32, i32* %arrayidx89, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond90 = phi i32 [ %46, %cond.true ], [ %48, %cond.false ]
  store i32 %cond90, i32* @current_sym_value, align 4
  br label %if.end.333

if.else.91:                                       ; preds = %if.else.83
  %49 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load92 = load i32, i32* %50, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 66
  br i1 %cmp94, label %land.lhs.true.95, label %if.else.203

land.lhs.true.95:                                 ; preds = %if.else.91
  %51 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load99 = load i32, i32* %53, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 66
  br i1 %cmp101, label %if.then.133, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.95
  %54 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load106 = load i32, i32* %56, align 8
  %bf.clear107 = and i32 %bf.load106, 65535
  %cmp108 = icmp eq i32 %bf.clear107, 61
  br i1 %cmp108, label %land.lhs.true.109, label %if.else.203

land.lhs.true.109:                                ; preds = %lor.lhs.false.102
  %57 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtuint115 = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %59 = load i32, i32* %rtuint115, align 4
  %cmp116 = icmp ne i32 %59, 6
  br i1 %cmp116, label %land.lhs.true.117, label %if.else.203

land.lhs.true.117:                                ; preds = %land.lhs.true.109
  %60 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtuint123 = bitcast %union.rtunion_def* %arrayidx122 to i32*
  %62 = load i32, i32* %rtuint123, align 4
  %cmp124 = icmp ne i32 %62, 7
  br i1 %cmp124, label %land.lhs.true.125, label %if.else.203

land.lhs.true.125:                                ; preds = %land.lhs.true.117
  %63 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtuint131 = bitcast %union.rtunion_def* %arrayidx130 to i32*
  %65 = load i32, i32* %rtuint131, align 4
  %cmp132 = icmp ne i32 %65, 16
  br i1 %cmp132, label %if.then.133, label %if.else.203

if.then.133:                                      ; preds = %land.lhs.true.125, %land.lhs.true.95
  %66 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load137 = load i32, i32* %68, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp eq i32 %bf.clear138, 61
  br i1 %cmp139, label %if.then.140, label %if.else.172

if.then.140:                                      ; preds = %if.then.133
  store i32 114, i32* %letter, align 4
  store i32 64, i32* @current_sym_code, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtuint146 = bitcast %union.rtunion_def* %arrayidx145 to i32*
  %71 = load i32, i32* %rtuint146, align 4
  %cmp147 = icmp uge i32 %71, 53
  br i1 %cmp147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.140
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.then.140
  %72 = load i32, i32* @target_flags, align 4
  %and150 = and i32 %72, 33554432
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %cond.true.152, label %cond.false.161

cond.true.152:                                    ; preds = %if.end.149
  %73 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtx155 = bitcast %union.rtunion_def* %arrayidx154 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx155, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtuint158 = bitcast %union.rtunion_def* %arrayidx157 to i32*
  %75 = load i32, i32* %rtuint158, align 4
  %idxprom159 = zext i32 %75 to i64
  %arrayidx160 = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i32 0, i64 %idxprom159
  %76 = load i32, i32* %arrayidx160, align 4
  br label %cond.end.170

cond.false.161:                                   ; preds = %if.end.149
  %77 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx164, align 8
  %fld165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld165, i32 0, i64 0
  %rtuint167 = bitcast %union.rtunion_def* %arrayidx166 to i32*
  %79 = load i32, i32* %rtuint167, align 4
  %idxprom168 = zext i32 %79 to i64
  %arrayidx169 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i32 0, i64 %idxprom168
  %80 = load i32, i32* %arrayidx169, align 4
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.161, %cond.true.152
  %cond171 = phi i32 [ %76, %cond.true.152 ], [ %80, %cond.false.161 ]
  store i32 %cond171, i32* @current_sym_value, align 4
  br label %if.end.197

if.else.172:                                      ; preds = %if.then.133
  store i32 128, i32* @current_sym_code, align 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 0
  %rtx175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx175, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtx178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx178, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load179 = load i32, i32* %84, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  %cmp181 = icmp eq i32 %bf.clear180, 75
  br i1 %cmp181, label %cond.true.182, label %cond.false.194

cond.true.182:                                    ; preds = %if.else.172
  %85 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 0
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 1
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx193 to i64*
  %89 = load i64, i64* %rtwint, align 8
  br label %cond.end.195

cond.false.194:                                   ; preds = %if.else.172
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.194, %cond.true.182
  %cond196 = phi i64 [ %89, %cond.true.182 ], [ 0, %cond.false.194 ]
  %conv = trunc i64 %cond196 to i32
  store i32 %conv, i32* @current_sym_value, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %cond.end.195, %cond.end.170
  %call198 = call %union.tree_node* @make_node(i32 13)
  store %union.tree_node* %call198, %union.tree_node** %type.addr, align 8
  %90 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common199 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %type200 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common199, i32 0, i32 1
  %91 = load %union.tree_node*, %union.tree_node** %type200, align 8
  %92 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common201 = bitcast %union.tree_node* %92 to %struct.tree_common*
  %type202 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common201, i32 0, i32 1
  store %union.tree_node* %91, %union.tree_node** %type202, align 8
  br label %if.end.332

if.else.203:                                      ; preds = %land.lhs.true.125, %land.lhs.true.117, %land.lhs.true.109, %lor.lhs.false.102, %if.else.91
  %93 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load204 = load i32, i32* %94, align 8
  %bf.clear205 = and i32 %bf.load204, 65535
  %cmp206 = icmp eq i32 %bf.clear205, 66
  br i1 %cmp206, label %land.lhs.true.208, label %if.else.238

land.lhs.true.208:                                ; preds = %if.else.203
  %95 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx211, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load212 = load i32, i32* %97, align 8
  %bf.clear213 = and i32 %bf.load212, 65535
  %cmp214 = icmp eq i32 %bf.clear213, 61
  br i1 %cmp214, label %if.then.216, label %if.else.238

if.then.216:                                      ; preds = %land.lhs.true.208
  store i32 128, i32* @current_sym_code, align 4
  %98 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 0
  %rtx219 = bitcast %union.rtunion_def* %arrayidx218 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx219, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %bf.load220 = load i32, i32* %100, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %cmp222 = icmp eq i32 %bf.clear221, 75
  br i1 %cmp222, label %cond.true.224, label %cond.false.234

cond.true.224:                                    ; preds = %if.then.216
  %101 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld225, i32 0, i64 0
  %rtx227 = bitcast %union.rtunion_def* %arrayidx226 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx227, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 1
  %rtx230 = bitcast %union.rtunion_def* %arrayidx229 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx230, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtwint233 = bitcast %union.rtunion_def* %arrayidx232 to i64*
  %104 = load i64, i64* %rtwint233, align 8
  br label %cond.end.235

cond.false.234:                                   ; preds = %if.then.216
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.false.234, %cond.true.224
  %cond236 = phi i64 [ %104, %cond.true.224 ], [ 0, %cond.false.234 ]
  %conv237 = trunc i64 %cond236 to i32
  store i32 %conv237, i32* @current_sym_value, align 4
  br label %if.end.331

if.else.238:                                      ; preds = %land.lhs.true.208, %if.else.203
  %105 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load239 = load i32, i32* %106, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp eq i32 %bf.clear240, 66
  br i1 %cmp241, label %land.lhs.true.243, label %if.else.284

land.lhs.true.243:                                ; preds = %if.else.238
  %107 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 0
  %rtx246 = bitcast %union.rtunion_def* %arrayidx245 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx246, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load247 = load i32, i32* %109, align 8
  %bf.clear248 = and i32 %bf.load247, 65535
  %cmp249 = icmp eq i32 %bf.clear248, 75
  br i1 %cmp249, label %land.lhs.true.251, label %if.else.284

land.lhs.true.251:                                ; preds = %land.lhs.true.243
  %110 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld252, i32 0, i64 0
  %rtx254 = bitcast %union.rtunion_def* %arrayidx253 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx254, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 1
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load258 = load i32, i32* %113, align 8
  %bf.clear259 = and i32 %bf.load258, 65535
  %cmp260 = icmp eq i32 %bf.clear259, 54
  br i1 %cmp260, label %if.then.262, label %if.else.284

if.then.262:                                      ; preds = %land.lhs.true.251
  store i32 128, i32* @current_sym_code, align 4
  %114 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld263, i32 0, i64 0
  %rtx265 = bitcast %union.rtunion_def* %arrayidx264 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx265, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load266 = load i32, i32* %116, align 8
  %bf.clear267 = and i32 %bf.load266, 65535
  %cmp268 = icmp eq i32 %bf.clear267, 75
  br i1 %cmp268, label %cond.true.270, label %cond.false.280

cond.true.270:                                    ; preds = %if.then.262
  %117 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld271 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld271, i32 0, i64 0
  %rtx273 = bitcast %union.rtunion_def* %arrayidx272 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx273, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 1
  %rtx276 = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx276, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 0
  %rtwint279 = bitcast %union.rtunion_def* %arrayidx278 to i64*
  %120 = load i64, i64* %rtwint279, align 8
  br label %cond.end.281

cond.false.280:                                   ; preds = %if.then.262
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.280, %cond.true.270
  %cond282 = phi i64 [ %120, %cond.true.270 ], [ 0, %cond.false.280 ]
  %conv283 = trunc i64 %cond282 to i32
  store i32 %conv283, i32* @current_sym_value, align 4
  br label %if.end.330

if.else.284:                                      ; preds = %land.lhs.true.251, %land.lhs.true.243, %if.else.238
  %121 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load285 = load i32, i32* %122, align 8
  %bf.clear286 = and i32 %bf.load285, 65535
  %cmp287 = icmp eq i32 %bf.clear286, 66
  br i1 %cmp287, label %land.lhs.true.289, label %if.else.304

land.lhs.true.289:                                ; preds = %if.else.284
  %123 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 0
  %rtx292 = bitcast %union.rtunion_def* %arrayidx291 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx292, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load293 = load i32, i32* %125, align 8
  %bf.clear294 = and i32 %bf.load293, 65535
  %cmp295 = icmp eq i32 %bf.clear294, 58
  br i1 %cmp295, label %if.then.297, label %if.else.304

if.then.297:                                      ; preds = %land.lhs.true.289
  store i32 40, i32* @current_sym_code, align 4
  store i32 86, i32* %letter, align 4
  %126 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld298, i32 0, i64 0
  %rtx300 = bitcast %union.rtunion_def* %arrayidx299 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx300, align 8
  %fld301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld301, i32 0, i64 0
  %rtx303 = bitcast %union.rtunion_def* %arrayidx302 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx303, align 8
  store %struct.rtx_def* %128, %struct.rtx_def** @current_sym_addr, align 8
  br label %if.end.329

if.else.304:                                      ; preds = %land.lhs.true.289, %if.else.284
  %129 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load305 = load i32, i32* %130, align 8
  %bf.clear306 = and i32 %bf.load305, 65535
  %cmp307 = icmp eq i32 %bf.clear306, 65
  br i1 %cmp307, label %if.then.309, label %if.else.328

if.then.309:                                      ; preds = %if.else.304
  %131 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common311 = bitcast %union.tree_node* %131 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common311, i32 0, i32 2
  %bf.load312 = load i32, i32* %code, align 8
  %bf.clear313 = and i32 %bf.load312, 255
  %cmp314 = icmp ne i32 %bf.clear313, 8
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.then.309
  store i32 0, i32* %retval
  br label %return

if.end.317:                                       ; preds = %if.then.309
  %132 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common318 = bitcast %union.tree_node* %132 to %struct.tree_common*
  %type319 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common318, i32 0, i32 1
  %133 = load %union.tree_node*, %union.tree_node** %type319, align 8
  store %union.tree_node* %133, %union.tree_node** %subtype, align 8
  %134 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %135 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 0
  %rtx322 = bitcast %union.rtunion_def* %arrayidx321 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx322, align 8
  %call323 = call i32 @dbxout_symbol_location(%union.tree_node* %134, %union.tree_node* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), %struct.rtx_def* %137)
  store i32 0, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %138 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %138)
  %139 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %140 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %home.addr, align 8
  %fld324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx325 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld324, i32 0, i64 1
  %rtx326 = bitcast %union.rtunion_def* %arrayidx325 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx326, align 8
  %call327 = call i32 @dbxout_symbol_location(%union.tree_node* %139, %union.tree_node* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %struct.rtx_def* %142)
  store i32 1, i32* %retval
  br label %return

if.else.328:                                      ; preds = %if.else.304
  store i32 0, i32* %retval
  br label %return

if.end.329:                                       ; preds = %if.then.297
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %cond.end.281
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %cond.end.235
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %if.end.197
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %cond.end
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.end.82
  %143 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %144 = load i8*, i8** %suffix.addr, align 8
  %145 = load i32, i32* %letter, align 4
  call void @dbxout_symbol_name(%union.tree_node* %143, i8* %144, i32 %145)
  %146 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type(%union.tree_node* %146, i32 0)
  %147 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %147)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.334, %if.else.328, %if.end.317, %if.then.316, %if.then.148, %if.then.22, %if.then.11
  %148 = load i32, i32* %retval
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define i32 @dbxout_syms(%union.tree_node* %syms) #0 {
entry:
  %syms.addr = alloca %union.tree_node*, align 8
  %result = alloca i32, align 4
  store %union.tree_node* %syms, %union.tree_node** %syms.addr, align 8
  store i32 0, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %call = call i32 @dbxout_symbol(%union.tree_node* %1, i32 1)
  %2 = load i32, i32* %result, align 4
  %add = add nsw i32 %2, %call
  store i32 %add, i32* %result, align 4
  %3 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %4, %union.tree_node** %syms.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %result, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @dbxout_parms(%union.tree_node* %parms) #0 {
entry:
  %parms.addr = alloca %union.tree_node*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  %best_rtl = alloca %struct.rtx_def*, align 8
  %regparm_letter = alloca i8, align 1
  %parm_type = alloca %union.tree_node*, align 8
  %regparm_letter238 = alloca i8, align 1
  %decl_name = alloca i8*, align 8
  store %union.tree_node* %parms, %union.tree_node** %parms.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %2 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool1 = icmp ne %union.tree_node* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.667

land.lhs.true:                                    ; preds = %for.body
  %3 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp ne %union.tree_node* %4, %5
  br i1 %cmp, label %if.then, label %if.end.667

if.then:                                          ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %6)
  %7 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl2 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 19
  %r = bitcast %union.anon.1* %u2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %call = call %struct.rtx_def* @eliminate_regs(%struct.rtx_def* %8, i32 0, %struct.rtx_def* null)
  %9 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl3 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %u24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 19
  %r5 = bitcast %union.anon.1* %u24 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %r5, align 8
  %10 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl6 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool7 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl8 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtl9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %14 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %14, i8* null)
  %15 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl10 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %rtl11 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtl11, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %13, %cond.true ], [ %16, %cond.false ]
  %call12 = call %struct.rtx_def* @eliminate_regs(%struct.rtx_def* %cond, i32 0, %struct.rtx_def* null)
  %17 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl13 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %rtl14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 17
  store %struct.rtx_def* %call12, %struct.rtx_def** %rtl14, align 8
  %18 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl15 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %u216 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 19
  %r17 = bitcast %union.anon.1* %u216 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %r17, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load = load i32, i32* %20, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp18 = icmp eq i32 %bf.clear, 66
  br i1 %cmp18, label %if.then.19, label %if.else.54

if.then.19:                                       ; preds = %cond.end
  %21 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl20 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %u221 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 19
  %r22 = bitcast %union.anon.1* %u221 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %r22, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load23 = load i32, i32* %25, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 75
  br i1 %cmp25, label %land.lhs.true.26, label %if.else

land.lhs.true.26:                                 ; preds = %if.then.19
  %26 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load30 = load i32, i32* %28, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 54
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %land.lhs.true.26
  %29 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx38 to i64*
  %31 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %31 to i32
  store i32 %conv, i32* @current_sym_value, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.26, %if.then.19
  store i32 0, i32* @current_sym_value, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.33
  store i32 160, i32* @current_sym_code, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %32 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl39 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %name40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl39, i32 0, i32 8
  %33 = load %union.tree_node*, %union.tree_node** %name40, align 8
  %tobool41 = icmp ne %union.tree_node* %33, null
  br i1 %tobool41, label %if.then.42, label %if.else.50

if.then.42:                                       ; preds = %if.end
  %34 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl43 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %name44 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl43, i32 0, i32 8
  %35 = load %union.tree_node*, %union.tree_node** %name44, align 8
  %identifier = bitcast %union.tree_node* %35 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 0
  %36 = load i32, i32* %len, align 4
  %add = add i32 2, %36
  store i32 %add, i32* @current_sym_nchars, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %38 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl45 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %name46 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl45, i32 0, i32 8
  %39 = load %union.tree_node*, %union.tree_node** %name46, align 8
  %identifier47 = bitcast %union.tree_node* %39 to %struct.tree_identifier*
  %id48 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier47, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id48, i32 0, i32 1
  %40 = load i8*, i8** %str, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %40, i32 112)
  br label %if.end.52

if.else.50:                                       ; preds = %if.end
  store i32 8, i32* @current_sym_nchars, align 4
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 112)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.then.42
  %42 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl53 = bitcast %union.tree_node* %42 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl53, i32 0, i32 12
  %43 = load %union.tree_node*, %union.tree_node** %initial, align 8
  call void @dbxout_type(%union.tree_node* %43, i32 0)
  %44 = load i32, i32* @current_sym_value, align 4
  store i32 %44, i32* @current_sym_value, align 4
  %45 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %45)
  br label %if.end.666

if.else.54:                                       ; preds = %cond.end
  %46 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl55 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %rtl56 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl55, i32 0, i32 17
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtl56, align 8
  %tobool57 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool57, label %cond.true.58, label %cond.false.61

cond.true.58:                                     ; preds = %if.else.54
  %48 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl59 = bitcast %union.tree_node* %48 to %struct.tree_decl*
  %rtl60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 17
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtl60, align 8
  br label %cond.end.64

cond.false.61:                                    ; preds = %if.else.54
  %50 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %50, i8* null)
  %51 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl62 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %rtl63 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl62, i32 0, i32 17
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtl63, align 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.58
  %cond65 = phi %struct.rtx_def* [ %49, %cond.true.58 ], [ %52, %cond.false.61 ]
  %53 = bitcast %struct.rtx_def* %cond65 to i32*
  %bf.load66 = load i32, i32* %53, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 61
  br i1 %cmp68, label %if.then.70, label %if.else.142

if.then.70:                                       ; preds = %cond.end.64
  store i32 64, i32* @current_sym_code, align 4
  store i8 80, i8* %regparm_letter, align 1
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %54 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl71 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %rtl72 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl71, i32 0, i32 17
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtl72, align 8
  %tobool73 = icmp ne %struct.rtx_def* %55, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %if.then.70
  %56 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl75 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %rtl76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 17
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtl76, align 8
  br label %cond.end.80

cond.false.77:                                    ; preds = %if.then.70
  %58 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %58, i8* null)
  %59 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl78 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %rtl79 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl78, i32 0, i32 17
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtl79, align 8
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.74
  %cond81 = phi %struct.rtx_def* [ %57, %cond.true.74 ], [ %60, %cond.false.77 ]
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond81, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx83 to i32*
  %61 = load i32, i32* %rtuint, align 4
  %cmp84 = icmp ult i32 %61, 53
  br i1 %cmp84, label %if.then.86, label %if.else.100

if.then.86:                                       ; preds = %cond.end.80
  %62 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl87 = bitcast %union.tree_node* %62 to %struct.tree_decl*
  %rtl88 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl87, i32 0, i32 17
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtl88, align 8
  %tobool89 = icmp ne %struct.rtx_def* %63, null
  br i1 %tobool89, label %cond.true.90, label %cond.false.93

cond.true.90:                                     ; preds = %if.then.86
  %64 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl91 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %rtl92 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl91, i32 0, i32 17
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtl92, align 8
  br label %cond.end.96

cond.false.93:                                    ; preds = %if.then.86
  %66 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %66, i8* null)
  %67 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl94 = bitcast %union.tree_node* %67 to %struct.tree_decl*
  %rtl95 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl94, i32 0, i32 17
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtl95, align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.90
  %cond97 = phi %struct.rtx_def* [ %65, %cond.true.90 ], [ %68, %cond.false.93 ]
  store %struct.rtx_def* %cond97, %struct.rtx_def** %best_rtl, align 8
  %69 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common98 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %type99 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common98, i32 0, i32 1
  %70 = load %union.tree_node*, %union.tree_node** %type99, align 8
  store %union.tree_node* %70, %union.tree_node** %parm_type, align 8
  br label %if.end.106

if.else.100:                                      ; preds = %cond.end.80
  %71 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl101 = bitcast %union.tree_node* %71 to %struct.tree_decl*
  %u2102 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl101, i32 0, i32 19
  %r103 = bitcast %union.anon.1* %u2102 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %r103, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %best_rtl, align 8
  %73 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common104 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %type105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 1
  %74 = load %union.tree_node*, %union.tree_node** %type105, align 8
  store %union.tree_node* %74, %union.tree_node** %parm_type, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %cond.end.96
  %75 = load i32, i32* @target_flags, align 4
  %and = and i32 %75, 33554432
  %tobool107 = icmp ne i32 %and, 0
  br i1 %tobool107, label %cond.true.108, label %cond.false.113

cond.true.108:                                    ; preds = %if.end.106
  %76 = load %struct.rtx_def*, %struct.rtx_def** %best_rtl, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtuint111 = bitcast %union.rtunion_def* %arrayidx110 to i32*
  %77 = load i32, i32* %rtuint111, align 4
  %idxprom = zext i32 %77 to i64
  %arrayidx112 = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i32 0, i64 %idxprom
  %78 = load i32, i32* %arrayidx112, align 4
  br label %cond.end.119

cond.false.113:                                   ; preds = %if.end.106
  %79 = load %struct.rtx_def*, %struct.rtx_def** %best_rtl, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtuint116 = bitcast %union.rtunion_def* %arrayidx115 to i32*
  %80 = load i32, i32* %rtuint116, align 4
  %idxprom117 = zext i32 %80 to i64
  %arrayidx118 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i32 0, i64 %idxprom117
  %81 = load i32, i32* %arrayidx118, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.113, %cond.true.108
  %cond120 = phi i32 [ %78, %cond.true.108 ], [ %81, %cond.false.113 ]
  store i32 %cond120, i32* @current_sym_value, align 4
  %82 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl121 = bitcast %union.tree_node* %82 to %struct.tree_decl*
  %name122 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl121, i32 0, i32 8
  %83 = load %union.tree_node*, %union.tree_node** %name122, align 8
  %tobool123 = icmp ne %union.tree_node* %83, null
  br i1 %tobool123, label %if.then.124, label %if.else.138

if.then.124:                                      ; preds = %cond.end.119
  %84 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl125 = bitcast %union.tree_node* %84 to %struct.tree_decl*
  %name126 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl125, i32 0, i32 8
  %85 = load %union.tree_node*, %union.tree_node** %name126, align 8
  %identifier127 = bitcast %union.tree_node* %85 to %struct.tree_identifier*
  %id128 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier127, i32 0, i32 1
  %len129 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id128, i32 0, i32 0
  %86 = load i32, i32* %len129, align 4
  %add130 = add i32 2, %86
  store i32 %add130, i32* @current_sym_nchars, align 4
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %88 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl131 = bitcast %union.tree_node* %88 to %struct.tree_decl*
  %name132 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl131, i32 0, i32 8
  %89 = load %union.tree_node*, %union.tree_node** %name132, align 8
  %identifier133 = bitcast %union.tree_node* %89 to %struct.tree_identifier*
  %id134 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier133, i32 0, i32 1
  %str135 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id134, i32 0, i32 1
  %90 = load i8*, i8** %str135, align 8
  %91 = load i8, i8* %regparm_letter, align 1
  %conv136 = sext i8 %91 to i32
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %90, i32 %conv136)
  br label %if.end.141

if.else.138:                                      ; preds = %cond.end.119
  store i32 8, i32* @current_sym_nchars, align 4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %93 = load i8, i8* %regparm_letter, align 1
  %conv139 = sext i8 %93 to i32
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %conv139)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.124
  %94 = load %union.tree_node*, %union.tree_node** %parm_type, align 8
  call void @dbxout_type(%union.tree_node* %94, i32 0)
  %95 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %95)
  br label %if.end.665

if.else.142:                                      ; preds = %cond.end.64
  %96 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl143 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %rtl144 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl143, i32 0, i32 17
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtl144, align 8
  %tobool145 = icmp ne %struct.rtx_def* %97, null
  br i1 %tobool145, label %cond.true.146, label %cond.false.149

cond.true.146:                                    ; preds = %if.else.142
  %98 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl147 = bitcast %union.tree_node* %98 to %struct.tree_decl*
  %rtl148 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl147, i32 0, i32 17
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtl148, align 8
  br label %cond.end.152

cond.false.149:                                   ; preds = %if.else.142
  %100 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %100, i8* null)
  %101 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl150 = bitcast %union.tree_node* %101 to %struct.tree_decl*
  %rtl151 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl150, i32 0, i32 17
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtl151, align 8
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.149, %cond.true.146
  %cond153 = phi %struct.rtx_def* [ %99, %cond.true.146 ], [ %102, %cond.false.149 ]
  %103 = bitcast %struct.rtx_def* %cond153 to i32*
  %bf.load154 = load i32, i32* %103, align 8
  %bf.clear155 = and i32 %bf.load154, 65535
  %cmp156 = icmp eq i32 %bf.clear155, 66
  br i1 %cmp156, label %land.lhs.true.158, label %if.else.313

land.lhs.true.158:                                ; preds = %cond.end.152
  %104 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl159 = bitcast %union.tree_node* %104 to %struct.tree_decl*
  %rtl160 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl159, i32 0, i32 17
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtl160, align 8
  %tobool161 = icmp ne %struct.rtx_def* %105, null
  br i1 %tobool161, label %cond.true.162, label %cond.false.165

cond.true.162:                                    ; preds = %land.lhs.true.158
  %106 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl163 = bitcast %union.tree_node* %106 to %struct.tree_decl*
  %rtl164 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl163, i32 0, i32 17
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtl164, align 8
  br label %cond.end.168

cond.false.165:                                   ; preds = %land.lhs.true.158
  %108 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %108, i8* null)
  %109 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl166 = bitcast %union.tree_node* %109 to %struct.tree_decl*
  %rtl167 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl166, i32 0, i32 17
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtl167, align 8
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.165, %cond.true.162
  %cond169 = phi %struct.rtx_def* [ %107, %cond.true.162 ], [ %110, %cond.false.165 ]
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond169, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 0
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx172, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load173 = load i32, i32* %112, align 8
  %bf.clear174 = and i32 %bf.load173, 65535
  %cmp175 = icmp eq i32 %bf.clear174, 61
  br i1 %cmp175, label %land.lhs.true.177, label %if.else.313

land.lhs.true.177:                                ; preds = %cond.end.168
  %113 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl178 = bitcast %union.tree_node* %113 to %struct.tree_decl*
  %rtl179 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl178, i32 0, i32 17
  %114 = load %struct.rtx_def*, %struct.rtx_def** %rtl179, align 8
  %tobool180 = icmp ne %struct.rtx_def* %114, null
  br i1 %tobool180, label %cond.true.181, label %cond.false.184

cond.true.181:                                    ; preds = %land.lhs.true.177
  %115 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl182 = bitcast %union.tree_node* %115 to %struct.tree_decl*
  %rtl183 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl182, i32 0, i32 17
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtl183, align 8
  br label %cond.end.187

cond.false.184:                                   ; preds = %land.lhs.true.177
  %117 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %117, i8* null)
  %118 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl185 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %rtl186 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl185, i32 0, i32 17
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtl186, align 8
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.184, %cond.true.181
  %cond188 = phi %struct.rtx_def* [ %116, %cond.true.181 ], [ %119, %cond.false.184 ]
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond188, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 0
  %rtuint194 = bitcast %union.rtunion_def* %arrayidx193 to i32*
  %121 = load i32, i32* %rtuint194, align 4
  %cmp195 = icmp ne i32 %121, 6
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.313

land.lhs.true.197:                                ; preds = %cond.end.187
  %122 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl198 = bitcast %union.tree_node* %122 to %struct.tree_decl*
  %rtl199 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl198, i32 0, i32 17
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtl199, align 8
  %tobool200 = icmp ne %struct.rtx_def* %123, null
  br i1 %tobool200, label %cond.true.201, label %cond.false.204

cond.true.201:                                    ; preds = %land.lhs.true.197
  %124 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl202 = bitcast %union.tree_node* %124 to %struct.tree_decl*
  %rtl203 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl202, i32 0, i32 17
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtl203, align 8
  br label %cond.end.207

cond.false.204:                                   ; preds = %land.lhs.true.197
  %126 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %126, i8* null)
  %127 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl205 = bitcast %union.tree_node* %127 to %struct.tree_decl*
  %rtl206 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl205, i32 0, i32 17
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtl206, align 8
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.204, %cond.true.201
  %cond208 = phi %struct.rtx_def* [ %125, %cond.true.201 ], [ %128, %cond.false.204 ]
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond208, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx211, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtuint214 = bitcast %union.rtunion_def* %arrayidx213 to i32*
  %130 = load i32, i32* %rtuint214, align 4
  %cmp215 = icmp ne i32 %130, 7
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.313

land.lhs.true.217:                                ; preds = %cond.end.207
  %131 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl218 = bitcast %union.tree_node* %131 to %struct.tree_decl*
  %rtl219 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl218, i32 0, i32 17
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtl219, align 8
  %tobool220 = icmp ne %struct.rtx_def* %132, null
  br i1 %tobool220, label %cond.true.221, label %cond.false.224

cond.true.221:                                    ; preds = %land.lhs.true.217
  %133 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl222 = bitcast %union.tree_node* %133 to %struct.tree_decl*
  %rtl223 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl222, i32 0, i32 17
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtl223, align 8
  br label %cond.end.227

cond.false.224:                                   ; preds = %land.lhs.true.217
  %135 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %135, i8* null)
  %136 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl225 = bitcast %union.tree_node* %136 to %struct.tree_decl*
  %rtl226 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl225, i32 0, i32 17
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtl226, align 8
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.224, %cond.true.221
  %cond228 = phi %struct.rtx_def* [ %134, %cond.true.221 ], [ %137, %cond.false.224 ]
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond228, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 0
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtuint234 = bitcast %union.rtunion_def* %arrayidx233 to i32*
  %139 = load i32, i32* %rtuint234, align 4
  %cmp235 = icmp ne i32 %139, 16
  br i1 %cmp235, label %if.then.237, label %if.else.313

if.then.237:                                      ; preds = %cond.end.227
  store i32 64, i32* @current_sym_code, align 4
  %140 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool239 = icmp ne i32 %140, 0
  br i1 %tobool239, label %if.then.240, label %if.else.241

if.then.240:                                      ; preds = %if.then.237
  store i8 97, i8* %regparm_letter238, align 1
  br label %if.end.242

if.else.241:                                      ; preds = %if.then.237
  store i8 80, i8* %regparm_letter238, align 1
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.241, %if.then.240
  %141 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl243 = bitcast %union.tree_node* %141 to %struct.tree_decl*
  %rtl244 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl243, i32 0, i32 17
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtl244, align 8
  %tobool245 = icmp ne %struct.rtx_def* %142, null
  br i1 %tobool245, label %cond.true.246, label %cond.false.249

cond.true.246:                                    ; preds = %if.end.242
  %143 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl247 = bitcast %union.tree_node* %143 to %struct.tree_decl*
  %rtl248 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl247, i32 0, i32 17
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtl248, align 8
  br label %cond.end.252

cond.false.249:                                   ; preds = %if.end.242
  %145 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %145, i8* null)
  %146 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl250 = bitcast %union.tree_node* %146 to %struct.tree_decl*
  %rtl251 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl250, i32 0, i32 17
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtl251, align 8
  br label %cond.end.252

cond.end.252:                                     ; preds = %cond.false.249, %cond.true.246
  %cond253 = phi %struct.rtx_def* [ %144, %cond.true.246 ], [ %147, %cond.false.249 ]
  %fld254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond253, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld254, i32 0, i64 0
  %rtx256 = bitcast %union.rtunion_def* %arrayidx255 to %struct.rtx_def**
  %148 = load %struct.rtx_def*, %struct.rtx_def** %rtx256, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtuint259 = bitcast %union.rtunion_def* %arrayidx258 to i32*
  %149 = load i32, i32* %rtuint259, align 4
  %cmp260 = icmp ult i32 %149, 53
  br i1 %cmp260, label %if.then.262, label %if.else.280

if.then.262:                                      ; preds = %cond.end.252
  %150 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl263 = bitcast %union.tree_node* %150 to %struct.tree_decl*
  %rtl264 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl263, i32 0, i32 17
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtl264, align 8
  %tobool265 = icmp ne %struct.rtx_def* %151, null
  br i1 %tobool265, label %cond.true.266, label %cond.false.269

cond.true.266:                                    ; preds = %if.then.262
  %152 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl267 = bitcast %union.tree_node* %152 to %struct.tree_decl*
  %rtl268 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl267, i32 0, i32 17
  %153 = load %struct.rtx_def*, %struct.rtx_def** %rtl268, align 8
  br label %cond.end.272

cond.false.269:                                   ; preds = %if.then.262
  %154 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %154, i8* null)
  %155 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl270 = bitcast %union.tree_node* %155 to %struct.tree_decl*
  %rtl271 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl270, i32 0, i32 17
  %156 = load %struct.rtx_def*, %struct.rtx_def** %rtl271, align 8
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.269, %cond.true.266
  %cond273 = phi %struct.rtx_def* [ %153, %cond.true.266 ], [ %156, %cond.false.269 ]
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond273, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtx276 = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtx276, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 0
  %rtuint279 = bitcast %union.rtunion_def* %arrayidx278 to i32*
  %158 = load i32, i32* %rtuint279, align 4
  store i32 %158, i32* @current_sym_value, align 4
  br label %if.end.287

if.else.280:                                      ; preds = %cond.end.252
  %159 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl281 = bitcast %union.tree_node* %159 to %struct.tree_decl*
  %u2282 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl281, i32 0, i32 19
  %r283 = bitcast %union.anon.1* %u2282 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %r283, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtuint286 = bitcast %union.rtunion_def* %arrayidx285 to i32*
  %161 = load i32, i32* %rtuint286, align 4
  store i32 %161, i32* @current_sym_value, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.280, %cond.end.272
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %162 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl288 = bitcast %union.tree_node* %162 to %struct.tree_decl*
  %name289 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl288, i32 0, i32 8
  %163 = load %union.tree_node*, %union.tree_node** %name289, align 8
  %tobool290 = icmp ne %union.tree_node* %163, null
  br i1 %tobool290, label %if.then.291, label %if.else.307

if.then.291:                                      ; preds = %if.end.287
  %164 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl292 = bitcast %union.tree_node* %164 to %struct.tree_decl*
  %name293 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl292, i32 0, i32 8
  %165 = load %union.tree_node*, %union.tree_node** %name293, align 8
  %identifier294 = bitcast %union.tree_node* %165 to %struct.tree_identifier*
  %id295 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier294, i32 0, i32 1
  %str296 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id295, i32 0, i32 1
  %166 = load i8*, i8** %str296, align 8
  %call297 = call i64 @strlen(i8* %166) #6
  %add298 = add i64 2, %call297
  %conv299 = trunc i64 %add298 to i32
  store i32 %conv299, i32* @current_sym_nchars, align 4
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %168 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl300 = bitcast %union.tree_node* %168 to %struct.tree_decl*
  %name301 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl300, i32 0, i32 8
  %169 = load %union.tree_node*, %union.tree_node** %name301, align 8
  %identifier302 = bitcast %union.tree_node* %169 to %struct.tree_identifier*
  %id303 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier302, i32 0, i32 1
  %str304 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id303, i32 0, i32 1
  %170 = load i8*, i8** %str304, align 8
  %171 = load i8, i8* %regparm_letter238, align 1
  %conv305 = sext i8 %171 to i32
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %170, i32 %conv305)
  br label %if.end.310

if.else.307:                                      ; preds = %if.end.287
  store i32 8, i32* @current_sym_nchars, align 4
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %173 = load i8, i8* %regparm_letter238, align 1
  %conv308 = sext i8 %173 to i32
  %call309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %conv308)
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.307, %if.then.291
  %174 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common311 = bitcast %union.tree_node* %174 to %struct.tree_common*
  %type312 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common311, i32 0, i32 1
  %175 = load %union.tree_node*, %union.tree_node** %type312, align 8
  call void @dbxout_type(%union.tree_node* %175, i32 0)
  %176 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %176)
  br label %if.end.664

if.else.313:                                      ; preds = %cond.end.227, %cond.end.207, %cond.end.187, %cond.end.168, %cond.end.152
  %177 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl314 = bitcast %union.tree_node* %177 to %struct.tree_decl*
  %rtl315 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl314, i32 0, i32 17
  %178 = load %struct.rtx_def*, %struct.rtx_def** %rtl315, align 8
  %tobool316 = icmp ne %struct.rtx_def* %178, null
  br i1 %tobool316, label %cond.true.317, label %cond.false.320

cond.true.317:                                    ; preds = %if.else.313
  %179 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl318 = bitcast %union.tree_node* %179 to %struct.tree_decl*
  %rtl319 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl318, i32 0, i32 17
  %180 = load %struct.rtx_def*, %struct.rtx_def** %rtl319, align 8
  br label %cond.end.323

cond.false.320:                                   ; preds = %if.else.313
  %181 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %181, i8* null)
  %182 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl321 = bitcast %union.tree_node* %182 to %struct.tree_decl*
  %rtl322 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl321, i32 0, i32 17
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rtl322, align 8
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.320, %cond.true.317
  %cond324 = phi %struct.rtx_def* [ %180, %cond.true.317 ], [ %183, %cond.false.320 ]
  %184 = bitcast %struct.rtx_def* %cond324 to i32*
  %bf.load325 = load i32, i32* %184, align 8
  %bf.clear326 = and i32 %bf.load325, 65535
  %cmp327 = icmp eq i32 %bf.clear326, 66
  br i1 %cmp327, label %land.lhs.true.329, label %if.else.412

land.lhs.true.329:                                ; preds = %cond.end.323
  %185 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl330 = bitcast %union.tree_node* %185 to %struct.tree_decl*
  %rtl331 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl330, i32 0, i32 17
  %186 = load %struct.rtx_def*, %struct.rtx_def** %rtl331, align 8
  %tobool332 = icmp ne %struct.rtx_def* %186, null
  br i1 %tobool332, label %cond.true.333, label %cond.false.336

cond.true.333:                                    ; preds = %land.lhs.true.329
  %187 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl334 = bitcast %union.tree_node* %187 to %struct.tree_decl*
  %rtl335 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl334, i32 0, i32 17
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtl335, align 8
  br label %cond.end.339

cond.false.336:                                   ; preds = %land.lhs.true.329
  %189 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %189, i8* null)
  %190 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl337 = bitcast %union.tree_node* %190 to %struct.tree_decl*
  %rtl338 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl337, i32 0, i32 17
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtl338, align 8
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.336, %cond.true.333
  %cond340 = phi %struct.rtx_def* [ %188, %cond.true.333 ], [ %191, %cond.false.336 ]
  %fld341 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond340, i32 0, i32 1
  %arrayidx342 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld341, i32 0, i64 0
  %rtx343 = bitcast %union.rtunion_def* %arrayidx342 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx343, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %bf.load344 = load i32, i32* %193, align 8
  %bf.clear345 = and i32 %bf.load344, 65535
  %cmp346 = icmp eq i32 %bf.clear345, 66
  br i1 %cmp346, label %if.then.348, label %if.else.412

if.then.348:                                      ; preds = %cond.end.339
  %194 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl349 = bitcast %union.tree_node* %194 to %struct.tree_decl*
  %name350 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl349, i32 0, i32 8
  %195 = load %union.tree_node*, %union.tree_node** %name350, align 8
  %tobool351 = icmp ne %union.tree_node* %195, null
  br i1 %tobool351, label %cond.true.352, label %cond.false.358

cond.true.352:                                    ; preds = %if.then.348
  %196 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl353 = bitcast %union.tree_node* %196 to %struct.tree_decl*
  %name354 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl353, i32 0, i32 8
  %197 = load %union.tree_node*, %union.tree_node** %name354, align 8
  %identifier355 = bitcast %union.tree_node* %197 to %struct.tree_identifier*
  %id356 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier355, i32 0, i32 1
  %str357 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id356, i32 0, i32 1
  %198 = load i8*, i8** %str357, align 8
  br label %cond.end.359

cond.false.358:                                   ; preds = %if.then.348
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.352
  %cond360 = phi i8* [ %198, %cond.true.352 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %cond.false.358 ]
  store i8* %cond360, i8** %decl_name, align 8
  %199 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl361 = bitcast %union.tree_node* %199 to %struct.tree_decl*
  %rtl362 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl361, i32 0, i32 17
  %200 = load %struct.rtx_def*, %struct.rtx_def** %rtl362, align 8
  %tobool363 = icmp ne %struct.rtx_def* %200, null
  br i1 %tobool363, label %cond.true.364, label %cond.false.367

cond.true.364:                                    ; preds = %cond.end.359
  %201 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl365 = bitcast %union.tree_node* %201 to %struct.tree_decl*
  %rtl366 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl365, i32 0, i32 17
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtl366, align 8
  br label %cond.end.370

cond.false.367:                                   ; preds = %cond.end.359
  %203 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %203, i8* null)
  %204 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl368 = bitcast %union.tree_node* %204 to %struct.tree_decl*
  %rtl369 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl368, i32 0, i32 17
  %205 = load %struct.rtx_def*, %struct.rtx_def** %rtl369, align 8
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.367, %cond.true.364
  %cond371 = phi %struct.rtx_def* [ %202, %cond.true.364 ], [ %205, %cond.false.367 ]
  %fld372 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond371, i32 0, i32 1
  %arrayidx373 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld372, i32 0, i64 0
  %rtx374 = bitcast %union.rtunion_def* %arrayidx373 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %rtx374, align 8
  %fld375 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx376 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld375, i32 0, i64 0
  %rtx377 = bitcast %union.rtunion_def* %arrayidx376 to %struct.rtx_def**
  %207 = load %struct.rtx_def*, %struct.rtx_def** %rtx377, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load378 = load i32, i32* %208, align 8
  %bf.clear379 = and i32 %bf.load378, 65535
  %cmp380 = icmp eq i32 %bf.clear379, 61
  br i1 %cmp380, label %if.then.382, label %if.else.383

if.then.382:                                      ; preds = %cond.end.370
  store i32 0, i32* @current_sym_value, align 4
  br label %if.end.408

if.else.383:                                      ; preds = %cond.end.370
  %209 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl384 = bitcast %union.tree_node* %209 to %struct.tree_decl*
  %rtl385 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl384, i32 0, i32 17
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtl385, align 8
  %tobool386 = icmp ne %struct.rtx_def* %210, null
  br i1 %tobool386, label %cond.true.387, label %cond.false.390

cond.true.387:                                    ; preds = %if.else.383
  %211 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl388 = bitcast %union.tree_node* %211 to %struct.tree_decl*
  %rtl389 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl388, i32 0, i32 17
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtl389, align 8
  br label %cond.end.393

cond.false.390:                                   ; preds = %if.else.383
  %213 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %213, i8* null)
  %214 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl391 = bitcast %union.tree_node* %214 to %struct.tree_decl*
  %rtl392 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl391, i32 0, i32 17
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtl392, align 8
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.390, %cond.true.387
  %cond394 = phi %struct.rtx_def* [ %212, %cond.true.387 ], [ %215, %cond.false.390 ]
  %fld395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond394, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld395, i32 0, i64 0
  %rtx397 = bitcast %union.rtunion_def* %arrayidx396 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtx397, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 0
  %rtx400 = bitcast %union.rtunion_def* %arrayidx399 to %struct.rtx_def**
  %217 = load %struct.rtx_def*, %struct.rtx_def** %rtx400, align 8
  %fld401 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx402 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld401, i32 0, i64 1
  %rtx403 = bitcast %union.rtunion_def* %arrayidx402 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx403, align 8
  %fld404 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx405 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld404, i32 0, i64 0
  %rtwint406 = bitcast %union.rtunion_def* %arrayidx405 to i64*
  %219 = load i64, i64* %rtwint406, align 8
  %conv407 = trunc i64 %219 to i32
  store i32 %conv407, i32* @current_sym_value, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %cond.end.393, %if.then.382
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %221 = load i8*, i8** %decl_name, align 8
  %call409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %221)
  %222 = load i32, i32* @current_sym_value, align 4
  store i32 %222, i32* @current_sym_value, align 4
  %223 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common410 = bitcast %union.tree_node* %223 to %struct.tree_common*
  %type411 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common410, i32 0, i32 1
  %224 = load %union.tree_node*, %union.tree_node** %type411, align 8
  call void @dbxout_type(%union.tree_node* %224, i32 0)
  %225 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %225)
  br label %if.end.663

if.else.412:                                      ; preds = %cond.end.339, %cond.end.323
  %226 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl413 = bitcast %union.tree_node* %226 to %struct.tree_decl*
  %rtl414 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl413, i32 0, i32 17
  %227 = load %struct.rtx_def*, %struct.rtx_def** %rtl414, align 8
  %tobool415 = icmp ne %struct.rtx_def* %227, null
  br i1 %tobool415, label %cond.true.416, label %cond.false.419

cond.true.416:                                    ; preds = %if.else.412
  %228 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl417 = bitcast %union.tree_node* %228 to %struct.tree_decl*
  %rtl418 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl417, i32 0, i32 17
  %229 = load %struct.rtx_def*, %struct.rtx_def** %rtl418, align 8
  br label %cond.end.422

cond.false.419:                                   ; preds = %if.else.412
  %230 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %230, i8* null)
  %231 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl420 = bitcast %union.tree_node* %231 to %struct.tree_decl*
  %rtl421 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl420, i32 0, i32 17
  %232 = load %struct.rtx_def*, %struct.rtx_def** %rtl421, align 8
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.419, %cond.true.416
  %cond423 = phi %struct.rtx_def* [ %229, %cond.true.416 ], [ %232, %cond.false.419 ]
  %233 = bitcast %struct.rtx_def* %cond423 to i32*
  %bf.load424 = load i32, i32* %233, align 8
  %bf.clear425 = and i32 %bf.load424, 65535
  %cmp426 = icmp eq i32 %bf.clear425, 66
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.662

land.lhs.true.428:                                ; preds = %cond.end.422
  %234 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl429 = bitcast %union.tree_node* %234 to %struct.tree_decl*
  %rtl430 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl429, i32 0, i32 17
  %235 = load %struct.rtx_def*, %struct.rtx_def** %rtl430, align 8
  %tobool431 = icmp ne %struct.rtx_def* %235, null
  br i1 %tobool431, label %cond.true.432, label %cond.false.435

cond.true.432:                                    ; preds = %land.lhs.true.428
  %236 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl433 = bitcast %union.tree_node* %236 to %struct.tree_decl*
  %rtl434 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl433, i32 0, i32 17
  %237 = load %struct.rtx_def*, %struct.rtx_def** %rtl434, align 8
  br label %cond.end.438

cond.false.435:                                   ; preds = %land.lhs.true.428
  %238 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %238, i8* null)
  %239 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl436 = bitcast %union.tree_node* %239 to %struct.tree_decl*
  %rtl437 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl436, i32 0, i32 17
  %240 = load %struct.rtx_def*, %struct.rtx_def** %rtl437, align 8
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.false.435, %cond.true.432
  %cond439 = phi %struct.rtx_def* [ %237, %cond.true.432 ], [ %240, %cond.false.435 ]
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond439, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 0
  %rtx442 = bitcast %union.rtunion_def* %arrayidx441 to %struct.rtx_def**
  %241 = load %struct.rtx_def*, %struct.rtx_def** %rtx442, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp443 = icmp ne %struct.rtx_def* %241, %242
  br i1 %cmp443, label %land.lhs.true.445, label %if.end.662

land.lhs.true.445:                                ; preds = %cond.end.438
  %243 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl446 = bitcast %union.tree_node* %243 to %struct.tree_decl*
  %rtl447 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl446, i32 0, i32 17
  %244 = load %struct.rtx_def*, %struct.rtx_def** %rtl447, align 8
  %tobool448 = icmp ne %struct.rtx_def* %244, null
  br i1 %tobool448, label %cond.true.449, label %cond.false.452

cond.true.449:                                    ; preds = %land.lhs.true.445
  %245 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl450 = bitcast %union.tree_node* %245 to %struct.tree_decl*
  %rtl451 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl450, i32 0, i32 17
  %246 = load %struct.rtx_def*, %struct.rtx_def** %rtl451, align 8
  br label %cond.end.455

cond.false.452:                                   ; preds = %land.lhs.true.445
  %247 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %247, i8* null)
  %248 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl453 = bitcast %union.tree_node* %248 to %struct.tree_decl*
  %rtl454 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl453, i32 0, i32 17
  %249 = load %struct.rtx_def*, %struct.rtx_def** %rtl454, align 8
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.452, %cond.true.449
  %cond456 = phi %struct.rtx_def* [ %246, %cond.true.449 ], [ %249, %cond.false.452 ]
  %fld457 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond456, i32 0, i32 1
  %arrayidx458 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld457, i32 0, i64 0
  %rtx459 = bitcast %union.rtunion_def* %arrayidx458 to %struct.rtx_def**
  %250 = load %struct.rtx_def*, %struct.rtx_def** %rtx459, align 8
  %251 = bitcast %struct.rtx_def* %250 to i32*
  %bf.load460 = load i32, i32* %251, align 8
  %bf.clear461 = and i32 %bf.load460, 65535
  %cmp462 = icmp eq i32 %bf.clear461, 67
  br i1 %cmp462, label %if.end.662, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.455
  %252 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl464 = bitcast %union.tree_node* %252 to %struct.tree_decl*
  %rtl465 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl464, i32 0, i32 17
  %253 = load %struct.rtx_def*, %struct.rtx_def** %rtl465, align 8
  %tobool466 = icmp ne %struct.rtx_def* %253, null
  br i1 %tobool466, label %cond.true.467, label %cond.false.470

cond.true.467:                                    ; preds = %lor.lhs.false
  %254 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl468 = bitcast %union.tree_node* %254 to %struct.tree_decl*
  %rtl469 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl468, i32 0, i32 17
  %255 = load %struct.rtx_def*, %struct.rtx_def** %rtl469, align 8
  br label %cond.end.473

cond.false.470:                                   ; preds = %lor.lhs.false
  %256 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %256, i8* null)
  %257 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl471 = bitcast %union.tree_node* %257 to %struct.tree_decl*
  %rtl472 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl471, i32 0, i32 17
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtl472, align 8
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.false.470, %cond.true.467
  %cond474 = phi %struct.rtx_def* [ %255, %cond.true.467 ], [ %258, %cond.false.470 ]
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond474, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 0
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %259 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  %260 = bitcast %struct.rtx_def* %259 to i32*
  %bf.load478 = load i32, i32* %260, align 8
  %bf.clear479 = and i32 %bf.load478, 65535
  %cmp480 = icmp eq i32 %bf.clear479, 68
  br i1 %cmp480, label %if.end.662, label %lor.lhs.false.482

lor.lhs.false.482:                                ; preds = %cond.end.473
  %261 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl483 = bitcast %union.tree_node* %261 to %struct.tree_decl*
  %rtl484 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl483, i32 0, i32 17
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtl484, align 8
  %tobool485 = icmp ne %struct.rtx_def* %262, null
  br i1 %tobool485, label %cond.true.486, label %cond.false.489

cond.true.486:                                    ; preds = %lor.lhs.false.482
  %263 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl487 = bitcast %union.tree_node* %263 to %struct.tree_decl*
  %rtl488 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl487, i32 0, i32 17
  %264 = load %struct.rtx_def*, %struct.rtx_def** %rtl488, align 8
  br label %cond.end.492

cond.false.489:                                   ; preds = %lor.lhs.false.482
  %265 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %265, i8* null)
  %266 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl490 = bitcast %union.tree_node* %266 to %struct.tree_decl*
  %rtl491 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl490, i32 0, i32 17
  %267 = load %struct.rtx_def*, %struct.rtx_def** %rtl491, align 8
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.false.489, %cond.true.486
  %cond493 = phi %struct.rtx_def* [ %264, %cond.true.486 ], [ %267, %cond.false.489 ]
  %fld494 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond493, i32 0, i32 1
  %arrayidx495 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld494, i32 0, i64 0
  %rtx496 = bitcast %union.rtunion_def* %arrayidx495 to %struct.rtx_def**
  %268 = load %struct.rtx_def*, %struct.rtx_def** %rtx496, align 8
  %269 = bitcast %struct.rtx_def* %268 to i32*
  %bf.load497 = load i32, i32* %269, align 8
  %bf.clear498 = and i32 %bf.load497, 65535
  %cmp499 = icmp eq i32 %bf.clear498, 54
  br i1 %cmp499, label %if.end.662, label %lor.lhs.false.501

lor.lhs.false.501:                                ; preds = %cond.end.492
  %270 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl502 = bitcast %union.tree_node* %270 to %struct.tree_decl*
  %rtl503 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl502, i32 0, i32 17
  %271 = load %struct.rtx_def*, %struct.rtx_def** %rtl503, align 8
  %tobool504 = icmp ne %struct.rtx_def* %271, null
  br i1 %tobool504, label %cond.true.505, label %cond.false.508

cond.true.505:                                    ; preds = %lor.lhs.false.501
  %272 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl506 = bitcast %union.tree_node* %272 to %struct.tree_decl*
  %rtl507 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl506, i32 0, i32 17
  %273 = load %struct.rtx_def*, %struct.rtx_def** %rtl507, align 8
  br label %cond.end.511

cond.false.508:                                   ; preds = %lor.lhs.false.501
  %274 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %274, i8* null)
  %275 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl509 = bitcast %union.tree_node* %275 to %struct.tree_decl*
  %rtl510 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl509, i32 0, i32 17
  %276 = load %struct.rtx_def*, %struct.rtx_def** %rtl510, align 8
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.false.508, %cond.true.505
  %cond512 = phi %struct.rtx_def* [ %273, %cond.true.505 ], [ %276, %cond.false.508 ]
  %fld513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond512, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld513, i32 0, i64 0
  %rtx515 = bitcast %union.rtunion_def* %arrayidx514 to %struct.rtx_def**
  %277 = load %struct.rtx_def*, %struct.rtx_def** %rtx515, align 8
  %278 = bitcast %struct.rtx_def* %277 to i32*
  %bf.load516 = load i32, i32* %278, align 8
  %bf.clear517 = and i32 %bf.load516, 65535
  %cmp518 = icmp eq i32 %bf.clear517, 55
  br i1 %cmp518, label %if.end.662, label %lor.lhs.false.520

lor.lhs.false.520:                                ; preds = %cond.end.511
  %279 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl521 = bitcast %union.tree_node* %279 to %struct.tree_decl*
  %rtl522 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl521, i32 0, i32 17
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtl522, align 8
  %tobool523 = icmp ne %struct.rtx_def* %280, null
  br i1 %tobool523, label %cond.true.524, label %cond.false.527

cond.true.524:                                    ; preds = %lor.lhs.false.520
  %281 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl525 = bitcast %union.tree_node* %281 to %struct.tree_decl*
  %rtl526 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl525, i32 0, i32 17
  %282 = load %struct.rtx_def*, %struct.rtx_def** %rtl526, align 8
  br label %cond.end.530

cond.false.527:                                   ; preds = %lor.lhs.false.520
  %283 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %283, i8* null)
  %284 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl528 = bitcast %union.tree_node* %284 to %struct.tree_decl*
  %rtl529 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl528, i32 0, i32 17
  %285 = load %struct.rtx_def*, %struct.rtx_def** %rtl529, align 8
  br label %cond.end.530

cond.end.530:                                     ; preds = %cond.false.527, %cond.true.524
  %cond531 = phi %struct.rtx_def* [ %282, %cond.true.524 ], [ %285, %cond.false.527 ]
  %fld532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond531, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld532, i32 0, i64 0
  %rtx534 = bitcast %union.rtunion_def* %arrayidx533 to %struct.rtx_def**
  %286 = load %struct.rtx_def*, %struct.rtx_def** %rtx534, align 8
  %287 = bitcast %struct.rtx_def* %286 to i32*
  %bf.load535 = load i32, i32* %287, align 8
  %bf.clear536 = and i32 %bf.load535, 65535
  %cmp537 = icmp eq i32 %bf.clear536, 58
  br i1 %cmp537, label %if.end.662, label %lor.lhs.false.539

lor.lhs.false.539:                                ; preds = %cond.end.530
  %288 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl540 = bitcast %union.tree_node* %288 to %struct.tree_decl*
  %rtl541 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl540, i32 0, i32 17
  %289 = load %struct.rtx_def*, %struct.rtx_def** %rtl541, align 8
  %tobool542 = icmp ne %struct.rtx_def* %289, null
  br i1 %tobool542, label %cond.true.543, label %cond.false.546

cond.true.543:                                    ; preds = %lor.lhs.false.539
  %290 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl544 = bitcast %union.tree_node* %290 to %struct.tree_decl*
  %rtl545 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl544, i32 0, i32 17
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtl545, align 8
  br label %cond.end.549

cond.false.546:                                   ; preds = %lor.lhs.false.539
  %292 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %292, i8* null)
  %293 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl547 = bitcast %union.tree_node* %293 to %struct.tree_decl*
  %rtl548 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl547, i32 0, i32 17
  %294 = load %struct.rtx_def*, %struct.rtx_def** %rtl548, align 8
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.546, %cond.true.543
  %cond550 = phi %struct.rtx_def* [ %291, %cond.true.543 ], [ %294, %cond.false.546 ]
  %fld551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond550, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld551, i32 0, i64 0
  %rtx553 = bitcast %union.rtunion_def* %arrayidx552 to %struct.rtx_def**
  %295 = load %struct.rtx_def*, %struct.rtx_def** %rtx553, align 8
  %296 = bitcast %struct.rtx_def* %295 to i32*
  %bf.load554 = load i32, i32* %296, align 8
  %bf.clear555 = and i32 %bf.load554, 65535
  %cmp556 = icmp eq i32 %bf.clear555, 134
  br i1 %cmp556, label %if.end.662, label %lor.lhs.false.558

lor.lhs.false.558:                                ; preds = %cond.end.549
  %297 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl559 = bitcast %union.tree_node* %297 to %struct.tree_decl*
  %rtl560 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl559, i32 0, i32 17
  %298 = load %struct.rtx_def*, %struct.rtx_def** %rtl560, align 8
  %tobool561 = icmp ne %struct.rtx_def* %298, null
  br i1 %tobool561, label %cond.true.562, label %cond.false.565

cond.true.562:                                    ; preds = %lor.lhs.false.558
  %299 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl563 = bitcast %union.tree_node* %299 to %struct.tree_decl*
  %rtl564 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl563, i32 0, i32 17
  %300 = load %struct.rtx_def*, %struct.rtx_def** %rtl564, align 8
  br label %cond.end.568

cond.false.565:                                   ; preds = %lor.lhs.false.558
  %301 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %301, i8* null)
  %302 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl566 = bitcast %union.tree_node* %302 to %struct.tree_decl*
  %rtl567 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl566, i32 0, i32 17
  %303 = load %struct.rtx_def*, %struct.rtx_def** %rtl567, align 8
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.565, %cond.true.562
  %cond569 = phi %struct.rtx_def* [ %300, %cond.true.562 ], [ %303, %cond.false.565 ]
  %fld570 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond569, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld570, i32 0, i64 0
  %rtx572 = bitcast %union.rtunion_def* %arrayidx571 to %struct.rtx_def**
  %304 = load %struct.rtx_def*, %struct.rtx_def** %rtx572, align 8
  %305 = bitcast %struct.rtx_def* %304 to i32*
  %bf.load573 = load i32, i32* %305, align 8
  %bf.clear574 = and i32 %bf.load573, 65535
  %cmp575 = icmp eq i32 %bf.clear574, 56
  br i1 %cmp575, label %if.end.662, label %lor.lhs.false.577

lor.lhs.false.577:                                ; preds = %cond.end.568
  %306 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl578 = bitcast %union.tree_node* %306 to %struct.tree_decl*
  %rtl579 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl578, i32 0, i32 17
  %307 = load %struct.rtx_def*, %struct.rtx_def** %rtl579, align 8
  %tobool580 = icmp ne %struct.rtx_def* %307, null
  br i1 %tobool580, label %cond.true.581, label %cond.false.584

cond.true.581:                                    ; preds = %lor.lhs.false.577
  %308 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl582 = bitcast %union.tree_node* %308 to %struct.tree_decl*
  %rtl583 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl582, i32 0, i32 17
  %309 = load %struct.rtx_def*, %struct.rtx_def** %rtl583, align 8
  br label %cond.end.587

cond.false.584:                                   ; preds = %lor.lhs.false.577
  %310 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %310, i8* null)
  %311 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl585 = bitcast %union.tree_node* %311 to %struct.tree_decl*
  %rtl586 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl585, i32 0, i32 17
  %312 = load %struct.rtx_def*, %struct.rtx_def** %rtl586, align 8
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.false.584, %cond.true.581
  %cond588 = phi %struct.rtx_def* [ %309, %cond.true.581 ], [ %312, %cond.false.584 ]
  %fld589 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond588, i32 0, i32 1
  %arrayidx590 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld589, i32 0, i64 0
  %rtx591 = bitcast %union.rtunion_def* %arrayidx590 to %struct.rtx_def**
  %313 = load %struct.rtx_def*, %struct.rtx_def** %rtx591, align 8
  %314 = bitcast %struct.rtx_def* %313 to i32*
  %bf.load592 = load i32, i32* %314, align 8
  %bf.clear593 = and i32 %bf.load592, 65535
  %cmp594 = icmp eq i32 %bf.clear593, 140
  br i1 %cmp594, label %if.end.662, label %if.then.596

if.then.596:                                      ; preds = %cond.end.587
  store i32 160, i32* @current_sym_code, align 4
  %315 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl597 = bitcast %union.tree_node* %315 to %struct.tree_decl*
  %rtl598 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl597, i32 0, i32 17
  %316 = load %struct.rtx_def*, %struct.rtx_def** %rtl598, align 8
  %tobool599 = icmp ne %struct.rtx_def* %316, null
  br i1 %tobool599, label %cond.true.600, label %cond.false.603

cond.true.600:                                    ; preds = %if.then.596
  %317 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl601 = bitcast %union.tree_node* %317 to %struct.tree_decl*
  %rtl602 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl601, i32 0, i32 17
  %318 = load %struct.rtx_def*, %struct.rtx_def** %rtl602, align 8
  br label %cond.end.606

cond.false.603:                                   ; preds = %if.then.596
  %319 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %319, i8* null)
  %320 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl604 = bitcast %union.tree_node* %320 to %struct.tree_decl*
  %rtl605 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl604, i32 0, i32 17
  %321 = load %struct.rtx_def*, %struct.rtx_def** %rtl605, align 8
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.false.603, %cond.true.600
  %cond607 = phi %struct.rtx_def* [ %318, %cond.true.600 ], [ %321, %cond.false.603 ]
  %fld608 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond607, i32 0, i32 1
  %arrayidx609 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld608, i32 0, i64 0
  %rtx610 = bitcast %union.rtunion_def* %arrayidx609 to %struct.rtx_def**
  %322 = load %struct.rtx_def*, %struct.rtx_def** %rtx610, align 8
  %323 = bitcast %struct.rtx_def* %322 to i32*
  %bf.load611 = load i32, i32* %323, align 8
  %bf.clear612 = and i32 %bf.load611, 65535
  %cmp613 = icmp eq i32 %bf.clear612, 61
  br i1 %cmp613, label %if.then.615, label %if.else.616

if.then.615:                                      ; preds = %cond.end.606
  store i32 0, i32* @current_sym_value, align 4
  br label %if.end.638

if.else.616:                                      ; preds = %cond.end.606
  %324 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl617 = bitcast %union.tree_node* %324 to %struct.tree_decl*
  %rtl618 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl617, i32 0, i32 17
  %325 = load %struct.rtx_def*, %struct.rtx_def** %rtl618, align 8
  %tobool619 = icmp ne %struct.rtx_def* %325, null
  br i1 %tobool619, label %cond.true.620, label %cond.false.623

cond.true.620:                                    ; preds = %if.else.616
  %326 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl621 = bitcast %union.tree_node* %326 to %struct.tree_decl*
  %rtl622 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl621, i32 0, i32 17
  %327 = load %struct.rtx_def*, %struct.rtx_def** %rtl622, align 8
  br label %cond.end.626

cond.false.623:                                   ; preds = %if.else.616
  %328 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %328, i8* null)
  %329 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl624 = bitcast %union.tree_node* %329 to %struct.tree_decl*
  %rtl625 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl624, i32 0, i32 17
  %330 = load %struct.rtx_def*, %struct.rtx_def** %rtl625, align 8
  br label %cond.end.626

cond.end.626:                                     ; preds = %cond.false.623, %cond.true.620
  %cond627 = phi %struct.rtx_def* [ %327, %cond.true.620 ], [ %330, %cond.false.623 ]
  %fld628 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond627, i32 0, i32 1
  %arrayidx629 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld628, i32 0, i64 0
  %rtx630 = bitcast %union.rtunion_def* %arrayidx629 to %struct.rtx_def**
  %331 = load %struct.rtx_def*, %struct.rtx_def** %rtx630, align 8
  %fld631 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %331, i32 0, i32 1
  %arrayidx632 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld631, i32 0, i64 1
  %rtx633 = bitcast %union.rtunion_def* %arrayidx632 to %struct.rtx_def**
  %332 = load %struct.rtx_def*, %struct.rtx_def** %rtx633, align 8
  %fld634 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %332, i32 0, i32 1
  %arrayidx635 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld634, i32 0, i64 0
  %rtwint636 = bitcast %union.rtunion_def* %arrayidx635 to i64*
  %333 = load i64, i64* %rtwint636, align 8
  %conv637 = trunc i64 %333 to i32
  store i32 %conv637, i32* @current_sym_value, align 4
  br label %if.end.638

if.end.638:                                       ; preds = %cond.end.626, %if.then.615
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %334 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl639 = bitcast %union.tree_node* %334 to %struct.tree_decl*
  %name640 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl639, i32 0, i32 8
  %335 = load %union.tree_node*, %union.tree_node** %name640, align 8
  %tobool641 = icmp ne %union.tree_node* %335, null
  br i1 %tobool641, label %if.then.642, label %if.else.657

if.then.642:                                      ; preds = %if.end.638
  %336 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl643 = bitcast %union.tree_node* %336 to %struct.tree_decl*
  %name644 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl643, i32 0, i32 8
  %337 = load %union.tree_node*, %union.tree_node** %name644, align 8
  %identifier645 = bitcast %union.tree_node* %337 to %struct.tree_identifier*
  %id646 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier645, i32 0, i32 1
  %str647 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id646, i32 0, i32 1
  %338 = load i8*, i8** %str647, align 8
  %call648 = call i64 @strlen(i8* %338) #6
  %add649 = add i64 2, %call648
  %conv650 = trunc i64 %add649 to i32
  store i32 %conv650, i32* @current_sym_nchars, align 4
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %340 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl651 = bitcast %union.tree_node* %340 to %struct.tree_decl*
  %name652 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl651, i32 0, i32 8
  %341 = load %union.tree_node*, %union.tree_node** %name652, align 8
  %identifier653 = bitcast %union.tree_node* %341 to %struct.tree_identifier*
  %id654 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier653, i32 0, i32 1
  %str655 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id654, i32 0, i32 1
  %342 = load i8*, i8** %str655, align 8
  %call656 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %342, i32 112)
  br label %if.end.659

if.else.657:                                      ; preds = %if.end.638
  store i32 8, i32* @current_sym_nchars, align 4
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call658 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %343, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 112)
  br label %if.end.659

if.end.659:                                       ; preds = %if.else.657, %if.then.642
  %344 = load i32, i32* @current_sym_value, align 4
  store i32 %344, i32* @current_sym_value, align 4
  %345 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common660 = bitcast %union.tree_node* %345 to %struct.tree_common*
  %type661 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common660, i32 0, i32 1
  %346 = load %union.tree_node*, %union.tree_node** %type661, align 8
  call void @dbxout_type(%union.tree_node* %346, i32 0)
  %347 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %347)
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.659, %cond.end.587, %cond.end.568, %cond.end.549, %cond.end.530, %cond.end.511, %cond.end.492, %cond.end.473, %cond.end.455, %cond.end.438, %cond.end.422
  br label %if.end.663

if.end.663:                                       ; preds = %if.end.662, %if.end.408
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %if.end.310
  br label %if.end.665

if.end.665:                                       ; preds = %if.end.664, %if.end.141
  br label %if.end.666

if.end.666:                                       ; preds = %if.end.665, %if.end.52
  br label %if.end.667

if.end.667:                                       ; preds = %if.end.666, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.667
  %348 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common668 = bitcast %union.tree_node* %348 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common668, i32 0, i32 0
  %349 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %349, %union.tree_node** %parms.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @dbxout_reg_parms(%union.tree_node* %parms) #0 {
entry:
  %parms.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %parms, %union.tree_node** %parms.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %2 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool1 = icmp ne %union.tree_node* %2, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.115

land.lhs.true:                                    ; preds = %for.body
  %3 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl2 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 19
  %r = bitcast %union.anon.1* %u2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end.115

if.then:                                          ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %6)
  %7 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl3 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 17
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool4 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl5 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl6, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %11, i8* null)
  %12 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl7 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %rtl8 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 17
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtl8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %10, %cond.true ], [ %13, %cond.false ]
  %14 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load9 = load i32, i32* %14, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 61
  br i1 %cmp11, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %cond.end
  %15 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl13 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %rtl14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtl14, align 8
  %tobool15 = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %land.lhs.true.12
  %17 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl17 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %rtl18 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtl18, align 8
  br label %cond.end.22

cond.false.19:                                    ; preds = %land.lhs.true.12
  %19 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %19, i8* null)
  %20 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl20 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %rtl21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtl21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.16
  %cond23 = phi %struct.rtx_def* [ %18, %cond.true.16 ], [ %21, %cond.false.19 ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %22 = load i32, i32* %rtuint, align 4
  %cmp24 = icmp ult i32 %22, 53
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %cond.end.22
  %23 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %24 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common = bitcast %union.tree_node* %24 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type, align 8
  %26 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl26 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %rtl27 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 17
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtl27, align 8
  %tobool28 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %if.then.25
  %28 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl30 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %rtl31 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl30, i32 0, i32 17
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtl31, align 8
  br label %cond.end.35

cond.false.32:                                    ; preds = %if.then.25
  %30 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %30, i8* null)
  %31 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl33 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %rtl34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 17
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtl34, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.29
  %cond36 = phi %struct.rtx_def* [ %29, %cond.true.29 ], [ %32, %cond.false.32 ]
  %call = call i32 @dbxout_symbol_location(%union.tree_node* %23, %union.tree_node* %25, i8* null, %struct.rtx_def* %cond36)
  br label %if.end.114

if.else:                                          ; preds = %cond.end.22, %cond.end
  %33 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl37 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %rtl38 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 17
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtl38, align 8
  %tobool39 = icmp ne %struct.rtx_def* %34, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.43

cond.true.40:                                     ; preds = %if.else
  %35 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl41 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %rtl42 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 17
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtl42, align 8
  br label %cond.end.46

cond.false.43:                                    ; preds = %if.else
  %37 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %37, i8* null)
  %38 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl44 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %rtl45 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl44, i32 0, i32 17
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtl45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.40
  %cond47 = phi %struct.rtx_def* [ %36, %cond.true.40 ], [ %39, %cond.false.43 ]
  %40 = bitcast %struct.rtx_def* %cond47 to i32*
  %bf.load48 = load i32, i32* %40, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 65
  br i1 %cmp50, label %if.then.51, label %if.else.66

if.then.51:                                       ; preds = %cond.end.46
  %41 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %42 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common52 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %type53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 1
  %43 = load %union.tree_node*, %union.tree_node** %type53, align 8
  %44 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl54 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %rtl55 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl54, i32 0, i32 17
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtl55, align 8
  %tobool56 = icmp ne %struct.rtx_def* %45, null
  br i1 %tobool56, label %cond.true.57, label %cond.false.60

cond.true.57:                                     ; preds = %if.then.51
  %46 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl58 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %rtl59 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 17
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtl59, align 8
  br label %cond.end.63

cond.false.60:                                    ; preds = %if.then.51
  %48 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %48, i8* null)
  %49 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl61 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %rtl62 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl61, i32 0, i32 17
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtl62, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.57
  %cond64 = phi %struct.rtx_def* [ %47, %cond.true.57 ], [ %50, %cond.false.60 ]
  %call65 = call i32 @dbxout_symbol_location(%union.tree_node* %41, %union.tree_node* %43, i8* null, %struct.rtx_def* %cond64)
  br label %if.end.113

if.else.66:                                       ; preds = %cond.end.46
  %51 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl67 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %rtl68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 17
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtl68, align 8
  %tobool69 = icmp ne %struct.rtx_def* %52, null
  br i1 %tobool69, label %cond.true.70, label %cond.false.73

cond.true.70:                                     ; preds = %if.else.66
  %53 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl71 = bitcast %union.tree_node* %53 to %struct.tree_decl*
  %rtl72 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl71, i32 0, i32 17
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtl72, align 8
  br label %cond.end.76

cond.false.73:                                    ; preds = %if.else.66
  %55 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %55, i8* null)
  %56 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl74 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %rtl75 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl74, i32 0, i32 17
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtl75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.70
  %cond77 = phi %struct.rtx_def* [ %54, %cond.true.70 ], [ %57, %cond.false.73 ]
  %58 = bitcast %struct.rtx_def* %cond77 to i32*
  %bf.load78 = load i32, i32* %58, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp eq i32 %bf.clear79, 66
  br i1 %cmp80, label %land.lhs.true.81, label %if.end

land.lhs.true.81:                                 ; preds = %cond.end.76
  %59 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl82 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %rtl83 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl82, i32 0, i32 17
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtl83, align 8
  %tobool84 = icmp ne %struct.rtx_def* %60, null
  br i1 %tobool84, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %land.lhs.true.81
  %61 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl86 = bitcast %union.tree_node* %61 to %struct.tree_decl*
  %rtl87 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl86, i32 0, i32 17
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtl87, align 8
  br label %cond.end.91

cond.false.88:                                    ; preds = %land.lhs.true.81
  %63 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %63, i8* null)
  %64 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl89 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %rtl90 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl89, i32 0, i32 17
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtl90, align 8
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.88, %cond.true.85
  %cond92 = phi %struct.rtx_def* [ %62, %cond.true.85 ], [ %65, %cond.false.88 ]
  %66 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl93 = bitcast %union.tree_node* %66 to %struct.tree_decl*
  %u294 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl93, i32 0, i32 19
  %r95 = bitcast %union.anon.1* %u294 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %r95, align 8
  %call96 = call i32 @rtx_equal_p(%struct.rtx_def* %cond92, %struct.rtx_def* %67)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end, label %if.then.98

if.then.98:                                       ; preds = %cond.end.91
  %68 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %69 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common99 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %type100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 1
  %70 = load %union.tree_node*, %union.tree_node** %type100, align 8
  %71 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl101 = bitcast %union.tree_node* %71 to %struct.tree_decl*
  %rtl102 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl101, i32 0, i32 17
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtl102, align 8
  %tobool103 = icmp ne %struct.rtx_def* %72, null
  br i1 %tobool103, label %cond.true.104, label %cond.false.107

cond.true.104:                                    ; preds = %if.then.98
  %73 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl105 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %rtl106 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl105, i32 0, i32 17
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtl106, align 8
  br label %cond.end.110

cond.false.107:                                   ; preds = %if.then.98
  %75 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %75, i8* null)
  %76 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %decl108 = bitcast %union.tree_node* %76 to %struct.tree_decl*
  %rtl109 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl108, i32 0, i32 17
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtl109, align 8
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.107, %cond.true.104
  %cond111 = phi %struct.rtx_def* [ %74, %cond.true.104 ], [ %77, %cond.false.107 ]
  %call112 = call i32 @dbxout_symbol_location(%union.tree_node* %68, %union.tree_node* %70, i8* null, %struct.rtx_def* %cond111)
  br label %if.end

if.end:                                           ; preds = %cond.end.110, %cond.end.91, %cond.end.76
  br label %if.end.113

if.end.113:                                       ; preds = %if.end, %cond.end.63
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %cond.end.35
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %78 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  %common116 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common116, i32 0, i32 0
  %79 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %79, %union.tree_node** %parms.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %union.tree_node* @getdecls() #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i8* @getpwd() #1

declare noalias i8* @concat(i8*, ...) #1

declare void @output_quoted_string(%struct._IO_FILE*, i8*) #1

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare void @text_section() #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_typedefs(%union.tree_node* %syms) #0 {
entry:
  %syms.addr = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node* %syms, %union.tree_node** %syms.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain, align 8
  call void @dbxout_typedefs(%union.tree_node* %2)
  %3 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then.2, label %if.end.27

if.then.2:                                        ; preds = %if.then
  %4 = load %union.tree_node*, %union.tree_node** %syms.addr, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type4, align 8
  store %union.tree_node* %5, %union.tree_node** %type, align 8
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type5 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 11
  %7 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool6 = icmp ne %union.tree_node* %7, null
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.2
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type7 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %name8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 11
  %9 = load %union.tree_node*, %union.tree_node** %name8, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 33
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type15 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp16 = icmp ne %union.tree_node* %11, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type18 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %name19 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i32 0, i32 11
  %13 = load %union.tree_node*, %union.tree_node** %name19, align 8
  %common20 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load21 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr = lshr i32 %bf.load21, 14
  %bf.clear22 = and i32 %bf.lshr, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %if.end, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.17
  %14 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type25 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %name26 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type25, i32 0, i32 11
  %15 = load %union.tree_node*, %union.tree_node** %name26, align 8
  %call = call i32 @dbxout_symbol(%union.tree_node* %15, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.24, %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true, %if.then.2
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @dbxout_source_file(%struct._IO_FILE* %file, i8* %filename) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %ltext_label_name = alloca [100 x i8], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** @lastfile, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8*, i8** @lastfile, align 8
  %call = call i32 @strcmp(i8* %2, i8* %3) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.14

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %ltext_label_name, i32 0, i32 0
  %4 = load i32, i32* @source_label_number, align 4
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %4) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load i8*, i8** %filename.addr, align 8
  call void @output_quoted_string(%struct._IO_FILE* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 132)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %ltext_label_name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %9, i8* %arraydecay5)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call6 = call i32 @fputc(i32 10, %struct._IO_FILE* %10)
  %11 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp7 = icmp ne %union.tree_node* %11, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %do.end
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 15
  %13 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp9 = icmp ne %union.tree_node* %13, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true.8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.8, %do.end
  call void @text_section()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %do.body.11

do.body.11:                                       ; preds = %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load i32, i32* @source_label_number, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %15)
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.11
  %16 = load i32, i32* @source_label_number, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @source_label_number, align 4
  %17 = load i8*, i8** %filename.addr, align 8
  store i8* %17, i8** @lastfile, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %do.end.13, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @dbxout_block(%union.tree_node* %block, i32 %depth, %union.tree_node* %args) #0 {
entry:
  %block.addr = alloca %union.tree_node*, align 8
  %depth.addr = alloca i32, align 4
  %args.addr = alloca %union.tree_node*, align 8
  %blocknum = alloca i32, align 4
  %begin_label = alloca i8*, align 8
  %did_output = alloca i32, align 4
  %buf = alloca [20 x i8], align 16
  %decl36 = alloca %union.tree_node*, align 8
  %buf61 = alloca [20 x i8], align 16
  store %union.tree_node* %block, %union.tree_node** %block.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 -1, i32* %blocknum, align 4
  %0 = load %union.tree_node*, %union.tree_node** @current_function_func_begin_label, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @current_function_func_begin_label, align 8
  %identifier = bitcast %union.tree_node* %1 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %2 = load i8*, i8** %str, align 8
  store i8* %2, i8** %begin_label, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl1 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl2, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @make_decl_rtl(%union.tree_node* %7, i8* null)
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl3 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %rtl4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 17
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtl4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %6, %cond.true ], [ %9, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx6 to i8**
  %11 = load i8*, i8** %rtstr, align 8
  store i8* %11, i8** %begin_label, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %if.end
  %12 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %tobool7 = icmp ne %union.tree_node* %12, null
  br i1 %tobool7, label %while.body, label %while.end.74

while.body:                                       ; preds = %while.cond
  %13 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %common = bitcast %union.tree_node* %13 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %used_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 1
  %tobool8 = icmp ne i32 %bf.clear, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %while.body
  %14 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %common9 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load10 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 14
  %bf.clear12 = and i32 %bf.lshr11, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.71

if.then.14:                                       ; preds = %land.lhs.true
  store i32 0, i32* %did_output, align 4
  %15 = load i32, i32* @debug_info_level, align 4
  %cmp15 = icmp ne i32 %15, 1
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.14
  %16 = load i32, i32* %depth.addr, align 4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.14
  %17 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block18 = bitcast %union.tree_node* %17 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block18, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %vars, align 8
  %call = call i32 @dbxout_syms(%union.tree_node* %18)
  store i32 %call, i32* %did_output, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %lor.lhs.false
  %19 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %tobool20 = icmp ne %union.tree_node* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %20 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  call void @dbxout_reg_parms(%union.tree_node* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %21 = load i32, i32* %depth.addr, align 4
  %cmp23 = icmp sgt i32 %21, 0
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.55

land.lhs.true.24:                                 ; preds = %if.end.22
  %22 = load i32, i32* %did_output, align 4
  %tobool25 = icmp ne i32 %22, 0
  br i1 %tobool25, label %if.then.26, label %if.end.55

if.then.26:                                       ; preds = %land.lhs.true.24
  %23 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block27 = bitcast %union.tree_node* %23 to %struct.tree_block*
  %block_num = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block27, i32 0, i32 1
  %bf.load28 = load i32, i32* %block_num, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 2
  store i32 %bf.lshr29, i32* %blocknum, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %24 = load i32, i32* %blocknum, align 4
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %24) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %25 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block31 = bitcast %union.tree_node* %25 to %struct.tree_block*
  %handler_block_flag = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block31, i32 0, i32 1
  %bf.load32 = load i32, i32* %handler_block_flag, align 8
  %bf.clear33 = and i32 %bf.load32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.50

if.then.35:                                       ; preds = %do.end
  %26 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block37 = bitcast %union.tree_node* %26 to %struct.tree_block*
  %vars38 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block37, i32 0, i32 2
  %27 = load %union.tree_node*, %union.tree_node** %vars38, align 8
  store %union.tree_node* %27, %union.tree_node** %decl36, align 8
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.41, %if.then.35
  %28 = load %union.tree_node*, %union.tree_node** %decl36, align 8
  %tobool40 = icmp ne %union.tree_node* %28, null
  br i1 %tobool40, label %while.body.41, label %while.end

while.body.41:                                    ; preds = %while.cond.39
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %30 = load %union.tree_node*, %union.tree_node** %decl36, align 8
  %decl42 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl42, i32 0, i32 8
  %31 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier43 = bitcast %union.tree_node* %31 to %struct.tree_identifier*
  %id44 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier43, i32 0, i32 1
  %str45 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id44, i32 0, i32 1
  %32 = load i8*, i8** %str45, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %32, i32 84)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay47 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %33, i8* %arraydecay47)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %35 = load %union.tree_node*, %union.tree_node** %decl36, align 8
  %common49 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 0
  %36 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %36, %union.tree_node** %decl36, align 8
  br label %while.cond.39

while.end:                                        ; preds = %while.cond.39
  br label %if.end.50

if.end.50:                                        ; preds = %while.end, %do.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 192)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay52 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %38, i8* %arraydecay52)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call53 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %41 = load i8*, i8** %begin_label, align 8
  call void @assemble_name(%struct._IO_FILE* %40, i8* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.50, %land.lhs.true.24, %if.end.22
  %43 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block56 = bitcast %union.tree_node* %43 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block56, i32 0, i32 3
  %44 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  %45 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %45, 1
  call void @dbxout_block(%union.tree_node* %44, i32 %add, %union.tree_node* null)
  %46 = load i32, i32* %depth.addr, align 4
  %cmp57 = icmp sgt i32 %46, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.70

land.lhs.true.58:                                 ; preds = %if.end.55
  %47 = load i32, i32* %did_output, align 4
  %tobool59 = icmp ne i32 %47, 0
  br i1 %tobool59, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %land.lhs.true.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.60
  %arraydecay63 = getelementptr inbounds [20 x i8], [20 x i8]* %buf61, i32 0, i32 0
  %48 = load i32, i32* %blocknum, align 4
  %call64 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %48) #5
  br label %do.end.65

do.end.65:                                        ; preds = %do.body.62
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 224)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay67 = getelementptr inbounds [20 x i8], [20 x i8]* %buf61, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %50, i8* %arraydecay67)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call68 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %53 = load i8*, i8** %begin_label, align 8
  call void @assemble_name(%struct._IO_FILE* %52, i8* %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.65, %land.lhs.true.58, %if.end.55
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true, %while.body
  %55 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %common72 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %chain73 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 0
  %56 = load %union.tree_node*, %union.tree_node** %chain73, align 8
  store %union.tree_node* %56, %union.tree_node** %block.addr, align 8
  br label %while.cond

while.end.74:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_function_end() #0 {
entry:
  %lscope_label_name = alloca [100 x i8], align 16
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %lscope_label_name, i32 0, i32 0
  %0 = load i32, i32* @dbxout_function_end.scope_labelno, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %0) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %2 = load i32, i32* @dbxout_function_end.scope_labelno, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %2)
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.1
  %3 = load i32, i32* @dbxout_function_end.scope_labelno, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @dbxout_function_end.scope_labelno, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 36)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %lscope_label_name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %5, i8* %arraydecay5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call6 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.3
  %10 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl7 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl8 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl8, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.3
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @make_decl_rtl(%union.tree_node* %12, i8* null)
  %13 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl9 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %rtl10 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl9, i32 0, i32 17
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtl10, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %11, %cond.true ], [ %14, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx12 to i8**
  %16 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %7, i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare void @asm_fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @dbxout_type_index(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %struct.typeinfo*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %symtab = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 10
  %address = bitcast %union.anon.2* %symtab to i32*
  %1 = load i32, i32* %address, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %arrayidx = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %2, i64 %idxprom
  store %struct.typeinfo* %arrayidx, %struct.typeinfo** %t, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %4 = load %struct.typeinfo*, %struct.typeinfo** %t, align 8
  %file_number = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %4, i32 0, i32 1
  %5 = load i32, i32* %file_number, align 4
  %6 = load %struct.typeinfo*, %struct.typeinfo** %t, align 8
  %type_number = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %6, i32 0, i32 2
  %7 = load i32, i32* %type_number, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 %5, i32 %7)
  %8 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %8, 9
  store i32 %add, i32* @current_sym_nchars, align 4
  ret void
}

declare %union.tree_node* @build_qualified_type(%union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_range_type(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common2 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type3, align 8
  call void @dbxout_type(%union.tree_node* %4, i32 0)
  br label %if.end.12

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 6
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type(%union.tree_node* %6, i32 0)
  br label %if.end.11

if.else.6:                                        ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type7 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %symtab = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 10
  %address = bitcast %union.anon.2* %symtab to i32*
  %8 = load i32, i32* %address, align 4
  %cmp8 = icmp ne i32 %8, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.6
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @dbxout_type_index(%union.tree_node* %9)
  br label %if.end

if.else.10:                                       ; preds = %if.else.6
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  call void @dbxout_type_index(%union.tree_node* %10)
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type13 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 12
  %12 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %cmp14 = icmp ne %union.tree_node* %12, null
  br i1 %cmp14, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.end.12
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type15 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %minval16 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 12
  %14 = load %union.tree_node*, %union.tree_node** %minval16, align 8
  %call17 = call i32 @host_integerp(%union.tree_node* %14, i32 0)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call20 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %15)
  %16 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* @current_sym_nchars, align 4
  %17 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type21 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %minval22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 12
  %18 = load %union.tree_node*, %union.tree_node** %minval22, align 8
  %call23 = call i64 @tree_low_cst(%union.tree_node* %18, i32 0)
  call void @print_wide_int(i64 %call23)
  br label %if.end.27

if.else.24:                                       ; preds = %land.lhs.true, %if.end.12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  %20 = load i32, i32* @current_sym_nchars, align 4
  %add26 = add nsw i32 %20, 2
  store i32 %add26, i32* @current_sym_nchars, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.19
  %21 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type28 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i32 0, i32 13
  %22 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %cmp29 = icmp ne %union.tree_node* %22, null
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.43

land.lhs.true.30:                                 ; preds = %if.end.27
  %23 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type31 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %maxval32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 13
  %24 = load %union.tree_node*, %union.tree_node** %maxval32, align 8
  %call33 = call i32 @host_integerp(%union.tree_node* %24, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.43

if.then.35:                                       ; preds = %land.lhs.true.30
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call36 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %25)
  %26 = load i32, i32* @current_sym_nchars, align 4
  %add37 = add nsw i32 %26, 1
  store i32 %add37, i32* @current_sym_nchars, align 4
  %27 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type38 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %maxval39 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type38, i32 0, i32 13
  %28 = load %union.tree_node*, %union.tree_node** %maxval39, align 8
  %call40 = call i64 @tree_low_cst(%union.tree_node* %28, i32 0)
  call void @print_wide_int(i64 %call40)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call41 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %29)
  %30 = load i32, i32* @current_sym_nchars, align 4
  %add42 = add nsw i32 %30, 1
  store i32 %add42, i32* @current_sym_nchars, align 4
  br label %if.end.46

if.else.43:                                       ; preds = %land.lhs.true.30, %if.end.27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  %32 = load i32, i32* @current_sym_nchars, align 4
  %add45 = add nsw i32 %32, 4
  store i32 %add45, i32* @current_sym_nchars, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.35
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_int_cst_octal(%union.tree_node* %c) #0 {
entry:
  %c.addr = alloca %union.tree_node*, align 8
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  %excess = alloca i32, align 4
  %width = alloca i32, align 4
  %beg = alloca i64, align 8
  %middle = alloca i64, align 8
  %end = alloca i64, align 8
  store %union.tree_node* %c, %union.tree_node** %c.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst = bitcast %union.tree_node* %0 to %struct.tree_int_cst*
  %int_cst1 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high2 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst1, i32 0, i32 1
  %1 = load i64, i64* %high2, align 8
  store i64 %1, i64* %high, align 8
  %2 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %int_cst3 = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst4 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst3, i32 0, i32 2
  %low5 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst4, i32 0, i32 0
  %3 = load i64, i64* %low5, align 8
  store i64 %3, i64* %low, align 8
  store i32 2, i32* %excess, align 4
  %4 = load %union.tree_node*, %union.tree_node** %c.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type6 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  store i32 %bf.clear, i32* %width, align 4
  %6 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %6, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.19

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %width, align 4
  %cmp7 = icmp ugt i32 %7, 64
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %8 = load i32, i32* %width, align 4
  %sub = sub i32 %8, 64
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %sub9 = sub nsw i64 %shl, 1
  %9 = load i64, i64* %high, align 8
  %and = and i64 %9, %sub9
  store i64 %and, i64* %high, align 8
  br label %if.end.18

if.else.10:                                       ; preds = %if.else
  %10 = load i32, i32* %width, align 4
  %cmp11 = icmp eq i32 %10, 64
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.10
  store i64 0, i64* %high, align 8
  br label %if.end

if.else.13:                                       ; preds = %if.else.10
  store i64 0, i64* %high, align 8
  %11 = load i32, i32* %width, align 4
  %sh_prom14 = zext i32 %11 to i64
  %shl15 = shl i64 1, %sh_prom14
  %sub16 = sub nsw i64 %shl15, 1
  %12 = load i64, i64* %low, align 8
  %and17 = and i64 %12, %sub16
  store i64 %and17, i64* %low, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0))
  %14 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* @current_sym_nchars, align 4
  %15 = load i32, i32* %excess, align 4
  %cmp20 = icmp eq i32 %15, 3
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.end.19
  %16 = load i64, i64* %high, align 8
  call void @print_octal(i64 %16, i32 21)
  %17 = load i64, i64* %low, align 8
  call void @print_octal(i64 %17, i32 21)
  br label %if.end.36

if.else.22:                                       ; preds = %if.end.19
  %18 = load i64, i64* %high, align 8
  %19 = load i32, i32* %excess, align 4
  %sh_prom23 = zext i32 %19 to i64
  %shr = lshr i64 %18, %sh_prom23
  store i64 %shr, i64* %beg, align 8
  %20 = load i64, i64* %high, align 8
  %21 = load i32, i32* %excess, align 4
  %sh_prom24 = zext i32 %21 to i64
  %shl25 = shl i64 1, %sh_prom24
  %sub26 = sub nsw i64 %shl25, 1
  %and27 = and i64 %20, %sub26
  %22 = load i32, i32* %excess, align 4
  %sub28 = sub nsw i32 3, %22
  %sh_prom29 = zext i32 %sub28 to i64
  %shl30 = shl i64 %and27, %sh_prom29
  %23 = load i64, i64* %low, align 8
  %shr31 = lshr i64 %23, 63
  %or = or i64 %shl30, %shr31
  store i64 %or, i64* %middle, align 8
  %24 = load i64, i64* %low, align 8
  %and32 = and i64 %24, 9223372036854775807
  store i64 %and32, i64* %end, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %26 = load i64, i64* %beg, align 8
  %conv = trunc i64 %26 to i32
  %27 = load i64, i64* %middle, align 8
  %conv33 = trunc i64 %27 to i32
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %conv, i32 %conv33)
  %28 = load i32, i32* @current_sym_nchars, align 4
  %add35 = add nsw i32 %28, 2
  store i32 %add35, i32* @current_sym_nchars, align 4
  %29 = load i64, i64* %end, align 8
  call void @print_octal(i64 %29, i32 21)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.22, %if.then.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_wide_int(i64 %c) #0 {
entry:
  %c.addr = alloca i64, align 8
  %digs = alloca i32, align 4
  store i64 %c, i64* %c.addr, align 8
  store i32 0, i32* %digs, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1 = load i64, i64* %c.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %1)
  %2 = load i64, i64* %c.addr, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %digs, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %digs, align 4
  %4 = load i64, i64* %c.addr, align 8
  %sub = sub nsw i64 0, %4
  store i64 %sub, i64* %c.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i64, i64* %c.addr, align 8
  %cmp1 = icmp sgt i64 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, i64* %c.addr, align 8
  %div = sdiv i64 %6, 10
  store i64 %div, i64* %c.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %digs, align 4
  %inc2 = add nsw i32 %7, 1
  store i32 %inc2, i32* %digs, align 4
  %8 = load i32, i32* %digs, align 4
  %9 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* @current_sym_nchars, align 4
  ret void
}

declare i64 @int_size_in_bytes(%union.tree_node*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_type_name(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 11
  %1 = load %union.tree_node*, %union.tree_node** %name, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1815, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.dbxout_type_name, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %name3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 11
  %3 = load %union.tree_node*, %union.tree_node** %name3, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp4 = icmp eq i32 %bf.clear, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type6 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %name7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 11
  %5 = load %union.tree_node*, %union.tree_node** %name7, align 8
  store %union.tree_node* %5, %union.tree_node** %t, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type8 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %name9 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 11
  %7 = load %union.tree_node*, %union.tree_node** %name9, align 8
  %common10 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp eq i32 %bf.clear13, 33
  br i1 %cmp14, label %if.then.15, label %if.else.19

if.then.15:                                       ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type16 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %name17 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 11
  %9 = load %union.tree_node*, %union.tree_node** %name17, align 8
  %decl = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %name18 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %10 = load %union.tree_node*, %union.tree_node** %name18, align 8
  store %union.tree_node* %10, %union.tree_node** %t, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1825, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.dbxout_type_name, i32 0, i32 0)) #7
  unreachable

if.end.20:                                        ; preds = %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %identifier = bitcast %union.tree_node* %12 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %13 = load i8*, i8** %str, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* %13)
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %identifier22 = bitcast %union.tree_node* %14 to %struct.tree_identifier*
  %id23 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier22, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id23, i32 0, i32 0
  %15 = load i32, i32* %len, align 4
  %16 = load i32, i32* @current_sym_nchars, align 4
  %add = add i32 %16, %15
  store i32 %add, i32* @current_sym_nchars, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_type_fields(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %tem = alloca %union.tree_node*, align 8
  %name113 = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %1, %union.tree_node** %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp6 = icmp eq i32 %bf.clear5, 37
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %call = call %union.tree_node* @bit_position(%union.tree_node* %5)
  %call7 = call i32 @host_integerp(%union.tree_node* %call, i32 0)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 4
  %7 = load %union.tree_node*, %union.tree_node** %size, align 8
  %tobool10 = icmp ne %union.tree_node* %7, null
  br i1 %tobool10, label %lor.lhs.false.11, label %if.then

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %8 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl12 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %size13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 4
  %9 = load %union.tree_node*, %union.tree_node** %size13, align 8
  %call14 = call i32 @host_integerp(%union.tree_node* %9, i32 1)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.11, %lor.lhs.false
  %10 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl17 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %ignored_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 5
  %11 = bitcast i48* %ignored_flag to i64*
  %bf.load18 = load i64, i64* %11, align 8
  %bf.lshr = lshr i64 %bf.load18, 14
  %bf.clear19 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear19 to i32
  %tobool20 = icmp ne i32 %bf.cast, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.16, %lor.lhs.false.11, %lor.lhs.false.9, %land.lhs.true, %for.body
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false.16
  %12 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common21 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp ne i32 %bf.clear24, 32
  br i1 %cmp25, label %if.then.26, label %if.end.144

if.then.26:                                       ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type27 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %values28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %values28, align 8
  %cmp29 = icmp ne %union.tree_node* %13, %15
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.26
  br label %do.body

do.body:                                          ; preds = %if.then.30
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.26
  %16 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl31 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl31, i32 0, i32 8
  %17 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool32 = icmp ne %union.tree_node* %17, null
  br i1 %tobool32, label %if.then.33, label %if.else.42

if.then.33:                                       ; preds = %if.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %19 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl34 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %name35 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl34, i32 0, i32 8
  %20 = load %union.tree_node*, %union.tree_node** %name35, align 8
  %identifier = bitcast %union.tree_node* %20 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %21 = load i8*, i8** %str, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %21)
  %22 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl37 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %name38 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 8
  %23 = load %union.tree_node*, %union.tree_node** %name38, align 8
  %identifier39 = bitcast %union.tree_node* %23 to %struct.tree_identifier*
  %id40 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier39, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id40, i32 0, i32 0
  %24 = load i32, i32* %len, align 4
  %add = add i32 2, %24
  %25 = load i32, i32* @current_sym_nchars, align 4
  %add41 = add i32 %25, %add
  store i32 %add41, i32* @current_sym_nchars, align 4
  br label %if.end.45

if.else.42:                                       ; preds = %if.end
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0))
  %27 = load i32, i32* @current_sym_nchars, align 4
  %add44 = add nsw i32 %27, 1
  store i32 %add44, i32* @current_sym_nchars, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.33
  %28 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool46 = icmp ne i32 %28, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.82

land.lhs.true.47:                                 ; preds = %if.end.45
  %29 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common48 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %private_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load49 = load i32, i32* %private_flag, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 20
  %bf.clear51 = and i32 %bf.lshr50, 1
  %tobool52 = icmp ne i32 %bf.clear51, 0
  br i1 %tobool52, label %if.then.65, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.47
  %30 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common54 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %protected_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 2
  %bf.load55 = load i32, i32* %protected_flag, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 21
  %bf.clear57 = and i32 %bf.lshr56, 1
  %tobool58 = icmp ne i32 %bf.clear57, 0
  br i1 %tobool58, label %if.then.65, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.53
  %31 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common60 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %code61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 2
  %bf.load62 = load i32, i32* %code61, align 8
  %bf.clear63 = and i32 %bf.load62, 255
  %cmp64 = icmp ne i32 %bf.clear63, 37
  br i1 %cmp64, label %if.then.65, label %if.end.82

if.then.65:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.53, %land.lhs.true.47
  store i32 1, i32* @have_used_extensions, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call66 = call i32 @_IO_putc(i32 47, %struct._IO_FILE* %32)
  %33 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common67 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %private_flag68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 2
  %bf.load69 = load i32, i32* %private_flag68, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 20
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.65
  br label %cond.end

cond.false:                                       ; preds = %if.then.65
  %34 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common73 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %protected_flag74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 2
  %bf.load75 = load i32, i32* %protected_flag74, align 8
  %bf.lshr76 = lshr i32 %bf.load75, 21
  %bf.clear77 = and i32 %bf.lshr76, 1
  %tobool78 = icmp ne i32 %bf.clear77, 0
  %cond = select i1 %tobool78, i32 49, i32 50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond79 = phi i32 [ 48, %cond.true ], [ %cond, %cond.false ]
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call80 = call i32 @_IO_putc(i32 %cond79, %struct._IO_FILE* %35)
  %36 = load i32, i32* @current_sym_nchars, align 4
  %add81 = add nsw i32 %36, 2
  store i32 %add81, i32* @current_sym_nchars, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %cond.end, %lor.lhs.false.59, %if.end.45
  %37 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common83 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %code84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 2
  %bf.load85 = load i32, i32* %code84, align 8
  %bf.clear86 = and i32 %bf.load85, 255
  %cmp87 = icmp eq i32 %bf.clear86, 37
  br i1 %cmp87, label %land.lhs.true.88, label %cond.false.94

land.lhs.true.88:                                 ; preds = %if.end.82
  %38 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl89 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl89, i32 0, i32 11
  %39 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool90 = icmp ne %union.tree_node* %39, null
  br i1 %tobool90, label %cond.true.91, label %cond.false.94

cond.true.91:                                     ; preds = %land.lhs.true.88
  %40 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl92 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %result93 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl92, i32 0, i32 11
  %41 = load %union.tree_node*, %union.tree_node** %result93, align 8
  br label %cond.end.97

cond.false.94:                                    ; preds = %land.lhs.true.88, %if.end.82
  %42 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common95 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %type96 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common95, i32 0, i32 1
  %43 = load %union.tree_node*, %union.tree_node** %type96, align 8
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.94, %cond.true.91
  %cond98 = phi %union.tree_node* [ %41, %cond.true.91 ], [ %43, %cond.false.94 ]
  call void @dbxout_type(%union.tree_node* %cond98, i32 0)
  %44 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common99 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %code100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 2
  %bf.load101 = load i32, i32* %code100, align 8
  %bf.clear102 = and i32 %bf.load101, 255
  %cmp103 = icmp eq i32 %bf.clear102, 34
  br i1 %cmp103, label %if.then.104, label %if.else.134

if.then.104:                                      ; preds = %cond.end.97
  %45 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common105 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common105, i32 0, i32 2
  %bf.load106 = load i32, i32* %static_flag, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 18
  %bf.clear108 = and i32 %bf.lshr107, 1
  %tobool109 = icmp ne i32 %bf.clear108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.else.130

land.lhs.true.110:                                ; preds = %if.then.104
  %46 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %tobool111 = icmp ne i32 %46, 0
  br i1 %tobool111, label %if.then.112, label %if.else.130

if.then.112:                                      ; preds = %land.lhs.true.110
  %47 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl114 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl114, i32 0, i32 14
  %48 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp115 = icmp ne %union.tree_node* %48, null
  br i1 %cmp115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %if.then.112
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.then.112
  %49 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %50 = load %union.tree_node*, %union.tree_node** %tem, align 8
  call void %49(%union.tree_node* %50)
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %51 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl119 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %assembler_name120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl119, i32 0, i32 14
  %52 = load %union.tree_node*, %union.tree_node** %assembler_name120, align 8
  store %union.tree_node* %52, %union.tree_node** %name113, align 8
  store i32 1, i32* @have_used_extensions, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %54 = load %union.tree_node*, %union.tree_node** %name113, align 8
  %identifier121 = bitcast %union.tree_node* %54 to %struct.tree_identifier*
  %id122 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier121, i32 0, i32 1
  %str123 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id122, i32 0, i32 1
  %55 = load i8*, i8** %str123, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* %55)
  %56 = load %union.tree_node*, %union.tree_node** %name113, align 8
  %identifier125 = bitcast %union.tree_node* %56 to %struct.tree_identifier*
  %id126 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier125, i32 0, i32 1
  %len127 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id126, i32 0, i32 0
  %57 = load i32, i32* %len127, align 4
  %add128 = add i32 %57, 2
  %58 = load i32, i32* @current_sym_nchars, align 4
  %add129 = add i32 %58, %add128
  store i32 %add129, i32* @current_sym_nchars, align 4
  br label %if.end.133

if.else.130:                                      ; preds = %land.lhs.true.110, %if.then.104
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0))
  %60 = load i32, i32* @current_sym_nchars, align 4
  %add132 = add nsw i32 %60, 5
  store i32 %add132, i32* @current_sym_nchars, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %cond.end.118
  br label %if.end.143

if.else.134:                                      ; preds = %cond.end.97
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call135 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %61)
  %62 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %call136 = call i64 @int_bit_position(%union.tree_node* %62)
  call void @print_wide_int(i64 %call136)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call137 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %63)
  %64 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %decl138 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %size139 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl138, i32 0, i32 4
  %65 = load %union.tree_node*, %union.tree_node** %size139, align 8
  %call140 = call i64 @tree_low_cst(%union.tree_node* %65, i32 1)
  call void @print_wide_int(i64 %call140)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call141 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %66)
  %67 = load i32, i32* @current_sym_nchars, align 4
  %add142 = add nsw i32 %67, 3
  store i32 %add142, i32* @current_sym_nchars, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.134, %if.end.133
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.else
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144
  br label %for.inc

for.inc:                                          ; preds = %if.end.145, %if.then
  %68 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common146 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common146, i32 0, i32 0
  %69 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %69, %union.tree_node** %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_type_methods(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %methods = alloca %union.tree_node*, align 8
  %type_encoding = alloca %union.tree_node*, align 8
  %fndecl = alloca %union.tree_node*, align 8
  %last = alloca %union.tree_node*, align 8
  %formatted_type_identifier_length = alloca [16 x i8], align 16
  %type_identifier_length = alloca i32, align 4
  %need_prefix = alloca i32, align 4
  %debug_name = alloca i8*, align 8
  %name51 = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 13
  %1 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  store %union.tree_node* %1, %union.tree_node** %methods, align 8
  %2 = load %union.tree_node*, %union.tree_node** %methods, align 8
  %cmp = icmp eq %union.tree_node* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 11
  %4 = load %union.tree_node*, %union.tree_node** %name, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %name3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %5 = load %union.tree_node*, %union.tree_node** %name3, align 8
  store %union.tree_node* %5, %union.tree_node** %type_encoding, align 8
  %6 = load %union.tree_node*, %union.tree_node** %type_encoding, align 8
  %identifier = bitcast %union.tree_node* %6 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 0
  %7 = load i32, i32* %len, align 4
  store i32 %7, i32* %type_identifier_length, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %formatted_type_identifier_length, i32 0, i32 0
  %8 = load i32, i32* %type_identifier_length, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %8) #5
  %9 = load %union.tree_node*, %union.tree_node** %methods, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp4 = icmp ne i32 %bf.clear, 3
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %methods, align 8
  store %union.tree_node* %10, %union.tree_node** %fndecl, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %methods, align 8
  %vec = bitcast %union.tree_node* %11 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 0
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %cmp6 = icmp ne %union.tree_node* %12, null
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %methods, align 8
  %vec8 = bitcast %union.tree_node* %13 to %struct.tree_vec*
  %a9 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec8, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a9, i32 0, i64 0
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8
  store %union.tree_node* %14, %union.tree_node** %fndecl, align 8
  br label %if.end.15

if.else.11:                                       ; preds = %if.else
  %15 = load %union.tree_node*, %union.tree_node** %methods, align 8
  %vec12 = bitcast %union.tree_node* %15 to %struct.tree_vec*
  %a13 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a13, i32 0, i64 1
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8
  store %union.tree_node* %16, %union.tree_node** %fndecl, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.11, %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.70, %if.end.16
  %17 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %tobool = icmp ne %union.tree_node* %17, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %need_prefix, align 4
  store %union.tree_node* null, %union.tree_node** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %18 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %tobool17 = icmp ne %union.tree_node* %18, null
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load %union.tree_node*, %union.tree_node** %last, align 8
  %cmp18 = icmp eq %union.tree_node* %19, null
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %20 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl19 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %name20 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl19, i32 0, i32 8
  %21 = load %union.tree_node*, %union.tree_node** %name20, align 8
  %22 = load %union.tree_node*, %union.tree_node** %last, align 8
  %decl21 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %name22 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 8
  %23 = load %union.tree_node*, %union.tree_node** %name22, align 8
  %cmp23 = icmp eq %union.tree_node* %21, %23
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %24 = phi i1 [ true, %land.rhs ], [ %cmp23, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %25 = phi i1 [ false, %for.cond ], [ %24, %lor.end ]
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %26 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common24 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp ne i32 %bf.clear27, 30
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body
  br label %for.inc

if.end.30:                                        ; preds = %for.body
  %27 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl31 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl31, i32 0, i32 14
  %28 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp32 = icmp ne %union.tree_node* %28, null
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.30
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %29 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %30 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void %29(%union.tree_node* %30)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %31 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl33 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %assembler_name34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 14
  %32 = load %union.tree_node*, %union.tree_node** %assembler_name34, align 8
  %identifier35 = bitcast %union.tree_node* %32 to %struct.tree_identifier*
  %id36 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier35, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id36, i32 0, i32 1
  %33 = load i8*, i8** %str, align 8
  store i8* %33, i8** %debug_name, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %34 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  store %union.tree_node* %34, %union.tree_node** %last, align 8
  %35 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl37 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %ignored_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 5
  %36 = bitcast i48* %ignored_flag to i64*
  %bf.load38 = load i64, i64* %36, align 8
  %bf.lshr = lshr i64 %bf.load38, 14
  %bf.clear39 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear39 to i32
  %tobool40 = icmp ne i32 %bf.cast, 0
  br i1 %tobool40, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %37 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl41 = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %abstract_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 5
  %38 = bitcast i48* %abstract_flag to i64*
  %bf.load42 = load i64, i64* %38, align 8
  %bf.lshr43 = lshr i64 %bf.load42, 15
  %bf.clear44 = and i64 %bf.lshr43, 1
  %bf.cast45 = trunc i64 %bf.clear44 to i32
  %tobool46 = icmp ne i32 %bf.cast45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %do.end
  br label %for.inc

if.end.48:                                        ; preds = %lor.lhs.false
  %39 = load i32, i32* %need_prefix, align 4
  %tobool49 = icmp ne i32 %39, 0
  br i1 %tobool49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %if.end.48
  %40 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl52 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %name53 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl52, i32 0, i32 8
  %41 = load %union.tree_node*, %union.tree_node** %name53, align 8
  store %union.tree_node* %41, %union.tree_node** %name51, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %43 = load %union.tree_node*, %union.tree_node** %name51, align 8
  %identifier54 = bitcast %union.tree_node* %43 to %struct.tree_identifier*
  %id55 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier54, i32 0, i32 1
  %str56 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id55, i32 0, i32 1
  %44 = load i8*, i8** %str56, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* %44)
  %45 = load %union.tree_node*, %union.tree_node** %name51, align 8
  %identifier58 = bitcast %union.tree_node* %45 to %struct.tree_identifier*
  %id59 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier58, i32 0, i32 1
  %len60 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id59, i32 0, i32 0
  %46 = load i32, i32* %len60, align 4
  %add = add i32 %46, 2
  %47 = load i32, i32* @current_sym_nchars, align 4
  %add61 = add i32 %47, %add
  store i32 %add61, i32* @current_sym_nchars, align 4
  store i32 0, i32* %need_prefix, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.50, %if.end.48
  %48 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common63 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %type64 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common63, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type64, align 8
  call void @dbxout_type(%union.tree_node* %49, i32 0)
  %50 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %51 = load i8*, i8** %debug_name, align 8
  call void @dbxout_type_method_1(%union.tree_node* %50, i8* %51)
  br label %for.inc

for.inc:                                          ; preds = %if.end.62, %if.then.47, %if.then.29
  %52 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common65 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common65, i32 0, i32 0
  %53 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %53, %union.tree_node** %fndecl, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %54 = load i32, i32* %need_prefix, align 4
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %if.end.70, label %if.then.67

if.then.67:                                       ; preds = %for.end
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call68 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %55)
  %56 = load i32, i32* @current_sym_nchars, align 4
  %add69 = add nsw i32 %56, 1
  store i32 %add69, i32* @current_sym_nchars, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %for.end
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dbxout_args(%union.tree_node* %args) #0 {
entry:
  %args.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %1)
  %2 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @dbxout_type(%union.tree_node* %3, i32 0)
  %4 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* @current_sym_nchars, align 4
  %5 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %args.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_octal(i64 %value, i32 %digits) #0 {
entry:
  %value.addr = alloca i64, align 8
  %digits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %value, i64* %value.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  %0 = load i32, i32* %digits.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %3 = load i64, i64* %value.addr, align 8
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 3, %4
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %3, %sh_prom
  %and = and i64 %shr, 7
  %conv = trunc i64 %and to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %digits.addr, align 4
  %7 = load i32, i32* @current_sym_nchars, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* @current_sym_nchars, align 4
  ret void
}

declare %union.tree_node* @bit_position(%union.tree_node*) #1

declare i64 @int_bit_position(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_type_method_1(%union.tree_node* %decl, i8* %debug_name) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %debug_name.addr = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %firstarg = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %debug_name, i8** %debug_name.addr, align 8
  store i8 65, i8* %c1, align 1
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 63, i8* %c2, align 1
  br label %if.end.29

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type3, align 8
  %type4 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %values, align 8
  %list = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %5, %union.tree_node** %firstarg, align 8
  %6 = load %union.tree_node*, %union.tree_node** %firstarg, align 8
  %common5 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type6, align 8
  %common7 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load8 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load8, 12
  %bf.clear9 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear9, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %8 = load i8, i8* %c1, align 1
  %conv = sext i8 %8 to i32
  %add = add nsw i32 %conv, 1
  %conv11 = trunc i32 %add to i8
  store i8 %conv11, i8* %c1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  %9 = load %union.tree_node*, %union.tree_node** %firstarg, align 8
  %common12 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type13, align 8
  %common14 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load15 = load i32, i32* %volatile_flag, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 11
  %bf.clear17 = and i32 %bf.lshr16, 1
  %tobool18 = icmp ne i32 %bf.clear17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end
  %11 = load i8, i8* %c1, align 1
  %conv20 = sext i8 %11 to i32
  %add21 = add nsw i32 %conv20, 2
  %conv22 = trunc i32 %add21 to i8
  store i8 %conv22, i8* %c1, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl24 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %vindex = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl24, i32 0, i32 22
  %13 = load %union.tree_node*, %union.tree_node** %vindex, align 8
  %tobool25 = icmp ne %union.tree_node* %13, null
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.23
  store i8 42, i8* %c2, align 1
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.23
  store i8 46, i8* %c2, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %15 = load i8*, i8** %debug_name.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common30 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %private_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load31 = load i32, i32* %private_flag, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 20
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.29
  br label %cond.end

cond.false:                                       ; preds = %if.end.29
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common35 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %protected_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 2
  %bf.load36 = load i32, i32* %protected_flag, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 21
  %bf.clear38 = and i32 %bf.lshr37, 1
  %tobool39 = icmp ne i32 %bf.clear38, 0
  %cond = select i1 %tobool39, i32 49, i32 50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond40 = phi i32 [ 48, %cond.true ], [ %cond, %cond.false ]
  %18 = load i8, i8* %c1, align 1
  %conv41 = sext i8 %18 to i32
  %19 = load i8, i8* %c2, align 1
  %conv42 = sext i8 %19 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* %15, i32 %cond40, i32 %conv41, i32 %conv42)
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl43 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl43, i32 0, i32 14
  %21 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp44 = icmp ne %union.tree_node* %21, null
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.end
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.end
  %22 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %22(%union.tree_node* %23)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl49 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %assembler_name50 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl49, i32 0, i32 14
  %25 = load %union.tree_node*, %union.tree_node** %assembler_name50, align 8
  %identifier = bitcast %union.tree_node* %25 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 0
  %26 = load i32, i32* %len, align 4
  %add51 = add i32 %26, 6
  %conv52 = zext i32 %add51 to i64
  %27 = load i8*, i8** %debug_name.addr, align 8
  %28 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl53 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %assembler_name54 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl53, i32 0, i32 14
  %29 = load %union.tree_node*, %union.tree_node** %assembler_name54, align 8
  %cmp55 = icmp ne %union.tree_node* %29, null
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end.48
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.48
  %30 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %30(%union.tree_node* %31)
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %32 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl60 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %assembler_name61 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl60, i32 0, i32 14
  %33 = load %union.tree_node*, %union.tree_node** %assembler_name61, align 8
  %identifier62 = bitcast %union.tree_node* %33 to %struct.tree_identifier*
  %id63 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier62, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id63, i32 0, i32 1
  %34 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %conv52, %sub.ptr.sub
  %35 = load i32, i32* @current_sym_nchars, align 4
  %conv64 = sext i32 %35 to i64
  %add65 = add nsw i64 %conv64, %sub
  %conv66 = trunc i64 %add65 to i32
  store i32 %conv66, i32* @current_sym_nchars, align 4
  %36 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl67 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %vindex68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 22
  %37 = load %union.tree_node*, %union.tree_node** %vindex68, align 8
  %tobool69 = icmp ne %union.tree_node* %37, null
  br i1 %tobool69, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %cond.end.59
  %38 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl70 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %vindex71 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl70, i32 0, i32 22
  %39 = load %union.tree_node*, %union.tree_node** %vindex71, align 8
  %call72 = call i32 @host_integerp(%union.tree_node* %39, i32 0)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.83

if.then.74:                                       ; preds = %land.lhs.true
  %40 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl75 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %vindex76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 22
  %41 = load %union.tree_node*, %union.tree_node** %vindex76, align 8
  %call77 = call i64 @tree_low_cst(%union.tree_node* %41, i32 0)
  call void @print_wide_int(i64 %call77)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call78 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %42)
  %43 = load i32, i32* @current_sym_nchars, align 4
  %add79 = add nsw i32 %43, 1
  store i32 %add79, i32* @current_sym_nchars, align 4
  %44 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl80 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl80, i32 0, i32 9
  %45 = load %union.tree_node*, %union.tree_node** %context, align 8
  call void @dbxout_type(%union.tree_node* %45, i32 0)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %47 = load i32, i32* @current_sym_nchars, align 4
  %add82 = add nsw i32 %47, 1
  store i32 %add82, i32* @current_sym_nchars, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.74, %land.lhs.true, %cond.end.59
  ret void
}

declare %struct.rtx_def* @alter_subreg(%struct.rtx_def**) #1

declare %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) #1

declare %union.tree_node* @make_node(i32) #1

; Function Attrs: nounwind uwtable
define internal void @dbxout_symbol_name(%union.tree_node* %decl, i8* %suffix, i32 %letter) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %suffix.addr = alloca i8*, align 8
  %letter.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store i32 %letter, i32* %letter.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 9
  %1 = load %union.tree_node*, %union.tree_node** %context, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %context3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 9
  %3 = load %union.tree_node*, %union.tree_node** %context3, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 116
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl5 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp6 = icmp ne %union.tree_node* %6, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %7(%union.tree_node* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl8 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %assembler_name9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 14
  %10 = load %union.tree_node*, %union.tree_node** %assembler_name9, align 8
  %identifier = bitcast %union.tree_node* %10 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %11 = load i8*, i8** %str, align 8
  store i8* %11, i8** %name, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl10 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %name11 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 8
  %13 = load %union.tree_node*, %union.tree_node** %name11, align 8
  %identifier12 = bitcast %union.tree_node* %13 to %struct.tree_identifier*
  %id13 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier12, i32 0, i32 1
  %str14 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id13, i32 0, i32 1
  %14 = load i8*, i8** %str14, align 8
  store i8* %14, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %15 = load i8*, i8** %name, align 8
  %cmp15 = icmp eq i8* %15, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8** %name, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %17 = load i8*, i8** %name, align 8
  %18 = load i8*, i8** %suffix.addr, align 8
  %tobool19 = icmp ne i8* %18, null
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.end.18
  %19 = load i8*, i8** %suffix.addr, align 8
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.end.18
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond = phi i8* [ %19, %cond.true.20 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.76, i32 0, i32 0), %cond.false.21 ]
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %17, i8* %cond)
  %20 = load i32, i32* %letter.addr, align 4
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %cond.end.22
  %21 = load i32, i32* %letter.addr, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %call25 = call i32 @_IO_putc(i32 %21, %struct._IO_FILE* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %cond.end.22
  ret void
}

declare void @output_addr_const(%struct._IO_FILE*, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
