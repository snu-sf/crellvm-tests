; ModuleID = 'except.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type { %struct.eh_region*, %struct.eh_region**, %struct.eh_region*, %struct.eh_region*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, %struct.varray_head_tag*, %struct.varray_head_tag*, %struct.varray_head_tag*, %struct.call_site_record*, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.eh_region = type { %struct.eh_region*, %struct.eh_region*, %struct.eh_region*, i32, %struct.bitmap_head_def*, i32, %union.anon, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.eh_region*, %struct.eh_region*, %struct.eh_region*, %struct.rtx_def* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.call_site_record = type { %struct.rtx_def*, i32 }
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.3, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon.1 = type { i64 }
%union.anon.3 = type { %struct.function* }
%struct.lang_decl = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.anon.8 = type { %union.tree_node* }
%struct.anon.5 = type { %struct.eh_region*, %struct.eh_region*, %union.tree_node*, %union.tree_node* }
%struct.anon.6 = type { %union.tree_node*, i32 }
%struct.anon.7 = type { %union.tree_node* }
%struct.anon.9 = type { %union.tree_node*, %struct.eh_region* }
%struct.ehl_map_entry = type { %struct.rtx_def*, %struct.eh_region* }
%struct.inline_remap = type { i32, %union.tree_node*, %struct.rtx_def*, %struct.varray_head_tag*, %struct.rtx_def**, %struct.rtx_def**, %struct.rtx_def**, i32, i32, %struct.varray_head_tag*, i32, %struct.rtx_def*, %struct.rtvec_def*, %struct.rtvec_def*, %struct.rtvec_def*, %struct.rtx_def*, i8*, %struct.rtx_def**, i32, [30 x %struct.equiv_table], %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.equiv_table = type { %struct.rtx_def*, %struct.rtx_def* }
%struct.reachable_info = type { %union.tree_node*, %union.tree_node*, %struct.rtx_def* }
%struct.action_record = type { i32, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon.0 }
%struct.anon.0 = type { i64, i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.ttypes_filter = type { %union.tree_node*, i32 }

@flag_exceptions = external global i32, align 4
@doing_eh.warned = internal global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"exception handling disabled, use -fexceptions to enable\00", align 1
@exception_handler_label_map = internal global %struct.htab* null, align 8
@type_to_runtime_map = internal global %struct.htab* null, align 8
@cfun = external global %struct.function*, align 8
@ggc_pending_trees = external global %struct.varray_head_tag*, align 8
@lang_protect_cleanup_actions = common global %union.tree_node* ()* null, align 8
@target_flags = external global i32, align 4
@word_mode = external global i32, align 4
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@rtx_class = external constant [153 x i8], align 16
@flag_non_call_exceptions = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"argument of `__builtin_eh_return_regno' must be constant\00", align 1
@dbx64_register_map = external constant [53 x i32], align 16
@svr4_dbx_register_map = external constant [53 x i32], align 16
@ptr_mode = external global i32, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"__builtin_eh_return not supported on this target\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"action_record_data\00", align 1
@current_funcdef_number = external global i32, align 4
@targetm = external global %struct.gcc_target, align 8
@flag_pic = external global i32, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"LLSDATT\00", align 1
@asm_out_file = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c".%s%u:\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"LLSDA\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"@LPStart format (%s)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"@TType format (%s)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"LLSDATTD\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"@TType base offset\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"call-site format (%s)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"LLSDACSB\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"LLSDACSE\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Call-site table length\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Action record table\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.18 = private unnamed_addr constant [30 x i8] c"Exception specification table\00", align 1
@current_function_decl = external global %union.tree_node*, align 8
@lang_eh_type_covers = common global i32 (%union.tree_node*, %union.tree_node*)* null, align 8
@lang_eh_runtime_type = common global %union.tree_node* (%union.tree_node*)* null, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"except.c\00", align 1
@__FUNCTION__.mark_eh_region = private unnamed_addr constant [15 x i8] c"mark_eh_region\00", align 1
@__FUNCTION__.resolve_fixup_regions = private unnamed_addr constant [22 x i8] c"resolve_fixup_regions\00", align 1
@__FUNCTION__.convert_from_eh_region_ranges_1 = private unnamed_addr constant [32 x i8] c"convert_from_eh_region_ranges_1\00", align 1
@__FUNCTION__.remove_unreachable_regions = private unnamed_addr constant [27 x i8] c"remove_unreachable_regions\00", align 1
@__FUNCTION__.add_ehl_entry = private unnamed_addr constant [14 x i8] c"add_ehl_entry\00", align 1
@__FUNCTION__.duplicate_eh_region_1 = private unnamed_addr constant [22 x i8] c"duplicate_eh_region_1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"ttype_data\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"ehspec_data\00", align 1
@__FUNCTION__.build_post_landing_pads = private unnamed_addr constant [24 x i8] c"build_post_landing_pads\00", align 1
@libfunc_table = external global [97 x %struct.rtx_def*], align 16
@call_used_regs = external global [53 x i8], align 16
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__FUNCTION__.remove_eh_handler = private unnamed_addr constant [18 x i8] c"remove_eh_handler\00", align 1
@__FUNCTION__.remove_exception_handler_label = private unnamed_addr constant [31 x i8] c"remove_exception_handler_label\00", align 1
@__FUNCTION__.reachable_next_level = private unnamed_addr constant [21 x i8] c"reachable_next_level\00", align 1
@__FUNCTION__.collect_one_action_chain = private unnamed_addr constant [25 x i8] c"collect_one_action_chain\00", align 1
@call_site_base = internal global i32 0, align 4
@current_function_func_begin_label = external global %union.tree_node*, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"region %d start\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"landing pad\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"action\00", align 1

; Function Attrs: nounwind uwtable
define i32 @doing_eh(i32 %do_warn) #0 {
entry:
  %retval = alloca i32, align 4
  %do_warn.addr = alloca i32, align 4
  store i32 %do_warn, i32* %do_warn.addr, align 4
  %0 = load i32, i32* @flag_exceptions, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @doing_eh.warned, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %do_warn.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* @doing_eh.warned, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.end
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @init_eh() #0 {
entry:
  call void @ggc_add_root(i8* bitcast (%struct.htab** @exception_handler_label_map to i8*), i32 1, i32 1, void (i8*)* @mark_ehl_map)
  %0 = load i32, i32* @flag_exceptions, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.htab* @htab_create(i64 31, i32 (i8*)* @t2r_hash, i32 (i8*, i8*)* @t2r_eq, void (i8*)* null)
  store %struct.htab* %call, %struct.htab** @type_to_runtime_map, align 8
  call void @ggc_add_root(i8* bitcast (%struct.htab** @type_to_runtime_map to i8*), i32 1, i32 8, void (i8*)* @t2r_mark)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @ggc_add_root(i8*, i32, i32, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_ehl_map(i8* %pp) #0 {
entry:
  %pp.addr = alloca i8*, align 8
  %map = alloca %struct.htab*, align 8
  store i8* %pp, i8** %pp.addr, align 8
  %0 = load i8*, i8** %pp.addr, align 8
  %1 = bitcast i8* %0 to %struct.htab**
  %2 = load %struct.htab*, %struct.htab** %1, align 8
  store %struct.htab* %2, %struct.htab** %map, align 8
  %3 = load %struct.htab*, %struct.htab** %map, align 8
  %tobool = icmp ne %struct.htab* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.htab*, %struct.htab** %map, align 8
  call void @htab_traverse(%struct.htab* %4, i32 (i8**, i8*)* @mark_ehl_map_entry, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @t2r_hash(i8* %pentry) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %entry1 = alloca %union.tree_node*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %union.tree_node*
  store %union.tree_node* %1, %union.tree_node** %entry1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %entry1, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %conv = trunc i64 %and to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @t2r_eq(i8* %pentry, i8* %pdata) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %pdata.addr = alloca i8*, align 8
  %entry1 = alloca %union.tree_node*, align 8
  %data = alloca %union.tree_node*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  store i8* %pdata, i8** %pdata.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %union.tree_node*
  store %union.tree_node* %1, %union.tree_node** %entry1, align 8
  %2 = load i8*, i8** %pdata.addr, align 8
  %3 = bitcast i8* %2 to %union.tree_node*
  store %union.tree_node* %3, %union.tree_node** %data, align 8
  %4 = load %union.tree_node*, %union.tree_node** %entry1, align 8
  %list = bitcast %union.tree_node* %4 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %6 = load %union.tree_node*, %union.tree_node** %data, align 8
  %cmp = icmp eq %union.tree_node* %5, %6
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @t2r_mark(i8* %addr) #0 {
entry:
  %addr.addr = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i8*, i8** %addr.addr, align 8
  %1 = bitcast i8* %0 to %struct.htab**
  %2 = load %struct.htab*, %struct.htab** %1, align 8
  call void @htab_traverse(%struct.htab* %2, i32 (i8**, i8*)* @t2r_mark_1, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_eh_for_function() #0 {
entry:
  %call = call noalias i8* @xcalloc(i64 1, i64 144)
  %0 = bitcast i8* %call to %struct.eh_status*
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  store %struct.eh_status* %0, %struct.eh_status** %eh, align 8
  ret void
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @mark_eh_status(%struct.eh_status* %eh) #0 {
entry:
  %eh.addr = alloca %struct.eh_status*, align 8
  %i = alloca i32, align 4
  %r = alloca %struct.eh_region*, align 8
  %r10 = alloca %struct.eh_region*, align 8
  %t__ = alloca %union.tree_node*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %r__58 = alloca %struct.rtx_def*, align 8
  %r__73 = alloca %struct.rtx_def*, align 8
  %r__90 = alloca %struct.rtx_def*, align 8
  %r__100 = alloca %struct.rtx_def*, align 8
  %r__110 = alloca %struct.rtx_def*, align 8
  %r__120 = alloca %struct.rtx_def*, align 8
  %r__130 = alloca %struct.rtx_def*, align 8
  store %struct.eh_status* %eh, %struct.eh_status** %eh.addr, align 8
  %0 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %cmp = icmp eq %struct.eh_status* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end.138

if.end:                                           ; preds = %entry
  %1 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 1
  %2 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %tobool = icmp ne %struct.eh_region** %2, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %3, i32 0, i32 8
  %4 = load i32, i32* %last_region_number, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %region_array3 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %7, i32 0, i32 1
  %8 = load %struct.eh_region**, %struct.eh_region*** %region_array3, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %8, i64 %idxprom
  %9 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %9, %struct.eh_region** %r, align 8
  %10 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool4 = icmp ne %struct.eh_region* %10, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %11, i32 0, i32 3
  %12 = load i32, i32* %region_number, align 4
  %13 = load i32, i32* %i, align 4
  %cmp5 = icmp eq i32 %12, %13
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %14 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  call void @mark_eh_region(%struct.eh_region* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %16 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %16, i32 0, i32 0
  %17 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %tobool8 = icmp ne %struct.eh_region* %17, null
  br i1 %tobool8, label %if.then.9, label %if.end.28

if.then.9:                                        ; preds = %if.else
  %18 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %region_tree11 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %18, i32 0, i32 0
  %19 = load %struct.eh_region*, %struct.eh_region** %region_tree11, align 8
  store %struct.eh_region* %19, %struct.eh_region** %r10, align 8
  br label %while.body

while.body:                                       ; preds = %if.then.9, %if.end.27
  %20 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  call void @mark_eh_region(%struct.eh_region* %20)
  %21 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %21, i32 0, i32 1
  %22 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %tobool12 = icmp ne %struct.eh_region* %22, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %while.body
  %23 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %inner14 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %23, i32 0, i32 1
  %24 = load %struct.eh_region*, %struct.eh_region** %inner14, align 8
  store %struct.eh_region* %24, %struct.eh_region** %r10, align 8
  br label %if.end.27

if.else.15:                                       ; preds = %while.body
  %25 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 2
  %26 = load %struct.eh_region*, %struct.eh_region** %next_peer, align 8
  %tobool16 = icmp ne %struct.eh_region* %26, null
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.15
  %27 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %next_peer18 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %27, i32 0, i32 2
  %28 = load %struct.eh_region*, %struct.eh_region** %next_peer18, align 8
  store %struct.eh_region* %28, %struct.eh_region** %r10, align 8
  br label %if.end.26

if.else.19:                                       ; preds = %if.else.15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.19
  %29 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %29, i32 0, i32 0
  %30 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %30, %struct.eh_region** %r10, align 8
  %31 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %cmp20 = icmp eq %struct.eh_region* %31, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.body
  br label %tree_done

if.end.22:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  %32 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %next_peer23 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %32, i32 0, i32 2
  %33 = load %struct.eh_region*, %struct.eh_region** %next_peer23, align 8
  %cmp24 = icmp eq %struct.eh_region* %33, null
  br i1 %cmp24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load %struct.eh_region*, %struct.eh_region** %r10, align 8
  %next_peer25 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 2
  %35 = load %struct.eh_region*, %struct.eh_region** %next_peer25, align 8
  store %struct.eh_region* %35, %struct.eh_region** %r10, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.13
  br label %while.body

tree_done:                                        ; preds = %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %tree_done, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %for.end
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %36 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %protect_list = getelementptr inbounds %struct.eh_status, %struct.eh_status* %36, i32 0, i32 4
  %37 = load %union.tree_node*, %union.tree_node** %protect_list, align 8
  store %union.tree_node* %37, %union.tree_node** %t__, align 8
  %38 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp31 = icmp ne %union.tree_node* %38, null
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.45

land.lhs.true.32:                                 ; preds = %do.body.30
  %39 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %40 = bitcast %union.tree_node* %39 to i8*
  %call = call i32 @ggc_set_mark(i8* %40)
  %tobool33 = icmp ne i32 %call, 0
  br i1 %tobool33, label %if.end.45, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 1
  %42 = load i64, i64* %elements_used, align 8
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 0
  %44 = load i64, i64* %num_elements, align 8
  %cmp36 = icmp uge i64 %42, %44
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %do.body.35
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements38 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 0
  %47 = load i64, i64* %num_elements38, align 8
  %mul = mul i64 2, %47
  %call39 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %45, i64 %mul)
  store %struct.varray_head_tag* %call39, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %do.body.35
  %48 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used41 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 1
  %50 = load i64, i64* %elements_used41, align 8
  %inc = add i64 %50, 1
  store i64 %inc, i64* %elements_used41, align 8
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx42 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %50
  store %union.tree_node* %48, %union.tree_node** %arrayidx42, align 8
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.40
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %land.lhs.true.32, %do.body.30
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.45
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %52 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %filter = getelementptr inbounds %struct.eh_status, %struct.eh_status* %52, i32 0, i32 5
  %53 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %r__, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp49 = icmp ne %struct.rtx_def* %54, null
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.54

land.lhs.true.50:                                 ; preds = %do.body.48
  %55 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %56 = bitcast %struct.rtx_def* %55 to i8*
  %call51 = call i32 @ggc_set_mark(i8* %56)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.50
  %57 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %57)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true.50, %do.body.48
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.54
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %58 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %exc_ptr = getelementptr inbounds %struct.eh_status, %struct.eh_status* %58, i32 0, i32 6
  %59 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %r__58, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %r__58, align 8
  %cmp59 = icmp ne %struct.rtx_def* %60, null
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.64

land.lhs.true.60:                                 ; preds = %do.body.57
  %61 = load %struct.rtx_def*, %struct.rtx_def** %r__58, align 8
  %62 = bitcast %struct.rtx_def* %61 to i8*
  %call61 = call i32 @ggc_set_mark(i8* %62)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.60
  %63 = load %struct.rtx_def*, %struct.rtx_def** %r__58, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true.60, %do.body.57
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.64
  %64 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %ttype_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %64, i32 0, i32 9
  %65 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data, align 8
  call void @ggc_mark_tree_varray(%struct.varray_head_tag* %65)
  %66 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %call_site_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %66, i32 0, i32 12
  %67 = load %struct.call_site_record*, %struct.call_site_record** %call_site_data, align 8
  %tobool67 = icmp ne %struct.call_site_record* %67, null
  br i1 %tobool67, label %if.then.68, label %if.end.88

if.then.68:                                       ; preds = %do.end.66
  %68 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %call_site_data_used = getelementptr inbounds %struct.eh_status, %struct.eh_status* %68, i32 0, i32 13
  %69 = load i32, i32* %call_site_data_used, align 4
  %sub = sub nsw i32 %69, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.85, %if.then.68
  %70 = load i32, i32* %i, align 4
  %cmp70 = icmp sge i32 %70, 0
  br i1 %cmp70, label %for.body.71, label %for.end.87

for.body.71:                                      ; preds = %for.cond.69
  br label %do.body.72

do.body.72:                                       ; preds = %for.body.71
  %71 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %71 to i64
  %72 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %call_site_data75 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %72, i32 0, i32 12
  %73 = load %struct.call_site_record*, %struct.call_site_record** %call_site_data75, align 8
  %arrayidx76 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %73, i64 %idxprom74
  %landing_pad = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %arrayidx76, i32 0, i32 0
  %74 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %r__73, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %r__73, align 8
  %cmp77 = icmp ne %struct.rtx_def* %75, null
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.82

land.lhs.true.78:                                 ; preds = %do.body.72
  %76 = load %struct.rtx_def*, %struct.rtx_def** %r__73, align 8
  %77 = bitcast %struct.rtx_def* %76 to i8*
  %call79 = call i32 @ggc_set_mark(i8* %77)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true.78
  %78 = load %struct.rtx_def*, %struct.rtx_def** %r__73, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %78)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %land.lhs.true.78, %do.body.72
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.82
  br label %for.inc.85

for.inc.85:                                       ; preds = %do.end.84
  %79 = load i32, i32* %i, align 4
  %dec86 = add nsw i32 %79, -1
  store i32 %dec86, i32* %i, align 4
  br label %for.cond.69

for.end.87:                                       ; preds = %for.cond.69
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %do.end.66
  br label %do.body.89

do.body.89:                                       ; preds = %if.end.88
  %80 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %ehr_stackadj = getelementptr inbounds %struct.eh_status, %struct.eh_status* %80, i32 0, i32 15
  %81 = load %struct.rtx_def*, %struct.rtx_def** %ehr_stackadj, align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %r__90, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %r__90, align 8
  %cmp91 = icmp ne %struct.rtx_def* %82, null
  br i1 %cmp91, label %land.lhs.true.92, label %if.end.96

land.lhs.true.92:                                 ; preds = %do.body.89
  %83 = load %struct.rtx_def*, %struct.rtx_def** %r__90, align 8
  %84 = bitcast %struct.rtx_def* %83 to i8*
  %call93 = call i32 @ggc_set_mark(i8* %84)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.92
  %85 = load %struct.rtx_def*, %struct.rtx_def** %r__90, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %85)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %land.lhs.true.92, %do.body.89
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.96
  br label %do.body.99

do.body.99:                                       ; preds = %do.end.98
  %86 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %ehr_handler = getelementptr inbounds %struct.eh_status, %struct.eh_status* %86, i32 0, i32 16
  %87 = load %struct.rtx_def*, %struct.rtx_def** %ehr_handler, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %r__100, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %r__100, align 8
  %cmp101 = icmp ne %struct.rtx_def* %88, null
  br i1 %cmp101, label %land.lhs.true.102, label %if.end.106

land.lhs.true.102:                                ; preds = %do.body.99
  %89 = load %struct.rtx_def*, %struct.rtx_def** %r__100, align 8
  %90 = bitcast %struct.rtx_def* %89 to i8*
  %call103 = call i32 @ggc_set_mark(i8* %90)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.102
  %91 = load %struct.rtx_def*, %struct.rtx_def** %r__100, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %91)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %land.lhs.true.102, %do.body.99
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.106
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.108
  %92 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %ehr_label = getelementptr inbounds %struct.eh_status, %struct.eh_status* %92, i32 0, i32 17
  %93 = load %struct.rtx_def*, %struct.rtx_def** %ehr_label, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %r__110, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %r__110, align 8
  %cmp111 = icmp ne %struct.rtx_def* %94, null
  br i1 %cmp111, label %land.lhs.true.112, label %if.end.116

land.lhs.true.112:                                ; preds = %do.body.109
  %95 = load %struct.rtx_def*, %struct.rtx_def** %r__110, align 8
  %96 = bitcast %struct.rtx_def* %95 to i8*
  %call113 = call i32 @ggc_set_mark(i8* %96)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true.112
  %97 = load %struct.rtx_def*, %struct.rtx_def** %r__110, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %97)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %land.lhs.true.112, %do.body.109
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.116
  br label %do.body.119

do.body.119:                                      ; preds = %do.end.118
  %98 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %sjlj_fc = getelementptr inbounds %struct.eh_status, %struct.eh_status* %98, i32 0, i32 18
  %99 = load %struct.rtx_def*, %struct.rtx_def** %sjlj_fc, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %r__120, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %r__120, align 8
  %cmp121 = icmp ne %struct.rtx_def* %100, null
  br i1 %cmp121, label %land.lhs.true.122, label %if.end.126

land.lhs.true.122:                                ; preds = %do.body.119
  %101 = load %struct.rtx_def*, %struct.rtx_def** %r__120, align 8
  %102 = bitcast %struct.rtx_def* %101 to i8*
  %call123 = call i32 @ggc_set_mark(i8* %102)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.122
  %103 = load %struct.rtx_def*, %struct.rtx_def** %r__120, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %103)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %land.lhs.true.122, %do.body.119
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.126
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  %104 = load %struct.eh_status*, %struct.eh_status** %eh.addr, align 8
  %sjlj_exit_after = getelementptr inbounds %struct.eh_status, %struct.eh_status* %104, i32 0, i32 19
  %105 = load %struct.rtx_def*, %struct.rtx_def** %sjlj_exit_after, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %r__130, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %r__130, align 8
  %cmp131 = icmp ne %struct.rtx_def* %106, null
  br i1 %cmp131, label %land.lhs.true.132, label %if.end.136

land.lhs.true.132:                                ; preds = %do.body.129
  %107 = load %struct.rtx_def*, %struct.rtx_def** %r__130, align 8
  %108 = bitcast %struct.rtx_def* %107 to i8*
  %call133 = call i32 @ggc_set_mark(i8* %108)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.132
  %109 = load %struct.rtx_def*, %struct.rtx_def** %r__130, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %109)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %land.lhs.true.132, %do.body.129
  br label %do.end.138

do.end.138:                                       ; preds = %if.then, %if.end.136
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_eh_region(%struct.eh_region* %region) #0 {
entry:
  %region.addr = alloca %struct.eh_region*, align 8
  %t__ = alloca %union.tree_node*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %t__25 = alloca %union.tree_node*, align 8
  %t__50 = alloca %union.tree_node*, align 8
  %t__77 = alloca %union.tree_node*, align 8
  %t__105 = alloca %union.tree_node*, align 8
  %t__132 = alloca %union.tree_node*, align 8
  %r__157 = alloca %struct.rtx_def*, align 8
  %r__166 = alloca %struct.rtx_def*, align 8
  %r__175 = alloca %struct.rtx_def*, align 8
  %r__184 = alloca %struct.rtx_def*, align 8
  store %struct.eh_region* %region, %struct.eh_region** %region.addr, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %tobool = icmp ne %struct.eh_region* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.end.191

if.end:                                           ; preds = %entry
  %1 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %1, i32 0, i32 5
  %2 = load i32, i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.75
    i32 5, label %sw.bb.102
    i32 6, label %sw.bb.103
    i32 7, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb.1
  %3 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 6
  %cleanup = bitcast %union.anon* %u to %struct.anon.8*
  %exp = getelementptr inbounds %struct.anon.8, %struct.anon.8* %cleanup, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %exp, align 8
  store %union.tree_node* %4, %union.tree_node** %t__, align 8
  %5 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %do.body
  %6 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %7 = bitcast %union.tree_node* %6 to i8*
  %call = call i32 @ggc_set_mark(i8* %7)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.11, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 1
  %9 = load i64, i64* %elements_used, align 8
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 0
  %11 = load i64, i64* %num_elements, align 8
  %cmp5 = icmp uge i64 %9, %11
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %do.body.4
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 0
  %14 = load i64, i64* %num_elements7, align 8
  %mul = mul i64 2, %14
  %call8 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %12, i64 %mul)
  store %struct.varray_head_tag* %call8, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %do.body.4
  %15 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used10 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 1
  %17 = load i64, i64* %elements_used10, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %elements_used10, align 8
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %17
  store %union.tree_node* %15, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  br label %do.body.14

do.body.14:                                       ; preds = %sw.bb.13
  %19 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u15 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 6
  %try = bitcast %union.anon* %u15 to %struct.anon*
  %continue_label = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 3
  %20 = load %struct.rtx_def*, %struct.rtx_def** %continue_label, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %r__, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp16 = icmp ne %struct.rtx_def* %21, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %do.body.14
  %22 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %23 = bitcast %struct.rtx_def* %22 to i8*
  %call18 = call i32 @ggc_set_mark(i8* %23)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  %24 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.17, %do.body.14
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  br label %do.body.24

do.body.24:                                       ; preds = %sw.bb.23
  %25 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u26 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 6
  %catch = bitcast %union.anon* %u26 to %struct.anon.5*
  %type_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch, i32 0, i32 2
  %26 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  store %union.tree_node* %26, %union.tree_node** %t__25, align 8
  %27 = load %union.tree_node*, %union.tree_node** %t__25, align 8
  %cmp27 = icmp ne %union.tree_node* %27, null
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.47

land.lhs.true.28:                                 ; preds = %do.body.24
  %28 = load %union.tree_node*, %union.tree_node** %t__25, align 8
  %29 = bitcast %union.tree_node* %28 to i8*
  %call29 = call i32 @ggc_set_mark(i8* %29)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.47, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used33 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 1
  %31 = load i64, i64* %elements_used33, align 8
  %32 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements34 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %32, i32 0, i32 0
  %33 = load i64, i64* %num_elements34, align 8
  %cmp35 = icmp uge i64 %31, %33
  br i1 %cmp35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %do.body.32
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %35 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements37 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %35, i32 0, i32 0
  %36 = load i64, i64* %num_elements37, align 8
  %mul38 = mul i64 2, %36
  %call39 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %34, i64 %mul38)
  store %struct.varray_head_tag* %call39, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %do.body.32
  %37 = load %union.tree_node*, %union.tree_node** %t__25, align 8
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used41 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 1
  %39 = load i64, i64* %elements_used41, align 8
  %inc42 = add i64 %39, 1
  store i64 %inc42, i64* %elements_used41, align 8
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data43 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 4
  %tree44 = bitcast %union.varray_data_tag* %data43 to [1 x %union.tree_node*]*
  %arrayidx45 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree44, i32 0, i64 %39
  store %union.tree_node* %37, %union.tree_node** %arrayidx45, align 8
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.40
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %land.lhs.true.28, %do.body.24
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %41 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u51 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %41, i32 0, i32 6
  %catch52 = bitcast %union.anon* %u51 to %struct.anon.5*
  %filter_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch52, i32 0, i32 3
  %42 = load %union.tree_node*, %union.tree_node** %filter_list, align 8
  store %union.tree_node* %42, %union.tree_node** %t__50, align 8
  %43 = load %union.tree_node*, %union.tree_node** %t__50, align 8
  %cmp53 = icmp ne %union.tree_node* %43, null
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.73

land.lhs.true.54:                                 ; preds = %do.body.49
  %44 = load %union.tree_node*, %union.tree_node** %t__50, align 8
  %45 = bitcast %union.tree_node* %44 to i8*
  %call55 = call i32 @ggc_set_mark(i8* %45)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.73, label %if.then.57

if.then.57:                                       ; preds = %land.lhs.true.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used59 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 1
  %47 = load i64, i64* %elements_used59, align 8
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements60 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 0
  %49 = load i64, i64* %num_elements60, align 8
  %cmp61 = icmp uge i64 %47, %49
  br i1 %cmp61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %do.body.58
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements63 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 0
  %52 = load i64, i64* %num_elements63, align 8
  %mul64 = mul i64 2, %52
  %call65 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %50, i64 %mul64)
  store %struct.varray_head_tag* %call65, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %do.body.58
  %53 = load %union.tree_node*, %union.tree_node** %t__50, align 8
  %54 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used67 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %54, i32 0, i32 1
  %55 = load i64, i64* %elements_used67, align 8
  %inc68 = add i64 %55, 1
  store i64 %inc68, i64* %elements_used67, align 8
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data69 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %tree70 = bitcast %union.varray_data_tag* %data69 to [1 x %union.tree_node*]*
  %arrayidx71 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree70, i32 0, i64 %55
  store %union.tree_node* %53, %union.tree_node** %arrayidx71, align 8
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.66
  br label %if.end.73

if.end.73:                                        ; preds = %do.end.72, %land.lhs.true.54, %do.body.49
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end
  br label %do.body.76

do.body.76:                                       ; preds = %sw.bb.75
  %57 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u78 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %57, i32 0, i32 6
  %allowed = bitcast %union.anon* %u78 to %struct.anon.6*
  %type_list79 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed, i32 0, i32 0
  %58 = load %union.tree_node*, %union.tree_node** %type_list79, align 8
  store %union.tree_node* %58, %union.tree_node** %t__77, align 8
  %59 = load %union.tree_node*, %union.tree_node** %t__77, align 8
  %cmp80 = icmp ne %union.tree_node* %59, null
  br i1 %cmp80, label %land.lhs.true.81, label %if.end.100

land.lhs.true.81:                                 ; preds = %do.body.76
  %60 = load %union.tree_node*, %union.tree_node** %t__77, align 8
  %61 = bitcast %union.tree_node* %60 to i8*
  %call82 = call i32 @ggc_set_mark(i8* %61)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.100, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.81
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.84
  %62 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used86 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %62, i32 0, i32 1
  %63 = load i64, i64* %elements_used86, align 8
  %64 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements87 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %64, i32 0, i32 0
  %65 = load i64, i64* %num_elements87, align 8
  %cmp88 = icmp uge i64 %63, %65
  br i1 %cmp88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %do.body.85
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %67 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements90 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %67, i32 0, i32 0
  %68 = load i64, i64* %num_elements90, align 8
  %mul91 = mul i64 2, %68
  %call92 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %66, i64 %mul91)
  store %struct.varray_head_tag* %call92, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %do.body.85
  %69 = load %union.tree_node*, %union.tree_node** %t__77, align 8
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used94 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 1
  %71 = load i64, i64* %elements_used94, align 8
  %inc95 = add i64 %71, 1
  store i64 %inc95, i64* %elements_used94, align 8
  %72 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data96 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %72, i32 0, i32 4
  %tree97 = bitcast %union.varray_data_tag* %data96 to [1 x %union.tree_node*]*
  %arrayidx98 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree97, i32 0, i64 %71
  store %union.tree_node* %69, %union.tree_node** %arrayidx98, align 8
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.93
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %land.lhs.true.81, %do.body.76
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end
  br label %do.body.104

do.body.104:                                      ; preds = %sw.bb.103
  %73 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u106 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %73, i32 0, i32 6
  %throw = bitcast %union.anon* %u106 to %struct.anon.7*
  %type107 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw, i32 0, i32 0
  %74 = load %union.tree_node*, %union.tree_node** %type107, align 8
  store %union.tree_node* %74, %union.tree_node** %t__105, align 8
  %75 = load %union.tree_node*, %union.tree_node** %t__105, align 8
  %cmp108 = icmp ne %union.tree_node* %75, null
  br i1 %cmp108, label %land.lhs.true.109, label %if.end.128

land.lhs.true.109:                                ; preds = %do.body.104
  %76 = load %union.tree_node*, %union.tree_node** %t__105, align 8
  %77 = bitcast %union.tree_node* %76 to i8*
  %call110 = call i32 @ggc_set_mark(i8* %77)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end.128, label %if.then.112

if.then.112:                                      ; preds = %land.lhs.true.109
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %78 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used114 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %78, i32 0, i32 1
  %79 = load i64, i64* %elements_used114, align 8
  %80 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements115 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %80, i32 0, i32 0
  %81 = load i64, i64* %num_elements115, align 8
  %cmp116 = icmp uge i64 %79, %81
  br i1 %cmp116, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %do.body.113
  %82 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %83 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements118 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %83, i32 0, i32 0
  %84 = load i64, i64* %num_elements118, align 8
  %mul119 = mul i64 2, %84
  %call120 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %82, i64 %mul119)
  store %struct.varray_head_tag* %call120, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %do.body.113
  %85 = load %union.tree_node*, %union.tree_node** %t__105, align 8
  %86 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used122 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %86, i32 0, i32 1
  %87 = load i64, i64* %elements_used122, align 8
  %inc123 = add i64 %87, 1
  store i64 %inc123, i64* %elements_used122, align 8
  %88 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data124 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %88, i32 0, i32 4
  %tree125 = bitcast %union.varray_data_tag* %data124 to [1 x %union.tree_node*]*
  %arrayidx126 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree125, i32 0, i64 %87
  store %union.tree_node* %85, %union.tree_node** %arrayidx126, align 8
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.121
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.127, %land.lhs.true.109, %do.body.104
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.end
  br label %do.body.131

do.body.131:                                      ; preds = %sw.bb.130
  %89 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u133 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %89, i32 0, i32 6
  %fixup = bitcast %union.anon* %u133 to %struct.anon.9*
  %cleanup_exp = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup, i32 0, i32 0
  %90 = load %union.tree_node*, %union.tree_node** %cleanup_exp, align 8
  store %union.tree_node* %90, %union.tree_node** %t__132, align 8
  %91 = load %union.tree_node*, %union.tree_node** %t__132, align 8
  %cmp134 = icmp ne %union.tree_node* %91, null
  br i1 %cmp134, label %land.lhs.true.135, label %if.end.154

land.lhs.true.135:                                ; preds = %do.body.131
  %92 = load %union.tree_node*, %union.tree_node** %t__132, align 8
  %93 = bitcast %union.tree_node* %92 to i8*
  %call136 = call i32 @ggc_set_mark(i8* %93)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.end.154, label %if.then.138

if.then.138:                                      ; preds = %land.lhs.true.135
  br label %do.body.139

do.body.139:                                      ; preds = %if.then.138
  %94 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used140 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %94, i32 0, i32 1
  %95 = load i64, i64* %elements_used140, align 8
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements141 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 0
  %97 = load i64, i64* %num_elements141, align 8
  %cmp142 = icmp uge i64 %95, %97
  br i1 %cmp142, label %if.then.143, label %if.end.147

if.then.143:                                      ; preds = %do.body.139
  %98 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %99 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements144 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %99, i32 0, i32 0
  %100 = load i64, i64* %num_elements144, align 8
  %mul145 = mul i64 2, %100
  %call146 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %98, i64 %mul145)
  store %struct.varray_head_tag* %call146, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.143, %do.body.139
  %101 = load %union.tree_node*, %union.tree_node** %t__132, align 8
  %102 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used148 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %102, i32 0, i32 1
  %103 = load i64, i64* %elements_used148, align 8
  %inc149 = add i64 %103, 1
  store i64 %inc149, i64* %elements_used148, align 8
  %104 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data150 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %104, i32 0, i32 4
  %tree151 = bitcast %union.varray_data_tag* %data150 to [1 x %union.tree_node*]*
  %arrayidx152 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree151, i32 0, i64 %103
  store %union.tree_node* %101, %union.tree_node** %arrayidx152, align 8
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.147
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %land.lhs.true.135, %do.body.131
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 531, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.mark_eh_region, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %do.end.155, %do.end.129, %sw.bb.102, %do.end.101, %do.end.74, %do.end.22, %do.end.12, %sw.bb
  br label %do.body.156

do.body.156:                                      ; preds = %sw.epilog
  %105 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %105, i32 0, i32 7
  %106 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %r__157, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %r__157, align 8
  %cmp158 = icmp ne %struct.rtx_def* %107, null
  br i1 %cmp158, label %land.lhs.true.159, label %if.end.163

land.lhs.true.159:                                ; preds = %do.body.156
  %108 = load %struct.rtx_def*, %struct.rtx_def** %r__157, align 8
  %109 = bitcast %struct.rtx_def* %108 to i8*
  %call160 = call i32 @ggc_set_mark(i8* %109)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.159
  %110 = load %struct.rtx_def*, %struct.rtx_def** %r__157, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %110)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %land.lhs.true.159, %do.body.156
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %111 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %resume = getelementptr inbounds %struct.eh_region, %struct.eh_region* %111, i32 0, i32 10
  %112 = load %struct.rtx_def*, %struct.rtx_def** %resume, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %r__166, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %r__166, align 8
  %cmp167 = icmp ne %struct.rtx_def* %113, null
  br i1 %cmp167, label %land.lhs.true.168, label %if.end.172

land.lhs.true.168:                                ; preds = %do.body.165
  %114 = load %struct.rtx_def*, %struct.rtx_def** %r__166, align 8
  %115 = bitcast %struct.rtx_def* %114 to i8*
  %call169 = call i32 @ggc_set_mark(i8* %115)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.172, label %if.then.171

if.then.171:                                      ; preds = %land.lhs.true.168
  %116 = load %struct.rtx_def*, %struct.rtx_def** %r__166, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %116)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %land.lhs.true.168, %do.body.165
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.end.173
  %117 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %117, i32 0, i32 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  store %struct.rtx_def* %118, %struct.rtx_def** %r__175, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %r__175, align 8
  %cmp176 = icmp ne %struct.rtx_def* %119, null
  br i1 %cmp176, label %land.lhs.true.177, label %if.end.181

land.lhs.true.177:                                ; preds = %do.body.174
  %120 = load %struct.rtx_def*, %struct.rtx_def** %r__175, align 8
  %121 = bitcast %struct.rtx_def* %120 to i8*
  %call178 = call i32 @ggc_set_mark(i8* %121)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.end.181, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.177
  %122 = load %struct.rtx_def*, %struct.rtx_def** %r__175, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %122)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.180, %land.lhs.true.177, %do.body.174
  br label %do.end.182

do.end.182:                                       ; preds = %if.end.181
  br label %do.body.183

do.body.183:                                      ; preds = %do.end.182
  %123 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %post_landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %123, i32 0, i32 9
  %124 = load %struct.rtx_def*, %struct.rtx_def** %post_landing_pad, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %r__184, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %r__184, align 8
  %cmp185 = icmp ne %struct.rtx_def* %125, null
  br i1 %cmp185, label %land.lhs.true.186, label %if.end.190

land.lhs.true.186:                                ; preds = %do.body.183
  %126 = load %struct.rtx_def*, %struct.rtx_def** %r__184, align 8
  %127 = bitcast %struct.rtx_def* %126 to i8*
  %call187 = call i32 @ggc_set_mark(i8* %127)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.end.190, label %if.then.189

if.then.189:                                      ; preds = %land.lhs.true.186
  %128 = load %struct.rtx_def*, %struct.rtx_def** %r__184, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %128)
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %land.lhs.true.186, %do.body.183
  br label %do.end.191

do.end.191:                                       ; preds = %if.then, %if.end.190
  ret void
}

declare i32 @ggc_set_mark(i8*) #1

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

declare void @ggc_mark_rtx_children(%struct.rtx_def*) #1

declare void @ggc_mark_tree_varray(%struct.varray_head_tag*) #1

; Function Attrs: nounwind uwtable
define void @free_eh_status(%struct.function* %f) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  %eh = alloca %struct.eh_status*, align 8
  %i = alloca i32, align 4
  %r = alloca %struct.eh_region*, align 8
  %next = alloca %struct.eh_region*, align 8
  %r9 = alloca %struct.eh_region*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  %0 = load %struct.function*, %struct.function** %f.addr, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  store %struct.eh_status* %1, %struct.eh_status** %eh, align 8
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 1
  %3 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %tobool = icmp ne %struct.eh_region** %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %4, i32 0, i32 8
  %5 = load i32, i32* %last_region_number, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array2 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %8, i32 0, i32 1
  %9 = load %struct.eh_region**, %struct.eh_region*** %region_array2, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %9, i64 %idxprom
  %10 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %10, %struct.eh_region** %r, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool3 = icmp ne %struct.eh_region* %11, null
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %12, i32 0, i32 3
  %13 = load i32, i32* %region_number, align 4
  %14 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %13, %14
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %15 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  call void @free_region(%struct.eh_region* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array6 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %17, i32 0, i32 1
  %18 = load %struct.eh_region**, %struct.eh_region*** %region_array6, align 8
  %19 = bitcast %struct.eh_region** %18 to i8*
  call void @free(i8* %19) #4
  br label %if.end.28

if.else:                                          ; preds = %entry
  %20 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %20, i32 0, i32 0
  %21 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %tobool7 = icmp ne %struct.eh_region* %21, null
  br i1 %tobool7, label %if.then.8, label %if.end.27

if.then.8:                                        ; preds = %if.else
  %22 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_tree10 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %22, i32 0, i32 0
  %23 = load %struct.eh_region*, %struct.eh_region** %region_tree10, align 8
  store %struct.eh_region* %23, %struct.eh_region** %r9, align 8
  br label %while.body

while.body:                                       ; preds = %if.then.8, %if.end.26
  %24 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %24, i32 0, i32 1
  %25 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %tobool11 = icmp ne %struct.eh_region* %25, null
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %while.body
  %26 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %inner13 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 1
  %27 = load %struct.eh_region*, %struct.eh_region** %inner13, align 8
  store %struct.eh_region* %27, %struct.eh_region** %r9, align 8
  br label %if.end.26

if.else.14:                                       ; preds = %while.body
  %28 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 2
  %29 = load %struct.eh_region*, %struct.eh_region** %next_peer, align 8
  %tobool15 = icmp ne %struct.eh_region* %29, null
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.14
  %30 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %next_peer17 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 2
  %31 = load %struct.eh_region*, %struct.eh_region** %next_peer17, align 8
  store %struct.eh_region* %31, %struct.eh_region** %next, align 8
  %32 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  call void @free_region(%struct.eh_region* %32)
  %33 = load %struct.eh_region*, %struct.eh_region** %next, align 8
  store %struct.eh_region* %33, %struct.eh_region** %r9, align 8
  br label %if.end.25

if.else.18:                                       ; preds = %if.else.14
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.18
  %34 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 0
  %35 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %35, %struct.eh_region** %next, align 8
  %36 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  call void @free_region(%struct.eh_region* %36)
  %37 = load %struct.eh_region*, %struct.eh_region** %next, align 8
  store %struct.eh_region* %37, %struct.eh_region** %r9, align 8
  %38 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %cmp19 = icmp eq %struct.eh_region* %38, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body
  br label %tree_done

if.end.21:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  %39 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %next_peer22 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 2
  %40 = load %struct.eh_region*, %struct.eh_region** %next_peer22, align 8
  %cmp23 = icmp eq %struct.eh_region* %40, null
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %41 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  %next_peer24 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %41, i32 0, i32 2
  %42 = load %struct.eh_region*, %struct.eh_region** %next_peer24, align 8
  store %struct.eh_region* %42, %struct.eh_region** %next, align 8
  %43 = load %struct.eh_region*, %struct.eh_region** %r9, align 8
  call void @free_region(%struct.eh_region* %43)
  %44 = load %struct.eh_region*, %struct.eh_region** %next, align 8
  store %struct.eh_region* %44, %struct.eh_region** %r9, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.12
  br label %while.body

tree_done:                                        ; preds = %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %tree_done, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.end
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.28
  %45 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ttype_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %45, i32 0, i32 9
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data, align 8
  %tobool30 = icmp ne %struct.varray_head_tag* %46, null
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.body.29
  %47 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ttype_data32 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %47, i32 0, i32 9
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data32, align 8
  %49 = bitcast %struct.varray_head_tag* %48 to i8*
  call void @free(i8* %49) #4
  %50 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ttype_data33 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %50, i32 0, i32 9
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %ttype_data33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.body.29
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.34
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %51 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ehspec_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %51, i32 0, i32 10
  %52 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data, align 8
  %tobool38 = icmp ne %struct.varray_head_tag* %52, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %do.body.37
  %53 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ehspec_data40 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %53, i32 0, i32 10
  %54 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data40, align 8
  %55 = bitcast %struct.varray_head_tag* %54 to i8*
  call void @free(i8* %55) #4
  %56 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ehspec_data41 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %56, i32 0, i32 10
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %ehspec_data41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %do.body.37
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.42
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %57 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %action_record_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %57, i32 0, i32 11
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** %action_record_data, align 8
  %tobool46 = icmp ne %struct.varray_head_tag* %58, null
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %do.body.45
  %59 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %action_record_data48 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %59, i32 0, i32 11
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** %action_record_data48, align 8
  %61 = bitcast %struct.varray_head_tag* %60 to i8*
  call void @free(i8* %61) #4
  %62 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %action_record_data49 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %62, i32 0, i32 11
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %action_record_data49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %do.body.45
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.50
  %63 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %call_site_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %63, i32 0, i32 12
  %64 = load %struct.call_site_record*, %struct.call_site_record** %call_site_data, align 8
  %tobool53 = icmp ne %struct.call_site_record* %64, null
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %do.end.52
  %65 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %call_site_data55 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %65, i32 0, i32 12
  %66 = load %struct.call_site_record*, %struct.call_site_record** %call_site_data55, align 8
  %67 = bitcast %struct.call_site_record* %66 to i8*
  call void @free(i8* %67) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %do.end.52
  %68 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %69 = bitcast %struct.eh_status* %68 to i8*
  call void @free(i8* %69) #4
  %70 = load %struct.function*, %struct.function** %f.addr, align 8
  %eh57 = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 0
  store %struct.eh_status* null, %struct.eh_status** %eh57, align 8
  %71 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %tobool58 = icmp ne %struct.htab* %71, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  %72 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  call void @htab_delete(%struct.htab* %72)
  store %struct.htab* null, %struct.htab** @exception_handler_label_map, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.56
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_region(%struct.eh_region* %r) #2 {
entry:
  %r.addr = alloca %struct.eh_region*, align 8
  store %struct.eh_region* %r, %struct.eh_region** %r.addr, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %r.addr, align 8
  %1 = bitcast %struct.eh_region* %0 to i8*
  call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @htab_delete(%struct.htab*) #1

; Function Attrs: nounwind uwtable
define void @expand_eh_region_start() #0 {
entry:
  %new_region = alloca %struct.eh_region*, align 8
  %cur_region = alloca %struct.eh_region*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @xcalloc(i64 1, i64 112)
  %0 = bitcast i8* %call1 to %struct.eh_region*
  store %struct.eh_region* %0, %struct.eh_region** %new_region, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %cur_region2 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 2
  %3 = load %struct.eh_region*, %struct.eh_region** %cur_region2, align 8
  store %struct.eh_region* %3, %struct.eh_region** %cur_region, align 8
  %4 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  %5 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %5, i32 0, i32 0
  store %struct.eh_region* %4, %struct.eh_region** %outer, align 8
  %6 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  %tobool3 = icmp ne %struct.eh_region* %6, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %7, i32 0, i32 1
  %8 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %9 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %9, i32 0, i32 2
  store %struct.eh_region* %8, %struct.eh_region** %next_peer, align 8
  %10 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  %inner5 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %11, i32 0, i32 1
  store %struct.eh_region* %10, %struct.eh_region** %inner5, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %eh6 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 0
  %13 = load %struct.eh_status*, %struct.eh_status** %eh6, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %13, i32 0, i32 0
  %14 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %15 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %next_peer7 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 2
  store %struct.eh_region* %14, %struct.eh_region** %next_peer7, align 8
  %16 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %eh8 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 0
  %18 = load %struct.eh_status*, %struct.eh_status** %eh8, align 8
  %region_tree9 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %18, i32 0, i32 0
  store %struct.eh_region* %16, %struct.eh_region** %region_tree9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.4
  %19 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %eh11 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 0
  %21 = load %struct.eh_status*, %struct.eh_status** %eh11, align 8
  %cur_region12 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %21, i32 0, i32 2
  store %struct.eh_region* %19, %struct.eh_region** %cur_region12, align 8
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %eh13 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 0
  %23 = load %struct.eh_status*, %struct.eh_status** %eh13, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %23, i32 0, i32 8
  %24 = load i32, i32* %last_region_number, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %last_region_number, align 4
  %25 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 3
  store i32 %inc, i32* %region_number, align 4
  %call14 = call %struct.rtx_def* @emit_note(i8* null, i32 -86)
  store %struct.rtx_def* %call14, %struct.rtx_def** %note, align 8
  %26 = load %struct.eh_region*, %struct.eh_region** %new_region, align 8
  %region_number15 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 3
  %27 = load i32, i32* %region_number15, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %27, i32* %rtint, align 4
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  ret void
}

declare %struct.rtx_def* @emit_note(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @expand_eh_region_end_cleanup(%union.tree_node* %handler) #0 {
entry:
  %handler.addr = alloca %union.tree_node*, align 8
  %region = alloca %struct.eh_region*, align 8
  %protect_cleanup_actions = alloca %union.tree_node*, align 8
  %around_label = alloca %struct.rtx_def*, align 8
  %data_save = alloca [2 x %struct.rtx_def*], align 16
  store %union.tree_node* %handler, %union.tree_node** %handler.addr, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %region, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  store i32 1, i32* %type, align 4
  %call2 = call %struct.rtx_def* @gen_label_rtx()
  %1 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %1, i32 0, i32 7
  store %struct.rtx_def* %call2, %struct.rtx_def** %label, align 8
  %2 = load %union.tree_node*, %union.tree_node** %handler.addr, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 6
  %cleanup = bitcast %union.anon* %u to %struct.anon.8*
  %exp = getelementptr inbounds %struct.anon.8, %struct.anon.8* %cleanup, i32 0, i32 0
  store %union.tree_node* %2, %union.tree_node** %exp, align 8
  %call3 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call3, %struct.rtx_def** %around_label, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  call void @emit_jump(%struct.rtx_def* %4)
  %5 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label4 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %5, i32 0, i32 7
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label4, align 8
  %call5 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %6)
  %7 = load %union.tree_node* ()*, %union.tree_node* ()** @lang_protect_cleanup_actions, align 8
  %tobool6 = icmp ne %union.tree_node* ()* %7, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %union.tree_node* ()*, %union.tree_node* ()** @lang_protect_cleanup_actions, align 8
  %call7 = call %union.tree_node* %8()
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %call7, %cond.true ], [ null, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %protect_cleanup_actions, align 8
  %9 = load %union.tree_node*, %union.tree_node** %protect_cleanup_actions, align 8
  %tobool8 = icmp ne %union.tree_node* %9, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end
  call void @expand_eh_region_start()
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %cond.end
  %10 = load i32, i32* @target_flags, align 4
  %and = and i32 %10, 33554432
  %tobool11 = icmp ne i32 %and, 0
  %cond12 = select i1 %tobool11, i32 5, i32 4
  %call13 = call %struct.rtx_def* @gen_reg_rtx(i32 %cond12)
  %arrayidx = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %data_save, i32 0, i64 0
  store %struct.rtx_def* %call13, %struct.rtx_def** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %data_save, i32 0, i64 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx14, align 8
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %call15 = call %struct.rtx_def* @get_exception_pointer(%struct.function* %12)
  %call16 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %11, %struct.rtx_def* %call15)
  %13 = load i32, i32* @word_mode, align 4
  %call17 = call %struct.rtx_def* @gen_reg_rtx(i32 %13)
  %arrayidx18 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %data_save, i32 0, i64 1
  store %struct.rtx_def* %call17, %struct.rtx_def** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %data_save, i32 0, i64 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx19, align 8
  %15 = load %struct.function*, %struct.function** @cfun, align 8
  %call20 = call %struct.rtx_def* @get_exception_filter(%struct.function* %15)
  %call21 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %14, %struct.rtx_def* %call20)
  %16 = load %union.tree_node*, %union.tree_node** %handler.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call22 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* %17, i32 0, i32 0)
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 0
  %19 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %exc_ptr = getelementptr inbounds %struct.eh_status, %struct.eh_status* %19, i32 0, i32 6
  %20 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  %arrayidx23 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %data_save, i32 0, i64 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8
  %call24 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %20, %struct.rtx_def* %21)
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %eh25 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 0
  %23 = load %struct.eh_status*, %struct.eh_status** %eh25, align 8
  %filter = getelementptr inbounds %struct.eh_status, %struct.eh_status* %23, i32 0, i32 5
  %24 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  %arrayidx26 = getelementptr inbounds [2 x %struct.rtx_def*], [2 x %struct.rtx_def*]* %data_save, i32 0, i64 1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx26, align 8
  %call27 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %24, %struct.rtx_def* %25)
  %26 = load %union.tree_node*, %union.tree_node** %protect_cleanup_actions, align 8
  %tobool28 = icmp ne %union.tree_node* %26, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.10
  %27 = load %union.tree_node*, %union.tree_node** %protect_cleanup_actions, align 8
  call void @expand_eh_region_end_must_not_throw(%union.tree_node* %27)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.10
  call void @do_pending_stack_adjust()
  %28 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 3
  %29 = load i32, i32* %region_number, align 4
  %call31 = call %struct.rtx_def* @gen_rtx_fmt_i(i32 53, i32 0, i32 %29)
  %call32 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call31)
  %30 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 10
  store %struct.rtx_def* %call32, %struct.rtx_def** %resume, align 8
  %call33 = call %struct.rtx_def* @emit_barrier()
  %31 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  %call34 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %31)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.eh_region* @expand_eh_region_end() #0 {
entry:
  %cur_region = alloca %struct.eh_region*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %cur_region1 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 2
  %2 = load %struct.eh_region*, %struct.eh_region** %cur_region1, align 8
  store %struct.eh_region* %2, %struct.eh_region** %cur_region, align 8
  %call = call %struct.rtx_def* @emit_note(i8* null, i32 -85)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 3
  %4 = load i32, i32* %region_number, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %4, i32* %rtint, align 4
  %6 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %6, i32 0, i32 0
  %7 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh2 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh2, align 8
  %cur_region3 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 2
  store %struct.eh_region* %7, %struct.eh_region** %cur_region3, align 8
  %10 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  ret %struct.eh_region* %10
}

declare %struct.rtx_def* @gen_label_rtx() #1

declare void @emit_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_exception_pointer(%struct.function* %fun) #0 {
entry:
  %fun.addr = alloca %struct.function*, align 8
  %exc_ptr = alloca %struct.rtx_def*, align 8
  store %struct.function* %fun, %struct.function** %fun.addr, align 8
  %0 = load %struct.function*, %struct.function** %fun.addr, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %exc_ptr1 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 6
  %2 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %exc_ptr, align 8
  %3 = load %struct.function*, %struct.function** %fun.addr, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %cmp = icmp eq %struct.function* %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* @target_flags, align 4
  %and = and i32 %6, 33554432
  %tobool2 = icmp ne i32 %and, 0
  %cond = select i1 %tobool2, i32 5, i32 4
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %cond)
  store %struct.rtx_def* %call, %struct.rtx_def** %exc_ptr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  %8 = load %struct.function*, %struct.function** %fun.addr, align 8
  %eh3 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh3, align 8
  %exc_ptr4 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 6
  store %struct.rtx_def* %7, %struct.rtx_def** %exc_ptr4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @get_exception_filter(%struct.function* %fun) #0 {
entry:
  %fun.addr = alloca %struct.function*, align 8
  %filter = alloca %struct.rtx_def*, align 8
  store %struct.function* %fun, %struct.function** %fun.addr, align 8
  %0 = load %struct.function*, %struct.function** %fun.addr, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %filter1 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 5
  %2 = load %struct.rtx_def*, %struct.rtx_def** %filter1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %filter, align 8
  %3 = load %struct.function*, %struct.function** %fun.addr, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %cmp = icmp eq %struct.function* %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* @word_mode, align 4
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %filter, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  %8 = load %struct.function*, %struct.function** %fun.addr, align 8
  %eh2 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh2, align 8
  %filter3 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 5
  store %struct.rtx_def* %7, %struct.rtx_def** %filter3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  ret %struct.rtx_def* %10
}

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @expand_eh_region_end_must_not_throw(%union.tree_node* %failure) #0 {
entry:
  %failure.addr = alloca %union.tree_node*, align 8
  %region = alloca %struct.eh_region*, align 8
  %around_label = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %failure, %union.tree_node** %failure.addr, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %region, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  store i32 5, i32* %type, align 4
  %call2 = call %struct.rtx_def* @gen_label_rtx()
  %1 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %1, i32 0, i32 7
  store %struct.rtx_def* %call2, %struct.rtx_def** %label, align 8
  %call3 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call3, %struct.rtx_def** %around_label, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  call void @emit_jump(%struct.rtx_def* %2)
  %3 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label4 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 7
  %4 = load %struct.rtx_def*, %struct.rtx_def** %label4, align 8
  %call5 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %4)
  %5 = load %union.tree_node*, %union.tree_node** %failure.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call6 = call %struct.rtx_def* @expand_expr(%union.tree_node* %5, %struct.rtx_def* %6, i32 0, i32 0)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  %call7 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @do_pending_stack_adjust() #1

declare %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_i(i32, i32, i32) #1

declare %struct.rtx_def* @emit_barrier() #1

; Function Attrs: nounwind uwtable
define void @expand_start_all_catch() #0 {
entry:
  %region = alloca %struct.eh_region*, align 8
  %call = call i32 @doing_eh(i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %region, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  store i32 2, i32* %type, align 4
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %try_region = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 3
  %3 = load %struct.eh_region*, %struct.eh_region** %try_region, align 8
  %4 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %4, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %prev_try = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 2
  store %struct.eh_region* %3, %struct.eh_region** %prev_try, align 8
  %call2 = call %struct.rtx_def* @gen_label_rtx()
  %5 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u3 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %5, i32 0, i32 6
  %try4 = bitcast %union.anon* %u3 to %struct.anon*
  %continue_label = getelementptr inbounds %struct.anon, %struct.anon* %try4, i32 0, i32 3
  store %struct.rtx_def* %call2, %struct.rtx_def** %continue_label, align 8
  %6 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %eh5 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 0
  %8 = load %struct.eh_status*, %struct.eh_status** %eh5, align 8
  %try_region6 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %8, i32 0, i32 3
  store %struct.eh_region* %6, %struct.eh_region** %try_region6, align 8
  %9 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u7 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %9, i32 0, i32 6
  %try8 = bitcast %union.anon* %u7 to %struct.anon*
  %continue_label9 = getelementptr inbounds %struct.anon, %struct.anon* %try8, i32 0, i32 3
  %10 = load %struct.rtx_def*, %struct.rtx_def** %continue_label9, align 8
  call void @emit_jump(%struct.rtx_def* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @expand_start_catch(%union.tree_node* %type_or_list) #0 {
entry:
  %type_or_list.addr = alloca %union.tree_node*, align 8
  %t = alloca %struct.eh_region*, align 8
  %c = alloca %struct.eh_region*, align 8
  %l = alloca %struct.eh_region*, align 8
  %type_list = alloca %union.tree_node*, align 8
  %type_node = alloca %union.tree_node*, align 8
  store %union.tree_node* %type_or_list, %union.tree_node** %type_or_list.addr, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %union.tree_node*, %union.tree_node** %type_or_list.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %type_list, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type_or_list.addr, align 8
  %tobool1 = icmp ne %union.tree_node* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** %type_or_list.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 2
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.then.2
  %3 = load %union.tree_node*, %union.tree_node** %type_or_list.addr, align 8
  %call4 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %3, %union.tree_node* null)
  store %union.tree_node* %call4, %union.tree_node** %type_list, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.then.2
  %4 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  store %union.tree_node* %4, %union.tree_node** %type_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %5 = load %union.tree_node*, %union.tree_node** %type_node, align 8
  %tobool6 = icmp ne %union.tree_node* %5, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %type_node, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @add_type_for_runtime(%union.tree_node* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %union.tree_node*, %union.tree_node** %type_node, align 8
  %common7 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %9, %union.tree_node** %type_node, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.end
  call void @expand_eh_region_start()
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 0
  %11 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %try_region = getelementptr inbounds %struct.eh_status, %struct.eh_status* %11, i32 0, i32 3
  %12 = load %struct.eh_region*, %struct.eh_region** %try_region, align 8
  store %struct.eh_region* %12, %struct.eh_region** %t, align 8
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %eh9 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 0
  %14 = load %struct.eh_status*, %struct.eh_status** %eh9, align 8
  %cur_region = getelementptr inbounds %struct.eh_status, %struct.eh_status* %14, i32 0, i32 2
  %15 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  store %struct.eh_region* %15, %struct.eh_region** %c, align 8
  %16 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %16, i32 0, i32 5
  store i32 3, i32* %type, align 4
  %17 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  %18 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %18, i32 0, i32 6
  %catch = bitcast %union.anon* %u to %struct.anon.5*
  %type_list10 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch, i32 0, i32 2
  store %union.tree_node* %17, %union.tree_node** %type_list10, align 8
  %call11 = call %struct.rtx_def* @gen_label_rtx()
  %19 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 7
  store %struct.rtx_def* %call11, %struct.rtx_def** %label, align 8
  %20 = load %struct.eh_region*, %struct.eh_region** %t, align 8
  %u12 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 6
  %try = bitcast %union.anon* %u12 to %struct.anon*
  %last_catch = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 1
  %21 = load %struct.eh_region*, %struct.eh_region** %last_catch, align 8
  store %struct.eh_region* %21, %struct.eh_region** %l, align 8
  %22 = load %struct.eh_region*, %struct.eh_region** %l, align 8
  %23 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u13 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %23, i32 0, i32 6
  %catch14 = bitcast %union.anon* %u13 to %struct.anon.5*
  %prev_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch14, i32 0, i32 1
  store %struct.eh_region* %22, %struct.eh_region** %prev_catch, align 8
  %24 = load %struct.eh_region*, %struct.eh_region** %l, align 8
  %tobool15 = icmp ne %struct.eh_region* %24, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.8
  %25 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %26 = load %struct.eh_region*, %struct.eh_region** %l, align 8
  %u17 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 6
  %catch18 = bitcast %union.anon* %u17 to %struct.anon.5*
  %next_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch18, i32 0, i32 0
  store %struct.eh_region* %25, %struct.eh_region** %next_catch, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end.8
  %27 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %28 = load %struct.eh_region*, %struct.eh_region** %t, align 8
  %u19 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 6
  %try20 = bitcast %union.anon* %u19 to %struct.anon*
  %catch21 = getelementptr inbounds %struct.anon, %struct.anon* %try20, i32 0, i32 0
  store %struct.eh_region* %27, %struct.eh_region** %catch21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.16
  %29 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %30 = load %struct.eh_region*, %struct.eh_region** %t, align 8
  %u23 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 6
  %try24 = bitcast %union.anon* %u23 to %struct.anon*
  %last_catch25 = getelementptr inbounds %struct.anon, %struct.anon* %try24, i32 0, i32 1
  store %struct.eh_region* %29, %struct.eh_region** %last_catch25, align 8
  %31 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %label26 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %31, i32 0, i32 7
  %32 = load %struct.rtx_def*, %struct.rtx_def** %label26, align 8
  %call27 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %32)
  br label %return

return:                                           ; preds = %if.end.22, %if.then
  ret void
}

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @add_type_for_runtime(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %slot = alloca %union.tree_node**, align 8
  %runtime = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @type_to_runtime_map, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %2 = bitcast %union.tree_node* %1 to i8*
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %conv = trunc i64 %and to i32
  %call = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %2, i32 %conv, i32 1)
  %5 = bitcast i8** %call to %union.tree_node**
  store %union.tree_node** %5, %union.tree_node*** %slot, align 8
  %6 = load %union.tree_node**, %union.tree_node*** %slot, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %cmp = icmp eq %union.tree_node* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** @lang_eh_runtime_type, align 8
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call2 = call %union.tree_node* %8(%union.tree_node* %9)
  store %union.tree_node* %call2, %union.tree_node** %runtime, align 8
  %10 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %runtime, align 8
  %call3 = call %union.tree_node* @tree_cons(%union.tree_node* %10, %union.tree_node* %11, %union.tree_node* null)
  %12 = load %union.tree_node**, %union.tree_node*** %slot, align 8
  store %union.tree_node* %call3, %union.tree_node** %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @expand_end_catch() #0 {
entry:
  %try_region = alloca %struct.eh_region*, align 8
  %catch_region = alloca %struct.eh_region*, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %catch_region, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %try_region2 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 3
  %2 = load %struct.eh_region*, %struct.eh_region** %try_region2, align 8
  store %struct.eh_region* %2, %struct.eh_region** %try_region, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %try_region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %continue_label = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 3
  %4 = load %struct.rtx_def*, %struct.rtx_def** %continue_label, align 8
  call void @emit_jump(%struct.rtx_def* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @expand_end_all_catch() #0 {
entry:
  %try_region = alloca %struct.eh_region*, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %try_region1 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 3
  %2 = load %struct.eh_region*, %struct.eh_region** %try_region1, align 8
  store %struct.eh_region* %2, %struct.eh_region** %try_region, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %try_region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %prev_try = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 2
  %4 = load %struct.eh_region*, %struct.eh_region** %prev_try, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh2 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh2, align 8
  %try_region3 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 3
  store %struct.eh_region* %4, %struct.eh_region** %try_region3, align 8
  %7 = load %struct.eh_region*, %struct.eh_region** %try_region, align 8
  %u4 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %7, i32 0, i32 6
  %try5 = bitcast %union.anon* %u4 to %struct.anon*
  %continue_label = getelementptr inbounds %struct.anon, %struct.anon* %try5, i32 0, i32 3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %continue_label, align 8
  %call6 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @expand_eh_region_end_allowed(%union.tree_node* %allowed, %union.tree_node* %failure) #0 {
entry:
  %allowed.addr = alloca %union.tree_node*, align 8
  %failure.addr = alloca %union.tree_node*, align 8
  %region = alloca %struct.eh_region*, align 8
  %around_label = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %allowed, %union.tree_node** %allowed.addr, align 8
  store %union.tree_node* %failure, %union.tree_node** %failure.addr, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %region, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  store i32 4, i32* %type, align 4
  %1 = load %union.tree_node*, %union.tree_node** %allowed.addr, align 8
  %2 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %2, i32 0, i32 6
  %allowed2 = bitcast %union.anon* %u to %struct.anon.6*
  %type_list = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed2, i32 0, i32 0
  store %union.tree_node* %1, %union.tree_node** %type_list, align 8
  %call3 = call %struct.rtx_def* @gen_label_rtx()
  %3 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 7
  store %struct.rtx_def* %call3, %struct.rtx_def** %label, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %union.tree_node*, %union.tree_node** %allowed.addr, align 8
  %tobool4 = icmp ne %union.tree_node* %4, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %union.tree_node*, %union.tree_node** %allowed.addr, align 8
  %list = bitcast %union.tree_node* %5 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @add_type_for_runtime(%union.tree_node* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %allowed.addr, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %8, %union.tree_node** %allowed.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call5, %struct.rtx_def** %around_label, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  call void @emit_jump(%struct.rtx_def* %9)
  %10 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label6 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %label6, align 8
  %call7 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %11)
  %12 = load %union.tree_node*, %union.tree_node** %failure.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call8 = call %struct.rtx_def* @expand_expr(%union.tree_node* %12, %struct.rtx_def* %13, i32 0, i32 0)
  call void @do_pending_stack_adjust()
  %14 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  %call9 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %14)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @expand_eh_region_end_throw(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %region = alloca %struct.eh_region*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %region, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type2 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  store i32 6, i32* %type2, align 4
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %2 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %2, i32 0, i32 6
  %throw = bitcast %union.anon* %u to %struct.anon.7*
  %type3 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw, i32 0, i32 0
  store %union.tree_node* %1, %union.tree_node** %type3, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @expand_eh_region_end_fixup(%union.tree_node* %handler) #0 {
entry:
  %handler.addr = alloca %union.tree_node*, align 8
  %fixup = alloca %struct.eh_region*, align 8
  store %union.tree_node* %handler, %union.tree_node** %handler.addr, align 8
  %call = call i32 @doing_eh(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.eh_region* @expand_eh_region_end()
  store %struct.eh_region* %call1, %struct.eh_region** %fixup, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  store i32 7, i32* %type, align 4
  %1 = load %union.tree_node*, %union.tree_node** %handler.addr, align 8
  %2 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %2, i32 0, i32 6
  %fixup2 = bitcast %union.anon* %u to %struct.anon.9*
  %cleanup_exp = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup2, i32 0, i32 0
  store %union.tree_node* %1, %union.tree_node** %cleanup_exp, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @begin_protect_partials() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %protect_list = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 4
  %2 = load %union.tree_node*, %union.tree_node** %protect_list, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* null, %union.tree_node* %2)
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 0
  %4 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %protect_list2 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %4, i32 0, i32 4
  store %union.tree_node* %call, %union.tree_node** %protect_list2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_partial_entry(%union.tree_node* %handler) #0 {
entry:
  %handler.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %handler, %union.tree_node** %handler.addr, align 8
  call void @expand_eh_region_start()
  %0 = load %union.tree_node*, %union.tree_node** %handler.addr, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %protect_list = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 4
  %3 = load %union.tree_node*, %union.tree_node** %protect_list, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %0, %union.tree_node* %4)
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %protect_list2 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 4
  %7 = load %union.tree_node*, %union.tree_node** %protect_list2, align 8
  %list3 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value4 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3, i32 0, i32 2
  store %union.tree_node* %call, %union.tree_node** %value4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @end_protect_partials() #0 {
entry:
  %t = alloca %union.tree_node*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %protect_list = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 4
  %2 = load %union.tree_node*, %union.tree_node** %protect_list, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %3, %union.tree_node** %t, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 0
  %5 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %protect_list2 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %5, i32 0, i32 4
  %6 = load %union.tree_node*, %union.tree_node** %protect_list2, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh3 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh3, align 8
  %protect_list4 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 4
  store %union.tree_node* %7, %union.tree_node** %protect_list4, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list5 = bitcast %union.tree_node* %11 to %struct.tree_list*
  %value6 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list5, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %value6, align 8
  call void @expand_eh_region_end_cleanup(%union.tree_node* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common7 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain8, align 8
  store %union.tree_node* %14, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @convert_from_eh_region_ranges() #0 {
entry:
  %stack = alloca i32*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  call void @collect_eh_region_array()
  call void @resolve_fixup_regions()
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %stack, align 8
  %call1 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call1, %struct.rtx_def** %insns, align 8
  %4 = load i32*, i32** %stack, align 8
  call void @convert_from_eh_region_ranges_1(%struct.rtx_def** %insns, i32* %4, i32 0)
  %5 = load i32*, i32** %stack, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #4
  call void @remove_fixup_regions()
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @remove_unreachable_regions(%struct.rtx_def* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @collect_eh_region_array() #0 {
entry:
  %array = alloca %struct.eh_region**, align 8
  %i = alloca %struct.eh_region*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 0
  %2 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  store %struct.eh_region* %2, %struct.eh_region** %i, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %tobool = icmp ne %struct.eh_region* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 0
  %5 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %5, i32 0, i32 8
  %6 = load i32, i32* %last_region_number, align 4
  %add = add nsw i32 %6, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %7 = bitcast i8* %call to %struct.eh_region**
  store %struct.eh_region** %7, %struct.eh_region*** %array, align 8
  %8 = load %struct.eh_region**, %struct.eh_region*** %array, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %eh2 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 0
  %10 = load %struct.eh_status*, %struct.eh_status** %eh2, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %10, i32 0, i32 1
  store %struct.eh_region** %8, %struct.eh_region*** %region_array, align 8
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.18
  %11 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %12 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %12, i32 0, i32 3
  %13 = load i32, i32* %region_number, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.eh_region**, %struct.eh_region*** %array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %14, i64 %idxprom
  store %struct.eh_region* %11, %struct.eh_region** %arrayidx, align 8
  %15 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 1
  %16 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %tobool3 = icmp ne %struct.eh_region* %16, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.body
  %17 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %inner5 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 1
  %18 = load %struct.eh_region*, %struct.eh_region** %inner5, align 8
  store %struct.eh_region* %18, %struct.eh_region** %i, align 8
  br label %if.end.18

if.else:                                          ; preds = %while.body
  %19 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 2
  %20 = load %struct.eh_region*, %struct.eh_region** %next_peer, align 8
  %tobool6 = icmp ne %struct.eh_region* %20, null
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %21 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %next_peer8 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %21, i32 0, i32 2
  %22 = load %struct.eh_region*, %struct.eh_region** %next_peer8, align 8
  store %struct.eh_region* %22, %struct.eh_region** %i, align 8
  br label %if.end.17

if.else.9:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.9
  %23 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %23, i32 0, i32 0
  %24 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %24, %struct.eh_region** %i, align 8
  %25 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %cmp = icmp eq %struct.eh_region* %25, null
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  br label %return

if.end.12:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %26 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %next_peer13 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 2
  %27 = load %struct.eh_region*, %struct.eh_region** %next_peer13, align 8
  %cmp14 = icmp eq %struct.eh_region* %27, null
  br i1 %cmp14, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load %struct.eh_region*, %struct.eh_region** %i, align 8
  %next_peer16 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 2
  %29 = load %struct.eh_region*, %struct.eh_region** %next_peer16, align 8
  store %struct.eh_region* %29, %struct.eh_region** %i, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.4
  br label %while.body

return:                                           ; preds = %if.then.11, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @resolve_fixup_regions() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %fixup = alloca %struct.eh_region*, align 8
  %cleanup = alloca %struct.eh_region*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  store i32 %2, i32* %n, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 0
  %7 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %7, i32 0, i32 1
  %8 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %8, i64 %idxprom
  %9 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %9, %struct.eh_region** %fixup, align 8
  store %struct.eh_region* null, %struct.eh_region** %cleanup, align 8
  %10 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %tobool = icmp ne %struct.eh_region* %10, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %11, i32 0, i32 5
  %12 = load i32, i32* %type, align 4
  %cmp2 = icmp ne i32 %12, 7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.23

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.end
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %n, align 4
  %cmp4 = icmp sle i32 %13, %14
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %15 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %15 to i64
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %eh7 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 0
  %17 = load %struct.eh_status*, %struct.eh_status** %eh7, align 8
  %region_array8 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %17, i32 0, i32 1
  %18 = load %struct.eh_region**, %struct.eh_region*** %region_array8, align 8
  %arrayidx9 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %18, i64 %idxprom6
  %19 = load %struct.eh_region*, %struct.eh_region** %arrayidx9, align 8
  store %struct.eh_region* %19, %struct.eh_region** %cleanup, align 8
  %20 = load %struct.eh_region*, %struct.eh_region** %cleanup, align 8
  %type10 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 5
  %21 = load i32, i32* %type10, align 4
  %cmp11 = icmp eq i32 %21, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.body.5
  %22 = load %struct.eh_region*, %struct.eh_region** %cleanup, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %22, i32 0, i32 6
  %cleanup12 = bitcast %union.anon* %u to %struct.anon.8*
  %exp = getelementptr inbounds %struct.anon.8, %struct.anon.8* %cleanup12, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %24 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u13 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %24, i32 0, i32 6
  %fixup14 = bitcast %union.anon* %u13 to %struct.anon.9*
  %cleanup_exp = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup14, i32 0, i32 0
  %25 = load %union.tree_node*, %union.tree_node** %cleanup_exp, align 8
  %cmp15 = icmp eq %union.tree_node* %23, %25
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.17:                                        ; preds = %land.lhs.true, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then.16, %for.cond.3
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %n, align 4
  %cmp18 = icmp sgt i32 %27, %28
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.resolve_fixup_regions, i32 0, i32 0)) #6
  unreachable

if.end.20:                                        ; preds = %for.end
  %29 = load %struct.eh_region*, %struct.eh_region** %cleanup, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %29, i32 0, i32 0
  %30 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %31 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u21 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %31, i32 0, i32 6
  %fixup22 = bitcast %union.anon* %u21 to %struct.anon.9*
  %real_region = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup22, i32 0, i32 1
  store %struct.eh_region* %30, %struct.eh_region** %real_region, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.20, %if.then
  %32 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %32, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  ret void
}

declare noalias i8* @xmalloc(i64) #1

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal void @convert_from_eh_region_ranges_1(%struct.rtx_def** %pinsns, i32* %orig_sp, i32 %cur) #0 {
entry:
  %pinsns.addr = alloca %struct.rtx_def**, align 8
  %orig_sp.addr = alloca i32*, align 8
  %cur.addr = alloca i32, align 4
  %sp = alloca i32*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %kind = alloca i32, align 4
  %r = alloca %struct.eh_region*, align 8
  store %struct.rtx_def** %pinsns, %struct.rtx_def*** %pinsns.addr, align 8
  store i32* %orig_sp, i32** %orig_sp.addr, align 8
  store i32 %cur, i32* %cur.addr, align 4
  %0 = load i32*, i32** %orig_sp.addr, align 8
  store i32* %0, i32** %sp, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %pinsns.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %next, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.else.32

if.then:                                          ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %9 = load i32, i32* %rtint, align 4
  store i32 %9, i32* %kind, align 4
  %10 = load i32, i32* %kind, align 4
  %cmp3 = icmp eq i32 %10, -86
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load i32, i32* %kind, align 4
  %cmp4 = icmp eq i32 %11, -85
  br i1 %cmp4, label %if.then.5, label %if.end.31

if.then.5:                                        ; preds = %lor.lhs.false, %if.then
  %12 = load i32, i32* %kind, align 4
  %cmp6 = icmp eq i32 %12, -86
  br i1 %cmp6, label %if.then.7, label %if.else.25

if.then.7:                                        ; preds = %if.then.5
  %13 = load i32, i32* %cur.addr, align 4
  %14 = load i32*, i32** %sp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr, i32** %sp, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %16 = load i32, i32* %rtint10, align 4
  store i32 %16, i32* %cur.addr, align 4
  %17 = load i32, i32* %cur.addr, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 0
  %19 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %19, i32 0, i32 1
  %20 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx11 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %20, i64 %idxprom
  %21 = load %struct.eh_region*, %struct.eh_region** %arrayidx11, align 8
  store %struct.eh_region* %21, %struct.eh_region** %r, align 8
  %22 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %22, i32 0, i32 5
  %23 = load i32, i32* %type, align 4
  %cmp12 = icmp eq i32 %23, 7
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.7
  %24 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %24, i32 0, i32 6
  %fixup = bitcast %union.anon* %u to %struct.anon.9*
  %real_region = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup, i32 0, i32 1
  %25 = load %struct.eh_region*, %struct.eh_region** %real_region, align 8
  store %struct.eh_region* %25, %struct.eh_region** %r, align 8
  %26 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool14 = icmp ne %struct.eh_region* %26, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.13
  %27 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %27, i32 0, i32 3
  %28 = load i32, i32* %region_number, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %cur.addr, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.then.7
  %29 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %type15 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %29, i32 0, i32 5
  %30 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %30, 3
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %31 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %31, i32 0, i32 0
  %32 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %32, %struct.eh_region** %r, align 8
  %33 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool18 = icmp ne %struct.eh_region* %33, null
  br i1 %tobool18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %if.then.17
  %34 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number20 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 3
  %35 = load i32, i32* %region_number20, align 4
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.then.17
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.19
  %cond23 = phi i32 [ %35, %cond.true.19 ], [ 0, %cond.false.21 ]
  store i32 %cond23, i32* %cur.addr, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.22, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %cond.end
  br label %if.end.27

if.else.25:                                       ; preds = %if.then.5
  %36 = load i32*, i32** %sp, align 8
  %incdec.ptr26 = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %incdec.ptr26, i32** %sp, align 8
  %37 = load i32, i32* %incdec.ptr26, align 4
  store i32 %37, i32* %cur.addr, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.end.24
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = load %struct.rtx_def**, %struct.rtx_def*** %pinsns.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %cmp28 = icmp eq %struct.rtx_def* %38, %40
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %41 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %pinsns.addr, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %42, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @remove_insn(%struct.rtx_def* %43)
  br label %for.inc

if.end.31:                                        ; preds = %lor.lhs.false
  br label %if.end.116

if.else.32:                                       ; preds = %for.body
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load33 = load i32, i32* %45, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %idxprom35 = sext i32 %bf.clear34 to i64
  %arrayidx36 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom35
  %46 = load i8, i8* %arrayidx36, align 1
  %conv = sext i8 %46 to i32
  %cmp37 = icmp eq i32 %conv, 105
  br i1 %cmp37, label %if.then.39, label %if.end.115

if.then.39:                                       ; preds = %if.else.32
  %47 = load i32, i32* %cur.addr, align 4
  %cmp40 = icmp sgt i32 %47, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %if.then.39
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %48, i32 23, %struct.rtx_def* null)
  %tobool42 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool42, label %if.end.82, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load44 = load i32, i32* %50, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 34
  br i1 %cmp46, label %if.then.72, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %land.lhs.true.43
  %51 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool49 = icmp ne i32 %51, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.82

land.lhs.true.50:                                 ; preds = %lor.lhs.false.48
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 3
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load54 = load i32, i32* %54, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp ne i32 %bf.clear55, 49
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.82

land.lhs.true.58:                                 ; preds = %land.lhs.true.50
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 3
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load62 = load i32, i32* %57, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp ne i32 %bf.clear63, 48
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.82

land.lhs.true.66:                                 ; preds = %land.lhs.true.58
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %call70 = call i32 @may_trap_p(%struct.rtx_def* %59)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %land.lhs.true.66, %land.lhs.true.43
  %60 = load i32, i32* %cur.addr, align 4
  %conv73 = sext i32 %60 to i64
  %call74 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv73)
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 6
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %call78 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 23, %struct.rtx_def* %call74, %struct.rtx_def* %62)
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 6
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  store %struct.rtx_def* %call78, %struct.rtx_def** %rtx81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.72, %land.lhs.true.66, %land.lhs.true.58, %land.lhs.true.50, %lor.lhs.false.48, %land.lhs.true, %if.then.39
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load83 = load i32, i32* %65, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 34
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.114

land.lhs.true.87:                                 ; preds = %if.end.82
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 3
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load91 = load i32, i32* %68, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 141
  br i1 %cmp93, label %if.then.95, label %if.end.114

if.then.95:                                       ; preds = %land.lhs.true.87
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %71 = load i32*, i32** %sp, align 8
  %72 = load i32, i32* %cur.addr, align 4
  call void @convert_from_eh_region_ranges_1(%struct.rtx_def** %rtx101, i32* %71, i32 %72)
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 3
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 1
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %75 = load i32*, i32** %sp, align 8
  %76 = load i32, i32* %cur.addr, align 4
  call void @convert_from_eh_region_ranges_1(%struct.rtx_def** %rtx107, i32* %75, i32 %76)
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 3
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 2
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  %79 = load i32*, i32** %sp, align 8
  %80 = load i32, i32* %cur.addr, align 4
  call void @convert_from_eh_region_ranges_1(%struct.rtx_def** %rtx113, i32* %79, i32 %80)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.95, %land.lhs.true.87, %if.end.82
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.else.32
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.116, %if.end.30
  %81 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load i32*, i32** %sp, align 8
  %83 = load i32*, i32** %orig_sp.addr, align 8
  %cmp117 = icmp ne i32* %82, %83
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1404, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.convert_from_eh_region_ranges_1, i32 0, i32 0)) #6
  unreachable

if.end.120:                                       ; preds = %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_fixup_regions() #0 {
entry:
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %fixup = alloca %struct.eh_region*, align 8
  %parent = alloca %struct.eh_region*, align 8
  %p = alloca %struct.eh_region*, align 8
  %pp = alloca %struct.eh_region**, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call2 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %4, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call2, %struct.rtx_def** %note, align 8
  %tobool3 = icmp ne %struct.rtx_def* %call2, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.33

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx7 to i64*
  %7 = load i64, i64* %rtwint, align 8
  %cmp8 = icmp sgt i64 %7, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.33

land.lhs.true.10:                                 ; preds = %land.lhs.true.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtwint16 = bitcast %union.rtunion_def* %arrayidx15 to i64*
  %10 = load i64, i64* %rtwint16, align 8
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 0
  %12 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %12, i32 0, i32 1
  %13 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx17 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %13, i64 %10
  %14 = load %struct.eh_region*, %struct.eh_region** %arrayidx17, align 8
  store %struct.eh_region* %14, %struct.eh_region** %fixup, align 8
  %tobool18 = icmp ne %struct.eh_region* %14, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.33

land.lhs.true.19:                                 ; preds = %land.lhs.true.10
  %15 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 5
  %16 = load i32, i32* %type, align 4
  %cmp20 = icmp eq i32 %16, 7
  br i1 %cmp20, label %if.then, label %if.end.33

if.then:                                          ; preds = %land.lhs.true.19
  %17 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 6
  %fixup22 = bitcast %union.anon* %u to %struct.anon.9*
  %real_region = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup22, i32 0, i32 1
  %18 = load %struct.eh_region*, %struct.eh_region** %real_region, align 8
  %tobool23 = icmp ne %struct.eh_region* %18, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then
  %19 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u25 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 6
  %fixup26 = bitcast %union.anon* %u25 to %struct.anon.9*
  %real_region27 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup26, i32 0, i32 1
  %20 = load %struct.eh_region*, %struct.eh_region** %real_region27, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 3
  %21 = load i32, i32* %region_number, align 4
  %conv28 = sext i32 %21 to i64
  %call29 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv28)
  %22 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  store %struct.rtx_def* %call29, %struct.rtx_def** %rtx32, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %23, %struct.rtx_def* %24)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %land.lhs.true.19, %land.lhs.true.10, %land.lhs.true.4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 2
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.function*, %struct.function** @cfun, align 8
  %eh37 = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 0
  %28 = load %struct.eh_status*, %struct.eh_status** %eh37, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %28, i32 0, i32 8
  %29 = load i32, i32* %last_region_number, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.83, %for.end
  %30 = load i32, i32* %i, align 4
  %cmp39 = icmp sgt i32 %30, 0
  br i1 %cmp39, label %for.body.41, label %for.end.84

for.body.41:                                      ; preds = %for.cond.38
  %31 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load %struct.function*, %struct.function** @cfun, align 8
  %eh43 = getelementptr inbounds %struct.function, %struct.function* %32, i32 0, i32 0
  %33 = load %struct.eh_status*, %struct.eh_status** %eh43, align 8
  %region_array44 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %33, i32 0, i32 1
  %34 = load %struct.eh_region**, %struct.eh_region*** %region_array44, align 8
  %arrayidx45 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %34, i64 %idxprom42
  %35 = load %struct.eh_region*, %struct.eh_region** %arrayidx45, align 8
  store %struct.eh_region* %35, %struct.eh_region** %fixup, align 8
  %36 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %tobool46 = icmp ne %struct.eh_region* %36, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %for.body.41
  br label %for.inc.83

if.end.48:                                        ; preds = %for.body.41
  %37 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %type49 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %37, i32 0, i32 5
  %38 = load i32, i32* %type49, align 4
  %cmp50 = icmp eq i32 %38, 1
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.48
  %39 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u53 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 6
  %cleanup = bitcast %union.anon* %u53 to %struct.anon.8*
  %exp = getelementptr inbounds %struct.anon.8, %struct.anon.8* %cleanup, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %exp, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.48
  %40 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %type55 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %40, i32 0, i32 5
  %41 = load i32, i32* %type55, align 4
  %cmp56 = icmp ne i32 %41, 7
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  br label %for.inc.83

if.end.59:                                        ; preds = %if.end.54
  %42 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %42, i32 0, i32 1
  %43 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %tobool60 = icmp ne %struct.eh_region* %43, null
  br i1 %tobool60, label %if.then.61, label %if.end.82

if.then.61:                                       ; preds = %if.end.59
  %44 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %u62 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 6
  %fixup63 = bitcast %union.anon* %u62 to %struct.anon.9*
  %real_region64 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %fixup63, i32 0, i32 1
  %45 = load %struct.eh_region*, %struct.eh_region** %real_region64, align 8
  store %struct.eh_region* %45, %struct.eh_region** %parent, align 8
  %46 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %inner65 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 1
  %47 = load %struct.eh_region*, %struct.eh_region** %inner65, align 8
  store %struct.eh_region* %47, %struct.eh_region** %p, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.70, %if.then.61
  %48 = load %struct.eh_region*, %struct.eh_region** %parent, align 8
  %49 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 0
  store %struct.eh_region* %48, %struct.eh_region** %outer, align 8
  %50 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %50, i32 0, i32 2
  %51 = load %struct.eh_region*, %struct.eh_region** %next_peer, align 8
  %tobool67 = icmp ne %struct.eh_region* %51, null
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %for.cond.66
  br label %for.end.72

if.end.69:                                        ; preds = %for.cond.66
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %52 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer71 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %52, i32 0, i32 2
  %53 = load %struct.eh_region*, %struct.eh_region** %next_peer71, align 8
  store %struct.eh_region* %53, %struct.eh_region** %p, align 8
  br label %for.cond.66

for.end.72:                                       ; preds = %if.then.68
  %54 = load %struct.eh_region*, %struct.eh_region** %parent, align 8
  %tobool73 = icmp ne %struct.eh_region* %54, null
  br i1 %tobool73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %for.end.72
  %55 = load %struct.eh_region*, %struct.eh_region** %parent, align 8
  %inner75 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %55, i32 0, i32 1
  store %struct.eh_region** %inner75, %struct.eh_region*** %pp, align 8
  br label %if.end.78

if.else.76:                                       ; preds = %for.end.72
  %56 = load %struct.function*, %struct.function** @cfun, align 8
  %eh77 = getelementptr inbounds %struct.function, %struct.function* %56, i32 0, i32 0
  %57 = load %struct.eh_status*, %struct.eh_status** %eh77, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %57, i32 0, i32 0
  store %struct.eh_region** %region_tree, %struct.eh_region*** %pp, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.74
  %58 = load %struct.eh_region**, %struct.eh_region*** %pp, align 8
  %59 = load %struct.eh_region*, %struct.eh_region** %58, align 8
  %60 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer79 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %60, i32 0, i32 2
  store %struct.eh_region* %59, %struct.eh_region** %next_peer79, align 8
  %61 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %inner80 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %61, i32 0, i32 1
  %62 = load %struct.eh_region*, %struct.eh_region** %inner80, align 8
  %63 = load %struct.eh_region**, %struct.eh_region*** %pp, align 8
  store %struct.eh_region* %62, %struct.eh_region** %63, align 8
  %64 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  %inner81 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %64, i32 0, i32 1
  store %struct.eh_region* null, %struct.eh_region** %inner81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.78, %if.end.59
  %65 = load %struct.eh_region*, %struct.eh_region** %fixup, align 8
  call void @remove_eh_handler(%struct.eh_region* %65)
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82, %if.then.58, %if.then.47
  %66 = load i32, i32* %i, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.38

for.end.84:                                       ; preds = %for.cond.38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_unreachable_regions(%struct.rtx_def* %insns) #0 {
entry:
  %insns.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %uid_region_num = alloca i32*, align 8
  %reachable = alloca i8*, align 8
  %r = alloca %struct.eh_region*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  %call = call i32 @get_max_uid()
  %conv = sext i32 %call to i64
  %call1 = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %0 = bitcast i8* %call1 to i32*
  store i32* %0, i32** %uid_region_num, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 8
  %3 = load i32, i32* %last_region_number, align 4
  %add = add nsw i32 %3, 1
  %conv2 = sext i32 %add to i64
  %call3 = call noalias i8* @xcalloc(i64 %conv2, i64 1)
  store i8* %call3, i8** %reachable, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %eh4 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 0
  %5 = load %struct.eh_status*, %struct.eh_status** %eh4, align 8
  %last_region_number5 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %5, i32 0, i32 8
  %6 = load i32, i32* %last_region_number5, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %eh7 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 0
  %10 = load %struct.eh_status*, %struct.eh_status** %eh7, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %10, i32 0, i32 1
  %11 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %11, i64 %idxprom
  %12 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %12, %struct.eh_region** %r, align 8
  %13 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool = icmp ne %struct.eh_region* %13, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %14, i32 0, i32 3
  %15 = load i32, i32* %region_number, align 4
  %16 = load i32, i32* %i, align 4
  %cmp8 = icmp ne i32 %15, %16
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %resume = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 10
  %18 = load %struct.rtx_def*, %struct.rtx_def** %resume, align 8
  %tobool10 = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.end
  %19 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %resume12 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 10
  %20 = load %struct.rtx_def*, %struct.rtx_def** %resume12, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %21 = load i32, i32* %rtint, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32*, i32** %uid_region_num, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.11
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.remove_unreachable_regions, i32 0, i32 0)) #6
  unreachable

if.end.18:                                        ; preds = %if.then.11
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %resume19 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 10
  %26 = load %struct.rtx_def*, %struct.rtx_def** %resume19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtint22 = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %27 = load i32, i32* %rtint22, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load i32*, i32** %uid_region_num, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %28, i64 %idxprom23
  store i32 %24, i32* %arrayidx24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.18, %if.end
  %29 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %29, i32 0, i32 7
  %30 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool26 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool26, label %if.then.27, label %if.end.43

if.then.27:                                       ; preds = %if.end.25
  %31 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %label28 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %31, i32 0, i32 7
  %32 = load %struct.rtx_def*, %struct.rtx_def** %label28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %33 = load i32, i32* %rtint31, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load i32*, i32** %uid_region_num, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %34, i64 %idxprom32
  %35 = load i32, i32* %arrayidx33, align 4
  %tobool34 = icmp ne i32 %35, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.27
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1286, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.remove_unreachable_regions, i32 0, i32 0)) #6
  unreachable

if.end.36:                                        ; preds = %if.then.27
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %label37 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %37, i32 0, i32 7
  %38 = load %struct.rtx_def*, %struct.rtx_def** %label37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtint40 = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %39 = load i32, i32* %rtint40, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load i32*, i32** %uid_region_num, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %40, i64 %idxprom41
  store i32 %36, i32* %arrayidx42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.36, %if.end.25
  %41 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %41, i32 0, i32 5
  %42 = load i32, i32* %type, align 4
  %cmp44 = icmp eq i32 %42, 2
  br i1 %cmp44, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.end.43
  %43 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %43, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %continue_label = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 3
  %44 = load %struct.rtx_def*, %struct.rtx_def** %continue_label, align 8
  %tobool46 = icmp ne %struct.rtx_def* %44, null
  br i1 %tobool46, label %if.then.47, label %if.end.67

if.then.47:                                       ; preds = %land.lhs.true
  %45 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u48 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %45, i32 0, i32 6
  %try49 = bitcast %union.anon* %u48 to %struct.anon*
  %continue_label50 = getelementptr inbounds %struct.anon, %struct.anon* %try49, i32 0, i32 3
  %46 = load %struct.rtx_def*, %struct.rtx_def** %continue_label50, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtint53 = bitcast %union.rtunion_def* %arrayidx52 to i32*
  %47 = load i32, i32* %rtint53, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load i32*, i32** %uid_region_num, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %48, i64 %idxprom54
  %49 = load i32, i32* %arrayidx55, align 4
  %tobool56 = icmp ne i32 %49, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.47
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1292, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.remove_unreachable_regions, i32 0, i32 0)) #6
  unreachable

if.end.58:                                        ; preds = %if.then.47
  %50 = load i32, i32* %i, align 4
  %51 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u59 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 6
  %try60 = bitcast %union.anon* %u59 to %struct.anon*
  %continue_label61 = getelementptr inbounds %struct.anon, %struct.anon* %try60, i32 0, i32 3
  %52 = load %struct.rtx_def*, %struct.rtx_def** %continue_label61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %53 = load i32, i32* %rtint64, align 4
  %idxprom65 = sext i32 %53 to i64
  %54 = load i32*, i32** %uid_region_num, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %54, i64 %idxprom65
  store i32 %50, i32* %arrayidx66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.58, %land.lhs.true, %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.67, %if.then
  %55 = load i32, i32* %i, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %insn, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.78, %for.end
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool69 = icmp ne %struct.rtx_def* %57, null
  br i1 %tobool69, label %for.body.70, label %for.end.81

for.body.70:                                      ; preds = %for.cond.68
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtint73 = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %59 = load i32, i32* %rtint73, align 4
  %idxprom74 = sext i32 %59 to i64
  %60 = load i32*, i32** %uid_region_num, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %60, i64 %idxprom74
  %61 = load i32, i32* %arrayidx75, align 4
  %idxprom76 = sext i32 %61 to i64
  %62 = load i8*, i8** %reachable, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %62, i64 %idxprom76
  store i8 1, i8* %arrayidx77, align 1
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.70
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %insn, align 8
  br label %for.cond.68

for.end.81:                                       ; preds = %for.cond.68
  %65 = load %struct.function*, %struct.function** @cfun, align 8
  %eh82 = getelementptr inbounds %struct.function, %struct.function* %65, i32 0, i32 0
  %66 = load %struct.eh_status*, %struct.eh_status** %eh82, align 8
  %last_region_number83 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %66, i32 0, i32 8
  %67 = load i32, i32* %last_region_number83, align 4
  store i32 %67, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.117, %for.end.81
  %68 = load i32, i32* %i, align 4
  %cmp85 = icmp sgt i32 %68, 0
  br i1 %cmp85, label %for.body.87, label %for.end.119

for.body.87:                                      ; preds = %for.cond.84
  %69 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load %struct.function*, %struct.function** @cfun, align 8
  %eh89 = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 0
  %71 = load %struct.eh_status*, %struct.eh_status** %eh89, align 8
  %region_array90 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %71, i32 0, i32 1
  %72 = load %struct.eh_region**, %struct.eh_region*** %region_array90, align 8
  %arrayidx91 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %72, i64 %idxprom88
  %73 = load %struct.eh_region*, %struct.eh_region** %arrayidx91, align 8
  store %struct.eh_region* %73, %struct.eh_region** %r, align 8
  %74 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool92 = icmp ne %struct.eh_region* %74, null
  br i1 %tobool92, label %land.lhs.true.93, label %if.end.116

land.lhs.true.93:                                 ; preds = %for.body.87
  %75 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number94 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %75, i32 0, i32 3
  %76 = load i32, i32* %region_number94, align 4
  %77 = load i32, i32* %i, align 4
  %cmp95 = icmp eq i32 %76, %77
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.116

land.lhs.true.97:                                 ; preds = %land.lhs.true.93
  %78 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %78 to i64
  %79 = load i8*, i8** %reachable, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %79, i64 %idxprom98
  %80 = load i8, i8* %arrayidx99, align 1
  %tobool100 = trunc i8 %80 to i1
  br i1 %tobool100, label %if.end.116, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.97
  %81 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %type102 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %81, i32 0, i32 5
  %82 = load i32, i32* %type102, align 4
  %cmp103 = icmp eq i32 %82, 6
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.115

land.lhs.true.105:                                ; preds = %if.then.101
  %83 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %83, i32 0, i32 0
  %84 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %tobool106 = icmp ne %struct.eh_region* %84, null
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.115

land.lhs.true.107:                                ; preds = %land.lhs.true.105
  %85 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %outer108 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %85, i32 0, i32 0
  %86 = load %struct.eh_region*, %struct.eh_region** %outer108, align 8
  %region_number109 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %86, i32 0, i32 3
  %87 = load i32, i32* %region_number109, align 4
  %idxprom110 = sext i32 %87 to i64
  %88 = load i8*, i8** %reachable, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %88, i64 %idxprom110
  %89 = load i8, i8* %arrayidx111, align 1
  %tobool112 = trunc i8 %89 to i1
  br i1 %tobool112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %land.lhs.true.107
  br label %for.inc.117

if.end.115:                                       ; preds = %land.lhs.true.107, %land.lhs.true.105, %if.then.101
  %90 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  call void @remove_eh_handler(%struct.eh_region* %90)
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %land.lhs.true.97, %land.lhs.true.93, %for.body.87
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116, %if.then.114
  %91 = load i32, i32* %i, align 4
  %dec118 = add nsw i32 %91, -1
  store i32 %dec118, i32* %i, align 4
  br label %for.cond.84

for.end.119:                                      ; preds = %for.cond.84
  %92 = load i8*, i8** %reachable, align 8
  call void @free(i8* %92) #4
  %93 = load i32*, i32** %uid_region_num, align 8
  %94 = bitcast i32* %93 to i8*
  call void @free(i8* %94) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_exception_handler_labels() #0 {
entry:
  %i = alloca i32, align 4
  %region = alloca %struct.eh_region*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %0 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %tobool = icmp ne %struct.htab* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  call void @htab_empty(%struct.htab* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 0
  %3 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %3, i32 0, i32 8
  %4 = load i32, i32* %last_region_number, align 4
  %mul = mul nsw i32 %4, 3
  %div = sdiv i32 %mul, 2
  %conv = sext i32 %div to i64
  %call = call %struct.htab* @htab_create(i64 %conv, i32 (i8*)* @ehl_hash, i32 (i8*, i8*)* @ehl_eq, void (i8*)* @ehl_free)
  store %struct.htab* %call, %struct.htab** @exception_handler_label_map, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 0
  %7 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %cmp = icmp eq %struct.eh_region* %7, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %for.end

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh5 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh5, align 8
  %last_region_number6 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 8
  %10 = load i32, i32* %last_region_number6, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %11 = load i32, i32* %i, align 4
  %cmp7 = icmp sgt i32 %11, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %eh9 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 0
  %14 = load %struct.eh_status*, %struct.eh_status** %eh9, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %14, i32 0, i32 1
  %15 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %15, i64 %idxprom
  %16 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %16, %struct.eh_region** %region, align 8
  %17 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool10 = icmp ne %struct.eh_region* %17, null
  br i1 %tobool10, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %for.body
  %18 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %18, i32 0, i32 3
  %19 = load i32, i32* %region_number, align 4
  %20 = load i32, i32* %i, align 4
  %cmp11 = icmp ne i32 %19, %20
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.14:                                        ; preds = %lor.lhs.false
  %21 = load %struct.function*, %struct.function** @cfun, align 8
  %eh15 = getelementptr inbounds %struct.function, %struct.function* %21, i32 0, i32 0
  %22 = load %struct.eh_status*, %struct.eh_status** %eh15, align 8
  %built_landing_pads = getelementptr inbounds %struct.eh_status, %struct.eh_status* %22, i32 0, i32 7
  %23 = load i32, i32* %built_landing_pads, align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.14
  %24 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %24, i32 0, i32 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %lab, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.14
  %26 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 7
  %27 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %lab, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %28 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %tobool20 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %29 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %30 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  call void @add_ehl_entry(%struct.rtx_def* %29, %struct.eh_region* %30)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.22, %if.then.13
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  ret void
}

declare void @htab_empty(%struct.htab*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ehl_hash(i8* %pentry) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ehl_map_entry*, align 8
  %scaled_golden_ratio = alloca i32, align 4
  store i8* %pentry, i8** %pentry.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ehl_map_entry*
  store %struct.ehl_map_entry* %1, %struct.ehl_map_entry** %entry1, align 8
  store i32 -1640531527, i32* %scaled_golden_ratio, align 4
  %2 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %label = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtint, align 4
  %mul = mul i32 %4, -1640531527
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define internal i32 @ehl_eq(i8* %pentry, i8* %pdata) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %pdata.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ehl_map_entry*, align 8
  %data = alloca %struct.ehl_map_entry*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  store i8* %pdata, i8** %pdata.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ehl_map_entry*
  store %struct.ehl_map_entry* %1, %struct.ehl_map_entry** %entry1, align 8
  %2 = load i8*, i8** %pdata.addr, align 8
  %3 = bitcast i8* %2 to %struct.ehl_map_entry*
  store %struct.ehl_map_entry* %3, %struct.ehl_map_entry** %data, align 8
  %4 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %label = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %6 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %data, align 8
  %label2 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %cmp = icmp eq %struct.rtx_def* %5, %7
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @ehl_free(i8* %pentry) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ehl_map_entry*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ehl_map_entry*
  store %struct.ehl_map_entry* %1, %struct.ehl_map_entry** %entry1, align 8
  %2 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %label = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, -268435457
  store i32 %bf.clear, i32* %4, align 8
  %5 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %6 = bitcast %struct.ehl_map_entry* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_ehl_entry(%struct.rtx_def* %label, %struct.eh_region* %region) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  %region.addr = alloca %struct.eh_region*, align 8
  %slot = alloca %struct.ehl_map_entry**, align 8
  %entry1 = alloca %struct.ehl_map_entry*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  store %struct.eh_region* %region, %struct.eh_region** %region.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, -268435457
  %bf.set = or i32 %bf.clear, 268435456
  store i32 %bf.set, i32* %1, align 8
  %call = call noalias i8* @xmalloc(i64 16)
  %2 = bitcast i8* %call to %struct.ehl_map_entry*
  store %struct.ehl_map_entry* %2, %struct.ehl_map_entry** %entry1, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %4 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %label2 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %4, i32 0, i32 0
  store %struct.rtx_def* %3, %struct.rtx_def** %label2, align 8
  %5 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %6 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %region3 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %6, i32 0, i32 1
  store %struct.eh_region* %5, %struct.eh_region** %region3, align 8
  %7 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %8 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %9 = bitcast %struct.ehl_map_entry* %8 to i8*
  %call4 = call i8** @htab_find_slot(%struct.htab* %7, i8* %9, i32 1)
  %10 = bitcast i8** %call4 to %struct.ehl_map_entry**
  store %struct.ehl_map_entry** %10, %struct.ehl_map_entry*** %slot, align 8
  %11 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  %12 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %11, align 8
  %tobool = icmp ne %struct.ehl_map_entry* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 0
  %14 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %built_landing_pads = getelementptr inbounds %struct.eh_status, %struct.eh_status* %14, i32 0, i32 7
  %15 = load i32, i32* %built_landing_pads, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1446, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.add_ehl_entry, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %17 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  store %struct.ehl_map_entry* %16, %struct.ehl_map_entry** %17, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @current_function_has_exception_handlers() #0 {
entry:
  %retval = alloca i1, align 1
  %i = alloca i32, align 4
  %region = alloca %struct.eh_region*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 1
  %7 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %7, i64 %idxprom
  %8 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %8, %struct.eh_region** %region, align 8
  %9 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool = icmp ne %struct.eh_region* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 3
  %11 = load i32, i32* %region_number, align 4
  %12 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %13, i32 0, i32 5
  %14 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %14, 6
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i1 true, i1* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.5, %if.then
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4
  %16 = load i1, i1* %retval
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define i32 @duplicate_eh_regions(%struct.function* %ifun, %struct.inline_remap* %map) #0 {
entry:
  %retval = alloca i32, align 4
  %ifun.addr = alloca %struct.function*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %ifun_last_region_number = alloca i32, align 4
  %n_array = alloca %struct.eh_region**, align 8
  %root = alloca %struct.eh_region*, align 8
  %cur = alloca %struct.eh_region*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.eh_region*, align 8
  %p63 = alloca %struct.eh_region*, align 8
  store %struct.function* %ifun, %struct.function** %ifun.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  %0 = load %struct.function*, %struct.function** %ifun.addr, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  store i32 %2, i32* %ifun_last_region_number, align 4
  %3 = load i32, i32* %ifun_last_region_number, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %ifun_last_region_number, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %5 = bitcast i8* %call to %struct.eh_region**
  store %struct.eh_region** %5, %struct.eh_region*** %n_array, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ifun_last_region_number, align 4
  %cmp1 = icmp sle i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.function*, %struct.function** %ifun.addr, align 8
  %eh3 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 0
  %10 = load %struct.eh_status*, %struct.eh_status** %eh3, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %10, i32 0, i32 1
  %11 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %11, i64 %idxprom
  %12 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %12, %struct.eh_region** %cur, align 8
  %13 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %tobool = icmp ne %struct.eh_region* %13, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %14, i32 0, i32 3
  %15 = load i32, i32* %region_number, align 4
  %16 = load i32, i32* %i, align 4
  %cmp4 = icmp ne i32 %15, %16
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.7:                                         ; preds = %lor.lhs.false
  %17 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %18 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call8 = call %struct.eh_region* @duplicate_eh_region_1(%struct.eh_region* %17, %struct.inline_remap* %18)
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  %arrayidx10 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %20, i64 %idxprom9
  store %struct.eh_region* %call8, %struct.eh_region** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.7, %if.then.6
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.26, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %ifun_last_region_number, align 4
  %cmp12 = icmp sle i32 %22, %23
  br i1 %cmp12, label %for.body.14, label %for.end.28

for.body.14:                                      ; preds = %for.cond.11
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct.function*, %struct.function** %ifun.addr, align 8
  %eh16 = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 0
  %26 = load %struct.eh_status*, %struct.eh_status** %eh16, align 8
  %region_array17 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %26, i32 0, i32 1
  %27 = load %struct.eh_region**, %struct.eh_region*** %region_array17, align 8
  %arrayidx18 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %27, i64 %idxprom15
  %28 = load %struct.eh_region*, %struct.eh_region** %arrayidx18, align 8
  store %struct.eh_region* %28, %struct.eh_region** %cur, align 8
  %29 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %tobool19 = icmp ne %struct.eh_region* %29, null
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.24

lor.lhs.false.20:                                 ; preds = %for.body.14
  %30 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %region_number21 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 3
  %31 = load i32, i32* %region_number21, align 4
  %32 = load i32, i32* %i, align 4
  %cmp22 = icmp ne i32 %31, %32
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.20, %for.body.14
  br label %for.inc.26

if.end.25:                                        ; preds = %lor.lhs.false.20
  %33 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %34 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  call void @duplicate_eh_region_2(%struct.eh_region* %33, %struct.eh_region** %34)
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25, %if.then.24
  %35 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %35, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.11

for.end.28:                                       ; preds = %for.cond.11
  %36 = load %struct.function*, %struct.function** %ifun.addr, align 8
  %eh29 = getelementptr inbounds %struct.function, %struct.function* %36, i32 0, i32 0
  %37 = load %struct.eh_status*, %struct.eh_status** %eh29, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %37, i32 0, i32 0
  %38 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %region_number30 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %38, i32 0, i32 3
  %39 = load i32, i32* %region_number30, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  %arrayidx32 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %40, i64 %idxprom31
  %41 = load %struct.eh_region*, %struct.eh_region** %arrayidx32, align 8
  store %struct.eh_region* %41, %struct.eh_region** %root, align 8
  %42 = load %struct.function*, %struct.function** @cfun, align 8
  %eh33 = getelementptr inbounds %struct.function, %struct.function* %42, i32 0, i32 0
  %43 = load %struct.eh_status*, %struct.eh_status** %eh33, align 8
  %cur_region = getelementptr inbounds %struct.eh_status, %struct.eh_status* %43, i32 0, i32 2
  %44 = load %struct.eh_region*, %struct.eh_region** %cur_region, align 8
  store %struct.eh_region* %44, %struct.eh_region** %cur, align 8
  %45 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %tobool34 = icmp ne %struct.eh_region* %45, null
  br i1 %tobool34, label %if.then.35, label %if.else.62

if.then.35:                                       ; preds = %for.end.28
  %46 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 1
  %47 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  store %struct.eh_region* %47, %struct.eh_region** %p, align 8
  %48 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %tobool36 = icmp ne %struct.eh_region* %48, null
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.35
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.37
  %49 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 2
  %50 = load %struct.eh_region*, %struct.eh_region** %next_peer, align 8
  %tobool38 = icmp ne %struct.eh_region* %50, null
  br i1 %tobool38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer39 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 2
  %52 = load %struct.eh_region*, %struct.eh_region** %next_peer39, align 8
  store %struct.eh_region* %52, %struct.eh_region** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load %struct.eh_region*, %struct.eh_region** %root, align 8
  %54 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer40 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %54, i32 0, i32 2
  store %struct.eh_region* %53, %struct.eh_region** %next_peer40, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.then.35
  %55 = load %struct.eh_region*, %struct.eh_region** %root, align 8
  %56 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %inner41 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %56, i32 0, i32 1
  store %struct.eh_region* %55, %struct.eh_region** %inner41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %while.end
  store i32 1, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.59, %if.end.42
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %ifun_last_region_number, align 4
  %cmp44 = icmp sle i32 %57, %58
  br i1 %cmp44, label %for.body.46, label %for.end.61

for.body.46:                                      ; preds = %for.cond.43
  %59 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %59 to i64
  %60 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  %arrayidx48 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %60, i64 %idxprom47
  %61 = load %struct.eh_region*, %struct.eh_region** %arrayidx48, align 8
  %tobool49 = icmp ne %struct.eh_region* %61, null
  br i1 %tobool49, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %for.body.46
  %62 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %62 to i64
  %63 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  %arrayidx51 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %63, i64 %idxprom50
  %64 = load %struct.eh_region*, %struct.eh_region** %arrayidx51, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %64, i32 0, i32 0
  %65 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %cmp52 = icmp eq %struct.eh_region* %65, null
  br i1 %cmp52, label %if.then.54, label %if.end.58

if.then.54:                                       ; preds = %land.lhs.true
  %66 = load %struct.eh_region*, %struct.eh_region** %cur, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %67 to i64
  %68 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  %arrayidx56 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %68, i64 %idxprom55
  %69 = load %struct.eh_region*, %struct.eh_region** %arrayidx56, align 8
  %outer57 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %69, i32 0, i32 0
  store %struct.eh_region* %66, %struct.eh_region** %outer57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.54, %land.lhs.true, %for.body.46
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %70 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %70, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.43

for.end.61:                                       ; preds = %for.cond.43
  br label %if.end.79

if.else.62:                                       ; preds = %for.end.28
  %71 = load %struct.function*, %struct.function** @cfun, align 8
  %eh64 = getelementptr inbounds %struct.function, %struct.function* %71, i32 0, i32 0
  %72 = load %struct.eh_status*, %struct.eh_status** %eh64, align 8
  %region_tree65 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %72, i32 0, i32 0
  %73 = load %struct.eh_region*, %struct.eh_region** %region_tree65, align 8
  store %struct.eh_region* %73, %struct.eh_region** %p63, align 8
  %74 = load %struct.eh_region*, %struct.eh_region** %p63, align 8
  %tobool66 = icmp ne %struct.eh_region* %74, null
  br i1 %tobool66, label %if.then.67, label %if.else.75

if.then.67:                                       ; preds = %if.else.62
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.71, %if.then.67
  %75 = load %struct.eh_region*, %struct.eh_region** %p63, align 8
  %next_peer69 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %75, i32 0, i32 2
  %76 = load %struct.eh_region*, %struct.eh_region** %next_peer69, align 8
  %tobool70 = icmp ne %struct.eh_region* %76, null
  br i1 %tobool70, label %while.body.71, label %while.end.73

while.body.71:                                    ; preds = %while.cond.68
  %77 = load %struct.eh_region*, %struct.eh_region** %p63, align 8
  %next_peer72 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %77, i32 0, i32 2
  %78 = load %struct.eh_region*, %struct.eh_region** %next_peer72, align 8
  store %struct.eh_region* %78, %struct.eh_region** %p63, align 8
  br label %while.cond.68

while.end.73:                                     ; preds = %while.cond.68
  %79 = load %struct.eh_region*, %struct.eh_region** %root, align 8
  %80 = load %struct.eh_region*, %struct.eh_region** %p63, align 8
  %next_peer74 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %80, i32 0, i32 2
  store %struct.eh_region* %79, %struct.eh_region** %next_peer74, align 8
  br label %if.end.78

if.else.75:                                       ; preds = %if.else.62
  %81 = load %struct.eh_region*, %struct.eh_region** %root, align 8
  %82 = load %struct.function*, %struct.function** @cfun, align 8
  %eh76 = getelementptr inbounds %struct.function, %struct.function* %82, i32 0, i32 0
  %83 = load %struct.eh_status*, %struct.eh_status** %eh76, align 8
  %region_tree77 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %83, i32 0, i32 0
  store %struct.eh_region* %81, %struct.eh_region** %region_tree77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %while.end.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %for.end.61
  %84 = load %struct.eh_region**, %struct.eh_region*** %n_array, align 8
  %85 = bitcast %struct.eh_region** %84 to i8*
  call void @free(i8* %85) #4
  %86 = load %struct.function*, %struct.function** @cfun, align 8
  %eh80 = getelementptr inbounds %struct.function, %struct.function* %86, i32 0, i32 0
  %87 = load %struct.eh_status*, %struct.eh_status** %eh80, align 8
  %last_region_number81 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %87, i32 0, i32 8
  %88 = load i32, i32* %last_region_number81, align 4
  store i32 %88, i32* %i, align 4
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %ifun_last_region_number, align 4
  %add82 = add nsw i32 %89, %90
  %91 = load %struct.function*, %struct.function** @cfun, align 8
  %eh83 = getelementptr inbounds %struct.function, %struct.function* %91, i32 0, i32 0
  %92 = load %struct.eh_status*, %struct.eh_status** %eh83, align 8
  %last_region_number84 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %92, i32 0, i32 8
  store i32 %add82, i32* %last_region_number84, align 4
  %93 = load i32, i32* %i, align 4
  store i32 %93, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal %struct.eh_region* @duplicate_eh_region_1(%struct.eh_region* %o, %struct.inline_remap* %map) #0 {
entry:
  %o.addr = alloca %struct.eh_region*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %n = alloca %struct.eh_region*, align 8
  store %struct.eh_region* %o, %struct.eh_region** %o.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  %call = call noalias i8* @xcalloc(i64 1, i64 112)
  %0 = bitcast i8* %call to %struct.eh_region*
  store %struct.eh_region* %0, %struct.eh_region** %n, align 8
  %1 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %1, i32 0, i32 3
  %2 = load i32, i32* %region_number, align 4
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 0
  %4 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %4, i32 0, i32 8
  %5 = load i32, i32* %last_region_number, align 4
  %add = add nsw i32 %2, %5
  %6 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %region_number1 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %6, i32 0, i32 3
  store i32 %add, i32* %region_number1, align 4
  %7 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %7, i32 0, i32 5
  %8 = load i32, i32* %type, align 4
  %9 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %type2 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %9, i32 0, i32 5
  store i32 %8, i32* %type2, align 4
  %10 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %type3 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 5
  %11 = load i32, i32* %type3, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.17
    i32 6, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %12 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %12, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %continue_label = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 3
  %13 = load %struct.rtx_def*, %struct.rtx_def** %continue_label, align 8
  %tobool = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  %14 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %15 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u5 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 6
  %try6 = bitcast %union.anon* %u5 to %struct.anon*
  %continue_label7 = getelementptr inbounds %struct.anon, %struct.anon* %try6, i32 0, i32 3
  %16 = load %struct.rtx_def*, %struct.rtx_def** %continue_label7, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %17 = load i32, i32* %rtint, align 4
  %call8 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %14, i32 %17)
  %18 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u9 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %18, i32 0, i32 6
  %try10 = bitcast %union.anon* %u9 to %struct.anon*
  %continue_label11 = getelementptr inbounds %struct.anon, %struct.anon* %try10, i32 0, i32 3
  store %struct.rtx_def* %call8, %struct.rtx_def** %continue_label11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %19 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u13 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 6
  %catch = bitcast %union.anon* %u13 to %struct.anon.5*
  %type_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch, i32 0, i32 2
  %20 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  %21 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u14 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %21, i32 0, i32 6
  %catch15 = bitcast %union.anon* %u14 to %struct.anon.5*
  %type_list16 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch15, i32 0, i32 2
  store %union.tree_node* %20, %union.tree_node** %type_list16, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %22 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u18 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %22, i32 0, i32 6
  %allowed = bitcast %union.anon* %u18 to %struct.anon.6*
  %type_list19 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %type_list19, align 8
  %24 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u20 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %24, i32 0, i32 6
  %allowed21 = bitcast %union.anon* %u20 to %struct.anon.6*
  %type_list22 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed21, i32 0, i32 0
  store %union.tree_node* %23, %union.tree_node** %type_list22, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %25 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u24 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 6
  %throw = bitcast %union.anon* %u24 to %struct.anon.7*
  %type25 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw, i32 0, i32 0
  %26 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %27 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u26 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %27, i32 0, i32 6
  %throw27 = bitcast %union.anon* %u26 to %struct.anon.7*
  %type28 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw27, i32 0, i32 0
  store %union.tree_node* %26, %union.tree_node** %type28, align 8
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.23
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1555, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.duplicate_eh_region_1, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.17, %sw.bb.12, %if.end, %sw.bb
  %28 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 7
  %29 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool29 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %sw.epilog
  %30 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %31 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %label31 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %31, i32 0, i32 7
  %32 = load %struct.rtx_def*, %struct.rtx_def** %label31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 5
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %33 = load i32, i32* %rtint34, align 4
  %call35 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %30, i32 %33)
  %34 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %label36 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 7
  store %struct.rtx_def* %call35, %struct.rtx_def** %label36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %sw.epilog
  %35 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %resume = getelementptr inbounds %struct.eh_region, %struct.eh_region* %35, i32 0, i32 10
  %36 = load %struct.rtx_def*, %struct.rtx_def** %resume, align 8
  %tobool38 = icmp ne %struct.rtx_def* %36, null
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %if.end.37
  %37 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %resume40 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %37, i32 0, i32 10
  %38 = load %struct.rtx_def*, %struct.rtx_def** %resume40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtint43 = bitcast %union.rtunion_def* %arrayidx42 to i32*
  %39 = load i32, i32* %rtint43, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %40, i32 0, i32 6
  %41 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map, align 8
  %arrayidx44 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %41, i64 %idxprom
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx44, align 8
  %43 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %resume45 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %43, i32 0, i32 10
  store %struct.rtx_def* %42, %struct.rtx_def** %resume45, align 8
  %44 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %resume46 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 10
  %45 = load %struct.rtx_def*, %struct.rtx_def** %resume46, align 8
  %cmp = icmp eq %struct.rtx_def* %45, null
  br i1 %cmp, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.39
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1564, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.duplicate_eh_region_1, i32 0, i32 0)) #6
  unreachable

if.end.48:                                        ; preds = %if.then.39
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.37
  %46 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  ret %struct.eh_region* %46
}

; Function Attrs: nounwind uwtable
define internal void @duplicate_eh_region_2(%struct.eh_region* %o, %struct.eh_region** %n_array) #0 {
entry:
  %o.addr = alloca %struct.eh_region*, align 8
  %n_array.addr = alloca %struct.eh_region**, align 8
  %n = alloca %struct.eh_region*, align 8
  store %struct.eh_region* %o, %struct.eh_region** %o.addr, align 8
  store %struct.eh_region** %n_array, %struct.eh_region*** %n_array.addr, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 3
  %1 = load i32, i32* %region_number, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %2, i64 %idxprom
  %3 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %3, %struct.eh_region** %n, align 8
  %4 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %4, i32 0, i32 5
  %5 = load i32, i32* %type, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %6, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %catch = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 0
  %7 = load %struct.eh_region*, %struct.eh_region** %catch, align 8
  %region_number1 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %7, i32 0, i32 3
  %8 = load i32, i32* %region_number1, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %9, i64 %idxprom2
  %10 = load %struct.eh_region*, %struct.eh_region** %arrayidx3, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u4 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %11, i32 0, i32 6
  %try5 = bitcast %union.anon* %u4 to %struct.anon*
  %catch6 = getelementptr inbounds %struct.anon, %struct.anon* %try5, i32 0, i32 0
  store %struct.eh_region* %10, %struct.eh_region** %catch6, align 8
  %12 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u7 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %12, i32 0, i32 6
  %try8 = bitcast %union.anon* %u7 to %struct.anon*
  %last_catch = getelementptr inbounds %struct.anon, %struct.anon* %try8, i32 0, i32 1
  %13 = load %struct.eh_region*, %struct.eh_region** %last_catch, align 8
  %region_number9 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %13, i32 0, i32 3
  %14 = load i32, i32* %region_number9, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %15, i64 %idxprom10
  %16 = load %struct.eh_region*, %struct.eh_region** %arrayidx11, align 8
  %17 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u12 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 6
  %try13 = bitcast %union.anon* %u12 to %struct.anon*
  %last_catch14 = getelementptr inbounds %struct.anon, %struct.anon* %try13, i32 0, i32 1
  store %struct.eh_region* %16, %struct.eh_region** %last_catch14, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u16 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %18, i32 0, i32 6
  %catch17 = bitcast %union.anon* %u16 to %struct.anon.5*
  %next_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch17, i32 0, i32 0
  %19 = load %struct.eh_region*, %struct.eh_region** %next_catch, align 8
  %tobool = icmp ne %struct.eh_region* %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.15
  %20 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u18 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 6
  %catch19 = bitcast %union.anon* %u18 to %struct.anon.5*
  %next_catch20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch19, i32 0, i32 0
  %21 = load %struct.eh_region*, %struct.eh_region** %next_catch20, align 8
  %region_number21 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %21, i32 0, i32 3
  %22 = load i32, i32* %region_number21, align 4
  %idxprom22 = sext i32 %22 to i64
  %23 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %23, i64 %idxprom22
  %24 = load %struct.eh_region*, %struct.eh_region** %arrayidx23, align 8
  %25 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u24 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 6
  %catch25 = bitcast %union.anon* %u24 to %struct.anon.5*
  %next_catch26 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch25, i32 0, i32 0
  store %struct.eh_region* %24, %struct.eh_region** %next_catch26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.15
  %26 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u27 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 6
  %catch28 = bitcast %union.anon* %u27 to %struct.anon.5*
  %prev_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch28, i32 0, i32 1
  %27 = load %struct.eh_region*, %struct.eh_region** %prev_catch, align 8
  %tobool29 = icmp ne %struct.eh_region* %27, null
  br i1 %tobool29, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %if.end
  %28 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %u31 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 6
  %catch32 = bitcast %union.anon* %u31 to %struct.anon.5*
  %prev_catch33 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch32, i32 0, i32 1
  %29 = load %struct.eh_region*, %struct.eh_region** %prev_catch33, align 8
  %region_number34 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %29, i32 0, i32 3
  %30 = load i32, i32* %region_number34, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %31, i64 %idxprom35
  %32 = load %struct.eh_region*, %struct.eh_region** %arrayidx36, align 8
  %33 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %u37 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %33, i32 0, i32 6
  %catch38 = bitcast %union.anon* %u37 to %struct.anon.5*
  %prev_catch39 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch38, i32 0, i32 1
  store %struct.eh_region* %32, %struct.eh_region** %prev_catch39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.30, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.40, %sw.bb
  %34 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 0
  %35 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %tobool41 = icmp ne %struct.eh_region* %35, null
  br i1 %tobool41, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %sw.epilog
  %36 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %outer43 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %36, i32 0, i32 0
  %37 = load %struct.eh_region*, %struct.eh_region** %outer43, align 8
  %region_number44 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %37, i32 0, i32 3
  %38 = load i32, i32* %region_number44, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %39, i64 %idxprom45
  %40 = load %struct.eh_region*, %struct.eh_region** %arrayidx46, align 8
  %41 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %outer47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %41, i32 0, i32 0
  store %struct.eh_region* %40, %struct.eh_region** %outer47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %sw.epilog
  %42 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %inner = getelementptr inbounds %struct.eh_region, %struct.eh_region* %42, i32 0, i32 1
  %43 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %tobool49 = icmp ne %struct.eh_region* %43, null
  br i1 %tobool49, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.48
  %44 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %inner51 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 1
  %45 = load %struct.eh_region*, %struct.eh_region** %inner51, align 8
  %region_number52 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %45, i32 0, i32 3
  %46 = load i32, i32* %region_number52, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %47, i64 %idxprom53
  %48 = load %struct.eh_region*, %struct.eh_region** %arrayidx54, align 8
  %49 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %inner55 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 1
  store %struct.eh_region* %48, %struct.eh_region** %inner55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.end.48
  %50 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %50, i32 0, i32 2
  %51 = load %struct.eh_region*, %struct.eh_region** %next_peer, align 8
  %tobool57 = icmp ne %struct.eh_region* %51, null
  br i1 %tobool57, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.end.56
  %52 = load %struct.eh_region*, %struct.eh_region** %o.addr, align 8
  %next_peer59 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %52, i32 0, i32 2
  %53 = load %struct.eh_region*, %struct.eh_region** %next_peer59, align 8
  %region_number60 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %53, i32 0, i32 3
  %54 = load i32, i32* %region_number60, align 4
  %idxprom61 = sext i32 %54 to i64
  %55 = load %struct.eh_region**, %struct.eh_region*** %n_array.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %55, i64 %idxprom61
  %56 = load %struct.eh_region*, %struct.eh_region** %arrayidx62, align 8
  %57 = load %struct.eh_region*, %struct.eh_region** %n, align 8
  %next_peer63 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %57, i32 0, i32 2
  store %struct.eh_region* %56, %struct.eh_region** %next_peer63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define void @sjlj_emit_function_exit_after(%struct.rtx_def* %after) #0 {
entry:
  %after.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %sjlj_exit_after = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 19
  store %struct.rtx_def* %0, %struct.rtx_def** %sjlj_exit_after, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @finish_eh_generation() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 0
  %2 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %cmp = icmp eq %struct.eh_region* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.rtx_def* @get_insns()
  call void @rebuild_jump_labels(%struct.rtx_def* %call)
  %call1 = call %struct.rtx_def* @get_insns()
  %call2 = call i32 @max_reg_num()
  call void @find_basic_blocks(%struct.rtx_def* %call1, i32 %call2, %struct._IO_FILE* null)
  %call3 = call zeroext i1 @cleanup_cfg(i32 16)
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %call4 = call %struct.rtx_def* @get_exception_pointer(%struct.function* %3)
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %call5 = call %struct.rtx_def* @get_exception_filter(%struct.function* %4)
  call void @assign_filter_values()
  call void @build_post_landing_pads()
  call void @connect_post_landing_pads()
  call void @dw2_build_landing_pads()
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh6 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh6, align 8
  %built_landing_pads = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 7
  store i32 1, i32* %built_landing_pads, align 4
  call void @find_exception_handler_labels()
  %call7 = call %struct.rtx_def* @get_insns()
  call void @rebuild_jump_labels(%struct.rtx_def* %call7)
  %call8 = call %struct.rtx_def* @get_insns()
  %call9 = call i32 @max_reg_num()
  call void @find_basic_blocks(%struct.rtx_def* %call8, i32 %call9, %struct._IO_FILE* null)
  %call10 = call zeroext i1 @cleanup_cfg(i32 16)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @rebuild_jump_labels(%struct.rtx_def*) #1

declare void @find_basic_blocks(%struct.rtx_def*, i32, %struct._IO_FILE*) #1

declare i32 @max_reg_num() #1

declare zeroext i1 @cleanup_cfg(i32) #1

; Function Attrs: nounwind uwtable
define internal void @assign_filter_values() #0 {
entry:
  %i = alloca i32, align 4
  %ttypes = alloca %struct.htab*, align 8
  %ehspec = alloca %struct.htab*, align 8
  %r = alloca %struct.eh_region*, align 8
  %tp_node = alloca %union.tree_node*, align 8
  %flt = alloca i32, align 4
  %flt_node = alloca %union.tree_node*, align 8
  %flt27 = alloca i32, align 4
  %flt_node29 = alloca %union.tree_node*, align 8
  %call = call %struct.varray_head_tag* @varray_init(i64 16, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ttype_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 9
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %ttype_data, align 8
  %call1 = call %struct.varray_head_tag* @varray_init(i64 64, i64 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %eh2 = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 0
  %3 = load %struct.eh_status*, %struct.eh_status** %eh2, align 8
  %ehspec_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %3, i32 0, i32 10
  store %struct.varray_head_tag* %call1, %struct.varray_head_tag** %ehspec_data, align 8
  %call3 = call %struct.htab* @htab_create(i64 31, i32 (i8*)* @ttypes_filter_hash, i32 (i8*, i8*)* @ttypes_filter_eq, void (i8*)* @free)
  store %struct.htab* %call3, %struct.htab** %ttypes, align 8
  %call4 = call %struct.htab* @htab_create(i64 31, i32 (i8*)* @ehspec_filter_hash, i32 (i8*, i8*)* @ehspec_filter_eq, void (i8*)* @free)
  store %struct.htab* %call4, %struct.htab** %ehspec, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %eh5 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 0
  %5 = load %struct.eh_status*, %struct.eh_status** %eh5, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %5, i32 0, i32 8
  %6 = load i32, i32* %last_region_number, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %eh6 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 0
  %10 = load %struct.eh_status*, %struct.eh_status** %eh6, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %10, i32 0, i32 1
  %11 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %11, i64 %idxprom
  %12 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %12, %struct.eh_region** %r, align 8
  %13 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %tobool = icmp ne %struct.eh_region* %13, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %14, i32 0, i32 3
  %15 = load i32, i32* %region_number, align 4
  %16 = load i32, i32* %i, align 4
  %cmp7 = icmp ne i32 %15, %16
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.46

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 5
  %18 = load i32, i32* %type, align 4
  switch i32 %18, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 6
  %catch = bitcast %union.anon* %u to %struct.anon.5*
  %filter_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch, i32 0, i32 3
  store %union.tree_node* null, %union.tree_node** %filter_list, align 8
  %20 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u8 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 6
  %catch9 = bitcast %union.anon* %u8 to %struct.anon.5*
  %type_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch9, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  %cmp10 = icmp ne %union.tree_node* %21, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb
  %22 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u12 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %22, i32 0, i32 6
  %catch13 = bitcast %union.anon* %u12 to %struct.anon.5*
  %type_list14 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch13, i32 0, i32 2
  %23 = load %union.tree_node*, %union.tree_node** %type_list14, align 8
  store %union.tree_node* %23, %union.tree_node** %tp_node, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.11
  %24 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %tobool16 = icmp ne %union.tree_node* %24, null
  br i1 %tobool16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %25 = load %struct.htab*, %struct.htab** %ttypes, align 8
  %26 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %list = bitcast %union.tree_node* %26 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %27 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call18 = call i32 @add_ttypes_entry(%struct.htab* %25, %union.tree_node* %27)
  store i32 %call18, i32* %flt, align 4
  %28 = load i32, i32* %flt, align 4
  %conv = sext i32 %28 to i64
  %call19 = call %union.tree_node* @build_int_2_wide(i64 %conv, i64 0)
  store %union.tree_node* %call19, %union.tree_node** %flt_node, align 8
  %29 = load %union.tree_node*, %union.tree_node** %flt_node, align 8
  %30 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u20 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 6
  %catch21 = bitcast %union.anon* %u20 to %struct.anon.5*
  %filter_list22 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch21, i32 0, i32 3
  %31 = load %union.tree_node*, %union.tree_node** %filter_list22, align 8
  %call23 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %29, %union.tree_node* %31)
  %32 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u24 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %32, i32 0, i32 6
  %catch25 = bitcast %union.anon* %u24 to %struct.anon.5*
  %filter_list26 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch25, i32 0, i32 3
  store %union.tree_node* %call23, %union.tree_node** %filter_list26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %33 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %common = bitcast %union.tree_node* %33 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %34 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %34, %union.tree_node** %tp_node, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %if.end.39

if.else:                                          ; preds = %sw.bb
  %35 = load %struct.htab*, %struct.htab** %ttypes, align 8
  %call28 = call i32 @add_ttypes_entry(%struct.htab* %35, %union.tree_node* null)
  store i32 %call28, i32* %flt27, align 4
  %36 = load i32, i32* %flt27, align 4
  %conv30 = sext i32 %36 to i64
  %call31 = call %union.tree_node* @build_int_2_wide(i64 %conv30, i64 0)
  store %union.tree_node* %call31, %union.tree_node** %flt_node29, align 8
  %37 = load %union.tree_node*, %union.tree_node** %flt_node29, align 8
  %38 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u32 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %38, i32 0, i32 6
  %catch33 = bitcast %union.anon* %u32 to %struct.anon.5*
  %filter_list34 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch33, i32 0, i32 3
  %39 = load %union.tree_node*, %union.tree_node** %filter_list34, align 8
  %call35 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %37, %union.tree_node* %39)
  %40 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u36 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %40, i32 0, i32 6
  %catch37 = bitcast %union.anon* %u36 to %struct.anon.5*
  %filter_list38 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch37, i32 0, i32 3
  store %union.tree_node* %call35, %union.tree_node** %filter_list38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %for.end
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end
  %41 = load %struct.htab*, %struct.htab** %ehspec, align 8
  %42 = load %struct.htab*, %struct.htab** %ttypes, align 8
  %43 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u41 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %43, i32 0, i32 6
  %allowed = bitcast %union.anon* %u41 to %struct.anon.6*
  %type_list42 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed, i32 0, i32 0
  %44 = load %union.tree_node*, %union.tree_node** %type_list42, align 8
  %call43 = call i32 @add_ehspec_entry(%struct.htab* %41, %struct.htab* %42, %union.tree_node* %44)
  %45 = load %struct.eh_region*, %struct.eh_region** %r, align 8
  %u44 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %45, i32 0, i32 6
  %allowed45 = bitcast %union.anon* %u44 to %struct.anon.6*
  %filter = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed45, i32 0, i32 1
  store i32 %call43, i32* %filter, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.40, %if.end.39
  br label %for.inc.46

for.inc.46:                                       ; preds = %sw.epilog, %if.then
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %47 = load %struct.htab*, %struct.htab** %ttypes, align 8
  call void @htab_delete(%struct.htab* %47)
  %48 = load %struct.htab*, %struct.htab** %ehspec, align 8
  call void @htab_delete(%struct.htab* %48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_post_landing_pads() #0 {
entry:
  %i = alloca i32, align 4
  %region = alloca %struct.eh_region*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %c = alloca %struct.eh_region*, align 8
  %tp_node = alloca %union.tree_node*, align 8
  %flt_node = alloca %union.tree_node*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 1
  %7 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %7, i64 %idxprom
  %8 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %8, %struct.eh_region** %region, align 8
  %9 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool = icmp ne %struct.eh_region* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 3
  %11 = load i32, i32* %region_number, align 4
  %12 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.63

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %13, i32 0, i32 5
  %14 = load i32, i32* %type, align 4
  switch i32 %14, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.40
    i32 1, label %sw.bb.59
    i32 5, label %sw.bb.59
    i32 3, label %sw.bb.62
    i32 6, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %if.end
  %call = call %struct.rtx_def* @gen_label_rtx()
  %15 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %post_landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 9
  store %struct.rtx_def* %call, %struct.rtx_def** %post_landing_pad, align 8
  call void @start_sequence()
  %16 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %post_landing_pad3 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %16, i32 0, i32 9
  %17 = load %struct.rtx_def*, %struct.rtx_def** %post_landing_pad3, align 8
  %call4 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %17)
  %18 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %18, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %catch = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 0
  %19 = load %struct.eh_region*, %struct.eh_region** %catch, align 8
  store %struct.eh_region* %19, %struct.eh_region** %c, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %sw.bb
  %20 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %tobool6 = icmp ne %struct.eh_region* %20, null
  br i1 %tobool6, label %for.body.7, label %for.end.29

for.body.7:                                       ; preds = %for.cond.5
  %21 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u8 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %21, i32 0, i32 6
  %catch9 = bitcast %union.anon* %u8 to %struct.anon.5*
  %type_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch9, i32 0, i32 2
  %22 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  %cmp10 = icmp eq %union.tree_node* %22, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.body.7
  %23 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %23, i32 0, i32 7
  %24 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void @emit_jump(%struct.rtx_def* %24)
  br label %if.end.26

if.else:                                          ; preds = %for.body.7
  %25 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u12 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %25, i32 0, i32 6
  %catch13 = bitcast %union.anon* %u12 to %struct.anon.5*
  %type_list14 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch13, i32 0, i32 2
  %26 = load %union.tree_node*, %union.tree_node** %type_list14, align 8
  store %union.tree_node* %26, %union.tree_node** %tp_node, align 8
  %27 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u15 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %27, i32 0, i32 6
  %catch16 = bitcast %union.anon* %u15 to %struct.anon.5*
  %filter_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch16, i32 0, i32 3
  %28 = load %union.tree_node*, %union.tree_node** %filter_list, align 8
  store %union.tree_node* %28, %union.tree_node** %flt_node, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.body.19, %if.else
  %29 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %tobool18 = icmp ne %union.tree_node* %29, null
  br i1 %tobool18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %eh20 = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 0
  %31 = load %struct.eh_status*, %struct.eh_status** %eh20, align 8
  %filter = getelementptr inbounds %struct.eh_status, %struct.eh_status* %31, i32 0, i32 5
  %32 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  %33 = load %union.tree_node*, %union.tree_node** %flt_node, align 8
  %list = bitcast %union.tree_node* %33 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %34 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call21 = call i64 @tree_low_cst(%union.tree_node* %34, i32 0)
  %call22 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call21)
  %35 = load i32, i32* @word_mode, align 4
  %36 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %label23 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %36, i32 0, i32 7
  %37 = load %struct.rtx_def*, %struct.rtx_def** %label23, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %32, %struct.rtx_def* %call22, i32 103, %struct.rtx_def* null, i32 %35, i32 0, %struct.rtx_def* %37)
  %38 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %common = bitcast %union.tree_node* %38 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %39 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %39, %union.tree_node** %tp_node, align 8
  %40 = load %union.tree_node*, %union.tree_node** %flt_node, align 8
  %common24 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %chain25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 0
  %41 = load %union.tree_node*, %union.tree_node** %chain25, align 8
  store %union.tree_node* %41, %union.tree_node** %flt_node, align 8
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.then.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %42 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u27 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %42, i32 0, i32 6
  %catch28 = bitcast %union.anon* %u27 to %struct.anon.5*
  %next_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch28, i32 0, i32 0
  %43 = load %struct.eh_region*, %struct.eh_region** %next_catch, align 8
  store %struct.eh_region* %43, %struct.eh_region** %c, align 8
  br label %for.cond.5

for.end.29:                                       ; preds = %for.cond.5
  %44 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number30 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %44, i32 0, i32 3
  %45 = load i32, i32* %region_number30, align 4
  %call31 = call %struct.rtx_def* @gen_rtx_fmt_i(i32 53, i32 0, i32 %45)
  %call32 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call31)
  %46 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 10
  store %struct.rtx_def* %call32, %struct.rtx_def** %resume, align 8
  %call33 = call %struct.rtx_def* @emit_barrier()
  %call34 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call34, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %47 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %48 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u35 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %48, i32 0, i32 6
  %try36 = bitcast %union.anon* %u35 to %struct.anon*
  %catch37 = getelementptr inbounds %struct.anon, %struct.anon* %try36, i32 0, i32 0
  %49 = load %struct.eh_region*, %struct.eh_region** %catch37, align 8
  %label38 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 7
  %50 = load %struct.rtx_def*, %struct.rtx_def** %label38, align 8
  %call39 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %47, %struct.rtx_def* %50)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end
  %call41 = call %struct.rtx_def* @gen_label_rtx()
  %51 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %post_landing_pad42 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 9
  store %struct.rtx_def* %call41, %struct.rtx_def** %post_landing_pad42, align 8
  call void @start_sequence()
  %52 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %post_landing_pad43 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %52, i32 0, i32 9
  %53 = load %struct.rtx_def*, %struct.rtx_def** %post_landing_pad43, align 8
  %call44 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %53)
  %54 = load %struct.function*, %struct.function** @cfun, align 8
  %eh45 = getelementptr inbounds %struct.function, %struct.function* %54, i32 0, i32 0
  %55 = load %struct.eh_status*, %struct.eh_status** %eh45, align 8
  %filter46 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %55, i32 0, i32 5
  %56 = load %struct.rtx_def*, %struct.rtx_def** %filter46, align 8
  %57 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %57, i32 0, i32 6
  %allowed = bitcast %union.anon* %u47 to %struct.anon.6*
  %filter48 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed, i32 0, i32 1
  %58 = load i32, i32* %filter48, align 4
  %conv = sext i32 %58 to i64
  %call49 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %59 = load i32, i32* @word_mode, align 4
  %60 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label50 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %60, i32 0, i32 7
  %61 = load %struct.rtx_def*, %struct.rtx_def** %label50, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %56, %struct.rtx_def* %call49, i32 103, %struct.rtx_def* null, i32 %59, i32 0, %struct.rtx_def* %61)
  %62 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number51 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %62, i32 0, i32 3
  %63 = load i32, i32* %region_number51, align 4
  %call52 = call %struct.rtx_def* @gen_rtx_fmt_i(i32 53, i32 0, i32 %63)
  %call53 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call52)
  %64 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume54 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %64, i32 0, i32 10
  store %struct.rtx_def* %call53, %struct.rtx_def** %resume54, align 8
  %call55 = call %struct.rtx_def* @emit_barrier()
  %call56 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call56, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %65 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %66 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label57 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %66, i32 0, i32 7
  %67 = load %struct.rtx_def*, %struct.rtx_def** %label57, align 8
  %call58 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %65, %struct.rtx_def* %67)
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end, %if.end
  %68 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label60 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %68, i32 0, i32 7
  %69 = load %struct.rtx_def*, %struct.rtx_def** %label60, align 8
  %70 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %post_landing_pad61 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %70, i32 0, i32 9
  store %struct.rtx_def* %69, %struct.rtx_def** %post_landing_pad61, align 8
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 2044, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.build_post_landing_pads, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.62, %sw.bb.59, %sw.bb.40, %for.end.29
  br label %for.inc.63

for.inc.63:                                       ; preds = %sw.epilog, %if.then
  %71 = load i32, i32* %i, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @connect_post_landing_pads() #0 {
entry:
  %i = alloca i32, align 4
  %region = alloca %struct.eh_region*, align 8
  %outer = alloca %struct.eh_region*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 1
  %7 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %7, i64 %idxprom
  %8 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %8, %struct.eh_region** %region, align 8
  %9 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool = icmp ne %struct.eh_region* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 3
  %11 = load i32, i32* %region_number, align 4
  %12 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.27

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume = getelementptr inbounds %struct.eh_region, %struct.eh_region* %13, i32 0, i32 10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %resume, align 8
  %tobool3 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then.7

lor.lhs.false.4:                                  ; preds = %if.end
  %15 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume5 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %resume5, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.4, %if.end
  br label %for.inc.27

if.end.8:                                         ; preds = %lor.lhs.false.4
  %18 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer9 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %18, i32 0, i32 0
  %19 = load %struct.eh_region*, %struct.eh_region** %outer9, align 8
  store %struct.eh_region* %19, %struct.eh_region** %outer, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.8
  %20 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %tobool11 = icmp ne %struct.eh_region* %20, null
  br i1 %tobool11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %21 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %post_landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %21, i32 0, i32 9
  %22 = load %struct.rtx_def*, %struct.rtx_def** %post_landing_pad, align 8
  %tobool13 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.12
  br label %for.end

if.end.15:                                        ; preds = %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %23 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %outer16 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %23, i32 0, i32 0
  %24 = load %struct.eh_region*, %struct.eh_region** %outer16, align 8
  store %struct.eh_region* %24, %struct.eh_region** %outer, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.14, %for.cond.10
  call void @start_sequence()
  %25 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %tobool17 = icmp ne %struct.eh_region* %25, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.end
  %26 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %post_landing_pad19 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 9
  %27 = load %struct.rtx_def*, %struct.rtx_def** %post_landing_pad19, align 8
  call void @emit_jump(%struct.rtx_def* %27)
  br label %if.end.22

if.else:                                          ; preds = %for.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 18), align 8
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %eh20 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 0
  %30 = load %struct.eh_status*, %struct.eh_status** %eh20, align 8
  %exc_ptr = getelementptr inbounds %struct.eh_status, %struct.eh_status* %30, i32 0, i32 6
  %31 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  %32 = load i32, i32* @target_flags, align 4
  %and = and i32 %32, 33554432
  %tobool21 = icmp ne i32 %and, 0
  %cond = select i1 %tobool21, i32 5, i32 4
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %28, i32 6, i32 0, i32 1, %struct.rtx_def* %31, i32 %cond)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.18
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %33 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %34 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume23 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 10
  %35 = load %struct.rtx_def*, %struct.rtx_def** %resume23, align 8
  %call24 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %33, %struct.rtx_def* %35)
  %36 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %resume25 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %36, i32 0, i32 10
  %37 = load %struct.rtx_def*, %struct.rtx_def** %resume25, align 8
  %call26 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %37)
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.22, %if.then.7, %if.then
  %38 = load i32, i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dw2_build_landing_pads() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %region = alloca %struct.eh_region*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %clobbers_hard_regs = alloca i8, align 1
  %r = alloca i32, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %last_region_number = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 8
  %2 = load i32, i32* %last_region_number, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 1
  %7 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %7, i64 %idxprom
  %8 = load %struct.eh_region*, %struct.eh_region** %arrayidx, align 8
  store %struct.eh_region* %8, %struct.eh_region** %region, align 8
  store i8 0, i8* %clobbers_hard_regs, align 1
  %9 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool = icmp ne %struct.eh_region* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 3
  %11 = load i32, i32* %region_number, align 4
  %12 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %11, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.44

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %13, i32 0, i32 5
  %14 = load i32, i32* %type, align 4
  %cmp3 = icmp ne i32 %14, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type4 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 5
  %16 = load i32, i32* %type4, align 4
  %cmp5 = icmp ne i32 %16, 2
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.10

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %17 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type7 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 5
  %18 = load i32, i32* %type7, align 4
  %cmp8 = icmp ne i32 %18, 4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.6
  br label %for.inc.44

if.end.10:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %if.end
  call void @start_sequence()
  %call = call %struct.rtx_def* @gen_label_rtx()
  %19 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %19, i32 0, i32 8
  store %struct.rtx_def* %call, %struct.rtx_def** %landing_pad, align 8
  %20 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %landing_pad11 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad11, align 8
  %call12 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %21)
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.10
  %22 = load i32, i32* %j, align 4
  %cmp14 = icmp ult i32 %22, 2
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.13
  %23 = load i32, i32* %j, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond.13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %r, align 4
  %24 = load i32, i32* %r, align 4
  %cmp15 = icmp eq i32 %24, -1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end
  br label %for.end

if.end.17:                                        ; preds = %cond.end
  %25 = load i32, i32* %r, align 4
  %idxprom18 = zext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom18
  %26 = load i8, i8* %arrayidx19, align 1
  %tobool20 = icmp ne i8 %26, 0
  br i1 %tobool20, label %if.end.27, label %if.then.21

if.then.21:                                       ; preds = %if.end.17
  %27 = load i32, i32* @target_flags, align 4
  %and = and i32 %27, 33554432
  %tobool22 = icmp ne i32 %and, 0
  %cond23 = select i1 %tobool22, i32 5, i32 4
  %28 = load i32, i32* %r, align 4
  %call24 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond23, i32 %28)
  %call25 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %call24)
  %call26 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call25)
  store i8 1, i8* %clobbers_hard_regs, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %29 = load i32, i32* %j, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %if.then.16
  %30 = load i8, i8* %clobbers_hard_regs, align 1
  %tobool28 = trunc i8 %30 to i1
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %for.end
  %call30 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 40, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  %call31 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call30)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %for.end
  %31 = load %struct.function*, %struct.function** @cfun, align 8
  %eh33 = getelementptr inbounds %struct.function, %struct.function* %31, i32 0, i32 0
  %32 = load %struct.eh_status*, %struct.eh_status** %eh33, align 8
  %exc_ptr = getelementptr inbounds %struct.eh_status, %struct.eh_status* %32, i32 0, i32 6
  %33 = load %struct.rtx_def*, %struct.rtx_def** %exc_ptr, align 8
  %34 = load i32, i32* @target_flags, align 4
  %and34 = and i32 %34, 33554432
  %tobool35 = icmp ne i32 %and34, 0
  %cond36 = select i1 %tobool35, i32 5, i32 4
  %call37 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond36, i32 0)
  %call38 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %33, %struct.rtx_def* %call37)
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %eh39 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 0
  %36 = load %struct.eh_status*, %struct.eh_status** %eh39, align 8
  %filter = getelementptr inbounds %struct.eh_status, %struct.eh_status* %36, i32 0, i32 5
  %37 = load %struct.rtx_def*, %struct.rtx_def** %filter, align 8
  %38 = load i32, i32* @word_mode, align 4
  %call40 = call %struct.rtx_def* @gen_rtx_REG(i32 %38, i32 1)
  %call41 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %37, %struct.rtx_def* %call40)
  %call42 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call42, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %39 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %40 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %post_landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %40, i32 0, i32 9
  %41 = load %struct.rtx_def*, %struct.rtx_def** %post_landing_pad, align 8
  %call43 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %39, %struct.rtx_def* %41)
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.32, %if.then.9, %if.then
  %42 = load i32, i32* %i, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @maybe_remove_eh_handler(%struct.rtx_def* %label) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  %slot = alloca %struct.ehl_map_entry**, align 8
  %tmp = alloca %struct.ehl_map_entry, align 8
  %region = alloca %struct.eh_region*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %built_landing_pads = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 7
  %2 = load i32, i32* %built_landing_pads, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.12

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %label2 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %tmp, i32 0, i32 0
  store %struct.rtx_def* %3, %struct.rtx_def** %label2, align 8
  %4 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %5 = bitcast %struct.ehl_map_entry* %tmp to i8*
  %call = call i8** @htab_find_slot(%struct.htab* %4, i8* %5, i32 0)
  %6 = bitcast i8** %call to %struct.ehl_map_entry**
  store %struct.ehl_map_entry** %6, %struct.ehl_map_entry*** %slot, align 8
  %7 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  %tobool3 = icmp ne %struct.ehl_map_entry** %7, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %if.end.12

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  %9 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %8, align 8
  %region6 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %9, i32 0, i32 1
  %10 = load %struct.eh_region*, %struct.eh_region** %region6, align 8
  store %struct.eh_region* %10, %struct.eh_region** %region, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool7 = icmp ne %struct.eh_region* %11, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %if.end.12

if.end.9:                                         ; preds = %if.end.5
  %12 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %12, i32 0, i32 5
  %13 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %13, 5
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.9
  %14 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %15 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  %16 = bitcast %struct.ehl_map_entry** %15 to i8**
  call void @htab_clear_slot(%struct.htab* %14, i8** %16)
  %17 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %label11 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 7
  store %struct.rtx_def* null, %struct.rtx_def** %label11, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.9
  %18 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  call void @remove_eh_handler(%struct.eh_region* %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.then.4, %if.then.8, %if.else, %if.then.10
  ret void
}

declare i8** @htab_find_slot(%struct.htab*, i8*, i32) #1

declare void @htab_clear_slot(%struct.htab*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @remove_eh_handler(%struct.eh_region* %region) #0 {
entry:
  %region.addr = alloca %struct.eh_region*, align 8
  %pp = alloca %struct.eh_region**, align 8
  %pp_start = alloca %struct.eh_region**, align 8
  %p = alloca %struct.eh_region*, align 8
  %outer = alloca %struct.eh_region*, align 8
  %inner = alloca %struct.eh_region*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %try = alloca %struct.eh_region*, align 8
  %next95 = alloca %struct.eh_region*, align 8
  %prev = alloca %struct.eh_region*, align 8
  store %struct.eh_region* %region, %struct.eh_region** %region.addr, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %outer1 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 0
  %1 = load %struct.eh_region*, %struct.eh_region** %outer1, align 8
  store %struct.eh_region* %1, %struct.eh_region** %outer, align 8
  %2 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %region_number = getelementptr inbounds %struct.eh_region, %struct.eh_region* %3, i32 0, i32 3
  %4 = load i32, i32* %region_number, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 1
  %7 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %7, i64 %idxprom
  store %struct.eh_region* %2, %struct.eh_region** %arrayidx, align 8
  %8 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %aka = getelementptr inbounds %struct.eh_region, %struct.eh_region* %8, i32 0, i32 4
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %9, null
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %aka2 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 4
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka2, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %11, i32 0, i32 0
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %12, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i32 0, i32 2
  %15 = load i32, i32* %indx, align 4
  %16 = load i32, i32* %indx_, align 4
  %cmp3 = icmp ult i32 %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %18, i32 0, i32 0
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %19, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp4 = icmp ne %struct.bitmap_element_def* %20, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i32 0, i32 2
  %22 = load i32, i32* %indx5, align 4
  %23 = load i32, i32* %indx_, align 4
  %cmp6 = icmp ne i32 %22, %23
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp8 = icmp ne %struct.bitmap_element_def* %24, null
  br i1 %cmp8, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.34, %for.body
  %25 = load i32, i32* %word_num_, align 4
  %cmp10 = icmp ult i32 %25, 2
  br i1 %cmp10, label %for.body.11, label %for.end.36

for.body.11:                                      ; preds = %for.cond.9
  %26 = load i32, i32* %word_num_, align 4
  %idxprom12 = zext i32 %26 to i64
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom12
  %28 = load i64, i64* %arrayidx13, align 8
  store i64 %28, i64* %word_, align 8
  %29 = load i64, i64* %word_, align 8
  %cmp14 = icmp ne i64 %29, 0
  br i1 %cmp14, label %if.then.15, label %if.end.33

if.then.15:                                       ; preds = %for.body.11
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then.15
  %30 = load i32, i32* %bit_num_, align 4
  %cmp17 = icmp ult i32 %30, 64
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %31 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %31 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %32 = load i64, i64* %word_, align 8
  %33 = load i64, i64* %mask_, align 8
  %and = and i64 %32, %33
  %cmp19 = icmp ne i64 %and, 0
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %for.body.18
  %34 = load i64, i64* %mask_, align 8
  %neg = xor i64 %34, -1
  %35 = load i64, i64* %word_, align 8
  %and21 = and i64 %35, %neg
  store i64 %and21, i64* %word_, align 8
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %36, i32 0, i32 2
  %37 = load i32, i32* %indx22, align 4
  %mul = mul i32 %37, 128
  %38 = load i32, i32* %word_num_, align 4
  %mul23 = mul i32 %38, 64
  %add = add i32 %mul, %mul23
  %39 = load i32, i32* %bit_num_, align 4
  %add24 = add i32 %add, %39
  store i32 %add24, i32* %i, align 4
  %40 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %41 to i64
  %42 = load %struct.function*, %struct.function** @cfun, align 8
  %eh26 = getelementptr inbounds %struct.function, %struct.function* %42, i32 0, i32 0
  %43 = load %struct.eh_status*, %struct.eh_status** %eh26, align 8
  %region_array27 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %43, i32 0, i32 1
  %44 = load %struct.eh_region**, %struct.eh_region*** %region_array27, align 8
  %arrayidx28 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %44, i64 %idxprom25
  store %struct.eh_region* %40, %struct.eh_region** %arrayidx28, align 8
  %45 = load i64, i64* %word_, align 8
  %cmp29 = icmp eq i64 %45, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.20
  br label %for.end

if.end.31:                                        ; preds = %if.then.20
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %46 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.16

for.end:                                          ; preds = %if.then.30, %for.cond.16
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %for.body.11
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %47 = load i32, i32* %word_num_, align 4
  %inc35 = add i32 %47, 1
  store i32 %inc35, i32* %word_num_, align 4
  br label %for.cond.9

for.end.36:                                       ; preds = %for.cond.9
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %48 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next38 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %48, i32 0, i32 0
  %49 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next38, align 8
  store %struct.bitmap_element_def* %49, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.39
  br label %if.end.40

if.end.40:                                        ; preds = %do.end, %entry
  %50 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %tobool41 = icmp ne %struct.eh_region* %50, null
  br i1 %tobool41, label %if.then.42, label %if.end.59

if.then.42:                                       ; preds = %if.end.40
  %51 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %aka43 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 4
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka43, align 8
  %tobool44 = icmp ne %struct.bitmap_head_def* %52, null
  br i1 %tobool44, label %if.end.48, label %if.then.45

if.then.45:                                       ; preds = %if.then.42
  %call = call noalias i8* @xmalloc(i64 24)
  %53 = bitcast i8* %call to %struct.bitmap_head_def*
  %call46 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %53)
  %54 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %aka47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %54, i32 0, i32 4
  store %struct.bitmap_head_def* %call46, %struct.bitmap_head_def** %aka47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.then.42
  %55 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %aka49 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %55, i32 0, i32 4
  %56 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka49, align 8
  %tobool50 = icmp ne %struct.bitmap_head_def* %56, null
  br i1 %tobool50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.48
  %57 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %aka52 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %57, i32 0, i32 4
  %58 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka52, align 8
  %59 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %aka53 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %59, i32 0, i32 4
  %60 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka53, align 8
  %61 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %aka54 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %61, i32 0, i32 4
  %62 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka54, align 8
  %call55 = call i32 @bitmap_operation(%struct.bitmap_head_def* %58, %struct.bitmap_head_def* %60, %struct.bitmap_head_def* %62, i32 2)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.48
  %63 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %aka57 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %63, i32 0, i32 4
  %64 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %aka57, align 8
  %65 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %region_number58 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %65, i32 0, i32 3
  %66 = load i32, i32* %region_number58, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %64, i32 %66)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.56, %if.end.40
  %67 = load %struct.function*, %struct.function** @cfun, align 8
  %eh60 = getelementptr inbounds %struct.function, %struct.function* %67, i32 0, i32 0
  %68 = load %struct.eh_status*, %struct.eh_status** %eh60, align 8
  %built_landing_pads = getelementptr inbounds %struct.eh_status, %struct.eh_status* %68, i32 0, i32 7
  %69 = load i32, i32* %built_landing_pads, align 4
  %tobool61 = icmp ne i32 %69, 0
  br i1 %tobool61, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %if.end.59
  %70 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %70, i32 0, i32 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %lab, align 8
  br label %if.end.63

if.else:                                          ; preds = %if.end.59
  %72 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %72, i32 0, i32 7
  %73 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  store %struct.rtx_def* %73, %struct.rtx_def** %lab, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else, %if.then.62
  %74 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %tobool64 = icmp ne %struct.rtx_def* %74, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.63
  %75 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  call void @remove_exception_handler_label(%struct.rtx_def* %75)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  %76 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %tobool67 = icmp ne %struct.eh_region* %76, null
  br i1 %tobool67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.end.66
  %77 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %inner69 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %77, i32 0, i32 1
  store %struct.eh_region** %inner69, %struct.eh_region*** %pp_start, align 8
  br label %if.end.72

if.else.70:                                       ; preds = %if.end.66
  %78 = load %struct.function*, %struct.function** @cfun, align 8
  %eh71 = getelementptr inbounds %struct.function, %struct.function* %78, i32 0, i32 0
  %79 = load %struct.eh_status*, %struct.eh_status** %eh71, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %79, i32 0, i32 0
  store %struct.eh_region** %region_tree, %struct.eh_region*** %pp_start, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.68
  %80 = load %struct.eh_region**, %struct.eh_region*** %pp_start, align 8
  store %struct.eh_region** %80, %struct.eh_region*** %pp, align 8
  %81 = load %struct.eh_region**, %struct.eh_region*** %pp, align 8
  %82 = load %struct.eh_region*, %struct.eh_region** %81, align 8
  store %struct.eh_region* %82, %struct.eh_region** %p, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.76, %if.end.72
  %83 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %84 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %cmp74 = icmp ne %struct.eh_region* %83, %84
  br i1 %cmp74, label %for.body.75, label %for.end.77

for.body.75:                                      ; preds = %for.cond.73
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.75
  %85 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %85, i32 0, i32 2
  store %struct.eh_region** %next_peer, %struct.eh_region*** %pp, align 8
  %86 = load %struct.eh_region**, %struct.eh_region*** %pp, align 8
  %87 = load %struct.eh_region*, %struct.eh_region** %86, align 8
  store %struct.eh_region* %87, %struct.eh_region** %p, align 8
  br label %for.cond.73

for.end.77:                                       ; preds = %for.cond.73
  %88 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %next_peer78 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %88, i32 0, i32 2
  %89 = load %struct.eh_region*, %struct.eh_region** %next_peer78, align 8
  %90 = load %struct.eh_region**, %struct.eh_region*** %pp, align 8
  store %struct.eh_region* %89, %struct.eh_region** %90, align 8
  %91 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %inner79 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %91, i32 0, i32 1
  %92 = load %struct.eh_region*, %struct.eh_region** %inner79, align 8
  store %struct.eh_region* %92, %struct.eh_region** %inner, align 8
  %93 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %tobool80 = icmp ne %struct.eh_region* %93, null
  br i1 %tobool80, label %if.then.81, label %if.end.92

if.then.81:                                       ; preds = %for.end.77
  %94 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  store %struct.eh_region* %94, %struct.eh_region** %p, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.87, %if.then.81
  %95 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer83 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %95, i32 0, i32 2
  %96 = load %struct.eh_region*, %struct.eh_region** %next_peer83, align 8
  %tobool84 = icmp ne %struct.eh_region* %96, null
  br i1 %tobool84, label %for.body.85, label %for.end.89

for.body.85:                                      ; preds = %for.cond.82
  %97 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %98 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %outer86 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %98, i32 0, i32 0
  store %struct.eh_region* %97, %struct.eh_region** %outer86, align 8
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.85
  %99 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer88 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %99, i32 0, i32 2
  %100 = load %struct.eh_region*, %struct.eh_region** %next_peer88, align 8
  store %struct.eh_region* %100, %struct.eh_region** %p, align 8
  br label %for.cond.82

for.end.89:                                       ; preds = %for.cond.82
  %101 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %102 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %outer90 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %102, i32 0, i32 0
  store %struct.eh_region* %101, %struct.eh_region** %outer90, align 8
  %103 = load %struct.eh_region**, %struct.eh_region*** %pp_start, align 8
  %104 = load %struct.eh_region*, %struct.eh_region** %103, align 8
  %105 = load %struct.eh_region*, %struct.eh_region** %p, align 8
  %next_peer91 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %105, i32 0, i32 2
  store %struct.eh_region* %104, %struct.eh_region** %next_peer91, align 8
  %106 = load %struct.eh_region*, %struct.eh_region** %inner, align 8
  %107 = load %struct.eh_region**, %struct.eh_region*** %pp_start, align 8
  store %struct.eh_region* %106, %struct.eh_region** %107, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.89, %for.end.77
  %108 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %108, i32 0, i32 5
  %109 = load i32, i32* %type, align 4
  %cmp93 = icmp eq i32 %109, 3
  br i1 %cmp93, label %if.then.94, label %if.end.132

if.then.94:                                       ; preds = %if.end.92
  %110 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %next_peer96 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %110, i32 0, i32 2
  %111 = load %struct.eh_region*, %struct.eh_region** %next_peer96, align 8
  store %struct.eh_region* %111, %struct.eh_region** %try, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.101, %if.then.94
  %112 = load %struct.eh_region*, %struct.eh_region** %try, align 8
  %type98 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %112, i32 0, i32 5
  %113 = load i32, i32* %type98, align 4
  %cmp99 = icmp eq i32 %113, 3
  br i1 %cmp99, label %for.body.100, label %for.end.103

for.body.100:                                     ; preds = %for.cond.97
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.100
  %114 = load %struct.eh_region*, %struct.eh_region** %try, align 8
  %next_peer102 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %114, i32 0, i32 2
  %115 = load %struct.eh_region*, %struct.eh_region** %next_peer102, align 8
  store %struct.eh_region* %115, %struct.eh_region** %try, align 8
  br label %for.cond.97

for.end.103:                                      ; preds = %for.cond.97
  %116 = load %struct.eh_region*, %struct.eh_region** %try, align 8
  %type104 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %116, i32 0, i32 5
  %117 = load i32, i32* %type104, align 4
  %cmp105 = icmp ne i32 %117, 2
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.end.103
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 2698, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.remove_eh_handler, i32 0, i32 0)) #6
  unreachable

if.end.107:                                       ; preds = %for.end.103
  %118 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %118, i32 0, i32 6
  %catch = bitcast %union.anon* %u to %struct.anon.5*
  %next_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch, i32 0, i32 0
  %119 = load %struct.eh_region*, %struct.eh_region** %next_catch, align 8
  store %struct.eh_region* %119, %struct.eh_region** %next95, align 8
  %120 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u108 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %120, i32 0, i32 6
  %catch109 = bitcast %union.anon* %u108 to %struct.anon.5*
  %prev_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch109, i32 0, i32 1
  %121 = load %struct.eh_region*, %struct.eh_region** %prev_catch, align 8
  store %struct.eh_region* %121, %struct.eh_region** %prev, align 8
  %122 = load %struct.eh_region*, %struct.eh_region** %next95, align 8
  %tobool110 = icmp ne %struct.eh_region* %122, null
  br i1 %tobool110, label %if.then.111, label %if.else.115

if.then.111:                                      ; preds = %if.end.107
  %123 = load %struct.eh_region*, %struct.eh_region** %prev, align 8
  %124 = load %struct.eh_region*, %struct.eh_region** %next95, align 8
  %u112 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %124, i32 0, i32 6
  %catch113 = bitcast %union.anon* %u112 to %struct.anon.5*
  %prev_catch114 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch113, i32 0, i32 1
  store %struct.eh_region* %123, %struct.eh_region** %prev_catch114, align 8
  br label %if.end.118

if.else.115:                                      ; preds = %if.end.107
  %125 = load %struct.eh_region*, %struct.eh_region** %prev, align 8
  %126 = load %struct.eh_region*, %struct.eh_region** %try, align 8
  %u116 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %126, i32 0, i32 6
  %try117 = bitcast %union.anon* %u116 to %struct.anon*
  %last_catch = getelementptr inbounds %struct.anon, %struct.anon* %try117, i32 0, i32 1
  store %struct.eh_region* %125, %struct.eh_region** %last_catch, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.111
  %127 = load %struct.eh_region*, %struct.eh_region** %prev, align 8
  %tobool119 = icmp ne %struct.eh_region* %127, null
  br i1 %tobool119, label %if.then.120, label %if.else.124

if.then.120:                                      ; preds = %if.end.118
  %128 = load %struct.eh_region*, %struct.eh_region** %next95, align 8
  %129 = load %struct.eh_region*, %struct.eh_region** %prev, align 8
  %u121 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %129, i32 0, i32 6
  %catch122 = bitcast %union.anon* %u121 to %struct.anon.5*
  %next_catch123 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch122, i32 0, i32 0
  store %struct.eh_region* %128, %struct.eh_region** %next_catch123, align 8
  br label %if.end.131

if.else.124:                                      ; preds = %if.end.118
  %130 = load %struct.eh_region*, %struct.eh_region** %next95, align 8
  %131 = load %struct.eh_region*, %struct.eh_region** %try, align 8
  %u125 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %131, i32 0, i32 6
  %try126 = bitcast %union.anon* %u125 to %struct.anon*
  %catch127 = getelementptr inbounds %struct.anon, %struct.anon* %try126, i32 0, i32 0
  store %struct.eh_region* %130, %struct.eh_region** %catch127, align 8
  %132 = load %struct.eh_region*, %struct.eh_region** %next95, align 8
  %tobool128 = icmp ne %struct.eh_region* %132, null
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %if.else.124
  %133 = load %struct.eh_region*, %struct.eh_region** %try, align 8
  call void @remove_eh_handler(%struct.eh_region* %133)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.else.124
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.120
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.92
  %134 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  call void @free_region(%struct.eh_region* %134)
  ret void
}

; Function Attrs: nounwind uwtable
define void @for_each_eh_label(void (%struct.rtx_def*)* %callback) #0 {
entry:
  %callback.addr = alloca void (%struct.rtx_def*)*, align 8
  store void (%struct.rtx_def*)* %callback, void (%struct.rtx_def*)** %callback.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %1 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** %callback.addr, align 8
  %2 = bitcast void (%struct.rtx_def*)* %1 to i8*
  call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* @for_each_eh_label_1, i8* %2)
  ret void
}

declare void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @for_each_eh_label_1(i8** %pentry, i8* %data) #0 {
entry:
  %pentry.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ehl_map_entry*, align 8
  %callback = alloca void (%struct.rtx_def*)*, align 8
  store i8** %pentry, i8*** %pentry.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8**, i8*** %pentry.addr, align 8
  %1 = bitcast i8** %0 to %struct.ehl_map_entry**
  %2 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %1, align 8
  store %struct.ehl_map_entry* %2, %struct.ehl_map_entry** %entry1, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to void (%struct.rtx_def*)*
  store void (%struct.rtx_def*)* %4, void (%struct.rtx_def*)** %callback, align 8
  %5 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** %callback, align 8
  %6 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %label = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void %5(%struct.rtx_def* %7)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @reachable_handlers(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %info = alloca %struct.reachable_info, align 8
  %region = alloca %struct.eh_region*, align 8
  %type_thrown = alloca %union.tree_node*, align 8
  %region_number = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 53
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %7 = load i32, i32* %rtint, align 4
  store i32 %7, i32* %region_number, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %8, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx13 to i64*
  %12 = load i64, i64* %rtwint, align 8
  %cmp14 = icmp sle i64 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %lor.lhs.false, %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtwint21 = bitcast %union.rtunion_def* %arrayidx20 to i64*
  %15 = load i64, i64* %rtwint21, align 8
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %region_number, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  %16 = bitcast %struct.reachable_info* %info to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 24, i32 8, i1 false)
  %17 = load i32, i32* %region_number, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 0
  %19 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %19, i32 0, i32 1
  %20 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx23 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %20, i64 %idxprom
  %21 = load %struct.eh_region*, %struct.eh_region** %arrayidx23, align 8
  store %struct.eh_region* %21, %struct.eh_region** %region, align 8
  store %union.tree_node* null, %union.tree_node** %type_thrown, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load24 = load i32, i32* %23, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 33
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.41

land.lhs.true.28:                                 ; preds = %if.end.22
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load32 = load i32, i32* %26, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 53
  br i1 %cmp34, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %land.lhs.true.28
  %27 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %cmp37 = icmp eq %struct.eh_region* %27, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.36
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.36
  %28 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 0
  %29 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %29, %struct.eh_region** %region, align 8
  br label %if.end.48

if.else.41:                                       ; preds = %land.lhs.true.28, %if.end.22
  %30 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 5
  %31 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %31, 6
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.else.41
  %32 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %32, i32 0, i32 6
  %throw = bitcast %union.anon* %u to %struct.anon.7*
  %type45 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %type45, align 8
  store %union.tree_node* %33, %union.tree_node** %type_thrown, align 8
  %34 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer46 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 0
  %35 = load %struct.eh_region*, %struct.eh_region** %outer46, align 8
  store %struct.eh_region* %35, %struct.eh_region** %region, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.else.41
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %36 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool49 = icmp ne %struct.eh_region* %36, null
  br i1 %tobool49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %38 = load %union.tree_node*, %union.tree_node** %type_thrown, align 8
  %call50 = call i32 @reachable_next_level(%struct.eh_region* %37, %union.tree_node* %38, %struct.reachable_info* %info)
  %cmp51 = icmp uge i32 %call50, 2
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body
  br label %for.end

if.end.54:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %39 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer55 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 0
  %40 = load %struct.eh_region*, %struct.eh_region** %outer55, align 8
  store %struct.eh_region* %40, %struct.eh_region** %region, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.53, %for.cond
  %handlers = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %info, i32 0, i32 2
  %41 = load %struct.rtx_def*, %struct.rtx_def** %handlers, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.39, %if.then.15
  %42 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %42
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @reachable_next_level(%struct.eh_region* %region, %union.tree_node* %type_thrown, %struct.reachable_info* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %region.addr = alloca %struct.eh_region*, align 8
  %type_thrown.addr = alloca %union.tree_node*, align 8
  %info.addr = alloca %struct.reachable_info*, align 8
  %c = alloca %struct.eh_region*, align 8
  %ret = alloca i32, align 4
  %tp_node = alloca %union.tree_node*, align 8
  %type12 = alloca %union.tree_node*, align 8
  %tp_node24 = alloca %union.tree_node*, align 8
  %maybe_reachable = alloca i8, align 1
  %type31 = alloca %union.tree_node*, align 8
  store %struct.eh_region* %region, %struct.eh_region** %region.addr, align 8
  store %union.tree_node* %type_thrown, %union.tree_node** %type_thrown.addr, align 8
  store %struct.reachable_info* %info, %struct.reachable_info** %info.addr, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.53
    i32 3, label %sw.bb.79
    i32 5, label %sw.bb.80
    i32 6, label %sw.bb.86
    i32 7, label %sw.bb.86
    i32 0, label %sw.bb.86
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %3 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %4 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  call void @add_reachable_handler(%struct.reachable_info* %2, %struct.eh_region* %3, %struct.eh_region* %4)
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %ret, align 4
  %5 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %5, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %catch = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 0
  %6 = load %struct.eh_region*, %struct.eh_region** %catch, align 8
  store %struct.eh_region* %6, %struct.eh_region** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %sw.bb.1
  %7 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %tobool = icmp ne %struct.eh_region* %7, null
  br i1 %tobool, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %8 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u2 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %8, i32 0, i32 6
  %catch3 = bitcast %union.anon* %u2 to %struct.anon.5*
  %type_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch3, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  %cmp = icmp eq %union.tree_node* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %12 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  call void @add_reachable_handler(%struct.reachable_info* %10, %struct.eh_region* %11, %struct.eh_region* %12)
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %13 = load %union.tree_node*, %union.tree_node** %type_thrown.addr, align 8
  %tobool4 = icmp ne %union.tree_node* %13, null
  br i1 %tobool4, label %if.then.5, label %if.end.21

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u6 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %14, i32 0, i32 6
  %catch7 = bitcast %union.anon* %u6 to %struct.anon.5*
  %type_list8 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch7, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %type_list8, align 8
  store %union.tree_node* %15, %union.tree_node** %tp_node, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then.5
  %16 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %tobool10 = icmp ne %union.tree_node* %16, null
  br i1 %tobool10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %17 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %list = bitcast %union.tree_node* %17 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %18, %union.tree_node** %type12, align 8
  %19 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %20 = load %union.tree_node*, %union.tree_node** %type_thrown.addr, align 8
  %cmp13 = icmp eq %union.tree_node* %19, %20
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.11
  %21 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** @lang_eh_type_covers, align 8
  %tobool14 = icmp ne i32 (%union.tree_node*, %union.tree_node*)* %21, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %22 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** @lang_eh_type_covers, align 8
  %23 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %24 = load %union.tree_node*, %union.tree_node** %type_thrown.addr, align 8
  %call = call i32 %22(%union.tree_node* %23, %union.tree_node* %24)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true, %for.body.11
  %25 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %26 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %27 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  call void @add_reachable_handler(%struct.reachable_info* %25, %struct.eh_region* %26, %struct.eh_region* %27)
  store i32 2, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %28 = load %union.tree_node*, %union.tree_node** %tp_node, align 8
  %common = bitcast %union.tree_node* %28 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %29 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %29, %union.tree_node** %tp_node, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %30 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** @lang_eh_type_covers, align 8
  %tobool18 = icmp ne i32 (%union.tree_node*, %union.tree_node*)* %30, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %for.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %31 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %tobool22 = icmp ne %struct.reachable_info* %31, null
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  store i32 1, i32* %ret, align 4
  br label %if.end.48

if.else:                                          ; preds = %if.end.21
  %32 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u25 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %32, i32 0, i32 6
  %catch26 = bitcast %union.anon* %u25 to %struct.anon.5*
  %type_list27 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch26, i32 0, i32 2
  %33 = load %union.tree_node*, %union.tree_node** %type_list27, align 8
  store %union.tree_node* %33, %union.tree_node** %tp_node24, align 8
  store i8 0, i8* %maybe_reachable, align 1
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.41, %if.else
  %34 = load %union.tree_node*, %union.tree_node** %tp_node24, align 8
  %tobool29 = icmp ne %union.tree_node* %34, null
  br i1 %tobool29, label %for.body.30, label %for.end.44

for.body.30:                                      ; preds = %for.cond.28
  %35 = load %union.tree_node*, %union.tree_node** %tp_node24, align 8
  %list32 = bitcast %union.tree_node* %35 to %struct.tree_list*
  %value33 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list32, i32 0, i32 2
  %36 = load %union.tree_node*, %union.tree_node** %value33, align 8
  store %union.tree_node* %36, %union.tree_node** %type31, align 8
  %37 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %types_caught = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %37, i32 0, i32 0
  %38 = load %union.tree_node*, %union.tree_node** %types_caught, align 8
  %39 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %call34 = call i32 @check_handled(%union.tree_node* %38, %union.tree_node* %39)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.40, label %if.then.36

if.then.36:                                       ; preds = %for.body.30
  %40 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %41 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %types_caught37 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %41, i32 0, i32 0
  %42 = load %union.tree_node*, %union.tree_node** %types_caught37, align 8
  %call38 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %40, %union.tree_node* %42)
  %43 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %types_caught39 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %43, i32 0, i32 0
  store %union.tree_node* %call38, %union.tree_node** %types_caught39, align 8
  store i8 1, i8* %maybe_reachable, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %for.body.30
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %44 = load %union.tree_node*, %union.tree_node** %tp_node24, align 8
  %common42 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %chain43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 0
  %45 = load %union.tree_node*, %union.tree_node** %chain43, align 8
  store %union.tree_node* %45, %union.tree_node** %tp_node24, align 8
  br label %for.cond.28

for.end.44:                                       ; preds = %for.cond.28
  %46 = load i8, i8* %maybe_reachable, align 1
  %tobool45 = trunc i8 %46 to i1
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end.44
  %47 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %48 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %49 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  call void @add_reachable_handler(%struct.reachable_info* %47, %struct.eh_region* %48, %struct.eh_region* %49)
  store i32 1, i32* %ret, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %for.end.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.23
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %50 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u50 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %50, i32 0, i32 6
  %catch51 = bitcast %union.anon* %u50 to %struct.anon.5*
  %next_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch51, i32 0, i32 0
  %51 = load %struct.eh_region*, %struct.eh_region** %next_catch, align 8
  store %struct.eh_region* %51, %struct.eh_region** %c, align 8
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %52 = load i32, i32* %ret, align 4
  store i32 %52, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %entry
  %53 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u54 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %53, i32 0, i32 6
  %allowed = bitcast %union.anon* %u54 to %struct.anon.6*
  %type_list55 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed, i32 0, i32 0
  %54 = load %union.tree_node*, %union.tree_node** %type_list55, align 8
  %cmp56 = icmp eq %union.tree_node* %54, null
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.bb.53
  %55 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %56 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %57 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  call void @add_reachable_handler(%struct.reachable_info* %55, %struct.eh_region* %56, %struct.eh_region* %57)
  store i32 2, i32* %retval
  br label %return

if.end.58:                                        ; preds = %sw.bb.53
  %58 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %tobool59 = icmp ne %struct.reachable_info* %58, null
  br i1 %tobool59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.58
  %59 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u61 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %59, i32 0, i32 6
  %allowed62 = bitcast %union.anon* %u61 to %struct.anon.6*
  %type_list63 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed62, i32 0, i32 0
  %60 = load %union.tree_node*, %union.tree_node** %type_list63, align 8
  %61 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %types_allowed = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %61, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %types_allowed, align 8
  %call64 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %60, %union.tree_node* %62)
  %63 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %types_allowed65 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %63, i32 0, i32 1
  store %union.tree_node* %call64, %union.tree_node** %types_allowed65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %if.end.58
  %64 = load %union.tree_node*, %union.tree_node** %type_thrown.addr, align 8
  %tobool67 = icmp ne %union.tree_node* %64, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.78

land.lhs.true.68:                                 ; preds = %if.end.66
  %65 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** @lang_eh_type_covers, align 8
  %tobool69 = icmp ne i32 (%union.tree_node*, %union.tree_node*)* %65, null
  br i1 %tobool69, label %if.then.70, label %if.end.78

if.then.70:                                       ; preds = %land.lhs.true.68
  %66 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u71 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %66, i32 0, i32 6
  %allowed72 = bitcast %union.anon* %u71 to %struct.anon.6*
  %type_list73 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed72, i32 0, i32 0
  %67 = load %union.tree_node*, %union.tree_node** %type_list73, align 8
  %68 = load %union.tree_node*, %union.tree_node** %type_thrown.addr, align 8
  %call74 = call i32 @check_handled(%union.tree_node* %67, %union.tree_node* %68)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.then.70
  store i32 0, i32* %retval
  br label %return

if.else.77:                                       ; preds = %if.then.70
  %69 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %70 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %71 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  call void @add_reachable_handler(%struct.reachable_info* %69, %struct.eh_region* %70, %struct.eh_region* %71)
  store i32 2, i32* %retval
  br label %return

if.end.78:                                        ; preds = %land.lhs.true.68, %if.end.66
  %72 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %73 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %74 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  call void @add_reachable_handler(%struct.reachable_info* %72, %struct.eh_region* %73, %struct.eh_region* %74)
  store i32 1, i32* %retval
  br label %return

sw.bb.79:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.80:                                         ; preds = %entry
  %75 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %tobool81 = icmp ne %struct.reachable_info* %75, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.85

land.lhs.true.82:                                 ; preds = %sw.bb.80
  %76 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %handlers = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %76, i32 0, i32 2
  %77 = load %struct.rtx_def*, %struct.rtx_def** %handlers, align 8
  %tobool83 = icmp ne %struct.rtx_def* %77, null
  br i1 %tobool83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.82
  %78 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %79 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %80 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  call void @add_reachable_handler(%struct.reachable_info* %78, %struct.eh_region* %79, %struct.eh_region* %80)
  store i32 2, i32* %retval
  br label %return

if.else.85:                                       ; preds = %land.lhs.true.82, %sw.bb.80
  store i32 3, i32* %retval
  br label %return

sw.bb.86:                                         ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.86
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 3010, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.reachable_next_level, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.else.85, %if.then.84, %sw.bb.79, %if.end.78, %if.else.77, %if.then.76, %if.then.57, %for.end.52, %if.then.19, %if.then.16, %if.then, %sw.bb
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define zeroext i1 @can_throw_internal(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca %struct.rtx_def*, align 8
  %region = alloca %struct.eh_region*, align 8
  %type_thrown = alloca %union.tree_node*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %sub = alloca %struct.rtx_def*, align 8
  %how = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 32
  br i1 %cmp4, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 24
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtvec_def**
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx17, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load19 = load i32, i32* %13, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 34
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.50

land.lhs.true.23:                                 ; preds = %if.end.18
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load27 = load i32, i32* %16, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 141
  br i1 %cmp29, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %land.lhs.true.23
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.then.31
  %17 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %17, 3
  br i1 %cmp32, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %18 to i64
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 %idxprom34
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %sub, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %for.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %tobool = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.41
  %23 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %call = call zeroext i1 @can_throw_internal(%struct.rtx_def* %23)
  br i1 %call, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.42
  store i1 true, i1* %retval
  br label %return

if.end.44:                                        ; preds = %for.body.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %24 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 2
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %sub, align 8
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.23, %if.end.18
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call51 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %27, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call51, %struct.rtx_def** %note, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool52 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool52, label %lor.lhs.false, label %if.then.60

lor.lhs.false:                                    ; preds = %if.end.50
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx57 to i64*
  %31 = load i64, i64* %rtwint, align 8
  %cmp58 = icmp sle i64 %31, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false, %if.end.50
  store i1 false, i1* %retval
  br label %return

if.end.61:                                        ; preds = %lor.lhs.false
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtwint67 = bitcast %union.rtunion_def* %arrayidx66 to i64*
  %34 = load i64, i64* %rtwint67, align 8
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 0
  %36 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %36, i32 0, i32 1
  %37 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx68 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %37, i64 %34
  %38 = load %struct.eh_region*, %struct.eh_region** %arrayidx68, align 8
  store %struct.eh_region* %38, %struct.eh_region** %region, align 8
  store %union.tree_node* null, %union.tree_node** %type_thrown, align 8
  %39 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 5
  %40 = load i32, i32* %type, align 4
  %cmp69 = icmp eq i32 %40, 6
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.61
  %41 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %41, i32 0, i32 6
  %throw = bitcast %union.anon* %u to %struct.anon.7*
  %type72 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw, i32 0, i32 0
  %42 = load %union.tree_node*, %union.tree_node** %type72, align 8
  store %union.tree_node* %42, %union.tree_node** %type_thrown, align 8
  %43 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %43, i32 0, i32 0
  %44 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %44, %struct.eh_region** %region, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.61
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.86, %if.end.73
  %45 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool75 = icmp ne %struct.eh_region* %45, null
  br i1 %tobool75, label %for.body.76, label %for.end.88

for.body.76:                                      ; preds = %for.cond.74
  %46 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %47 = load %union.tree_node*, %union.tree_node** %type_thrown, align 8
  %call77 = call i32 @reachable_next_level(%struct.eh_region* %46, %union.tree_node* %47, %struct.reachable_info* null)
  store i32 %call77, i32* %how, align 4
  %48 = load i32, i32* %how, align 4
  %cmp78 = icmp eq i32 %48, 3
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.76
  store i1 false, i1* %retval
  br label %return

if.end.81:                                        ; preds = %for.body.76
  %49 = load i32, i32* %how, align 4
  %cmp82 = icmp ne i32 %49, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  store i1 true, i1* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.81
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %50 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer87 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %50, i32 0, i32 0
  %51 = load %struct.eh_region*, %struct.eh_region** %outer87, align 8
  store %struct.eh_region* %51, %struct.eh_region** %region, align 8
  br label %for.cond.74

for.end.88:                                       ; preds = %for.cond.74
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end.88, %if.then.84, %if.then.80, %if.then.60, %for.end.49, %if.then.43, %if.then
  %52 = load i1, i1* %retval
  ret i1 %52
}

; Function Attrs: nounwind uwtable
define zeroext i1 @can_throw_external(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca %struct.rtx_def*, align 8
  %region = alloca %struct.eh_region*, align 8
  %type_thrown = alloca %union.tree_node*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %sub = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 32
  br i1 %cmp4, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 24
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtvec_def**
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx17, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load19 = load i32, i32* %13, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 34
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.50

land.lhs.true.23:                                 ; preds = %if.end.18
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load27 = load i32, i32* %16, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 141
  br i1 %cmp29, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %land.lhs.true.23
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.then.31
  %17 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %17, 3
  br i1 %cmp32, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %18 to i64
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 %idxprom34
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %sub, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %for.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %tobool = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.41
  %23 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %call = call zeroext i1 @can_throw_external(%struct.rtx_def* %23)
  br i1 %call, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.42
  store i1 true, i1* %retval
  br label %return

if.end.44:                                        ; preds = %for.body.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %24 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 2
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %sub, align 8
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.23, %if.end.18
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call51 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %27, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call51, %struct.rtx_def** %note, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool52 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool52, label %if.end.64, label %if.then.53

if.then.53:                                       ; preds = %if.end.50
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load54 = load i32, i32* %30, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 34
  br i1 %cmp56, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.53
  %31 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool58 = icmp ne i32 %31, 0
  br i1 %tobool58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 3
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %call62 = call i32 @may_trap_p(%struct.rtx_def* %33)
  %tobool63 = icmp ne i32 %call62, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %34 = phi i1 [ false, %lor.rhs ], [ %tobool63, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.then.53
  %35 = phi i1 [ true, %if.then.53 ], [ %34, %land.end ]
  store i1 %35, i1* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.50
  %36 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx69 to i64*
  %38 = load i64, i64* %rtwint, align 8
  %cmp70 = icmp sle i64 %38, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.64
  store i1 false, i1* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.64
  %39 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtwint79 = bitcast %union.rtunion_def* %arrayidx78 to i64*
  %41 = load i64, i64* %rtwint79, align 8
  %42 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %42, i32 0, i32 0
  %43 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %43, i32 0, i32 1
  %44 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx80 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %44, i64 %41
  %45 = load %struct.eh_region*, %struct.eh_region** %arrayidx80, align 8
  store %struct.eh_region* %45, %struct.eh_region** %region, align 8
  store %union.tree_node* null, %union.tree_node** %type_thrown, align 8
  %46 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 5
  %47 = load i32, i32* %type, align 4
  %cmp81 = icmp eq i32 %47, 6
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.end.73
  %48 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %48, i32 0, i32 6
  %throw = bitcast %union.anon* %u to %struct.anon.7*
  %type84 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %throw, i32 0, i32 0
  %49 = load %union.tree_node*, %union.tree_node** %type84, align 8
  store %union.tree_node* %49, %union.tree_node** %type_thrown, align 8
  %50 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %50, i32 0, i32 0
  %51 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %51, %struct.eh_region** %region, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.73
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.94, %if.end.85
  %52 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %tobool87 = icmp ne %struct.eh_region* %52, null
  br i1 %tobool87, label %for.body.88, label %for.end.96

for.body.88:                                      ; preds = %for.cond.86
  %53 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %54 = load %union.tree_node*, %union.tree_node** %type_thrown, align 8
  %call89 = call i32 @reachable_next_level(%struct.eh_region* %53, %union.tree_node* %54, %struct.reachable_info* null)
  %cmp90 = icmp uge i32 %call89, 2
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %for.body.88
  store i1 false, i1* %retval
  br label %return

if.end.93:                                        ; preds = %for.body.88
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %55 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %outer95 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %55, i32 0, i32 0
  %56 = load %struct.eh_region*, %struct.eh_region** %outer95, align 8
  store %struct.eh_region* %56, %struct.eh_region** %region, align 8
  br label %for.cond.86

for.end.96:                                       ; preds = %for.cond.86
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end.96, %if.then.92, %if.then.72, %lor.end, %for.end.49, %if.then.43, %if.then
  %57 = load i1, i1* %retval
  ret i1 %57
}

declare i32 @may_trap_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @nothrow_function_p() #0 {
entry:
  %retval = alloca i1, align 1
  %insn = alloca %struct.rtx_def*, align 8
  %0 = load i32, i32* @flag_exceptions, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1 = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call2 = call zeroext i1 @can_throw_external(%struct.rtx_def* %2)
  br i1 %call2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  store i1 false, i1* %retval
  br label %return

if.end.4:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %epilogue_delay_list = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 55
  %6 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_delay_list, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool6 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool6, label %for.body.7, label %for.end.15

for.body.7:                                       ; preds = %for.cond.5
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call8 = call zeroext i1 @can_throw_external(%struct.rtx_def* %8)
  br i1 %call8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.7
  store i1 false, i1* %retval
  br label %return

if.end.10:                                        ; preds = %for.body.7
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.end.15:                                       ; preds = %for.cond.5
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %for.end.15, %if.then.9, %if.then.3, %if.then
  %11 = load i1, i1* %retval
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define void @expand_builtin_unwind_init() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %has_nonlocal_label to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, -257
  %bf.set = or i32 %bf.clear, 256
  store i32 %bf.set, i32* %1, align 8
  call void @ix86_setup_frame_addresses()
  ret void
}

declare void @ix86_setup_frame_addresses() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_eh_return_data_regno(%union.tree_node* %arglist) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %arglist.addr = alloca %union.tree_node*, align 8
  %which = alloca %union.tree_node*, align 8
  %iwhich = alloca i64, align 8
  store %union.tree_node* %arglist, %union.tree_node** %arglist.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %arglist.addr, align 8
  %list = bitcast %union.tree_node* %0 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %1, %union.tree_node** %which, align 8
  %2 = load %union.tree_node*, %union.tree_node** %which, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %which, align 8
  %call = call i64 @tree_low_cst(%union.tree_node* %4, i32 1)
  store i64 %call, i64* %iwhich, align 8
  %5 = load i64, i64* %iwhich, align 8
  %cmp1 = icmp ult i64 %5, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %iwhich, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ 4294967295, %cond.false ]
  store i64 %cond, i64* %iwhich, align 8
  %7 = load i64, i64* %iwhich, align 8
  %cmp2 = icmp eq i64 %7, 4294967295
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %cond.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %cond.end
  %9 = load i32, i32* @target_flags, align 4
  %and = and i32 %9, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.end.4
  %10 = load i64, i64* %iwhich, align 8
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i32 0, i64 %10
  %11 = load i32, i32* %arrayidx, align 4
  br label %cond.end.8

cond.false.6:                                     ; preds = %if.end.4
  %12 = load i64, i64* %iwhich, align 8
  %arrayidx7 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i32 0, i64 %12
  %13 = load i32, i32* %arrayidx7, align 4
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.5
  %cond9 = phi i32 [ %11, %cond.true.5 ], [ %13, %cond.false.6 ]
  %conv = sext i32 %cond9 to i64
  store i64 %conv, i64* %iwhich, align 8
  %14 = load i64, i64* %iwhich, align 8
  %call10 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %14)
  store %struct.rtx_def* %call10, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %cond.end.8, %if.then.3, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %15
}

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_extract_return_addr(%union.tree_node* %addr_tree) #0 {
entry:
  %addr_tree.addr = alloca %union.tree_node*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %addr_tree, %union.tree_node** %addr_tree.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %addr_tree.addr, align 8
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %0, %struct.rtx_def* null, i32 %cond, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  ret %struct.rtx_def* %2
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_builtin_frob_return_addr(%union.tree_node* %addr_tree) #0 {
entry:
  %addr_tree.addr = alloca %union.tree_node*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %addr_tree, %union.tree_node** %addr_tree.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %addr_tree.addr, align 8
  %1 = load i32, i32* @ptr_mode, align 4
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %0, %struct.rtx_def* null, i32 %1, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  ret %struct.rtx_def* %2
}

; Function Attrs: nounwind uwtable
define void @expand_builtin_eh_return(%union.tree_node* %stackadj_tree, %union.tree_node* %handler_tree) #0 {
entry:
  %stackadj_tree.addr = alloca %union.tree_node*, align 8
  %handler_tree.addr = alloca %union.tree_node*, align 8
  %stackadj = alloca %struct.rtx_def*, align 8
  %handler = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %stackadj_tree, %union.tree_node** %stackadj_tree.addr, align 8
  store %union.tree_node* %handler_tree, %union.tree_node** %handler_tree.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %stackadj_tree.addr, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ehr_stackadj = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 15
  %3 = load %struct.rtx_def*, %struct.rtx_def** %ehr_stackadj, align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %0, %struct.rtx_def* %3, i32 0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %stackadj, align 8
  %4 = load %union.tree_node*, %union.tree_node** %handler_tree.addr, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 0
  %6 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %ehr_handler = getelementptr inbounds %struct.eh_status, %struct.eh_status* %6, i32 0, i32 16
  %7 = load %struct.rtx_def*, %struct.rtx_def** %ehr_handler, align 8
  %call2 = call %struct.rtx_def* @expand_expr(%union.tree_node* %4, %struct.rtx_def* %7, i32 0, i32 0)
  store %struct.rtx_def* %call2, %struct.rtx_def** %handler, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh3 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh3, align 8
  %ehr_label = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %ehr_label, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %stackadj, align 8
  %call4 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %11)
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %eh5 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 0
  %13 = load %struct.eh_status*, %struct.eh_status** %eh5, align 8
  %ehr_stackadj6 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %13, i32 0, i32 15
  store %struct.rtx_def* %call4, %struct.rtx_def** %ehr_stackadj6, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %handler, align 8
  %call7 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %14)
  %15 = load %struct.function*, %struct.function** @cfun, align 8
  %eh8 = getelementptr inbounds %struct.function, %struct.function* %15, i32 0, i32 0
  %16 = load %struct.eh_status*, %struct.eh_status** %eh8, align 8
  %ehr_handler9 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %16, i32 0, i32 16
  store %struct.rtx_def* %call7, %struct.rtx_def** %ehr_handler9, align 8
  %call10 = call %struct.rtx_def* @gen_label_rtx()
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %eh11 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 0
  %18 = load %struct.eh_status*, %struct.eh_status** %eh11, align 8
  %ehr_label12 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %18, i32 0, i32 17
  store %struct.rtx_def* %call10, %struct.rtx_def** %ehr_label12, align 8
  br label %if.end.27

if.else:                                          ; preds = %entry
  %19 = load %struct.rtx_def*, %struct.rtx_def** %stackadj, align 8
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %eh13 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 0
  %21 = load %struct.eh_status*, %struct.eh_status** %eh13, align 8
  %ehr_stackadj14 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %21, i32 0, i32 15
  %22 = load %struct.rtx_def*, %struct.rtx_def** %ehr_stackadj14, align 8
  %cmp = icmp ne %struct.rtx_def* %19, %22
  br i1 %cmp, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  %23 = load %struct.function*, %struct.function** @cfun, align 8
  %eh16 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 0
  %24 = load %struct.eh_status*, %struct.eh_status** %eh16, align 8
  %ehr_stackadj17 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %24, i32 0, i32 15
  %25 = load %struct.rtx_def*, %struct.rtx_def** %ehr_stackadj17, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %stackadj, align 8
  %call18 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %25, %struct.rtx_def* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.else
  %27 = load %struct.rtx_def*, %struct.rtx_def** %handler, align 8
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %eh19 = getelementptr inbounds %struct.function, %struct.function* %28, i32 0, i32 0
  %29 = load %struct.eh_status*, %struct.eh_status** %eh19, align 8
  %ehr_handler20 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %29, i32 0, i32 16
  %30 = load %struct.rtx_def*, %struct.rtx_def** %ehr_handler20, align 8
  %cmp21 = icmp ne %struct.rtx_def* %27, %30
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end
  %31 = load %struct.function*, %struct.function** @cfun, align 8
  %eh23 = getelementptr inbounds %struct.function, %struct.function* %31, i32 0, i32 0
  %32 = load %struct.eh_status*, %struct.eh_status** %eh23, align 8
  %ehr_handler24 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %32, i32 0, i32 16
  %33 = load %struct.rtx_def*, %struct.rtx_def** %ehr_handler24, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %handler, align 8
  %call25 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %33, %struct.rtx_def* %34)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %eh28 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 0
  %36 = load %struct.eh_status*, %struct.eh_status** %eh28, align 8
  %ehr_label29 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %36, i32 0, i32 17
  %37 = load %struct.rtx_def*, %struct.rtx_def** %ehr_label29, align 8
  call void @emit_jump(%struct.rtx_def* %37)
  ret void
}

declare %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @expand_eh_return() #0 {
entry:
  %sa = alloca %struct.rtx_def*, align 8
  %ra = alloca %struct.rtx_def*, align 8
  %around_label = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ehr_label = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 17
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ehr_label, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool1 = icmp ne i32 %and, 0
  %cond = select i1 %tobool1, i32 5, i32 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %cond, i32 2)
  store %struct.rtx_def* %call, %struct.rtx_def** %sa, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %tobool2 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_eh_return = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 56
  %6 = bitcast i24* %calls_eh_return to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, -129
  %bf.set = or i32 %bf.clear, 128
  store i32 %bf.set, i32* %6, align 8
  %call5 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call5, %struct.rtx_def** %around_label, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call6 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  call void @emit_jump(%struct.rtx_def* %9)
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %eh7 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 0
  %11 = load %struct.eh_status*, %struct.eh_status** %eh7, align 8
  %ehr_label8 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %11, i32 0, i32 17
  %12 = load %struct.rtx_def*, %struct.rtx_def** %ehr_label8, align 8
  %call9 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %12)
  call void @clobber_return_register()
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %eh10 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 0
  %14 = load %struct.eh_status*, %struct.eh_status** %eh10, align 8
  %ehr_stackadj = getelementptr inbounds %struct.eh_status, %struct.eh_status* %14, i32 0, i32 15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %ehr_stackadj, align 8
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %eh11 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 0
  %17 = load %struct.eh_status*, %struct.eh_status** %eh11, align 8
  %ehr_handler = getelementptr inbounds %struct.eh_status, %struct.eh_status* %17, i32 0, i32 16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %ehr_handler, align 8
  %call12 = call %struct.rtx_def* @gen_eh_return(%struct.rtx_def* %15, %struct.rtx_def* %18)
  %call13 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call12)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %around_label, align 8
  %call14 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %19)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare void @clobber_return_register() #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_eh_return(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @convert_to_eh_region_ranges() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %iter = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %ar_hash = alloca %struct.htab*, align 8
  %last_action = alloca i32, align 4
  %last_action_insn = alloca %struct.rtx_def*, align 8
  %last_landing_pad = alloca %struct.rtx_def*, align 8
  %first_no_action_insn = alloca %struct.rtx_def*, align 8
  %call_site = alloca i32, align 4
  %region = alloca %struct.eh_region*, align 8
  %this_action = alloca i32, align 4
  %this_landing_pad = alloca %struct.rtx_def*, align 8
  %o = alloca %struct.eh_region*, align 8
  store i32 -3, i32* %last_action, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %last_action_insn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last_landing_pad, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %first_no_action_insn, align 8
  store i32 0, i32* %call_site, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %region_tree = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 0
  %2 = load %struct.eh_region*, %struct.eh_region** %region_tree, align 8
  %cmp = icmp eq %struct.eh_region* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.varray_head_tag* @varray_init(i64 64, i64 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 0
  %4 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %action_record_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %4, i32 0, i32 11
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %action_record_data, align 8
  %call2 = call %struct.htab* @htab_create(i64 31, i32 (i8*)* @action_record_hash, i32 (i8*, i8*)* @action_record_eq, void (i8*)* @free)
  store %struct.htab* %call2, %struct.htab** %ar_hash, align 8
  %call3 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call3, %struct.rtx_def** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.113, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %for.body, label %for.end.117

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.then.6, label %if.end.112

if.then.6:                                        ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load7 = load i32, i32* %11, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 32
  br i1 %cmp9, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.then.6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load12 = load i32, i32* %14, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 24
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %insn, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %land.lhs.true, %if.then.6
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call24 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %19, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call24, %struct.rtx_def** %note, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool25 = icmp ne %struct.rtx_def* %20, null
  br i1 %tobool25, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %if.end.23
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load27 = load i32, i32* %22, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 34
  br i1 %cmp29, label %if.end.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %23 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool31 = icmp ne i32 %23, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.then.38

land.lhs.true.32:                                 ; preds = %lor.lhs.false
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %call36 = call i32 @may_trap_p(%struct.rtx_def* %25)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.32, %lor.lhs.false
  br label %for.inc.113

if.end.39:                                        ; preds = %land.lhs.true.32, %if.then.26
  store i32 -1, i32* %this_action, align 4
  store %struct.eh_region* null, %struct.eh_region** %region, align 8
  br label %if.end.58

if.else:                                          ; preds = %if.end.23
  %26 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx44 to i64*
  %28 = load i64, i64* %rtwint, align 8
  %cmp45 = icmp sle i64 %28, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.else
  br label %for.inc.113

if.end.48:                                        ; preds = %if.else
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtwint54 = bitcast %union.rtunion_def* %arrayidx53 to i64*
  %31 = load i64, i64* %rtwint54, align 8
  %32 = load %struct.function*, %struct.function** @cfun, align 8
  %eh55 = getelementptr inbounds %struct.function, %struct.function* %32, i32 0, i32 0
  %33 = load %struct.eh_status*, %struct.eh_status** %eh55, align 8
  %region_array = getelementptr inbounds %struct.eh_status, %struct.eh_status* %33, i32 0, i32 1
  %34 = load %struct.eh_region**, %struct.eh_region*** %region_array, align 8
  %arrayidx56 = getelementptr inbounds %struct.eh_region*, %struct.eh_region** %34, i64 %31
  %35 = load %struct.eh_region*, %struct.eh_region** %arrayidx56, align 8
  store %struct.eh_region* %35, %struct.eh_region** %region, align 8
  %36 = load %struct.htab*, %struct.htab** %ar_hash, align 8
  %37 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  %call57 = call i32 @collect_one_action_chain(%struct.htab* %36, %struct.eh_region* %37)
  store i32 %call57, i32* %this_action, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.48, %if.end.39
  %38 = load i32, i32* %this_action, align 4
  %cmp59 = icmp ne i32 %38, -1
  br i1 %cmp59, label %if.then.61, label %if.else.64

if.then.61:                                       ; preds = %if.end.58
  %39 = load %struct.function*, %struct.function** @cfun, align 8
  %uses_eh_lsda = getelementptr inbounds %struct.function, %struct.function* %39, i32 0, i32 56
  %40 = bitcast i24* %uses_eh_lsda to i32*
  %bf.load62 = load i32, i32* %40, align 8
  %bf.clear63 = and i32 %bf.load62, -4194305
  %bf.set = or i32 %bf.clear63, 4194304
  store i32 %bf.set, i32* %40, align 8
  br label %if.end.69

if.else.64:                                       ; preds = %if.end.58
  %41 = load i32, i32* %last_action, align 4
  %cmp65 = icmp eq i32 %41, -3
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else.64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %first_no_action_insn, align 8
  store i32 -1, i32* %last_action, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.else.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.61
  %43 = load i32, i32* %this_action, align 4
  %cmp70 = icmp sge i32 %43, 0
  br i1 %cmp70, label %if.then.72, label %if.else.77

if.then.72:                                       ; preds = %if.end.69
  %44 = load %struct.eh_region*, %struct.eh_region** %region, align 8
  store %struct.eh_region* %44, %struct.eh_region** %o, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc, %if.then.72
  %45 = load %struct.eh_region*, %struct.eh_region** %o, align 8
  %landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %45, i32 0, i32 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  %tobool74 = icmp ne %struct.rtx_def* %46, null
  %lnot = xor i1 %tobool74, true
  br i1 %lnot, label %for.body.75, label %for.end

for.body.75:                                      ; preds = %for.cond.73
  br label %for.inc

for.inc:                                          ; preds = %for.body.75
  %47 = load %struct.eh_region*, %struct.eh_region** %o, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %47, i32 0, i32 0
  %48 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  store %struct.eh_region* %48, %struct.eh_region** %o, align 8
  br label %for.cond.73

for.end:                                          ; preds = %for.cond.73
  %49 = load %struct.eh_region*, %struct.eh_region** %o, align 8
  %landing_pad76 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %49, i32 0, i32 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad76, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %this_landing_pad, align 8
  br label %if.end.78

if.else.77:                                       ; preds = %if.end.69
  store %struct.rtx_def* null, %struct.rtx_def** %this_landing_pad, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %for.end
  %51 = load i32, i32* %last_action, align 4
  %52 = load i32, i32* %this_action, align 4
  %cmp79 = icmp ne i32 %51, %52
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.78
  %53 = load %struct.rtx_def*, %struct.rtx_def** %last_landing_pad, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %this_landing_pad, align 8
  %cmp82 = icmp ne %struct.rtx_def* %53, %54
  br i1 %cmp82, label %if.then.84, label %if.end.111

if.then.84:                                       ; preds = %lor.lhs.false.81, %if.end.78
  %55 = load i32, i32* %last_action, align 4
  %cmp85 = icmp sge i32 %55, -1
  br i1 %cmp85, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %if.then.84
  %56 = load %struct.rtx_def*, %struct.rtx_def** %first_no_action_insn, align 8
  %tobool88 = icmp ne %struct.rtx_def* %56, null
  br i1 %tobool88, label %if.then.89, label %if.end.94

if.then.89:                                       ; preds = %if.then.87
  %call90 = call i32 @add_call_site(%struct.rtx_def* null, i32 0)
  store i32 %call90, i32* %call_site, align 4
  %57 = load %struct.rtx_def*, %struct.rtx_def** %first_no_action_insn, align 8
  %call91 = call %struct.rtx_def* @emit_note_before(i32 -86, %struct.rtx_def* %57)
  store %struct.rtx_def* %call91, %struct.rtx_def** %note, align 8
  %58 = load i32, i32* %call_site, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx93 to i32*
  store i32 %58, i32* %rtint, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %first_no_action_insn, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.89, %if.then.87
  %60 = load %struct.rtx_def*, %struct.rtx_def** %last_action_insn, align 8
  %call95 = call %struct.rtx_def* @emit_note_after(i32 -85, %struct.rtx_def* %60)
  store %struct.rtx_def* %call95, %struct.rtx_def** %note, align 8
  %61 = load i32, i32* %call_site, align 4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  store i32 %61, i32* %rtint98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.94, %if.then.84
  %63 = load i32, i32* %this_action, align 4
  %cmp100 = icmp sge i32 %63, -1
  br i1 %cmp100, label %if.then.102, label %if.end.110

if.then.102:                                      ; preds = %if.end.99
  %64 = load %struct.rtx_def*, %struct.rtx_def** %this_landing_pad, align 8
  %65 = load i32, i32* %this_action, align 4
  %cmp103 = icmp slt i32 %65, 0
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.102
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  %66 = load i32, i32* %this_action, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %66, %cond.false ]
  %call105 = call i32 @add_call_site(%struct.rtx_def* %64, i32 %cond)
  store i32 %call105, i32* %call_site, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  %call106 = call %struct.rtx_def* @emit_note_before(i32 -86, %struct.rtx_def* %67)
  store %struct.rtx_def* %call106, %struct.rtx_def** %note, align 8
  %68 = load i32, i32* %call_site, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 3
  %rtint109 = bitcast %union.rtunion_def* %arrayidx108 to i32*
  store i32 %68, i32* %rtint109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %cond.end, %if.end.99
  %70 = load i32, i32* %this_action, align 4
  store i32 %70, i32* %last_action, align 4
  %71 = load %struct.rtx_def*, %struct.rtx_def** %this_landing_pad, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %last_landing_pad, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %lor.lhs.false.81
  %72 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %last_action_insn, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %for.body
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112, %if.then.47, %if.then.38
  %73 = load %struct.rtx_def*, %struct.rtx_def** %iter, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 2
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %iter, align 8
  br label %for.cond

for.end.117:                                      ; preds = %for.cond
  %75 = load i32, i32* %last_action, align 4
  %cmp118 = icmp sge i32 %75, -1
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.127

land.lhs.true.120:                                ; preds = %for.end.117
  %76 = load %struct.rtx_def*, %struct.rtx_def** %first_no_action_insn, align 8
  %tobool121 = icmp ne %struct.rtx_def* %76, null
  br i1 %tobool121, label %if.end.127, label %if.then.122

if.then.122:                                      ; preds = %land.lhs.true.120
  %77 = load %struct.rtx_def*, %struct.rtx_def** %last_action_insn, align 8
  %call123 = call %struct.rtx_def* @emit_note_after(i32 -85, %struct.rtx_def* %77)
  store %struct.rtx_def* %call123, %struct.rtx_def** %note, align 8
  %78 = load i32, i32* %call_site, align 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 3
  %rtint126 = bitcast %union.rtunion_def* %arrayidx125 to i32*
  store i32 %78, i32* %rtint126, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.122, %land.lhs.true.120, %for.end.117
  %80 = load %struct.htab*, %struct.htab** %ar_hash, align 8
  call void @htab_delete(%struct.htab* %80)
  br label %return

return:                                           ; preds = %if.end.127, %if.then
  ret void
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @action_record_hash(i8* %pentry) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %entry1 = alloca %struct.action_record*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.action_record*
  store %struct.action_record* %1, %struct.action_record** %entry1, align 8
  %2 = load %struct.action_record*, %struct.action_record** %entry1, align 8
  %next = getelementptr inbounds %struct.action_record, %struct.action_record* %2, i32 0, i32 2
  %3 = load i32, i32* %next, align 4
  %mul = mul nsw i32 %3, 1009
  %4 = load %struct.action_record*, %struct.action_record** %entry1, align 8
  %filter = getelementptr inbounds %struct.action_record, %struct.action_record* %4, i32 0, i32 1
  %5 = load i32, i32* %filter, align 4
  %add = add nsw i32 %mul, %5
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal i32 @action_record_eq(i8* %pentry, i8* %pdata) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %pdata.addr = alloca i8*, align 8
  %entry1 = alloca %struct.action_record*, align 8
  %data = alloca %struct.action_record*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  store i8* %pdata, i8** %pdata.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.action_record*
  store %struct.action_record* %1, %struct.action_record** %entry1, align 8
  %2 = load i8*, i8** %pdata.addr, align 8
  %3 = bitcast i8* %2 to %struct.action_record*
  store %struct.action_record* %3, %struct.action_record** %data, align 8
  %4 = load %struct.action_record*, %struct.action_record** %entry1, align 8
  %filter = getelementptr inbounds %struct.action_record, %struct.action_record* %4, i32 0, i32 1
  %5 = load i32, i32* %filter, align 4
  %6 = load %struct.action_record*, %struct.action_record** %data, align 8
  %filter2 = getelementptr inbounds %struct.action_record, %struct.action_record* %6, i32 0, i32 1
  %7 = load i32, i32* %filter2, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load %struct.action_record*, %struct.action_record** %entry1, align 8
  %next = getelementptr inbounds %struct.action_record, %struct.action_record* %8, i32 0, i32 2
  %9 = load i32, i32* %next, align 4
  %10 = load %struct.action_record*, %struct.action_record** %data, align 8
  %next3 = getelementptr inbounds %struct.action_record, %struct.action_record* %10, i32 0, i32 2
  %11 = load i32, i32* %next3, align 4
  %cmp4 = icmp eq i32 %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @collect_one_action_chain(%struct.htab* %ar_hash, %struct.eh_region* %region) #0 {
entry:
  %retval = alloca i32, align 4
  %ar_hash.addr = alloca %struct.htab*, align 8
  %region.addr = alloca %struct.eh_region*, align 8
  %c = alloca %struct.eh_region*, align 8
  %next = alloca i32, align 4
  %filter = alloca i32, align 4
  %flt_node = alloca %union.tree_node*, align 8
  %filter44 = alloca i32, align 4
  store %struct.htab* %ar_hash, %struct.htab** %ar_hash.addr, align 8
  store %struct.eh_region* %region, %struct.eh_region** %region.addr, align 8
  %0 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %cmp = icmp eq %struct.eh_region* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %type = getelementptr inbounds %struct.eh_region, %struct.eh_region* %1, i32 0, i32 5
  %2 = load i32, i32* %type, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 4, label %sw.bb.59
    i32 5, label %sw.bb.67
    i32 3, label %sw.bb.68
    i32 6, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %4 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %outer = getelementptr inbounds %struct.eh_region, %struct.eh_region* %4, i32 0, i32 0
  %5 = load %struct.eh_region*, %struct.eh_region** %outer, align 8
  %call = call i32 @collect_one_action_chain(%struct.htab* %3, %struct.eh_region* %5)
  store i32 %call, i32* %next, align 4
  %6 = load i32, i32* %next, align 4
  %cmp1 = icmp sle i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  %7 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %outer4 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %7, i32 0, i32 0
  %8 = load %struct.eh_region*, %struct.eh_region** %outer4, align 8
  store %struct.eh_region* %8, %struct.eh_region** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %9 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %tobool = icmp ne %struct.eh_region* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %type5 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %10, i32 0, i32 5
  %11 = load i32, i32* %type5, align 4
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %12 = load i32, i32* %next, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %13 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %outer9 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %13, i32 0, i32 0
  %14 = load %struct.eh_region*, %struct.eh_region** %outer9, align 8
  store %struct.eh_region* %14, %struct.eh_region** %c, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %16 = load i32, i32* %next, align 4
  %call10 = call i32 @add_action_record(%struct.htab* %15, i32 0, i32 %16)
  store i32 %call10, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %if.end
  store i32 -3, i32* %next, align 4
  %17 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 6
  %try = bitcast %union.anon* %u to %struct.anon*
  %last_catch = getelementptr inbounds %struct.anon, %struct.anon* %try, i32 0, i32 1
  %18 = load %struct.eh_region*, %struct.eh_region** %last_catch, align 8
  store %struct.eh_region* %18, %struct.eh_region** %c, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.55, %sw.bb.11
  %19 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %tobool13 = icmp ne %struct.eh_region* %19, null
  br i1 %tobool13, label %for.body.14, label %for.end.58

for.body.14:                                      ; preds = %for.cond.12
  %20 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u15 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 6
  %catch = bitcast %union.anon* %u15 to %struct.anon.5*
  %type_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %type_list, align 8
  %cmp16 = icmp eq %union.tree_node* %21, null
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body.14
  %22 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u18 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %22, i32 0, i32 6
  %catch19 = bitcast %union.anon* %u18 to %struct.anon.5*
  %filter_list = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch19, i32 0, i32 3
  %23 = load %union.tree_node*, %union.tree_node** %filter_list, align 8
  %list = bitcast %union.tree_node* %23 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %24 = load %union.tree_node*, %union.tree_node** %value, align 8
  %int_cst = bitcast %union.tree_node* %24 to %struct.tree_int_cst*
  %int_cst20 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon.0, %struct.anon.0* %int_cst20, i32 0, i32 0
  %25 = load i64, i64* %low, align 8
  %conv = trunc i64 %25 to i32
  store i32 %conv, i32* %filter, align 4
  %26 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %27 = load i32, i32* %filter, align 4
  %call21 = call i32 @add_action_record(%struct.htab* %26, i32 %27, i32 0)
  store i32 %call21, i32* %next, align 4
  br label %if.end.54

if.else:                                          ; preds = %for.body.14
  %28 = load i32, i32* %next, align 4
  %cmp22 = icmp eq i32 %28, -3
  br i1 %cmp22, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.else
  %29 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %30 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %outer25 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %30, i32 0, i32 0
  %31 = load %struct.eh_region*, %struct.eh_region** %outer25, align 8
  %call26 = call i32 @collect_one_action_chain(%struct.htab* %29, %struct.eh_region* %31)
  store i32 %call26, i32* %next, align 4
  %32 = load i32, i32* %next, align 4
  %cmp27 = icmp eq i32 %32, -1
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.24
  store i32 0, i32* %next, align 4
  br label %if.end.36

if.else.30:                                       ; preds = %if.then.24
  %33 = load i32, i32* %next, align 4
  %cmp31 = icmp sle i32 %33, 0
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.30
  %34 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %call34 = call i32 @add_action_record(%struct.htab* %34, i32 0, i32 0)
  store i32 %call34, i32* %next, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.else
  %35 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u38 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %35, i32 0, i32 6
  %catch39 = bitcast %union.anon* %u38 to %struct.anon.5*
  %filter_list40 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch39, i32 0, i32 3
  %36 = load %union.tree_node*, %union.tree_node** %filter_list40, align 8
  store %union.tree_node* %36, %union.tree_node** %flt_node, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.52, %if.end.37
  %37 = load %union.tree_node*, %union.tree_node** %flt_node, align 8
  %tobool42 = icmp ne %union.tree_node* %37, null
  br i1 %tobool42, label %for.body.43, label %for.end.53

for.body.43:                                      ; preds = %for.cond.41
  %38 = load %union.tree_node*, %union.tree_node** %flt_node, align 8
  %list45 = bitcast %union.tree_node* %38 to %struct.tree_list*
  %value46 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list45, i32 0, i32 2
  %39 = load %union.tree_node*, %union.tree_node** %value46, align 8
  %int_cst47 = bitcast %union.tree_node* %39 to %struct.tree_int_cst*
  %int_cst48 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst47, i32 0, i32 2
  %low49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %int_cst48, i32 0, i32 0
  %40 = load i64, i64* %low49, align 8
  %conv50 = trunc i64 %40 to i32
  store i32 %conv50, i32* %filter44, align 4
  %41 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %42 = load i32, i32* %filter44, align 4
  %43 = load i32, i32* %next, align 4
  %call51 = call i32 @add_action_record(%struct.htab* %41, i32 %42, i32 %43)
  store i32 %call51, i32* %next, align 4
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.43
  %44 = load %union.tree_node*, %union.tree_node** %flt_node, align 8
  %common = bitcast %union.tree_node* %44 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %45 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %45, %union.tree_node** %flt_node, align 8
  br label %for.cond.41

for.end.53:                                       ; preds = %for.cond.41
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %if.then.17
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %46 = load %struct.eh_region*, %struct.eh_region** %c, align 8
  %u56 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 6
  %catch57 = bitcast %union.anon* %u56 to %struct.anon.5*
  %prev_catch = getelementptr inbounds %struct.anon.5, %struct.anon.5* %catch57, i32 0, i32 1
  %47 = load %struct.eh_region*, %struct.eh_region** %prev_catch, align 8
  store %struct.eh_region* %47, %struct.eh_region** %c, align 8
  br label %for.cond.12

for.end.58:                                       ; preds = %for.cond.12
  %48 = load i32, i32* %next, align 4
  store i32 %48, i32* %retval
  br label %return

sw.bb.59:                                         ; preds = %if.end
  %49 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %50 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %outer60 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %50, i32 0, i32 0
  %51 = load %struct.eh_region*, %struct.eh_region** %outer60, align 8
  %call61 = call i32 @collect_one_action_chain(%struct.htab* %49, %struct.eh_region* %51)
  store i32 %call61, i32* %next, align 4
  %52 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %53 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %u62 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %53, i32 0, i32 6
  %allowed = bitcast %union.anon* %u62 to %struct.anon.6*
  %filter63 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %allowed, i32 0, i32 1
  %54 = load i32, i32* %filter63, align 4
  %55 = load i32, i32* %next, align 4
  %cmp64 = icmp slt i32 %55, 0
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.59
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.59
  %56 = load i32, i32* %next, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %56, %cond.false ]
  %call66 = call i32 @add_action_record(%struct.htab* %52, i32 %54, i32 %cond)
  store i32 %call66, i32* %retval
  br label %return

sw.bb.67:                                         ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

sw.bb.68:                                         ; preds = %if.end, %if.end
  %57 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %58 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %outer69 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %58, i32 0, i32 0
  %59 = load %struct.eh_region*, %struct.eh_region** %outer69, align 8
  %call70 = call i32 @collect_one_action_chain(%struct.htab* %57, %struct.eh_region* %59)
  store i32 %call70, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 3549, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.collect_one_action_chain, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %sw.bb.68, %sw.bb.67, %cond.end, %for.end.58, %for.end, %if.then.7, %if.then.2, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @add_call_site(%struct.rtx_def* %landing_pad, i32 %action) #0 {
entry:
  %landing_pad.addr = alloca %struct.rtx_def*, align 8
  %action.addr = alloca i32, align 4
  %data = alloca %struct.call_site_record*, align 8
  %used = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.rtx_def* %landing_pad, %struct.rtx_def** %landing_pad.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 0
  %1 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %call_site_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %1, i32 0, i32 12
  %2 = load %struct.call_site_record*, %struct.call_site_record** %call_site_data, align 8
  store %struct.call_site_record* %2, %struct.call_site_record** %data, align 8
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 0
  %4 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %call_site_data_used = getelementptr inbounds %struct.eh_status, %struct.eh_status* %4, i32 0, i32 13
  %5 = load i32, i32* %call_site_data_used, align 4
  store i32 %5, i32* %used, align 4
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %eh2 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 0
  %7 = load %struct.eh_status*, %struct.eh_status** %eh2, align 8
  %call_site_data_size = getelementptr inbounds %struct.eh_status, %struct.eh_status* %7, i32 0, i32 14
  %8 = load i32, i32* %call_site_data_size, align 4
  store i32 %8, i32* %size, align 4
  %9 = load i32, i32* %used, align 4
  %10 = load i32, i32* %size, align 4
  %cmp = icmp sge i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %size, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %12, 2
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ 64, %cond.false ]
  store i32 %cond, i32* %size, align 4
  %13 = load %struct.call_site_record*, %struct.call_site_record** %data, align 8
  %14 = bitcast %struct.call_site_record* %13 to i8*
  %15 = load i32, i32* %size, align 4
  %conv = sext i32 %15 to i64
  %mul3 = mul i64 16, %conv
  %call = call i8* @xrealloc(i8* %14, i64 %mul3)
  %16 = bitcast i8* %call to %struct.call_site_record*
  store %struct.call_site_record* %16, %struct.call_site_record** %data, align 8
  %17 = load %struct.call_site_record*, %struct.call_site_record** %data, align 8
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %eh4 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 0
  %19 = load %struct.eh_status*, %struct.eh_status** %eh4, align 8
  %call_site_data5 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %19, i32 0, i32 12
  store %struct.call_site_record* %17, %struct.call_site_record** %call_site_data5, align 8
  %20 = load i32, i32* %size, align 4
  %21 = load %struct.function*, %struct.function** @cfun, align 8
  %eh6 = getelementptr inbounds %struct.function, %struct.function* %21, i32 0, i32 0
  %22 = load %struct.eh_status*, %struct.eh_status** %eh6, align 8
  %call_site_data_size7 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %22, i32 0, i32 14
  store i32 %20, i32* %call_site_data_size7, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %23 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad.addr, align 8
  %24 = load i32, i32* %used, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.call_site_record*, %struct.call_site_record** %data, align 8
  %arrayidx = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %25, i64 %idxprom
  %landing_pad8 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %arrayidx, i32 0, i32 0
  store %struct.rtx_def* %23, %struct.rtx_def** %landing_pad8, align 8
  %26 = load i32, i32* %action.addr, align 4
  %27 = load i32, i32* %used, align 4
  %idxprom9 = sext i32 %27 to i64
  %28 = load %struct.call_site_record*, %struct.call_site_record** %data, align 8
  %arrayidx10 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %28, i64 %idxprom9
  %action11 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %arrayidx10, i32 0, i32 1
  store i32 %26, i32* %action11, align 4
  %29 = load i32, i32* %used, align 4
  %add = add nsw i32 %29, 1
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %eh12 = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 0
  %31 = load %struct.eh_status*, %struct.eh_status** %eh12, align 8
  %call_site_data_used13 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %31, i32 0, i32 13
  store i32 %add, i32* %call_site_data_used13, align 4
  %32 = load i32, i32* %used, align 4
  %33 = load i32, i32* @call_site_base, align 4
  %add14 = add nsw i32 %32, %33
  ret i32 %add14
}

declare %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_note_after(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @output_function_exception_table() #0 {
entry:
  %tt_format = alloca i32, align 4
  %cs_format = alloca i32, align 4
  %lp_format = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ttype_label = alloca [32 x i8], align 16
  %cs_after_size_label = alloca [32 x i8], align 16
  %cs_end_label = alloca [32 x i8], align 16
  %have_tt_data = alloca i32, align 4
  %funcdef_number = alloca i32, align 4
  %tt_format_size = alloca i32, align 4
  %ttype_after_disp_label = alloca [32 x i8], align 16
  %type = alloca %union.tree_node*, align 8
  %value = alloca %struct.rtx_def*, align 8
  store i32 0, i32* %tt_format_size, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %uses_eh_lsda = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %uses_eh_lsda to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 22
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @current_funcdef_number, align 4
  store i32 %2, i32* %funcdef_number, align 4
  %3 = load void ()*, void ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 11), align 8
  call void %3()
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 0
  %5 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ttype_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %5, i32 0, i32 9
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 1
  %7 = load i64, i64* %elements_used, align 8
  %cmp = icmp ugt i64 %7, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %ehspec_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 10
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data, align 8
  %elements_used2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 1
  %11 = load i64, i64* %elements_used2, align 8
  %cmp3 = icmp ugt i64 %11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %12 = phi i1 [ true, %if.end ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %have_tt_data, align 4
  %13 = load i32, i32* %have_tt_data, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %lor.end
  store i32 255, i32* %tt_format, align 4
  br label %if.end.8

if.else:                                          ; preds = %lor.end
  %14 = load i32, i32* @flag_pic, align 4
  %tobool6 = icmp ne i32 %14, 0
  %cond = select i1 %tobool6, i32 155, i32 0
  store i32 %cond, i32* %tt_format, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %ttype_label, i32 0, i32 0
  %15 = load i32, i32* %funcdef_number, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %15) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %16 = load i32, i32* %tt_format, align 4
  %call7 = call i32 @size_of_encoded_value(i32 %16)
  store i32 %call7, i32* %tt_format_size, align 4
  %17 = load i32, i32* %tt_format_size, align 4
  %mul = mul nsw i32 %17, 8
  call void @assemble_align(i32 %mul)
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %if.then.5
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %19 = load i32, i32* %funcdef_number, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %19)
  br label %do.end.11

do.end.11:                                        ; preds = %do.body.9
  store i32 255, i32* %lp_format, align 4
  %20 = load i32, i32* %lp_format, align 4
  %conv = sext i32 %20 to i64
  %21 = load i32, i32* %lp_format, align 4
  %call12 = call i8* @eh_data_format_name(i32 %21)
  call void (i32, i64, i8*, ...) @dw2_asm_output_data(i32 1, i64 %conv, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %call12)
  %22 = load i32, i32* %tt_format, align 4
  %conv13 = sext i32 %22 to i64
  %23 = load i32, i32* %tt_format, align 4
  %call14 = call i8* @eh_data_format_name(i32 %23)
  call void (i32, i64, i8*, ...) @dw2_asm_output_data(i32 1, i64 %conv13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %call14)
  %24 = load i32, i32* %have_tt_data, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %do.end.11
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %arraydecay18 = getelementptr inbounds [32 x i8], [32 x i8]* %ttype_after_disp_label, i32 0, i32 0
  %25 = load i32, i32* %funcdef_number, align 4
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %25) #4
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.17
  %arraydecay21 = getelementptr inbounds [32 x i8], [32 x i8]* %ttype_label, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [32 x i8], [32 x i8]* %ttype_after_disp_label, i32 0, i32 0
  call void (i8*, i8*, i8*, ...) @dw2_asm_output_delta_uleb128(i8* %arraydecay21, i8* %arraydecay22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay23 = getelementptr inbounds [32 x i8], [32 x i8]* %ttype_after_disp_label, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %26, i8* %arraydecay23)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.20, %do.end.11
  store i32 1, i32* %cs_format, align 4
  %28 = load i32, i32* %cs_format, align 4
  %conv26 = sext i32 %28 to i64
  %29 = load i32, i32* %cs_format, align 4
  %call27 = call i8* @eh_data_format_name(i32 %29)
  call void (i32, i64, i8*, ...) @dw2_asm_output_data(i32 1, i64 %conv26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* %call27)
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.25
  %arraydecay29 = getelementptr inbounds [32 x i8], [32 x i8]* %cs_after_size_label, i32 0, i32 0
  %30 = load i32, i32* %funcdef_number, align 4
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %30) #4
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.28
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %arraydecay33 = getelementptr inbounds [32 x i8], [32 x i8]* %cs_end_label, i32 0, i32 0
  %31 = load i32, i32* %funcdef_number, align 4
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %31) #4
  br label %do.end.35

do.end.35:                                        ; preds = %do.body.32
  %arraydecay36 = getelementptr inbounds [32 x i8], [32 x i8]* %cs_end_label, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [32 x i8], [32 x i8]* %cs_after_size_label, i32 0, i32 0
  call void (i8*, i8*, i8*, ...) @dw2_asm_output_delta_uleb128(i8* %arraydecay36, i8* %arraydecay37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay38 = getelementptr inbounds [32 x i8], [32 x i8]* %cs_after_size_label, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %32, i8* %arraydecay38)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %33)
  call void @dw2_output_call_site_table()
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay40 = getelementptr inbounds [32 x i8], [32 x i8]* %cs_end_label, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %34, i8* %arraydecay40)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %35)
  %36 = load %struct.function*, %struct.function** @cfun, align 8
  %eh42 = getelementptr inbounds %struct.function, %struct.function* %36, i32 0, i32 0
  %37 = load %struct.eh_status*, %struct.eh_status** %eh42, align 8
  %action_record_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %37, i32 0, i32 11
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** %action_record_data, align 8
  %elements_used43 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 1
  %39 = load i64, i64* %elements_used43, align 8
  %conv44 = trunc i64 %39 to i32
  store i32 %conv44, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.35
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %n, align 4
  %cmp45 = icmp slt i32 %40, %41
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load %struct.function*, %struct.function** @cfun, align 8
  %eh47 = getelementptr inbounds %struct.function, %struct.function* %43, i32 0, i32 0
  %44 = load %struct.eh_status*, %struct.eh_status** %eh47, align 8
  %action_record_data48 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %44, i32 0, i32 11
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** %action_record_data48, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %45, i32 0, i32 4
  %uc = bitcast %union.varray_data_tag* %data to [1 x i8]*
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %uc, i32 0, i64 %idxprom
  %46 = load i8, i8* %arrayidx, align 1
  %conv49 = zext i8 %46 to i64
  %47 = load i32, i32* %i, align 4
  %tobool50 = icmp ne i32 %47, 0
  %cond51 = select i1 %tobool50, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)
  call void (i32, i64, i8*, ...) @dw2_asm_output_data(i32 1, i64 %conv49, i8* %cond51)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %have_tt_data, align 4
  %tobool52 = icmp ne i32 %49, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %for.end
  %50 = load i32, i32* %tt_format_size, align 4
  %mul54 = mul nsw i32 %50, 8
  call void @assemble_align(i32 %mul54)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %for.end
  %51 = load %struct.function*, %struct.function** @cfun, align 8
  %eh56 = getelementptr inbounds %struct.function, %struct.function* %51, i32 0, i32 0
  %52 = load %struct.eh_status*, %struct.eh_status** %eh56, align 8
  %ttype_data57 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %52, i32 0, i32 9
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data57, align 8
  %elements_used58 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %53, i32 0, i32 1
  %54 = load i64, i64* %elements_used58, align 8
  %conv59 = trunc i64 %54 to i32
  store i32 %conv59, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.82, %if.end.55
  %55 = load i32, i32* %i, align 4
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %i, align 4
  %cmp60 = icmp sgt i32 %55, 0
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %56 to i64
  %57 = load %struct.function*, %struct.function** @cfun, align 8
  %eh63 = getelementptr inbounds %struct.function, %struct.function* %57, i32 0, i32 0
  %58 = load %struct.eh_status*, %struct.eh_status** %eh63, align 8
  %ttype_data64 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %58, i32 0, i32 9
  %59 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data64, align 8
  %data65 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %59, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data65 to [1 x %union.tree_node*]*
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %idxprom62
  %60 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8
  store %union.tree_node* %60, %union.tree_node** %type, align 8
  %61 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp67 = icmp eq %union.tree_node* %61, null
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %while.body
  %62 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %62, %union.tree_node** %type, align 8
  br label %if.end.72

if.else.70:                                       ; preds = %while.body
  %63 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call71 = call %union.tree_node* @lookup_type_for_runtime(%union.tree_node* %63)
  store %union.tree_node* %call71, %union.tree_node** %type, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.69
  %64 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call73 = call %struct.rtx_def* @expand_expr(%union.tree_node* %64, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call73, %struct.rtx_def** %value, align 8
  %65 = load i32, i32* %tt_format, align 4
  %cmp74 = icmp eq i32 %65, 0
  br i1 %cmp74, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.72
  %66 = load i32, i32* %tt_format, align 4
  %cmp76 = icmp eq i32 %66, 80
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %lor.lhs.false, %if.end.72
  %67 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %68 = load i32, i32* %tt_format_size, align 4
  %69 = load i32, i32* %tt_format_size, align 4
  %mul79 = mul nsw i32 %69, 8
  %call80 = call zeroext i1 @assemble_integer(%struct.rtx_def* %67, i32 %68, i32 %mul79, i32 1)
  br label %if.end.82

if.else.81:                                       ; preds = %lor.lhs.false
  %70 = load i32, i32* %tt_format, align 4
  %71 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  call void (i32, %struct.rtx_def*, i8*, ...) @dw2_asm_output_encoded_addr_rtx(i32 %70, %struct.rtx_def* %71, i8* null)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.78
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load i32, i32* %have_tt_data, align 4
  %tobool83 = icmp ne i32 %72, 0
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %while.end
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay85 = getelementptr inbounds [32 x i8], [32 x i8]* %ttype_label, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %73, i8* %arraydecay85)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call86 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %74)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %while.end
  %75 = load %struct.function*, %struct.function** @cfun, align 8
  %eh88 = getelementptr inbounds %struct.function, %struct.function* %75, i32 0, i32 0
  %76 = load %struct.eh_status*, %struct.eh_status** %eh88, align 8
  %ehspec_data89 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %76, i32 0, i32 10
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data89, align 8
  %elements_used90 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 1
  %78 = load i64, i64* %elements_used90, align 8
  %conv91 = trunc i64 %78 to i32
  store i32 %conv91, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.105, %if.end.87
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %n, align 4
  %cmp93 = icmp slt i32 %79, %80
  br i1 %cmp93, label %for.body.95, label %for.end.107

for.body.95:                                      ; preds = %for.cond.92
  %81 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %81 to i64
  %82 = load %struct.function*, %struct.function** @cfun, align 8
  %eh97 = getelementptr inbounds %struct.function, %struct.function* %82, i32 0, i32 0
  %83 = load %struct.eh_status*, %struct.eh_status** %eh97, align 8
  %ehspec_data98 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %83, i32 0, i32 10
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data98, align 8
  %data99 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 4
  %uc100 = bitcast %union.varray_data_tag* %data99 to [1 x i8]*
  %arrayidx101 = getelementptr inbounds [1 x i8], [1 x i8]* %uc100, i32 0, i64 %idxprom96
  %85 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %85 to i64
  %86 = load i32, i32* %i, align 4
  %tobool103 = icmp ne i32 %86, 0
  %cond104 = select i1 %tobool103, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)
  call void (i32, i64, i8*, ...) @dw2_asm_output_data(i32 1, i64 %conv102, i8* %cond104)
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.95
  %87 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %87, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.92

for.end.107:                                      ; preds = %for.cond.92
  %88 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %88)
  br label %return

return:                                           ; preds = %for.end.107, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @size_of_encoded_value(i32) #1

declare void @assemble_align(i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @dw2_asm_output_data(i32, i64, i8*, ...) #1

declare i8* @eh_data_format_name(i32) #1

declare void @dw2_asm_output_delta_uleb128(i8*, i8*, i8*, ...) #1

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @dw2_output_call_site_table() #0 {
entry:
  %function_start_lab = alloca i8*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cs = alloca %struct.call_site_record*, align 8
  %reg_start_lab = alloca [32 x i8], align 16
  %reg_end_lab = alloca [32 x i8], align 16
  %landing_pad_lab = alloca [32 x i8], align 16
  %0 = load %union.tree_node*, %union.tree_node** @current_function_func_begin_label, align 8
  %identifier = bitcast %union.tree_node* %0 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %1 = load i8*, i8** %str, align 8
  store i8* %1, i8** %function_start_lab, align 8
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 0
  %3 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %call_site_data_used = getelementptr inbounds %struct.eh_status, %struct.eh_status* %3, i32 0, i32 13
  %4 = load i32, i32* %call_site_data_used, align 4
  store i32 %4, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh1 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh1, align 8
  %call_site_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 12
  %10 = load %struct.call_site_record*, %struct.call_site_record** %call_site_data, align 8
  %arrayidx = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %10, i64 %idxprom
  store %struct.call_site_record* %arrayidx, %struct.call_site_record** %cs, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %reg_start_lab, i32 0, i32 0
  %11 = load i32, i32* @call_site_base, align 4
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, %12
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 %add) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %reg_end_lab, i32 0, i32 0
  %13 = load i32, i32* @call_site_base, align 4
  %14 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %13, %14
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 %add4) #4
  br label %do.end.6

do.end.6:                                         ; preds = %do.body.2
  %15 = load %struct.call_site_record*, %struct.call_site_record** %cs, align 8
  %landing_pad = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  %tobool = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.6
  br label %do.body.7

do.body.7:                                        ; preds = %if.then
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %landing_pad_lab, i32 0, i32 0
  %17 = load %struct.call_site_record*, %struct.call_site_record** %cs, align 8
  %landing_pad9 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %17, i32 0, i32 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad9, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %19 = load i32, i32* %rtint, align 4
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 %19) #4
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.7
  br label %if.end

if.end:                                           ; preds = %do.end.12, %do.end.6
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %reg_start_lab, i32 0, i32 0
  %20 = load i8*, i8** %function_start_lab, align 8
  %21 = load i32, i32* %i, align 4
  call void (i8*, i8*, i8*, ...) @dw2_asm_output_delta_uleb128(i8* %arraydecay13, i8* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 %21)
  %arraydecay14 = getelementptr inbounds [32 x i8], [32 x i8]* %reg_end_lab, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [32 x i8], [32 x i8]* %reg_start_lab, i32 0, i32 0
  call void (i8*, i8*, i8*, ...) @dw2_asm_output_delta_uleb128(i8* %arraydecay14, i8* %arraydecay15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0))
  %22 = load %struct.call_site_record*, %struct.call_site_record** %cs, align 8
  %landing_pad16 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %22, i32 0, i32 0
  %23 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad16, align 8
  %tobool17 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %landing_pad_lab, i32 0, i32 0
  %24 = load i8*, i8** %function_start_lab, align 8
  call void (i8*, i8*, i8*, ...) @dw2_asm_output_delta_uleb128(i8* %arraydecay19, i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.20

if.else:                                          ; preds = %if.end
  call void (i64, i8*, ...) @dw2_asm_output_data_uleb128(i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %25 = load %struct.call_site_record*, %struct.call_site_record** %cs, align 8
  %action = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %25, i32 0, i32 1
  %26 = load i32, i32* %action, align 4
  %conv = sext i32 %26 to i64
  call void (i64, i8*, ...) @dw2_asm_output_data_uleb128(i64 %conv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %n, align 4
  %29 = load i32, i32* @call_site_base, align 4
  %add21 = add nsw i32 %29, %28
  store i32 %add21, i32* @call_site_base, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @lookup_type_for_runtime(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %slot = alloca %union.tree_node**, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @type_to_runtime_map, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %2 = bitcast %union.tree_node* %1 to i8*
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %conv = trunc i64 %and to i32
  %call = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %2, i32 %conv, i32 0)
  %5 = bitcast i8** %call to %union.tree_node**
  store %union.tree_node** %5, %union.tree_node*** %slot, align 8
  %6 = load %union.tree_node**, %union.tree_node*** %slot, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %list = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  ret %union.tree_node* %8
}

declare zeroext i1 @assemble_integer(%struct.rtx_def*, i32, i32, i32) #1

declare void @dw2_asm_output_encoded_addr_rtx(i32, %struct.rtx_def*, i8*, ...) #1

declare void @function_section(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_ehl_map_entry(i8** %pentry, i8* %data) #0 {
entry:
  %pentry.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ehl_map_entry*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  store i8** %pentry, i8*** %pentry.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8**, i8*** %pentry.addr, align 8
  %1 = bitcast i8** %0 to %struct.ehl_map_entry**
  %2 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %1, align 8
  store %struct.ehl_map_entry* %2, %struct.ehl_map_entry** %entry1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ehl_map_entry*, %struct.ehl_map_entry** %entry1, align 8
  %label = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %r__, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp = icmp ne %struct.rtx_def* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %7 = bitcast %struct.rtx_def* %6 to i8*
  %call = call i32 @ggc_set_mark(i8* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret i32 1
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #5

declare void @remove_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @get_max_uid() #1

declare %struct.rtx_def* @get_label_from_map(%struct.inline_remap*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @t2r_mark_1(i8** %slot, i8* %data) #0 {
entry:
  %slot.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %contents = alloca %union.tree_node*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store i8** %slot, i8*** %slot.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8**, i8*** %slot.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %union.tree_node*
  store %union.tree_node* %2, %union.tree_node** %contents, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %contents, align 8
  store %union.tree_node* %3, %union.tree_node** %t__, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %do.body
  %5 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %6 = bitcast %union.tree_node* %5 to i8*
  %call = call i32 @ggc_set_mark(i8* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 1
  %8 = load i64, i64* %elements_used, align 8
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 0
  %10 = load i64, i64* %num_elements, align 8
  %cmp2 = icmp uge i64 %8, %10
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body.1
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 0
  %13 = load i64, i64* %num_elements4, align 8
  %mul = mul i64 2, %13
  %call5 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %11, i64 %mul)
  store %struct.varray_head_tag* %call5, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body.1
  %14 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 1
  %16 = load i64, i64* %elements_used6, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %elements_used6, align 8
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data7 to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %16
  store %union.tree_node* %14, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  ret i32 1
}

declare i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ttypes_filter_hash(i8* %pentry) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ttypes_filter*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %1, %struct.ttypes_filter** %entry1, align 8
  %2 = load %struct.ttypes_filter*, %struct.ttypes_filter** %entry1, align 8
  %t = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %2, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %conv = trunc i64 %and to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @ttypes_filter_eq(i8* %pentry, i8* %pdata) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %pdata.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ttypes_filter*, align 8
  %data = alloca %union.tree_node*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  store i8* %pdata, i8** %pdata.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %1, %struct.ttypes_filter** %entry1, align 8
  %2 = load i8*, i8** %pdata.addr, align 8
  %3 = bitcast i8* %2 to %union.tree_node*
  store %union.tree_node* %3, %union.tree_node** %data, align 8
  %4 = load %struct.ttypes_filter*, %struct.ttypes_filter** %entry1, align 8
  %t = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %4, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %6 = load %union.tree_node*, %union.tree_node** %data, align 8
  %cmp = icmp eq %union.tree_node* %5, %6
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @ehspec_filter_hash(i8* %pentry) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ttypes_filter*, align 8
  %h = alloca i32, align 4
  %list = alloca %union.tree_node*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %1, %struct.ttypes_filter** %entry1, align 8
  store i32 0, i32* %h, align 4
  %2 = load %struct.ttypes_filter*, %struct.ttypes_filter** %entry1, align 8
  %t = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %2, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %3, %union.tree_node** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union.tree_node*, %union.tree_node** %list, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %h, align 4
  %shl = shl i32 %5, 5
  %6 = load i32, i32* %h, align 4
  %shr = lshr i32 %6, 27
  %add = add i32 %shl, %shr
  %conv = zext i32 %add to i64
  %7 = load %union.tree_node*, %union.tree_node** %list, align 8
  %list2 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  %9 = ptrtoint %union.tree_node* %8 to i64
  %and = and i64 %9, 262143
  %add3 = add i64 %conv, %and
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, i32* %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %union.tree_node*, %union.tree_node** %list, align 8
  %common = bitcast %union.tree_node* %10 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %11, %union.tree_node** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %h, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @ehspec_filter_eq(i8* %pentry, i8* %pdata) #0 {
entry:
  %pentry.addr = alloca i8*, align 8
  %pdata.addr = alloca i8*, align 8
  %entry1 = alloca %struct.ttypes_filter*, align 8
  %data = alloca %struct.ttypes_filter*, align 8
  store i8* %pentry, i8** %pentry.addr, align 8
  store i8* %pdata, i8** %pdata.addr, align 8
  %0 = load i8*, i8** %pentry.addr, align 8
  %1 = bitcast i8* %0 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %1, %struct.ttypes_filter** %entry1, align 8
  %2 = load i8*, i8** %pdata.addr, align 8
  %3 = bitcast i8* %2 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %3, %struct.ttypes_filter** %data, align 8
  %4 = load %struct.ttypes_filter*, %struct.ttypes_filter** %entry1, align 8
  %t = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %4, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %6 = load %struct.ttypes_filter*, %struct.ttypes_filter** %data, align 8
  %t2 = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %6, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %t2, align 8
  %call = call i32 @type_list_equal(%union.tree_node* %5, %union.tree_node* %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @add_ttypes_entry(%struct.htab* %ttypes_hash, %union.tree_node* %type) #0 {
entry:
  %ttypes_hash.addr = alloca %struct.htab*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %slot = alloca %struct.ttypes_filter**, align 8
  %n = alloca %struct.ttypes_filter*, align 8
  store %struct.htab* %ttypes_hash, %struct.htab** %ttypes_hash.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %struct.htab*, %struct.htab** %ttypes_hash.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %2 = bitcast %union.tree_node* %1 to i8*
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %4 = ptrtoint %union.tree_node* %3 to i64
  %and = and i64 %4, 262143
  %conv = trunc i64 %and to i32
  %call = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %2, i32 %conv, i32 1)
  %5 = bitcast i8** %call to %struct.ttypes_filter**
  store %struct.ttypes_filter** %5, %struct.ttypes_filter*** %slot, align 8
  %6 = load %struct.ttypes_filter**, %struct.ttypes_filter*** %slot, align 8
  %7 = load %struct.ttypes_filter*, %struct.ttypes_filter** %6, align 8
  store %struct.ttypes_filter* %7, %struct.ttypes_filter** %n, align 8
  %cmp = icmp eq %struct.ttypes_filter* %7, null
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %call2 = call noalias i8* @xmalloc(i64 16)
  %8 = bitcast i8* %call2 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %8, %struct.ttypes_filter** %n, align 8
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %10 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %t = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %10, i32 0, i32 0
  store %union.tree_node* %9, %union.tree_node** %t, align 8
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 0
  %12 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ttype_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %12, i32 0, i32 9
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 1
  %14 = load i64, i64* %elements_used, align 8
  %add = add i64 %14, 1
  %conv3 = trunc i64 %add to i32
  %15 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %filter = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %15, i32 0, i32 1
  store i32 %conv3, i32* %filter, align 4
  %16 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %17 = load %struct.ttypes_filter**, %struct.ttypes_filter*** %slot, align 8
  store %struct.ttypes_filter* %16, %struct.ttypes_filter** %17, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %eh4 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 0
  %19 = load %struct.eh_status*, %struct.eh_status** %eh4, align 8
  %ttype_data5 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %19, i32 0, i32 9
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data5, align 8
  %elements_used6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 1
  %21 = load i64, i64* %elements_used6, align 8
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %eh7 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 0
  %23 = load %struct.eh_status*, %struct.eh_status** %eh7, align 8
  %ttype_data8 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %23, i32 0, i32 9
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data8, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 0
  %25 = load i64, i64* %num_elements, align 8
  %cmp9 = icmp uge i64 %21, %25
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %do.body
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %eh12 = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 0
  %27 = load %struct.eh_status*, %struct.eh_status** %eh12, align 8
  %ttype_data13 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %27, i32 0, i32 9
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data13, align 8
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %eh14 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 0
  %30 = load %struct.eh_status*, %struct.eh_status** %eh14, align 8
  %ttype_data15 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %30, i32 0, i32 9
  %31 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data15, align 8
  %num_elements16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %31, i32 0, i32 0
  %32 = load i64, i64* %num_elements16, align 8
  %mul = mul i64 2, %32
  %call17 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %28, i64 %mul)
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %eh18 = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 0
  %34 = load %struct.eh_status*, %struct.eh_status** %eh18, align 8
  %ttype_data19 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %34, i32 0, i32 9
  store %struct.varray_head_tag* %call17, %struct.varray_head_tag** %ttype_data19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %do.body
  %35 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %36 = load %struct.function*, %struct.function** @cfun, align 8
  %eh20 = getelementptr inbounds %struct.function, %struct.function* %36, i32 0, i32 0
  %37 = load %struct.eh_status*, %struct.eh_status** %eh20, align 8
  %ttype_data21 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %37, i32 0, i32 9
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data21, align 8
  %elements_used22 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 1
  %39 = load i64, i64* %elements_used22, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %elements_used22, align 8
  %40 = load %struct.function*, %struct.function** @cfun, align 8
  %eh23 = getelementptr inbounds %struct.function, %struct.function* %40, i32 0, i32 0
  %41 = load %struct.eh_status*, %struct.eh_status** %eh23, align 8
  %ttype_data24 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %41, i32 0, i32 9
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ttype_data24, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %39
  store %union.tree_node* %35, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %do.end, %entry
  %43 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %filter26 = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %43, i32 0, i32 1
  %44 = load i32, i32* %filter26, align 4
  ret i32 %44
}

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @add_ehspec_entry(%struct.htab* %ehspec_hash, %struct.htab* %ttypes_hash, %union.tree_node* %list) #0 {
entry:
  %ehspec_hash.addr = alloca %struct.htab*, align 8
  %ttypes_hash.addr = alloca %struct.htab*, align 8
  %list.addr = alloca %union.tree_node*, align 8
  %slot = alloca %struct.ttypes_filter**, align 8
  %n = alloca %struct.ttypes_filter*, align 8
  %dummy = alloca %struct.ttypes_filter, align 8
  store %struct.htab* %ehspec_hash, %struct.htab** %ehspec_hash.addr, align 8
  store %struct.htab* %ttypes_hash, %struct.htab** %ttypes_hash.addr, align 8
  store %union.tree_node* %list, %union.tree_node** %list.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %t = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %dummy, i32 0, i32 0
  store %union.tree_node* %0, %union.tree_node** %t, align 8
  %1 = load %struct.htab*, %struct.htab** %ehspec_hash.addr, align 8
  %2 = bitcast %struct.ttypes_filter* %dummy to i8*
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* %2, i32 1)
  %3 = bitcast i8** %call to %struct.ttypes_filter**
  store %struct.ttypes_filter** %3, %struct.ttypes_filter*** %slot, align 8
  %4 = load %struct.ttypes_filter**, %struct.ttypes_filter*** %slot, align 8
  %5 = load %struct.ttypes_filter*, %struct.ttypes_filter** %4, align 8
  store %struct.ttypes_filter* %5, %struct.ttypes_filter** %n, align 8
  %cmp = icmp eq %struct.ttypes_filter* %5, null
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @xmalloc(i64 16)
  %6 = bitcast i8* %call1 to %struct.ttypes_filter*
  store %struct.ttypes_filter* %6, %struct.ttypes_filter** %n, align 8
  %7 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %8 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %t2 = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %8, i32 0, i32 0
  store %union.tree_node* %7, %union.tree_node** %t2, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 0
  %10 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %ehspec_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %10, i32 0, i32 10
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 1
  %12 = load i64, i64* %elements_used, align 8
  %add = add i64 %12, 1
  %sub = sub i64 0, %add
  %conv = trunc i64 %sub to i32
  %13 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %filter = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %13, i32 0, i32 1
  store i32 %conv, i32* %filter, align 4
  %14 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %15 = load %struct.ttypes_filter**, %struct.ttypes_filter*** %slot, align 8
  store %struct.ttypes_filter* %14, %struct.ttypes_filter** %15, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %tobool = icmp ne %union.tree_node* %16, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %eh3 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 0
  %18 = load %struct.eh_status*, %struct.eh_status** %eh3, align 8
  %ehspec_data4 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %18, i32 0, i32 10
  %19 = load %struct.htab*, %struct.htab** %ttypes_hash.addr, align 8
  %20 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %list5 = bitcast %union.tree_node* %20 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list5, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call6 = call i32 @add_ttypes_entry(%struct.htab* %19, %union.tree_node* %21)
  call void @push_uleb128(%struct.varray_head_tag** %ehspec_data4, i32 %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %union.tree_node*, %union.tree_node** %list.addr, align 8
  %common = bitcast %union.tree_node* %22 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %23, %union.tree_node** %list.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %24 = load %struct.function*, %struct.function** @cfun, align 8
  %eh7 = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 0
  %25 = load %struct.eh_status*, %struct.eh_status** %eh7, align 8
  %ehspec_data8 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %25, i32 0, i32 10
  %26 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data8, align 8
  %elements_used9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %26, i32 0, i32 1
  %27 = load i64, i64* %elements_used9, align 8
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %eh10 = getelementptr inbounds %struct.function, %struct.function* %28, i32 0, i32 0
  %29 = load %struct.eh_status*, %struct.eh_status** %eh10, align 8
  %ehspec_data11 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %29, i32 0, i32 10
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data11, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 0
  %31 = load i64, i64* %num_elements, align 8
  %cmp12 = icmp uge i64 %27, %31
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %do.body
  %32 = load %struct.function*, %struct.function** @cfun, align 8
  %eh15 = getelementptr inbounds %struct.function, %struct.function* %32, i32 0, i32 0
  %33 = load %struct.eh_status*, %struct.eh_status** %eh15, align 8
  %ehspec_data16 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %33, i32 0, i32 10
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data16, align 8
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %eh17 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 0
  %36 = load %struct.eh_status*, %struct.eh_status** %eh17, align 8
  %ehspec_data18 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %36, i32 0, i32 10
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data18, align 8
  %num_elements19 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 0
  %38 = load i64, i64* %num_elements19, align 8
  %mul = mul i64 2, %38
  %call20 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %34, i64 %mul)
  %39 = load %struct.function*, %struct.function** @cfun, align 8
  %eh21 = getelementptr inbounds %struct.function, %struct.function* %39, i32 0, i32 0
  %40 = load %struct.eh_status*, %struct.eh_status** %eh21, align 8
  %ehspec_data22 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %40, i32 0, i32 10
  store %struct.varray_head_tag* %call20, %struct.varray_head_tag** %ehspec_data22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %do.body
  %41 = load %struct.function*, %struct.function** @cfun, align 8
  %eh23 = getelementptr inbounds %struct.function, %struct.function* %41, i32 0, i32 0
  %42 = load %struct.eh_status*, %struct.eh_status** %eh23, align 8
  %ehspec_data24 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %42, i32 0, i32 10
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data24, align 8
  %elements_used25 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 1
  %44 = load i64, i64* %elements_used25, align 8
  %inc = add i64 %44, 1
  store i64 %inc, i64* %elements_used25, align 8
  %45 = load %struct.function*, %struct.function** @cfun, align 8
  %eh26 = getelementptr inbounds %struct.function, %struct.function* %45, i32 0, i32 0
  %46 = load %struct.eh_status*, %struct.eh_status** %eh26, align 8
  %ehspec_data27 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %46, i32 0, i32 10
  %47 = load %struct.varray_head_tag*, %struct.varray_head_tag** %ehspec_data27, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %47, i32 0, i32 4
  %uc = bitcast %union.varray_data_tag* %data to [1 x i8]*
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %uc, i32 0, i64 %44
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %entry
  %48 = load %struct.ttypes_filter*, %struct.ttypes_filter** %n, align 8
  %filter29 = getelementptr inbounds %struct.ttypes_filter, %struct.ttypes_filter* %48, i32 0, i32 1
  %49 = load i32, i32* %filter29, align 4
  ret i32 %49
}

declare i32 @type_list_equal(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @push_uleb128(%struct.varray_head_tag** %data_area, i32 %value) #0 {
entry:
  %data_area.addr = alloca %struct.varray_head_tag**, align 8
  %value.addr = alloca i32, align 4
  %byte = alloca i8, align 1
  store %struct.varray_head_tag** %data_area, %struct.varray_head_tag*** %data_area.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %value.addr, align 4
  %and = and i32 %0, 127
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %byte, align 1
  %1 = load i32, i32* %value.addr, align 4
  %shr = lshr i32 %1, 7
  store i32 %shr, i32* %value.addr, align 4
  %2 = load i32, i32* %value.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i8, i8* %byte, align 1
  %conv1 = zext i8 %3 to i32
  %or = or i32 %conv1, 128
  %conv2 = trunc i32 %or to i8
  store i8 %conv2, i8* %byte, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.end
  %4 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** %4, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 1
  %6 = load i64, i64* %elements_used, align 8
  %7 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** %7, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 0
  %9 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %6, %9
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.body.3
  %10 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %10, align 8
  %12 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** %12, align 8
  %num_elements6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 0
  %14 = load i64, i64* %num_elements6, align 8
  %mul = mul i64 2, %14
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %11, i64 %mul)
  %15 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %15, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.body.3
  %16 = load i8, i8* %byte, align 1
  %17 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** %17, align 8
  %elements_used8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 1
  %19 = load i64, i64* %elements_used8, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %elements_used8, align 8
  %20 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** %20, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 4
  %uc = bitcast %union.varray_data_tag* %data to [1 x i8]*
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %uc, i32 0, i64 %19
  store i8 %16, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %22 = load i32, i32* %value.addr, align 4
  %tobool9 = icmp ne i32 %22, 0
  br i1 %tobool9, label %do.body, label %do.end.10

do.end.10:                                        ; preds = %do.cond
  ret void
}

declare void @start_sequence() #1

declare void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @emit_library_call(%struct.rtx_def*, i32, i32, i32, ...) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @remove_exception_handler_label(%struct.rtx_def* %label) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  %slot = alloca %struct.ehl_map_entry**, align 8
  %tmp = alloca %struct.ehl_map_entry, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %cmp = icmp eq %struct.htab* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %label1 = getelementptr inbounds %struct.ehl_map_entry, %struct.ehl_map_entry* %tmp, i32 0, i32 0
  store %struct.rtx_def* %1, %struct.rtx_def** %label1, align 8
  %2 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %3 = bitcast %struct.ehl_map_entry* %tmp to i8*
  %call = call i8** @htab_find_slot(%struct.htab* %2, i8* %3, i32 0)
  %4 = bitcast i8** %call to %struct.ehl_map_entry**
  store %struct.ehl_map_entry** %4, %struct.ehl_map_entry*** %slot, align 8
  %5 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  %tobool = icmp ne %struct.ehl_map_entry** %5, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 2625, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.remove_exception_handler_label, i32 0, i32 0)) #6
  unreachable

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.htab*, %struct.htab** @exception_handler_label_map, align 8
  %7 = load %struct.ehl_map_entry**, %struct.ehl_map_entry*** %slot, align 8
  %8 = bitcast %struct.ehl_map_entry** %7 to i8**
  call void @htab_clear_slot(%struct.htab* %6, i8** %8)
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_reachable_handler(%struct.reachable_info* %info, %struct.eh_region* %lp_region, %struct.eh_region* %region) #0 {
entry:
  %info.addr = alloca %struct.reachable_info*, align 8
  %lp_region.addr = alloca %struct.eh_region*, align 8
  %region.addr = alloca %struct.eh_region*, align 8
  store %struct.reachable_info* %info, %struct.reachable_info** %info.addr, align 8
  store %struct.eh_region* %lp_region, %struct.eh_region** %lp_region.addr, align 8
  store %struct.eh_region* %region, %struct.eh_region** %region.addr, align 8
  %0 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %tobool = icmp ne %struct.reachable_info* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 0
  %2 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %built_landing_pads = getelementptr inbounds %struct.eh_status, %struct.eh_status* %2, i32 0, i32 7
  %3 = load i32, i32* %built_landing_pads, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %handlers = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %4, i32 0, i32 2
  %5 = load %struct.rtx_def*, %struct.rtx_def** %handlers, align 8
  %tobool3 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  %6 = load %struct.eh_region*, %struct.eh_region** %lp_region.addr, align 8
  %landing_pad = getelementptr inbounds %struct.eh_region, %struct.eh_region* %6, i32 0, i32 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %landing_pad, align 8
  %call = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %7, %struct.rtx_def* null)
  %8 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %handlers5 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %8, i32 0, i32 2
  store %struct.rtx_def* %call, %struct.rtx_def** %handlers5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %9 = load %struct.eh_region*, %struct.eh_region** %region.addr, align 8
  %label = getelementptr inbounds %struct.eh_region, %struct.eh_region* %9, i32 0, i32 7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %11 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %handlers7 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %11, i32 0, i32 2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %handlers7, align 8
  %call8 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %10, %struct.rtx_def* %12)
  %13 = load %struct.reachable_info*, %struct.reachable_info** %info.addr, align 8
  %handlers9 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %13, i32 0, i32 2
  store %struct.rtx_def* %call8, %struct.rtx_def** %handlers9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.else, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_handled(%union.tree_node* %handled, %union.tree_node* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %handled.addr = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %handled, %union.tree_node** %handled.addr, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** @lang_eh_type_covers, align 8
  %tobool = icmp ne i32 (%union.tree_node*, %union.tree_node*)* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %handled.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool1 = icmp ne %union.tree_node* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %cmp = icmp eq %union.tree_node* %4, %5
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %7, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.else:                                          ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** %handled.addr, align 8
  store %union.tree_node* %8, %union.tree_node** %t, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.11, %if.else
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool4 = icmp ne %union.tree_node* %9, null
  br i1 %tobool4, label %for.body.5, label %for.end.14

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** @lang_eh_type_covers, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list6 = bitcast %union.tree_node* %11 to %struct.tree_list*
  %value7 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list6, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %value7, align 8
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call = call i32 %10(%union.tree_node* %12, %union.tree_node* %13)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.5
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.body.5
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common12 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %chain13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %chain13, align 8
  store %union.tree_node* %15, %union.tree_node** %t, align 8
  br label %for.cond.3

for.end.14:                                       ; preds = %for.cond.3
  br label %if.end.15

if.end.15:                                        ; preds = %for.end.14, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.9, %if.then.2
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @add_action_record(%struct.htab* %ar_hash, i32 %filter, i32 %next) #0 {
entry:
  %ar_hash.addr = alloca %struct.htab*, align 8
  %filter.addr = alloca i32, align 4
  %next.addr = alloca i32, align 4
  %slot = alloca %struct.action_record**, align 8
  %new = alloca %struct.action_record*, align 8
  %tmp = alloca %struct.action_record, align 4
  store %struct.htab* %ar_hash, %struct.htab** %ar_hash.addr, align 8
  store i32 %filter, i32* %filter.addr, align 4
  store i32 %next, i32* %next.addr, align 4
  %0 = load i32, i32* %filter.addr, align 4
  %filter1 = getelementptr inbounds %struct.action_record, %struct.action_record* %tmp, i32 0, i32 1
  store i32 %0, i32* %filter1, align 4
  %1 = load i32, i32* %next.addr, align 4
  %next2 = getelementptr inbounds %struct.action_record, %struct.action_record* %tmp, i32 0, i32 2
  store i32 %1, i32* %next2, align 4
  %2 = load %struct.htab*, %struct.htab** %ar_hash.addr, align 8
  %3 = bitcast %struct.action_record* %tmp to i8*
  %call = call i8** @htab_find_slot(%struct.htab* %2, i8* %3, i32 1)
  %4 = bitcast i8** %call to %struct.action_record**
  store %struct.action_record** %4, %struct.action_record*** %slot, align 8
  %5 = load %struct.action_record**, %struct.action_record*** %slot, align 8
  %6 = load %struct.action_record*, %struct.action_record** %5, align 8
  store %struct.action_record* %6, %struct.action_record** %new, align 8
  %cmp = icmp eq %struct.action_record* %6, null
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %call3 = call noalias i8* @xmalloc(i64 12)
  %7 = bitcast i8* %call3 to %struct.action_record*
  store %struct.action_record* %7, %struct.action_record** %new, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %eh = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 0
  %9 = load %struct.eh_status*, %struct.eh_status** %eh, align 8
  %action_record_data = getelementptr inbounds %struct.eh_status, %struct.eh_status* %9, i32 0, i32 11
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** %action_record_data, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 1
  %11 = load i64, i64* %elements_used, align 8
  %add = add i64 %11, 1
  %conv = trunc i64 %add to i32
  %12 = load %struct.action_record*, %struct.action_record** %new, align 8
  %offset = getelementptr inbounds %struct.action_record, %struct.action_record* %12, i32 0, i32 0
  store i32 %conv, i32* %offset, align 4
  %13 = load i32, i32* %filter.addr, align 4
  %14 = load %struct.action_record*, %struct.action_record** %new, align 8
  %filter4 = getelementptr inbounds %struct.action_record, %struct.action_record* %14, i32 0, i32 1
  store i32 %13, i32* %filter4, align 4
  %15 = load i32, i32* %next.addr, align 4
  %16 = load %struct.action_record*, %struct.action_record** %new, align 8
  %next5 = getelementptr inbounds %struct.action_record, %struct.action_record* %16, i32 0, i32 2
  store i32 %15, i32* %next5, align 4
  %17 = load %struct.action_record*, %struct.action_record** %new, align 8
  %18 = load %struct.action_record**, %struct.action_record*** %slot, align 8
  store %struct.action_record* %17, %struct.action_record** %18, align 8
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  %eh6 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 0
  %20 = load %struct.eh_status*, %struct.eh_status** %eh6, align 8
  %action_record_data7 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %20, i32 0, i32 11
  %21 = load i32, i32* %filter.addr, align 4
  call void @push_sleb128(%struct.varray_head_tag** %action_record_data7, i32 %21)
  %22 = load i32, i32* %next.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %23 = load %struct.function*, %struct.function** @cfun, align 8
  %eh9 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 0
  %24 = load %struct.eh_status*, %struct.eh_status** %eh9, align 8
  %action_record_data10 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %24, i32 0, i32 11
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** %action_record_data10, align 8
  %elements_used11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 1
  %26 = load i64, i64* %elements_used11, align 8
  %add12 = add i64 %26, 1
  %27 = load i32, i32* %next.addr, align 4
  %conv13 = sext i32 %27 to i64
  %sub = sub i64 %conv13, %add12
  %conv14 = trunc i64 %sub to i32
  store i32 %conv14, i32* %next.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %eh15 = getelementptr inbounds %struct.function, %struct.function* %28, i32 0, i32 0
  %29 = load %struct.eh_status*, %struct.eh_status** %eh15, align 8
  %action_record_data16 = getelementptr inbounds %struct.eh_status, %struct.eh_status* %29, i32 0, i32 11
  %30 = load i32, i32* %next.addr, align 4
  call void @push_sleb128(%struct.varray_head_tag** %action_record_data16, i32 %30)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %31 = load %struct.action_record*, %struct.action_record** %new, align 8
  %offset18 = getelementptr inbounds %struct.action_record, %struct.action_record* %31, i32 0, i32 0
  %32 = load i32, i32* %offset18, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @push_sleb128(%struct.varray_head_tag** %data_area, i32 %value) #0 {
entry:
  %data_area.addr = alloca %struct.varray_head_tag**, align 8
  %value.addr = alloca i32, align 4
  %byte = alloca i8, align 1
  %more = alloca i32, align 4
  store %struct.varray_head_tag** %data_area, %struct.varray_head_tag*** %data_area.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %value.addr, align 4
  %and = and i32 %0, 127
  %conv = trunc i32 %and to i8
  store i8 %conv, i8* %byte, align 1
  %1 = load i32, i32* %value.addr, align 4
  %shr = ashr i32 %1, 7
  store i32 %shr, i32* %value.addr, align 4
  %2 = load i32, i32* %value.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %do.body
  %3 = load i8, i8* %byte, align 1
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 64
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %do.body
  %4 = load i32, i32* %value.addr, align 4
  %cmp6 = icmp eq i32 %4, -1
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i8, i8* %byte, align 1
  %conv8 = zext i8 %5 to i32
  %and9 = and i32 %conv8, 64
  %cmp10 = icmp ne i32 %and9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp10, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true ], [ %6, %land.end ]
  %lnot = xor i1 %7, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %more, align 4
  %8 = load i32, i32* %more, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %9 = load i8, i8* %byte, align 1
  %conv12 = zext i8 %9 to i32
  %or = or i32 %conv12, 128
  %conv13 = trunc i32 %or to i8
  store i8 %conv13, i8* %byte, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  br label %do.body.14

do.body.14:                                       ; preds = %if.end
  %10 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %10, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 1
  %12 = load i64, i64* %elements_used, align 8
  %13 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** %13, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 0
  %15 = load i64, i64* %num_elements, align 8
  %cmp15 = icmp uge i64 %12, %15
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %do.body.14
  %16 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** %16, align 8
  %18 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** %18, align 8
  %num_elements18 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 0
  %20 = load i64, i64* %num_elements18, align 8
  %mul = mul i64 2, %20
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %17, i64 %mul)
  %21 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %21, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %do.body.14
  %22 = load i8, i8* %byte, align 1
  %23 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** %23, align 8
  %elements_used20 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 1
  %25 = load i64, i64* %elements_used20, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %elements_used20, align 8
  %26 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %data_area.addr, align 8
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** %26, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 4
  %uc = bitcast %union.varray_data_tag* %data to [1 x i8]*
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %uc, i32 0, i64 %25
  store i8 %22, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %28 = load i32, i32* %more, align 4
  %tobool21 = icmp ne i32 %28, 0
  br i1 %tobool21, label %do.body, label %do.end.22

do.end.22:                                        ; preds = %do.cond
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

declare void @dw2_asm_output_data_uleb128(i64, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
