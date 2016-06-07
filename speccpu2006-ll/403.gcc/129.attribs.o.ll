; ModuleID = 'attribs.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.anon.0 = type { i32 }

@empty_attribute_table = internal constant [1 x %struct.attribute_spec] zeroinitializer, align 16
@format_attribute_table = global %struct.attribute_spec* getelementptr inbounds ([1 x %struct.attribute_spec], [1 x %struct.attribute_spec]* @empty_attribute_table, i32 0, i32 0), align 8
@lang_attribute_table = global %struct.attribute_spec* getelementptr inbounds ([1 x %struct.attribute_spec], [1 x %struct.attribute_spec]* @empty_attribute_table, i32 0, i32 0), align 8
@lang_attribute_common = global i32 1, align 4
@attributes_initialized = internal global i8 0, align 1
@targetm = external global %struct.gcc_target, align 8
@tree_code_type = external global [256 x i8], align 16
@attribute_tables = internal global [4 x %struct.attribute_spec*] zeroinitializer, align 16
@.str = private unnamed_addr constant [33 x i8] c"`%s' attribute directive ignored\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"wrong number of arguments specified for `%s' attribute\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"`%s' attribute does not apply to types\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"`%s' attribute only applies to function types\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"`%s' attribute ignored\00", align 1
@c_common_attribute_table = internal constant [25 x %struct.attribute_spec] [%struct.attribute_spec { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i8 0, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_packed_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_nocommon_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_common_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_noreturn_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_noreturn_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_noinline_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_always_inline_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_used_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0, i8 0, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_unused_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_const_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i8 0, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_transparent_union_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_constructor_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_destructor_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 1, i8 0, i8 1, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_mode_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 1, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_section_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 1, i8 0, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_aligned_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_weak_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 1, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_alias_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_no_instrument_function_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_malloc_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_no_limit_stack_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i8 1, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_pure_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i8 0, i8 0, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_deprecated_attribute }, %struct.attribute_spec { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 1, i8 0, i8 1, i8 0, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* @handle_vector_size_attribute }, %struct.attribute_spec zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"nocommon\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"noreturn\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"noinline\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"transparent_union\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"destructor\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"no_instrument_function\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"no_stack_limit\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"vector_size\00", align 1
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@byte_mode = external global i32, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@word_mode = external global i32, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@ptr_mode = external global i32, align 4
@mode_name = external constant [59 x i8*], align 16
@.str.32 = private unnamed_addr constant [26 x i8] c"unknown machine mode `%s'\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"no data type for mode `%s'\00", align 1
@current_function_decl = external global %union.tree_node*, align 8
@.str.34 = private unnamed_addr constant [58 x i8] c"section attribute cannot be specified for local variables\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"section of `%s' conflicts with previous declaration\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"section attribute not allowed for `%s'\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"section attributes are not supported for this target\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"requested alignment is not a constant\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"requested alignment is not a power of 2\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"requested alignment is too large\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.41 = private unnamed_addr constant [40 x i8] c"alignment may not be specified for `%s'\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"`%s' defined both normally and as an alias\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"alias arg not a string\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"`%s' attribute applies only to functions\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"can't set `%s' attribute after definition\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"`%s' attribute ignored for `%s'\00", align 1
@mode_class = external constant [59 x i32], align 16
@.str.47 = private unnamed_addr constant [39 x i8] c"invalid vector type for attribute `%s'\00", align 1
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_size = external constant [59 x i8], align 16
@mode_unit_size = external constant [59 x i8], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@.str.48 = private unnamed_addr constant [63 x i8] c"no vector mode with the size and type specified could be found\00", align 1

; Function Attrs: nounwind uwtable
define %union.tree_node* @decl_attributes(%union.tree_node** %node, %union.tree_node* %attributes, i32 %flags) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %attributes.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %a = alloca %union.tree_node*, align 8
  %returned_attrs = alloca %union.tree_node*, align 8
  %name = alloca %union.tree_node*, align 8
  %args = alloca %union.tree_node*, align 8
  %anode = alloca %union.tree_node**, align 8
  %spec = alloca %struct.attribute_spec*, align 8
  %no_add_attrs = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %old_attrs = alloca %union.tree_node*, align 8
  %a226 = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %attributes, %union.tree_node** %attributes.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %union.tree_node* null, %union.tree_node** %returned_attrs, align 8
  %0 = load i8, i8* @attributes_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @init_attributes()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load void (%union.tree_node*, %union.tree_node**)*, void (%union.tree_node*, %union.tree_node**)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 7), align 8
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void %1(%union.tree_node* %3, %union.tree_node** %attributes.addr)
  %4 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %7 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  %common2 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp6 = icmp eq i32 %bf.clear5, 30
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %flags.addr, align 4
  %and = and i32 %9, 16
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  %10 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  call void @insert_default_attributes(%union.tree_node* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %land.lhs.true, %if.end
  %12 = load %union.tree_node*, %union.tree_node** %attributes.addr, align 8
  store %union.tree_node* %12, %union.tree_node** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.291, %if.end.11
  %13 = load %union.tree_node*, %union.tree_node** %a, align 8
  %tobool12 = icmp ne %union.tree_node* %13, null
  br i1 %tobool12, label %for.body, label %for.end.294

for.body:                                         ; preds = %for.cond
  %14 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list = bitcast %union.tree_node* %14 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  store %union.tree_node* %15, %union.tree_node** %name, align 8
  %16 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list13 = bitcast %union.tree_node* %16 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list13, i32 0, i32 2
  %17 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %17, %union.tree_node** %args, align 8
  %18 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node** %18, %union.tree_node*** %anode, align 8
  store %struct.attribute_spec* null, %struct.attribute_spec** %spec, align 8
  store i8 0, i8* %no_add_attrs, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.43, %for.body
  %19 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %19, 4
  br i1 %cmp15, label %for.body.17, label %for.end.45

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.17
  %20 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 %idxprom20
  %22 = load %struct.attribute_spec*, %struct.attribute_spec** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %22, i64 %idxprom19
  %name23 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %arrayidx22, i32 0, i32 0
  %23 = load i8*, i8** %name23, align 8
  %cmp24 = icmp ne i8* %23, null
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.18
  %24 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 %idxprom28
  %26 = load %struct.attribute_spec*, %struct.attribute_spec** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %26, i64 %idxprom27
  %name31 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %arrayidx30, i32 0, i32 0
  %27 = load i8*, i8** %name31, align 8
  %28 = load %union.tree_node*, %union.tree_node** %name, align 8
  %call = call i32 @is_attribute_p(i8* %27, %union.tree_node* %28)
  %tobool32 = icmp ne i32 %call, 0
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %for.body.26
  %29 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 %idxprom35
  %31 = load %struct.attribute_spec*, %struct.attribute_spec** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %31, i64 %idxprom34
  store %struct.attribute_spec* %arrayidx37, %struct.attribute_spec** %spec, align 8
  br label %for.end

if.end.38:                                        ; preds = %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.18

for.end:                                          ; preds = %if.then.33, %for.cond.18
  %33 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %cmp39 = icmp ne %struct.attribute_spec* %33, null
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  br label %for.end.45

if.end.42:                                        ; preds = %for.end
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %34 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.14

for.end.45:                                       ; preds = %if.then.41, %for.cond.14
  %35 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %cmp46 = icmp eq %struct.attribute_spec* %35, null
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %for.end.45
  %36 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %36 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %37 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* %37)
  br label %for.inc.291

if.else:                                          ; preds = %for.end.45
  %38 = load %union.tree_node*, %union.tree_node** %args, align 8
  %call49 = call i32 @list_length(%union.tree_node* %38)
  %39 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %min_length = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %39, i32 0, i32 1
  %40 = load i32, i32* %min_length, align 4
  %cmp50 = icmp slt i32 %call49, %40
  br i1 %cmp50, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %41 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %max_length = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %41, i32 0, i32 2
  %42 = load i32, i32* %max_length, align 4
  %cmp52 = icmp sge i32 %42, 0
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.63

land.lhs.true.54:                                 ; preds = %lor.lhs.false
  %43 = load %union.tree_node*, %union.tree_node** %args, align 8
  %call55 = call i32 @list_length(%union.tree_node* %43)
  %44 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %max_length56 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %44, i32 0, i32 2
  %45 = load i32, i32* %max_length56, align 4
  %cmp57 = icmp sgt i32 %call55, %45
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %land.lhs.true.54, %if.else
  %46 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier60 = bitcast %union.tree_node* %46 to %struct.tree_identifier*
  %id61 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier60, i32 0, i32 1
  %str62 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id61, i32 0, i32 1
  %47 = load i8*, i8** %str62, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0), i8* %47)
  br label %for.inc.291

if.end.63:                                        ; preds = %land.lhs.true.54, %lor.lhs.false
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63
  %48 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %decl_required = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %48, i32 0, i32 3
  %49 = load i8, i8* %decl_required, align 1
  %tobool65 = trunc i8 %49 to i1
  br i1 %tobool65, label %land.lhs.true.67, label %if.end.86

land.lhs.true.67:                                 ; preds = %if.end.64
  %50 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %51 = load %union.tree_node*, %union.tree_node** %50, align 8
  %common68 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %code69 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 2
  %bf.load70 = load i32, i32* %code69, align 8
  %bf.clear71 = and i32 %bf.load70, 255
  %idxprom72 = sext i32 %bf.clear71 to i64
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom72
  %52 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %52 to i32
  %cmp75 = icmp eq i32 %conv74, 100
  br i1 %cmp75, label %if.end.86, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.67
  %53 = load i32, i32* %flags.addr, align 4
  %and78 = and i32 %53, 7
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %if.then.77
  %54 = load %union.tree_node*, %union.tree_node** %name, align 8
  %55 = load %union.tree_node*, %union.tree_node** %args, align 8
  %56 = load %union.tree_node*, %union.tree_node** %returned_attrs, align 8
  %call81 = call %union.tree_node* @tree_cons(%union.tree_node* %54, %union.tree_node* %55, %union.tree_node* %56)
  store %union.tree_node* %call81, %union.tree_node** %returned_attrs, align 8
  br label %for.inc.291

if.else.82:                                       ; preds = %if.then.77
  %57 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier83 = bitcast %union.tree_node* %57 to %struct.tree_identifier*
  %id84 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier83, i32 0, i32 1
  %str85 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id84, i32 0, i32 1
  %58 = load i8*, i8** %str85, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* %58)
  br label %for.inc.291

if.end.86:                                        ; preds = %land.lhs.true.67, %if.end.64
  %59 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %type_required = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %59, i32 0, i32 4
  %60 = load i8, i8* %type_required, align 1
  %tobool87 = trunc i8 %60 to i1
  br i1 %tobool87, label %land.lhs.true.89, label %if.end.102

land.lhs.true.89:                                 ; preds = %if.end.86
  %61 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %62 = load %union.tree_node*, %union.tree_node** %61, align 8
  %common90 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %code91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common90, i32 0, i32 2
  %bf.load92 = load i32, i32* %code91, align 8
  %bf.clear93 = and i32 %bf.load92, 255
  %idxprom94 = sext i32 %bf.clear93 to i64
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom94
  %63 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %63 to i32
  %cmp97 = icmp eq i32 %conv96, 100
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %land.lhs.true.89
  %64 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %65 = load %union.tree_node*, %union.tree_node** %64, align 8
  %common100 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common100, i32 0, i32 1
  store %union.tree_node** %type, %union.tree_node*** %anode, align 8
  %66 = load i32, i32* %flags.addr, align 4
  %and101 = and i32 %66, -9
  store i32 %and101, i32* %flags.addr, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %land.lhs.true.89, %if.end.86
  %67 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %function_type_required = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %67, i32 0, i32 5
  %68 = load i8, i8* %function_type_required, align 1
  %tobool103 = trunc i8 %68 to i1
  br i1 %tobool103, label %land.lhs.true.105, label %if.end.177

land.lhs.true.105:                                ; preds = %if.end.102
  %69 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %70 = load %union.tree_node*, %union.tree_node** %69, align 8
  %common106 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %code107 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common106, i32 0, i32 2
  %bf.load108 = load i32, i32* %code107, align 8
  %bf.clear109 = and i32 %bf.load108, 255
  %cmp110 = icmp ne i32 %bf.clear109, 23
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.177

land.lhs.true.112:                                ; preds = %land.lhs.true.105
  %71 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %72 = load %union.tree_node*, %union.tree_node** %71, align 8
  %common113 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %code114 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common113, i32 0, i32 2
  %bf.load115 = load i32, i32* %code114, align 8
  %bf.clear116 = and i32 %bf.load115, 255
  %cmp117 = icmp ne i32 %bf.clear116, 16
  br i1 %cmp117, label %if.then.119, label %if.end.177

if.then.119:                                      ; preds = %land.lhs.true.112
  %73 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %74 = load %union.tree_node*, %union.tree_node** %73, align 8
  %common120 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %code121 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common120, i32 0, i32 2
  %bf.load122 = load i32, i32* %code121, align 8
  %bf.clear123 = and i32 %bf.load122, 255
  %cmp124 = icmp eq i32 %bf.clear123, 13
  br i1 %cmp124, label %land.lhs.true.126, label %if.else.152

land.lhs.true.126:                                ; preds = %if.then.119
  %75 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %76 = load %union.tree_node*, %union.tree_node** %75, align 8
  %common127 = bitcast %union.tree_node* %76 to %struct.tree_common*
  %type128 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common127, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %type128, align 8
  %common129 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %code130 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common129, i32 0, i32 2
  %bf.load131 = load i32, i32* %code130, align 8
  %bf.clear132 = and i32 %bf.load131, 255
  %cmp133 = icmp eq i32 %bf.clear132, 23
  br i1 %cmp133, label %if.then.144, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %land.lhs.true.126
  %78 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %79 = load %union.tree_node*, %union.tree_node** %78, align 8
  %common136 = bitcast %union.tree_node* %79 to %struct.tree_common*
  %type137 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common136, i32 0, i32 1
  %80 = load %union.tree_node*, %union.tree_node** %type137, align 8
  %common138 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %code139 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common138, i32 0, i32 2
  %bf.load140 = load i32, i32* %code139, align 8
  %bf.clear141 = and i32 %bf.load140, 255
  %cmp142 = icmp eq i32 %bf.clear141, 16
  br i1 %cmp142, label %if.then.144, label %if.else.152

if.then.144:                                      ; preds = %lor.lhs.false.135, %land.lhs.true.126
  %81 = load i32, i32* %flags.addr, align 4
  %and145 = and i32 %81, 8
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.end.149, label %if.then.147

if.then.147:                                      ; preds = %if.then.144
  %82 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %83 = load %union.tree_node*, %union.tree_node** %82, align 8
  %call148 = call %union.tree_node* @build_type_copy(%union.tree_node* %83)
  %84 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  store %union.tree_node* %call148, %union.tree_node** %84, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.then.144
  %85 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %86 = load %union.tree_node*, %union.tree_node** %85, align 8
  %common150 = bitcast %union.tree_node* %86 to %struct.tree_common*
  %type151 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common150, i32 0, i32 1
  store %union.tree_node** %type151, %union.tree_node*** %anode, align 8
  br label %if.end.158

if.else.152:                                      ; preds = %lor.lhs.false.135, %if.then.119
  %87 = load i32, i32* %flags.addr, align 4
  %and153 = and i32 %87, 2
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.else.152
  %88 = load %union.tree_node*, %union.tree_node** %name, align 8
  %89 = load %union.tree_node*, %union.tree_node** %args, align 8
  %90 = load %union.tree_node*, %union.tree_node** %returned_attrs, align 8
  %call156 = call %union.tree_node* @tree_cons(%union.tree_node* %88, %union.tree_node* %89, %union.tree_node* %90)
  store %union.tree_node* %call156, %union.tree_node** %returned_attrs, align 8
  br label %for.inc.291

if.end.157:                                       ; preds = %if.else.152
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.149
  %91 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %92 = load %union.tree_node*, %union.tree_node** %91, align 8
  %common159 = bitcast %union.tree_node* %92 to %struct.tree_common*
  %code160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common159, i32 0, i32 2
  %bf.load161 = load i32, i32* %code160, align 8
  %bf.clear162 = and i32 %bf.load161, 255
  %cmp163 = icmp ne i32 %bf.clear162, 23
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.176

land.lhs.true.165:                                ; preds = %if.end.158
  %93 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %94 = load %union.tree_node*, %union.tree_node** %93, align 8
  %common166 = bitcast %union.tree_node* %94 to %struct.tree_common*
  %code167 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common166, i32 0, i32 2
  %bf.load168 = load i32, i32* %code167, align 8
  %bf.clear169 = and i32 %bf.load168, 255
  %cmp170 = icmp ne i32 %bf.clear169, 16
  br i1 %cmp170, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %land.lhs.true.165
  %95 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier173 = bitcast %union.tree_node* %95 to %struct.tree_identifier*
  %id174 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier173, i32 0, i32 1
  %str175 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id174, i32 0, i32 1
  %96 = load i8*, i8** %str175, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* %96)
  br label %for.inc.291

if.end.176:                                       ; preds = %land.lhs.true.165, %if.end.158
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %land.lhs.true.112, %land.lhs.true.105, %if.end.102
  %97 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %handler = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %97, i32 0, i32 6
  %98 = load %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)*, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)** %handler, align 8
  %cmp178 = icmp ne %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* %98, null
  br i1 %cmp178, label %if.then.180, label %if.end.184

if.then.180:                                      ; preds = %if.end.177
  %99 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %handler181 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %99, i32 0, i32 6
  %100 = load %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)*, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)** %handler181, align 8
  %101 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %102 = load %union.tree_node*, %union.tree_node** %name, align 8
  %103 = load %union.tree_node*, %union.tree_node** %args, align 8
  %104 = load i32, i32* %flags.addr, align 4
  %call182 = call %union.tree_node* %100(%union.tree_node** %101, %union.tree_node* %102, %union.tree_node* %103, i32 %104, i8* %no_add_attrs)
  %105 = load %union.tree_node*, %union.tree_node** %returned_attrs, align 8
  %call183 = call %union.tree_node* @chainon(%union.tree_node* %call182, %union.tree_node* %105)
  store %union.tree_node* %call183, %union.tree_node** %returned_attrs, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.180, %if.end.177
  %106 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %type_required185 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %106, i32 0, i32 4
  %107 = load i8, i8* %type_required185, align 1
  %tobool186 = trunc i8 %107 to i1
  br i1 %tobool186, label %land.lhs.true.188, label %if.end.223

land.lhs.true.188:                                ; preds = %if.end.184
  %108 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %109 = load %union.tree_node*, %union.tree_node** %108, align 8
  %common189 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %code190 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common189, i32 0, i32 2
  %bf.load191 = load i32, i32* %code190, align 8
  %bf.clear192 = and i32 %bf.load191, 255
  %idxprom193 = sext i32 %bf.clear192 to i64
  %arrayidx194 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom193
  %110 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %110 to i32
  %cmp196 = icmp eq i32 %conv195, 100
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.223

land.lhs.true.198:                                ; preds = %land.lhs.true.188
  %111 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %112 = load %union.tree_node*, %union.tree_node** %111, align 8
  %common199 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %code200 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common199, i32 0, i32 2
  %bf.load201 = load i32, i32* %code200, align 8
  %bf.clear202 = and i32 %bf.load201, 255
  %cmp203 = icmp eq i32 %bf.clear202, 34
  br i1 %cmp203, label %if.then.219, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %land.lhs.true.198
  %113 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %114 = load %union.tree_node*, %union.tree_node** %113, align 8
  %common206 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %code207 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common206, i32 0, i32 2
  %bf.load208 = load i32, i32* %code207, align 8
  %bf.clear209 = and i32 %bf.load208, 255
  %cmp210 = icmp eq i32 %bf.clear209, 35
  br i1 %cmp210, label %if.then.219, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.205
  %115 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %116 = load %union.tree_node*, %union.tree_node** %115, align 8
  %common213 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %code214 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common213, i32 0, i32 2
  %bf.load215 = load i32, i32* %code214, align 8
  %bf.clear216 = and i32 %bf.load215, 255
  %cmp217 = icmp eq i32 %bf.clear216, 36
  br i1 %cmp217, label %if.then.219, label %if.end.223

if.then.219:                                      ; preds = %lor.lhs.false.212, %lor.lhs.false.205, %land.lhs.true.198
  %117 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %118 = load %union.tree_node*, %union.tree_node** %117, align 8
  %decl = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %mode = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %119 = bitcast i48* %mode to i64*
  %bf.load220 = load i64, i64* %119, align 8
  %bf.clear221 = and i64 %bf.load220, -256
  store i64 %bf.clear221, i64* %119, align 8
  %120 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %121 = load %union.tree_node*, %union.tree_node** %120, align 8
  %decl222 = bitcast %union.tree_node* %121 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl222, i32 0, i32 4
  store %union.tree_node* null, %union.tree_node** %size, align 8
  %122 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %123 = load %union.tree_node*, %union.tree_node** %122, align 8
  call void @layout_decl(%union.tree_node* %123, i32 0)
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.219, %lor.lhs.false.212, %land.lhs.true.188, %if.end.184
  %124 = load i8, i8* %no_add_attrs, align 1
  %tobool224 = trunc i8 %124 to i1
  br i1 %tobool224, label %if.end.290, label %if.then.225

if.then.225:                                      ; preds = %if.end.223
  %125 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %126 = load %union.tree_node*, %union.tree_node** %125, align 8
  %common227 = bitcast %union.tree_node* %126 to %struct.tree_common*
  %code228 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common227, i32 0, i32 2
  %bf.load229 = load i32, i32* %code228, align 8
  %bf.clear230 = and i32 %bf.load229, 255
  %idxprom231 = sext i32 %bf.clear230 to i64
  %arrayidx232 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom231
  %127 = load i8, i8* %arrayidx232, align 1
  %conv233 = sext i8 %127 to i32
  %cmp234 = icmp eq i32 %conv233, 100
  br i1 %cmp234, label %if.then.236, label %if.else.239

if.then.236:                                      ; preds = %if.then.225
  %128 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %129 = load %union.tree_node*, %union.tree_node** %128, align 8
  %decl237 = bitcast %union.tree_node* %129 to %struct.tree_decl*
  %attributes238 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl237, i32 0, i32 16
  %130 = load %union.tree_node*, %union.tree_node** %attributes238, align 8
  store %union.tree_node* %130, %union.tree_node** %old_attrs, align 8
  br label %if.end.242

if.else.239:                                      ; preds = %if.then.225
  %131 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %132 = load %union.tree_node*, %union.tree_node** %131, align 8
  %type240 = bitcast %union.tree_node* %132 to %struct.tree_type*
  %attributes241 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type240, i32 0, i32 4
  %133 = load %union.tree_node*, %union.tree_node** %attributes241, align 8
  store %union.tree_node* %133, %union.tree_node** %old_attrs, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.239, %if.then.236
  %134 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %name243 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %134, i32 0, i32 0
  %135 = load i8*, i8** %name243, align 8
  %136 = load %union.tree_node*, %union.tree_node** %old_attrs, align 8
  %call244 = call %union.tree_node* @lookup_attribute(i8* %135, %union.tree_node* %136)
  store %union.tree_node* %call244, %union.tree_node** %a226, align 8
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.256, %if.end.242
  %137 = load %union.tree_node*, %union.tree_node** %a226, align 8
  %cmp246 = icmp ne %union.tree_node* %137, null
  br i1 %cmp246, label %for.body.248, label %for.end.260

for.body.248:                                     ; preds = %for.cond.245
  %138 = load %union.tree_node*, %union.tree_node** %a226, align 8
  %list249 = bitcast %union.tree_node* %138 to %struct.tree_list*
  %value250 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list249, i32 0, i32 2
  %139 = load %union.tree_node*, %union.tree_node** %value250, align 8
  %140 = load %union.tree_node*, %union.tree_node** %args, align 8
  %call251 = call i32 @simple_cst_equal(%union.tree_node* %139, %union.tree_node* %140)
  %cmp252 = icmp eq i32 %call251, 1
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %for.body.248
  br label %for.end.260

if.end.255:                                       ; preds = %for.body.248
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %141 = load %struct.attribute_spec*, %struct.attribute_spec** %spec, align 8
  %name257 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %141, i32 0, i32 0
  %142 = load i8*, i8** %name257, align 8
  %143 = load %union.tree_node*, %union.tree_node** %a226, align 8
  %common258 = bitcast %union.tree_node* %143 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common258, i32 0, i32 0
  %144 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %call259 = call %union.tree_node* @lookup_attribute(i8* %142, %union.tree_node* %144)
  store %union.tree_node* %call259, %union.tree_node** %a226, align 8
  br label %for.cond.245

for.end.260:                                      ; preds = %if.then.254, %for.cond.245
  %145 = load %union.tree_node*, %union.tree_node** %a226, align 8
  %cmp261 = icmp eq %union.tree_node* %145, null
  br i1 %cmp261, label %if.then.263, label %if.end.289

if.then.263:                                      ; preds = %for.end.260
  %146 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %147 = load %union.tree_node*, %union.tree_node** %146, align 8
  %common264 = bitcast %union.tree_node* %147 to %struct.tree_common*
  %code265 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common264, i32 0, i32 2
  %bf.load266 = load i32, i32* %code265, align 8
  %bf.clear267 = and i32 %bf.load266, 255
  %idxprom268 = sext i32 %bf.clear267 to i64
  %arrayidx269 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom268
  %148 = load i8, i8* %arrayidx269, align 1
  %conv270 = sext i8 %148 to i32
  %cmp271 = icmp eq i32 %conv270, 100
  br i1 %cmp271, label %if.then.273, label %if.else.277

if.then.273:                                      ; preds = %if.then.263
  %149 = load %union.tree_node*, %union.tree_node** %name, align 8
  %150 = load %union.tree_node*, %union.tree_node** %args, align 8
  %151 = load %union.tree_node*, %union.tree_node** %old_attrs, align 8
  %call274 = call %union.tree_node* @tree_cons(%union.tree_node* %149, %union.tree_node* %150, %union.tree_node* %151)
  %152 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %153 = load %union.tree_node*, %union.tree_node** %152, align 8
  %decl275 = bitcast %union.tree_node* %153 to %struct.tree_decl*
  %attributes276 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl275, i32 0, i32 16
  store %union.tree_node* %call274, %union.tree_node** %attributes276, align 8
  br label %if.end.288

if.else.277:                                      ; preds = %if.then.263
  %154 = load i32, i32* %flags.addr, align 4
  %and278 = and i32 %154, 8
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.then.280, label %if.else.284

if.then.280:                                      ; preds = %if.else.277
  %155 = load %union.tree_node*, %union.tree_node** %name, align 8
  %156 = load %union.tree_node*, %union.tree_node** %args, align 8
  %157 = load %union.tree_node*, %union.tree_node** %old_attrs, align 8
  %call281 = call %union.tree_node* @tree_cons(%union.tree_node* %155, %union.tree_node* %156, %union.tree_node* %157)
  %158 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %159 = load %union.tree_node*, %union.tree_node** %158, align 8
  %type282 = bitcast %union.tree_node* %159 to %struct.tree_type*
  %attributes283 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type282, i32 0, i32 4
  store %union.tree_node* %call281, %union.tree_node** %attributes283, align 8
  br label %if.end.287

if.else.284:                                      ; preds = %if.else.277
  %160 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  %161 = load %union.tree_node*, %union.tree_node** %160, align 8
  %162 = load %union.tree_node*, %union.tree_node** %name, align 8
  %163 = load %union.tree_node*, %union.tree_node** %args, align 8
  %164 = load %union.tree_node*, %union.tree_node** %old_attrs, align 8
  %call285 = call %union.tree_node* @tree_cons(%union.tree_node* %162, %union.tree_node* %163, %union.tree_node* %164)
  %call286 = call %union.tree_node* @build_type_attribute_variant(%union.tree_node* %161, %union.tree_node* %call285)
  %165 = load %union.tree_node**, %union.tree_node*** %anode, align 8
  store %union.tree_node* %call286, %union.tree_node** %165, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.284, %if.then.280
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.273
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %for.end.260
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.end.223
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.290, %if.then.172, %if.then.155, %if.else.82, %if.then.80, %if.then.59, %if.then.48
  %166 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common292 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %chain293 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common292, i32 0, i32 0
  %167 = load %union.tree_node*, %union.tree_node** %chain293, align 8
  store %union.tree_node* %167, %union.tree_node** %a, align 8
  br label %for.cond

for.end.294:                                      ; preds = %for.cond
  %168 = load %union.tree_node*, %union.tree_node** %returned_attrs, align 8
  ret %union.tree_node* %168
}

; Function Attrs: nounwind uwtable
define internal void @init_attributes() #0 {
entry:
  %0 = load i32, i32* @lang_attribute_common, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, %struct.attribute_spec* getelementptr inbounds ([25 x %struct.attribute_spec], [25 x %struct.attribute_spec]* @c_common_attribute_table, i32 0, i32 0), %struct.attribute_spec* getelementptr inbounds ([1 x %struct.attribute_spec], [1 x %struct.attribute_spec]* @empty_attribute_table, i32 0, i32 0)
  store %struct.attribute_spec* %cond, %struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 0), align 8
  %1 = load %struct.attribute_spec*, %struct.attribute_spec** @lang_attribute_table, align 8
  store %struct.attribute_spec* %1, %struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 1), align 8
  %2 = load %struct.attribute_spec*, %struct.attribute_spec** @format_attribute_table, align 8
  store %struct.attribute_spec* %2, %struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 2), align 8
  %3 = load %struct.attribute_spec*, %struct.attribute_spec** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 4), align 8
  store %struct.attribute_spec* %3, %struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i32 0, i64 3), align 8
  store i8 1, i8* @attributes_initialized, align 1
  ret void
}

declare void @insert_default_attributes(%union.tree_node*) #1

declare i32 @is_attribute_p(i8*, %union.tree_node*) #1

declare void @warning(i8*, ...) #1

declare i32 @list_length(%union.tree_node*) #1

declare void @error(i8*, ...) #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_type_copy(%union.tree_node*) #1

declare %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) #1

declare void @layout_decl(%union.tree_node*, i32) #1

declare %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) #1

declare i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_type_attribute_variant(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @split_specs_attrs(%union.tree_node* %specs_attrs, %union.tree_node** %declspecs, %union.tree_node** %prefix_attributes) #0 {
entry:
  %specs_attrs.addr = alloca %union.tree_node*, align 8
  %declspecs.addr = alloca %union.tree_node**, align 8
  %prefix_attributes.addr = alloca %union.tree_node**, align 8
  %t = alloca %union.tree_node*, align 8
  %s = alloca %union.tree_node*, align 8
  %a = alloca %union.tree_node*, align 8
  %next = alloca %union.tree_node*, align 8
  %specs = alloca %union.tree_node*, align 8
  %attrs = alloca %union.tree_node*, align 8
  store %union.tree_node* %specs_attrs, %union.tree_node** %specs_attrs.addr, align 8
  store %union.tree_node** %declspecs, %union.tree_node*** %declspecs.addr, align 8
  store %union.tree_node** %prefix_attributes, %union.tree_node*** %prefix_attributes.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp1 = icmp eq i32 %bf.clear, 25
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %union.tree_node**, %union.tree_node*** %declspecs.addr, align 8
  store %union.tree_node* null, %union.tree_node** %2, align 8
  %3 = load %union.tree_node**, %union.tree_node*** %prefix_attributes.addr, align 8
  store %union.tree_node* null, %union.tree_node** %3, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  %cmp2 = icmp ne %union.tree_node* %4, null
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.10

land.lhs.true.3:                                  ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp ne i32 %bf.clear7, 2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.3
  %6 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  %7 = load %union.tree_node**, %union.tree_node*** %declspecs.addr, align 8
  store %union.tree_node* %6, %union.tree_node** %7, align 8
  %8 = load %union.tree_node**, %union.tree_node*** %prefix_attributes.addr, align 8
  store %union.tree_node* null, %union.tree_node** %8, align 8
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.3, %if.end
  store %union.tree_node* null, %union.tree_node** %s, align 8
  store %union.tree_node* null, %union.tree_node** %specs, align 8
  store %union.tree_node* null, %union.tree_node** %a, align 8
  store %union.tree_node* null, %union.tree_node** %attrs, align 8
  %9 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  store %union.tree_node* %9, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common11 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %12, %union.tree_node** %next, align 8
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %13 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %14 = load %union.tree_node*, %union.tree_node** %value, align 8
  %cmp12 = icmp ne %union.tree_node* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.19

if.then.13:                                       ; preds = %for.body
  %15 = load %union.tree_node*, %union.tree_node** %specs, align 8
  %cmp14 = icmp eq %union.tree_node* %15, null
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %16, %union.tree_node** %s, align 8
  store %union.tree_node* %16, %union.tree_node** %specs, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.then.13
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  %18 = load %union.tree_node*, %union.tree_node** %s, align 8
  %common16 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %chain17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 0
  store %union.tree_node* %17, %union.tree_node** %chain17, align 8
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %19, %union.tree_node** %s, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.15
  br label %if.end.41

if.else.19:                                       ; preds = %for.body
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list20 = bitcast %union.tree_node* %20 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list20, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %cmp21 = icmp ne %union.tree_node* %21, null
  br i1 %cmp21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %if.else.19
  %22 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %cmp23 = icmp eq %union.tree_node* %22, null
  br i1 %cmp23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %if.then.22
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list25 = bitcast %union.tree_node* %23 to %struct.tree_list*
  %purpose26 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list25, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %purpose26, align 8
  store %union.tree_node* %24, %union.tree_node** %a, align 8
  store %union.tree_node* %24, %union.tree_node** %attrs, align 8
  br label %if.end.34

if.else.27:                                       ; preds = %if.then.22
  %25 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list28 = bitcast %union.tree_node* %25 to %struct.tree_list*
  %purpose29 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list28, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %purpose29, align 8
  %27 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common30 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %chain31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 0
  store %union.tree_node* %26, %union.tree_node** %chain31, align 8
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list32 = bitcast %union.tree_node* %28 to %struct.tree_list*
  %purpose33 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list32, i32 0, i32 1
  %29 = load %union.tree_node*, %union.tree_node** %purpose33, align 8
  store %union.tree_node* %29, %union.tree_node** %a, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.27, %if.then.24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.34
  %30 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common35 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %chain36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 0
  %31 = load %union.tree_node*, %union.tree_node** %chain36, align 8
  %cmp37 = icmp ne %union.tree_node* %31, null
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common38 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %chain39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %chain39, align 8
  store %union.tree_node* %33, %union.tree_node** %a, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.40

if.end.40:                                        ; preds = %while.end, %if.else.19
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %34 = load %union.tree_node*, %union.tree_node** %next, align 8
  store %union.tree_node* %34, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %union.tree_node*, %union.tree_node** %s, align 8
  %cmp42 = icmp ne %union.tree_node* %35, null
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %for.end
  %36 = load %union.tree_node*, %union.tree_node** %s, align 8
  %common44 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %chain45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %for.end
  %37 = load %union.tree_node*, %union.tree_node** %a, align 8
  %cmp47 = icmp ne %union.tree_node* %37, null
  br i1 %cmp47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.46
  %38 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common49 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %chain50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.46
  %39 = load %union.tree_node*, %union.tree_node** %specs, align 8
  %40 = load %union.tree_node**, %union.tree_node*** %declspecs.addr, align 8
  store %union.tree_node* %39, %union.tree_node** %40, align 8
  %41 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %42 = load %union.tree_node**, %union.tree_node*** %prefix_attributes.addr, align 8
  store %union.tree_node* %41, %union.tree_node** %42, align 8
  br label %return

return:                                           ; preds = %if.end.51, %if.then.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @strip_attrs(%union.tree_node* %specs_attrs) #0 {
entry:
  %specs_attrs.addr = alloca %union.tree_node*, align 8
  %specs = alloca %union.tree_node*, align 8
  %attrs = alloca %union.tree_node*, align 8
  store %union.tree_node* %specs_attrs, %union.tree_node** %specs_attrs.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %specs_attrs.addr, align 8
  call void @split_specs_attrs(%union.tree_node* %0, %union.tree_node** %specs, %union.tree_node** %attrs)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %identifier = bitcast %union.tree_node* %3 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %4 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %4)
  %5 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %attrs, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %union.tree_node*, %union.tree_node** %specs, align 8
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_packed_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node**, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  store %union.tree_node** null, %union.tree_node*** %type, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp6 = icmp eq i32 %bf.clear5, 33
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %5 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8
  %common9 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 1
  store %union.tree_node** %type10, %union.tree_node*** %type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node** %7, %union.tree_node*** %type, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  %8 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %tobool = icmp ne %union.tree_node** %8, null
  br i1 %tobool, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %if.end.11
  %9 = load i32, i32* %flags.addr, align 4
  %and = and i32 %9, 8
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %10 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %call = call %union.tree_node* @build_type_copy(%union.tree_node* %11)
  %12 = load %union.tree_node**, %union.tree_node*** %type, align 8
  store %union.tree_node* %call, %union.tree_node** %12, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  %13 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  %type16 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %packed_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 6
  %bf.load17 = load i32, i32* %packed_flag, align 4
  %bf.clear18 = and i32 %bf.load17, -1048577
  %bf.set = or i32 %bf.clear18, 1048576
  store i32 %bf.set, i32* %packed_flag, align 4
  br label %if.end.32

if.else.19:                                       ; preds = %if.end.11
  %15 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8
  %common20 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %code21, align 8
  %bf.clear23 = and i32 %bf.load22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 37
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else.19
  %17 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %17, align 8
  %decl = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %19 = bitcast i48* %regdecl_flag to i64*
  %bf.load27 = load i64, i64* %19, align 8
  %bf.clear28 = and i64 %bf.load27, -1025
  %bf.set29 = or i64 %bf.clear28, 1024
  store i64 %bf.set29, i64* %19, align 8
  br label %if.end.31

if.else.30:                                       ; preds = %if.else.19
  %20 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %20 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %21 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %21)
  %22 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %22, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.15
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_nocommon_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %4 = bitcast i48* %common_flag to i64*
  %bf.load1 = load i64, i64* %4, align 8
  %bf.clear2 = and i64 %bf.load1, -131073
  store i64 %bf.clear2, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_common_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %4 = bitcast i48* %common_flag to i64*
  %bf.load1 = load i64, i64* %4, align 8
  %bf.clear2 = and i64 %bf.load1, -131073
  %bf.set = or i64 %bf.clear2, 131072
  store i64 %bf.set, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_noreturn_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %2, %union.tree_node** %type, align 8
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load4 = load i32, i32* %volatile_flag, align 8
  %bf.clear5 = and i32 %bf.load4, -2049
  %bf.set = or i32 %bf.clear5, 2048
  store i32 %bf.set, i32* %volatile_flag, align 8
  br label %if.end.30

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common6 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 13
  br i1 %cmp10, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common11 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %common13 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load15 = load i32, i32* %code14, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 23
  br i1 %cmp17, label %if.then.18, label %if.else.29

if.then.18:                                       ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common19 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type20, align 8
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common21 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type22, align 8
  %common23 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load24 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load24, 12
  %bf.clear25 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear25, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %or = or i32 %cond, 2
  %call = call %union.tree_node* @build_qualified_type(%union.tree_node* %11, i32 %or)
  %call26 = call %union.tree_node* @build_pointer_type(%union.tree_node* %call)
  %14 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  %common27 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %type28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 1
  store %union.tree_node* %call26, %union.tree_node** %type28, align 8
  br label %if.end

if.else.29:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %16 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %17 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %17)
  %18 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_noinline_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %uninlinable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %4 = bitcast i48* %uninlinable to i64*
  %bf.load1 = load i64, i64* %4, align 8
  %bf.clear2 = and i64 %bf.load1, -68719476737
  %bf.set = or i64 %bf.clear2, 68719476736
  store i64 %bf.set, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_always_inline_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %2 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %3 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %3)
  %4 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_used_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %used_flag, align 8
  %bf.clear3 = and i32 %bf.load2, -65537
  %bf.set = or i32 %bf.clear3, 65536
  store i32 %bf.set, i32* %used_flag, align 8
  %4 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  %decl = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp4 = icmp ne %union.tree_node* %6, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %8 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8
  call void %7(%union.tree_node* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %decl5 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %assembler_name6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 14
  %12 = load %union.tree_node*, %union.tree_node** %assembler_name6, align 8
  %common7 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load8 = load i32, i32* %static_flag, align 8
  %bf.clear9 = and i32 %bf.load8, -262145
  %bf.set10 = or i32 %bf.clear9, 262144
  store i32 %bf.set10, i32* %static_flag, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %13 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %14 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %14)
  %15 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_unused_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.else.39

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %4, %union.tree_node** %decl, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp6 = icmp eq i32 %bf.clear5, 35
  br i1 %cmp6, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common8 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 34
  br i1 %cmp12, label %if.then.35, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common15 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  %cmp19 = icmp eq i32 %bf.clear18, 30
  br i1 %cmp19, label %if.then.35, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.14
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common22 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %code23, align 8
  %bf.clear25 = and i32 %bf.load24, 255
  %cmp26 = icmp eq i32 %bf.clear25, 31
  br i1 %cmp26, label %if.then.35, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.21
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common29 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 33
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.21, %lor.lhs.false.14, %lor.lhs.false, %if.then
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common36 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 2
  %bf.load37 = load i32, i32* %used_flag, align 8
  %bf.clear38 = and i32 %bf.load37, -65537
  %bf.set = or i32 %bf.clear38, 65536
  store i32 %bf.set, i32* %used_flag, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.28
  %11 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %11 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %12)
  %13 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.35
  br label %if.end.47

if.else.39:                                       ; preds = %entry
  %14 = load i32, i32* %flags.addr, align 4
  %and = and i32 %14, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.else.39
  %15 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8
  %call = call %union.tree_node* @build_type_copy(%union.tree_node* %16)
  %17 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %call, %union.tree_node** %17, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.else.39
  %18 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %19 = load %union.tree_node*, %union.tree_node** %18, align 8
  %common42 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %used_flag43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 2
  %bf.load44 = load i32, i32* %used_flag43, align 8
  %bf.clear45 = and i32 %bf.load44, -65537
  %bf.set46 = or i32 %bf.clear45, 65536
  store i32 %bf.set46, i32* %used_flag43, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.41, %if.end
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_const_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %2, %union.tree_node** %type, align 8
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8
  %common3 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load4 = load i32, i32* %readonly_flag, align 8
  %bf.clear5 = and i32 %bf.load4, -4097
  %bf.set = or i32 %bf.clear5, 4096
  store i32 %bf.set, i32* %readonly_flag, align 8
  br label %if.end.30

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common6 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 13
  br i1 %cmp10, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common11 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %common13 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load15 = load i32, i32* %code14, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 23
  br i1 %cmp17, label %if.then.18, label %if.else.29

if.then.18:                                       ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common19 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type20, align 8
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common21 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type22, align 8
  %common23 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load24 = load i32, i32* %volatile_flag, align 8
  %bf.lshr = lshr i32 %bf.load24, 11
  %bf.clear25 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear25, 0
  %cond = select i1 %tobool, i32 2, i32 0
  %or = or i32 1, %cond
  %call = call %union.tree_node* @build_qualified_type(%union.tree_node* %11, i32 %or)
  %call26 = call %union.tree_node* @build_pointer_type(%union.tree_node* %call)
  %14 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  %common27 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %type28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 1
  store %union.tree_node* %call26, %union.tree_node** %type28, align 8
  br label %if.end

if.else.29:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %16 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %17 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %17)
  %18 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_transparent_union_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node**, align 8
  %is_type = alloca i32, align 4
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  store %union.tree_node* null, %union.tree_node** %decl, align 8
  store %union.tree_node** null, %union.tree_node*** %type, align 8
  store i32 0, i32* %is_type, align 4
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %4, %union.tree_node** %decl, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  store %union.tree_node** %type3, %union.tree_node*** %type, align 8
  %6 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 33
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %is_type, align 4
  br label %if.end.20

if.else:                                          ; preds = %entry
  %8 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8
  %common10 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %idxprom14 = sext i32 %bf.clear13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom14
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 116
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %11 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node** %11, %union.tree_node*** %type, align 8
  store i32 1, i32* %is_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  %12 = load i32, i32* %is_type, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.52

land.lhs.true:                                    ; preds = %if.end.20
  %13 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  %common21 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp eq i32 %bf.clear24, 21
  br i1 %cmp25, label %land.lhs.true.27, label %if.else.52

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %15 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %cmp28 = icmp eq %union.tree_node* %15, null
  br i1 %cmp28, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.27
  %16 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8
  %type30 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %values, align 8
  %cmp31 = icmp ne %union.tree_node* %18, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.52

land.lhs.true.33:                                 ; preds = %lor.lhs.false
  %19 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8
  %type34 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type34, i32 0, i32 6
  %bf.load35 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load35, 9
  %bf.clear36 = and i32 %bf.lshr, 127
  %21 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  %type37 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %values38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type37, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %values38, align 8
  %decl39 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %mode40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl39, i32 0, i32 5
  %24 = bitcast i48* %mode40 to i64*
  %bf.load41 = load i64, i64* %24, align 8
  %bf.clear42 = and i64 %bf.load41, 255
  %bf.cast = trunc i64 %bf.clear42 to i32
  %cmp43 = icmp eq i32 %bf.clear36, %bf.cast
  br i1 %cmp43, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %land.lhs.true.33, %land.lhs.true.27
  %25 = load i32, i32* %flags.addr, align 4
  %and = and i32 %25, 8
  %tobool46 = icmp ne i32 %and, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.45
  %26 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %27 = load %union.tree_node*, %union.tree_node** %26, align 8
  %call = call %union.tree_node* @build_type_copy(%union.tree_node* %27)
  %28 = load %union.tree_node**, %union.tree_node*** %type, align 8
  store %union.tree_node* %call, %union.tree_node** %28, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.45
  %29 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %30 = load %union.tree_node*, %union.tree_node** %29, align 8
  %type49 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %transparent_union_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type49, i32 0, i32 6
  %bf.load50 = load i32, i32* %transparent_union_flag, align 4
  %bf.clear51 = and i32 %bf.load50, -524289
  %bf.set = or i32 %bf.clear51, 524288
  store i32 %bf.set, i32* %transparent_union_flag, align 4
  br label %if.end.91

if.else.52:                                       ; preds = %land.lhs.true.33, %lor.lhs.false, %land.lhs.true, %if.end.20
  %31 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %cmp53 = icmp ne %union.tree_node* %31, null
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.89

land.lhs.true.55:                                 ; preds = %if.else.52
  %32 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common56 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load58 = load i32, i32* %code57, align 8
  %bf.clear59 = and i32 %bf.load58, 255
  %cmp60 = icmp eq i32 %bf.clear59, 35
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.89

land.lhs.true.62:                                 ; preds = %land.lhs.true.55
  %33 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %34 = load %union.tree_node*, %union.tree_node** %33, align 8
  %common63 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %code64 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common63, i32 0, i32 2
  %bf.load65 = load i32, i32* %code64, align 8
  %bf.clear66 = and i32 %bf.load65, 255
  %cmp67 = icmp eq i32 %bf.clear66, 21
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.89

land.lhs.true.69:                                 ; preds = %land.lhs.true.62
  %35 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %36 = load %union.tree_node*, %union.tree_node** %35, align 8
  %type70 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %mode71 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type70, i32 0, i32 6
  %bf.load72 = load i32, i32* %mode71, align 4
  %bf.lshr73 = lshr i32 %bf.load72, 9
  %bf.clear74 = and i32 %bf.lshr73, 127
  %37 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %38 = load %union.tree_node*, %union.tree_node** %37, align 8
  %type75 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %values76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type75, i32 0, i32 1
  %39 = load %union.tree_node*, %union.tree_node** %values76, align 8
  %decl77 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %mode78 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl77, i32 0, i32 5
  %40 = bitcast i48* %mode78 to i64*
  %bf.load79 = load i64, i64* %40, align 8
  %bf.clear80 = and i64 %bf.load79, 255
  %bf.cast81 = trunc i64 %bf.clear80 to i32
  %cmp82 = icmp eq i32 %bf.clear74, %bf.cast81
  br i1 %cmp82, label %if.then.84, label %if.else.89

if.then.84:                                       ; preds = %land.lhs.true.69
  %41 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl85 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl85, i32 0, i32 5
  %42 = bitcast i48* %transparent_union to i64*
  %bf.load86 = load i64, i64* %42, align 8
  %bf.clear87 = and i64 %bf.load86, -524289
  %bf.set88 = or i64 %bf.clear87, 524288
  store i64 %bf.set88, i64* %42, align 8
  br label %if.end.90

if.else.89:                                       ; preds = %land.lhs.true.69, %land.lhs.true.62, %land.lhs.true.55, %if.else.52
  %43 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %43 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %44 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %44)
  %45 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %45, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.48
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_constructor_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %3, %union.tree_node** %type, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 23
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %call = call %union.tree_node* @decl_function_context(%union.tree_node* %6)
  %cmp9 = icmp eq %union.tree_node* %call, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.8
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl10 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %static_ctor_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 5
  %8 = bitcast i48* %static_ctor_flag to i64*
  %bf.load11 = load i64, i64* %8, align 8
  %bf.clear12 = and i64 %bf.load11, -1048577
  %bf.set = or i64 %bf.clear12, 1048576
  store i64 %bf.set, i64* %8, align 8
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common13 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load14 = load i32, i32* %used_flag, align 8
  %bf.clear15 = and i32 %bf.load14, -65537
  %bf.set16 = or i32 %bf.clear15, 65536
  store i32 %bf.set16, i32* %used_flag, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %10 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %10 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %11 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_destructor_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %3, %union.tree_node** %type, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 23
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %call = call %union.tree_node* @decl_function_context(%union.tree_node* %6)
  %cmp9 = icmp eq %union.tree_node* %call, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.8
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl10 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %static_dtor_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 5
  %8 = bitcast i48* %static_dtor_flag to i64*
  %bf.load11 = load i64, i64* %8, align 8
  %bf.clear12 = and i64 %bf.load11, -2097153
  %bf.set = or i64 %bf.clear12, 2097152
  store i64 %bf.set, i64* %8, align 8
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common13 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load14 = load i32, i32* %used_flag, align 8
  %bf.clear15 = and i32 %bf.load14, -65537
  %bf.set16 = or i32 %bf.clear15, 65536
  store i32 %bf.set16, i32* %used_flag, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %10 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %10 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %11 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_mode_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %mode = alloca i32, align 4
  %typefm = alloca %union.tree_node*, align 8
  %newp = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %2, align 1
  %3 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  br label %if.end.72

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list1 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value2, align 8
  %identifier3 = bitcast %union.tree_node* %8 to %struct.tree_identifier*
  %id4 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier3, i32 0, i32 1
  %str5 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id4, i32 0, i32 1
  %9 = load i8*, i8** %str5, align 8
  store i8* %9, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %call = call i64 @strlen(i8* %10) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %mode, align 4
  %11 = load i32, i32* %len, align 4
  %cmp6 = icmp sgt i32 %11, 4
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %12 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 95
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load i8*, i8** %p, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv13, 95
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %16 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom = sext i32 %sub to i64
  %17 = load i8*, i8** %p, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %18 to i32
  %cmp19 = icmp eq i32 %conv18, 95
  br i1 %cmp19, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %19 = load i32, i32* %len, align 4
  %sub22 = sub nsw i32 %19, 2
  %idxprom23 = sext i32 %sub22 to i64
  %20 = load i8*, i8** %p, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %20, i64 %idxprom23
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %21 to i32
  %cmp26 = icmp eq i32 %conv25, 95
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.21
  %22 = load i32, i32* %len, align 4
  %sub29 = sub nsw i32 %22, 1
  %conv30 = sext i32 %sub29 to i64
  %23 = alloca i8, i64 %conv30
  store i8* %23, i8** %newp, align 8
  %24 = load i8*, i8** %newp, align 8
  %25 = load i8*, i8** %p, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 2
  %call32 = call i8* @strcpy(i8* %24, i8* %arrayidx31) #5
  %26 = load i32, i32* %len, align 4
  %sub33 = sub nsw i32 %26, 4
  %idxprom34 = sext i32 %sub33 to i64
  %27 = load i8*, i8** %newp, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %27, i64 %idxprom34
  store i8 0, i8* %arrayidx35, align 1
  %28 = load i8*, i8** %newp, align 8
  store i8* %28, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.21, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true, %if.else
  %29 = load i8*, i8** %p, align 8
  %call36 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %if.end
  %30 = load i32, i32* @byte_mode, align 4
  store i32 %30, i32* %mode, align 4
  br label %if.end.57

if.else.38:                                       ; preds = %if.end
  %31 = load i8*, i8** %p, align 8
  %call39 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #4
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %if.else.38
  %32 = load i32, i32* @word_mode, align 4
  store i32 %32, i32* %mode, align 4
  br label %if.end.56

if.else.42:                                       ; preds = %if.else.38
  %33 = load i8*, i8** %p, align 8
  %call43 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)) #4
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else.46, label %if.then.45

if.then.45:                                       ; preds = %if.else.42
  %34 = load i32, i32* @ptr_mode, align 4
  store i32 %34, i32* %mode, align 4
  br label %if.end.55

if.else.46:                                       ; preds = %if.else.42
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.46
  %35 = load i32, i32* %j, align 4
  %cmp47 = icmp slt i32 %35, 59
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %p, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom49
  %38 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 @strcmp(i8* %36, i8* %38) #4
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %for.body
  %39 = load i32, i32* %j, align 4
  store i32 %39, i32* %mode, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %40 = load i32, i32* %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.55

if.end.55:                                        ; preds = %for.end, %if.then.45
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.41
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.37
  %41 = load i32, i32* %mode, align 4
  %cmp58 = icmp eq i32 %41, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.57
  %42 = load i8*, i8** %p, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* %42)
  br label %if.end.71

if.else.61:                                       ; preds = %if.end.57
  %43 = load i32, i32* %mode, align 4
  %44 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common62 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load63 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load63, 13
  %bf.clear64 = and i32 %bf.lshr, 1
  %call65 = call %union.tree_node* @type_for_mode(i32 %43, i32 %bf.clear64)
  store %union.tree_node* %call65, %union.tree_node** %typefm, align 8
  %cmp66 = icmp eq %union.tree_node* null, %call65
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else.61
  %45 = load i8*, i8** %p, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* %45)
  br label %if.end.70

if.else.69:                                       ; preds = %if.else.61
  %46 = load %union.tree_node*, %union.tree_node** %typefm, align 8
  %47 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %46, %union.tree_node** %47, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.60
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_section_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 13), align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.else.44

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common1 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %5 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common6 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 29
  br i1 %cmp10, label %if.then.11, label %if.else.42

if.then.11:                                       ; preds = %land.lhs.true
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common12 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 34
  br i1 %cmp16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %if.then.11
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp18 = icmp ne %union.tree_node* %8, null
  br i1 %cmp18, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common20 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load21 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load21, 18
  %bf.clear22 = and i32 %bf.lshr, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.19
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i32 0, i32 0))
  %11 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %11, align 1
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.19, %land.lhs.true.17, %if.then.11
  %12 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl25 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl25, i32 0, i32 15
  %13 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp26 = icmp ne %union.tree_node* %13, null
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.36

land.lhs.true.27:                                 ; preds = %if.else
  %14 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl28 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %section_name29 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl28, i32 0, i32 15
  %15 = load %union.tree_node*, %union.tree_node** %section_name29, align 8
  %string = bitcast %union.tree_node* %15 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %16 = load i8*, i8** %pointer, align 8
  %17 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list30 = bitcast %union.tree_node* %17 to %struct.tree_list*
  %value31 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list30, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %value31, align 8
  %string32 = bitcast %union.tree_node* %18 to %struct.tree_string*
  %pointer33 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string32, i32 0, i32 3
  %19 = load i8*, i8** %pointer33, align 8
  %call = call i32 @strcmp(i8* %16, i8* %19) #4
  %cmp34 = icmp ne i32 %call, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.27
  %20 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0))
  %22 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %22, align 1
  br label %if.end

if.else.36:                                       ; preds = %land.lhs.true.27, %if.else
  %23 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list37 = bitcast %union.tree_node* %23 to %struct.tree_list*
  %value38 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list37, i32 0, i32 2
  %24 = load %union.tree_node*, %union.tree_node** %value38, align 8
  %25 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl39 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %section_name40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl39, i32 0, i32 15
  store %union.tree_node* %24, %union.tree_node** %section_name40, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.36, %if.then.35
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then.24
  br label %if.end.43

if.else.42:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %26 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %27 = load %union.tree_node*, %union.tree_node** %26, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0))
  %28 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %28, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.end.41
  br label %if.end.45

if.else.44:                                       ; preds = %entry
  %29 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %30 = load %union.tree_node*, %union.tree_node** %29, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i32 0, i32 0))
  %31 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %31, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_aligned_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node**, align 8
  %is_type = alloca i32, align 4
  %align_expr = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %tt = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  store %union.tree_node* null, %union.tree_node** %decl, align 8
  store %union.tree_node** null, %union.tree_node*** %type, align 8
  store i32 0, i32* %is_type, align 4
  %0 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %value, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %union.tree_node* @size_int_wide(i64 16, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %2, %cond.true ], [ %call, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %align_expr, align 8
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  store %union.tree_node* %7, %union.tree_node** %decl, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  store %union.tree_node** %type3, %union.tree_node*** %type, align 8
  %9 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8
  %common4 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 33
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %is_type, align 4
  br label %if.end.20

if.else:                                          ; preds = %cond.end
  %11 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8
  %common10 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %idxprom14 = sext i32 %bf.clear13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom14
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 116
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  %14 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node** %14, %union.tree_node*** %type, align 8
  store i32 1, i32* %is_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %15 = load %union.tree_node*, %union.tree_node** %align_expr, align 8
  %common21 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp eq i32 %bf.clear24, 115
  br i1 %cmp25, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %16 = load %union.tree_node*, %union.tree_node** %align_expr, align 8
  %common27 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load29 = load i32, i32* %code28, align 8
  %bf.clear30 = and i32 %bf.load29, 255
  %cmp31 = icmp eq i32 %bf.clear30, 114
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %17 = load %union.tree_node*, %union.tree_node** %align_expr, align 8
  %common33 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common33, i32 0, i32 2
  %bf.load35 = load i32, i32* %code34, align 8
  %bf.clear36 = and i32 %bf.load35, 255
  %cmp37 = icmp eq i32 %bf.clear36, 116
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp37, %lor.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %19 = load %union.tree_node*, %union.tree_node** %align_expr, align 8
  %exp = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx39, align 8
  store %union.tree_node* %20, %union.tree_node** %align_expr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %21 = load %union.tree_node*, %union.tree_node** %align_expr, align 8
  %common40 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %code41, align 8
  %bf.clear43 = and i32 %bf.load42, 255
  %cmp44 = icmp ne i32 %bf.clear43, 25
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %while.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0))
  %22 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %22, align 1
  br label %if.end.128

if.else.47:                                       ; preds = %while.end
  %23 = load %union.tree_node*, %union.tree_node** %align_expr, align 8
  %call48 = call i32 @tree_log2(%union.tree_node* %23)
  store i32 %call48, i32* %i, align 4
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.47
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0))
  %24 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %24, align 1
  br label %if.end.127

if.else.52:                                       ; preds = %if.else.47
  %25 = load i32, i32* %i, align 4
  %cmp53 = icmp sgt i32 %25, 30
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0))
  %26 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %26, align 1
  br label %if.end.126

if.else.56:                                       ; preds = %if.else.52
  %27 = load i32, i32* %is_type, align 4
  %tobool57 = icmp ne i32 %27, 0
  br i1 %tobool57, label %if.then.58, label %if.else.96

if.then.58:                                       ; preds = %if.else.56
  %28 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool59 = icmp ne %union.tree_node* %28, null
  br i1 %tobool59, label %land.lhs.true, label %if.else.85

land.lhs.true:                                    ; preds = %if.then.58
  %29 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common60 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type61, align 8
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp62 = icmp ne %union.tree_node* %30, %31
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.85

land.lhs.true.64:                                 ; preds = %land.lhs.true
  %32 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl65 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl65, i32 0, i32 11
  %33 = load %union.tree_node*, %union.tree_node** %result, align 8
  %cmp66 = icmp eq %union.tree_node* %33, null
  br i1 %cmp66, label %if.then.68, label %if.else.85

if.then.68:                                       ; preds = %land.lhs.true.64
  %34 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common69 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common69, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type70, align 8
  store %union.tree_node* %35, %union.tree_node** %tt, align 8
  %36 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %37 = load %union.tree_node*, %union.tree_node** %36, align 8
  %call71 = call %union.tree_node* @build_type_copy(%union.tree_node* %37)
  %38 = load %union.tree_node**, %union.tree_node*** %type, align 8
  store %union.tree_node* %call71, %union.tree_node** %38, align 8
  %39 = load %union.tree_node*, %union.tree_node** %tt, align 8
  %40 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl72 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %result73 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl72, i32 0, i32 11
  store %union.tree_node* %39, %union.tree_node** %result73, align 8
  %41 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %42 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %43 = load %union.tree_node*, %union.tree_node** %42, align 8
  %type74 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %name75 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type74, i32 0, i32 11
  store %union.tree_node* %41, %union.tree_node** %name75, align 8
  %44 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common76 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load77 = load i32, i32* %used_flag, align 8
  %bf.lshr = lshr i32 %bf.load77, 16
  %bf.clear78 = and i32 %bf.lshr, 1
  %45 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  %common79 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %used_flag80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 2
  %bf.load81 = load i32, i32* %used_flag80, align 8
  %bf.value = and i32 %bf.clear78, 1
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear82 = and i32 %bf.load81, -65537
  %bf.set = or i32 %bf.clear82, %bf.shl
  store i32 %bf.set, i32* %used_flag80, align 8
  %47 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %48 = load %union.tree_node*, %union.tree_node** %47, align 8
  %49 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common83 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %type84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 1
  store %union.tree_node* %48, %union.tree_node** %type84, align 8
  br label %if.end.90

if.else.85:                                       ; preds = %land.lhs.true.64, %land.lhs.true, %if.then.58
  %50 = load i32, i32* %flags.addr, align 4
  %and = and i32 %50, 8
  %tobool86 = icmp ne i32 %and, 0
  br i1 %tobool86, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %if.else.85
  %51 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %52 = load %union.tree_node*, %union.tree_node** %51, align 8
  %call88 = call %union.tree_node* @build_type_copy(%union.tree_node* %52)
  %53 = load %union.tree_node**, %union.tree_node*** %type, align 8
  store %union.tree_node* %call88, %union.tree_node** %53, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.else.85
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.68
  %54 = load i32, i32* %i, align 4
  %shl = shl i32 1, %54
  %mul = mul nsw i32 %shl, 8
  %55 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %56 = load %union.tree_node*, %union.tree_node** %55, align 8
  %type91 = bitcast %union.tree_node* %56 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type91, i32 0, i32 7
  store i32 %mul, i32* %align, align 4
  %57 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %58 = load %union.tree_node*, %union.tree_node** %57, align 8
  %type92 = bitcast %union.tree_node* %58 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type92, i32 0, i32 6
  %bf.load93 = load i32, i32* %user_align, align 4
  %bf.clear94 = and i32 %bf.load93, 2147483647
  %bf.set95 = or i32 %bf.clear94, -2147483648
  store i32 %bf.set95, i32* %user_align, align 4
  br label %if.end.125

if.else.96:                                       ; preds = %if.else.56
  %59 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common97 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %code98 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common97, i32 0, i32 2
  %bf.load99 = load i32, i32* %code98, align 8
  %bf.clear100 = and i32 %bf.load99, 255
  %cmp101 = icmp ne i32 %bf.clear100, 34
  br i1 %cmp101, label %land.lhs.true.103, label %if.else.111

land.lhs.true.103:                                ; preds = %if.else.96
  %60 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common104 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %code105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 2
  %bf.load106 = load i32, i32* %code105, align 8
  %bf.clear107 = and i32 %bf.load106, 255
  %cmp108 = icmp ne i32 %bf.clear107, 37
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %land.lhs.true.103
  %61 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0))
  %62 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %62, align 1
  br label %if.end.124

if.else.111:                                      ; preds = %land.lhs.true.103, %if.else.96
  %63 = load i32, i32* %i, align 4
  %shl112 = shl i32 1, %63
  %mul113 = mul nsw i32 %shl112, 8
  %64 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl114 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl114, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %65 = bitcast %struct.anon.0* %a to i32*
  %bf.load115 = load i32, i32* %65, align 4
  %bf.value116 = and i32 %mul113, 16777215
  %bf.clear117 = and i32 %bf.load115, -16777216
  %bf.set118 = or i32 %bf.clear117, %bf.value116
  store i32 %bf.set118, i32* %65, align 4
  %66 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl119 = bitcast %union.tree_node* %66 to %struct.tree_decl*
  %user_align120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl119, i32 0, i32 5
  %67 = bitcast i48* %user_align120 to i64*
  %bf.load121 = load i64, i64* %67, align 8
  %bf.clear122 = and i64 %bf.load121, -34359738369
  %bf.set123 = or i64 %bf.clear122, 34359738368
  store i64 %bf.set123, i64* %67, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.111, %if.then.110
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.90
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.55
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.51
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.46
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_weak_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  call void @declare_weak(%union.tree_node* %1)
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_alias_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  %id = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 12
  %4 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp6 = icmp ne i32 %bf.clear5, 30
  br i1 %cmp6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl8 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %7 = bitcast i48* %external_flag to i64*
  %bf.load9 = load i64, i64* %7, align 8
  %bf.lshr = lshr i64 %bf.load9, 8
  %bf.clear10 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear10 to i32
  %tobool11 = icmp ne i32 %bf.cast, 0
  br i1 %tobool11, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i32 0, i32 0))
  %9 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %9, align 1
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.7, %lor.lhs.false
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %call = call %union.tree_node* @decl_function_context(%union.tree_node* %10)
  %cmp12 = icmp eq %union.tree_node* %call, null
  br i1 %cmp12, label %if.then.13, label %if.else.38

if.then.13:                                       ; preds = %if.else
  %11 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %11 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %12, %union.tree_node** %id, align 8
  %13 = load %union.tree_node*, %union.tree_node** %id, align 8
  %common14 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %code15, align 8
  %bf.clear17 = and i32 %bf.load16, 255
  %cmp18 = icmp ne i32 %bf.clear17, 29
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.13
  call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0))
  %14 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %14, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %if.then.13
  %15 = load %union.tree_node*, %union.tree_node** %id, align 8
  %string = bitcast %union.tree_node* %15 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %16 = load i8*, i8** %pointer, align 8
  %call20 = call %union.tree_node* @get_identifier(i8* %16)
  store %union.tree_node* %call20, %union.tree_node** %id, align 8
  %17 = load %union.tree_node*, %union.tree_node** %id, align 8
  %common21 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load22 = load i32, i32* %used_flag, align 8
  %bf.clear23 = and i32 %bf.load22, -65537
  %bf.set = or i32 %bf.clear23, 65536
  store i32 %bf.set, i32* %used_flag, align 8
  %18 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common24 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 30
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.end
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %20 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl30 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %initial31 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl30, i32 0, i32 12
  store %union.tree_node* %19, %union.tree_node** %initial31, align 8
  br label %if.end.37

if.else.32:                                       ; preds = %if.end
  %21 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl33 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %external_flag34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 5
  %22 = bitcast i48* %external_flag34 to i64*
  %bf.load35 = load i64, i64* %22, align 8
  %bf.clear36 = and i64 %bf.load35, -257
  store i64 %bf.clear36, i64* %22, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.29
  br label %if.end.40

if.else.38:                                       ; preds = %if.else
  %23 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %23 to %struct.tree_identifier*
  %id39 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id39, i32 0, i32 1
  %24 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %24)
  %25 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %25, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.end.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.19
  %26 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %26
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_no_instrument_function_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %4 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %4 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %5 = load i8*, i8** %str, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i32 0, i32 0), i8* %5)
  %6 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %6, align 1
  br label %if.end.10

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 12
  %8 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool = icmp ne %union.tree_node* %8, null
  br i1 %tobool, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %10 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier3 = bitcast %union.tree_node* %10 to %struct.tree_identifier*
  %id4 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier3, i32 0, i32 1
  %str5 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id4, i32 0, i32 1
  %11 = load i8*, i8** %str5, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %12, align 1
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl7 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %no_instrument_function_entry_exit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 5
  %14 = bitcast i48* %no_instrument_function_entry_exit to i64*
  %bf.load8 = load i64, i64* %14, align 8
  %bf.clear9 = and i64 %bf.load8, -33554433
  %bf.set = or i64 %bf.clear9, 33554432
  store i64 %bf.set, i64* %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_malloc_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %malloc_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %4 = bitcast i48* %malloc_flag to i64*
  %bf.load1 = load i64, i64* %4, align 8
  %bf.clear2 = and i64 %bf.load1, -134217729
  %bf.set = or i64 %bf.clear2, 134217728
  store i64 %bf.set, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_no_limit_stack_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %4 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %4 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %5 = load i8*, i8** %str, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i32 0, i32 0), i8* %5)
  %6 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %6, align 1
  br label %if.end.10

if.else:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 12
  %8 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool = icmp ne %union.tree_node* %8, null
  br i1 %tobool, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %10 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier3 = bitcast %union.tree_node* %10 to %struct.tree_identifier*
  %id4 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier3, i32 0, i32 1
  %str5 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id4, i32 0, i32 1
  %11 = load i8*, i8** %str5, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0), i8* %11)
  %12 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %12, align 1
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl7 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %no_limit_stack = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 5
  %14 = bitcast i48* %no_limit_stack to i64*
  %bf.load8 = load i64, i64* %14, align 8
  %bf.clear9 = and i64 %bf.load8, -268435457
  %bf.set = or i64 %bf.clear9, 268435456
  store i64 %bf.set, i64* %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_pure_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %pure_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %4 = bitcast i48* %pure_flag to i64*
  %bf.load1 = load i64, i64* %4, align 8
  %bf.clear2 = and i64 %bf.load1, -2147483649
  %bf.set = or i64 %bf.clear2, 2147483648
  store i64 %bf.set, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  %7 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_deprecated_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  %warn = alloca i32, align 4
  %what = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  store %union.tree_node* null, %union.tree_node** %type, align 8
  store i32 0, i32* %warn, align 4
  store i8* null, i8** %what, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %4, %union.tree_node** %decl, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type3, align 8
  store %union.tree_node* %6, %union.tree_node** %type, align 8
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common4 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 33
  br i1 %cmp8, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common10 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp eq i32 %bf.clear13, 35
  br i1 %cmp14, label %if.then.37, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common17 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load19 = load i32, i32* %code18, align 8
  %bf.clear20 = and i32 %bf.load19, 255
  %cmp21 = icmp eq i32 %bf.clear20, 34
  br i1 %cmp21, label %if.then.37, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.16
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common24 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 30
  br i1 %cmp28, label %if.then.37, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.23
  %11 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common31 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 37
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.23, %lor.lhs.false.16, %lor.lhs.false, %if.then
  %12 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common38 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %deprecated_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load39 = load i32, i32* %deprecated_flag, align 8
  %bf.clear40 = and i32 %bf.load39, -8388609
  %bf.set = or i32 %bf.clear40, 8388608
  store i32 %bf.set, i32* %deprecated_flag, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.30
  store i32 1, i32* %warn, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.37
  br label %if.end.61

if.else.41:                                       ; preds = %entry
  %13 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  %common42 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 2
  %bf.load44 = load i32, i32* %code43, align 8
  %bf.clear45 = and i32 %bf.load44, 255
  %idxprom46 = sext i32 %bf.clear45 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom46
  %15 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %15 to i32
  %cmp49 = icmp eq i32 %conv48, 116
  br i1 %cmp49, label %if.then.51, label %if.else.59

if.then.51:                                       ; preds = %if.else.41
  %16 = load i32, i32* %flags.addr, align 4
  %and = and i32 %16, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.51
  %17 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %17, align 8
  %call = call %union.tree_node* @build_type_copy(%union.tree_node* %18)
  %19 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %call, %union.tree_node** %19, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.51
  %20 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8
  %common54 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %deprecated_flag55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 2
  %bf.load56 = load i32, i32* %deprecated_flag55, align 8
  %bf.clear57 = and i32 %bf.load56, -8388609
  %bf.set58 = or i32 %bf.clear57, 8388608
  store i32 %bf.set58, i32* %deprecated_flag55, align 8
  %22 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  store %union.tree_node* %23, %union.tree_node** %type, align 8
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.41
  store i32 1, i32* %warn, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.end.53
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %24 = load i32, i32* %warn, align 4
  %tobool62 = icmp ne i32 %24, 0
  br i1 %tobool62, label %if.then.63, label %if.end.116

if.then.63:                                       ; preds = %if.end.61
  %25 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %25, align 1
  %26 = load %union.tree_node*, %union.tree_node** %type, align 8
  %tobool64 = icmp ne %union.tree_node* %26, null
  br i1 %tobool64, label %land.lhs.true, label %if.end.105

land.lhs.true:                                    ; preds = %if.then.63
  %27 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type65 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %name66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type65, i32 0, i32 11
  %28 = load %union.tree_node*, %union.tree_node** %name66, align 8
  %tobool67 = icmp ne %union.tree_node* %28, null
  br i1 %tobool67, label %if.then.68, label %if.end.105

if.then.68:                                       ; preds = %land.lhs.true
  %29 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type69 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %name70 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type69, i32 0, i32 11
  %30 = load %union.tree_node*, %union.tree_node** %name70, align 8
  %common71 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %code72 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common71, i32 0, i32 2
  %bf.load73 = load i32, i32* %code72, align 8
  %bf.clear74 = and i32 %bf.load73, 255
  %cmp75 = icmp eq i32 %bf.clear74, 1
  br i1 %cmp75, label %if.then.77, label %if.else.80

if.then.77:                                       ; preds = %if.then.68
  %31 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %32 = load %union.tree_node*, %union.tree_node** %31, align 8
  %type78 = bitcast %union.tree_node* %32 to %struct.tree_type*
  %name79 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type78, i32 0, i32 11
  %33 = load %union.tree_node*, %union.tree_node** %name79, align 8
  %identifier = bitcast %union.tree_node* %33 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %34 = load i8*, i8** %str, align 8
  store i8* %34, i8** %what, align 8
  br label %if.end.104

if.else.80:                                       ; preds = %if.then.68
  %35 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type81 = bitcast %union.tree_node* %35 to %struct.tree_type*
  %name82 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type81, i32 0, i32 11
  %36 = load %union.tree_node*, %union.tree_node** %name82, align 8
  %common83 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 2
  %bf.load85 = load i32, i32* %code84, align 8
  %bf.clear86 = and i32 %bf.load85, 255
  %cmp87 = icmp eq i32 %bf.clear86, 33
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.103

land.lhs.true.89:                                 ; preds = %if.else.80
  %37 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type90 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %name91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type90, i32 0, i32 11
  %38 = load %union.tree_node*, %union.tree_node** %name91, align 8
  %decl92 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %name93 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl92, i32 0, i32 8
  %39 = load %union.tree_node*, %union.tree_node** %name93, align 8
  %tobool94 = icmp ne %union.tree_node* %39, null
  br i1 %tobool94, label %if.then.95, label %if.end.103

if.then.95:                                       ; preds = %land.lhs.true.89
  %40 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type96 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %name97 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type96, i32 0, i32 11
  %41 = load %union.tree_node*, %union.tree_node** %name97, align 8
  %decl98 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %name99 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl98, i32 0, i32 8
  %42 = load %union.tree_node*, %union.tree_node** %name99, align 8
  %identifier100 = bitcast %union.tree_node* %42 to %struct.tree_identifier*
  %id101 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier100, i32 0, i32 1
  %str102 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id101, i32 0, i32 1
  %43 = load i8*, i8** %str102, align 8
  store i8* %43, i8** %what, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.95, %land.lhs.true.89, %if.else.80
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.77
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true, %if.then.63
  %44 = load i8*, i8** %what, align 8
  %tobool106 = icmp ne i8* %44, null
  br i1 %tobool106, label %if.then.107, label %if.else.111

if.then.107:                                      ; preds = %if.end.105
  %45 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier108 = bitcast %union.tree_node* %45 to %struct.tree_identifier*
  %id109 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier108, i32 0, i32 1
  %str110 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id109, i32 0, i32 1
  %46 = load i8*, i8** %str110, align 8
  %47 = load i8*, i8** %what, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0), i8* %46, i8* %47)
  br label %if.end.115

if.else.111:                                      ; preds = %if.end.105
  %48 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier112 = bitcast %union.tree_node* %48 to %struct.tree_identifier*
  %id113 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier112, i32 0, i32 1
  %str114 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id113, i32 0, i32 1
  %49 = load i8*, i8** %str114, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %49)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.111, %if.then.107
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.61
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @handle_vector_size_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %vecsize = alloca i64, align 8
  %nunits = alloca i64, align 8
  %mode = alloca i32, align 4
  %orig_mode = alloca i32, align 4
  %new_mode = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %new_type = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %2, align 1
  %3 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call = call i32 @host_integerp(%union.tree_node* %4, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* %6)
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list1 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value2, align 8
  %call3 = call i64 @tree_low_cst(%union.tree_node* %8, i32 1)
  store i64 %call3, i64* %vecsize, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 13
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common4 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 15
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common10 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp eq i32 %bf.clear13, 23
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.9
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common15 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  %cmp19 = icmp eq i32 %bf.clear18, 18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.9, %lor.lhs.false, %while.cond
  %13 = phi i1 [ true, %lor.lhs.false.9 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp19, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %14 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common20 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type21, align 8
  store %union.tree_node* %15, %union.tree_node** %type, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type22 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %mode23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 6
  %bf.load24 = load i32, i32* %mode23, align 4
  %bf.lshr = lshr i32 %bf.load24, 9
  %bf.clear25 = and i32 %bf.lshr, 127
  store i32 %bf.clear25, i32* %orig_mode, align 4
  %17 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common26 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 20
  br i1 %cmp30, label %if.then.40, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %while.end
  %18 = load i32, i32* %orig_mode, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  %cmp32 = icmp ne i32 %19, 2
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false.36

land.lhs.true:                                    ; preds = %lor.lhs.false.31
  %20 = load i32, i32* %orig_mode, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom33
  %21 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp ne i32 %21, 1
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %land.lhs.true, %lor.lhs.false.31
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type37 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type37, i32 0, i32 3
  %23 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call38 = call i32 @host_integerp(%union.tree_node* %23, i32 1)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false.36, %land.lhs.true, %while.end
  %24 = load %union.tree_node*, %union.tree_node** %name.addr, align 8
  %identifier41 = bitcast %union.tree_node* %24 to %struct.tree_identifier*
  %id42 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier41, i32 0, i32 1
  %str43 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id42, i32 0, i32 1
  %25 = load i8*, i8** %str43, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i32 0, i32 0), i8* %25)
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false.36
  %26 = load i64, i64* %vecsize, align 8
  %27 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type45 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %size_unit46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i32 0, i32 3
  %28 = load %union.tree_node*, %union.tree_node** %size_unit46, align 8
  %call47 = call i64 @tree_low_cst(%union.tree_node* %28, i32 1)
  %div = udiv i64 %26, %call47
  store i64 %div, i64* %nunits, align 8
  store i32 0, i32* %new_mode, align 4
  %29 = load i32, i32* %orig_mode, align 4
  %idxprom48 = sext i32 %29 to i64
  %arrayidx49 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom48
  %30 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp eq i32 %30, 1
  %cond = select i1 %cmp50, i32 7, i32 8
  %idxprom51 = sext i32 %cond to i64
  %arrayidx52 = getelementptr inbounds [9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 %idxprom51
  %31 = load i32, i32* %arrayidx52, align 4
  store i32 %31, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %32 = load i32, i32* %mode, align 4
  %cmp53 = icmp ne i32 %32, 0
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i64, i64* %vecsize, align 8
  %34 = load i32, i32* %mode, align 4
  %idxprom54 = sext i32 %34 to i64
  %arrayidx55 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom54
  %35 = load i8, i8* %arrayidx55, align 1
  %conv = zext i8 %35 to i64
  %cmp56 = icmp eq i64 %33, %conv
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.76

land.lhs.true.58:                                 ; preds = %for.body
  %36 = load i64, i64* %nunits, align 8
  %37 = load i32, i32* %mode, align 4
  %idxprom59 = sext i32 %37 to i64
  %arrayidx60 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom59
  %38 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %38 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.58
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.58
  %39 = load i32, i32* %mode, align 4
  %idxprom64 = sext i32 %39 to i64
  %arrayidx65 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom64
  %40 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %40 to i32
  %41 = load i32, i32* %mode, align 4
  %idxprom67 = sext i32 %41 to i64
  %arrayidx68 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom67
  %42 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %42 to i32
  %div70 = sdiv i32 %conv66, %conv69
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond71 = phi i32 [ 0, %cond.true ], [ %div70, %cond.false ]
  %conv72 = sext i32 %cond71 to i64
  %cmp73 = icmp eq i64 %36, %conv72
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %cond.end
  %43 = load i32, i32* %mode, align 4
  store i32 %43, i32* %new_mode, align 4
  br label %for.end

if.end.76:                                        ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %44 = load i32, i32* %mode, align 4
  %idxprom77 = sext i32 %44 to i64
  %arrayidx78 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom77
  %45 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %45 to i32
  store i32 %conv79, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.75, %for.cond
  %46 = load i32, i32* %new_mode, align 4
  %cmp80 = icmp eq i32 %46, 0
  br i1 %cmp80, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %for.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.93

if.else:                                          ; preds = %for.end
  %47 = load i32, i32* %new_mode, align 4
  %48 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common83 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 2
  %bf.load84 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr85 = lshr i32 %bf.load84, 13
  %bf.clear86 = and i32 %bf.lshr85, 1
  %call87 = call %union.tree_node* @type_for_mode(i32 %47, i32 %bf.clear86)
  store %union.tree_node* %call87, %union.tree_node** %new_type, align 8
  %49 = load %union.tree_node*, %union.tree_node** %new_type, align 8
  %tobool88 = icmp ne %union.tree_node* %49, null
  br i1 %tobool88, label %if.else.90, label %if.then.89

if.then.89:                                       ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.92

if.else.90:                                       ; preds = %if.else
  %50 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %51 = load %union.tree_node*, %union.tree_node** %50, align 8
  %52 = load %union.tree_node*, %union.tree_node** %new_type, align 8
  %call91 = call %union.tree_node* @vector_size_helper(%union.tree_node* %51, %union.tree_node* %52)
  %53 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %call91, %union.tree_node** %53, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.82
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.then.40, %if.then
  %54 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %54
}

declare %union.tree_node* @build_pointer_type(%union.tree_node*) #1

declare %union.tree_node* @build_qualified_type(%union.tree_node*, i32) #1

declare %union.tree_node* @decl_function_context(%union.tree_node*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %union.tree_node* @type_for_mode(i32, i32) #1

declare void @error_with_decl(%union.tree_node*, i8*, ...) #1

declare %union.tree_node* @size_int_wide(i64, i32) #1

declare i32 @tree_log2(%union.tree_node*) #1

declare void @declare_weak(%union.tree_node*) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @vector_size_helper(%union.tree_node* %type, %union.tree_node* %bottom) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %bottom.addr = alloca %union.tree_node*, align 8
  %inner = alloca %union.tree_node*, align 8
  %outer = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %bottom, %union.tree_node** %bottom.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 15
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common6 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type7, align 8
  %4 = load %union.tree_node*, %union.tree_node** %bottom.addr, align 8
  %call = call %union.tree_node* @vector_size_helper(%union.tree_node* %3, %union.tree_node* %4)
  store %union.tree_node* %call, %union.tree_node** %inner, align 8
  %5 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %call8 = call %union.tree_node* @build_pointer_type(%union.tree_node* %5)
  store %union.tree_node* %call8, %union.tree_node** %outer, align 8
  br label %if.end.35

if.else:                                          ; preds = %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common9 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 18
  br i1 %cmp13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common15 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type16, align 8
  %9 = load %union.tree_node*, %union.tree_node** %bottom.addr, align 8
  %call17 = call %union.tree_node* @vector_size_helper(%union.tree_node* %8, %union.tree_node* %9)
  store %union.tree_node* %call17, %union.tree_node** %inner, align 8
  %10 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type18 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %values, align 8
  %call19 = call %union.tree_node* @build_array_type(%union.tree_node* %10, %union.tree_node* %12)
  store %union.tree_node* %call19, %union.tree_node** %outer, align 8
  br label %if.end.34

if.else.20:                                       ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common21 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp eq i32 %bf.clear24, 23
  br i1 %cmp25, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %if.else.20
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common27 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type28, align 8
  %16 = load %union.tree_node*, %union.tree_node** %bottom.addr, align 8
  %call29 = call %union.tree_node* @vector_size_helper(%union.tree_node* %15, %union.tree_node* %16)
  store %union.tree_node* %call29, %union.tree_node** %inner, align 8
  %17 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type30 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %values31 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %values31, align 8
  %call32 = call %union.tree_node* @build_function_type(%union.tree_node* %17, %union.tree_node* %19)
  store %union.tree_node* %call32, %union.tree_node** %outer, align 8
  br label %if.end

if.else.33:                                       ; preds = %if.else.20
  %20 = load %union.tree_node*, %union.tree_node** %bottom.addr, align 8
  store %union.tree_node* %20, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.14
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then
  %21 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common36 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 2
  %bf.load37 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load37, 12
  %bf.clear38 = and i32 %bf.lshr, 1
  %22 = load %union.tree_node*, %union.tree_node** %outer, align 8
  %common39 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %readonly_flag40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %readonly_flag40, align 8
  %bf.value = and i32 %bf.clear38, 1
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear42 = and i32 %bf.load41, -4097
  %bf.set = or i32 %bf.clear42, %bf.shl
  store i32 %bf.set, i32* %readonly_flag40, align 8
  %23 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common43 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common43, i32 0, i32 2
  %bf.load44 = load i32, i32* %volatile_flag, align 8
  %bf.lshr45 = lshr i32 %bf.load44, 11
  %bf.clear46 = and i32 %bf.lshr45, 1
  %24 = load %union.tree_node*, %union.tree_node** %outer, align 8
  %common47 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %volatile_flag48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load49 = load i32, i32* %volatile_flag48, align 8
  %bf.value50 = and i32 %bf.clear46, 1
  %bf.shl51 = shl i32 %bf.value50, 11
  %bf.clear52 = and i32 %bf.load49, -2049
  %bf.set53 = or i32 %bf.clear52, %bf.shl51
  store i32 %bf.set53, i32* %volatile_flag48, align 8
  %25 = load %union.tree_node*, %union.tree_node** %outer, align 8
  store %union.tree_node* %25, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.33
  %26 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %26
}

declare %union.tree_node* @build_array_type(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
