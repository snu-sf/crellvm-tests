; ModuleID = 'c-pragma.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.language_function = type { %struct.stmt_tree_s, %union.tree_node* }
%struct.stmt_tree_s = type { %union.tree_node*, %union.tree_node*, i8*, i32 }
%struct.lang_decl = type opaque
%struct.cpp_reader = type opaque
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }

@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@pending_weaks = internal global %union.tree_node* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"asm declaration conficts with previous rename\00", align 1
@parse_in = external global %struct.cpp_reader*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"applying #pragma weak `%s' after first use results in unspecified behavior\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"missing '(' after '#pragma pack' - ignored\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"malformed '#pragma pack' - ignored\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"unknown action '%s' for '#pragma pack' - ignored\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"malformed '#pragma pack(push[, id], <n>)' - ignored\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"malformed '#pragma pack(pop[, id])' - ignored\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"junk at end of '#pragma pack'\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"alignment must be a small power of two, not %d\00", align 1
@maximum_field_alignment = external global i32, align 4
@.str.14 = private unnamed_addr constant [62 x i8] c"#pragma pack(push[, id], <n>) is not supported on this target\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"#pragma pack(pop[, id], <n>) is not supported on this target\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"malformed #pragma weak, ignored\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"junk at end of #pragma weak\00", align 1
@tree_code_type = external global [256 x i8], align 16

; Function Attrs: nounwind uwtable
define void @maybe_apply_pragma_weak(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %p = alloca %union.tree_node**, align 8
  %t = alloca %union.tree_node*, align 8
  %id = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common6 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load7, 18
  %bf.clear8 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl10 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 5
  %4 = bitcast i48* %external_flag to i64*
  %bf.load11 = load i64, i64* %4, align 8
  %bf.lshr12 = lshr i64 %bf.load11, 8
  %bf.clear13 = and i64 %bf.lshr12, 1
  %bf.cast = trunc i64 %bf.clear13 to i32
  %tobool14 = icmp ne i32 %bf.cast, 0
  br i1 %tobool14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.9
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common16 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load17 = load i32, i32* %public_flag, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 19
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.9, %land.lhs.true, %entry
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl21 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 14
  %7 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp22 = icmp ne %union.tree_node* %7, null
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %8(%union.tree_node* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl23 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %assembler_name24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 14
  %11 = load %union.tree_node*, %union.tree_node** %assembler_name24, align 8
  store %union.tree_node* %11, %union.tree_node** %id, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false
  br label %for.end

if.end:                                           ; preds = %cond.end
  store %union.tree_node** @pending_weaks, %union.tree_node*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %union.tree_node**, %union.tree_node*** %p, align 8
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  store %union.tree_node* %13, %union.tree_node** %t, align 8
  %tobool25 = icmp ne %union.tree_node* %13, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %union.tree_node*, %union.tree_node** %id, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %15 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %16 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %cmp26 = icmp eq %union.tree_node* %14, %16
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %for.body
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list28 = bitcast %union.tree_node* %18 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list28, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @apply_pragma_weak(%union.tree_node* %17, %union.tree_node* %19)
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common29 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 0
  %21 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %22 = load %union.tree_node**, %union.tree_node*** %p, align 8
  store %union.tree_node* %21, %union.tree_node** %22, align 8
  br label %for.end

if.end.30:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common31 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %chain32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 0
  store %union.tree_node** %chain32, %union.tree_node*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.then.27, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_pragma_weak(%union.tree_node* %decl, %union.tree_node* %value) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %value.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %identifier = bitcast %union.tree_node* %1 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 0
  %2 = load i32, i32* %len, align 4
  %3 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %identifier1 = bitcast %union.tree_node* %3 to %struct.tree_identifier*
  %id2 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier1, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2, i32 0, i32 1
  %4 = load i8*, i8** %str, align 8
  %call = call %union.tree_node* @build_string(i32 %2, i8* %4)
  store %union.tree_node* %call, %union.tree_node** %value.addr, align 8
  %call3 = call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %5 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %call4 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %5)
  %call5 = call %union.tree_node* @build_tree_list(%union.tree_node* %call3, %union.tree_node* %call4)
  %call6 = call %union.tree_node* @decl_attributes(%union.tree_node** %decl.addr, %union.tree_node* %call5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl7 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 5
  %7 = bitcast i48* %external_flag to i64*
  %bf.load = load i64, i64* %7, align 8
  %bf.lshr = lshr i64 %bf.load, 8
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool8 = icmp ne i32 %bf.cast, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load9 = load i32, i32* %used_flag, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 16
  %bf.clear11 = and i32 %bf.lshr10, 1
  %tobool12 = icmp ne i32 %bf.clear11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.23

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl14 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 14
  %10 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp = icmp ne %union.tree_node* %10, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.13
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.13
  %11 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %11(%union.tree_node* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl15 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %assembler_name16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 14
  %14 = load %union.tree_node*, %union.tree_node** %assembler_name16, align 8
  %common17 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %static_flag, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 18
  %bf.clear20 = and i32 %bf.lshr19, 1
  %tobool21 = icmp ne i32 %bf.clear20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %cond.end
  %15 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %15, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %cond.end, %land.lhs.true, %if.end
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @declare_weak(%union.tree_node* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @maybe_apply_renaming_pragma(%union.tree_node* %decl, %union.tree_node* %asmname) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %asmname.addr = alloca %union.tree_node*, align 8
  %oldname = alloca %union.tree_node*, align 8
  %oldasmname = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %asmname, %union.tree_node** %asmname.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common6 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load7, 18
  %bf.clear8 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear8, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl10 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 5
  %4 = bitcast i48* %external_flag to i64*
  %bf.load11 = load i64, i64* %4, align 8
  %bf.lshr12 = lshr i64 %bf.load11, 8
  %bf.clear13 = and i64 %bf.lshr12, 1
  %bf.cast = trunc i64 %bf.clear13 to i32
  %tobool14 = icmp ne i32 %bf.cast, 0
  br i1 %tobool14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.9
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common16 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load17 = load i32, i32* %public_flag, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 19
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.9, %land.lhs.true, %entry
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl21 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 14
  %7 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp22 = icmp ne %union.tree_node* %7, null
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %8(%union.tree_node* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl23 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %assembler_name24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 14
  %11 = load %union.tree_node*, %union.tree_node** %assembler_name24, align 8
  store %union.tree_node* %11, %union.tree_node** %oldname, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false
  %12 = load %union.tree_node*, %union.tree_node** %asmname.addr, align 8
  store %union.tree_node* %12, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %13 = load %union.tree_node*, %union.tree_node** %oldname, align 8
  %identifier = bitcast %union.tree_node* %13 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %14 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv, 42
  br i1 %cmp25, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %if.end
  %16 = load %union.tree_node*, %union.tree_node** %oldname, align 8
  %identifier28 = bitcast %union.tree_node* %16 to %struct.tree_identifier*
  %id29 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier28, i32 0, i32 1
  %str30 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id29, i32 0, i32 1
  %17 = load i8*, i8** %str30, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr, i8** %oldasmname, align 8
  %18 = load %union.tree_node*, %union.tree_node** %asmname.addr, align 8
  %tobool31 = icmp ne %union.tree_node* %18, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %if.then.27
  %19 = load %union.tree_node*, %union.tree_node** %asmname.addr, align 8
  %string = bitcast %union.tree_node* %19 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %20 = load i8*, i8** %pointer, align 8
  %21 = load i8*, i8** %oldasmname, align 8
  %call = call i32 @strcmp(i8* %20, i8* %21) #3
  %cmp33 = icmp ne i32 %call, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.then.27
  %22 = load i8*, i8** %oldasmname, align 8
  %call37 = call i64 @strlen(i8* %22) #3
  %conv38 = trunc i64 %call37 to i32
  %23 = load i8*, i8** %oldasmname, align 8
  %call39 = call %union.tree_node* @build_string(i32 %conv38, i8* %23)
  store %union.tree_node* %call39, %union.tree_node** %asmname.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.36, %if.end
  %24 = load %union.tree_node*, %union.tree_node** %asmname.addr, align 8
  store %union.tree_node* %24, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.else
  %25 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %25
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare void @warning(i8*, ...) #2

declare %union.tree_node* @build_string(i32, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @init_pragma() #0 {
entry:
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %0, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), void (%struct.cpp_reader*)* @handle_pragma_pack)
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8
  call void @cpp_register_pragma(%struct.cpp_reader* %1, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), void (%struct.cpp_reader*)* @handle_pragma_weak)
  call void @ggc_add_tree_root(%union.tree_node** @pending_weaks, i32 1)
  ret void
}

declare void @cpp_register_pragma(%struct.cpp_reader*, i8*, i8*, void (%struct.cpp_reader*)*) #2

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_pack(%struct.cpp_reader* %dummy) #0 {
entry:
  %dummy.addr = alloca %struct.cpp_reader*, align 8
  %x = alloca %union.tree_node*, align 8
  %id = alloca %union.tree_node*, align 8
  %align = alloca i32, align 4
  %token = alloca i32, align 4
  %action = alloca i32, align 4
  %op = alloca i8*, align 8
  store %struct.cpp_reader* %dummy, %struct.cpp_reader** %dummy.addr, align 8
  store %union.tree_node* null, %union.tree_node** %id, align 8
  store i32 -1, i32* %align, align 4
  %call = call i32 @c_lex(%union.tree_node** %x)
  %cmp = icmp ne i32 %call, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog.141

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call1 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call1, i32* %token, align 4
  %0 = load i32, i32* %token, align 4
  %cmp2 = icmp eq i32 %0, 23
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %action, align 4
  store i32 0, i32* %align, align 4
  br label %if.end.122

if.else:                                          ; preds = %if.end
  %1 = load i32, i32* %token, align 4
  %cmp4 = icmp eq i32 %1, 57
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.else
  %2 = load %union.tree_node*, %union.tree_node** %x, align 8
  %int_cst = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst6 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst6, i32 0, i32 0
  %3 = load i64, i64* %low, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %align, align 4
  store i32 0, i32* %action, align 4
  %call7 = call i32 @c_lex(%union.tree_node** %x)
  %cmp8 = icmp ne i32 %call7, 23
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.then.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog.141

do.end.12:                                        ; No predecessors!
  br label %if.end.13

if.end.13:                                        ; preds = %do.end.12, %if.then.5
  br label %if.end.121

if.else.14:                                       ; preds = %if.else
  %4 = load i32, i32* %token, align 4
  %cmp15 = icmp eq i32 %4, 56
  br i1 %cmp15, label %if.then.17, label %if.else.117

if.then.17:                                       ; preds = %if.else.14
  %5 = load %union.tree_node*, %union.tree_node** %x, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id18 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id18, i32 0, i32 1
  %6 = load i8*, i8** %str, align 8
  store i8* %6, i8** %op, align 8
  %7 = load i8*, i8** %op, align 8
  %call19 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #3
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  store i32 1, i32* %action, align 4
  br label %if.end.29

if.else.21:                                       ; preds = %if.then.17
  %8 = load i8*, i8** %op, align 8
  %call22 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #3
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.else.21
  store i32 2, i32* %action, align 4
  br label %if.end.28

if.else.25:                                       ; preds = %if.else.21
  br label %do.body.26

do.body.26:                                       ; preds = %if.else.25
  %9 = load i8*, i8** %op, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8* %9)
  br label %sw.epilog.141

do.end.27:                                        ; No predecessors!
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.27, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.20
  %call30 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call30, i32* %token, align 4
  %10 = load i32, i32* %token, align 4
  %cmp31 = icmp ne i32 %10, 21
  br i1 %cmp31, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.29
  %11 = load i32, i32* %action, align 4
  %cmp33 = icmp eq i32 %11, 1
  br i1 %cmp33, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %land.lhs.true
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %12 = load i32, i32* %action, align 4
  %cmp37 = icmp eq i32 %12, 1
  br i1 %cmp37, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %do.body.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.141

do.end.41:                                        ; No predecessors!
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  br label %do.body.43

do.body.43:                                       ; preds = %if.else.42
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.141

do.end.44:                                        ; No predecessors!
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %do.end.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %land.lhs.true, %if.end.29
  %13 = load i32, i32* %token, align 4
  %cmp48 = icmp eq i32 %13, 21
  br i1 %cmp48, label %if.then.50, label %if.end.101

if.then.50:                                       ; preds = %if.end.47
  %call51 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call51, i32* %token, align 4
  %14 = load i32, i32* %token, align 4
  %cmp52 = icmp eq i32 %14, 56
  br i1 %cmp52, label %if.then.54, label %if.end.75

if.then.54:                                       ; preds = %if.then.50
  %15 = load %union.tree_node*, %union.tree_node** %x, align 8
  store %union.tree_node* %15, %union.tree_node** %id, align 8
  %16 = load i32, i32* %action, align 4
  %cmp55 = icmp eq i32 %16, 1
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.73

land.lhs.true.57:                                 ; preds = %if.then.54
  %call58 = call i32 @c_lex(%union.tree_node** %x)
  %cmp59 = icmp ne i32 %call58, 21
  br i1 %cmp59, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %land.lhs.true.57
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %17 = load i32, i32* %action, align 4
  %cmp63 = icmp eq i32 %17, 1
  br i1 %cmp63, label %if.then.65, label %if.else.68

if.then.65:                                       ; preds = %do.body.62
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.141

do.end.67:                                        ; No predecessors!
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  br label %do.body.69

do.body.69:                                       ; preds = %if.else.68
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.141

do.end.70:                                        ; No predecessors!
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %land.lhs.true.57, %if.then.54
  %call74 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call74, i32* %token, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.73, %if.then.50
  %18 = load i32, i32* %action, align 4
  %cmp76 = icmp eq i32 %18, 1
  br i1 %cmp76, label %if.then.78, label %if.end.100

if.then.78:                                       ; preds = %if.end.75
  %19 = load i32, i32* %token, align 4
  %cmp79 = icmp eq i32 %19, 57
  br i1 %cmp79, label %if.then.81, label %if.else.87

if.then.81:                                       ; preds = %if.then.78
  %20 = load %union.tree_node*, %union.tree_node** %x, align 8
  %int_cst82 = bitcast %union.tree_node* %20 to %struct.tree_int_cst*
  %int_cst83 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst82, i32 0, i32 2
  %low84 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst83, i32 0, i32 0
  %21 = load i64, i64* %low84, align 8
  %conv85 = trunc i64 %21 to i32
  store i32 %conv85, i32* %align, align 4
  %call86 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call86, i32* %token, align 4
  br label %if.end.99

if.else.87:                                       ; preds = %if.then.78
  br label %do.body.88

do.body.88:                                       ; preds = %if.else.87
  %22 = load i32, i32* %action, align 4
  %cmp89 = icmp eq i32 %22, 1
  br i1 %cmp89, label %if.then.91, label %if.else.94

if.then.91:                                       ; preds = %do.body.88
  br label %do.body.92

do.body.92:                                       ; preds = %if.then.91
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.141

do.end.93:                                        ; No predecessors!
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  br label %do.body.95

do.body.95:                                       ; preds = %if.else.94
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.141

do.end.96:                                        ; No predecessors!
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %do.end.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %if.then.81
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.75
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.47
  %23 = load i32, i32* %token, align 4
  %cmp102 = icmp ne i32 %23, 23
  br i1 %cmp102, label %if.then.104, label %if.end.116

if.then.104:                                      ; preds = %if.end.101
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %24 = load i32, i32* %action, align 4
  %cmp106 = icmp eq i32 %24, 1
  br i1 %cmp106, label %if.then.108, label %if.else.111

if.then.108:                                      ; preds = %do.body.105
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog.141

do.end.110:                                       ; No predecessors!
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.105
  br label %do.body.112

do.body.112:                                      ; preds = %if.else.111
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog.141

do.end.113:                                       ; No predecessors!
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %do.end.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %if.end.101
  br label %if.end.120

if.else.117:                                      ; preds = %if.else.14
  br label %do.body.118

do.body.118:                                      ; preds = %if.else.117
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog.141

do.end.119:                                       ; No predecessors!
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %if.end.116
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.13
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.3
  %call123 = call i32 @c_lex(%union.tree_node** %x)
  %cmp124 = icmp ne i32 %call123, 67
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.122
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.122
  %25 = load i32, i32* %action, align 4
  %cmp128 = icmp ne i32 %25, 2
  br i1 %cmp128, label %if.then.130, label %if.end.133

if.then.130:                                      ; preds = %if.end.127
  %26 = load i32, i32* %align, align 4
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.130, %if.then.130, %if.then.130, %if.then.130, %if.then.130, %if.then.130
  %27 = load i32, i32* %align, align 4
  %mul = mul nsw i32 %27, 8
  store i32 %mul, i32* %align, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.130
  br label %do.body.131

do.body.131:                                      ; preds = %sw.default
  %28 = load i32, i32* %align, align 4
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i32 %28)
  br label %sw.epilog.141

do.end.132:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.132, %sw.bb
  br label %if.end.133

if.end.133:                                       ; preds = %sw.epilog, %if.end.127
  %29 = load i32, i32* %action, align 4
  switch i32 %29, label %sw.epilog.141 [
    i32 0, label %sw.bb.134
    i32 1, label %sw.bb.135
    i32 2, label %sw.bb.138
  ]

sw.bb.134:                                        ; preds = %if.end.133
  %30 = load i32, i32* %align, align 4
  store i32 %30, i32* @maximum_field_alignment, align 4
  br label %sw.epilog.141

sw.bb.135:                                        ; preds = %if.end.133
  br label %do.body.136

do.body.136:                                      ; preds = %sw.bb.135
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog.141

do.end.137:                                       ; No predecessors!
  br label %sw.epilog.141

sw.bb.138:                                        ; preds = %if.end.133
  br label %do.body.139

do.body.139:                                      ; preds = %sw.bb.138
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog.141

do.end.140:                                       ; No predecessors!
  br label %sw.epilog.141

sw.epilog.141:                                    ; preds = %do.body, %do.body.11, %do.body.26, %do.body.40, %do.body.43, %do.body.66, %do.body.69, %do.body.92, %do.body.95, %do.body.109, %do.body.112, %do.body.118, %do.body.131, %do.body.136, %do.body.139, %if.end.133, %do.end.140, %do.end.137, %sw.bb.134
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_weak(%struct.cpp_reader* %dummy) #0 {
entry:
  %dummy.addr = alloca %struct.cpp_reader*, align 8
  %name = alloca %union.tree_node*, align 8
  %value = alloca %union.tree_node*, align 8
  %x = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  %t = alloca i32, align 4
  store %struct.cpp_reader* %dummy, %struct.cpp_reader** %dummy.addr, align 8
  store %union.tree_node* null, %union.tree_node** %value, align 8
  %call = call i32 @c_lex(%union.tree_node** %name)
  %cmp = icmp ne i32 %call, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.23

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call1 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call1, i32* %t, align 4
  %0 = load i32, i32* %t, align 4
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 @c_lex(%union.tree_node** %value)
  %cmp5 = icmp ne i32 %call4, 56
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then.3
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.23

do.end.8:                                         ; No predecessors!
  br label %if.end.9

if.end.9:                                         ; preds = %do.end.8, %if.then.3
  %call10 = call i32 @c_lex(%union.tree_node** %x)
  store i32 %call10, i32* %t, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.9, %if.end
  %1 = load i32, i32* %t, align 4
  %cmp12 = icmp ne i32 %1, 67
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %2 = load %union.tree_node*, %union.tree_node** %name, align 8
  %call15 = call %union.tree_node* @identifier_global_value(%union.tree_node* %2)
  store %union.tree_node* %call15, %union.tree_node** %decl, align 8
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.14
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp16 = icmp eq i32 %conv, 100
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @apply_pragma_weak(%union.tree_node* %6, %union.tree_node* %7)
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  %tobool19 = icmp ne %union.tree_node* %8, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.18
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %10 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @assemble_alias(%union.tree_node* %9, %union.tree_node* %10)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.18
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %if.end.14
  %11 = load %union.tree_node*, %union.tree_node** %name, align 8
  %12 = load %union.tree_node*, %union.tree_node** %value, align 8
  %13 = load %union.tree_node*, %union.tree_node** @pending_weaks, align 8
  %call22 = call %union.tree_node* @tree_cons(%union.tree_node* %11, %union.tree_node* %12, %union.tree_node* %13)
  store %union.tree_node* %call22, %union.tree_node** @pending_weaks, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %do.body, %do.body.7, %if.else, %if.end.21
  ret void
}

declare void @ggc_add_tree_root(%union.tree_node**, i32) #2

declare %union.tree_node* @decl_attributes(%union.tree_node**, %union.tree_node*, i32) #2

declare %union.tree_node* @build_tree_list(%union.tree_node*, %union.tree_node*) #2

declare %union.tree_node* @get_identifier(i8*) #2

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #2

declare void @declare_weak(%union.tree_node*) #2

declare i32 @c_lex(%union.tree_node**) #2

declare %union.tree_node* @identifier_global_value(%union.tree_node*) #2

declare void @assemble_alias(%union.tree_node*, %union.tree_node*) #2

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
