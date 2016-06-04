; ModuleID = 'varasm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.constant_descriptor**, %struct.pool_constant**, %struct.pool_constant*, %struct.pool_constant*, i64, %struct.rtx_def* }
%struct.constant_descriptor = type { %struct.constant_descriptor*, i8*, %struct.rtx_def*, %union.anon.4 }
%union.anon.4 = type { x86_fp80 }
%struct.pool_constant = type { %struct.constant_descriptor*, %struct.pool_constant*, %struct.pool_constant*, %struct.rtx_def*, i32, i32, i32, i64, i32 }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.anon.3 = type { i8*, i32 }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%struct.realvaluetype = type { [3 x i64] }
%struct.deferred_constant = type { %struct.deferred_constant*, %union.tree_node*, i32, i32 }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.in_named_entry = type { i8*, i32, i8 }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.anon.0 = type { i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_real_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.realvaluetype }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%union.real_extract = type { %struct.realvaluetype }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_complex = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node*, %union.tree_node* }
%struct.deferred_string = type { i8*, %union.tree_node*, i32 }
%struct.addr_const = type { %struct.rtx_def*, i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.rtx_const = type { i32, %union.anon.5 }
%union.anon.5 = type { [16 x i64] }
%struct.anon.6 = type { i64, i64 }

@in_section = internal global i32 0, align 4
@asm_out_file = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\09.section\09.rodata\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\09.text\00", align 1
@flag_shared_data = external global i32, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\09.data\00", align 1
@in_named_htab = internal global %struct.htab* null, align 8
@in_named_name = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"varasm.c\00", align 1
@__FUNCTION__.named_section_flags = private unnamed_addr constant [20 x i8] c"named_section_flags\00", align 1
@targetm = external global %struct.gcc_target, align 8
@tree_code_type = external global [256 x i8], align 16
@__FUNCTION__.named_section = private unnamed_addr constant [14 x i8] c"named_section\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s causes a section type conflict\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\09.bss\00", align 1
@flag_writable_strings = external global i32, align 4
@global_trees = external global [51 x %union.tree_node*], align 16
@flag_pic = external global i32, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c".data.rel\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c".data.rel.local\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c".data.rel.ro\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c".data.rel.ro.local\00", align 1
@flag_merge_constants = external global i32, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c".gcc_except_table\00", align 1
@mode_bitsize = external constant [59 x i16], align 16
@mode_size = external constant [59 x i8], align 16
@.str.12 = private unnamed_addr constant [17 x i8] c".rodata.str%d.%d\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\09.subsection\09-1\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c".rodata.cst%d\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@reg_names = external global [53 x i8*], align 16
@decode_reg_name.table = internal constant [32 x %struct.anon.3] [%struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 2 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 3 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 4 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 5 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 6 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 7 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 1 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 2 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 3 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 4 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 5 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 6 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 7 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 1 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i32 2 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 3 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i32 0 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 1 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 2 }, %struct.anon.3 { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 3 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 8 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 9 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 10 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i32 11 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 12 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 13 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 14 }, %struct.anon.3 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 15 }], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"eax\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"edx\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ecx\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ebx\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"esi\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"edi\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ebp\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"esp\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"ah\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"bh\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"mm0\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"mm1\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"mm2\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"mm3\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"mm4\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"mm5\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"mm6\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"mm7\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@__FUNCTION__.make_decl_rtl = private unnamed_addr constant [14 x i8] c"make_decl_rtl\00", align 1
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@.str.49 = private unnamed_addr constant [37 x i8] c"register name not specified for `%s'\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"invalid register name for `%s'\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"data type of `%s' isn't suitable for a register\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"register specified for `%s' isn't suitable for data type\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"global register variable has initial value\00", align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"volatile register variables don't work as you might wish\00", align 1
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@.str.55 = private unnamed_addr constant [51 x i8] c"register name given for non-register variable `%s'\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@var_labelno = common global i32 0, align 4
@flag_volatile_global = external global i32, align 4
@flag_volatile_static = external global i32, align 4
@ix86_debug_addr_string = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.57 = private unnamed_addr constant [24 x i8] c"Encode %s, public = %d\0A\00", align 1
@__FUNCTION__.make_var_volatile = private unnamed_addr constant [18 x i8] c"make_var_volatile\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"%s\22___DTOR_LIST__\22,22,0,0,\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"\09.stabs\09\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c".dtors\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c".dtors.%.5u\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"%s\22___CTOR_LIST__\22,22,0,0,\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c".ctors\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c".ctors.%.5u\00", align 1
@flag_function_sections = external global i32, align 4
@align_functions_log = external global i32, align 4
@align_functions = external global i32, align 4
@.str.67 = private unnamed_addr constant [14 x i8] c"\09.p2align %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"\09.p2align %d,,%d\0A\00", align 1
@debug_hooks = external global %struct.gcc_debug_hooks*, align 8
@first_global_object_name = common global i8* null, align 8
@weak_global_object_name = common global i8* null, align 8
@.str.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"\09.type\09\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@flag_inhibit_size_directive = external global i32, align 4
@assemble_end_function.labelno = internal global i32 0, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"Lfe\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c".%s%u:\0A\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"\09.size\09\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@flag_syntax_only = external global i32, align 4
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.80 = private unnamed_addr constant [6 x i8] c"%s%u\0A\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"\09.zero\09\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"\09.string\09\00", align 1
@.str.85 = private unnamed_addr constant [257 x i8] c"\01\01\01\01\01\01\01\01btn\01fr\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\5C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"\09.ascii\09\00", align 1
@last_assemble_variable_decl = common global %union.tree_node* null, align 8
@.str.88 = private unnamed_addr constant [33 x i8] c"storage size of `%s' isn't known\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"size of variable `%s' is too large\00", align 1
@.str.90 = private unnamed_addr constant [74 x i8] c"alignment of `%s' is greater than maximum object file alignment. Using %d\00", align 1
@flag_data_sections = external global i32, align 4
@.str.91 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@size_directive_output = common global i32 0, align 4
@.str.92 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@__FUNCTION__.assemble_external = private unnamed_addr constant [18 x i8] c"assemble_external\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c".globl \00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"%U%s\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@const_labelno = common global i32 0, align 4
@.str.97 = private unnamed_addr constant [9 x i8] c"\09.local\09\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"\09.comm\09\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c",%u,%u\0A\00", align 1
@__FUNCTION__.assemble_integer = private unnamed_addr constant [17 x i8] c"assemble_integer\00", align 1
@__FUNCTION__.assemble_real = private unnamed_addr constant [14 x i8] c"assemble_real\00", align 1
@__FUNCTION__.immed_double_const = private unnamed_addr constant [19 x i8] c"immed_double_const\00", align 1
@cfun = external global %struct.function*, align 8
@current_function_decl = external global %union.tree_node*, align 8
@dconst0 = external global %struct.realvaluetype, align 8
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@dconst1 = external global %struct.realvaluetype, align 8
@dconst2 = external global %struct.realvaluetype, align 8
@defer_addressed_constants_flag = internal global i32 0, align 4
@deferred_constants = internal global %struct.deferred_constant* null, align 8
@const_hash_table = internal global [1009 x %struct.constant_descriptor*] zeroinitializer, align 16
@.str.100 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@const_alias_set = internal global i64 0, align 8
@const_str_htab = internal global %struct.htab* null, align 8
@after_function_constants = internal global %struct.deferred_constant* null, align 8
@word_mode = external global i32, align 4
@__FUNCTION__.output_constant_pool = private unnamed_addr constant [21 x i8] c"output_constant_pool\00", align 1
@inner_mode_array = external constant [59 x i32], align 16
@mode_unit_size = external constant [59 x i8], align 16
@lang_hooks = external constant %struct.lang_hooks, align 8
@__FUNCTION__.output_constant = private unnamed_addr constant [16 x i8] c"output_constant\00", align 1
@.str.101 = private unnamed_addr constant [49 x i8] c"initializer for integer value is too complicated\00", align 1
@.str.102 = private unnamed_addr constant [58 x i8] c"initializer for floating value is not a floating constant\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"unknown set constructor type\00", align 1
@.str.104 = private unnamed_addr constant [49 x i8] c"weak declaration of `%s' must precede definition\00", align 1
@.str.105 = private unnamed_addr constant [73 x i8] c"weak declaration of `%s' after first use results in unspecified behavior\00", align 1
@weak_decls = internal global %union.tree_node* null, align 8
@.str.106 = private unnamed_addr constant [40 x i8] c"weak declaration of `%s' must be public\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"\09.weak\09\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"\09.set\09\00", align 1
@__FUNCTION__.make_decl_one_only = private unnamed_addr constant [19 x i8] c"make_decl_one_only\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c".bss.\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.b.\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c".sbss\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c".sbss.\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.sb.\00", align 1
@__FUNCTION__.default_no_named_section = private unnamed_addr constant [25 x i8] c"default_no_named_section\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"\09.section\09%s\0A\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"nobits\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"progbits\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"\09.section\09%s,\22%s\22,@%s,%d\0A\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"\09.section\09%s,\22%s\22,@%s\0A\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"\09.section\09%s,\22%s\22\0A\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"\09.linkonce %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"same_size\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"\09.vtable_entry \00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"\09.vtable_inherit \00", align 1
@resolve_unique_section.prefixes = internal constant [4 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.128, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.130, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.132, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0)]], align 16
@.str.127 = private unnamed_addr constant [7 x i8] c".text.\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.t.\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c".rodata.\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.r.\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c".data.\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c".gnu.linkonce.d.\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@__FUNCTION__.asm_emit_uninitialised = private unnamed_addr constant [23 x i8] c"asm_emit_uninitialised\00", align 1
@__FUNCTION__.const_hash = private unnamed_addr constant [11 x i8] c"const_hash\00", align 1
@__FUNCTION__.decode_addr_const = private unnamed_addr constant [18 x i8] c"decode_addr_const\00", align 1
@permanent_obstack = external global %struct.obstack, align 8
@__FUNCTION__.record_constant_1 = private unnamed_addr constant [18 x i8] c"record_constant_1\00", align 1
@__FUNCTION__.copy_constant = private unnamed_addr constant [14 x i8] c"copy_constant\00", align 1
@__FUNCTION__.decode_rtx_const = private unnamed_addr constant [17 x i8] c"decode_rtx_const\00", align 1
@__FUNCTION__.find_pool_constant = private unnamed_addr constant [19 x i8] c"find_pool_constant\00", align 1
@rtx_class = external constant [153 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@__FUNCTION__.mark_constants = private unnamed_addr constant [15 x i8] c"mark_constants\00", align 1
@__FUNCTION__.output_constructor = private unnamed_addr constant [19 x i8] c"output_constructor\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"invalid initial value for member `%s'\00", align 1
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@ggc_pending_trees = external global %struct.varray_head_tag*, align 8

; Function Attrs: nounwind uwtable
define void @const_section() #0 {
entry:
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp ne i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store i32 5, i32* @in_section, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @text_section() #0 {
entry:
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* @in_section, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @data_section() #0 {
entry:
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @flag_shared_data, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store i32 2, i32* @in_section, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @force_data_section() #0 {
entry:
  store i32 0, i32* @in_section, align 4
  call void @data_section()
  ret void
}

; Function Attrs: nounwind uwtable
define void @readonly_data_section() #0 {
entry:
  call void @const_section()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @in_text_section() #0 {
entry:
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @in_data_section() #0 {
entry:
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp eq i32 %0, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @get_named_section_flags(i8* %section) #0 {
entry:
  %section.addr = alloca i8*, align 8
  %slot = alloca %struct.in_named_entry**, align 8
  store i8* %section, i8** %section.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @in_named_htab, align 8
  %1 = load i8*, i8** %section.addr, align 8
  %2 = load i8*, i8** %section.addr, align 8
  %call = call i32 @htab_hash_string(i8* %2)
  %call1 = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %1, i32 %call, i32 0)
  %3 = bitcast i8** %call1 to %struct.in_named_entry**
  store %struct.in_named_entry** %3, %struct.in_named_entry*** %slot, align 8
  %4 = load %struct.in_named_entry**, %struct.in_named_entry*** %slot, align 8
  %tobool = icmp ne %struct.in_named_entry** %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.in_named_entry**, %struct.in_named_entry*** %slot, align 8
  %6 = load %struct.in_named_entry*, %struct.in_named_entry** %5, align 8
  %flags = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %6, i32 0, i32 1
  %7 = load i32, i32* %flags, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) #1

declare i32 @htab_hash_string(i8*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @named_section_first_declaration(i8* %name) #0 {
entry:
  %retval = alloca i1, align 1
  %name.addr = alloca i8*, align 8
  %slot = alloca %struct.in_named_entry**, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.htab*, %struct.htab** @in_named_htab, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @htab_hash_string(i8* %2)
  %call1 = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %1, i32 %call, i32 0)
  %3 = bitcast i8** %call1 to %struct.in_named_entry**
  store %struct.in_named_entry** %3, %struct.in_named_entry*** %slot, align 8
  %4 = load %struct.in_named_entry**, %struct.in_named_entry*** %slot, align 8
  %5 = load %struct.in_named_entry*, %struct.in_named_entry** %4, align 8
  %declared = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %5, i32 0, i32 2
  %6 = load i8, i8* %declared, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.in_named_entry**, %struct.in_named_entry*** %slot, align 8
  %8 = load %struct.in_named_entry*, %struct.in_named_entry** %7, align 8
  %declared2 = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %8, i32 0, i32 2
  store i8 1, i8* %declared2, align 1
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i1, i1* %retval
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define zeroext i1 @set_named_section_flags(i8* %section, i32 %flags) #0 {
entry:
  %retval = alloca i1, align 1
  %section.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %slot = alloca %struct.in_named_entry**, align 8
  %entry1 = alloca %struct.in_named_entry*, align 8
  store i8* %section, i8** %section.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.htab*, %struct.htab** @in_named_htab, align 8
  %1 = load i8*, i8** %section.addr, align 8
  %2 = load i8*, i8** %section.addr, align 8
  %call = call i32 @htab_hash_string(i8* %2)
  %call2 = call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %1, i32 %call, i32 1)
  %3 = bitcast i8** %call2 to %struct.in_named_entry**
  store %struct.in_named_entry** %3, %struct.in_named_entry*** %slot, align 8
  %4 = load %struct.in_named_entry**, %struct.in_named_entry*** %slot, align 8
  %5 = load %struct.in_named_entry*, %struct.in_named_entry** %4, align 8
  store %struct.in_named_entry* %5, %struct.in_named_entry** %entry1, align 8
  %6 = load %struct.in_named_entry*, %struct.in_named_entry** %entry1, align 8
  %tobool = icmp ne %struct.in_named_entry* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call noalias i8* @xmalloc(i64 16)
  %7 = bitcast i8* %call3 to %struct.in_named_entry*
  store %struct.in_named_entry* %7, %struct.in_named_entry** %entry1, align 8
  %8 = load %struct.in_named_entry*, %struct.in_named_entry** %entry1, align 8
  %9 = load %struct.in_named_entry**, %struct.in_named_entry*** %slot, align 8
  store %struct.in_named_entry* %8, %struct.in_named_entry** %9, align 8
  %10 = load i8*, i8** %section.addr, align 8
  %call4 = call i8* @ggc_alloc_string(i8* %10, i32 -1)
  %11 = load %struct.in_named_entry*, %struct.in_named_entry** %entry1, align 8
  %name = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %11, i32 0, i32 0
  store i8* %call4, i8** %name, align 8
  %12 = load i32, i32* %flags.addr, align 4
  %13 = load %struct.in_named_entry*, %struct.in_named_entry** %entry1, align 8
  %flags5 = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %13, i32 0, i32 1
  store i32 %12, i32* %flags5, align 4
  %14 = load %struct.in_named_entry*, %struct.in_named_entry** %entry1, align 8
  %declared = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %14, i32 0, i32 2
  store i8 0, i8* %declared, align 1
  br label %if.end.8

if.else:                                          ; preds = %entry
  %15 = load %struct.in_named_entry*, %struct.in_named_entry** %entry1, align 8
  %flags6 = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %15, i32 0, i32 1
  %16 = load i32, i32* %flags6, align 4
  %17 = load i32, i32* %flags.addr, align 4
  %cmp = icmp ne i32 %16, %17
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  %18 = load i1, i1* %retval
  ret i1 %18
}

declare noalias i8* @xmalloc(i64) #1

declare i8* @ggc_alloc_string(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @named_section_flags(i8* %name, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** @in_named_name, align 8
  %call = call i32 @strcmp(i8* %1, i8* %2) #7
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %call2 = call zeroext i1 @set_named_section_flags(i8* %3, i32 %4)
  br i1 %call2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 412, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.named_section_flags, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load void (i8*, i32)*, void (i8*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 10), align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i32, i32* %flags.addr, align 4
  call void %5(i8* %6, i32 %7)
  %8 = load i32, i32* %flags.addr, align 4
  %and = and i32 %8, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @in_section, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %name.addr, align 8
  %call5 = call i8* @ggc_alloc_string(i8* %9, i32 -1)
  store i8* %call5, i8** @in_named_name, align 8
  store i32 3, i32* @in_section, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @named_section(%union.tree_node* %decl, i8* %name, i32 %reloc) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %name.addr = alloca i8*, align 8
  %reloc.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %reloc, i32* %reloc.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 100
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.named_section, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %name.addr, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 15
  %5 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %string = bitcast %union.tree_node* %5 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %6 = load i8*, i8** %pointer, align 8
  store i8* %6, i8** %name.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load i32 (%union.tree_node*, i8*, i32)*, i32 (%union.tree_node*, i8*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 12), align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load i32, i32* %reloc.addr, align 4
  %call = call i32 %7(%union.tree_node* %8, i8* %9, i32 %10)
  store i32 %call, i32* %flags, align 4
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool = icmp ne %union.tree_node* %11, null
  br i1 %tobool, label %land.lhs.true.8, label %if.end.16

land.lhs.true.8:                                  ; preds = %if.end.7
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i32, i32* %flags, align 4
  %call9 = call zeroext i1 @set_named_section_flags(i8* %12, i32 %13)
  br i1 %call9, label %if.end.16, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  %14 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @get_named_section_flags(i8* %14)
  store i32 %call11, i32* %flags, align 4
  %15 = load i32, i32* %flags, align 4
  %and = and i32 %15, 131072
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %land.lhs.true.8, %if.end.7
  %17 = load i8*, i8** %name.addr, align 8
  %18 = load i32, i32* %flags, align 4
  call void @named_section_flags(i8* %17, i32 %18)
  ret void
}

declare void @error_with_decl(%union.tree_node*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @bss_section() #0 {
entry:
  %0 = load i32, i32* @in_section, align 4
  %cmp = icmp ne i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  store i32 4, i32* @in_section, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @function_section(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 15
  %2 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp2 = icmp ne %union.tree_node* %2, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @named_section(%union.tree_node* %3, i8* null, i32 0)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @text_section()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @variable_section(%union.tree_node* %decl, i32 %reloc) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %reloc.addr = alloca i32, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %reloc, i32* %reloc.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 15
  %3 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp7 = icmp ne %union.tree_node* %3, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %5 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* %4, i8* null, i32 %5)
  br label %if.end.146

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common8 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 29
  br i1 %cmp12, label %if.then.13, label %if.else.19

if.then.13:                                       ; preds = %if.else
  %7 = load i32, i32* @flag_writable_strings, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else.18, label %if.then.14

if.then.14:                                       ; preds = %if.then.13
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl15 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %10 = bitcast %struct.anon.0* %a to i32*
  %bf.load16 = load i32, i32* %10, align 4
  %bf.clear17 = and i32 %bf.load16, 16777215
  %conv = zext i32 %bf.clear17 to i64
  call void @mergeable_string_section(%union.tree_node* %8, i64 %conv, i32 0)
  br label %if.end

if.else.18:                                       ; preds = %if.then.13
  call void @data_section()
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.14
  br label %if.end.145

if.else.19:                                       ; preds = %if.else
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common20 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %code21, align 8
  %bf.clear23 = and i32 %bf.load22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 34
  br i1 %cmp24, label %if.then.26, label %if.else.114

if.then.26:                                       ; preds = %if.else.19
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common27 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load28 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load28, 12
  %bf.clear29 = and i32 %bf.lshr, 1
  %tobool30 = icmp ne i32 %bf.clear29, 0
  br i1 %tobool30, label %lor.lhs.false.31, label %if.then.53

lor.lhs.false.31:                                 ; preds = %if.then.26
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common32 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 2
  %bf.load33 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 8
  %bf.clear35 = and i32 %bf.lshr34, 1
  %tobool36 = icmp ne i32 %bf.clear35, 0
  br i1 %tobool36, label %if.then.53, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.31
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl38 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl38, i32 0, i32 12
  %15 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool39 = icmp ne %union.tree_node* %15, null
  br i1 %tobool39, label %lor.lhs.false.40, label %if.then.53

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.37
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl41 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %initial42 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 12
  %17 = load %union.tree_node*, %union.tree_node** %initial42, align 8
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp43 = icmp ne %union.tree_node* %17, %18
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.66

land.lhs.true.45:                                 ; preds = %lor.lhs.false.40
  %19 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl46 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %initial47 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl46, i32 0, i32 12
  %20 = load %union.tree_node*, %union.tree_node** %initial47, align 8
  %common48 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 2
  %bf.load49 = load i32, i32* %constant_flag, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 9
  %bf.clear51 = and i32 %bf.lshr50, 1
  %tobool52 = icmp ne i32 %bf.clear51, 0
  br i1 %tobool52, label %if.else.66, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.37, %lor.lhs.false.31, %if.then.26
  %21 = load i32, i32* @flag_pic, align 4
  %tobool54 = icmp ne i32 %21, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.58

land.lhs.true.55:                                 ; preds = %if.then.53
  %22 = load i32, i32* %reloc.addr, align 4
  %and = and i32 %22, 2
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.55
  %23 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %23)
  br label %if.end.65

if.else.58:                                       ; preds = %land.lhs.true.55, %if.then.53
  %24 = load i32, i32* @flag_pic, align 4
  %tobool59 = icmp ne i32 %24, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.else.63

land.lhs.true.60:                                 ; preds = %if.else.58
  %25 = load i32, i32* %reloc.addr, align 4
  %tobool61 = icmp ne i32 %25, 0
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %land.lhs.true.60
  %26 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %26)
  br label %if.end.64

if.else.63:                                       ; preds = %land.lhs.true.60, %if.else.58
  call void @data_section()
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.62
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.57
  br label %if.end.113

if.else.66:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.40
  %27 = load i32, i32* @flag_pic, align 4
  %tobool67 = icmp ne i32 %27, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.72

land.lhs.true.68:                                 ; preds = %if.else.66
  %28 = load i32, i32* %reloc.addr, align 4
  %and69 = and i32 %28, 2
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.68
  %29 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %29)
  br label %if.end.112

if.else.72:                                       ; preds = %land.lhs.true.68, %if.else.66
  %30 = load i32, i32* @flag_pic, align 4
  %tobool73 = icmp ne i32 %30, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.else.77

land.lhs.true.74:                                 ; preds = %if.else.72
  %31 = load i32, i32* %reloc.addr, align 4
  %tobool75 = icmp ne i32 %31, 0
  br i1 %tobool75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %land.lhs.true.74
  %32 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 %32)
  br label %if.end.111

if.else.77:                                       ; preds = %land.lhs.true.74, %if.else.72
  %33 = load i32, i32* @flag_merge_constants, align 4
  %cmp78 = icmp slt i32 %33, 2
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.77
  call void @const_section()
  br label %if.end.110

if.else.81:                                       ; preds = %if.else.77
  %34 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl82 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %initial83 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl82, i32 0, i32 12
  %35 = load %union.tree_node*, %union.tree_node** %initial83, align 8
  %common84 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %code85 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common84, i32 0, i32 2
  %bf.load86 = load i32, i32* %code85, align 8
  %bf.clear87 = and i32 %bf.load86, 255
  %cmp88 = icmp eq i32 %bf.clear87, 29
  br i1 %cmp88, label %if.then.90, label %if.else.99

if.then.90:                                       ; preds = %if.else.81
  %36 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl91 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %initial92 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl91, i32 0, i32 12
  %37 = load %union.tree_node*, %union.tree_node** %initial92, align 8
  %38 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl93 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %u194 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl93, i32 0, i32 6
  %a95 = bitcast %union.anon* %u194 to %struct.anon.0*
  %39 = bitcast %struct.anon.0* %a95 to i32*
  %bf.load96 = load i32, i32* %39, align 4
  %bf.clear97 = and i32 %bf.load96, 16777215
  %conv98 = zext i32 %bf.clear97 to i64
  call void @mergeable_string_section(%union.tree_node* %37, i64 %conv98, i32 0)
  br label %if.end.109

if.else.99:                                       ; preds = %if.else.81
  %40 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl100 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %mode = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl100, i32 0, i32 5
  %41 = bitcast i48* %mode to i64*
  %bf.load101 = load i64, i64* %41, align 8
  %bf.clear102 = and i64 %bf.load101, 255
  %bf.cast = trunc i64 %bf.clear102 to i32
  %42 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl103 = bitcast %union.tree_node* %42 to %struct.tree_decl*
  %u1104 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl103, i32 0, i32 6
  %a105 = bitcast %union.anon* %u1104 to %struct.anon.0*
  %43 = bitcast %struct.anon.0* %a105 to i32*
  %bf.load106 = load i32, i32* %43, align 4
  %bf.clear107 = and i32 %bf.load106, 16777215
  %conv108 = zext i32 %bf.clear107 to i64
  call void @mergeable_constant_section(i32 %bf.cast, i64 %conv108, i32 0)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.99, %if.then.90
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.80
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.76
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.71
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.65
  br label %if.end.144

if.else.114:                                      ; preds = %if.else.19
  %44 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common115 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %code116 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common115, i32 0, i32 2
  %bf.load117 = load i32, i32* %code116, align 8
  %bf.clear118 = and i32 %bf.load117, 255
  %cmp119 = icmp eq i32 %bf.clear118, 46
  br i1 %cmp119, label %if.then.121, label %if.else.142

if.then.121:                                      ; preds = %if.else.114
  %45 = load i32, i32* @flag_pic, align 4
  %tobool122 = icmp ne i32 %45, 0
  br i1 %tobool122, label %land.lhs.true.123, label %lor.lhs.false.125

land.lhs.true.123:                                ; preds = %if.then.121
  %46 = load i32, i32* %reloc.addr, align 4
  %tobool124 = icmp ne i32 %46, 0
  br i1 %tobool124, label %if.then.139, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %land.lhs.true.123, %if.then.121
  %47 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common126 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %side_effects_flag127 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common126, i32 0, i32 2
  %bf.load128 = load i32, i32* %side_effects_flag127, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 8
  %bf.clear130 = and i32 %bf.lshr129, 1
  %tobool131 = icmp ne i32 %bf.clear130, 0
  br i1 %tobool131, label %if.then.139, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %lor.lhs.false.125
  %48 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common133 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %constant_flag134 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common133, i32 0, i32 2
  %bf.load135 = load i32, i32* %constant_flag134, align 8
  %bf.lshr136 = lshr i32 %bf.load135, 9
  %bf.clear137 = and i32 %bf.lshr136, 1
  %tobool138 = icmp ne i32 %bf.clear137, 0
  br i1 %tobool138, label %if.else.140, label %if.then.139

if.then.139:                                      ; preds = %lor.lhs.false.132, %lor.lhs.false.125, %land.lhs.true.123
  call void @data_section()
  br label %if.end.141

if.else.140:                                      ; preds = %lor.lhs.false.132
  call void @const_section()
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.140, %if.then.139
  br label %if.end.143

if.else.142:                                      ; preds = %if.else.114
  call void @const_section()
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.142, %if.end.141
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.113
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @mergeable_string_section(%union.tree_node* %decl, i64 %align, i32 %flags) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %align.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %modesize = alloca i32, align 4
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %unit = alloca i32, align 4
  %name = alloca [30 x i8], align 16
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i64 %align, i64* %align.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* @flag_merge_constants, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.86

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 29
  br i1 %cmp, label %land.lhs.true.1, label %if.end.86

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 18
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.86

land.lhs.true.8:                                  ; preds = %land.lhs.true.1
  %4 = load i64, i64* %align.addr, align 8
  %cmp9 = icmp ule i64 %4, 256
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.86

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %string = bitcast %union.tree_node* %5 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  %6 = load i32, i32* %length, align 4
  %conv = sext i32 %6 to i64
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common11 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %call = call i64 @int_size_in_bytes(%union.tree_node* %8)
  %cmp13 = icmp sge i64 %conv, %call
  br i1 %cmp13, label %if.then, label %if.end.86

if.then:                                          ; preds = %land.lhs.true.10
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common15 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type16, align 8
  %common17 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type18, align 8
  %type19 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %mode20 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load21 = load i32, i32* %mode20, align 4
  %bf.lshr = lshr i32 %bf.load21, 9
  %bf.clear22 = and i32 %bf.lshr, 127
  store i32 %bf.clear22, i32* %mode, align 4
  %12 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2
  %conv23 = zext i16 %13 to i32
  store i32 %conv23, i32* %modesize, align 4
  %14 = load i32, i32* %modesize, align 4
  %cmp24 = icmp uge i32 %14, 8
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.85

land.lhs.true.26:                                 ; preds = %if.then
  %15 = load i32, i32* %modesize, align 4
  %cmp27 = icmp ule i32 %15, 256
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.85

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %16 = load i32, i32* %modesize, align 4
  %17 = load i32, i32* %modesize, align 4
  %sub = sub i32 %17, 1
  %and = and i32 %16, %sub
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %if.then.32, label %if.end.85

if.then.32:                                       ; preds = %land.lhs.true.29
  %18 = load i64, i64* %align.addr, align 8
  %19 = load i32, i32* %modesize, align 4
  %conv33 = zext i32 %19 to i64
  %cmp34 = icmp ult i64 %18, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.then.32
  %20 = load i32, i32* %modesize, align 4
  %conv37 = zext i32 %20 to i64
  store i64 %conv37, i64* %align.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.then.32
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %string38 = bitcast %union.tree_node* %21 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string38, i32 0, i32 3
  %22 = load i8*, i8** %pointer, align 8
  store i8* %22, i8** %str, align 8
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %string39 = bitcast %union.tree_node* %23 to %struct.tree_string*
  %length40 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string39, i32 0, i32 2
  %24 = load i32, i32* %length40, align 4
  store i32 %24, i32* %len, align 4
  %25 = load i32, i32* %mode, align 4
  %idxprom41 = sext i32 %25 to i64
  %arrayidx42 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom41
  %26 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %26 to i32
  store i32 %conv43, i32* %unit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %if.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %len, align 4
  %cmp44 = icmp slt i32 %27, %28
  br i1 %cmp44, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %unit, align 4
  %cmp47 = icmp slt i32 %29, %30
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %add = add nsw i32 %31, %32
  %idxprom50 = sext i32 %add to i64
  %33 = load i8*, i8** %str, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %33, i64 %idxprom50
  %34 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %34 to i32
  %cmp53 = icmp ne i32 %conv52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.body.49
  br label %for.end

if.end.56:                                        ; preds = %for.body.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %if.then.55, %for.cond.46
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %unit, align 4
  %cmp57 = icmp eq i32 %36, %37
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  br label %for.end.63

if.end.60:                                        ; preds = %for.end
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %38 = load i32, i32* %unit, align 4
  %39 = load i32, i32* %i, align 4
  %add62 = add nsw i32 %39, %38
  store i32 %add62, i32* %i, align 4
  br label %for.cond

for.end.63:                                       ; preds = %if.then.59, %for.cond
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %len, align 4
  %42 = load i32, i32* %unit, align 4
  %sub64 = sub nsw i32 %41, %42
  %cmp65 = icmp eq i32 %40, %sub64
  br i1 %cmp65, label %if.then.67, label %if.end.84

if.then.67:                                       ; preds = %for.end.63
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %43 = load i32, i32* %modesize, align 4
  %div = udiv i32 %43, 8
  %44 = load i64, i64* %align.addr, align 8
  %div68 = udiv i64 %44, 8
  %conv69 = trunc i64 %div68 to i32
  %call70 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 %div, i32 %conv69) #6
  %45 = load i32, i32* %modesize, align 4
  %div71 = udiv i32 %45, 8
  %or = or i32 %div71, 32768
  %or72 = or i32 %or, 65536
  %46 = load i32, i32* %flags.addr, align 4
  %or73 = or i32 %46, %or72
  store i32 %or73, i32* %flags.addr, align 4
  %47 = load i32, i32* %i, align 4
  %tobool74 = icmp ne i32 %47, 0
  br i1 %tobool74, label %if.end.82, label %land.lhs.true.75

land.lhs.true.75:                                 ; preds = %if.then.67
  %48 = load i32, i32* %modesize, align 4
  %conv76 = zext i32 %48 to i64
  %49 = load i64, i64* %align.addr, align 8
  %cmp77 = icmp ult i64 %conv76, %49
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %land.lhs.true.75
  %arraydecay80 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %50 = load i32, i32* %flags.addr, align 4
  call void @named_section_flags(i8* %arraydecay80, i32 %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.82:                                        ; preds = %land.lhs.true.75, %if.then.67
  %arraydecay83 = getelementptr inbounds [30 x i8], [30 x i8]* %name, i32 0, i32 0
  %52 = load i32, i32* %flags.addr, align 4
  call void @named_section_flags(i8* %arraydecay83, i32 %52)
  br label %return

if.end.84:                                        ; preds = %for.end.63
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %land.lhs.true.29, %land.lhs.true.26, %if.then
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true.1, %land.lhs.true, %entry
  call void @readonly_data_section()
  br label %return

return:                                           ; preds = %if.end.86, %if.end.82, %if.then.79
  ret void
}

; Function Attrs: nounwind uwtable
define void @mergeable_constant_section(i32 %mode, i64 %align, i32 %flags) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %align.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %modesize = alloca i32, align 4
  %name = alloca [24 x i8], align 16
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %align, i64* %align.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %modesize, align 4
  %2 = load i32, i32* @flag_merge_constants, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %mode.addr, align 4
  %cmp3 = icmp ne i32 %4, 51
  br i1 %cmp3, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.2
  %5 = load i32, i32* %modesize, align 4
  %conv6 = zext i32 %5 to i64
  %6 = load i64, i64* %align.addr, align 8
  %cmp7 = icmp ule i64 %conv6, %6
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %7 = load i64, i64* %align.addr, align 8
  %cmp10 = icmp uge i64 %7, 8
  br i1 %cmp10, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %8 = load i64, i64* %align.addr, align 8
  %cmp13 = icmp ule i64 %8, 256
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %9 = load i64, i64* %align.addr, align 8
  %10 = load i64, i64* %align.addr, align 8
  %sub = sub i64 %10, 1
  %and = and i64 %9, %sub
  %cmp16 = icmp eq i64 %and, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %name, i32 0, i32 0
  %11 = load i64, i64* %align.addr, align 8
  %div = udiv i64 %11, 8
  %conv18 = trunc i64 %div to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 %conv18) #6
  %12 = load i64, i64* %align.addr, align 8
  %div19 = udiv i64 %12, 8
  %or = or i64 %div19, 32768
  %13 = load i32, i32* %flags.addr, align 4
  %conv20 = zext i32 %13 to i64
  %or21 = or i64 %conv20, %or
  %conv22 = trunc i64 %or21 to i32
  store i32 %conv22, i32* %flags.addr, align 4
  %arraydecay23 = getelementptr inbounds [24 x i8], [24 x i8]* %name, i32 0, i32 0
  %14 = load i32, i32* %flags.addr, align 4
  call void @named_section_flags(i8* %arraydecay23, i32 %14)
  br label %return

if.end:                                           ; preds = %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true.2, %land.lhs.true, %entry
  call void @readonly_data_section()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_exception_section() #0 {
entry:
  %0 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 13), align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 0)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @flag_pic, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  call void @data_section()
  br label %if.end

if.else.3:                                        ; preds = %if.else
  call void @readonly_data_section()
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

declare i64 @int_size_in_bytes(%union.tree_node*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @decode_reg_name(i8* %asmspec) #0 {
entry:
  %retval = alloca i32, align 4
  %asmspec.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %asmspec, i8** %asmspec.addr, align 8
  %0 = load i8*, i8** %asmspec.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.67

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %asmspec.addr, align 8
  %call = call i8* @strip_reg_name(i8* %1)
  store i8* %call, i8** %asmspec.addr, align 8
  %2 = load i8*, i8** %asmspec.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #7
  %sub = sub i64 %call1, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %asmspec.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  %and = and i32 %conv4, 255
  %idxprom5 = sext i32 %and to i64
  %arrayidx6 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom5
  %7 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %7 to i32
  %and8 = and i32 %conv7, 4
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %9 = load i8*, i8** %asmspec.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %11, 0
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %land.lhs.true
  %12 = load i8*, i8** %asmspec.addr, align 8
  %call17 = call i32 @atoi(i8* %12) #7
  store i32 %call17, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %13, 53
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %if.then.16
  %14 = load i32, i32* %i, align 4
  %cmp21 = icmp sge i32 %14, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.20
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.20, %if.then.16
  store i32 -2, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.42, %if.end.24
  %16 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %16, 53
  br i1 %cmp26, label %for.body.28, label %for.end.43

for.body.28:                                      ; preds = %for.cond.25
  %17 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom29
  %18 = load i8*, i8** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %19 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.41

land.lhs.true.34:                                 ; preds = %for.body.28
  %20 = load i8*, i8** %asmspec.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom35
  %22 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i8* @strip_reg_name(i8* %22)
  %call38 = call i32 @strcmp(i8* %20, i8* %call37) #7
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.34
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.34, %for.body.28
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.25

for.end.43:                                       ; preds = %for.cond.25
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.56, %for.end.43
  %25 = load i32, i32* %i, align 4
  %cmp45 = icmp slt i32 %25, 32
  br i1 %cmp45, label %for.body.47, label %for.end.58

for.body.47:                                      ; preds = %for.cond.44
  %26 = load i8*, i8** %asmspec.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [32 x %struct.anon.3], [32 x %struct.anon.3]* @decode_reg_name.table, i32 0, i64 %idxprom48
  %name = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx49, i32 0, i32 0
  %28 = load i8*, i8** %name, align 8
  %call50 = call i32 @strcmp(i8* %26, i8* %28) #7
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.55, label %if.then.52

if.then.52:                                       ; preds = %for.body.47
  %29 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [32 x %struct.anon.3], [32 x %struct.anon.3]* @decode_reg_name.table, i32 0, i64 %idxprom53
  %number = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx54, i32 0, i32 1
  %30 = load i32, i32* %number, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.55:                                        ; preds = %for.body.47
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %31 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %31, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.44

for.end.58:                                       ; preds = %for.cond.44
  %32 = load i8*, i8** %asmspec.addr, align 8
  %call59 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)) #7
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %for.end.58
  store i32 -4, i32* %retval
  br label %return

if.end.62:                                        ; preds = %for.end.58
  %33 = load i8*, i8** %asmspec.addr, align 8
  %call63 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #7
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.end.62
  store i32 -3, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.62
  store i32 -2, i32* %retval
  br label %return

if.end.67:                                        ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.end.66, %if.then.65, %if.then.61, %if.then.52, %if.then.40, %if.else, %if.then.23
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i8* @strip_reg_name(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 35
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %name.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** %name.addr, align 8
  ret i8* %5
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define void @make_decl_rtl(%union.tree_node* %decl, i8* %asmspec) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %asmspec.addr = alloca i8*, align 8
  %top_level = alloca i32, align 4
  %name = alloca i8*, align 8
  %new_name = alloca i8*, align 8
  %reg_number = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %starred = alloca i8*, align 8
  %nregs = alloca i32, align 4
  %label = alloca i8*, align 8
  %rtl481 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %asmspec, i8** %asmspec.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 9
  %1 = load %union.tree_node*, %union.tree_node** %context, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %top_level, align 4
  store i8* null, i8** %name, align 8
  store i8* null, i8** %new_name, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp2 = icmp eq i32 %bf.clear, 35
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 36
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common11 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %code12, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp15 = icmp eq i32 %bf.clear14, 34
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.10
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common17 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load18, 18
  %bf.clear19 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear19, 0
  br i1 %tobool, label %if.else, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common21 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load22 = load i32, i32* %public_flag, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 19
  %bf.clear24 = and i32 %bf.lshr23, 1
  %tobool25 = icmp ne i32 %bf.clear24, 0
  br i1 %tobool25, label %if.else, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true.20
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl27 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl27, i32 0, i32 5
  %8 = bitcast i48* %external_flag to i64*
  %bf.load28 = load i64, i64* %8, align 8
  %bf.lshr29 = lshr i64 %bf.load28, 8
  %bf.clear30 = and i64 %bf.lshr29, 1
  %bf.cast = trunc i64 %bf.clear30 to i32
  %tobool31 = icmp ne i32 %bf.cast, 0
  br i1 %tobool31, label %if.else, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %land.lhs.true.26
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl33 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 5
  %10 = bitcast i48* %regdecl_flag to i64*
  %bf.load34 = load i64, i64* %10, align 8
  %bf.lshr35 = lshr i64 %bf.load34, 10
  %bf.clear36 = and i64 %bf.lshr35, 1
  %bf.cast37 = trunc i64 %bf.clear36 to i32
  %tobool38 = icmp ne i32 %bf.cast37, 0
  br i1 %tobool38, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.32, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 835, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.make_decl_rtl, i32 0, i32 0)) #8
  unreachable

if.else:                                          ; preds = %land.lhs.true.32, %land.lhs.true.26, %land.lhs.true.20, %land.lhs.true, %lor.lhs.false.10
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common39 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %code40, align 8
  %bf.clear42 = and i32 %bf.load41, 255
  %cmp43 = icmp eq i32 %bf.clear42, 33
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %if.else
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common46 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load48 = load i32, i32* %code47, align 8
  %bf.clear49 = and i32 %bf.load48, 255
  %cmp50 = icmp eq i32 %bf.clear49, 31
  br i1 %cmp50, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %lor.lhs.false.45, %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 839, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.make_decl_rtl, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl54 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl54, i32 0, i32 17
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp55 = icmp ne %struct.rtx_def* %14, null
  br i1 %cmp55, label %if.then.57, label %if.end.94

if.then.57:                                       ; preds = %if.end.53
  %15 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl58 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %rtl59 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtl59, align 8
  %tobool60 = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.57
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl61 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %rtl62 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl61, i32 0, i32 17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtl62, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.57
  %19 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %19, i8* null)
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl63 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %rtl64 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl63, i32 0, i32 17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtl64, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %18, %cond.true ], [ %21, %cond.false ]
  %22 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load65 = load i32, i32* %22, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 16
  %bf.clear67 = and i32 %bf.lshr66, 255
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl68 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %mode = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl68, i32 0, i32 5
  %24 = bitcast i48* %mode to i64*
  %bf.load69 = load i64, i64* %24, align 8
  %bf.clear70 = and i64 %bf.load69, 255
  %bf.cast71 = trunc i64 %bf.clear70 to i32
  %cmp72 = icmp ne i32 %bf.clear67, %bf.cast71
  br i1 %cmp72, label %if.then.74, label %if.end.93

if.then.74:                                       ; preds = %cond.end
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl75 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %rtl76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtl76, align 8
  %tobool77 = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool77, label %cond.true.78, label %cond.false.81

cond.true.78:                                     ; preds = %if.then.74
  %27 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl79 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %rtl80 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl79, i32 0, i32 17
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtl80, align 8
  br label %cond.end.84

cond.false.81:                                    ; preds = %if.then.74
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %29, i8* null)
  %30 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl82 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %rtl83 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl82, i32 0, i32 17
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtl83, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.81, %cond.true.78
  %cond85 = phi %struct.rtx_def* [ %28, %cond.true.78 ], [ %31, %cond.false.81 ]
  %32 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl86 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %mode87 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl86, i32 0, i32 5
  %33 = bitcast i48* %mode87 to i64*
  %bf.load88 = load i64, i64* %33, align 8
  %bf.clear89 = and i64 %bf.load88, 255
  %bf.cast90 = trunc i64 %bf.clear89 to i32
  %call = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %cond85, i32 %bf.cast90, i64 0, i32 0, i32 1)
  %34 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl91 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %rtl92 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl91, i32 0, i32 17
  store %struct.rtx_def* %call, %struct.rtx_def** %rtl92, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %cond.end.84, %cond.end
  br label %do.end

if.end.94:                                        ; preds = %if.end.53
  %35 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl95 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl95, i32 0, i32 14
  %36 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp96 = icmp ne %union.tree_node* %36, null
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.end.94
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.end.94
  %37 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %38 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %37(%union.tree_node* %38)
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %39 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl101 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %assembler_name102 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl101, i32 0, i32 14
  %40 = load %union.tree_node*, %union.tree_node** %assembler_name102, align 8
  %identifier = bitcast %union.tree_node* %40 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %41 = load i8*, i8** %str, align 8
  store i8* %41, i8** %name, align 8
  store i8* %41, i8** %new_name, align 8
  %42 = load i8*, i8** %asmspec.addr, align 8
  %call103 = call i32 @decode_reg_name(i8* %42)
  store i32 %call103, i32* %reg_number, align 4
  %43 = load i32, i32* %reg_number, align 4
  %cmp104 = icmp eq i32 %43, -2
  br i1 %cmp104, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %cond.end.100
  %44 = load i8*, i8** %asmspec.addr, align 8
  %call107 = call i64 @strlen(i8* %44) #7
  %add = add i64 %call107, 2
  %45 = alloca i8, i64 %add
  store i8* %45, i8** %starred, align 8
  %46 = load i8*, i8** %starred, align 8
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 0
  store i8 42, i8* %arrayidx, align 1
  %47 = load i8*, i8** %starred, align 8
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8*, i8** %asmspec.addr, align 8
  %call108 = call i8* @strcpy(i8* %add.ptr, i8* %48) #6
  %49 = load i8*, i8** %starred, align 8
  store i8* %49, i8** %new_name, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %cond.end.100
  %50 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common110 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %code111 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common110, i32 0, i32 2
  %bf.load112 = load i32, i32* %code111, align 8
  %bf.clear113 = and i32 %bf.load112, 255
  %cmp114 = icmp ne i32 %bf.clear113, 30
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.310

land.lhs.true.116:                                ; preds = %if.end.109
  %51 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl117 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %regdecl_flag118 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl117, i32 0, i32 5
  %52 = bitcast i48* %regdecl_flag118 to i64*
  %bf.load119 = load i64, i64* %52, align 8
  %bf.lshr120 = lshr i64 %bf.load119, 10
  %bf.clear121 = and i64 %bf.lshr120, 1
  %bf.cast122 = trunc i64 %bf.clear121 to i32
  %tobool123 = icmp ne i32 %bf.cast122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.310

if.then.124:                                      ; preds = %land.lhs.true.116
  %53 = load i32, i32* %reg_number, align 4
  %cmp125 = icmp eq i32 %53, -1
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %if.then.124
  %54 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.309

if.else.128:                                      ; preds = %if.then.124
  %55 = load i32, i32* %reg_number, align 4
  %cmp129 = icmp slt i32 %55, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.else.128
  %56 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.308

if.else.132:                                      ; preds = %if.else.128
  %57 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common133 = bitcast %union.tree_node* %57 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common133, i32 0, i32 1
  %58 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type134 = bitcast %union.tree_node* %58 to %struct.tree_type*
  %mode135 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type134, i32 0, i32 6
  %bf.load136 = load i32, i32* %mode135, align 4
  %bf.lshr137 = lshr i32 %bf.load136, 9
  %bf.clear138 = and i32 %bf.lshr137, 127
  %cmp139 = icmp eq i32 %bf.clear138, 51
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.else.132
  %59 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.307

if.else.142:                                      ; preds = %if.else.132
  %60 = load i32, i32* %reg_number, align 4
  %61 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common143 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %type144 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common143, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %type144, align 8
  %type145 = bitcast %union.tree_node* %62 to %struct.tree_type*
  %mode146 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type145, i32 0, i32 6
  %bf.load147 = load i32, i32* %mode146, align 4
  %bf.lshr148 = lshr i32 %bf.load147, 9
  %bf.clear149 = and i32 %bf.lshr148, 127
  %call150 = call i32 @ix86_hard_regno_mode_ok(i32 %60, i32 %bf.clear149)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.else.153, label %if.then.152

if.then.152:                                      ; preds = %if.else.142
  %63 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %63, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.306

if.else.153:                                      ; preds = %if.else.142
  %64 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl154 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl154, i32 0, i32 12
  %65 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp155 = icmp ne %union.tree_node* %65, null
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.167

land.lhs.true.157:                                ; preds = %if.else.153
  %66 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common158 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %static_flag159 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common158, i32 0, i32 2
  %bf.load160 = load i32, i32* %static_flag159, align 8
  %bf.lshr161 = lshr i32 %bf.load160, 18
  %bf.clear162 = and i32 %bf.lshr161, 1
  %tobool163 = icmp ne i32 %bf.clear162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %land.lhs.true.157
  %67 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl165 = bitcast %union.tree_node* %67 to %struct.tree_decl*
  %initial166 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl165, i32 0, i32 12
  store %union.tree_node* null, %union.tree_node** %initial166, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.164, %land.lhs.true.157, %if.else.153
  %68 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common168 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common168, i32 0, i32 2
  %bf.load169 = load i32, i32* %volatile_flag, align 8
  %bf.lshr170 = lshr i32 %bf.load169, 11
  %bf.clear171 = and i32 %bf.lshr170, 1
  %tobool172 = icmp ne i32 %bf.clear171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.167
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.end.167
  %69 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl175 = bitcast %union.tree_node* %69 to %struct.tree_decl*
  %mode176 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl175, i32 0, i32 5
  %70 = bitcast i48* %mode176 to i64*
  %bf.load177 = load i64, i64* %70, align 8
  %bf.clear178 = and i64 %bf.load177, 255
  %bf.cast179 = trunc i64 %bf.clear178 to i32
  %71 = load i32, i32* %reg_number, align 4
  %call180 = call %struct.rtx_def* @gen_rtx_fmt_i0(i32 61, i32 %bf.cast179, i32 %71)
  %72 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl181 = bitcast %union.tree_node* %72 to %struct.tree_decl*
  %rtl182 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl181, i32 0, i32 17
  store %struct.rtx_def* %call180, %struct.rtx_def** %rtl182, align 8
  %73 = load i32, i32* %reg_number, align 4
  %74 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl183 = bitcast %union.tree_node* %74 to %struct.tree_decl*
  %rtl184 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl183, i32 0, i32 17
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtl184, align 8
  %tobool185 = icmp ne %struct.rtx_def* %75, null
  br i1 %tobool185, label %cond.true.186, label %cond.false.189

cond.true.186:                                    ; preds = %if.end.174
  %76 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl187 = bitcast %union.tree_node* %76 to %struct.tree_decl*
  %rtl188 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl187, i32 0, i32 17
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtl188, align 8
  br label %cond.end.192

cond.false.189:                                   ; preds = %if.end.174
  %78 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %78, i8* null)
  %79 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl190 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %rtl191 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl190, i32 0, i32 17
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtl191, align 8
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.189, %cond.true.186
  %cond193 = phi %struct.rtx_def* [ %77, %cond.true.186 ], [ %80, %cond.false.189 ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond193, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx194 to i32*
  store i32 %73, i32* %rtuint, align 4
  %81 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl195 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %rtl196 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl195, i32 0, i32 17
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtl196, align 8
  %tobool197 = icmp ne %struct.rtx_def* %82, null
  br i1 %tobool197, label %cond.true.198, label %cond.false.201

cond.true.198:                                    ; preds = %cond.end.192
  %83 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl199 = bitcast %union.tree_node* %83 to %struct.tree_decl*
  %rtl200 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl199, i32 0, i32 17
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtl200, align 8
  br label %cond.end.204

cond.false.201:                                   ; preds = %cond.end.192
  %85 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %85, i8* null)
  %86 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl202 = bitcast %union.tree_node* %86 to %struct.tree_decl*
  %rtl203 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl202, i32 0, i32 17
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtl203, align 8
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.201, %cond.true.198
  %cond205 = phi %struct.rtx_def* [ %84, %cond.true.198 ], [ %87, %cond.false.201 ]
  %88 = bitcast %struct.rtx_def* %cond205 to i32*
  %bf.load206 = load i32, i32* %88, align 8
  %bf.clear207 = and i32 %bf.load206, -134217729
  %bf.set = or i32 %bf.clear207, 134217728
  store i32 %bf.set, i32* %88, align 8
  %89 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common208 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %static_flag209 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common208, i32 0, i32 2
  %bf.load210 = load i32, i32* %static_flag209, align 8
  %bf.lshr211 = lshr i32 %bf.load210, 18
  %bf.clear212 = and i32 %bf.lshr211, 1
  %tobool213 = icmp ne i32 %bf.clear212, 0
  br i1 %tobool213, label %if.then.214, label %if.end.305

if.then.214:                                      ; preds = %cond.end.204
  %90 = load i32, i32* %reg_number, align 4
  %cmp215 = icmp sge i32 %90, 8
  br i1 %cmp215, label %land.lhs.true.217, label %lor.lhs.false.220

land.lhs.true.217:                                ; preds = %if.then.214
  %91 = load i32, i32* %reg_number, align 4
  %cmp218 = icmp sle i32 %91, 15
  br i1 %cmp218, label %cond.true.238, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %land.lhs.true.217, %if.then.214
  %92 = load i32, i32* %reg_number, align 4
  %cmp221 = icmp sge i32 %92, 21
  br i1 %cmp221, label %land.lhs.true.223, label %lor.lhs.false.226

land.lhs.true.223:                                ; preds = %lor.lhs.false.220
  %93 = load i32, i32* %reg_number, align 4
  %cmp224 = icmp sle i32 %93, 28
  br i1 %cmp224, label %cond.true.238, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %land.lhs.true.223, %lor.lhs.false.220
  %94 = load i32, i32* %reg_number, align 4
  %cmp227 = icmp sge i32 %94, 45
  br i1 %cmp227, label %land.lhs.true.229, label %lor.lhs.false.232

land.lhs.true.229:                                ; preds = %lor.lhs.false.226
  %95 = load i32, i32* %reg_number, align 4
  %cmp230 = icmp sle i32 %95, 52
  br i1 %cmp230, label %cond.true.238, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %land.lhs.true.229, %lor.lhs.false.226
  %96 = load i32, i32* %reg_number, align 4
  %cmp233 = icmp sge i32 %96, 29
  br i1 %cmp233, label %land.lhs.true.235, label %cond.false.257

land.lhs.true.235:                                ; preds = %lor.lhs.false.232
  %97 = load i32, i32* %reg_number, align 4
  %cmp236 = icmp sle i32 %97, 36
  br i1 %cmp236, label %cond.true.238, label %cond.false.257

cond.true.238:                                    ; preds = %land.lhs.true.235, %land.lhs.true.229, %land.lhs.true.223, %land.lhs.true.217
  %98 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl239 = bitcast %union.tree_node* %98 to %struct.tree_decl*
  %mode240 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl239, i32 0, i32 5
  %99 = bitcast i48* %mode240 to i64*
  %bf.load241 = load i64, i64* %99, align 8
  %bf.clear242 = and i64 %bf.load241, 255
  %bf.cast243 = trunc i64 %bf.clear242 to i32
  %idxprom = sext i32 %bf.cast243 to i64
  %arrayidx244 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %100 = load i32, i32* %arrayidx244, align 4
  %cmp245 = icmp eq i32 %100, 5
  br i1 %cmp245, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.238
  %101 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl247 = bitcast %union.tree_node* %101 to %struct.tree_decl*
  %mode248 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl247, i32 0, i32 5
  %102 = bitcast i48* %mode248 to i64*
  %bf.load249 = load i64, i64* %102, align 8
  %bf.clear250 = and i64 %bf.load249, 255
  %bf.cast251 = trunc i64 %bf.clear250 to i32
  %idxprom252 = sext i32 %bf.cast251 to i64
  %arrayidx253 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom252
  %103 = load i32, i32* %arrayidx253, align 4
  %cmp254 = icmp eq i32 %103, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.238
  %104 = phi i1 [ true, %cond.true.238 ], [ %cmp254, %lor.rhs ]
  %cond256 = select i1 %104, i32 2, i32 1
  br label %cond.end.300

cond.false.257:                                   ; preds = %land.lhs.true.235, %lor.lhs.false.232
  %105 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl258 = bitcast %union.tree_node* %105 to %struct.tree_decl*
  %mode259 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl258, i32 0, i32 5
  %106 = bitcast i48* %mode259 to i64*
  %bf.load260 = load i64, i64* %106, align 8
  %bf.clear261 = and i64 %bf.load260, 255
  %bf.cast262 = trunc i64 %bf.clear261 to i32
  %cmp263 = icmp eq i32 %bf.cast262, 18
  br i1 %cmp263, label %cond.true.265, label %cond.false.268

cond.true.265:                                    ; preds = %cond.false.257
  %107 = load i32, i32* @target_flags, align 4
  %and = and i32 %107, 33554432
  %tobool266 = icmp ne i32 %and, 0
  %cond267 = select i1 %tobool266, i32 2, i32 3
  br label %cond.end.298

cond.false.268:                                   ; preds = %cond.false.257
  %108 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl269 = bitcast %union.tree_node* %108 to %struct.tree_decl*
  %mode270 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl269, i32 0, i32 5
  %109 = bitcast i48* %mode270 to i64*
  %bf.load271 = load i64, i64* %109, align 8
  %bf.clear272 = and i64 %bf.load271, 255
  %bf.cast273 = trunc i64 %bf.clear272 to i32
  %cmp274 = icmp eq i32 %bf.cast273, 24
  br i1 %cmp274, label %cond.true.276, label %cond.false.280

cond.true.276:                                    ; preds = %cond.false.268
  %110 = load i32, i32* @target_flags, align 4
  %and277 = and i32 %110, 33554432
  %tobool278 = icmp ne i32 %and277, 0
  %cond279 = select i1 %tobool278, i32 4, i32 6
  br label %cond.end.296

cond.false.280:                                   ; preds = %cond.false.268
  %111 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl281 = bitcast %union.tree_node* %111 to %struct.tree_decl*
  %mode282 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl281, i32 0, i32 5
  %112 = bitcast i48* %mode282 to i64*
  %bf.load283 = load i64, i64* %112, align 8
  %bf.clear284 = and i64 %bf.load283, 255
  %bf.cast285 = trunc i64 %bf.clear284 to i32
  %idxprom286 = sext i32 %bf.cast285 to i64
  %arrayidx287 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom286
  %113 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %113 to i32
  %114 = load i32, i32* @target_flags, align 4
  %and289 = and i32 %114, 33554432
  %tobool290 = icmp ne i32 %and289, 0
  %cond291 = select i1 %tobool290, i32 8, i32 4
  %add292 = add nsw i32 %conv288, %cond291
  %sub = sub nsw i32 %add292, 1
  %115 = load i32, i32* @target_flags, align 4
  %and293 = and i32 %115, 33554432
  %tobool294 = icmp ne i32 %and293, 0
  %cond295 = select i1 %tobool294, i32 8, i32 4
  %div = sdiv i32 %sub, %cond295
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.false.280, %cond.true.276
  %cond297 = phi i32 [ %cond279, %cond.true.276 ], [ %div, %cond.false.280 ]
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.end.296, %cond.true.265
  %cond299 = phi i32 [ %cond267, %cond.true.265 ], [ %cond297, %cond.end.296 ]
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.end.298, %lor.end
  %cond301 = phi i32 [ %cond256, %lor.end ], [ %cond299, %cond.end.298 ]
  store i32 %cond301, i32* %nregs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.300
  %116 = load i32, i32* %nregs, align 4
  %cmp302 = icmp sgt i32 %116, 0
  br i1 %cmp302, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %117 = load i32, i32* %reg_number, align 4
  %118 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %118, -1
  store i32 %dec, i32* %nregs, align 4
  %add304 = add nsw i32 %117, %dec
  call void @globalize_reg(i32 %add304)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.305

if.end.305:                                       ; preds = %while.end, %cond.end.204
  br label %do.end

if.end.306:                                       ; preds = %if.then.152
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.then.141
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.then.131
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.then.127
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %land.lhs.true.116, %if.end.109
  %119 = load i32, i32* %reg_number, align 4
  %cmp311 = icmp sge i32 %119, 0
  br i1 %cmp311, label %if.then.316, label %lor.lhs.false.313

lor.lhs.false.313:                                ; preds = %if.end.310
  %120 = load i32, i32* %reg_number, align 4
  %cmp314 = icmp eq i32 %120, -3
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %lor.lhs.false.313, %if.end.310
  %121 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %121, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.316, %lor.lhs.false.313
  %122 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common318 = bitcast %union.tree_node* %122 to %struct.tree_common*
  %code319 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common318, i32 0, i32 2
  %bf.load320 = load i32, i32* %code319, align 8
  %bf.clear321 = and i32 %bf.load320, 255
  %cmp322 = icmp eq i32 %bf.clear321, 34
  br i1 %cmp322, label %land.lhs.true.324, label %if.end.345

land.lhs.true.324:                                ; preds = %if.end.317
  %123 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl325 = bitcast %union.tree_node* %123 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl325, i32 0, i32 15
  %124 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp326 = icmp ne %union.tree_node* %124, null
  br i1 %cmp326, label %land.lhs.true.328, label %if.end.345

land.lhs.true.328:                                ; preds = %land.lhs.true.324
  %125 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl329 = bitcast %union.tree_node* %125 to %struct.tree_decl*
  %initial330 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl329, i32 0, i32 12
  %126 = load %union.tree_node*, %union.tree_node** %initial330, align 8
  %cmp331 = icmp eq %union.tree_node* %126, null
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.345

land.lhs.true.333:                                ; preds = %land.lhs.true.328
  %127 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl334 = bitcast %union.tree_node* %127 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl334, i32 0, i32 5
  %128 = bitcast i48* %common_flag to i64*
  %bf.load335 = load i64, i64* %128, align 8
  %bf.lshr336 = lshr i64 %bf.load335, 17
  %bf.clear337 = and i64 %bf.lshr336, 1
  %bf.cast338 = trunc i64 %bf.clear337 to i32
  %tobool339 = icmp ne i32 %bf.cast338, 0
  br i1 %tobool339, label %if.then.340, label %if.end.345

if.then.340:                                      ; preds = %land.lhs.true.333
  %129 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl341 = bitcast %union.tree_node* %129 to %struct.tree_decl*
  %common_flag342 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl341, i32 0, i32 5
  %130 = bitcast i48* %common_flag342 to i64*
  %bf.load343 = load i64, i64* %130, align 8
  %bf.clear344 = and i64 %bf.load343, -131073
  store i64 %bf.clear344, i64* %130, align 8
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.340, %land.lhs.true.333, %land.lhs.true.328, %land.lhs.true.324, %if.end.317
  %131 = load i32, i32* %top_level, align 4
  %tobool346 = icmp ne i32 %131, 0
  br i1 %tobool346, label %if.end.385, label %land.lhs.true.347

land.lhs.true.347:                                ; preds = %if.end.345
  %132 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common348 = bitcast %union.tree_node* %132 to %struct.tree_common*
  %public_flag349 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common348, i32 0, i32 2
  %bf.load350 = load i32, i32* %public_flag349, align 8
  %bf.lshr351 = lshr i32 %bf.load350, 19
  %bf.clear352 = and i32 %bf.lshr351, 1
  %tobool353 = icmp ne i32 %bf.clear352, 0
  br i1 %tobool353, label %if.end.385, label %land.lhs.true.354

land.lhs.true.354:                                ; preds = %land.lhs.true.347
  %133 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl355 = bitcast %union.tree_node* %133 to %struct.tree_decl*
  %context356 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl355, i32 0, i32 9
  %134 = load %union.tree_node*, %union.tree_node** %context356, align 8
  %tobool357 = icmp ne %union.tree_node* %134, null
  br i1 %tobool357, label %land.lhs.true.358, label %land.lhs.true.370

land.lhs.true.358:                                ; preds = %land.lhs.true.354
  %135 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl359 = bitcast %union.tree_node* %135 to %struct.tree_decl*
  %context360 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl359, i32 0, i32 9
  %136 = load %union.tree_node*, %union.tree_node** %context360, align 8
  %common361 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %code362 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common361, i32 0, i32 2
  %bf.load363 = load i32, i32* %code362, align 8
  %bf.clear364 = and i32 %bf.load363, 255
  %idxprom365 = sext i32 %bf.clear364 to i64
  %arrayidx366 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom365
  %137 = load i8, i8* %arrayidx366, align 1
  %conv367 = sext i8 %137 to i32
  %cmp368 = icmp eq i32 %conv367, 116
  br i1 %cmp368, label %if.end.385, label %land.lhs.true.370

land.lhs.true.370:                                ; preds = %land.lhs.true.358, %land.lhs.true.354
  %138 = load i8*, i8** %asmspec.addr, align 8
  %cmp371 = icmp eq i8* %138, null
  br i1 %cmp371, label %land.lhs.true.373, label %if.end.385

land.lhs.true.373:                                ; preds = %land.lhs.true.370
  %139 = load i8*, i8** %name, align 8
  %140 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl374 = bitcast %union.tree_node* %140 to %struct.tree_decl*
  %name375 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl374, i32 0, i32 8
  %141 = load %union.tree_node*, %union.tree_node** %name375, align 8
  %identifier376 = bitcast %union.tree_node* %141 to %struct.tree_identifier*
  %id377 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier376, i32 0, i32 1
  %str378 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id377, i32 0, i32 1
  %142 = load i8*, i8** %str378, align 8
  %cmp379 = icmp eq i8* %139, %142
  br i1 %cmp379, label %if.then.381, label %if.end.385

if.then.381:                                      ; preds = %land.lhs.true.373
  %143 = load i8*, i8** %name, align 8
  %call382 = call i64 @strlen(i8* %143) #7
  %add383 = add i64 %call382, 10
  %144 = alloca i8, i64 %add383
  store i8* %144, i8** %label, align 8
  %145 = load i8*, i8** %label, align 8
  %146 = load i8*, i8** %name, align 8
  %147 = load i32, i32* @var_labelno, align 4
  %call384 = call i32 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* %146, i32 %147) #6
  %148 = load i32, i32* @var_labelno, align 4
  %inc = add nsw i32 %148, 1
  store i32 %inc, i32* @var_labelno, align 4
  %149 = load i8*, i8** %label, align 8
  store i8* %149, i8** %new_name, align 8
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.381, %land.lhs.true.373, %land.lhs.true.370, %land.lhs.true.358, %land.lhs.true.347, %if.end.345
  %150 = load i8*, i8** %name, align 8
  %151 = load i8*, i8** %new_name, align 8
  %cmp386 = icmp ne i8* %150, %151
  br i1 %cmp386, label %if.then.388, label %if.end.404

if.then.388:                                      ; preds = %if.end.385
  %152 = load i8*, i8** %new_name, align 8
  %call389 = call %union.tree_node* @get_identifier(i8* %152)
  %153 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl390 = bitcast %union.tree_node* %153 to %struct.tree_decl*
  %assembler_name391 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl390, i32 0, i32 14
  store %union.tree_node* %call389, %union.tree_node** %assembler_name391, align 8
  %154 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl392 = bitcast %union.tree_node* %154 to %struct.tree_decl*
  %assembler_name393 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl392, i32 0, i32 14
  %155 = load %union.tree_node*, %union.tree_node** %assembler_name393, align 8
  %cmp394 = icmp ne %union.tree_node* %155, null
  br i1 %cmp394, label %cond.true.396, label %cond.false.397

cond.true.396:                                    ; preds = %if.then.388
  br label %cond.end.398

cond.false.397:                                   ; preds = %if.then.388
  %156 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %157 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %156(%union.tree_node* %157)
  br label %cond.end.398

cond.end.398:                                     ; preds = %cond.false.397, %cond.true.396
  %158 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl399 = bitcast %union.tree_node* %158 to %struct.tree_decl*
  %assembler_name400 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl399, i32 0, i32 14
  %159 = load %union.tree_node*, %union.tree_node** %assembler_name400, align 8
  %identifier401 = bitcast %union.tree_node* %159 to %struct.tree_identifier*
  %id402 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier401, i32 0, i32 1
  %str403 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id402, i32 0, i32 1
  %160 = load i8*, i8** %str403, align 8
  store i8* %160, i8** %name, align 8
  br label %if.end.404

if.end.404:                                       ; preds = %cond.end.398, %if.end.385
  %161 = load i32, i32* @flag_volatile_global, align 4
  %tobool405 = icmp ne i32 %161, 0
  br i1 %tobool405, label %land.lhs.true.406, label %lor.lhs.false.420

land.lhs.true.406:                                ; preds = %if.end.404
  %162 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common407 = bitcast %union.tree_node* %162 to %struct.tree_common*
  %code408 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common407, i32 0, i32 2
  %bf.load409 = load i32, i32* %code408, align 8
  %bf.clear410 = and i32 %bf.load409, 255
  %cmp411 = icmp eq i32 %bf.clear410, 34
  br i1 %cmp411, label %land.lhs.true.413, label %lor.lhs.false.420

land.lhs.true.413:                                ; preds = %land.lhs.true.406
  %163 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common414 = bitcast %union.tree_node* %163 to %struct.tree_common*
  %public_flag415 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common414, i32 0, i32 2
  %bf.load416 = load i32, i32* %public_flag415, align 8
  %bf.lshr417 = lshr i32 %bf.load416, 19
  %bf.clear418 = and i32 %bf.lshr417, 1
  %tobool419 = icmp ne i32 %bf.clear418, 0
  br i1 %tobool419, label %if.then.443, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %land.lhs.true.413, %land.lhs.true.406, %if.end.404
  %164 = load i32, i32* @flag_volatile_static, align 4
  %tobool421 = icmp ne i32 %164, 0
  br i1 %tobool421, label %land.lhs.true.422, label %if.end.448

land.lhs.true.422:                                ; preds = %lor.lhs.false.420
  %165 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common423 = bitcast %union.tree_node* %165 to %struct.tree_common*
  %code424 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common423, i32 0, i32 2
  %bf.load425 = load i32, i32* %code424, align 8
  %bf.clear426 = and i32 %bf.load425, 255
  %cmp427 = icmp eq i32 %bf.clear426, 34
  br i1 %cmp427, label %land.lhs.true.429, label %if.end.448

land.lhs.true.429:                                ; preds = %land.lhs.true.422
  %166 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common430 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %public_flag431 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common430, i32 0, i32 2
  %bf.load432 = load i32, i32* %public_flag431, align 8
  %bf.lshr433 = lshr i32 %bf.load432, 19
  %bf.clear434 = and i32 %bf.lshr433, 1
  %tobool435 = icmp ne i32 %bf.clear434, 0
  br i1 %tobool435, label %if.then.443, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %land.lhs.true.429
  %167 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common437 = bitcast %union.tree_node* %167 to %struct.tree_common*
  %static_flag438 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common437, i32 0, i32 2
  %bf.load439 = load i32, i32* %static_flag438, align 8
  %bf.lshr440 = lshr i32 %bf.load439, 18
  %bf.clear441 = and i32 %bf.lshr440, 1
  %tobool442 = icmp ne i32 %bf.clear441, 0
  br i1 %tobool442, label %if.then.443, label %if.end.448

if.then.443:                                      ; preds = %lor.lhs.false.436, %land.lhs.true.429, %land.lhs.true.413
  %168 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common444 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common444, i32 0, i32 2
  %bf.load445 = load i32, i32* %side_effects_flag, align 8
  %bf.clear446 = and i32 %bf.load445, -257
  %bf.set447 = or i32 %bf.clear446, 256
  store i32 %bf.set447, i32* %side_effects_flag, align 8
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.443, %lor.lhs.false.436, %land.lhs.true.422, %lor.lhs.false.420
  %169 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl449 = bitcast %union.tree_node* %169 to %struct.tree_decl*
  %mode450 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl449, i32 0, i32 5
  %170 = bitcast i48* %mode450 to i64*
  %bf.load451 = load i64, i64* %170, align 8
  %bf.clear452 = and i64 %bf.load451, 255
  %bf.cast453 = trunc i64 %bf.clear452 to i32
  %171 = load i32, i32* @target_flags, align 4
  %and454 = and i32 %171, 33554432
  %tobool455 = icmp ne i32 %and454, 0
  %cond456 = select i1 %tobool455, i32 5, i32 4
  %172 = load i8*, i8** %name, align 8
  %call457 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond456, i8* %172)
  %call458 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.cast453, %struct.rtx_def* %call457)
  store %struct.rtx_def* %call458, %struct.rtx_def** %x, align 8
  %173 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl459 = bitcast %union.tree_node* %173 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl459, i32 0, i32 5
  %174 = bitcast i48* %weak_flag to i64*
  %bf.load460 = load i64, i64* %174, align 8
  %bf.lshr461 = lshr i64 %bf.load460, 23
  %bf.clear462 = and i64 %bf.lshr461, 1
  %bf.cast463 = trunc i64 %bf.clear462 to i32
  %175 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld464, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx465 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %177 = bitcast %struct.rtx_def* %176 to i32*
  %bf.load466 = load i32, i32* %177, align 8
  %bf.value = and i32 %bf.cast463, 1
  %bf.shl = shl i32 %bf.value, 30
  %bf.clear467 = and i32 %bf.load466, -1073741825
  %bf.set468 = or i32 %bf.clear467, %bf.shl
  store i32 %bf.set468, i32* %177, align 8
  %178 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common469 = bitcast %union.tree_node* %178 to %struct.tree_common*
  %code470 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common469, i32 0, i32 2
  %bf.load471 = load i32, i32* %code470, align 8
  %bf.clear472 = and i32 %bf.load471, 255
  %cmp473 = icmp ne i32 %bf.clear472, 30
  br i1 %cmp473, label %if.then.475, label %if.end.476

if.then.475:                                      ; preds = %if.end.448
  %179 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %180 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @set_mem_attributes(%struct.rtx_def* %179, %union.tree_node* %180, i32 1)
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.475, %if.end.448
  %181 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %182 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl477 = bitcast %union.tree_node* %182 to %struct.tree_decl*
  %rtl478 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl477, i32 0, i32 17
  store %struct.rtx_def* %181, %struct.rtx_def** %rtl478, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.476
  %183 = load i32, i32* @flag_pic, align 4
  %tobool479 = icmp ne i32 %183, 0
  br i1 %tobool479, label %if.then.480, label %if.end.563

if.then.480:                                      ; preds = %do.body
  %184 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common482 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %code483 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common482, i32 0, i32 2
  %bf.load484 = load i32, i32* %code483, align 8
  %bf.clear485 = and i32 %bf.load484, 255
  %idxprom486 = sext i32 %bf.clear485 to i64
  %arrayidx487 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom486
  %185 = load i8, i8* %arrayidx487, align 1
  %conv488 = sext i8 %185 to i32
  %cmp489 = icmp ne i32 %conv488, 100
  br i1 %cmp489, label %cond.true.491, label %cond.false.493

cond.true.491:                                    ; preds = %if.then.480
  %186 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %real_cst = bitcast %union.tree_node* %186 to %struct.tree_real_cst*
  %rtl492 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 1
  %187 = load %struct.rtx_def*, %struct.rtx_def** %rtl492, align 8
  br label %cond.end.505

cond.false.493:                                   ; preds = %if.then.480
  %188 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl494 = bitcast %union.tree_node* %188 to %struct.tree_decl*
  %rtl495 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl494, i32 0, i32 17
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtl495, align 8
  %tobool496 = icmp ne %struct.rtx_def* %189, null
  br i1 %tobool496, label %cond.true.497, label %cond.false.500

cond.true.497:                                    ; preds = %cond.false.493
  %190 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl498 = bitcast %union.tree_node* %190 to %struct.tree_decl*
  %rtl499 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl498, i32 0, i32 17
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtl499, align 8
  br label %cond.end.503

cond.false.500:                                   ; preds = %cond.false.493
  %192 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %192, i8* null)
  %193 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl501 = bitcast %union.tree_node* %193 to %struct.tree_decl*
  %rtl502 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl501, i32 0, i32 17
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rtl502, align 8
  br label %cond.end.503

cond.end.503:                                     ; preds = %cond.false.500, %cond.true.497
  %cond504 = phi %struct.rtx_def* [ %191, %cond.true.497 ], [ %194, %cond.false.500 ]
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.end.503, %cond.true.491
  %cond506 = phi %struct.rtx_def* [ %187, %cond.true.491 ], [ %cond504, %cond.end.503 ]
  store %struct.rtx_def* %cond506, %struct.rtx_def** %rtl481, align 8
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtl481, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load507 = load i32, i32* %196, align 8
  %bf.clear508 = and i32 %bf.load507, 65535
  %cmp509 = icmp eq i32 %bf.clear508, 66
  br i1 %cmp509, label %if.then.511, label %if.end.562

if.then.511:                                      ; preds = %cond.end.505
  %197 = load i8*, i8** @ix86_debug_addr_string, align 8
  %cmp512 = icmp ne i8* %197, null
  br i1 %cmp512, label %land.lhs.true.514, label %if.end.536

land.lhs.true.514:                                ; preds = %if.then.511
  %198 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common515 = bitcast %union.tree_node* %198 to %struct.tree_common*
  %code516 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common515, i32 0, i32 2
  %bf.load517 = load i32, i32* %code516, align 8
  %bf.clear518 = and i32 %bf.load517, 255
  %idxprom519 = sext i32 %bf.clear518 to i64
  %arrayidx520 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom519
  %199 = load i8, i8* %arrayidx520, align 1
  %conv521 = sext i8 %199 to i32
  %cmp522 = icmp eq i32 %conv521, 100
  br i1 %cmp522, label %if.then.524, label %if.end.536

if.then.524:                                      ; preds = %land.lhs.true.514
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %201 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl525 = bitcast %union.tree_node* %201 to %struct.tree_decl*
  %name526 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl525, i32 0, i32 8
  %202 = load %union.tree_node*, %union.tree_node** %name526, align 8
  %identifier527 = bitcast %union.tree_node* %202 to %struct.tree_identifier*
  %id528 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier527, i32 0, i32 1
  %str529 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id528, i32 0, i32 1
  %203 = load i8*, i8** %str529, align 8
  %204 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common530 = bitcast %union.tree_node* %204 to %struct.tree_common*
  %public_flag531 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common530, i32 0, i32 2
  %bf.load532 = load i32, i32* %public_flag531, align 8
  %bf.lshr533 = lshr i32 %bf.load532, 19
  %bf.clear534 = and i32 %bf.lshr533, 1
  %call535 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i8* %203, i32 %bf.clear534)
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.524, %land.lhs.true.514, %if.then.511
  %205 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common537 = bitcast %union.tree_node* %205 to %struct.tree_common*
  %code538 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common537, i32 0, i32 2
  %bf.load539 = load i32, i32* %code538, align 8
  %bf.clear540 = and i32 %bf.load539, 255
  %idxprom541 = sext i32 %bf.clear540 to i64
  %arrayidx542 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom541
  %206 = load i8, i8* %arrayidx542, align 1
  %conv543 = sext i8 %206 to i32
  %cmp544 = icmp ne i32 %conv543, 100
  br i1 %cmp544, label %lor.end.553, label %lor.rhs.546

lor.rhs.546:                                      ; preds = %if.end.536
  %207 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common547 = bitcast %union.tree_node* %207 to %struct.tree_common*
  %public_flag548 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common547, i32 0, i32 2
  %bf.load549 = load i32, i32* %public_flag548, align 8
  %bf.lshr550 = lshr i32 %bf.load549, 19
  %bf.clear551 = and i32 %bf.lshr550, 1
  %tobool552 = icmp ne i32 %bf.clear551, 0
  %lnot = xor i1 %tobool552, true
  br label %lor.end.553

lor.end.553:                                      ; preds = %lor.rhs.546, %if.end.536
  %208 = phi i1 [ true, %if.end.536 ], [ %lnot, %lor.rhs.546 ]
  %lor.ext = zext i1 %208 to i32
  %209 = load %struct.rtx_def*, %struct.rtx_def** %rtl481, align 8
  %fld554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld554, i32 0, i64 0
  %rtx556 = bitcast %union.rtunion_def* %arrayidx555 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtx556, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load557 = load i32, i32* %211, align 8
  %bf.value558 = and i32 %lor.ext, 1
  %bf.shl559 = shl i32 %bf.value558, 27
  %bf.clear560 = and i32 %bf.load557, -134217729
  %bf.set561 = or i32 %bf.clear560, %bf.shl559
  store i32 %bf.set561, i32* %211, align 8
  br label %if.end.562

if.end.562:                                       ; preds = %lor.end.553, %cond.end.505
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.562, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.93, %if.end.305, %if.end.563
  ret void
}

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare void @error(i8*, ...) #1

declare void @warning(i8*, ...) #1

declare %struct.rtx_def* @gen_rtx_fmt_i0(i32, i32, i32) #1

declare void @globalize_reg(i32) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare void @set_mem_attributes(%struct.rtx_def*, %union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define void @make_var_volatile(%union.tree_node* %var) #0 {
entry:
  %var.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %var, %union.tree_node** %var.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl1 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %rtl2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 17
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtl2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %4, i8* null)
  %5 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl3 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %3, %cond.true ], [ %6, %cond.false ]
  %7 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 997, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.make_var_volatile, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %cond.end
  %8 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl5 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %rtl6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 17
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtl6, align 8
  %tobool7 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl9 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl10 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl9, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl10, align 8
  br label %cond.end.14

cond.false.11:                                    ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %12, i8* null)
  %13 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl12 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %rtl13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 17
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtl13, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.8
  %cond15 = phi %struct.rtx_def* [ %11, %cond.true.8 ], [ %14, %cond.false.11 ]
  %15 = bitcast %struct.rtx_def* %cond15 to i32*
  %bf.load16 = load i32, i32* %15, align 8
  %bf.clear17 = and i32 %bf.load16, -134217729
  %bf.set = or i32 %bf.clear17, 134217728
  store i32 %bf.set, i32* %15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_constant_align(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %align = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %align2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 7
  %2 = load i32, i32* %align2, align 4
  store i32 %2, i32* %align, align 4
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %4 = load i32, i32* %align, align 4
  %call = call i32 @ix86_constant_alignment(%union.tree_node* %3, i32 %4)
  store i32 %call, i32* %align, align 4
  %5 = load i32, i32* %align, align 4
  %cmp = icmp sgt i32 %5, 8
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %align, align 4
  %div = sdiv i32 %6, 8
  %conv = sext i32 %div to i64
  %call3 = call i32 @floor_log2_wide(i64 %conv)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %8 = load i32, i32* %align, align 4
  %div7 = sdiv i32 %8, 8
  %conv8 = sext i32 %div7 to i64
  %call9 = call i32 @floor_log2_wide(i64 %conv8)
  %shl = shl i32 1, %call9
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %shl)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @ix86_constant_alignment(%union.tree_node*, i32) #1

declare i32 @floor_log2_wide(i64) #1

; Function Attrs: nounwind uwtable
define void @assemble_asm(%union.tree_node* %string) #0 {
entry:
  %string.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %string, %union.tree_node** %string.addr, align 8
  call void @app_enable()
  %0 = load %union.tree_node*, %union.tree_node** %string.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 121
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %string.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %2, %union.tree_node** %string.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %4 = load %union.tree_node*, %union.tree_node** %string.addr, align 8
  %string1 = bitcast %union.tree_node* %4 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string1, i32 0, i32 3
  %5 = load i8*, i8** %pointer, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8* %5)
  ret void
}

declare void @app_enable() #1

; Function Attrs: nounwind uwtable
define void @default_stabs_asm_out_destructor(%struct.rtx_def* %symbol, i32 %priority) #0 {
entry:
  %symbol.addr = alloca %struct.rtx_def*, align 8
  %priority.addr = alloca i32, align 4
  store %struct.rtx_def* %symbol, %struct.rtx_def** %symbol.addr, align 8
  store i32 %priority, i32* %priority.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %symbol.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %3 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %1, i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_name(%struct._IO_FILE* %file, i8* %name) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %real_name = alloca i8*, align 8
  %id = alloca %union.tree_node*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 42
  %conv1 = zext i1 %cmp to i32
  %idx.ext = sext i32 %conv1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %real_name, align 8
  %3 = load i8*, i8** %real_name, align 8
  %call = call %union.tree_node* @maybe_get_identifier(i8* %3)
  store %union.tree_node* %call, %union.tree_node** %id, align 8
  %4 = load %union.tree_node*, %union.tree_node** %id, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %id, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %static_flag, align 8
  %bf.clear = and i32 %bf.load, -262145
  %bf.set = or i32 %bf.clear, 262144
  store i32 %bf.set, i32* %static_flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 42
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %8 = load i8*, i8** %name.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 @fputs(i8* %arrayidx7, %struct._IO_FILE* %9)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %11 = load i8*, i8** %name.addr, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0), i8* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @default_named_section_asm_out_destructor(%struct.rtx_def* %symbol, i32 %priority) #0 {
entry:
  %symbol.addr = alloca %struct.rtx_def*, align 8
  %priority.addr = alloca i32, align 4
  %section = alloca i8*, align 8
  %buf = alloca [16 x i8], align 16
  store %struct.rtx_def* %symbol, %struct.rtx_def** %symbol.addr, align 8
  store i32 %priority, i32* %priority.addr, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8** %section, align 8
  %0 = load i32, i32* %priority.addr, align 4
  %cmp = icmp ne i32 %0, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %1 = load i32, i32* %priority.addr, align 4
  %sub = sub nsw i32 65535, %1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i32 %sub) #6
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay1, i8** %section, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %section, align 8
  call void @named_section_flags(i8* %2, i32 512)
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  call void @assemble_align(i32 %cond)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %symbol.addr, align 8
  %5 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %5, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 64, i32 32
  %div = sdiv i32 %cond4, 8
  %6 = load i32, i32* @target_flags, align 4
  %and5 = and i32 %6, 33554432
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 64, i32 32
  %call8 = call zeroext i1 @assemble_integer(%struct.rtx_def* %4, i32 %div, i32 %cond7, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_align(i32 %align) #0 {
entry:
  %align.addr = alloca i32, align 4
  store i32 %align, i32* %align.addr, align 4
  %0 = load i32, i32* %align.addr, align 4
  %cmp = icmp sgt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %align.addr, align 4
  %div = sdiv i32 %1, 8
  %conv = sext i32 %div to i64
  %call = call i32 @floor_log2_wide(i64 %conv)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %3 = load i32, i32* %align.addr, align 4
  %div4 = sdiv i32 %3, 8
  %conv5 = sext i32 %div4 to i64
  %call6 = call i32 @floor_log2_wide(i64 %conv5)
  %shl = shl i32 1, %call6
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %shl)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @assemble_integer(%struct.rtx_def* %x, i32 %size, i32 %align, i32 %force) #0 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca %struct.rtx_def*, align 8
  %size.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  %aligned_p = alloca i32, align 4
  %omode = alloca i32, align 4
  %imode = alloca i32, align 4
  %subalign = alloca i32, align 4
  %subsize = alloca i32, align 4
  %i = alloca i32, align 4
  %partial = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %align, i32* %align.addr, align 4
  store i32 %force, i32* %force.addr, align 4
  %0 = load i32, i32* %align.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %1, 8
  %cmp = icmp ult i32 %mul, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4
  %mul1 = mul i32 %2, 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul1, %cond.true ], [ 128, %cond.false ]
  %cmp2 = icmp uge i32 %0, %cond
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %aligned_p, align 4
  %3 = load i1 (%struct.rtx_def*, i32, i32)*, i1 (%struct.rtx_def*, i32, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 5), align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %6 = load i32, i32* %aligned_p, align 4
  %call = call zeroext i1 %3(%struct.rtx_def* %4, i32 %5, i32 %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load i32, i32* %size.addr, align 4
  %cmp3 = icmp ugt i32 %7, 1
  br i1 %cmp3, label %if.then.5, label %if.end.43

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %size.addr, align 4
  %9 = load i32, i32* @target_flags, align 4
  %and = and i32 %9, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond6 = select i1 %tobool, i32 8, i32 4
  %cmp7 = icmp ugt i32 %8, %cond6
  br i1 %cmp7, label %cond.true.9, label %cond.false.13

cond.true.9:                                      ; preds = %if.then.5
  %10 = load i32, i32* @target_flags, align 4
  %and10 = and i32 %10, 33554432
  %tobool11 = icmp ne i32 %and10, 0
  %cond12 = select i1 %tobool11, i32 8, i32 4
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.then.5
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.9
  %cond15 = phi i32 [ %cond12, %cond.true.9 ], [ 1, %cond.false.13 ]
  store i32 %cond15, i32* %subsize, align 4
  %11 = load i32, i32* %align.addr, align 4
  %12 = load i32, i32* %subsize, align 4
  %mul16 = mul i32 %12, 8
  %cmp17 = icmp ult i32 %11, %mul16
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.14
  %13 = load i32, i32* %align.addr, align 4
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end.14
  %14 = load i32, i32* %subsize, align 4
  %mul21 = mul i32 %14, 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i32 [ %13, %cond.true.19 ], [ %mul21, %cond.false.20 ]
  store i32 %cond23, i32* %subalign, align 4
  %15 = load i32, i32* %subsize, align 4
  %mul24 = mul i32 %15, 8
  %call25 = call i32 @mode_for_size(i32 %mul24, i32 1, i32 0)
  store i32 %call25, i32* %omode, align 4
  %16 = load i32, i32* %size.addr, align 4
  %mul26 = mul i32 %16, 8
  %call27 = call i32 @mode_for_size(i32 %mul26, i32 1, i32 0)
  store i32 %call27, i32* %imode, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.22
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %size.addr, align 4
  %cmp28 = icmp ult i32 %17, %18
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %omode, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = load i32, i32* %imode, align 4
  %22 = load i32, i32* %i, align 4
  %call30 = call %struct.rtx_def* @simplify_subreg(i32 %19, %struct.rtx_def* %20, i32 %21, i32 %22)
  store %struct.rtx_def* %call30, %struct.rtx_def** %partial, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %partial, align 8
  %tobool31 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool31, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %for.body
  %24 = load %struct.rtx_def*, %struct.rtx_def** %partial, align 8
  %25 = load i32, i32* %subsize, align 4
  %26 = load i32, i32* %subalign, align 4
  %call32 = call zeroext i1 @assemble_integer(%struct.rtx_def* %24, i32 %25, i32 %26, i32 0)
  br i1 %call32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end.34:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %27 = load i32, i32* %subsize, align 4
  %28 = load i32, i32* %i, align 4
  %add = add i32 %28, %27
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.33, %for.cond
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %size.addr, align 4
  %cmp35 = icmp eq i32 %29, %30
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  store i1 true, i1* %retval
  br label %return

if.end.38:                                        ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %cmp39 = icmp ugt i32 %31, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.assemble_integer, i32 0, i32 0)) #8
  unreachable

if.end.42:                                        ; preds = %if.end.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  %32 = load i32, i32* %force.addr, align 4
  %tobool44 = icmp ne i32 %32, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2012, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.assemble_integer, i32 0, i32 0)) #8
  unreachable

if.end.46:                                        ; preds = %if.end.43
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.37, %if.then
  %33 = load i1, i1* %retval
  ret i1 %33
}

; Function Attrs: nounwind uwtable
define void @default_stabs_asm_out_constructor(%struct.rtx_def* %symbol, i32 %priority) #0 {
entry:
  %symbol.addr = alloca %struct.rtx_def*, align 8
  %priority.addr = alloca i32, align 4
  store %struct.rtx_def* %symbol, %struct.rtx_def** %symbol.addr, align 8
  store i32 %priority, i32* %priority.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %symbol.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %3 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %1, i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_named_section_asm_out_constructor(%struct.rtx_def* %symbol, i32 %priority) #0 {
entry:
  %symbol.addr = alloca %struct.rtx_def*, align 8
  %priority.addr = alloca i32, align 4
  %section = alloca i8*, align 8
  %buf = alloca [16 x i8], align 16
  store %struct.rtx_def* %symbol, %struct.rtx_def** %symbol.addr, align 8
  store i32 %priority, i32* %priority.addr, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8** %section, align 8
  %0 = load i32, i32* %priority.addr, align 4
  %cmp = icmp ne i32 %0, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %1 = load i32, i32* %priority.addr, align 4
  %sub = sub nsw i32 65535, %1
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i32 %sub) #6
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay1, i8** %section, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %section, align 8
  call void @named_section_flags(i8* %2, i32 512)
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  call void @assemble_align(i32 %cond)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %symbol.addr, align 8
  %5 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %5, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 64, i32 32
  %div = sdiv i32 %cond4, 8
  %6 = load i32, i32* @target_flags, align 4
  %and5 = and i32 %6, 33554432
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 64, i32 32
  %call8 = call zeroext i1 @assemble_integer(%struct.rtx_def* %4, i32 %div, i32 %cond7, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_start_function(%union.tree_node* %decl, i8* %fnname) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %fnname.addr = alloca i8*, align 8
  %align = alloca i32, align 4
  %p = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %fnname, i8** %fnname.addr, align 8
  call void @app_disable()
  %0 = load i8*, i8** %fnname.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @output_constant_pool(i8* %0, %union.tree_node* %1)
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %3 = load i32, i32* @flag_function_sections, align 4
  call void @resolve_unique_section(%union.tree_node* %2, i32 0, i32 %3)
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @function_section(%union.tree_node* %4)
  %call = call i32 @floor_log2_wide(i64 2)
  store i32 %call, i32* %align, align 4
  %5 = load i32, i32* %align, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %align, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %8 = load i32, i32* %align, align 4
  %shl = shl i32 1, %8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %shl)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load i32, i32* @align_functions_log, align 4
  %10 = load i32, i32* %align, align 4
  %cmp5 = icmp sgt i32 %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %11 = load i32, i32* @align_functions_log, align 4
  %cmp7 = icmp ne i32 %11, 0
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %do.body
  %12 = load i32, i32* @align_functions, align 4
  %sub = sub nsw i32 %12, 1
  %cmp9 = icmp eq i32 %sub, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %14 = load i32, i32* @align_functions_log, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i32 %14)
  br label %if.end.14

if.else:                                          ; preds = %if.then.8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %16 = load i32, i32* @align_functions_log, align 4
  %17 = load i32, i32* @align_functions, align 4
  %sub12 = sub nsw i32 %17, 1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i32 %16, i32 %sub12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %if.end.4
  %18 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %begin_function = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %18, i32 0, i32 13
  %19 = load void (%union.tree_node*)*, void (%union.tree_node*)** %begin_function, align 8
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %19(%union.tree_node* %20)
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %21 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then.17, label %if.end.41

if.then.17:                                       ; preds = %if.end.16
  %22 = load i8*, i8** @first_global_object_name, align 8
  %tobool18 = icmp ne i8* %22, null
  br i1 %tobool18, label %if.end.40, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  %23 = load i8*, i8** %fnname.addr, align 8
  %24 = load i8*, i8** %fnname.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %25 to i32
  %cmp20 = icmp eq i32 %conv, 42
  %conv21 = zext i1 %cmp20 to i32
  %idx.ext = sext i32 %conv21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %26 = load i8*, i8** %p, align 8
  %call22 = call i64 @strlen(i8* %26) #7
  %add = add i64 %call22, 1
  %conv23 = trunc i64 %add to i32
  %call24 = call i8* @permalloc(i32 %conv23)
  store i8* %call24, i8** %name, align 8
  %27 = load i8*, i8** %name, align 8
  %28 = load i8*, i8** %p, align 8
  %call25 = call i8* @strcpy(i8* %27, i8* %28) #6
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl26 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 5
  %30 = bitcast i48* %weak_flag to i64*
  %bf.load27 = load i64, i64* %30, align 8
  %bf.lshr28 = lshr i64 %bf.load27, 23
  %bf.clear29 = and i64 %bf.lshr28, 1
  %bf.cast = trunc i64 %bf.clear29 to i32
  %tobool30 = icmp ne i32 %bf.cast, 0
  br i1 %tobool30, label %if.else.38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.19
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl31 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl31, i32 0, i32 5
  %32 = bitcast i48* %transparent_union to i64*
  %bf.load32 = load i64, i64* %32, align 8
  %bf.lshr33 = lshr i64 %bf.load32, 19
  %bf.clear34 = and i64 %bf.lshr33, 1
  %bf.cast35 = trunc i64 %bf.clear34 to i32
  %tobool36 = icmp ne i32 %bf.cast35, 0
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true
  %33 = load i8*, i8** %name, align 8
  store i8* %33, i8** @first_global_object_name, align 8
  br label %if.end.39

if.else.38:                                       ; preds = %land.lhs.true, %if.then.19
  %34 = load i8*, i8** %name, align 8
  store i8* %34, i8** @weak_global_object_name, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.17
  %35 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @globalize_decl(%union.tree_node* %35)
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.16
  br label %do.body.42

do.body.42:                                       ; preds = %if.end.41
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %38 = load i8*, i8** %fnname.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %37, i8* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call44 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call46 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %43 = load i8*, i8** %fnname.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %42, i8* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %44)
  br label %do.end.48

do.end.48:                                        ; preds = %do.body.42
  ret void
}

declare void @app_disable() #1

; Function Attrs: nounwind uwtable
define void @output_constant_pool(i8* %fnname, %union.tree_node* %fndecl) #0 {
entry:
  %fnname.addr = alloca i8*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %pool = alloca %struct.pool_constant*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %u = alloca %union.real_extract, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %units = alloca i32, align 4
  %elt = alloca %struct.rtx_def*, align 8
  %i89 = alloca i32, align 4
  %units91 = alloca i32, align 4
  %elt93 = alloca %struct.rtx_def*, align 8
  store i8* %fnname, i8** %fnname.addr, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  call void @mark_constant_pool()
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 4
  %1 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_first_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %1, i32 0, i32 2
  %2 = load %struct.pool_constant*, %struct.pool_constant** %x_first_pool, align 8
  store %struct.pool_constant* %2, %struct.pool_constant** %pool, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.125, %entry
  %3 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %tobool = icmp ne %struct.pool_constant* %3, null
  br i1 %tobool, label %for.body, label %for.end.126

for.body:                                         ; preds = %for.cond
  %4 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %4, i32 0, i32 3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %x, align 8
  %6 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mark = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %6, i32 0, i32 8
  %7 = load i32, i32* %mark, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.125

if.end:                                           ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %tmp, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 58, label %sw.bb
    i32 67, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load2 = load i32, i32* %13, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp ne i32 %bf.clear3, 75
  br i1 %cmp, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load10 = load i32, i32* %17, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp ne i32 %bf.clear11, 67
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %sw.bb
  br label %sw.epilog

if.end.14:                                        ; preds = %lor.lhs.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %tmp, align 8
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %if.end, %if.end.14
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %tmp, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load25 = load i32, i32* %24, align 8
  %bf.lshr = lshr i32 %bf.load25, 27
  %bf.clear26 = and i32 %bf.lshr, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %if.then.35, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %sw.bb.21
  %25 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load29 = load i32, i32* %26, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 37
  br i1 %cmp31, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %lor.lhs.false.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %28 = load i32, i32* %rtint, align 4
  %cmp34 = icmp eq i32 %28, -99
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true, %sw.bb.21
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 3998, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.output_constant_pool, i32 0, i32 0)) #8
  unreachable

if.end.36:                                        ; preds = %land.lhs.true, %lor.lhs.false.28
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.36, %if.then.13
  %29 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %29, i32 0, i32 4
  %30 = load i32, i32* %mode, align 4
  %31 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %31, i32 0, i32 6
  %32 = load i32, i32* %align, align 4
  %conv = zext i32 %32 to i64
  call void @mergeable_constant_section(i32 %30, i64 %conv, i32 0)
  %33 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align37 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %33, i32 0, i32 6
  %34 = load i32, i32* %align37, align 4
  call void @assemble_align(i32 %34)
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %36 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %labelno = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %36, i32 0, i32 5
  %37 = load i32, i32* %labelno, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i32 %37)
  br label %do.end

do.end:                                           ; preds = %do.body
  %38 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode38 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %38, i32 0, i32 4
  %39 = load i32, i32* %mode38, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %40 = load i32, i32* %arrayidx39, align 4
  switch i32 %40, label %sw.default.123 [
    i32 2, label %sw.bb.40
    i32 1, label %sw.bb.51
    i32 3, label %sw.bb.51
    i32 8, label %sw.bb.58
    i32 7, label %sw.bb.87
  ]

sw.bb.40:                                         ; preds = %do.end
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load41 = load i32, i32* %42, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp ne i32 %bf.clear42, 55
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.40
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4029, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.output_constant_pool, i32 0, i32 0)) #8
  unreachable

if.end.46:                                        ; preds = %sw.bb.40
  %43 = bitcast %union.real_extract* %u to i8*
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx48 to i64*
  %45 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %45, i64 24, i32 1, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %46 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode49 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %46, i32 0, i32 4
  %47 = load i32, i32* %mode49, align 4
  %48 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align50 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %48, i32 0, i32 6
  %49 = load i32, i32* %align50, align 4
  call void @assemble_real(%struct.realvaluetype* byval align 8 %d, i32 %47, i32 %49)
  br label %sw.epilog.124

sw.bb.51:                                         ; preds = %do.end, %do.end
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %51 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode52 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %51, i32 0, i32 4
  %52 = load i32, i32* %mode52, align 4
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom53
  %53 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %53 to i32
  %54 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align56 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %54, i32 0, i32 6
  %55 = load i32, i32* %align56, align 4
  %call57 = call zeroext i1 @assemble_integer(%struct.rtx_def* %50, i32 %conv55, i32 %55, i32 1)
  br label %sw.epilog.124

sw.bb.58:                                         ; preds = %do.end
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load62 = load i32, i32* %57, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp ne i32 %bf.clear63, 56
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %sw.bb.58
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4046, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.output_constant_pool, i32 0, i32 0)) #8
  unreachable

if.end.67:                                        ; preds = %sw.bb.58
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtvec_def**
  %59 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %59, i32 0, i32 0
  %60 = load i32, i32* %num_elem, align 4
  store i32 %60, i32* %units, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.end.67
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %units, align 4
  %cmp71 = icmp slt i32 %61, %62
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %63 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtvec77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtvec_def**
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec77, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom74
  %66 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx78, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %elt, align 8
  %67 = bitcast %union.real_extract* %u to i8*
  %68 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 1
  %rtwint81 = bitcast %union.rtunion_def* %arrayidx80 to i64*
  %69 = bitcast i64* %rtwint81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %69, i64 24, i32 1, i1 false)
  %d82 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %70 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode83 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %70, i32 0, i32 4
  %71 = load i32, i32* %mode83, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds [59 x i32], [59 x i32]* @inner_mode_array, i32 0, i64 %idxprom84
  %72 = load i32, i32* %arrayidx85, align 4
  %73 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align86 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %73, i32 0, i32 6
  %74 = load i32, i32* %align86, align 4
  call void @assemble_real(%struct.realvaluetype* byval align 8 %d82, i32 %72, i32 %74)
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %75 = load i32, i32* %i, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  br label %sw.epilog.124

sw.bb.87:                                         ; preds = %do.end
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load94 = load i32, i32* %77, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp ne i32 %bf.clear95, 56
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %sw.bb.87
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4067, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.output_constant_pool, i32 0, i32 0)) #8
  unreachable

if.end.99:                                        ; preds = %sw.bb.87
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 0
  %rtvec102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtvec_def**
  %79 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec102, align 8
  %num_elem103 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %79, i32 0, i32 0
  %80 = load i32, i32* %num_elem103, align 4
  store i32 %80, i32* %units91, align 4
  store i32 0, i32* %i89, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.120, %if.end.99
  %81 = load i32, i32* %i89, align 4
  %82 = load i32, i32* %units91, align 4
  %cmp105 = icmp slt i32 %81, %82
  br i1 %cmp105, label %for.body.107, label %for.end.122

for.body.107:                                     ; preds = %for.cond.104
  %83 = load i32, i32* %i89, align 4
  %idxprom108 = sext i32 %83 to i64
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtvec111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtvec_def**
  %85 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec111, align 8
  %elem112 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %85, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem112, i32 0, i64 %idxprom108
  %86 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx113, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %elt93, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %elt93, align 8
  %88 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode114 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %88, i32 0, i32 4
  %89 = load i32, i32* %mode114, align 4
  %idxprom115 = sext i32 %89 to i64
  %arrayidx116 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom115
  %90 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %90 to i32
  %91 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align118 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %91, i32 0, i32 6
  %92 = load i32, i32* %align118, align 4
  %call119 = call zeroext i1 @assemble_integer(%struct.rtx_def* %87, i32 %conv117, i32 %92, i32 1)
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.107
  %93 = load i32, i32* %i89, align 4
  %inc121 = add nsw i32 %93, 1
  store i32 %inc121, i32* %i89, align 4
  br label %for.cond.104

for.end.122:                                      ; preds = %for.cond.104
  br label %sw.epilog.124

sw.default.123:                                   ; preds = %do.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4081, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.output_constant_pool, i32 0, i32 0)) #8
  unreachable

sw.epilog.124:                                    ; preds = %for.end.122, %for.end, %sw.bb.51, %if.end.46
  br label %for.inc.125

for.inc.125:                                      ; preds = %sw.epilog.124, %if.then
  %94 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %next = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %94, i32 0, i32 1
  %95 = load %struct.pool_constant*, %struct.pool_constant** %next, align 8
  store %struct.pool_constant* %95, %struct.pool_constant** %pool, align 8
  br label %for.cond

for.end.126:                                      ; preds = %for.cond
  %96 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm127 = getelementptr inbounds %struct.function, %struct.function* %96, i32 0, i32 4
  %97 = load %struct.varasm_status*, %struct.varasm_status** %varasm127, align 8
  %x_last_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %97, i32 0, i32 3
  store %struct.pool_constant* null, %struct.pool_constant** %x_last_pool, align 8
  %98 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm128 = getelementptr inbounds %struct.function, %struct.function* %98, i32 0, i32 4
  %99 = load %struct.varasm_status*, %struct.varasm_status** %varasm128, align 8
  %x_first_pool129 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %99, i32 0, i32 2
  store %struct.pool_constant* null, %struct.pool_constant** %x_first_pool129, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @resolve_unique_section(%union.tree_node* %decl, i32 %reloc, i32 %flag_function_or_data_sections) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %reloc.addr = alloca i32, align 4
  %flag_function_or_data_sections.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %sec = alloca i32, align 4
  %name = alloca i8*, align 8
  %string = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %reloc, i32* %reloc.addr, align 4
  store i32 %flag_function_or_data_sections, i32* %flag_function_or_data_sections.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 15
  %1 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %flag_function_or_data_sections.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 13), align 1
  %tobool2 = trunc i8 %3 to i1
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.84

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 5
  %5 = bitcast i48* %transparent_union to i64*
  %bf.load = load i64, i64* %5, align 8
  %bf.lshr = lshr i64 %bf.load, 19
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.then, label %if.end.84

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load6 = load i32, i32* %code, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 30
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %sec, align 4
  br label %if.end.60

if.else:                                          ; preds = %do.body
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl10 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 12
  %8 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp11 = icmp eq %union.tree_node* %8, null
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl13 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %initial14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 12
  %10 = load %union.tree_node*, %union.tree_node** %initial14, align 8
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp15 = icmp eq %union.tree_node* %10, %11
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %lor.lhs.false.12, %if.else
  store i32 3, i32* %sec, align 4
  br label %if.end.59

if.else.17:                                       ; preds = %lor.lhs.false.12
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common18 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load19 = load i32, i32* %readonly_flag, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 12
  %bf.clear21 = and i32 %bf.lshr20, 1
  %tobool22 = icmp ne i32 %bf.clear21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.58

land.lhs.true.23:                                 ; preds = %if.else.17
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common24 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load25 = load i32, i32* %volatile_flag, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 11
  %bf.clear27 = and i32 %bf.lshr26, 1
  %tobool28 = icmp ne i32 %bf.clear27, 0
  br i1 %tobool28, label %if.else.58, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %land.lhs.true.23
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl30 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %initial31 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl30, i32 0, i32 12
  %15 = load %union.tree_node*, %union.tree_node** %initial31, align 8
  %tobool32 = icmp ne %union.tree_node* %15, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.58

land.lhs.true.33:                                 ; preds = %land.lhs.true.29
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl34 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %initial35 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl34, i32 0, i32 12
  %17 = load %union.tree_node*, %union.tree_node** %initial35, align 8
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp36 = icmp eq %union.tree_node* %17, %18
  br i1 %cmp36, label %land.lhs.true.45, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.33
  %19 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl38 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %initial39 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl38, i32 0, i32 12
  %20 = load %union.tree_node*, %union.tree_node** %initial39, align 8
  %common40 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load41 = load i32, i32* %constant_flag, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 9
  %bf.clear43 = and i32 %bf.lshr42, 1
  %tobool44 = icmp ne i32 %bf.clear43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.else.58

land.lhs.true.45:                                 ; preds = %lor.lhs.false.37, %land.lhs.true.33
  %21 = load i32, i32* %reloc.addr, align 4
  %tobool46 = icmp ne i32 %21, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.then.57

land.lhs.true.47:                                 ; preds = %land.lhs.true.45
  %22 = load i32, i32* @flag_pic, align 4
  %tobool48 = icmp ne i32 %22, 0
  br i1 %tobool48, label %if.else.58, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.47
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl50 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %transparent_union51 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl50, i32 0, i32 5
  %24 = bitcast i48* %transparent_union51 to i64*
  %bf.load52 = load i64, i64* %24, align 8
  %bf.lshr53 = lshr i64 %bf.load52, 19
  %bf.clear54 = and i64 %bf.lshr53, 1
  %bf.cast55 = trunc i64 %bf.clear54 to i32
  %tobool56 = icmp ne i32 %bf.cast55, 0
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.45
  store i32 1, i32* %sec, align 4
  br label %if.end

if.else.58:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.47, %lor.lhs.false.37, %land.lhs.true.29, %land.lhs.true.23, %if.else.17
  store i32 2, i32* %sec, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.58, %if.then.57
  br label %if.end.59

if.end.59:                                        ; preds = %if.end, %if.then.16
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.9
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl61 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl61, i32 0, i32 14
  %26 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp62 = icmp ne %union.tree_node* %26, null
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.60
  br label %cond.end

cond.false:                                       ; preds = %if.end.60
  %27 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %28 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %27(%union.tree_node* %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl63 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %assembler_name64 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl63, i32 0, i32 14
  %30 = load %union.tree_node*, %union.tree_node** %assembler_name64, align 8
  %identifier = bitcast %union.tree_node* %30 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %31 = load i8*, i8** %str, align 8
  store i8* %31, i8** %name, align 8
  %32 = load i8*, i8** %name, align 8
  %33 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %34 to i32
  %cmp65 = icmp eq i32 %conv, 42
  %conv66 = zext i1 %cmp65 to i32
  %idx.ext = sext i32 %conv66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %name, align 8
  %35 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl67 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %transparent_union68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 5
  %36 = bitcast i48* %transparent_union68 to i64*
  %bf.load69 = load i64, i64* %36, align 8
  %bf.lshr70 = lshr i64 %bf.load69, 19
  %bf.clear71 = and i64 %bf.lshr70, 1
  %bf.cast72 = trunc i64 %bf.clear71 to i32
  %idxprom = zext i32 %bf.cast72 to i64
  %37 = load i32, i32* %sec, align 4
  %idxprom73 = sext i32 %37 to i64
  %arrayidx74 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* @resolve_unique_section.prefixes, i32 0, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx74, i32 0, i64 %idxprom
  %38 = load i8*, i8** %arrayidx75, align 8
  store i8* %38, i8** %prefix, align 8
  %39 = load i8*, i8** %name, align 8
  %call = call i64 @strlen(i8* %39) #7
  %40 = load i8*, i8** %prefix, align 8
  %call76 = call i64 @strlen(i8* %40) #7
  %add = add i64 %call, %call76
  %conv77 = trunc i64 %add to i32
  store i32 %conv77, i32* %len, align 4
  %41 = load i32, i32* %len, align 4
  %add78 = add nsw i32 %41, 1
  %conv79 = sext i32 %add78 to i64
  %42 = alloca i8, i64 %conv79
  store i8* %42, i8** %string, align 8
  %43 = load i8*, i8** %string, align 8
  %44 = load i8*, i8** %prefix, align 8
  %45 = load i8*, i8** %name, align 8
  %call80 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8* %44, i8* %45) #6
  %46 = load i32, i32* %len, align 4
  %47 = load i8*, i8** %string, align 8
  %call81 = call %union.tree_node* @build_string(i32 %46, i8* %47)
  %48 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl82 = bitcast %union.tree_node* %48 to %struct.tree_decl*
  %section_name83 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl82, i32 0, i32 15
  store %union.tree_node* %call81, %union.tree_node** %section_name83, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end
  br label %if.end.84

if.end.84:                                        ; preds = %do.end, %land.lhs.true.3, %lor.lhs.false, %entry
  ret void
}

declare i8* @permalloc(i32) #1

; Function Attrs: nounwind uwtable
define internal void @globalize_decl(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %name = alloca i8*, align 8
  %p = alloca %union.tree_node**, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 17
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %rtl3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 17
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtl3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %4, i8* null)
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %3, %cond.true ], [ %6, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx7 to i8**
  %8 = load i8*, i8** %rtstr, align 8
  store i8* %8, i8** %name, align 8
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl8 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %10 = bitcast i48* %weak_flag to i64*
  %bf.load = load i64, i64* %10, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool9 = icmp ne i32 %bf.cast, 0
  br i1 %tobool9, label %if.then, label %if.end.34

if.then:                                          ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %13 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %12, i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call10 = call i32 @fputc(i32 10, %struct._IO_FILE* %14)
  br label %do.end

do.end:                                           ; preds = %do.body
  store %union.tree_node** @weak_decls, %union.tree_node*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %do.end
  %15 = load %union.tree_node**, %union.tree_node*** %p, align 8
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8
  store %union.tree_node* %16, %union.tree_node** %t, align 8
  %tobool11 = icmp ne %union.tree_node* %16, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl12 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 14
  %18 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp = icmp ne %union.tree_node* %18, null
  br i1 %cmp, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %for.body
  br label %cond.end.15

cond.false.14:                                    ; preds = %for.body
  %19 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %19(%union.tree_node* %20)
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl16 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %assembler_name17 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 14
  %22 = load %union.tree_node*, %union.tree_node** %assembler_name17, align 8
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %23 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %24 = load %union.tree_node*, %union.tree_node** %value, align 8
  %decl18 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %assembler_name19 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl18, i32 0, i32 14
  %25 = load %union.tree_node*, %union.tree_node** %assembler_name19, align 8
  %cmp20 = icmp ne %union.tree_node* %25, null
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.15
  br label %cond.end.25

cond.false.22:                                    ; preds = %cond.end.15
  %26 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %27 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list23 = bitcast %union.tree_node* %27 to %struct.tree_list*
  %value24 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list23, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %value24, align 8
  call void %26(%union.tree_node* %28)
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.22, %cond.true.21
  %29 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list26 = bitcast %union.tree_node* %29 to %struct.tree_list*
  %value27 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list26, i32 0, i32 2
  %30 = load %union.tree_node*, %union.tree_node** %value27, align 8
  %decl28 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %assembler_name29 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl28, i32 0, i32 14
  %31 = load %union.tree_node*, %union.tree_node** %assembler_name29, align 8
  %cmp30 = icmp eq %union.tree_node* %22, %31
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %cond.end.25
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %32 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %34 = load %union.tree_node**, %union.tree_node*** %p, align 8
  store %union.tree_node* %33, %union.tree_node** %34, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.25
  %35 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common32 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %chain33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 0
  store %union.tree_node** %chain33, %union.tree_node*** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.31
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

if.end.34:                                        ; preds = %cond.end
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %38 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %37, i8* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %39)
  br label %return

return:                                           ; preds = %if.end.34, %for.end
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @assemble_end_function(%union.tree_node* %decl, i8* %fnname) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %fnname.addr = alloca i8*, align 8
  %label = alloca [256 x i8], align 16
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %fnname, i8** %fnname.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @flag_inhibit_size_directive, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* @assemble_end_function.labelno, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @assemble_end_function.labelno, align 4
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %label, i32 0, i32 0
  %2 = load i32, i32* @assemble_end_function.labelno, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 %2) #6
  br label %do.end

do.end:                                           ; preds = %do.body.1
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %4 = load i32, i32* @assemble_end_function.labelno, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i32 %4)
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load i8*, i8** %fnname.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %label, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %9, i8* %arraydecay7)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %12 = load i8*, i8** %fnname.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call9 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %do.end.4, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end
  call void @output_after_function_constants()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_after_function_constants() #0 {
entry:
  %p = alloca %struct.deferred_constant*, align 8
  %next = alloca %struct.deferred_constant*, align 8
  %0 = load %struct.deferred_constant*, %struct.deferred_constant** @after_function_constants, align 8
  store %struct.deferred_constant* %0, %struct.deferred_constant** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %tobool = icmp ne %struct.deferred_constant* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %exp = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %4 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %reloc = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %4, i32 0, i32 2
  %5 = load i32, i32* %reloc, align 4
  %6 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %labelno = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %6, i32 0, i32 3
  %7 = load i32, i32* %labelno, align 4
  call void @output_constant_def_contents(%union.tree_node* %3, i32 %5, i32 %7)
  %8 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %next1 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %8, i32 0, i32 0
  %9 = load %struct.deferred_constant*, %struct.deferred_constant** %next1, align 8
  store %struct.deferred_constant* %9, %struct.deferred_constant** %next, align 8
  %10 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %11 = bitcast %struct.deferred_constant* %10 to i8*
  call void @free(i8* %11) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.deferred_constant*, %struct.deferred_constant** %next, align 8
  store %struct.deferred_constant* %12, %struct.deferred_constant** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.deferred_constant* null, %struct.deferred_constant** @after_function_constants, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_zeros(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @flag_syntax_only, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.8

if.end:                                           ; preds = %entry
  %call = call i32 @in_text_section()
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call3 = call zeroext i1 @assemble_integer(%struct.rtx_def* %3, i32 1, i32 8, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %size.addr, align 4
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load i32, i32* %size.addr, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 %7)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.then, %if.end.7, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_string(i8* %p, i32 %size) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %maximum = alloca i32, align 4
  %thissize = alloca i32, align 4
  %_ascii_bytes = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %bytes_in_chunk = alloca i32, align 4
  %p3 = alloca i8*, align 8
  %_limited_str = alloca i8*, align 8
  %ch = alloca i32, align 4
  %escape = alloca i32, align 4
  %escape37 = alloca i32, align 4
  %ch38 = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %pos, align 4
  store i32 2000, i32* %maximum, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.66, %entry
  %0 = load i32, i32* %pos, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %thissize, align 4
  %4 = load i32, i32* %thissize, align 4
  %5 = load i32, i32* %maximum, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %maximum, align 4
  store i32 %6, i32* %thissize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i8*, i8** %p.addr, align 8
  store i8* %7, i8** %_ascii_bytes, align 8
  %8 = load i8*, i8** %_ascii_bytes, align 8
  %9 = load i32, i32* %thissize, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %limit, align 8
  store i32 0, i32* %bytes_in_chunk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %do.body
  %10 = load i8*, i8** %_ascii_bytes, align 8
  %11 = load i8*, i8** %limit, align 8
  %cmp2 = icmp ult i8* %10, %11
  br i1 %cmp2, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %bytes_in_chunk, align 4
  %cmp4 = icmp uge i32 %12, 60
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0))
  store i32 0, i32* %bytes_in_chunk, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %for.body
  %14 = load i8*, i8** %_ascii_bytes, align 8
  store i8* %14, i8** %p3, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end.6
  %15 = load i8*, i8** %p3, align 8
  %16 = load i8*, i8** %limit, align 8
  %cmp8 = icmp ult i8* %15, %16
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.7
  %17 = load i8*, i8** %p3, align 8
  %18 = load i8, i8* %17, align 1
  %conv = zext i8 %18 to i32
  %cmp9 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.7
  %19 = phi i1 [ false, %for.cond.7 ], [ %cmp9, %land.rhs ]
  br i1 %19, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %20 = load i8*, i8** %p3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p3, align 8
  br label %for.cond.7

for.end:                                          ; preds = %land.end
  %21 = load i8*, i8** %p3, align 8
  %22 = load i8*, i8** %limit, align 8
  %cmp12 = icmp ult i8* %21, %22
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %23 = load i8*, i8** %p3, align 8
  %24 = load i8*, i8** %_ascii_bytes, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp14 = icmp sle i64 %sub.ptr.sub, 256
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %bytes_in_chunk, align 4
  %cmp17 = icmp ugt i32 %25, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0))
  store i32 0, i32* %bytes_in_chunk, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %27 = load i8*, i8** %_ascii_bytes, align 8
  store i8* %27, i8** %_limited_str, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0))
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.33, %do.body.22
  %29 = load i8*, i8** %_limited_str, align 8
  %30 = load i8, i8* %29, align 1
  %conv25 = zext i8 %30 to i32
  store i32 %conv25, i32* %ch, align 4
  %tobool = icmp ne i32 %conv25, 0
  br i1 %tobool, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.24
  %31 = load i32, i32* %ch, align 4
  %idxprom = zext i32 %31 to i64
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* @.str.85, i32 0, i64 %idxprom
  %32 = load i8, i8* %arrayidx, align 1
  %conv27 = sext i8 %32 to i32
  store i32 %conv27, i32* %escape, align 4
  switch i32 %conv27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %for.body.26
  %33 = load i32, i32* %ch, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call28 = call i32 @_IO_putc(i32 %33, %struct._IO_FILE* %34)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body.26
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %36 = load i32, i32* %ch, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 %36)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call31 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %37)
  %38 = load i32, i32* %escape, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call32 = call i32 @_IO_putc(i32 %38, %struct._IO_FILE* %39)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.29, %sw.bb
  br label %for.inc.33

for.inc.33:                                       ; preds = %sw.epilog
  %40 = load i8*, i8** %_limited_str, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr34, i8** %_limited_str, align 8
  br label %for.cond.24

for.end.35:                                       ; preds = %for.cond.24
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0))
  br label %do.end

do.end:                                           ; preds = %for.end.35
  %42 = load i8*, i8** %p3, align 8
  store i8* %42, i8** %_ascii_bytes, align 8
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %for.end
  %43 = load i32, i32* %bytes_in_chunk, align 4
  %cmp39 = icmp eq i32 %43, 0
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.else
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.else
  %45 = load i8*, i8** %_ascii_bytes, align 8
  %46 = load i8, i8* %45, align 1
  %conv44 = zext i8 %46 to i32
  store i32 %conv44, i32* %ch38, align 4
  %idxprom45 = zext i32 %conv44 to i64
  %arrayidx46 = getelementptr inbounds [257 x i8], [257 x i8]* @.str.85, i32 0, i64 %idxprom45
  %47 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %47 to i32
  store i32 %conv47, i32* %escape37, align 4
  switch i32 %conv47, label %sw.default.52 [
    i32 0, label %sw.bb.48
    i32 1, label %sw.bb.50
  ]

sw.bb.48:                                         ; preds = %if.end.43
  %48 = load i32, i32* %ch38, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call49 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %49)
  %50 = load i32, i32* %bytes_in_chunk, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %bytes_in_chunk, align 4
  br label %sw.epilog.56

sw.bb.50:                                         ; preds = %if.end.43
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %52 = load i32, i32* %ch38, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 %52)
  %53 = load i32, i32* %bytes_in_chunk, align 4
  %add = add i32 %53, 4
  store i32 %add, i32* %bytes_in_chunk, align 4
  br label %sw.epilog.56

sw.default.52:                                    ; preds = %if.end.43
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call53 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %54)
  %55 = load i32, i32* %escape37, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call54 = call i32 @_IO_putc(i32 %55, %struct._IO_FILE* %56)
  %57 = load i32, i32* %bytes_in_chunk, align 4
  %add55 = add i32 %57, 2
  store i32 %add55, i32* %bytes_in_chunk, align 4
  br label %sw.epilog.56

sw.epilog.56:                                     ; preds = %sw.default.52, %sw.bb.50, %sw.bb.48
  br label %if.end.57

if.end.57:                                        ; preds = %sw.epilog.56, %do.end
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %58 = load i8*, i8** %_ascii_bytes, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr59, i8** %_ascii_bytes, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %59 = load i32, i32* %bytes_in_chunk, align 4
  %cmp61 = icmp ugt i32 %59, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %for.end.60
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %for.end.60
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %61 = load i32, i32* %thissize, align 4
  %62 = load i32, i32* %pos, align 4
  %add67 = add nsw i32 %62, %61
  store i32 %add67, i32* %pos, align 4
  %63 = load i32, i32* %thissize, align 4
  %64 = load i8*, i8** %p.addr, align 8
  %idx.ext68 = sext i32 %63 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %64, i64 %idx.ext68
  store i8* %add.ptr69, i8** %p.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_variable(%union.tree_node* %decl, i32 %top_level, i32 %at_end, i32 %dont_output_data) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %top_level.addr = alloca i32, align 4
  %at_end.addr = alloca i32, align 4
  %dont_output_data.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  %align = alloca i32, align 4
  %reloc = alloca i32, align 4
  %decl_rtl = alloca %struct.rtx_def*, align 8
  %p = alloca i8*, align 8
  %xname = alloca i8*, align 8
  %size213 = alloca i64, align 8
  %rounded = alloca i64, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %top_level, i32* %top_level.addr, align 4
  store i32 %at_end, i32* %at_end.addr, align 4
  store i32 %dont_output_data, i32* %dont_output_data.addr, align 4
  store i32 0, i32* %reloc, align 4
  store %union.tree_node* null, %union.tree_node** @last_assemble_variable_decl, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %1 = bitcast i48* %external_flag to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 8
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.332

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load2 = load i32, i32* %code, align 8
  %bf.clear3 = and i32 %bf.load2, 255
  %cmp = icmp eq i32 %bf.clear3, 30
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.332

if.end.5:                                         ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp7 = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.5
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl8 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl9, align 8
  %tobool10 = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl11 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %rtl12 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl11, i32 0, i32 17
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtl12, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %9, i8* null)
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl13 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl14, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %8, %cond.true ], [ %11, %cond.false ]
  %12 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load15 = load i32, i32* %12, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 61
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %cond.end
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common19 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load20 = load i32, i32* %asm_written_flag, align 8
  %bf.clear21 = and i32 %bf.load20, -16385
  %bf.set = or i32 %bf.clear21, 16384
  store i32 %bf.set, i32* %asm_written_flag, align 8
  br label %if.end.332

if.end.22:                                        ; preds = %cond.end, %if.end.5
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl23 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 4
  %15 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp24 = icmp eq %union.tree_node* %15, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @layout_decl(%union.tree_node* %16, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %17 = load i32, i32* %dont_output_data.addr, align 4
  %tobool27 = icmp ne i32 %17, 0
  br i1 %tobool27, label %if.end.42, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %if.end.26
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl29 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %size30 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl29, i32 0, i32 4
  %19 = load %union.tree_node*, %union.tree_node** %size30, align 8
  %cmp31 = icmp eq %union.tree_node* %19, null
  br i1 %cmp31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %land.lhs.true.28
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl33 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 1
  %21 = load i8*, i8** %filename, align 8
  %22 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl34 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl34, i32 0, i32 2
  %23 = load i32, i32* %linenum, align 4
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl35 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %name36 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl35, i32 0, i32 8
  %25 = load %union.tree_node*, %union.tree_node** %name36, align 8
  %identifier = bitcast %union.tree_node* %25 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %26 = load i8*, i8** %str, align 8
  call void (i8*, i32, i8*, ...) @error_with_file_and_line(i8* %21, i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i32 0, i32 0), i8* %26)
  %27 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common37 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %asm_written_flag38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common37, i32 0, i32 2
  %bf.load39 = load i32, i32* %asm_written_flag38, align 8
  %bf.clear40 = and i32 %bf.load39, -16385
  %bf.set41 = or i32 %bf.clear40, 16384
  store i32 %bf.set41, i32* %asm_written_flag38, align 8
  br label %if.end.332

if.end.42:                                        ; preds = %land.lhs.true.28, %if.end.26
  %28 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common43 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %asm_written_flag44 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common43, i32 0, i32 2
  %bf.load45 = load i32, i32* %asm_written_flag44, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 14
  %bf.clear47 = and i32 %bf.lshr46, 1
  %tobool48 = icmp ne i32 %bf.clear47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.42
  br label %if.end.332

if.end.50:                                        ; preds = %if.end.42
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl51 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %rtl52 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl51, i32 0, i32 17
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtl52, align 8
  %tobool53 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %if.end.50
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl55 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %rtl56 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl55, i32 0, i32 17
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtl56, align 8
  br label %cond.end.60

cond.false.57:                                    ; preds = %if.end.50
  %33 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %33, i8* null)
  %34 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl58 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %rtl59 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 17
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtl59, align 8
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.54
  %cond61 = phi %struct.rtx_def* [ %32, %cond.true.54 ], [ %35, %cond.false.57 ]
  store %struct.rtx_def* %cond61, %struct.rtx_def** %decl_rtl, align 8
  %36 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common62 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %asm_written_flag63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %asm_written_flag63, align 8
  %bf.clear65 = and i32 %bf.load64, -16385
  %bf.set66 = or i32 %bf.clear65, 16384
  store i32 %bf.set66, i32* %asm_written_flag63, align 8
  %37 = load i32, i32* @flag_syntax_only, align 4
  %tobool67 = icmp ne i32 %37, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %cond.end.60
  br label %if.end.332

if.end.69:                                        ; preds = %cond.end.60
  call void @app_disable()
  %38 = load i32, i32* %dont_output_data.addr, align 4
  %tobool70 = icmp ne i32 %38, 0
  br i1 %tobool70, label %if.end.75, label %land.lhs.true.71

land.lhs.true.71:                                 ; preds = %if.end.69
  %39 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl72 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl72, i32 0, i32 7
  %40 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call = call i32 @host_integerp(%union.tree_node* %40, i32 1)
  %tobool73 = icmp ne i32 %call, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %land.lhs.true.71
  %41 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end.332

if.end.75:                                        ; preds = %land.lhs.true.71, %if.end.69
  %42 = load %struct.rtx_def*, %struct.rtx_def** %decl_rtl, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx77 to i8**
  %44 = load i8*, i8** %rtstr, align 8
  store i8* %44, i8** %name, align 8
  %45 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common78 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 2
  %bf.load79 = load i32, i32* %public_flag, align 8
  %bf.lshr80 = lshr i32 %bf.load79, 19
  %bf.clear81 = and i32 %bf.lshr80, 1
  %tobool82 = icmp ne i32 %bf.clear81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.124

land.lhs.true.83:                                 ; preds = %if.end.75
  %46 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl84 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %name85 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl84, i32 0, i32 8
  %47 = load %union.tree_node*, %union.tree_node** %name85, align 8
  %tobool86 = icmp ne %union.tree_node* %47, null
  br i1 %tobool86, label %land.lhs.true.87, label %if.end.124

land.lhs.true.87:                                 ; preds = %land.lhs.true.83
  %48 = load i8*, i8** @first_global_object_name, align 8
  %tobool88 = icmp ne i8* %48, null
  br i1 %tobool88, label %if.end.124, label %land.lhs.true.89

land.lhs.true.89:                                 ; preds = %land.lhs.true.87
  %49 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl90 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl90, i32 0, i32 5
  %50 = bitcast i48* %common_flag to i64*
  %bf.load91 = load i64, i64* %50, align 8
  %bf.lshr92 = lshr i64 %bf.load91, 17
  %bf.clear93 = and i64 %bf.lshr92, 1
  %bf.cast94 = trunc i64 %bf.clear93 to i32
  %tobool95 = icmp ne i32 %bf.cast94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %land.lhs.true.102

land.lhs.true.96:                                 ; preds = %land.lhs.true.89
  %51 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl97 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl97, i32 0, i32 12
  %52 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp98 = icmp eq %union.tree_node* %52, null
  br i1 %cmp98, label %if.end.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.96
  %53 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl99 = bitcast %union.tree_node* %53 to %struct.tree_decl*
  %initial100 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl99, i32 0, i32 12
  %54 = load %union.tree_node*, %union.tree_node** %initial100, align 8
  %55 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp101 = icmp eq %union.tree_node* %54, %55
  br i1 %cmp101, label %if.end.124, label %land.lhs.true.102

land.lhs.true.102:                                ; preds = %lor.lhs.false, %land.lhs.true.89
  %56 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl103 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl103, i32 0, i32 5
  %57 = bitcast i48* %weak_flag to i64*
  %bf.load104 = load i64, i64* %57, align 8
  %bf.lshr105 = lshr i64 %bf.load104, 23
  %bf.clear106 = and i64 %bf.lshr105, 1
  %bf.cast107 = trunc i64 %bf.clear106 to i32
  %tobool108 = icmp ne i32 %bf.cast107, 0
  br i1 %tobool108, label %if.end.124, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %land.lhs.true.102
  %58 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl110 = bitcast %union.tree_node* %58 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl110, i32 0, i32 5
  %59 = bitcast i48* %transparent_union to i64*
  %bf.load111 = load i64, i64* %59, align 8
  %bf.lshr112 = lshr i64 %bf.load111, 19
  %bf.clear113 = and i64 %bf.lshr112, 1
  %bf.cast114 = trunc i64 %bf.clear113 to i32
  %tobool115 = icmp ne i32 %bf.cast114, 0
  br i1 %tobool115, label %if.end.124, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true.109
  %60 = load i8*, i8** %name, align 8
  %61 = load i8*, i8** %name, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx117, align 1
  %conv = sext i8 %62 to i32
  %cmp118 = icmp eq i32 %conv, 42
  %conv119 = zext i1 %cmp118 to i32
  %idx.ext = sext i32 %conv119 to i64
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %63 = load i8*, i8** %p, align 8
  %call120 = call i64 @strlen(i8* %63) #7
  %add = add i64 %call120, 1
  %conv121 = trunc i64 %add to i32
  %call122 = call i8* @permalloc(i32 %conv121)
  store i8* %call122, i8** %xname, align 8
  %64 = load i8*, i8** %xname, align 8
  %65 = load i8*, i8** %p, align 8
  %call123 = call i8* @strcpy(i8* %64, i8* %65) #6
  %66 = load i8*, i8** %xname, align 8
  store i8* %66, i8** @first_global_object_name, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.116, %land.lhs.true.109, %land.lhs.true.102, %lor.lhs.false, %land.lhs.true.96, %land.lhs.true.87, %land.lhs.true.83, %if.end.75
  %67 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl125 = bitcast %union.tree_node* %67 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl125, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %68 = bitcast %struct.anon.0* %a to i32*
  %bf.load126 = load i32, i32* %68, align 4
  %bf.clear127 = and i32 %bf.load126, 16777215
  store i32 %bf.clear127, i32* %align, align 4
  %69 = load i32, i32* %dont_output_data.addr, align 4
  %tobool128 = icmp ne i32 %69, 0
  br i1 %tobool128, label %land.lhs.true.129, label %if.end.161

land.lhs.true.129:                                ; preds = %if.end.124
  %70 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl130 = bitcast %union.tree_node* %70 to %struct.tree_decl*
  %size131 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl130, i32 0, i32 4
  %71 = load %union.tree_node*, %union.tree_node** %size131, align 8
  %cmp132 = icmp eq %union.tree_node* %71, null
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.161

land.lhs.true.134:                                ; preds = %land.lhs.true.129
  %72 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common135 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common135, i32 0, i32 1
  %73 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common136 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %code137 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common136, i32 0, i32 2
  %bf.load138 = load i32, i32* %code137, align 8
  %bf.clear139 = and i32 %bf.load138, 255
  %cmp140 = icmp eq i32 %bf.clear139, 18
  br i1 %cmp140, label %if.then.142, label %if.end.161

if.then.142:                                      ; preds = %land.lhs.true.134
  %74 = load i32, i32* %align, align 4
  %75 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common143 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %type144 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common143, i32 0, i32 1
  %76 = load %union.tree_node*, %union.tree_node** %type144, align 8
  %common145 = bitcast %union.tree_node* %76 to %struct.tree_common*
  %type146 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common145, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %type146, align 8
  %type147 = bitcast %union.tree_node* %77 to %struct.tree_type*
  %align148 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type147, i32 0, i32 7
  %78 = load i32, i32* %align148, align 4
  %cmp149 = icmp ugt i32 %74, %78
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %if.then.142
  %79 = load i32, i32* %align, align 4
  br label %cond.end.159

cond.false.152:                                   ; preds = %if.then.142
  %80 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common153 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %type154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common153, i32 0, i32 1
  %81 = load %union.tree_node*, %union.tree_node** %type154, align 8
  %common155 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %type156 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common155, i32 0, i32 1
  %82 = load %union.tree_node*, %union.tree_node** %type156, align 8
  %type157 = bitcast %union.tree_node* %82 to %struct.tree_type*
  %align158 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type157, i32 0, i32 7
  %83 = load i32, i32* %align158, align 4
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.152, %cond.true.151
  %cond160 = phi i32 [ %79, %cond.true.151 ], [ %83, %cond.false.152 ]
  store i32 %cond160, i32* %align, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end.159, %land.lhs.true.134, %land.lhs.true.129, %if.end.124
  %84 = load i32, i32* %align, align 4
  %cmp162 = icmp ugt i32 %84, 262144
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.161
  %85 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %85, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.90, i32 0, i32 0), i32 32768)
  store i32 262144, i32* %align, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.end.161
  %86 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl166 = bitcast %union.tree_node* %86 to %struct.tree_decl*
  %user_align = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl166, i32 0, i32 5
  %87 = bitcast i48* %user_align to i64*
  %bf.load167 = load i64, i64* %87, align 8
  %bf.lshr168 = lshr i64 %bf.load167, 35
  %bf.clear169 = and i64 %bf.lshr168, 1
  %bf.cast170 = trunc i64 %bf.clear169 to i32
  %tobool171 = icmp ne i32 %bf.cast170, 0
  br i1 %tobool171, label %if.end.190, label %if.then.172

if.then.172:                                      ; preds = %if.end.165
  %88 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common173 = bitcast %union.tree_node* %88 to %struct.tree_common*
  %type174 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common173, i32 0, i32 1
  %89 = load %union.tree_node*, %union.tree_node** %type174, align 8
  %90 = load i32, i32* %align, align 4
  %call175 = call i32 @ix86_data_alignment(%union.tree_node* %89, i32 %90)
  store i32 %call175, i32* %align, align 4
  %91 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl176 = bitcast %union.tree_node* %91 to %struct.tree_decl*
  %initial177 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl176, i32 0, i32 12
  %92 = load %union.tree_node*, %union.tree_node** %initial177, align 8
  %cmp178 = icmp ne %union.tree_node* %92, null
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.189

land.lhs.true.180:                                ; preds = %if.then.172
  %93 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl181 = bitcast %union.tree_node* %93 to %struct.tree_decl*
  %initial182 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl181, i32 0, i32 12
  %94 = load %union.tree_node*, %union.tree_node** %initial182, align 8
  %95 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp183 = icmp ne %union.tree_node* %94, %95
  br i1 %cmp183, label %if.then.185, label %if.end.189

if.then.185:                                      ; preds = %land.lhs.true.180
  %96 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl186 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %initial187 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl186, i32 0, i32 12
  %97 = load %union.tree_node*, %union.tree_node** %initial187, align 8
  %98 = load i32, i32* %align, align 4
  %call188 = call i32 @ix86_constant_alignment(%union.tree_node* %97, i32 %98)
  store i32 %call188, i32* %align, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %land.lhs.true.180, %if.then.172
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.165
  %99 = load i32, i32* %align, align 4
  %100 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl191 = bitcast %union.tree_node* %100 to %struct.tree_decl*
  %u1192 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl191, i32 0, i32 6
  %a193 = bitcast %union.anon* %u1192 to %struct.anon.0*
  %101 = bitcast %struct.anon.0* %a193 to i32*
  %bf.load194 = load i32, i32* %101, align 4
  %bf.value = and i32 %99, 16777215
  %bf.clear195 = and i32 %bf.load194, -16777216
  %bf.set196 = or i32 %bf.clear195, %bf.value
  store i32 %bf.set196, i32* %101, align 4
  %102 = load %struct.rtx_def*, %struct.rtx_def** %decl_rtl, align 8
  %103 = load i32, i32* %align, align 4
  call void @set_mem_align(%struct.rtx_def* %102, i32 %103)
  %104 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl197 = bitcast %union.tree_node* %104 to %struct.tree_decl*
  %initial198 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl197, i32 0, i32 12
  %105 = load %union.tree_node*, %union.tree_node** %initial198, align 8
  %cmp199 = icmp eq %union.tree_node* %105, null
  br i1 %cmp199, label %land.lhs.true.206, label %lor.lhs.false.201

lor.lhs.false.201:                                ; preds = %if.end.190
  %106 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl202 = bitcast %union.tree_node* %106 to %struct.tree_decl*
  %initial203 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl202, i32 0, i32 12
  %107 = load %union.tree_node*, %union.tree_node** %initial203, align 8
  %108 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp204 = icmp eq %union.tree_node* %107, %108
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.224

land.lhs.true.206:                                ; preds = %lor.lhs.false.201, %if.end.190
  %109 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl207 = bitcast %union.tree_node* %109 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl207, i32 0, i32 15
  %110 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp208 = icmp eq %union.tree_node* %110, null
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.224

land.lhs.true.210:                                ; preds = %land.lhs.true.206
  %111 = load i32, i32* %dont_output_data.addr, align 4
  %tobool211 = icmp ne i32 %111, 0
  br i1 %tobool211, label %if.end.224, label %if.then.212

if.then.212:                                      ; preds = %land.lhs.true.210
  %112 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl214 = bitcast %union.tree_node* %112 to %struct.tree_decl*
  %size_unit215 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl214, i32 0, i32 7
  %113 = load %union.tree_node*, %union.tree_node** %size_unit215, align 8
  %call216 = call i64 @tree_low_cst(%union.tree_node* %113, i32 1)
  store i64 %call216, i64* %size213, align 8
  %114 = load i64, i64* %size213, align 8
  store i64 %114, i64* %rounded, align 8
  %115 = load i64, i64* %size213, align 8
  %cmp217 = icmp eq i64 %115, 0
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.212
  store i64 1, i64* %rounded, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %if.then.212
  %116 = load i64, i64* %rounded, align 8
  %add221 = add i64 %116, 15
  store i64 %add221, i64* %rounded, align 8
  %117 = load i64, i64* %rounded, align 8
  %div = udiv i64 %117, 16
  %mul = mul i64 %div, 16
  store i64 %mul, i64* %rounded, align 8
  %118 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %119 = load i8*, i8** %name, align 8
  %120 = load i64, i64* %size213, align 8
  %conv222 = trunc i64 %120 to i32
  %121 = load i64, i64* %rounded, align 8
  %conv223 = trunc i64 %121 to i32
  call void @asm_emit_uninitialised(%union.tree_node* %118, i8* %119, i32 %conv222, i32 %conv223)
  br label %if.end.332

if.end.224:                                       ; preds = %land.lhs.true.210, %land.lhs.true.206, %lor.lhs.false.201
  %122 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common225 = bitcast %union.tree_node* %122 to %struct.tree_common*
  %public_flag226 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common225, i32 0, i32 2
  %bf.load227 = load i32, i32* %public_flag226, align 8
  %bf.lshr228 = lshr i32 %bf.load227, 19
  %bf.clear229 = and i32 %bf.lshr228, 1
  %tobool230 = icmp ne i32 %bf.clear229, 0
  br i1 %tobool230, label %land.lhs.true.231, label %if.end.236

land.lhs.true.231:                                ; preds = %if.end.224
  %123 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl232 = bitcast %union.tree_node* %123 to %struct.tree_decl*
  %name233 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl232, i32 0, i32 8
  %124 = load %union.tree_node*, %union.tree_node** %name233, align 8
  %tobool234 = icmp ne %union.tree_node* %124, null
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %land.lhs.true.231
  %125 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @globalize_decl(%union.tree_node* %125)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.235, %land.lhs.true.231, %if.end.224
  %126 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl237 = bitcast %union.tree_node* %126 to %struct.tree_decl*
  %initial238 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl237, i32 0, i32 12
  %127 = load %union.tree_node*, %union.tree_node** %initial238, align 8
  %128 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp239 = icmp eq %union.tree_node* %127, %128
  br i1 %cmp239, label %if.then.241, label %if.else

if.then.241:                                      ; preds = %if.end.236
  %129 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common242 = bitcast %union.tree_node* %129 to %struct.tree_common*
  %type243 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common242, i32 0, i32 1
  %130 = load %union.tree_node*, %union.tree_node** %type243, align 8
  %call244 = call i32 @contains_pointers_p(%union.tree_node* %130)
  %tobool245 = icmp ne i32 %call244, 0
  %cond246 = select i1 %tobool245, i32 3, i32 0
  store i32 %cond246, i32* %reloc, align 4
  br label %if.end.255

if.else:                                          ; preds = %if.end.236
  %131 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl247 = bitcast %union.tree_node* %131 to %struct.tree_decl*
  %initial248 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl247, i32 0, i32 12
  %132 = load %union.tree_node*, %union.tree_node** %initial248, align 8
  %tobool249 = icmp ne %union.tree_node* %132, null
  br i1 %tobool249, label %if.then.250, label %if.end.254

if.then.250:                                      ; preds = %if.else
  %133 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl251 = bitcast %union.tree_node* %133 to %struct.tree_decl*
  %initial252 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl251, i32 0, i32 12
  %134 = load %union.tree_node*, %union.tree_node** %initial252, align 8
  %call253 = call i32 @output_addressed_constants(%union.tree_node* %134)
  store i32 %call253, i32* %reloc, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.250, %if.else
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.241
  %135 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %136 = load i32, i32* %reloc, align 4
  %137 = load i32, i32* @flag_data_sections, align 4
  call void @resolve_unique_section(%union.tree_node* %135, i32 %136, i32 %137)
  %138 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %139 = load i32, i32* %reloc, align 4
  call void @variable_section(%union.tree_node* %138, i32 %139)
  %call256 = call i32 @in_text_section()
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.258, label %if.end.263

if.then.258:                                      ; preds = %if.end.255
  %140 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl259 = bitcast %union.tree_node* %140 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl259, i32 0, i32 5
  %141 = bitcast i48* %bit_field_flag to i64*
  %bf.load260 = load i64, i64* %141, align 8
  %bf.clear261 = and i64 %bf.load260, -4097
  %bf.set262 = or i64 %bf.clear261, 4096
  store i64 %bf.set262, i64* %141, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.258, %if.end.255
  %142 = load i32, i32* %align, align 4
  %cmp264 = icmp ugt i32 %142, 8
  br i1 %cmp264, label %if.then.266, label %if.end.288

if.then.266:                                      ; preds = %if.end.263
  %143 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl267 = bitcast %union.tree_node* %143 to %struct.tree_decl*
  %u1268 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl267, i32 0, i32 6
  %a269 = bitcast %union.anon* %u1268 to %struct.anon.0*
  %144 = bitcast %struct.anon.0* %a269 to i32*
  %bf.load270 = load i32, i32* %144, align 4
  %bf.clear271 = and i32 %bf.load270, 16777215
  %div272 = sdiv i32 %bf.clear271, 8
  %conv273 = sext i32 %div272 to i64
  %call274 = call i32 @floor_log2_wide(i64 %conv273)
  %cmp275 = icmp ne i32 %call274, 0
  br i1 %cmp275, label %if.then.277, label %if.end.287

if.then.277:                                      ; preds = %if.then.266
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %146 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl278 = bitcast %union.tree_node* %146 to %struct.tree_decl*
  %u1279 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl278, i32 0, i32 6
  %a280 = bitcast %union.anon* %u1279 to %struct.anon.0*
  %147 = bitcast %struct.anon.0* %a280 to i32*
  %bf.load281 = load i32, i32* %147, align 4
  %bf.clear282 = and i32 %bf.load281, 16777215
  %div283 = sdiv i32 %bf.clear282, 8
  %conv284 = sext i32 %div283 to i64
  %call285 = call i32 @floor_log2_wide(i64 %conv284)
  %shl = shl i32 1, %call285
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %shl)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.277, %if.then.266
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.263
  %148 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %148, %union.tree_node** @last_assemble_variable_decl, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.288
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0))
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %151 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %150, i8* %151)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call290 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %152)
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0))
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call292 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %154)
  store i32 0, i32* @size_directive_output, align 4
  %155 = load i32, i32* @flag_inhibit_size_directive, align 4
  %tobool293 = icmp ne i32 %155, 0
  br i1 %tobool293, label %if.end.308, label %land.lhs.true.294

land.lhs.true.294:                                ; preds = %do.body
  %156 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool295 = icmp ne %union.tree_node* %156, null
  br i1 %tobool295, label %land.lhs.true.296, label %if.end.308

land.lhs.true.296:                                ; preds = %land.lhs.true.294
  %157 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl297 = bitcast %union.tree_node* %157 to %struct.tree_decl*
  %size298 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl297, i32 0, i32 4
  %158 = load %union.tree_node*, %union.tree_node** %size298, align 8
  %tobool299 = icmp ne %union.tree_node* %158, null
  br i1 %tobool299, label %if.then.300, label %if.end.308

if.then.300:                                      ; preds = %land.lhs.true.296
  store i32 1, i32* @size_directive_output, align 4
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0))
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %161 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %160, i8* %161)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call302 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %162)
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %164 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common303 = bitcast %union.tree_node* %164 to %struct.tree_common*
  %type304 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common303, i32 0, i32 1
  %165 = load %union.tree_node*, %union.tree_node** %type304, align 8
  %call305 = call i64 @int_size_in_bytes(%union.tree_node* %165)
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i64 %call305)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call307 = call i32 @fputc(i32 10, %struct._IO_FILE* %166)
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.300, %land.lhs.true.296, %land.lhs.true.294, %do.body
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %168 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %167, i8* %168)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call309 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %169)
  br label %do.end

do.end:                                           ; preds = %if.end.308
  %170 = load i32, i32* %dont_output_data.addr, align 4
  %tobool310 = icmp ne i32 %170, 0
  br i1 %tobool310, label %if.end.332, label %if.then.311

if.then.311:                                      ; preds = %do.end
  %171 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl312 = bitcast %union.tree_node* %171 to %struct.tree_decl*
  %initial313 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl312, i32 0, i32 12
  %172 = load %union.tree_node*, %union.tree_node** %initial313, align 8
  %tobool314 = icmp ne %union.tree_node* %172, null
  br i1 %tobool314, label %land.lhs.true.315, label %if.else.326

land.lhs.true.315:                                ; preds = %if.then.311
  %173 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl316 = bitcast %union.tree_node* %173 to %struct.tree_decl*
  %initial317 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl316, i32 0, i32 12
  %174 = load %union.tree_node*, %union.tree_node** %initial317, align 8
  %175 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp318 = icmp ne %union.tree_node* %174, %175
  br i1 %cmp318, label %if.then.320, label %if.else.326

if.then.320:                                      ; preds = %land.lhs.true.315
  %176 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl321 = bitcast %union.tree_node* %176 to %struct.tree_decl*
  %initial322 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl321, i32 0, i32 12
  %177 = load %union.tree_node*, %union.tree_node** %initial322, align 8
  %178 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl323 = bitcast %union.tree_node* %178 to %struct.tree_decl*
  %size_unit324 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl323, i32 0, i32 7
  %179 = load %union.tree_node*, %union.tree_node** %size_unit324, align 8
  %call325 = call i64 @tree_low_cst(%union.tree_node* %179, i32 1)
  %180 = load i32, i32* %align, align 4
  call void @output_constant(%union.tree_node* %177, i64 %call325, i32 %180)
  br label %if.end.331

if.else.326:                                      ; preds = %land.lhs.true.315, %if.then.311
  %181 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl327 = bitcast %union.tree_node* %181 to %struct.tree_decl*
  %size_unit328 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl327, i32 0, i32 7
  %182 = load %union.tree_node*, %union.tree_node** %size_unit328, align 8
  %call329 = call i64 @tree_low_cst(%union.tree_node* %182, i32 1)
  %conv330 = trunc i64 %call329 to i32
  call void @assemble_zeros(i32 %conv330)
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.326, %if.then.320
  br label %if.end.332

if.end.332:                                       ; preds = %if.then, %if.then.4, %if.then.18, %if.then.32, %if.then.49, %if.then.68, %if.then.74, %if.end.220, %if.end.331, %do.end
  ret void
}

declare void @layout_decl(%union.tree_node*, i32) #1

declare void @error_with_file_and_line(i8*, i32, i8*, ...) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

declare i32 @ix86_data_alignment(%union.tree_node*, i32) #1

declare void @set_mem_align(%struct.rtx_def*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @asm_emit_uninitialised(%union.tree_node* %decl, i8* %name, i32 %size, i32 %rounded) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %name.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %rounded.addr = alloca i32, align 4
  %destination = alloca i32, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %rounded, i32* %rounded.addr, align 4
  store i32 2, i32* %destination, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %2 = bitcast i48* %common_flag to i64*
  %bf.load2 = load i64, i64* %2, align 8
  %bf.lshr3 = lshr i64 %bf.load2, 17
  %bf.clear4 = and i64 %bf.lshr3, 1
  %bf.cast = trunc i64 %bf.clear4 to i32
  %tobool5 = icmp ne i32 %bf.cast, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 1, i32* %destination, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %destination, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %3 = load i32, i32* %destination, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @globalize_decl(%union.tree_node* %4)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.7
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %6 = load i32, i32* @flag_data_sections, align 4
  call void @resolve_unique_section(%union.tree_node* %5, i32 0, i32 %6)
  %7 = load i32, i32* @flag_shared_data, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %8 = load i32, i32* %destination, align 4
  switch i32 %8, label %sw.default [
  ]

sw.default:                                       ; preds = %if.then.11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.12

if.end.12:                                        ; preds = %sw.epilog, %if.end.9
  %9 = load i32, i32* %destination, align 4
  switch i32 %9, label %sw.default.38 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.16
    i32 2, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end.12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i32, i32* %size.addr, align 4
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl13 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %15 = bitcast %struct.anon.0* %a to i32*
  %bf.load14 = load i32, i32* %15, align 4
  %bf.clear15 = and i32 %bf.load14, 16777215
  call void @asm_output_aligned_bss(%struct._IO_FILE* %10, %union.tree_node* %11, i8* %12, i32 %13, i32 %bf.clear15)
  br label %sw.epilog.39

sw.bb.16:                                         ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %sw.bb.16
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %18 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %17, i8* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %20 = load i32, i32* %size.addr, align 4
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl17 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %u118 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 6
  %a19 = bitcast %union.anon* %u118 to %struct.anon.0*
  %22 = bitcast %struct.anon.0* %a19 to i32*
  %bf.load20 = load i32, i32* %22, align 4
  %bf.clear21 = and i32 %bf.load20, 16777215
  %div = sdiv i32 %bf.clear21, 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 %20, i32 %div)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog.39

sw.bb.23:                                         ; preds = %if.end.12
  br label %do.body.24

do.body.24:                                       ; preds = %sw.bb.23
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %25 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %24, i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0))
  br label %do.body.27

do.body.27:                                       ; preds = %do.body.24
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %29 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %28, i8* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %31 = load i32, i32* %size.addr, align 4
  %32 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl29 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %u130 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl29, i32 0, i32 6
  %a31 = bitcast %union.anon* %u130 to %struct.anon.0*
  %33 = bitcast %struct.anon.0* %a31 to i32*
  %bf.load32 = load i32, i32* %33, align 4
  %bf.clear33 = and i32 %bf.load32, 16777215
  %div34 = sdiv i32 %bf.clear33, 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 %31, i32 %div34)
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %do.end.36
  br label %sw.epilog.39

sw.default.38:                                    ; preds = %if.end.12
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1441, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.asm_emit_uninitialised, i32 0, i32 0)) #8
  unreachable

sw.epilog.39:                                     ; preds = %do.end.37, %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @contains_pointers_p(%union.tree_node* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %fields = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 13, label %sw.bb
    i32 15, label %sw.bb
    i32 14, label %sw.bb
    i32 20, label %sw.bb.1
    i32 21, label %sw.bb.1
    i32 22, label %sw.bb.1
    i32 18, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %2, %union.tree_node** %fields, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %3 = load %union.tree_node*, %union.tree_node** %fields, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %union.tree_node*, %union.tree_node** %fields, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp = icmp eq i32 %bf.clear6, 37
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %union.tree_node*, %union.tree_node** %fields, align 8
  %common7 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type8, align 8
  %call = call i32 @contains_pointers_p(%union.tree_node* %6)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %union.tree_node*, %union.tree_node** %fields, align 8
  %common10 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %8, %union.tree_node** %fields, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common12 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type13, align 8
  %call14 = call i32 @contains_pointers_p(%union.tree_node* %10)
  store i32 %call14, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.11, %for.end, %if.then, %sw.bb
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @output_addressed_constants(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %reloc = alloca i32, align 4
  %tem = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 0, i32* %reloc, align 4
  %0 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 9), align 8
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call = call %union.tree_node* %0(%union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %exp.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 121, label %sw.bb
    i32 124, label %sw.bb
    i32 59, label %sw.bb.26
    i32 60, label %sw.bb.26
    i32 115, label %sw.bb.36
    i32 114, label %sw.bb.36
    i32 116, label %sw.bb.36
    i32 46, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %4, %union.tree_node** %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %call2 = call i32 @handled_component_p(%union.tree_node* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %exp3 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8
  store %union.tree_node* %7, %union.tree_node** %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common6 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %idxprom = sext i32 %bf.clear9 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 99
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %10 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common12 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 46
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %11 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %call18 = call %struct.rtx_def* @output_constant_def(%union.tree_node* %11, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %12 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common19 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load20 = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load20, 19
  %bf.clear21 = and i32 %bf.lshr, 1
  %tobool22 = icmp ne i32 %bf.clear21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  %13 = load i32, i32* %reloc, align 4
  %or = or i32 %13, 2
  store i32 %or, i32* %reloc, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %reloc, align 4
  %or24 = or i32 %14, 1
  store i32 %or24, i32* %reloc, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry, %entry
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp27 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands28 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp27, i32 0, i32 2
  %arrayidx29 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands28, i32 0, i64 0
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx29, align 8
  %call30 = call i32 @output_addressed_constants(%union.tree_node* %16)
  store i32 %call30, i32* %reloc, align 4
  %17 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp31 = bitcast %union.tree_node* %17 to %struct.tree_exp*
  %operands32 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands32, i32 0, i64 1
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx33, align 8
  %call34 = call i32 @output_addressed_constants(%union.tree_node* %18)
  %19 = load i32, i32* %reloc, align 4
  %or35 = or i32 %19, %call34
  store i32 %or35, i32* %reloc, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry, %entry, %entry
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp37 = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands38 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp37, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands38, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx39, align 8
  %call40 = call i32 @output_addressed_constants(%union.tree_node* %21)
  store i32 %call40, i32* %reloc, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %22 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp42 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands43 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp42, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands43, i32 0, i64 1
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx44, align 8
  store %union.tree_node* %23, %union.tree_node** %tem, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.56, %sw.bb.41
  %24 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %tobool46 = icmp ne %union.tree_node* %24, null
  br i1 %tobool46, label %for.body.47, label %for.end.58

for.body.47:                                      ; preds = %for.cond.45
  %25 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list = bitcast %union.tree_node* %25 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %26 = load %union.tree_node*, %union.tree_node** %value, align 8
  %cmp48 = icmp ne %union.tree_node* %26, null
  br i1 %cmp48, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %for.body.47
  %27 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list51 = bitcast %union.tree_node* %27 to %struct.tree_list*
  %value52 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list51, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %value52, align 8
  %call53 = call i32 @output_addressed_constants(%union.tree_node* %28)
  %29 = load i32, i32* %reloc, align 4
  %or54 = or i32 %29, %call53
  store i32 %or54, i32* %reloc, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %for.body.47
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %30 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common57 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 0
  %31 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %31, %union.tree_node** %tem, align 8
  br label %for.cond.45

for.end.58:                                       ; preds = %for.cond.45
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.58, %sw.bb.36, %sw.bb.26, %if.end.25
  %32 = load i32, i32* %reloc, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define void @output_constant(%union.tree_node* %exp, i64 %size, i32 %align) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %thissize = alloca i64, align 8
  %buffer = alloca i8*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  %0 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 9), align 8
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call = call %union.tree_node* %0(%union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %exp.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* @flag_syntax_only, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.141

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp2 = icmp eq i32 %bf.clear, 115
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 114
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.3
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common10 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp eq i32 %bf.clear13, 116
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.9
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common15 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  %cmp19 = icmp eq i32 %bf.clear18, 117
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.9, %lor.lhs.false.3, %while.cond
  %8 = phi i1 [ true, %lor.lhs.false.9 ], [ true, %lor.lhs.false.3 ], [ true, %while.cond ], [ %cmp19, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp20 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp20, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %10, %union.tree_node** %exp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common21 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common22 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %code23, align 8
  %bf.clear25 = and i32 %bf.load24, 255
  store i32 %bf.clear25, i32* %code, align 4
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common26 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %type27, align 8
  %call28 = call i64 @int_size_in_bytes(%union.tree_node* %14)
  store i64 %call28, i64* %thissize, align 8
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common29 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 46
  br i1 %cmp33, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %while.end
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp34 = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands35 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp34, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands35, i32 0, i64 1
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8
  %cmp37 = icmp eq %union.tree_node* %17, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  %18 = load i64, i64* %size.addr, align 8
  %conv = trunc i64 %18 to i32
  call void @assemble_zeros(i32 %conv)
  br label %if.end.141

if.end.39:                                        ; preds = %land.lhs.true, %while.end
  %19 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common40 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %code41, align 8
  %bf.clear43 = and i32 %bf.load42, 255
  %cmp44 = icmp eq i32 %bf.clear43, 124
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.39
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4557, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.output_constant, i32 0, i32 0)) #8
  unreachable

if.end.47:                                        ; preds = %if.end.39
  %20 = load i32, i32* %code, align 4
  switch i32 %20, label %sw.default [
    i32 12, label %sw.bb
    i32 11, label %sw.bb
    i32 6, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 15, label %sw.bb
    i32 7, label %sw.bb.53
    i32 8, label %sw.bb.65
    i32 18, label %sw.bb.72
    i32 9, label %sw.bb.72
    i32 20, label %sw.bb.98
    i32 21, label %sw.bb.98
    i32 19, label %sw.bb.108
    i32 0, label %sw.bb.136
  ]

sw.bb:                                            ; preds = %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47, %if.end.47
  %21 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call48 = call %struct.rtx_def* @expand_expr(%union.tree_node* %21, %struct.rtx_def* null, i32 0, i32 3)
  %22 = load i64, i64* %size.addr, align 8
  %conv49 = trunc i64 %22 to i32
  %23 = load i32, i32* %align.addr, align 4
  %call50 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call48, i32 %conv49, i32 %23, i32 0)
  br i1 %call50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.101, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %sw.bb
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.47
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common54 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 2
  %bf.load56 = load i32, i32* %code55, align 8
  %bf.clear57 = and i32 %bf.load56, 255
  %cmp58 = icmp ne i32 %bf.clear57, 26
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %sw.bb.53
  call void (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %sw.bb.53
  %25 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst = bitcast %union.tree_node* %25 to %struct.tree_real_cst*
  %real_cst62 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %26 = load i64, i64* %size.addr, align 8
  %mul = mul nsw i64 %26, 8
  %conv63 = trunc i64 %mul to i32
  %call64 = call i32 @mode_for_size(i32 %conv63, i32 2, i32 0)
  %27 = load i32, i32* %align.addr, align 4
  call void @assemble_real(%struct.realvaluetype* byval align 8 %real_cst62, i32 %call64, i32 %27)
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.47
  %28 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex = bitcast %union.tree_node* %28 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %29 = load %union.tree_node*, %union.tree_node** %real, align 8
  %30 = load i64, i64* %thissize, align 8
  %div = sdiv i64 %30, 2
  %31 = load i32, i32* %align.addr, align 4
  call void @output_constant(%union.tree_node* %29, i64 %div, i32 %31)
  %32 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex66 = bitcast %union.tree_node* %32 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex66, i32 0, i32 3
  %33 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %34 = load i64, i64* %thissize, align 8
  %div67 = sdiv i64 %34, 2
  %35 = load i32, i32* %align.addr, align 4
  %36 = load i64, i64* %thissize, align 8
  %div68 = sdiv i64 %36, 2
  %mul69 = mul nsw i64 8, %div68
  %conv70 = trunc i64 %mul69 to i32
  %call71 = call i32 @min_align(i32 %35, i32 %conv70)
  call void @output_constant(%union.tree_node* %33, i64 %div67, i32 %call71)
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.47, %if.end.47
  %37 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common73 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %code74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 2
  %bf.load75 = load i32, i32* %code74, align 8
  %bf.clear76 = and i32 %bf.load75, 255
  %cmp77 = icmp eq i32 %bf.clear76, 46
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %sw.bb.72
  %38 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %39 = load i64, i64* %size.addr, align 8
  %40 = load i32, i32* %align.addr, align 4
  call void @output_constructor(%union.tree_node* %38, i64 %39, i32 %40)
  br label %if.end.141

if.else:                                          ; preds = %sw.bb.72
  %41 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common80 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %code81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %code81, align 8
  %bf.clear83 = and i32 %bf.load82, 255
  %cmp84 = icmp eq i32 %bf.clear83, 29
  br i1 %cmp84, label %if.then.86, label %if.else.95

if.then.86:                                       ; preds = %if.else
  %42 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string = bitcast %union.tree_node* %42 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  %43 = load i32, i32* %length, align 4
  %conv87 = sext i32 %43 to i64
  %44 = load i64, i64* %size.addr, align 8
  %cmp88 = icmp slt i64 %conv87, %44
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.86
  %45 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string90 = bitcast %union.tree_node* %45 to %struct.tree_string*
  %length91 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string90, i32 0, i32 2
  %46 = load i32, i32* %length91, align 4
  %conv92 = sext i32 %46 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.86
  %47 = load i64, i64* %size.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv92, %cond.true ], [ %47, %cond.false ]
  store i64 %cond, i64* %thissize, align 8
  %48 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string93 = bitcast %union.tree_node* %48 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string93, i32 0, i32 3
  %49 = load i8*, i8** %pointer, align 8
  %50 = load i64, i64* %thissize, align 8
  %conv94 = trunc i64 %50 to i32
  call void @assemble_string(i8* %49, i32 %conv94)
  br label %if.end.96

if.else.95:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4606, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.output_constant, i32 0, i32 0)) #8
  unreachable

if.end.96:                                        ; preds = %cond.end
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end.47, %if.end.47
  %51 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common99 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %code100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 2
  %bf.load101 = load i32, i32* %code100, align 8
  %bf.clear102 = and i32 %bf.load101, 255
  %cmp103 = icmp eq i32 %bf.clear102, 46
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %sw.bb.98
  %52 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %53 = load i64, i64* %size.addr, align 8
  %54 = load i32, i32* %align.addr, align 4
  call void @output_constructor(%union.tree_node* %52, i64 %53, i32 %54)
  br label %if.end.107

if.else.106:                                      ; preds = %sw.bb.98
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4614, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.output_constant, i32 0, i32 0)) #8
  unreachable

if.end.107:                                       ; preds = %if.then.105
  br label %if.end.141

sw.bb.108:                                        ; preds = %if.end.47
  %55 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common109 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %code110 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common109, i32 0, i32 2
  %bf.load111 = load i32, i32* %code110, align 8
  %bf.clear112 = and i32 %bf.load111, 255
  %cmp113 = icmp eq i32 %bf.clear112, 25
  br i1 %cmp113, label %if.then.115, label %if.else.119

if.then.115:                                      ; preds = %sw.bb.108
  %56 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call116 = call %struct.rtx_def* @expand_expr(%union.tree_node* %56, %struct.rtx_def* null, i32 0, i32 3)
  %57 = load i64, i64* %thissize, align 8
  %conv117 = trunc i64 %57 to i32
  %58 = load i32, i32* %align.addr, align 4
  %call118 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call116, i32 %conv117, i32 %58, i32 1)
  br label %if.end.135

if.else.119:                                      ; preds = %sw.bb.108
  %59 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common120 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %code121 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common120, i32 0, i32 2
  %bf.load122 = load i32, i32* %code121, align 8
  %bf.clear123 = and i32 %bf.load122, 255
  %cmp124 = icmp eq i32 %bf.clear123, 46
  br i1 %cmp124, label %if.then.126, label %if.else.133

if.then.126:                                      ; preds = %if.else.119
  %60 = load i64, i64* %thissize, align 8
  %61 = alloca i8, i64 %60
  store i8* %61, i8** %buffer, align 8
  %62 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %63 = load i8*, i8** %buffer, align 8
  %64 = load i64, i64* %thissize, align 8
  %conv127 = trunc i64 %64 to i32
  %call128 = call %union.tree_node* @get_set_constructor_bytes(%union.tree_node* %62, i8* %63, i32 %conv127)
  %tobool129 = icmp ne %union.tree_node* %call128, null
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.126
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4626, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.output_constant, i32 0, i32 0)) #8
  unreachable

if.end.131:                                       ; preds = %if.then.126
  %65 = load i8*, i8** %buffer, align 8
  %66 = load i64, i64* %thissize, align 8
  %conv132 = trunc i64 %66 to i32
  call void @assemble_string(i8* %65, i32 %conv132)
  br label %if.end.134

if.else.133:                                      ; preds = %if.else.119
  call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.133, %if.end.131
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.115
  br label %if.end.141

sw.bb.136:                                        ; preds = %if.end.47
  br label %if.end.141

sw.default:                                       ; preds = %if.end.47
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4637, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.output_constant, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %if.end.97, %sw.bb.65, %if.end.61, %if.end.52
  %67 = load i64, i64* %thissize, align 8
  %68 = load i64, i64* %size.addr, align 8
  %sub = sub nsw i64 %68, %67
  store i64 %sub, i64* %size.addr, align 8
  %69 = load i64, i64* %size.addr, align 8
  %cmp137 = icmp sgt i64 %69, 0
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %sw.epilog
  %70 = load i64, i64* %size.addr, align 8
  %conv140 = trunc i64 %70 to i32
  call void @assemble_zeros(i32 %conv140)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then, %if.then.38, %if.then.79, %if.end.107, %if.end.135, %sw.bb.136, %if.then.139, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_external(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1732, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.assemble_external, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_external_libcall(%struct.rtx_def* %fun) #0 {
entry:
  %fun.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %fun, %struct.rtx_def** %fun.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %fun.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %fun.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, -536870913
  %bf.set = or i32 %bf.clear2, 536870912
  store i32 %bf.set, i32* %3, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %fun.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %7 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %5, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_global(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %1, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_label(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %1 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %0, i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %2)
  ret void
}

declare %union.tree_node* @maybe_get_identifier(i8*) #1

declare void @asm_fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @assemble_static_space(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %name = alloca [12 x i8], align 1
  %namestring = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %name, i32 0, i32 0
  %0 = load i32, i32* @const_labelno, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i32 %0) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %1 = load i32, i32* @const_labelno, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @const_labelno, align 4
  %arraydecay1 = getelementptr inbounds [12 x i8], [12 x i8]* %name, i32 0, i32 0
  %call2 = call i8* @ggc_alloc_string(i8* %arraydecay1, i32 -1)
  store i8* %call2, i8** %namestring, align 8
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %3 = load i8*, i8** %namestring, align 8
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %3)
  store %struct.rtx_def* %call3, %struct.rtx_def** %x, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay6 = getelementptr inbounds [12 x i8], [12 x i8]* %name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %5, i8* %arraydecay6)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0))
  br label %do.body.8

do.body.8:                                        ; preds = %do.body.4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay10 = getelementptr inbounds [12 x i8], [12 x i8]* %name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %8, i8* %arraydecay10)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %10 = load i32, i32* %size.addr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i32 %10, i32 16)
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.8
  br label %do.end.13

do.end.13:                                        ; preds = %do.end.12
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define i8* @integer_asm_op(i32 %size, i32 %aligned_p) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %aligned_p.addr = alloca i32, align 4
  %ops = alloca %struct.asm_int_op*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %aligned_p, i32* %aligned_p.addr, align 4
  %0 = load i32, i32* %aligned_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.asm_int_op* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 3), %struct.asm_int_op** %ops, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.asm_int_op* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 4), %struct.asm_int_op** %ops, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %size.addr, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 8, label %sw.bb.3
    i32 16, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load i8*, i8** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 2), align 8
  store i8* %2, i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %3 = load %struct.asm_int_op*, %struct.asm_int_op** %ops, align 8
  %hi = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %3, i32 0, i32 0
  %4 = load i8*, i8** %hi, align 8
  store i8* %4, i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %5 = load %struct.asm_int_op*, %struct.asm_int_op** %ops, align 8
  %si = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %5, i32 0, i32 1
  %6 = load i8*, i8** %si, align 8
  store i8* %6, i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  %7 = load %struct.asm_int_op*, %struct.asm_int_op** %ops, align 8
  %di = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %7, i32 0, i32 2
  %8 = load i8*, i8** %di, align 8
  store i8* %8, i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  %9 = load %struct.asm_int_op*, %struct.asm_int_op** %ops, align 8
  %ti = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %9, i32 0, i32 3
  %10 = load i8*, i8** %ti, align 8
  store i8* %10, i8** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define void @assemble_integer_with_op(i8* %op, %struct.rtx_def* %x) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store i8* %op, i8** %op.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i8*, i8** %op.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %2, %struct.rtx_def* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputc(i32 10, %struct._IO_FILE* %4)
  ret void
}

declare void @output_addr_const(%struct._IO_FILE*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @default_assemble_integer(%struct.rtx_def* %x, i32 %size, i32 %aligned_p) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %size.addr = alloca i32, align 4
  %aligned_p.addr = alloca i32, align 4
  %op = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %aligned_p, i32* %aligned_p.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* %aligned_p.addr, align 4
  %call = call i8* @integer_asm_op(i32 %0, i32 %1)
  store i8* %call, i8** %op, align 8
  %2 = load i8*, i8** %op, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %op, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @assemble_integer_with_op(i8* %3, %struct.rtx_def* %4)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  ret i1 %5
}

declare i32 @mode_for_size(i32, i32, i32) #1

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @assemble_real(%struct.realvaluetype* byval align 8 %d, i32 %mode, i32 %align) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  %data = alloca [4 x i64], align 16
  %l = alloca i64, align 8
  %nalign = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %align, i32* %align.addr, align 4
  %0 = load i32, i32* %align.addr, align 4
  %call = call i32 @min_align(i32 %0, i32 32)
  store i32 %call, i32* %nalign, align 4
  %1 = load i32, i32* %mode.addr, align 4
  switch i32 %1, label %sw.default [
    i32 15, label %sw.bb
    i32 16, label %sw.bb.4
    i32 17, label %sw.bb.10
    i32 18, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  %call1 = call i64 @etarsingle(%struct.realvaluetype* byval align 8 %d)
  store i64 %call1, i64* %l, align 8
  %2 = load i64, i64* %l, align 8
  %call2 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %2)
  %3 = load i32, i32* %align.addr, align 4
  %call3 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call2, i32 4, i32 %3, i32 1)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay)
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 0
  %4 = load i64, i64* %arrayidx, align 8
  %call5 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %4)
  %5 = load i32, i32* %align.addr, align 4
  %call6 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call5, i32 4, i32 %5, i32 1)
  %arrayidx7 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 1
  %6 = load i64, i64* %arrayidx7, align 8
  %call8 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %6)
  %7 = load i32, i32* %nalign, align 4
  %call9 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call8, i32 4, i32 %7, i32 1)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %8 = load i32, i32* @target_flags, align 4
  %and = and i32 %8, 16777216
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 128, i32 96
  %cmp = icmp eq i32 %cond, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.10
  %arraydecay11 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay11)
  br label %cond.end.27

cond.false:                                       ; preds = %sw.bb.10
  %9 = load i32, i32* @target_flags, align 4
  %and12 = and i32 %9, 16777216
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 128, i32 96
  %cmp15 = icmp eq i32 %cond14, 96
  br i1 %cmp15, label %cond.true.16, label %cond.false.18

cond.true.16:                                     ; preds = %cond.false
  %arraydecay17 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etarldouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay17)
  br label %cond.end.26

cond.false.18:                                    ; preds = %cond.false
  %10 = load i32, i32* @target_flags, align 4
  %and19 = and i32 %10, 16777216
  %tobool20 = icmp ne i32 %and19, 0
  %cond21 = select i1 %tobool20, i32 128, i32 96
  %cmp22 = icmp eq i32 %cond21, 128
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.false.18
  %arraydecay24 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etartdouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay24)
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false.18
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2042, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.assemble_real, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %11, %cond.true.23
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true.16
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.26, %cond.true
  %arrayidx28 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 0
  %12 = load i64, i64* %arrayidx28, align 8
  %call29 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %12)
  %13 = load i32, i32* %align.addr, align 4
  %call30 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call29, i32 4, i32 %13, i32 1)
  %arrayidx31 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 1
  %14 = load i64, i64* %arrayidx31, align 8
  %call32 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %14)
  %15 = load i32, i32* %nalign, align 4
  %call33 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call32, i32 4, i32 %15, i32 1)
  %arrayidx34 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 2
  %16 = load i64, i64* %arrayidx34, align 8
  %call35 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %16)
  %17 = load i32, i32* %nalign, align 4
  %call36 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call35, i32 4, i32 %17, i32 1)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %18 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %18, 16777216
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 128, i32 96
  %cmp41 = icmp eq i32 %cond40, 64
  br i1 %cmp41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %sw.bb.37
  %arraydecay43 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay43)
  br label %cond.end.61

cond.false.44:                                    ; preds = %sw.bb.37
  %19 = load i32, i32* @target_flags, align 4
  %and45 = and i32 %19, 16777216
  %tobool46 = icmp ne i32 %and45, 0
  %cond47 = select i1 %tobool46, i32 128, i32 96
  %cmp48 = icmp eq i32 %cond47, 96
  br i1 %cmp48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.false.44
  %arraydecay50 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etarldouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay50)
  br label %cond.end.60

cond.false.51:                                    ; preds = %cond.false.44
  %20 = load i32, i32* @target_flags, align 4
  %and52 = and i32 %20, 16777216
  %tobool53 = icmp ne i32 %and52, 0
  %cond54 = select i1 %tobool53, i32 128, i32 96
  %cmp55 = icmp eq i32 %cond54, 128
  br i1 %cmp55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.false.51
  %arraydecay57 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i32 0
  call void @etartdouble(%struct.realvaluetype* byval align 8 %d, i64* %arraydecay57)
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.false.51
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2048, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.assemble_real, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end.59

cond.end.59:                                      ; preds = %21, %cond.true.56
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.59, %cond.true.49
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.60, %cond.true.42
  %arrayidx62 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 0
  %22 = load i64, i64* %arrayidx62, align 8
  %call63 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %22)
  %23 = load i32, i32* %align.addr, align 4
  %call64 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call63, i32 4, i32 %23, i32 1)
  %arrayidx65 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 1
  %24 = load i64, i64* %arrayidx65, align 8
  %call66 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %24)
  %25 = load i32, i32* %nalign, align 4
  %call67 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call66, i32 4, i32 %25, i32 1)
  %arrayidx68 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 2
  %26 = load i64, i64* %arrayidx68, align 8
  %call69 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %26)
  %27 = load i32, i32* %nalign, align 4
  %call70 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call69, i32 4, i32 %27, i32 1)
  %arrayidx71 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i32 0, i64 3
  %28 = load i64, i64* %arrayidx71, align 8
  %call72 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %28)
  %29 = load i32, i32* %nalign, align 4
  %call73 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call72, i32 4, i32 %29, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2055, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.assemble_real, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %cond.end.61, %cond.end.27, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @min_align(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %or = or i32 %0, %1
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %or1 = or i32 %2, %3
  %sub = sub i32 0, %or1
  %and = and i32 %or, %sub
  ret i32 %and
}

declare i64 @etarsingle(%struct.realvaluetype* byval align 8) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare void @etardouble(%struct.realvaluetype* byval align 8, i64*) #1

declare void @etarldouble(%struct.realvaluetype* byval align 8, i64*) #1

declare void @etartdouble(%struct.realvaluetype* byval align 8, i64*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @immed_double_const(i64 %i0, i64 %i1, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %i0.addr = alloca i64, align 8
  %i1.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %r = alloca %struct.rtx_def*, align 8
  %width = alloca i32, align 4
  store i64 %i0, i64* %i0.addr, align 8
  store i64 %i1, i64* %i1.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then, label %if.end.63

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %mode.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom4
  %5 = load i16, i16* %arrayidx5, align 2
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %width, align 4
  %6 = load i32, i32* %width, align 4
  %cmp6 = icmp slt i32 %6, 64
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load i64, i64* %i0.addr, align 8
  %8 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %8, 1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 -1, %sh_prom
  %and = and i64 %7, %shl
  %9 = load i32, i32* %width, align 4
  %sub8 = sub nsw i32 %9, 1
  %sh_prom9 = zext i32 %sub8 to i64
  %shl10 = shl i64 -1, %sh_prom9
  %cmp11 = icmp ne i64 %and, %shl10
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true
  %10 = load i32, i32* %width, align 4
  %sh_prom14 = zext i32 %10 to i64
  %shl15 = shl i64 1, %sh_prom14
  %sub16 = sub nsw i64 %shl15, 1
  %11 = load i64, i64* %i0.addr, align 8
  %and17 = and i64 %11, %sub16
  store i64 %and17, i64* %i0.addr, align 8
  store i64 0, i64* %i1.addr, align 8
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true, %if.then
  %12 = load i32, i32* %width, align 4
  %cmp18 = icmp eq i32 %12, 64
  br i1 %cmp18, label %land.lhs.true.20, label %if.else.27

land.lhs.true.20:                                 ; preds = %if.else
  %13 = load i64, i64* %i1.addr, align 8
  %cmp21 = icmp eq i64 %13, -1
  br i1 %cmp21, label %land.lhs.true.23, label %if.then.26

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %14 = load i64, i64* %i0.addr, align 8
  %cmp24 = icmp slt i64 %14, 0
  br i1 %cmp24, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23, %land.lhs.true.20
  store i64 0, i64* %i1.addr, align 8
  br label %if.end.31

if.else.27:                                       ; preds = %land.lhs.true.23, %if.else
  %15 = load i32, i32* %width, align 4
  %cmp28 = icmp sgt i32 %15, 128
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.else.27
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.immed_double_const, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.else.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.26
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.13
  %16 = load i32, i32* %width, align 4
  %cmp33 = icmp slt i32 %16, 64
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.43

land.lhs.true.35:                                 ; preds = %if.end.32
  %17 = load i64, i64* %i0.addr, align 8
  %18 = load i32, i32* %width, align 4
  %sub36 = sub nsw i32 %18, 1
  %sh_prom37 = zext i32 %sub36 to i64
  %shl38 = shl i64 1, %sh_prom37
  %and39 = and i64 %17, %shl38
  %tobool = icmp ne i64 %and39, 0
  br i1 %tobool, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %land.lhs.true.35
  %19 = load i32, i32* %width, align 4
  %sh_prom41 = zext i32 %19 to i64
  %shl42 = shl i64 -1, %sh_prom41
  %20 = load i64, i64* %i0.addr, align 8
  %or = or i64 %20, %shl42
  store i64 %or, i64* %i0.addr, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %land.lhs.true.35, %if.end.32
  %21 = load i32, i32* %width, align 4
  %cmp44 = icmp sle i32 %21, 64
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.43
  %22 = load i64, i64* %i0.addr, align 8
  %cmp47 = icmp slt i64 %22, 0
  %cond = select i1 %cmp47, i64 -1, i64 0
  store i64 %cond, i64* %i1.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.43
  %23 = load i64, i64* %i1.addr, align 8
  %cmp50 = icmp eq i64 %23, 0
  br i1 %cmp50, label %land.lhs.true.52, label %lor.lhs.false.55

land.lhs.true.52:                                 ; preds = %if.end.49
  %24 = load i64, i64* %i0.addr, align 8
  %cmp53 = icmp sge i64 %24, 0
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.52, %if.end.49
  %25 = load i64, i64* %i1.addr, align 8
  %cmp56 = icmp eq i64 %25, -1
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.62

land.lhs.true.58:                                 ; preds = %lor.lhs.false.55
  %26 = load i64, i64* %i0.addr, align 8
  %cmp59 = icmp slt i64 %26, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %land.lhs.true.58, %land.lhs.true.52
  %27 = load i64, i64* %i0.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %27)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.62:                                        ; preds = %land.lhs.true.58, %lor.lhs.false.55
  store i32 0, i32* %mode.addr, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %lor.lhs.false
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %cmp64 = icmp ne %struct.function* %28, null
  br i1 %cmp64, label %if.then.66, label %if.end.84

if.then.66:                                       ; preds = %if.end.63
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 4
  %30 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_const_double_chain = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %30, i32 0, i32 5
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x_const_double_chain, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.66
  %32 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %tobool67 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx68 to i64*
  %34 = load i64, i64* %rtwint, align 8
  %35 = load i64, i64* %i0.addr, align 8
  %cmp69 = icmp eq i64 %34, %35
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.81

land.lhs.true.71:                                 ; preds = %for.body
  %36 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 2
  %rtwint74 = bitcast %union.rtunion_def* %arrayidx73 to i64*
  %37 = load i64, i64* %rtwint74, align 8
  %38 = load i64, i64* %i1.addr, align 8
  %cmp75 = icmp eq i64 %37, %38
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.81

land.lhs.true.77:                                 ; preds = %land.lhs.true.71
  %39 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load = load i32, i32* %40, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %41 = load i32, i32* %mode.addr, align 4
  %cmp78 = icmp eq i32 %bf.clear, %41
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true.77
  %42 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %retval
  br label %return

if.end.81:                                        ; preds = %land.lhs.true.77, %land.lhs.true.71, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %43 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.84

if.end.84:                                        ; preds = %for.end, %if.end.63
  %45 = load i32, i32* %mode.addr, align 4
  %46 = load i64, i64* %i0.addr, align 8
  %47 = load i64, i64* %i1.addr, align 8
  %call85 = call %struct.rtx_def* @gen_rtx_CONST_DOUBLE(i32 %45, i64 %46, i64 %47)
  store %struct.rtx_def* %call85, %struct.rtx_def** %r, align 8
  %48 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp86 = icmp ne %union.tree_node* %48, null
  br i1 %cmp86, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %if.end.84
  %49 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm89 = getelementptr inbounds %struct.function, %struct.function* %49, i32 0, i32 4
  %50 = load %struct.varasm_status*, %struct.varasm_status** %varasm89, align 8
  %x_const_double_chain90 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %50, i32 0, i32 5
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x_const_double_chain90, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  store %struct.rtx_def* %51, %struct.rtx_def** %rtx93, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %54 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm94 = getelementptr inbounds %struct.function, %struct.function* %54, i32 0, i32 4
  %55 = load %struct.varasm_status*, %struct.varasm_status** %varasm94, align 8
  %x_const_double_chain95 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %55, i32 0, i32 5
  store %struct.rtx_def* %53, %struct.rtx_def** %x_const_double_chain95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.88, %if.end.84
  %56 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.96, %if.then.80, %if.then.61
  %57 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %57
}

declare %struct.rtx_def* @gen_rtx_CONST_DOUBLE(i32, i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %d, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %u = alloca %union.real_extract, align 8
  %r = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %d1 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %0 = bitcast %struct.realvaluetype* %d1 to i8*
  %1 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 24, i32 8, i1 false)
  %call = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = bitcast %struct.realvaluetype* %d to i8*
  %call2 = call i32 @memcmp(i8* bitcast (%struct.realvaluetype* @dconst0 to i8*), i8* %2, i64 24) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom
  %4 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call4 = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else.11, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.else
  %call7 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 @dconst1, %struct.realvaluetype* byval align 8 %d)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %land.lhs.true.6
  %5 = load i32, i32* %mode.addr, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 1), i32 0, i64 %idxprom9
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.else.11:                                       ; preds = %land.lhs.true.6, %if.else
  %call12 = call i32 @target_isnan(%struct.realvaluetype* byval align 8 %d)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %if.else.11
  %call15 = call i32 @ereal_cmp(%struct.realvaluetype* byval align 8 @dconst2, %struct.realvaluetype* byval align 8 %d)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.lhs.true.14
  %7 = load i32, i32* %mode.addr, align 4
  %idxprom18 = sext i32 %7 to i64
  %arrayidx19 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 2), i32 0, i64 %idxprom18
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx19, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.14, %if.else.11
  br label %if.end.20

if.end.20:                                        ; preds = %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %cmp22 = icmp ne %struct.function* %9, null
  br i1 %cmp22, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %if.end.21
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 4
  %11 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_const_double_chain = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %11, i32 0, i32 5
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x_const_double_chain, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %13 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %tobool24 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx25 to i64*
  %15 = bitcast i64* %rtwint to i8*
  %16 = bitcast %union.real_extract* %u to i8*
  %call26 = call i32 @memcmp(i8* %15, i8* %16, i64 24) #7
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.31, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %for.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %19 = load i32, i32* %mode.addr, align 4
  %cmp29 = icmp eq i32 %bf.clear, %19
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.28
  %20 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %21 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end.21
  %call35 = call %struct.rtx_def* @rtx_alloc(i32 55)
  store %struct.rtx_def* %call35, %struct.rtx_def** %r, align 8
  %23 = load i32, i32* %mode.addr, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load36 = load i32, i32* %25, align 8
  %bf.value = and i32 %23, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear37 = and i32 %bf.load36, -16711681
  %bf.set = or i32 %bf.clear37, %bf.shl
  store i32 %bf.set, i32* %25, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtwint40 = bitcast %union.rtunion_def* %arrayidx39 to i64*
  %27 = bitcast i64* %rtwint40 to i8*
  %28 = bitcast %union.real_extract* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 1, i1 false)
  %29 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp41 = icmp ne %union.tree_node* %29, null
  br i1 %cmp41, label %if.then.42, label %if.else.50

if.then.42:                                       ; preds = %if.end.34
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm43 = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 4
  %31 = load %struct.varasm_status*, %struct.varasm_status** %varasm43, align 8
  %x_const_double_chain44 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %31, i32 0, i32 5
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x_const_double_chain44, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  store %struct.rtx_def* %32, %struct.rtx_def** %rtx47, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm48 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 4
  %36 = load %struct.varasm_status*, %struct.varasm_status** %varasm48, align 8
  %x_const_double_chain49 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %36, i32 0, i32 5
  store %struct.rtx_def* %34, %struct.rtx_def** %x_const_double_chain49, align 8
  br label %if.end.54

if.else.50:                                       ; preds = %if.end.34
  %37 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.50, %if.then.42
  %38 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.30, %if.then.17, %if.then.8, %if.then
  %39 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %39
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare i32 @target_isnan(%struct.realvaluetype* byval align 8) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare i32 @ereal_cmp(%struct.realvaluetype* byval align 8, %struct.realvaluetype* byval align 8) #1

declare %struct.rtx_def* @rtx_alloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @immed_real_const(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst = bitcast %union.tree_node* %0 to %struct.tree_real_cst*
  %real_cst1 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %call = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %real_cst1, i32 %bf.clear)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define void @clear_const_double_mem() #0 {
entry:
  %r = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 4
  %1 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_const_double_chain = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %1, i32 0, i32 5
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_const_double_chain, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %next, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm4 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 4
  %9 = load %struct.varasm_status*, %struct.varasm_status** %varasm4, align 8
  %x_const_double_chain5 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %9, i32 0, i32 5
  store %struct.rtx_def* null, %struct.rtx_def** %x_const_double_chain5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @defer_addressed_constants() #0 {
entry:
  %0 = load i32, i32* @defer_addressed_constants_flag, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @defer_addressed_constants_flag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_deferred_addressed_constants() #0 {
entry:
  %p = alloca %struct.deferred_constant*, align 8
  %next = alloca %struct.deferred_constant*, align 8
  %0 = load i32, i32* @defer_addressed_constants_flag, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @defer_addressed_constants_flag, align 4
  %1 = load i32, i32* @defer_addressed_constants_flag, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.deferred_constant*, %struct.deferred_constant** @deferred_constants, align 8
  store %struct.deferred_constant* %2, %struct.deferred_constant** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %tobool = icmp ne %struct.deferred_constant* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %exp = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %6 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %reloc = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %6, i32 0, i32 2
  %7 = load i32, i32* %reloc, align 4
  %8 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %labelno = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %8, i32 0, i32 3
  %9 = load i32, i32* %labelno, align 4
  call void @output_constant_def_contents(%union.tree_node* %5, i32 %7, i32 %9)
  %10 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %next1 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %10, i32 0, i32 0
  %11 = load %struct.deferred_constant*, %struct.deferred_constant** %next1, align 8
  store %struct.deferred_constant* %11, %struct.deferred_constant** %next, align 8
  %12 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %13 = bitcast %struct.deferred_constant* %12 to i8*
  call void @free(i8* %13) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.deferred_constant*, %struct.deferred_constant** %next, align 8
  store %struct.deferred_constant* %14, %struct.deferred_constant** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.deferred_constant* null, %struct.deferred_constant** @deferred_constants, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_constant_def_contents(%union.tree_node* %exp, i32 %reloc, i32 %labelno) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %reloc.addr = alloca i32, align 4
  %labelno.addr = alloca i32, align 4
  %align = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 %reloc, i32* %reloc.addr, align 4
  store i32 %labelno, i32* %labelno.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %align2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 7
  %2 = load i32, i32* %align2, align 4
  store i32 %2, i32* %align, align 4
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %4 = load i32, i32* %align, align 4
  %call = call i32 @ix86_constant_alignment(%union.tree_node* %3, i32 %4)
  store i32 %call, i32* %align, align 4
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common4 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 34
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %section_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 15
  %8 = load %union.tree_node*, %union.tree_node** %section_name, align 8
  %cmp9 = icmp ne %union.tree_node* %8, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %10 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* %9, i8* null, i32 %10)
  br label %if.end.135

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common10 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp eq i32 %bf.clear13, 29
  br i1 %cmp14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else
  %12 = load i32, i32* @flag_writable_strings, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.else.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.15
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %14 = load i32, i32* %align, align 4
  %conv = sext i32 %14 to i64
  call void @mergeable_string_section(%union.tree_node* %13, i64 %conv, i32 0)
  br label %if.end

if.else.17:                                       ; preds = %if.then.15
  call void @data_section()
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  br label %if.end.134

if.else.18:                                       ; preds = %if.else
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common19 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %code20, align 8
  %bf.clear22 = and i32 %bf.load21, 255
  %cmp23 = icmp eq i32 %bf.clear22, 34
  br i1 %cmp23, label %if.then.25, label %if.else.103

if.then.25:                                       ; preds = %if.else.18
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common26 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load27, 12
  %bf.clear28 = and i32 %bf.lshr, 1
  %tobool29 = icmp ne i32 %bf.clear28, 0
  br i1 %tobool29, label %lor.lhs.false.30, label %if.then.52

lor.lhs.false.30:                                 ; preds = %if.then.25
  %17 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common31 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load32 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 8
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %if.then.52, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.30
  %18 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl37 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 12
  %19 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool38 = icmp ne %union.tree_node* %19, null
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.52

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.36
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl40 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %initial41 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl40, i32 0, i32 12
  %21 = load %union.tree_node*, %union.tree_node** %initial41, align 8
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp42 = icmp ne %union.tree_node* %21, %22
  br i1 %cmp42, label %land.lhs.true.44, label %if.else.65

land.lhs.true.44:                                 ; preds = %lor.lhs.false.39
  %23 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl45 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %initial46 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl45, i32 0, i32 12
  %24 = load %union.tree_node*, %union.tree_node** %initial46, align 8
  %common47 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load48 = load i32, i32* %constant_flag, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 9
  %bf.clear50 = and i32 %bf.lshr49, 1
  %tobool51 = icmp ne i32 %bf.clear50, 0
  br i1 %tobool51, label %if.else.65, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.44, %lor.lhs.false.36, %lor.lhs.false.30, %if.then.25
  %25 = load i32, i32* @flag_pic, align 4
  %tobool53 = icmp ne i32 %25, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.57

land.lhs.true.54:                                 ; preds = %if.then.52
  %26 = load i32, i32* %reloc.addr, align 4
  %and = and i32 %26, 2
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.54
  %27 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %27)
  br label %if.end.64

if.else.57:                                       ; preds = %land.lhs.true.54, %if.then.52
  %28 = load i32, i32* @flag_pic, align 4
  %tobool58 = icmp ne i32 %28, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.62

land.lhs.true.59:                                 ; preds = %if.else.57
  %29 = load i32, i32* %reloc.addr, align 4
  %tobool60 = icmp ne i32 %29, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %land.lhs.true.59
  %30 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %30)
  br label %if.end.63

if.else.62:                                       ; preds = %land.lhs.true.59, %if.else.57
  call void @data_section()
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.56
  br label %if.end.102

if.else.65:                                       ; preds = %land.lhs.true.44, %lor.lhs.false.39
  %31 = load i32, i32* @flag_pic, align 4
  %tobool66 = icmp ne i32 %31, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.71

land.lhs.true.67:                                 ; preds = %if.else.65
  %32 = load i32, i32* %reloc.addr, align 4
  %and68 = and i32 %32, 2
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true.67
  %33 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %33)
  br label %if.end.101

if.else.71:                                       ; preds = %land.lhs.true.67, %if.else.65
  %34 = load i32, i32* @flag_pic, align 4
  %tobool72 = icmp ne i32 %34, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.76

land.lhs.true.73:                                 ; preds = %if.else.71
  %35 = load i32, i32* %reloc.addr, align 4
  %tobool74 = icmp ne i32 %35, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.73
  %36 = load i32, i32* %reloc.addr, align 4
  call void @named_section(%union.tree_node* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 %36)
  br label %if.end.100

if.else.76:                                       ; preds = %land.lhs.true.73, %if.else.71
  %37 = load i32, i32* @flag_merge_constants, align 4
  %cmp77 = icmp slt i32 %37, 2
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.76
  call void @const_section()
  br label %if.end.99

if.else.80:                                       ; preds = %if.else.76
  %38 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl81 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %initial82 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl81, i32 0, i32 12
  %39 = load %union.tree_node*, %union.tree_node** %initial82, align 8
  %common83 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %code84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 2
  %bf.load85 = load i32, i32* %code84, align 8
  %bf.clear86 = and i32 %bf.load85, 255
  %cmp87 = icmp eq i32 %bf.clear86, 29
  br i1 %cmp87, label %if.then.89, label %if.else.93

if.then.89:                                       ; preds = %if.else.80
  %40 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl90 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %initial91 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl90, i32 0, i32 12
  %41 = load %union.tree_node*, %union.tree_node** %initial91, align 8
  %42 = load i32, i32* %align, align 4
  %conv92 = sext i32 %42 to i64
  call void @mergeable_string_section(%union.tree_node* %41, i64 %conv92, i32 0)
  br label %if.end.98

if.else.93:                                       ; preds = %if.else.80
  %43 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl94 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %mode = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl94, i32 0, i32 5
  %44 = bitcast i48* %mode to i64*
  %bf.load95 = load i64, i64* %44, align 8
  %bf.clear96 = and i64 %bf.load95, 255
  %bf.cast = trunc i64 %bf.clear96 to i32
  %45 = load i32, i32* %align, align 4
  %conv97 = sext i32 %45 to i64
  call void @mergeable_constant_section(i32 %bf.cast, i64 %conv97, i32 0)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.93, %if.then.89
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.79
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.75
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.70
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end.64
  br label %if.end.133

if.else.103:                                      ; preds = %if.else.18
  %46 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common104 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %code105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 2
  %bf.load106 = load i32, i32* %code105, align 8
  %bf.clear107 = and i32 %bf.load106, 255
  %cmp108 = icmp eq i32 %bf.clear107, 46
  br i1 %cmp108, label %if.then.110, label %if.else.131

if.then.110:                                      ; preds = %if.else.103
  %47 = load i32, i32* @flag_pic, align 4
  %tobool111 = icmp ne i32 %47, 0
  br i1 %tobool111, label %land.lhs.true.112, label %lor.lhs.false.114

land.lhs.true.112:                                ; preds = %if.then.110
  %48 = load i32, i32* %reloc.addr, align 4
  %tobool113 = icmp ne i32 %48, 0
  br i1 %tobool113, label %if.then.128, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %land.lhs.true.112, %if.then.110
  %49 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common115 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %side_effects_flag116 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common115, i32 0, i32 2
  %bf.load117 = load i32, i32* %side_effects_flag116, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 8
  %bf.clear119 = and i32 %bf.lshr118, 1
  %tobool120 = icmp ne i32 %bf.clear119, 0
  br i1 %tobool120, label %if.then.128, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.114
  %50 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common122 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %constant_flag123 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common122, i32 0, i32 2
  %bf.load124 = load i32, i32* %constant_flag123, align 8
  %bf.lshr125 = lshr i32 %bf.load124, 9
  %bf.clear126 = and i32 %bf.lshr125, 1
  %tobool127 = icmp ne i32 %bf.clear126, 0
  br i1 %tobool127, label %if.else.129, label %if.then.128

if.then.128:                                      ; preds = %lor.lhs.false.121, %lor.lhs.false.114, %land.lhs.true.112
  call void @data_section()
  br label %if.end.130

if.else.129:                                      ; preds = %lor.lhs.false.121
  call void @const_section()
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.132

if.else.131:                                      ; preds = %if.else.103
  call void @const_section()
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.end.130
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.102
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then
  %51 = load i32, i32* %align, align 4
  %cmp136 = icmp sgt i32 %51, 8
  br i1 %cmp136, label %if.then.138, label %if.end.149

if.then.138:                                      ; preds = %if.end.135
  %52 = load i32, i32* %align, align 4
  %div = sdiv i32 %52, 8
  %conv139 = sext i32 %div to i64
  %call140 = call i32 @floor_log2_wide(i64 %conv139)
  %cmp141 = icmp ne i32 %call140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.148

if.then.143:                                      ; preds = %if.then.138
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %54 = load i32, i32* %align, align 4
  %div144 = sdiv i32 %54, 8
  %conv145 = sext i32 %div144 to i64
  %call146 = call i32 @floor_log2_wide(i64 %conv145)
  %shl = shl i32 1, %call146
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %shl)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.143, %if.then.138
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.135
  br label %do.body

do.body:                                          ; preds = %if.end.149
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %56 = load i32, i32* %labelno.addr, align 4
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i32 %56)
  br label %do.end

do.end:                                           ; preds = %do.body
  %57 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %58 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common151 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %code152 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common151, i32 0, i32 2
  %bf.load153 = load i32, i32* %code152, align 8
  %bf.clear154 = and i32 %bf.load153, 255
  %cmp155 = icmp eq i32 %bf.clear154, 29
  br i1 %cmp155, label %cond.true, label %cond.false.170

cond.true:                                        ; preds = %do.end
  %59 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string = bitcast %union.tree_node* %59 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  %60 = load i32, i32* %length, align 4
  %conv157 = sext i32 %60 to i64
  %61 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common158 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %type159 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common158, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %type159, align 8
  %call160 = call i64 @int_size_in_bytes(%union.tree_node* %62)
  %cmp161 = icmp sgt i64 %conv157, %call160
  br i1 %cmp161, label %cond.true.163, label %cond.false

cond.true.163:                                    ; preds = %cond.true
  %63 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string164 = bitcast %union.tree_node* %63 to %struct.tree_string*
  %length165 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string164, i32 0, i32 2
  %64 = load i32, i32* %length165, align 4
  %conv166 = sext i32 %64 to i64
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %65 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common167 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %type168 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common167, i32 0, i32 1
  %66 = load %union.tree_node*, %union.tree_node** %type168, align 8
  %call169 = call i64 @int_size_in_bytes(%union.tree_node* %66)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.163
  %cond = phi i64 [ %conv166, %cond.true.163 ], [ %call169, %cond.false ]
  br label %cond.end.174

cond.false.170:                                   ; preds = %do.end
  %67 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common171 = bitcast %union.tree_node* %67 to %struct.tree_common*
  %type172 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common171, i32 0, i32 1
  %68 = load %union.tree_node*, %union.tree_node** %type172, align 8
  %call173 = call i64 @int_size_in_bytes(%union.tree_node* %68)
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.170, %cond.end
  %cond175 = phi i64 [ %cond, %cond.end ], [ %call173, %cond.false.170 ]
  %69 = load i32, i32* %align, align 4
  call void @output_constant(%union.tree_node* %57, i64 %cond175, i32 %69)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @output_constant_def(%union.tree_node* %exp, i32 %defer) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %defer.addr = alloca i32, align 4
  %hash = alloca i32, align 4
  %desc = alloca %struct.constant_descriptor*, align 8
  %defstr = alloca %struct.deferred_string**, align 8
  %label = alloca [256 x i8], align 16
  %reloc = alloca i32, align 4
  %found = alloca i32, align 4
  %after_function = alloca i32, align 4
  %labelno = alloca i32, align 4
  %rtl = alloca %struct.rtx_def*, align 8
  %rtl61 = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.deferred_constant*, align 8
  %p210 = alloca %struct.deferred_string*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 %defer, i32* %defer.addr, align 4
  store i32 1, i32* %found, align 4
  store i32 0, i32* %after_function, align 4
  store i32 -1, i32* %labelno, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst = bitcast %union.tree_node* %1 to %struct.tree_real_cst*
  %rtl1 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtl1, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %defer.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.2
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst4 = bitcast %union.tree_node* %4 to %struct.tree_real_cst*
  %rtl5 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtl5, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load6 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load6, 31
  %tobool7 = icmp ne i32 %bf.lshr, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.2
  %8 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst8 = bitcast %union.tree_node* %8 to %struct.tree_real_cst*
  %rtl9 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtl9, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call = call i32 @output_addressed_constants(%union.tree_node* %10)
  store i32 %call, i32* %reloc, align 4
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call10 = call i32 @const_hash(%union.tree_node* %11)
  %rem = srem i32 %call10, 1009
  store i32 %rem, i32* %hash, align 4
  %12 = load i32, i32* %hash, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [1009 x %struct.constant_descriptor*], [1009 x %struct.constant_descriptor*]* @const_hash_table, i32 0, i64 %idxprom
  %13 = load %struct.constant_descriptor*, %struct.constant_descriptor** %arrayidx11, align 8
  store %struct.constant_descriptor* %13, %struct.constant_descriptor** %desc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %tobool12 = icmp ne %struct.constant_descriptor* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %16 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %call13 = call i32 @compare_constant(%union.tree_node* %15, %struct.constant_descriptor* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %17 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %next = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %17, i32 0, i32 0
  %18 = load %struct.constant_descriptor*, %struct.constant_descriptor** %next, align 8
  store %struct.constant_descriptor* %18, %struct.constant_descriptor** %desc, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %19 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %cmp17 = icmp eq %struct.constant_descriptor* %19, null
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.end
  %20 = load i32, i32* @const_labelno, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* @const_labelno, align 4
  store i32 %20, i32* %labelno, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %label, i32 0, i32 0
  %21 = load i32, i32* %labelno, align 4
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i32 %21) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %22 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call20 = call %struct.constant_descriptor* @record_constant(%union.tree_node* %22)
  store %struct.constant_descriptor* %call20, %struct.constant_descriptor** %desc, align 8
  %23 = load i32, i32* %hash, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [1009 x %struct.constant_descriptor*], [1009 x %struct.constant_descriptor*]* @const_hash_table, i32 0, i64 %idxprom21
  %24 = load %struct.constant_descriptor*, %struct.constant_descriptor** %arrayidx22, align 8
  %25 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %next23 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %25, i32 0, i32 0
  store %struct.constant_descriptor* %24, %struct.constant_descriptor** %next23, align 8
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %label, i32 0, i32 0
  %call25 = call i8* @ggc_alloc_string(i8* %arraydecay24, i32 -1)
  %26 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label26 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %26, i32 0, i32 1
  store i8* %call25, i8** %label26, align 8
  %27 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %28 = load i32, i32* %hash, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds [1009 x %struct.constant_descriptor*], [1009 x %struct.constant_descriptor*]* @const_hash_table, i32 0, i64 %idxprom27
  store %struct.constant_descriptor* %27, %struct.constant_descriptor** %arrayidx28, align 8
  %29 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common29 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type30 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 6
  %bf.load31 = load i32, i32* %mode, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 9
  %bf.clear33 = and i32 %bf.lshr32, 127
  %31 = load i32, i32* @target_flags, align 4
  %and = and i32 %31, 33554432
  %tobool34 = icmp ne i32 %and, 0
  %cond = select i1 %tobool34, i32 5, i32 4
  %32 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label35 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %32, i32 0, i32 1
  %33 = load i8*, i8** %label35, align 8
  %call36 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %33)
  %call37 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear33, %struct.rtx_def* %call36)
  %34 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl38 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %34, i32 0, i32 2
  store %struct.rtx_def* %call37, %struct.rtx_def** %rtl38, align 8
  store %struct.rtx_def* %call37, %struct.rtx_def** %rtl, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %36 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @set_mem_attributes(%struct.rtx_def* %35, %union.tree_node* %36, i32 1)
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %37, i64 0)
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %39 = load i64, i64* @const_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %38, i64 %39)
  store i32 0, i32* %found, align 4
  br label %if.end.40

if.else:                                          ; preds = %for.end
  %40 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl39 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %40, i32 0, i32 2
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtl39, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %rtl, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %do.end
  %42 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common41 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %code42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 2
  %bf.load43 = load i32, i32* %code42, align 8
  %bf.clear44 = and i32 %bf.load43, 255
  %cmp45 = icmp ne i32 %bf.clear44, 25
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.40
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %44 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst47 = bitcast %union.tree_node* %44 to %struct.tree_real_cst*
  %rtl48 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst47, i32 0, i32 1
  store %struct.rtx_def* %43, %struct.rtx_def** %rtl48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.40
  %45 = load i32, i32* %found, align 4
  %tobool50 = icmp ne i32 %45, 0
  br i1 %tobool50, label %if.end.140, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %46 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common52 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %code53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 2
  %bf.load54 = load i32, i32* %code53, align 8
  %bf.clear55 = and i32 %bf.load54, 255
  %cmp56 = icmp ne i32 %bf.clear55, 25
  br i1 %cmp56, label %if.then.57, label %if.end.131

if.then.57:                                       ; preds = %if.then.51
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %47 = load i32, i32* @flag_pic, align 4
  %tobool59 = icmp ne i32 %47, 0
  br i1 %tobool59, label %if.then.60, label %if.end.129

if.then.60:                                       ; preds = %do.body.58
  %48 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common62 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %code63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %code63, align 8
  %bf.clear65 = and i32 %bf.load64, 255
  %idxprom66 = sext i32 %bf.clear65 to i64
  %arrayidx67 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom66
  %49 = load i8, i8* %arrayidx67, align 1
  %conv = sext i8 %49 to i32
  %cmp68 = icmp ne i32 %conv, 100
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.60
  %50 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst70 = bitcast %union.tree_node* %50 to %struct.tree_real_cst*
  %rtl71 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst70, i32 0, i32 1
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtl71, align 8
  br label %cond.end.81

cond.false:                                       ; preds = %if.then.60
  %52 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl = bitcast %union.tree_node* %52 to %struct.tree_decl*
  %rtl72 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtl72, align 8
  %tobool73 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %cond.false
  %54 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl75 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %rtl76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 17
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtl76, align 8
  br label %cond.end

cond.false.77:                                    ; preds = %cond.false
  %56 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %56, i8* null)
  %57 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl78 = bitcast %union.tree_node* %57 to %struct.tree_decl*
  %rtl79 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl78, i32 0, i32 17
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtl79, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.77, %cond.true.74
  %cond80 = phi %struct.rtx_def* [ %55, %cond.true.74 ], [ %58, %cond.false.77 ]
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.end, %cond.true
  %cond82 = phi %struct.rtx_def* [ %51, %cond.true ], [ %cond80, %cond.end ]
  store %struct.rtx_def* %cond82, %struct.rtx_def** %rtl61, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtl61, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load83 = load i32, i32* %60, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 66
  br i1 %cmp85, label %if.then.87, label %if.end.128

if.then.87:                                       ; preds = %cond.end.81
  %61 = load i8*, i8** @ix86_debug_addr_string, align 8
  %cmp88 = icmp ne i8* %61, null
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.107

land.lhs.true.90:                                 ; preds = %if.then.87
  %62 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common91 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %code92 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common91, i32 0, i32 2
  %bf.load93 = load i32, i32* %code92, align 8
  %bf.clear94 = and i32 %bf.load93, 255
  %idxprom95 = sext i32 %bf.clear94 to i64
  %arrayidx96 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom95
  %63 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %63 to i32
  %cmp98 = icmp eq i32 %conv97, 100
  br i1 %cmp98, label %if.then.100, label %if.end.107

if.then.100:                                      ; preds = %land.lhs.true.90
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl101 = bitcast %union.tree_node* %65 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl101, i32 0, i32 8
  %66 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %66 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %67 = load i8*, i8** %str, align 8
  %68 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common102 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common102, i32 0, i32 2
  %bf.load103 = load i32, i32* %public_flag, align 8
  %bf.lshr104 = lshr i32 %bf.load103, 19
  %bf.clear105 = and i32 %bf.lshr104, 1
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i8* %67, i32 %bf.clear105)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.100, %land.lhs.true.90, %if.then.87
  %69 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common108 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %code109 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common108, i32 0, i32 2
  %bf.load110 = load i32, i32* %code109, align 8
  %bf.clear111 = and i32 %bf.load110, 255
  %idxprom112 = sext i32 %bf.clear111 to i64
  %arrayidx113 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom112
  %70 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %70 to i32
  %cmp115 = icmp ne i32 %conv114, 100
  br i1 %cmp115, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.107
  %71 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common117 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %public_flag118 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common117, i32 0, i32 2
  %bf.load119 = load i32, i32* %public_flag118, align 8
  %bf.lshr120 = lshr i32 %bf.load119, 19
  %bf.clear121 = and i32 %bf.lshr120, 1
  %tobool122 = icmp ne i32 %bf.clear121, 0
  %lnot = xor i1 %tobool122, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.107
  %72 = phi i1 [ true, %if.end.107 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %72 to i32
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtl61, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 0
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load126 = load i32, i32* %75, align 8
  %bf.value = and i32 %lor.ext, 1
  %bf.shl = shl i32 %bf.value, 27
  %bf.clear127 = and i32 %bf.load126, -134217729
  %bf.set = or i32 %bf.clear127, %bf.shl
  store i32 %bf.set, i32* %75, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %lor.end, %cond.end.81
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %do.body.58
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %if.then.51
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %77 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl132 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %77, i32 0, i32 2
  store %struct.rtx_def* %76, %struct.rtx_def** %rtl132, align 8
  %78 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl133 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %78, i32 0, i32 2
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtl133, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx138 to i8**
  %81 = load i8*, i8** %rtstr, align 8
  %82 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label139 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %82, i32 0, i32 1
  store i8* %81, i8** %label139, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.131, %if.end.49
  %83 = load i32, i32* %found, align 4
  %tobool141 = icmp ne i32 %83, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.169

land.lhs.true.142:                                ; preds = %if.end.140
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load146 = load i32, i32* %86, align 8
  %bf.lshr147 = lshr i32 %bf.load146, 31
  %tobool148 = icmp ne i32 %bf.lshr147, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.169

land.lhs.true.149:                                ; preds = %land.lhs.true.142
  %87 = load i32, i32* %defer.addr, align 4
  %tobool150 = icmp ne i32 %87, 0
  br i1 %tobool150, label %lor.lhs.false.151, label %if.then.155

lor.lhs.false.151:                                ; preds = %land.lhs.true.149
  %88 = load i32, i32* @defer_addressed_constants_flag, align 4
  %tobool152 = icmp ne i32 %88, 0
  br i1 %tobool152, label %if.then.155, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %lor.lhs.false.151
  %89 = load i32, i32* %after_function, align 4
  %tobool154 = icmp ne i32 %89, 0
  br i1 %tobool154, label %if.then.155, label %if.end.169

if.then.155:                                      ; preds = %lor.lhs.false.153, %lor.lhs.false.151, %land.lhs.true.149
  %90 = load %struct.htab*, %struct.htab** @const_str_htab, align 8
  %91 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label156 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %91, i32 0, i32 1
  %92 = load i8*, i8** %label156, align 8
  %93 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label157 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %93, i32 0, i32 1
  %94 = load i8*, i8** %label157, align 8
  %95 = ptrtoint i8* %94 to i64
  %shr = ashr i64 %95, 3
  %conv158 = trunc i64 %shr to i32
  %call159 = call i8** @htab_find_slot_with_hash(%struct.htab* %90, i8* %92, i32 %conv158, i32 0)
  %96 = bitcast i8** %call159 to %struct.deferred_string**
  store %struct.deferred_string** %96, %struct.deferred_string*** %defstr, align 8
  %97 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  %tobool160 = icmp ne %struct.deferred_string** %97, null
  br i1 %tobool160, label %if.then.161, label %if.end.168

if.then.161:                                      ; preds = %if.then.155
  store i32 0, i32* %found, align 4
  %98 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  %99 = load %struct.deferred_string*, %struct.deferred_string** %98, align 8
  %labelno162 = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %99, i32 0, i32 2
  %100 = load i32, i32* %labelno162, align 4
  store i32 %100, i32* %labelno, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %103 = bitcast %struct.rtx_def* %102 to i32*
  %bf.load166 = load i32, i32* %103, align 8
  %bf.clear167 = and i32 %bf.load166, 2147483647
  store i32 %bf.clear167, i32* %103, align 8
  %104 = load %struct.htab*, %struct.htab** @const_str_htab, align 8
  %105 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  %106 = bitcast %struct.deferred_string** %105 to i8**
  call void @htab_clear_slot(%struct.htab* %104, i8** %106)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.161, %if.then.155
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %lor.lhs.false.153, %land.lhs.true.142, %if.end.140
  %107 = load i32, i32* %found, align 4
  %tobool170 = icmp ne i32 %107, 0
  br i1 %tobool170, label %if.end.226, label %if.then.171

if.then.171:                                      ; preds = %if.end.169
  %108 = load i32, i32* @defer_addressed_constants_flag, align 4
  %tobool172 = icmp ne i32 %108, 0
  br i1 %tobool172, label %if.then.175, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %if.then.171
  %109 = load i32, i32* %after_function, align 4
  %tobool174 = icmp ne i32 %109, 0
  br i1 %tobool174, label %if.then.175, label %if.else.187

if.then.175:                                      ; preds = %lor.lhs.false.173, %if.then.171
  %call176 = call noalias i8* @xmalloc(i64 24)
  %110 = bitcast i8* %call176 to %struct.deferred_constant*
  store %struct.deferred_constant* %110, %struct.deferred_constant** %p, align 8
  %111 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call177 = call %union.tree_node* @copy_constant(%union.tree_node* %111)
  %112 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %exp178 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %112, i32 0, i32 1
  store %union.tree_node* %call177, %union.tree_node** %exp178, align 8
  %113 = load i32, i32* %reloc, align 4
  %114 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %reloc179 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %114, i32 0, i32 2
  store i32 %113, i32* %reloc179, align 4
  %115 = load i32, i32* %labelno, align 4
  %116 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %labelno180 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %116, i32 0, i32 3
  store i32 %115, i32* %labelno180, align 4
  %117 = load i32, i32* %after_function, align 4
  %tobool181 = icmp ne i32 %117, 0
  br i1 %tobool181, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %if.then.175
  %118 = load %struct.deferred_constant*, %struct.deferred_constant** @after_function_constants, align 8
  %119 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %next183 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %119, i32 0, i32 0
  store %struct.deferred_constant* %118, %struct.deferred_constant** %next183, align 8
  %120 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  store %struct.deferred_constant* %120, %struct.deferred_constant** @after_function_constants, align 8
  br label %if.end.186

if.else.184:                                      ; preds = %if.then.175
  %121 = load %struct.deferred_constant*, %struct.deferred_constant** @deferred_constants, align 8
  %122 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  %next185 = getelementptr inbounds %struct.deferred_constant, %struct.deferred_constant* %122, i32 0, i32 0
  store %struct.deferred_constant* %121, %struct.deferred_constant** %next185, align 8
  %123 = load %struct.deferred_constant*, %struct.deferred_constant** %p, align 8
  store %struct.deferred_constant* %123, %struct.deferred_constant** @deferred_constants, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.184, %if.then.182
  br label %if.end.225

if.else.187:                                      ; preds = %lor.lhs.false.173
  %124 = load i32, i32* @flag_syntax_only, align 4
  %tobool188 = icmp ne i32 %124, 0
  br i1 %tobool188, label %if.end.224, label %if.then.189

if.then.189:                                      ; preds = %if.else.187
  %125 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common190 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %code191 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common190, i32 0, i32 2
  %bf.load192 = load i32, i32* %code191, align 8
  %bf.clear193 = and i32 %bf.load192, 255
  %cmp194 = icmp ne i32 %bf.clear193, 29
  br i1 %cmp194, label %if.then.208, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %if.then.189
  %126 = load i32, i32* %defer.addr, align 4
  %tobool197 = icmp ne i32 %126, 0
  br i1 %tobool197, label %lor.lhs.false.198, label %if.then.208

lor.lhs.false.198:                                ; preds = %lor.lhs.false.196
  %127 = load i32, i32* @flag_writable_strings, align 4
  %tobool199 = icmp ne i32 %127, 0
  br i1 %tobool199, label %if.then.208, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %lor.lhs.false.198
  %128 = load %struct.htab*, %struct.htab** @const_str_htab, align 8
  %129 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label201 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %129, i32 0, i32 1
  %130 = load i8*, i8** %label201, align 8
  %131 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label202 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %131, i32 0, i32 1
  %132 = load i8*, i8** %label202, align 8
  %133 = ptrtoint i8* %132 to i64
  %shr203 = ashr i64 %133, 3
  %conv204 = trunc i64 %shr203 to i32
  %call205 = call i8** @htab_find_slot_with_hash(%struct.htab* %128, i8* %130, i32 %conv204, i32 1)
  %134 = bitcast i8** %call205 to %struct.deferred_string**
  store %struct.deferred_string** %134, %struct.deferred_string*** %defstr, align 8
  %cmp206 = icmp eq %struct.deferred_string** %134, null
  br i1 %cmp206, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %lor.lhs.false.200, %lor.lhs.false.198, %lor.lhs.false.196, %if.then.189
  %135 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %136 = load i32, i32* %reloc, align 4
  %137 = load i32, i32* %labelno, align 4
  call void @output_constant_def_contents(%union.tree_node* %135, i32 %136, i32 %137)
  br label %if.end.223

if.else.209:                                      ; preds = %lor.lhs.false.200
  %call211 = call noalias i8* @xmalloc(i64 24)
  %138 = bitcast i8* %call211 to %struct.deferred_string*
  store %struct.deferred_string* %138, %struct.deferred_string** %p210, align 8
  %139 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call212 = call %union.tree_node* @copy_constant(%union.tree_node* %139)
  %140 = load %struct.deferred_string*, %struct.deferred_string** %p210, align 8
  %exp213 = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %140, i32 0, i32 1
  store %union.tree_node* %call212, %union.tree_node** %exp213, align 8
  %141 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %label214 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %141, i32 0, i32 1
  %142 = load i8*, i8** %label214, align 8
  %143 = load %struct.deferred_string*, %struct.deferred_string** %p210, align 8
  %label215 = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %143, i32 0, i32 0
  store i8* %142, i8** %label215, align 8
  %144 = load i32, i32* %labelno, align 4
  %145 = load %struct.deferred_string*, %struct.deferred_string** %p210, align 8
  %labelno216 = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %145, i32 0, i32 2
  store i32 %144, i32* %labelno216, align 4
  %146 = load %struct.deferred_string*, %struct.deferred_string** %p210, align 8
  %147 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  store %struct.deferred_string* %146, %struct.deferred_string** %147, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 0
  %rtx219 = bitcast %union.rtunion_def* %arrayidx218 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx219, align 8
  %150 = bitcast %struct.rtx_def* %149 to i32*
  %bf.load220 = load i32, i32* %150, align 8
  %bf.clear221 = and i32 %bf.load220, 2147483647
  %bf.set222 = or i32 %bf.clear221, -2147483648
  store i32 %bf.set222, i32* %150, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.209, %if.then.208
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.else.187
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.end.186
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.end.169
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  store %struct.rtx_def* %151, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.226, %if.then
  %152 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %152
}

; Function Attrs: nounwind uwtable
define internal i32 @const_hash(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca i32, align 4
  %exp.addr = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %hi = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %link = alloca %union.tree_node*, align 8
  %value55 = alloca %struct.addr_const, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  switch i32 %1, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb.3
    i32 29, label %sw.bb.5
    i32 27, label %sw.bb.7
    i32 46, label %sw.bb.10
    i32 121, label %sw.bb.53
    i32 124, label %sw.bb.53
    i32 59, label %sw.bb.99
    i32 60, label %sw.bb.99
    i32 115, label %sw.bb.110
    i32 114, label %sw.bb.110
    i32 116, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %int_cst = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst2 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %3 = bitcast %struct.anon* %int_cst2 to i8*
  store i8* %3, i8** %p, align 8
  store i32 16, i32* %len, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst = bitcast %union.tree_node* %4 to %struct.tree_real_cst*
  %real_cst4 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %5 = bitcast %struct.realvaluetype* %real_cst4 to i8*
  store i8* %5, i8** %p, align 8
  store i32 24, i32* %len, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string = bitcast %union.tree_node* %6 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %7 = load i8*, i8** %pointer, align 8
  store i8* %7, i8** %p, align 8
  %8 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string6 = bitcast %union.tree_node* %8 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string6, i32 0, i32 2
  %9 = load i32, i32* %length, align 4
  store i32 %9, i32* %len, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex = bitcast %union.tree_node* %10 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call = call i32 @const_hash(%union.tree_node* %11)
  %mul = mul nsw i32 %call, 5
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex8 = bitcast %union.tree_node* %12 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex8, i32 0, i32 3
  %13 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call9 = call i32 @const_hash(%union.tree_node* %13)
  %add = add nsw i32 %mul, %call9
  store i32 %add, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %14 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common11 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common12 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp = icmp eq i32 %bf.clear15, 19
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.10
  %16 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common16 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %type17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %type17, align 8
  %call18 = call i64 @int_size_in_bytes(%union.tree_node* %17)
  %conv = trunc i64 %call18 to i32
  store i32 %conv, i32* %len, align 4
  %18 = load i32, i32* %len, align 4
  %conv19 = sext i32 %18 to i64
  %19 = alloca i8, i64 %conv19
  store i8* %19, i8** %tmp, align 8
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %21 = load i8*, i8** %tmp, align 8
  %22 = load i32, i32* %len, align 4
  %call20 = call %union.tree_node* @get_set_constructor_bytes(%union.tree_node* %20, i8* %21, i32 %22)
  %23 = load i8*, i8** %tmp, align 8
  store i8* %23, i8** %p, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb.10
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common22 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %type23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type23, align 8
  %common24 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 20
  br i1 %cmp28, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.else
  %26 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common31 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %28 = ptrtoint %union.tree_node* %27 to i64
  %and = and i64 %28, 1073741823
  %rem = urem i64 %and, 1009
  %conv33 = trunc i64 %rem to i32
  store i32 %conv33, i32* %hi, align 4
  br label %if.end

if.else.34:                                       ; preds = %if.else
  %29 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common35 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type36, align 8
  %call37 = call i64 @int_size_in_bytes(%union.tree_node* %30)
  %add38 = add nsw i64 5, %call37
  %and39 = and i64 %add38, 1073741823
  %rem40 = srem i64 %and39, 1009
  %conv41 = trunc i64 %rem40 to i32
  store i32 %conv41, i32* %hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.34, %if.then.30
  %31 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp42 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp42, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %32, %union.tree_node** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool = icmp ne %union.tree_node* %33, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list = bitcast %union.tree_node* %34 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %35 = load %union.tree_node*, %union.tree_node** %value, align 8
  %tobool43 = icmp ne %union.tree_node* %35, null
  br i1 %tobool43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %for.body
  %36 = load i32, i32* %hi, align 4
  %mul45 = mul nsw i32 %36, 603
  %37 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list46 = bitcast %union.tree_node* %37 to %struct.tree_list*
  %value47 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list46, i32 0, i32 2
  %38 = load %union.tree_node*, %union.tree_node** %value47, align 8
  %call48 = call i32 @const_hash(%union.tree_node* %38)
  %add49 = add nsw i32 %mul45, %call48
  %rem50 = srem i32 %add49, 1009
  store i32 %rem50, i32* %hi, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %39 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common52 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 0
  %40 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %40, %union.tree_node** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %hi, align 4
  store i32 %41, i32* %retval
  br label %return

sw.bb.53:                                         ; preds = %entry, %entry
  %42 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @decode_addr_const(%union.tree_node* %42, %struct.addr_const* %value55)
  %base = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value55, i32 0, i32 0
  %43 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load56 = load i32, i32* %44, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 68
  br i1 %cmp58, label %if.then.60, label %if.else.77

if.then.60:                                       ; preds = %sw.bb.53
  %offset = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value55, i32 0, i32 1
  %45 = load i64, i64* %offset, align 8
  %conv61 = trunc i64 %45 to i32
  store i32 %conv61, i32* %hi, align 4
  %base62 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value55, i32 0, i32 0
  %46 = load %struct.rtx_def*, %struct.rtx_def** %base62, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx63 to i8**
  %47 = load i8*, i8** %rtstr, align 8
  store i8* %47, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.75, %if.then.60
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load i8*, i8** %p, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %49, i64 %idxprom
  %50 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %50 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %for.body.69, label %for.end.76

for.body.69:                                      ; preds = %for.cond.64
  %51 = load i32, i32* %hi, align 4
  %mul70 = mul nsw i32 %51, 613
  %52 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %52 to i64
  %53 = load i8*, i8** %p, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %53, i64 %idxprom71
  %54 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %54 to i32
  %add74 = add i32 %mul70, %conv73
  store i32 %add74, i32* %hi, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.69
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.64

for.end.76:                                       ; preds = %for.cond.64
  br label %if.end.96

if.else.77:                                       ; preds = %sw.bb.53
  %base78 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value55, i32 0, i32 0
  %56 = load %struct.rtx_def*, %struct.rtx_def** %base78, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load79 = load i32, i32* %57, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 67
  br i1 %cmp81, label %if.then.83, label %if.else.94

if.then.83:                                       ; preds = %if.else.77
  %offset84 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value55, i32 0, i32 1
  %58 = load i64, i64* %offset84, align 8
  %base85 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value55, i32 0, i32 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %base85, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx89 to i32*
  %61 = load i32, i32* %rtint, align 4
  %mul90 = mul nsw i32 %61, 13
  %conv91 = sext i32 %mul90 to i64
  %add92 = add nsw i64 %58, %conv91
  %conv93 = trunc i64 %add92 to i32
  store i32 %conv93, i32* %hi, align 4
  br label %if.end.95

if.else.94:                                       ; preds = %if.else.77
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2581, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.const_hash, i32 0, i32 0)) #8
  unreachable

if.end.95:                                        ; preds = %if.then.83
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.end.76
  %62 = load i32, i32* %hi, align 4
  %and97 = and i32 %62, 1073741823
  store i32 %and97, i32* %hi, align 4
  %63 = load i32, i32* %hi, align 4
  %rem98 = srem i32 %63, 1009
  store i32 %rem98, i32* %hi, align 4
  %64 = load i32, i32* %hi, align 4
  store i32 %64, i32* %retval
  br label %return

sw.bb.99:                                         ; preds = %entry, %entry
  %65 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp100 = bitcast %union.tree_node* %65 to %struct.tree_exp*
  %operands101 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp100, i32 0, i32 2
  %arrayidx102 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands101, i32 0, i64 0
  %66 = load %union.tree_node*, %union.tree_node** %arrayidx102, align 8
  %call103 = call i32 @const_hash(%union.tree_node* %66)
  %mul104 = mul nsw i32 %call103, 9
  %67 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp105 = bitcast %union.tree_node* %67 to %struct.tree_exp*
  %operands106 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp105, i32 0, i32 2
  %arrayidx107 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands106, i32 0, i64 1
  %68 = load %union.tree_node*, %union.tree_node** %arrayidx107, align 8
  %call108 = call i32 @const_hash(%union.tree_node* %68)
  %add109 = add nsw i32 %mul104, %call108
  store i32 %add109, i32* %retval
  br label %return

sw.bb.110:                                        ; preds = %entry, %entry, %entry
  %69 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp111 = bitcast %union.tree_node* %69 to %struct.tree_exp*
  %operands112 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp111, i32 0, i32 2
  %arrayidx113 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands112, i32 0, i64 0
  %70 = load %union.tree_node*, %union.tree_node** %arrayidx113, align 8
  %call114 = call i32 @const_hash(%union.tree_node* %70)
  %mul115 = mul nsw i32 %call114, 7
  %add116 = add nsw i32 %mul115, 2
  store i32 %add116, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %71 = load i32, i32* %code, align 4
  %rem117 = srem i32 %71, 1009
  store i32 %rem117, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then, %sw.bb.5, %sw.bb.3, %sw.bb
  %72 = load i32, i32* %len, align 4
  store i32 %72, i32* %hi, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.127, %sw.epilog
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %len, align 4
  %cmp119 = icmp slt i32 %73, %74
  br i1 %cmp119, label %for.body.121, label %for.end.129

for.body.121:                                     ; preds = %for.cond.118
  %75 = load i32, i32* %hi, align 4
  %mul122 = mul nsw i32 %75, 613
  %76 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %76 to i64
  %77 = load i8*, i8** %p, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %77, i64 %idxprom123
  %78 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %78 to i32
  %add126 = add i32 %mul122, %conv125
  store i32 %add126, i32* %hi, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.121
  %79 = load i32, i32* %i, align 4
  %inc128 = add nsw i32 %79, 1
  store i32 %inc128, i32* %i, align 4
  br label %for.cond.118

for.end.129:                                      ; preds = %for.cond.118
  %80 = load i32, i32* %hi, align 4
  %and130 = and i32 %80, 1073741823
  store i32 %and130, i32* %hi, align 4
  %81 = load i32, i32* %hi, align 4
  %rem131 = srem i32 %81, 1009
  store i32 %rem131, i32* %hi, align 4
  %82 = load i32, i32* %hi, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %for.end.129, %sw.default, %sw.bb.110, %sw.bb.99, %if.end.96, %for.end, %sw.bb.7
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_constant(%union.tree_node* %exp, %struct.constant_descriptor* %desc) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %desc.addr = alloca %struct.constant_descriptor*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.constant_descriptor* %desc, %struct.constant_descriptor** %desc.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %1 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc.addr, align 8
  %u = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %1, i32 0, i32 3
  %contents = bitcast %union.anon.4* %u to [1 x i8]*
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %contents, i32 0, i32 0
  %call = call i8* @compare_constant_1(%union.tree_node* %0, i8* %arraydecay)
  %cmp = icmp ne i8* null, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct.constant_descriptor* @record_constant(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %next = alloca %struct.constant_descriptor*, align 8
  %label = alloca i8*, align 8
  %rtl = alloca %struct.rtx_def*, align 8
  %pad = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %__o5 = alloca %struct.obstack*, align 8
  %__len6 = alloca i32, align 4
  %__o20 = alloca %struct.obstack*, align 8
  %__len21 = alloca i32, align 4
  %__o38 = alloca %struct.obstack*, align 8
  %__len39 = alloca i32, align 4
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.constant_descriptor* null, %struct.constant_descriptor** %next, align 8
  store i8* null, i8** %label, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %rtl, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o, align 8
  store i32 8, i32* %__len, align 4
  %0 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i32 0, i32 3
  %1 = load i8*, i8** %next_free, align 8
  %2 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %6 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free1 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free1, align 8
  %9 = bitcast %struct.constant_descriptor** %next to i8*
  %10 = load i32, i32* %__len, align 4
  %conv = sext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %conv, i32 1, i1 false)
  %11 = load i32, i32* %__len, align 4
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 3
  %13 = load i8*, i8** %next_free2, align 8
  %idx.ext3 = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 %idx.ext3
  store i8* %add.ptr4, i8** %next_free2, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o5, align 8
  store i32 8, i32* %__len6, align 4
  %14 = load %struct.obstack*, %struct.obstack** %__o5, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free7, align 8
  %16 = load i32, i32* %__len6, align 4
  %idx.ext8 = sext i32 %16 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %15, i64 %idx.ext8
  %17 = load %struct.obstack*, %struct.obstack** %__o5, align 8
  %chunk_limit10 = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 4
  %18 = load i8*, i8** %chunk_limit10, align 8
  %cmp11 = icmp ugt i8* %add.ptr9, %18
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o5, align 8
  %20 = load i32, i32* %__len6, align 4
  call void @_obstack_newchunk(%struct.obstack* %19, i32 %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  %21 = load %struct.obstack*, %struct.obstack** %__o5, align 8
  %next_free15 = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  %22 = load i8*, i8** %next_free15, align 8
  %23 = bitcast i8** %label to i8*
  %24 = load i32, i32* %__len6, align 4
  %conv16 = sext i32 %24 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 %conv16, i32 1, i1 false)
  %25 = load i32, i32* %__len6, align 4
  %26 = load %struct.obstack*, %struct.obstack** %__o5, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free17, align 8
  %idx.ext18 = sext i32 %25 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %27, i64 %idx.ext18
  store i8* %add.ptr19, i8** %next_free17, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o20, align 8
  store i32 8, i32* %__len21, align 4
  %28 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  %29 = load i8*, i8** %next_free22, align 8
  %30 = load i32, i32* %__len21, align 4
  %idx.ext23 = sext i32 %30 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %29, i64 %idx.ext23
  %31 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %chunk_limit25 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit25, align 8
  %cmp26 = icmp ugt i8* %add.ptr24, %32
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.14
  %33 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %34 = load i32, i32* %__len21, align 4
  call void @_obstack_newchunk(%struct.obstack* %33, i32 %34)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.14
  %35 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %next_free30 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 3
  %36 = load i8*, i8** %next_free30, align 8
  %37 = bitcast %struct.rtx_def** %rtl to i8*
  %38 = load i32, i32* %__len21, align 4
  %conv31 = sext i32 %38 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %conv31, i32 1, i1 false)
  %39 = load i32, i32* %__len21, align 4
  %40 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %next_free32 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free32, align 8
  %idx.ext33 = sext i32 %39 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %41, i64 %idx.ext33
  store i8* %add.ptr34, i8** %next_free32, align 8
  store i32 8, i32* %pad, align 4
  %42 = load i32, i32* %pad, align 4
  %cmp35 = icmp sgt i32 %42, 0
  br i1 %cmp35, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %if.end.29
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o38, align 8
  %43 = load i32, i32* %pad, align 4
  store i32 %43, i32* %__len39, align 4
  %44 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %chunk_limit40 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 4
  %45 = load i8*, i8** %chunk_limit40, align 8
  %46 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %next_free41 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 3
  %47 = load i8*, i8** %next_free41, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %48 = load i32, i32* %__len39, align 4
  %conv42 = sext i32 %48 to i64
  %cmp43 = icmp slt i64 %sub.ptr.sub, %conv42
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.37
  %49 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %50 = load i32, i32* %__len39, align 4
  call void @_obstack_newchunk(%struct.obstack* %49, i32 %50)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.37
  %51 = load i32, i32* %__len39, align 4
  %52 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %next_free47 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 3
  %53 = load i8*, i8** %next_free47, align 8
  %idx.ext48 = sext i32 %51 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %53, i64 %idx.ext48
  store i8* %add.ptr49, i8** %next_free47, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.46, %if.end.29
  %54 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @record_constant_1(%union.tree_node* %54)
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o1, align 8
  %55 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 2
  %56 = load i8*, i8** %object_base, align 8
  store i8* %56, i8** %value, align 8
  %57 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free51 = getelementptr inbounds %struct.obstack, %struct.obstack* %57, i32 0, i32 3
  %58 = load i8*, i8** %next_free51, align 8
  %59 = load i8*, i8** %value, align 8
  %cmp52 = icmp eq i8* %58, %59
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  %60 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.50
  %61 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free56 = getelementptr inbounds %struct.obstack, %struct.obstack* %61, i32 0, i32 3
  %62 = load i8*, i8** %next_free56, align 8
  %sub.ptr.lhs.cast57 = ptrtoint i8* %62 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast57, 0
  %63 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %63, i32 0, i32 6
  %64 = load i32, i32* %alignment_mask, align 4
  %conv59 = sext i32 %64 to i64
  %add = add nsw i64 %sub.ptr.sub58, %conv59
  %65 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask60 = getelementptr inbounds %struct.obstack, %struct.obstack* %65, i32 0, i32 6
  %66 = load i32, i32* %alignment_mask60, align 4
  %neg = xor i32 %66, -1
  %conv61 = sext i32 %neg to i64
  %and = and i64 %add, %conv61
  %add.ptr62 = getelementptr inbounds i8, i8* null, i64 %and
  %67 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free63 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 3
  store i8* %add.ptr62, i8** %next_free63, align 8
  %68 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free64 = getelementptr inbounds %struct.obstack, %struct.obstack* %68, i32 0, i32 3
  %69 = load i8*, i8** %next_free64, align 8
  %70 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %70, i32 0, i32 1
  %71 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %72 = bitcast %struct._obstack_chunk* %71 to i8*
  %sub.ptr.lhs.cast65 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast66 = ptrtoint i8* %72 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %73 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit68 = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 4
  %74 = load i8*, i8** %chunk_limit68, align 8
  %75 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk69 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 1
  %76 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk69, align 8
  %77 = bitcast %struct._obstack_chunk* %76 to i8*
  %sub.ptr.lhs.cast70 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast71 = ptrtoint i8* %77 to i64
  %sub.ptr.sub72 = sub i64 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %cmp73 = icmp sgt i64 %sub.ptr.sub67, %sub.ptr.sub72
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.end.55
  %78 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit76 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 4
  %79 = load i8*, i8** %chunk_limit76, align 8
  %80 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free77 = getelementptr inbounds %struct.obstack, %struct.obstack* %80, i32 0, i32 3
  store i8* %79, i8** %next_free77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.end.55
  %81 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free79 = getelementptr inbounds %struct.obstack, %struct.obstack* %81, i32 0, i32 3
  %82 = load i8*, i8** %next_free79, align 8
  %83 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base80 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 2
  store i8* %82, i8** %object_base80, align 8
  %84 = load i8*, i8** %value, align 8
  store i8* %84, i8** %tmp
  %85 = load i8*, i8** %tmp
  %86 = bitcast i8* %85 to %struct.constant_descriptor*
  ret %struct.constant_descriptor* %86
}

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare void @htab_clear_slot(%struct.htab*, i8**) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @copy_constant(%union.tree_node* %exp) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %copy = alloca %union.tree_node*, align 8
  %list = alloca %union.tree_node*, align 8
  %tail = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 121, label %sw.bb
    i32 25, label %sw.bb.18
    i32 26, label %sw.bb.18
    i32 29, label %sw.bb.18
    i32 27, label %sw.bb.20
    i32 59, label %sw.bb.27
    i32 60, label %sw.bb.27
    i32 115, label %sw.bb.43
    i32 114, label %sw.bb.43
    i32 116, label %sw.bb.43
    i32 46, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %idxprom = sext i32 %bf.clear5 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common8 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common12 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp13 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands14 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp13, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands14, i32 0, i64 0
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx15, align 8
  %call = call %union.tree_node* @copy_constant(%union.tree_node* %8)
  %call16 = call %union.tree_node* @build1(i32 %bf.clear11, %union.tree_node* %6, %union.tree_node* %call)
  store %union.tree_node* %call16, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call17 = call %union.tree_node* @copy_node(%union.tree_node* %9)
  store %union.tree_node* %call17, %union.tree_node** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry, %entry, %entry
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call19 = call %union.tree_node* @copy_node(%union.tree_node* %10)
  store %union.tree_node* %call19, %union.tree_node** %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common21 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type22, align 8
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex = bitcast %union.tree_node* %13 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %14 = load %union.tree_node*, %union.tree_node** %real, align 8
  %call23 = call %union.tree_node* @copy_constant(%union.tree_node* %14)
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex24 = bitcast %union.tree_node* %15 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex24, i32 0, i32 3
  %16 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %call25 = call %union.tree_node* @copy_constant(%union.tree_node* %16)
  %call26 = call %union.tree_node* @build_complex(%union.tree_node* %12, %union.tree_node* %call23, %union.tree_node* %call25)
  store %union.tree_node* %call26, %union.tree_node** %retval
  br label %return

sw.bb.27:                                         ; preds = %entry, %entry
  %17 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common28 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load30 = load i32, i32* %code29, align 8
  %bf.clear31 = and i32 %bf.load30, 255
  %18 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common32 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type33, align 8
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp34 = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands35 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp34, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands35, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8
  %call37 = call %union.tree_node* @copy_constant(%union.tree_node* %21)
  %22 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp38 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands39 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp38, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands39, i32 0, i64 1
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx40, align 8
  %call41 = call %union.tree_node* @copy_constant(%union.tree_node* %23)
  %call42 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 %bf.clear31, %union.tree_node* %19, %union.tree_node* %call37, %union.tree_node* %call41)
  store %union.tree_node* %call42, %union.tree_node** %retval
  br label %return

sw.bb.43:                                         ; preds = %entry, %entry, %entry
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common44 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load46 = load i32, i32* %code45, align 8
  %bf.clear47 = and i32 %bf.load46, 255
  %25 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common48 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %type49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %type49, align 8
  %27 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp50 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands51 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp50, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands51, i32 0, i64 0
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx52, align 8
  %call53 = call %union.tree_node* @copy_constant(%union.tree_node* %28)
  %call54 = call %union.tree_node* @build1(i32 %bf.clear47, %union.tree_node* %26, %union.tree_node* %call53)
  store %union.tree_node* %call54, %union.tree_node** %retval
  br label %return

sw.bb.55:                                         ; preds = %entry
  %29 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call56 = call %union.tree_node* @copy_node(%union.tree_node* %29)
  store %union.tree_node* %call56, %union.tree_node** %copy, align 8
  %30 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp57 = bitcast %union.tree_node* %30 to %struct.tree_exp*
  %operands58 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands58, i32 0, i64 1
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx59, align 8
  %call60 = call %union.tree_node* @copy_list(%union.tree_node* %31)
  store %union.tree_node* %call60, %union.tree_node** %list, align 8
  %32 = load %union.tree_node*, %union.tree_node** %list, align 8
  %33 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %exp61 = bitcast %union.tree_node* %33 to %struct.tree_exp*
  %operands62 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp61, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands62, i32 0, i64 1
  store %union.tree_node* %32, %union.tree_node** %arrayidx63, align 8
  %34 = load %union.tree_node*, %union.tree_node** %list, align 8
  store %union.tree_node* %34, %union.tree_node** %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.55
  %35 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %tobool = icmp ne %union.tree_node* %35, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %list64 = bitcast %union.tree_node* %36 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list64, i32 0, i32 2
  %37 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call65 = call %union.tree_node* @copy_constant(%union.tree_node* %37)
  %38 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %list66 = bitcast %union.tree_node* %38 to %struct.tree_list*
  %value67 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list66, i32 0, i32 2
  store %union.tree_node* %call65, %union.tree_node** %value67, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %common68 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 0
  %40 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %40, %union.tree_node** %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common69 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common69, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type70, align 8
  %common71 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %code72 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common71, i32 0, i32 2
  %bf.load73 = load i32, i32* %code72, align 8
  %bf.clear74 = and i32 %bf.load73, 255
  %cmp75 = icmp eq i32 %bf.clear74, 19
  br i1 %cmp75, label %if.then.77, label %if.end

if.then.77:                                       ; preds = %for.end
  %43 = load %union.tree_node*, %union.tree_node** %list, align 8
  store %union.tree_node* %43, %union.tree_node** %tail, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.85, %if.then.77
  %44 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %tobool79 = icmp ne %union.tree_node* %44, null
  br i1 %tobool79, label %for.body.80, label %for.end.88

for.body.80:                                      ; preds = %for.cond.78
  %45 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %list81 = bitcast %union.tree_node* %45 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list81, i32 0, i32 1
  %46 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %call82 = call %union.tree_node* @copy_constant(%union.tree_node* %46)
  %47 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %list83 = bitcast %union.tree_node* %47 to %struct.tree_list*
  %purpose84 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list83, i32 0, i32 1
  store %union.tree_node* %call82, %union.tree_node** %purpose84, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.80
  %48 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %common86 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %chain87 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 0
  %49 = load %union.tree_node*, %union.tree_node** %chain87, align 8
  store %union.tree_node* %49, %union.tree_node** %tail, align 8
  br label %for.cond.78

for.end.88:                                       ; preds = %for.cond.78
  br label %if.end

if.end:                                           ; preds = %for.end.88, %for.end
  %50 = load %union.tree_node*, %union.tree_node** %copy, align 8
  store %union.tree_node* %50, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 3193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.copy_constant, i32 0, i32 0)) #8
  unreachable

return:                                           ; preds = %if.end, %sw.bb.43, %sw.bb.27, %sw.bb.20, %sw.bb.18, %if.else, %if.then
  %51 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %51
}

; Function Attrs: nounwind uwtable
define void @init_varasm_status(%struct.function* %f) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  %p = alloca %struct.varasm_status*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  %call = call noalias i8* @xmalloc(i64 48)
  %0 = bitcast i8* %call to %struct.varasm_status*
  store %struct.varasm_status* %0, %struct.varasm_status** %p, align 8
  %1 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %2 = load %struct.function*, %struct.function** %f.addr, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 4
  store %struct.varasm_status* %1, %struct.varasm_status** %varasm, align 8
  %call1 = call noalias i8* @xcalloc(i64 61, i64 8)
  %3 = bitcast i8* %call1 to %struct.constant_descriptor**
  %4 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_const_rtx_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %4, i32 0, i32 0
  store %struct.constant_descriptor** %3, %struct.constant_descriptor*** %x_const_rtx_hash_table, align 8
  %call2 = call noalias i8* @xcalloc(i64 61, i64 8)
  %5 = bitcast i8* %call2 to %struct.pool_constant**
  %6 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_const_rtx_sym_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %6, i32 0, i32 1
  store %struct.pool_constant** %5, %struct.pool_constant*** %x_const_rtx_sym_hash_table, align 8
  %7 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_last_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %7, i32 0, i32 3
  store %struct.pool_constant* null, %struct.pool_constant** %x_last_pool, align 8
  %8 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_first_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %8, i32 0, i32 2
  store %struct.pool_constant* null, %struct.pool_constant** %x_first_pool, align 8
  %9 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_pool_offset = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %9, i32 0, i32 4
  store i64 0, i64* %x_pool_offset, align 8
  %10 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_const_double_chain = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %10, i32 0, i32 5
  store %struct.rtx_def* null, %struct.rtx_def** %x_const_double_chain, align 8
  ret void
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @mark_varasm_status(%struct.varasm_status* %p) #0 {
entry:
  %p.addr = alloca %struct.varasm_status*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  store %struct.varasm_status* %p, %struct.varasm_status** %p.addr, align 8
  %0 = load %struct.varasm_status*, %struct.varasm_status** %p.addr, align 8
  %cmp = icmp eq %struct.varasm_status* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %1 = load %struct.varasm_status*, %struct.varasm_status** %p.addr, align 8
  %x_first_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %1, i32 0, i32 2
  %2 = load %struct.pool_constant*, %struct.pool_constant** %x_first_pool, align 8
  call void @mark_pool_constant(%struct.pool_constant* %2)
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.varasm_status*, %struct.varasm_status** %p.addr, align 8
  %x_const_double_chain = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %3, i32 0, i32 5
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x_const_double_chain, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %r__, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp1 = icmp ne %struct.rtx_def* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %do.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %7 = bitcast %struct.rtx_def* %6 to i8*
  %call = call i32 @ggc_set_mark(i8* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_pool_constant(%struct.pool_constant* %pc) #0 {
entry:
  %pc.addr = alloca %struct.pool_constant*, align 8
  %a__ = alloca i8*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %r__9 = alloca %struct.rtx_def*, align 8
  store %struct.pool_constant* %pc, %struct.pool_constant** %pc.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.16, %entry
  %0 = load %struct.pool_constant*, %struct.pool_constant** %pc.addr, align 8
  %tobool = icmp ne %struct.pool_constant* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load %struct.pool_constant*, %struct.pool_constant** %pc.addr, align 8
  %2 = bitcast %struct.pool_constant* %1 to i8*
  store i8* %2, i8** %a__, align 8
  %3 = load i8*, i8** %a__, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %a__, align 8
  %call = call i32 @ggc_set_mark(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %5 = load %struct.pool_constant*, %struct.pool_constant** %pc.addr, align 8
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %5, i32 0, i32 3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %r__, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp2 = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %do.body.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %9 = bitcast %struct.rtx_def* %8 to i8*
  %call3 = call i32 @ggc_set_mark(i8* %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %do.body.1
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %11 = load %struct.pool_constant*, %struct.pool_constant** %pc.addr, align 8
  %desc = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %11, i32 0, i32 0
  %12 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %12, i32 0, i32 2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %r__9, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %r__9, align 8
  %cmp10 = icmp ne %struct.rtx_def* %14, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %do.body.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %r__9, align 8
  %16 = bitcast %struct.rtx_def* %15 to i8*
  %call12 = call i32 @ggc_set_mark(i8* %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %r__9, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.11, %do.body.8
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %18 = load %struct.pool_constant*, %struct.pool_constant** %pc.addr, align 8
  %next = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %18, i32 0, i32 1
  %19 = load %struct.pool_constant*, %struct.pool_constant** %next, align 8
  store %struct.pool_constant* %19, %struct.pool_constant** %pc.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @ggc_set_mark(i8*) #1

declare void @ggc_mark_rtx_children(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @free_varasm_status(%struct.function* %f) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  %p = alloca %struct.varasm_status*, align 8
  %i = alloca i32, align 4
  %cd = alloca %struct.constant_descriptor*, align 8
  %next = alloca %struct.constant_descriptor*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  %0 = load %struct.function*, %struct.function** %f.addr, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 4
  %1 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  store %struct.varasm_status* %1, %struct.varasm_status** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 61
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_const_rtx_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %4, i32 0, i32 0
  %5 = load %struct.constant_descriptor**, %struct.constant_descriptor*** %x_const_rtx_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.constant_descriptor*, %struct.constant_descriptor** %5, i64 %idxprom
  %6 = load %struct.constant_descriptor*, %struct.constant_descriptor** %arrayidx, align 8
  store %struct.constant_descriptor* %6, %struct.constant_descriptor** %cd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load %struct.constant_descriptor*, %struct.constant_descriptor** %cd, align 8
  %tobool = icmp ne %struct.constant_descriptor* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.constant_descriptor*, %struct.constant_descriptor** %cd, align 8
  %next1 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %8, i32 0, i32 0
  %9 = load %struct.constant_descriptor*, %struct.constant_descriptor** %next1, align 8
  store %struct.constant_descriptor* %9, %struct.constant_descriptor** %next, align 8
  %10 = load %struct.constant_descriptor*, %struct.constant_descriptor** %cd, align 8
  %11 = bitcast %struct.constant_descriptor* %10 to i8*
  call void @free(i8* %11) #6
  %12 = load %struct.constant_descriptor*, %struct.constant_descriptor** %next, align 8
  store %struct.constant_descriptor* %12, %struct.constant_descriptor** %cd, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_const_rtx_hash_table2 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %14, i32 0, i32 0
  %15 = load %struct.constant_descriptor**, %struct.constant_descriptor*** %x_const_rtx_hash_table2, align 8
  %16 = bitcast %struct.constant_descriptor** %15 to i8*
  call void @free(i8* %16) #6
  %17 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %x_const_rtx_sym_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %17, i32 0, i32 1
  %18 = load %struct.pool_constant**, %struct.pool_constant*** %x_const_rtx_sym_hash_table, align 8
  %19 = bitcast %struct.pool_constant** %18 to i8*
  call void @free(i8* %19) #6
  %20 = load %struct.varasm_status*, %struct.varasm_status** %p, align 8
  %21 = bitcast %struct.varasm_status* %20 to i8*
  call void @free(i8* %21) #6
  %22 = load %struct.function*, %struct.function** %f.addr, align 8
  %varasm3 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 4
  store %struct.varasm_status* null, %struct.varasm_status** %varasm3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @simplify_subtraction(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %val0 = alloca %struct.rtx_const, align 8
  %val1 = alloca %struct.rtx_const, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @decode_rtx_const(i32 %bf.clear, %struct.rtx_def* %3, %struct.rtx_const* %val0)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  call void @decode_rtx_const(i32 %bf.clear3, %struct.rtx_def* %7, %struct.rtx_const* %val1)
  %8 = bitcast %struct.rtx_const* %val0 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp = icmp sgt i32 %bf.clear8, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = bitcast %struct.rtx_const* %val0 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %10 = bitcast %struct.rtx_const* %val1 to i32*
  %bf.load11 = load i32, i32* %10, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear10, %bf.clear12
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %un = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %val0, i32 0, i32 1
  %addr = bitcast %union.anon.5* %un to %struct.addr_const*
  %base = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %un15 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %val1, i32 0, i32 1
  %addr16 = bitcast %union.anon.5* %un15 to %struct.addr_const*
  %base17 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr16, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %base17, align 8
  %cmp18 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14
  %un19 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %val0, i32 0, i32 1
  %addr20 = bitcast %union.anon.5* %un19 to %struct.addr_const*
  %offset = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr20, i32 0, i32 1
  %13 = load i64, i64* %offset, align 8
  %un21 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %val1, i32 0, i32 1
  %addr22 = bitcast %union.anon.5* %un21 to %struct.addr_const*
  %offset23 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr22, i32 0, i32 1
  %14 = load i64, i64* %offset23, align 8
  %sub = sub nsw i64 %13, %14
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.14, %land.lhs.true, %entry
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define internal void @decode_rtx_const(i32 %mode, %struct.rtx_def* %x, %struct.rtx_const* %value) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %value.addr = alloca %struct.rtx_const*, align 8
  %units = alloca i32, align 4
  %i = alloca i32, align 4
  %elt = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_const* %value, %struct.rtx_const** %value.addr, align 8
  %0 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %1 = bitcast %struct.rtx_const* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 136, i32 8, i1 false)
  %2 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %3 = bitcast %struct.rtx_const* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, 2
  store i32 %bf.set, i32* %3, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %6 = bitcast %struct.rtx_const* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.value = and i32 %4, 65535
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear2 = and i32 %bf.load1, 65535
  %bf.set3 = or i32 %bf.clear2, %bf.shl
  store i32 %bf.set3, i32* %6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  switch i32 %bf.clear5, label %sw.default [
    i32 55, label %sw.bb
    i32 56, label %sw.bb.28
    i32 54, label %sw.bb.79
    i32 68, label %sw.bb.84
    i32 67, label %sw.bb.84
    i32 59, label %sw.bb.84
    i32 58, label %sw.bb.87
  ]

sw.bb:                                            ; preds = %entry
  %9 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %10 = bitcast %struct.rtx_const* %9 to i32*
  %bf.load6 = load i32, i32* %10, align 8
  %bf.clear7 = and i32 %bf.load6, -65536
  %bf.set8 = or i32 %bf.clear7, 1
  store i32 %bf.set8, i32* %10, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load9 = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load9, 16
  %bf.clear10 = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load11 = load i32, i32* %14, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 16
  %bf.clear13 = and i32 %bf.lshr12, 255
  %15 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %16 = bitcast %struct.rtx_const* %15 to i32*
  %bf.load14 = load i32, i32* %16, align 8
  %bf.value15 = and i32 %bf.clear13, 65535
  %bf.shl16 = shl i32 %bf.value15, 16
  %bf.clear17 = and i32 %bf.load14, 65535
  %bf.set18 = or i32 %bf.clear17, %bf.shl16
  store i32 %bf.set18, i32* %16, align 8
  %17 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %17, i32 0, i32 1
  %du = bitcast %union.anon.5* %un to %union.real_extract*
  %18 = bitcast %union.real_extract* %du to i8*
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %20 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 24, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtwint21 = bitcast %union.rtunion_def* %arrayidx20 to i64*
  %22 = load i64, i64* %rtwint21, align 8
  %23 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un22 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %23, i32 0, i32 1
  %di = bitcast %union.anon.5* %un22 to %struct.anon.6*
  %low = getelementptr inbounds %struct.anon.6, %struct.anon.6* %di, i32 0, i32 1
  store i64 %22, i64* %low, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 2
  %rtwint25 = bitcast %union.rtunion_def* %arrayidx24 to i64*
  %25 = load i64, i64* %rtwint25, align 8
  %26 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un26 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %26, i32 0, i32 1
  %di27 = bitcast %union.anon.5* %un26 to %struct.anon.6*
  %high = getelementptr inbounds %struct.anon.6, %struct.anon.6* %di27, i32 0, i32 0
  store i64 %25, i64* %high, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 0
  %29 = load i32, i32* %num_elem, align 4
  store i32 %29, i32* %units, align 4
  %30 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %31 = bitcast %struct.rtx_const* %30 to i32*
  %bf.load31 = load i32, i32* %31, align 8
  %bf.clear32 = and i32 %bf.load31, -65536
  %bf.set33 = or i32 %bf.clear32, 3
  store i32 %bf.set33, i32* %31, align 8
  %32 = load i32, i32* %mode.addr, align 4
  %33 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %34 = bitcast %struct.rtx_const* %33 to i32*
  %bf.load34 = load i32, i32* %34, align 8
  %bf.value35 = and i32 %32, 65535
  %bf.shl36 = shl i32 %bf.value35, 16
  %bf.clear37 = and i32 %bf.load34, 65535
  %bf.set38 = or i32 %bf.clear37, %bf.shl36
  store i32 %bf.set38, i32* %34, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.28
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %units, align 4
  %cmp39 = icmp slt i32 %35, %36
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtvec42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**
  %39 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec42, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %39, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %40 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx43, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %elt, align 8
  %41 = load i32, i32* %mode.addr, align 4
  %idxprom44 = sext i32 %41 to i64
  %arrayidx45 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom44
  %42 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %42, 7
  br i1 %cmp46, label %if.then.47, label %if.else.57

if.then.47:                                       ; preds = %for.body
  %43 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtwint50 = bitcast %union.rtunion_def* %arrayidx49 to i64*
  %44 = load i64, i64* %rtwint50, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un52 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %46, i32 0, i32 1
  %veclo = bitcast %union.anon.5* %un52 to [16 x i64]*
  %arrayidx53 = getelementptr inbounds [16 x i64], [16 x i64]* %veclo, i32 0, i64 %idxprom51
  store i64 %44, i64* %arrayidx53, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un55 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %48, i32 0, i32 1
  %vechi = bitcast %union.anon.5* %un55 to [16 x i64]*
  %arrayidx56 = getelementptr inbounds [16 x i64], [16 x i64]* %vechi, i32 0, i64 %idxprom54
  store i64 0, i64* %arrayidx56, align 8
  br label %if.end.78

if.else.57:                                       ; preds = %for.body
  %49 = load i32, i32* %mode.addr, align 4
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp eq i32 %50, 8
  br i1 %cmp60, label %if.then.61, label %if.else.76

if.then.61:                                       ; preds = %if.else.57
  %51 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtwint64 = bitcast %union.rtunion_def* %arrayidx63 to i64*
  %52 = load i64, i64* %rtwint64, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %53 to i64
  %54 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un66 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %54, i32 0, i32 1
  %veclo67 = bitcast %union.anon.5* %un66 to [16 x i64]*
  %arrayidx68 = getelementptr inbounds [16 x i64], [16 x i64]* %veclo67, i32 0, i64 %idxprom65
  store i64 %52, i64* %arrayidx68, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 2
  %rtwint71 = bitcast %union.rtunion_def* %arrayidx70 to i64*
  %56 = load i64, i64* %rtwint71, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un73 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %58, i32 0, i32 1
  %vechi74 = bitcast %union.anon.5* %un73 to [16 x i64]*
  %arrayidx75 = getelementptr inbounds [16 x i64], [16 x i64]* %vechi74, i32 0, i64 %idxprom72
  store i64 %56, i64* %arrayidx75, align 8
  br label %if.end.77

if.else.76:                                       ; preds = %if.else.57
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 3595, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.decode_rtx_const, i32 0, i32 0)) #8
  unreachable

if.end.77:                                        ; preds = %if.then.61
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.79:                                         ; preds = %entry
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtwint82 = bitcast %union.rtunion_def* %arrayidx81 to i64*
  %61 = load i64, i64* %rtwint82, align 8
  %62 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un83 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %62, i32 0, i32 1
  %addr = bitcast %union.anon.5* %un83 to %struct.addr_const*
  %offset = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr, i32 0, i32 1
  store i64 %61, i64* %offset, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %entry, %entry, %entry
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %64 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un85 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %64, i32 0, i32 1
  %addr86 = bitcast %union.anon.5* %un85 to %struct.addr_const*
  %base = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr86, i32 0, i32 0
  store %struct.rtx_def* %63, %struct.rtx_def** %base, align 8
  br label %sw.epilog

sw.bb.87:                                         ; preds = %entry
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %x.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load90 = load i32, i32* %68, align 8
  %bf.clear91 = and i32 %bf.load90, 65535
  %cmp92 = icmp eq i32 %bf.clear91, 75
  br i1 %cmp92, label %land.lhs.true, label %if.else.115

land.lhs.true:                                    ; preds = %sw.bb.87
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 1
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load96 = load i32, i32* %71, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 54
  br i1 %cmp98, label %if.then.99, label %if.else.115

if.then.99:                                       ; preds = %land.lhs.true
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 0
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  %74 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un103 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %74, i32 0, i32 1
  %addr104 = bitcast %union.anon.5* %un103 to %struct.addr_const*
  %base105 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr104, i32 0, i32 0
  store %struct.rtx_def* %73, %struct.rtx_def** %base105, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 1
  %rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx108, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtwint111 = bitcast %union.rtunion_def* %arrayidx110 to i64*
  %77 = load i64, i64* %rtwint111, align 8
  %78 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un112 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %78, i32 0, i32 1
  %addr113 = bitcast %union.anon.5* %un112 to %struct.addr_const*
  %offset114 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr113, i32 0, i32 1
  store i64 %77, i64* %offset114, align 8
  br label %if.end.150

if.else.115:                                      ; preds = %land.lhs.true, %sw.bb.87
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load116 = load i32, i32* %80, align 8
  %bf.clear117 = and i32 %bf.load116, 65535
  %cmp118 = icmp eq i32 %bf.clear117, 76
  br i1 %cmp118, label %land.lhs.true.119, label %if.else.142

land.lhs.true.119:                                ; preds = %if.else.115
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 1
  %rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx122, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load123 = load i32, i32* %83, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 54
  br i1 %cmp125, label %if.then.126, label %if.else.142

if.then.126:                                      ; preds = %land.lhs.true.119
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  %86 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un130 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %86, i32 0, i32 1
  %addr131 = bitcast %union.anon.5* %un130 to %struct.addr_const*
  %base132 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr131, i32 0, i32 0
  store %struct.rtx_def* %85, %struct.rtx_def** %base132, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 1
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtwint138 = bitcast %union.rtunion_def* %arrayidx137 to i64*
  %89 = load i64, i64* %rtwint138, align 8
  %sub = sub nsw i64 0, %89
  %90 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un139 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %90, i32 0, i32 1
  %addr140 = bitcast %union.anon.5* %un139 to %struct.addr_const*
  %offset141 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr140, i32 0, i32 1
  store i64 %sub, i64* %offset141, align 8
  br label %if.end.149

if.else.142:                                      ; preds = %land.lhs.true.119, %if.else.115
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %92 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un143 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %92, i32 0, i32 1
  %addr144 = bitcast %union.anon.5* %un143 to %struct.addr_const*
  %base145 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr144, i32 0, i32 0
  store %struct.rtx_def* %91, %struct.rtx_def** %base145, align 8
  %93 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un146 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %93, i32 0, i32 1
  %addr147 = bitcast %union.anon.5* %un146 to %struct.addr_const*
  %offset148 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr147, i32 0, i32 1
  store i64 0, i64* %offset148, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.142, %if.then.126
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.99
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %94 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %95 = bitcast %struct.rtx_const* %94 to i32*
  %bf.load151 = load i32, i32* %95, align 8
  %bf.clear152 = and i32 %bf.load151, -65536
  store i32 %bf.clear152, i32* %95, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.150, %sw.bb.84, %sw.bb.79, %for.end, %if.end
  %96 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %97 = bitcast %struct.rtx_const* %96 to i32*
  %bf.load153 = load i32, i32* %97, align 8
  %bf.clear154 = and i32 %bf.load153, 65535
  %cmp155 = icmp eq i32 %bf.clear154, 2
  br i1 %cmp155, label %land.lhs.true.156, label %if.end.199

land.lhs.true.156:                                ; preds = %sw.epilog
  %98 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un157 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %98, i32 0, i32 1
  %addr158 = bitcast %union.anon.5* %un157 to %struct.addr_const*
  %base159 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr158, i32 0, i32 0
  %99 = load %struct.rtx_def*, %struct.rtx_def** %base159, align 8
  %cmp160 = icmp ne %struct.rtx_def* %99, null
  br i1 %cmp160, label %land.lhs.true.161, label %if.end.199

land.lhs.true.161:                                ; preds = %land.lhs.true.156
  %100 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un162 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %100, i32 0, i32 1
  %addr163 = bitcast %union.anon.5* %un162 to %struct.addr_const*
  %base164 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr163, i32 0, i32 0
  %101 = load %struct.rtx_def*, %struct.rtx_def** %base164, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load165 = load i32, i32* %102, align 8
  %bf.clear166 = and i32 %bf.load165, 65535
  %cmp167 = icmp eq i32 %bf.clear166, 42
  br i1 %cmp167, label %if.then.168, label %if.end.199

if.then.168:                                      ; preds = %land.lhs.true.161
  %103 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un169 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %103, i32 0, i32 1
  %addr170 = bitcast %union.anon.5* %un169 to %struct.addr_const*
  %base171 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr170, i32 0, i32 0
  %104 = load %struct.rtx_def*, %struct.rtx_def** %base171, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtvec174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtvec_def**
  %105 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec174, align 8
  %num_elem175 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %105, i32 0, i32 0
  %106 = load i32, i32* %num_elem175, align 4
  %cmp176 = icmp eq i32 %106, 1
  br i1 %cmp176, label %if.then.177, label %if.end.198

if.then.177:                                      ; preds = %if.then.168
  %107 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un178 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %107, i32 0, i32 1
  %addr179 = bitcast %union.anon.5* %un178 to %struct.addr_const*
  %base180 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr179, i32 0, i32 0
  %108 = load %struct.rtx_def*, %struct.rtx_def** %base180, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx182 to i32*
  %109 = load i32, i32* %rtint, align 4
  %add = add nsw i32 4, %109
  %110 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %111 = bitcast %struct.rtx_const* %110 to i32*
  %bf.load183 = load i32, i32* %111, align 8
  %bf.value184 = and i32 %add, 65535
  %bf.clear185 = and i32 %bf.load183, -65536
  %bf.set186 = or i32 %bf.clear185, %bf.value184
  store i32 %bf.set186, i32* %111, align 8
  %112 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un187 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %112, i32 0, i32 1
  %addr188 = bitcast %union.anon.5* %un187 to %struct.addr_const*
  %base189 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr188, i32 0, i32 0
  %113 = load %struct.rtx_def*, %struct.rtx_def** %base189, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 0
  %rtvec192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtvec_def**
  %114 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec192, align 8
  %elem193 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %114, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem193, i32 0, i64 0
  %115 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx194, align 8
  %116 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un195 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %116, i32 0, i32 1
  %addr196 = bitcast %union.anon.5* %un195 to %struct.addr_const*
  %base197 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr196, i32 0, i32 0
  store %struct.rtx_def* %115, %struct.rtx_def** %base197, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.177, %if.then.168
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %land.lhs.true.161, %land.lhs.true.156, %sw.epilog
  %117 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %118 = bitcast %struct.rtx_const* %117 to i32*
  %bf.load200 = load i32, i32* %118, align 8
  %bf.clear201 = and i32 %bf.load200, 65535
  %cmp202 = icmp sgt i32 %bf.clear201, 1
  br i1 %cmp202, label %land.lhs.true.203, label %if.end.235

land.lhs.true.203:                                ; preds = %if.end.199
  %119 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un204 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %119, i32 0, i32 1
  %addr205 = bitcast %union.anon.5* %un204 to %struct.addr_const*
  %base206 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr205, i32 0, i32 0
  %120 = load %struct.rtx_def*, %struct.rtx_def** %base206, align 8
  %cmp207 = icmp ne %struct.rtx_def* %120, null
  br i1 %cmp207, label %if.then.208, label %if.end.235

if.then.208:                                      ; preds = %land.lhs.true.203
  %121 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un209 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %121, i32 0, i32 1
  %addr210 = bitcast %union.anon.5* %un209 to %struct.addr_const*
  %base211 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr210, i32 0, i32 0
  %122 = load %struct.rtx_def*, %struct.rtx_def** %base211, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load212 = load i32, i32* %123, align 8
  %bf.clear213 = and i32 %bf.load212, 65535
  switch i32 %bf.clear213, label %sw.default.233 [
    i32 68, label %sw.bb.214
    i32 67, label %sw.bb.223
  ]

sw.bb.214:                                        ; preds = %if.then.208
  %124 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un215 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %124, i32 0, i32 1
  %addr216 = bitcast %union.anon.5* %un215 to %struct.addr_const*
  %base217 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr216, i32 0, i32 0
  %125 = load %struct.rtx_def*, %struct.rtx_def** %base217, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx219 to i8**
  %126 = load i8*, i8** %rtstr, align 8
  %127 = bitcast i8* %126 to %struct.rtx_def*
  %128 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un220 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %128, i32 0, i32 1
  %addr221 = bitcast %union.anon.5* %un220 to %struct.addr_const*
  %base222 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr221, i32 0, i32 0
  store %struct.rtx_def* %127, %struct.rtx_def** %base222, align 8
  br label %sw.epilog.234

sw.bb.223:                                        ; preds = %if.then.208
  %129 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un224 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %129, i32 0, i32 1
  %addr225 = bitcast %union.anon.5* %un224 to %struct.addr_const*
  %base226 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr225, i32 0, i32 0
  %130 = load %struct.rtx_def*, %struct.rtx_def** %base226, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 0
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %132 = load %struct.rtx_const*, %struct.rtx_const** %value.addr, align 8
  %un230 = getelementptr inbounds %struct.rtx_const, %struct.rtx_const* %132, i32 0, i32 1
  %addr231 = bitcast %union.anon.5* %un230 to %struct.addr_const*
  %base232 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %addr231, i32 0, i32 0
  store %struct.rtx_def* %131, %struct.rtx_def** %base232, align 8
  br label %sw.default.233

sw.default.233:                                   ; preds = %if.then.208, %sw.bb.223
  br label %sw.epilog.234

sw.epilog.234:                                    ; preds = %sw.default.233, %sw.bb.214
  br label %if.end.235

if.end.235:                                       ; preds = %sw.epilog.234, %land.lhs.true.203, %if.end.199
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @mem_for_const_double(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %desc = alloca %struct.constant_descriptor*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %2 = load i32, i32* %mode, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @const_hash_rtx(i32 %2, %struct.rtx_def* %3)
  %idxprom = sext i32 %call to i64
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 4
  %5 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_const_rtx_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %5, i32 0, i32 0
  %6 = load %struct.constant_descriptor**, %struct.constant_descriptor*** %x_const_rtx_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.constant_descriptor*, %struct.constant_descriptor** %6, i64 %idxprom
  %7 = load %struct.constant_descriptor*, %struct.constant_descriptor** %arrayidx, align 8
  store %struct.constant_descriptor* %7, %struct.constant_descriptor** %desc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %tobool = icmp ne %struct.constant_descriptor* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %mode, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %call1 = call i32 @compare_constant_rtx(i32 %9, %struct.rtx_def* %10, %struct.constant_descriptor* %11)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %12, i32 0, i32 2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %next = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %14, i32 0, i32 0
  %15 = load %struct.constant_descriptor*, %struct.constant_descriptor** %next, align 8
  store %struct.constant_descriptor* %15, %struct.constant_descriptor** %desc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @const_hash_rtx(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %hi = alloca i32, align 4
  %i = alloca i64, align 8
  %value = alloca %struct.rtx_const, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @decode_rtx_const(i32 %0, %struct.rtx_def* %1, %struct.rtx_const* %value)
  store i32 0, i32* %hi, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %2, 34
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = bitcast %struct.rtx_const* %value to i32*
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %3
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %hi, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %hi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %hi, align 4
  %and = and i32 %8, 1073741823
  store i32 %and, i32* %hi, align 4
  %9 = load i32, i32* %hi, align 4
  %rem = srem i32 %9, 61
  store i32 %rem, i32* %hi, align 4
  %10 = load i32, i32* %hi, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_constant_rtx(i32 %mode, %struct.rtx_def* %x, %struct.constant_descriptor* %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %desc.addr = alloca %struct.constant_descriptor*, align 8
  %p = alloca i32*, align 8
  %strp = alloca i32*, align 8
  %len = alloca i32, align 4
  %value = alloca %struct.rtx_const, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.constant_descriptor* %desc, %struct.constant_descriptor** %desc.addr, align 8
  %0 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc.addr, align 8
  %u = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %0, i32 0, i32 3
  %contents = bitcast %union.anon.4* %u to [1 x i8]*
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %contents, i32 0, i32 0
  %1 = bitcast i8* %arraydecay to i32*
  store i32* %1, i32** %p, align 8
  %2 = load i32, i32* %mode.addr, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @decode_rtx_const(i32 %2, %struct.rtx_def* %3, %struct.rtx_const* %value)
  %4 = bitcast %struct.rtx_const* %value to i32*
  store i32* %4, i32** %strp, align 8
  store i32 34, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, i32* %len, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %len, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %strp, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr1, i32** %strp, align 8
  %9 = load i32, i32* %8, align 4
  %cmp2 = icmp ne i32 %7, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @force_const_mem(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %hash = alloca i32, align 4
  %desc = alloca %struct.constant_descriptor*, align 8
  %label = alloca [256 x i8], align 16
  %def = alloca %struct.rtx_def*, align 8
  %pool = alloca %struct.pool_constant*, align 8
  %align = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @const_hash_rtx(i32 %0, %struct.rtx_def* %1)
  store i32 %call, i32* %hash, align 4
  %2 = load i32, i32* %hash, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 4
  %4 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_const_rtx_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %4, i32 0, i32 0
  %5 = load %struct.constant_descriptor**, %struct.constant_descriptor*** %x_const_rtx_hash_table, align 8
  %arrayidx = getelementptr inbounds %struct.constant_descriptor*, %struct.constant_descriptor** %5, i64 %idxprom
  %6 = load %struct.constant_descriptor*, %struct.constant_descriptor** %arrayidx, align 8
  store %struct.constant_descriptor* %6, %struct.constant_descriptor** %desc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %tobool = icmp ne %struct.constant_descriptor* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %mode.addr, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %call1 = call i32 @compare_constant_rtx(i32 %8, %struct.rtx_def* %9, %struct.constant_descriptor* %10)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %11, i32 0, i32 2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %next = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %13, i32 0, i32 0
  %14 = load %struct.constant_descriptor*, %struct.constant_descriptor** %next, align 8
  store %struct.constant_descriptor* %14, %struct.constant_descriptor** %desc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %mode.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call3 = call %struct.constant_descriptor* @record_constant_rtx(i32 %15, %struct.rtx_def* %16)
  store %struct.constant_descriptor* %call3, %struct.constant_descriptor** %desc, align 8
  %17 = load i32, i32* %hash, align 4
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm5 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 4
  %19 = load %struct.varasm_status*, %struct.varasm_status** %varasm5, align 8
  %x_const_rtx_hash_table6 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %19, i32 0, i32 0
  %20 = load %struct.constant_descriptor**, %struct.constant_descriptor*** %x_const_rtx_hash_table6, align 8
  %arrayidx7 = getelementptr inbounds %struct.constant_descriptor*, %struct.constant_descriptor** %20, i64 %idxprom4
  %21 = load %struct.constant_descriptor*, %struct.constant_descriptor** %arrayidx7, align 8
  %22 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %next8 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %22, i32 0, i32 0
  store %struct.constant_descriptor* %21, %struct.constant_descriptor** %next8, align 8
  %23 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %24 = load i32, i32* %hash, align 4
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm10 = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 4
  %26 = load %struct.varasm_status*, %struct.varasm_status** %varasm10, align 8
  %x_const_rtx_hash_table11 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %26, i32 0, i32 0
  %27 = load %struct.constant_descriptor**, %struct.constant_descriptor*** %x_const_rtx_hash_table11, align 8
  %arrayidx12 = getelementptr inbounds %struct.constant_descriptor*, %struct.constant_descriptor** %27, i64 %idxprom9
  store %struct.constant_descriptor* %23, %struct.constant_descriptor** %arrayidx12, align 8
  %28 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %29 = load i32, i32* @word_mode, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i32, i32* %mode.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ]
  %call13 = call i32 @get_mode_alignment(i32 %cond)
  store i32 %call13, i32* %align, align 4
  %31 = load i32, i32* %mode.addr, align 4
  %call14 = call %union.tree_node* @type_for_mode(i32 %31, i32 0)
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call15 = call %union.tree_node* @make_tree(%union.tree_node* %call14, %struct.rtx_def* %32)
  %33 = load i32, i32* %align, align 4
  %call16 = call i32 @ix86_constant_alignment(%union.tree_node* %call15, i32 %33)
  store i32 %call16, i32* %align, align 4
  %34 = load i32, i32* %align, align 4
  %div = udiv i32 %34, 8
  %sub = sub i32 %div, 1
  %conv = zext i32 %sub to i64
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm17 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 4
  %36 = load %struct.varasm_status*, %struct.varasm_status** %varasm17, align 8
  %x_pool_offset = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %36, i32 0, i32 4
  %37 = load i64, i64* %x_pool_offset, align 8
  %add = add nsw i64 %37, %conv
  store i64 %add, i64* %x_pool_offset, align 8
  %38 = load i32, i32* %align, align 4
  %div18 = udiv i32 %38, 8
  %sub19 = sub i32 %div18, 1
  %neg = xor i32 %sub19, -1
  %conv20 = zext i32 %neg to i64
  %39 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm21 = getelementptr inbounds %struct.function, %struct.function* %39, i32 0, i32 4
  %40 = load %struct.varasm_status*, %struct.varasm_status** %varasm21, align 8
  %x_pool_offset22 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %40, i32 0, i32 4
  %41 = load i64, i64* %x_pool_offset22, align 8
  %and = and i64 %41, %conv20
  store i64 %and, i64* %x_pool_offset22, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load = load i32, i32* %43, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp23 = icmp eq i32 %bf.clear, 67
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %cond.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load27 = load i32, i32* %46, align 8
  %bf.clear28 = and i32 %bf.load27, -268435457
  %bf.set = or i32 %bf.clear28, 268435456
  store i32 %bf.set, i32* %46, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %cond.end
  %call30 = call i8* @ggc_alloc(i64 64)
  %47 = bitcast i8* %call30 to %struct.pool_constant*
  store %struct.pool_constant* %47, %struct.pool_constant** %pool, align 8
  %48 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %49 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %desc31 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %49, i32 0, i32 0
  store %struct.constant_descriptor* %48, %struct.constant_descriptor** %desc31, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %51 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %51, i32 0, i32 3
  store %struct.rtx_def* %50, %struct.rtx_def** %constant, align 8
  %52 = load i32, i32* %mode.addr, align 4
  %53 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mode32 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %53, i32 0, i32 4
  store i32 %52, i32* %mode32, align 4
  %54 = load i32, i32* @const_labelno, align 4
  %55 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %labelno = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %55, i32 0, i32 5
  store i32 %54, i32* %labelno, align 4
  %56 = load i32, i32* %align, align 4
  %57 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %align33 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %57, i32 0, i32 6
  store i32 %56, i32* %align33, align 4
  %58 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm34 = getelementptr inbounds %struct.function, %struct.function* %58, i32 0, i32 4
  %59 = load %struct.varasm_status*, %struct.varasm_status** %varasm34, align 8
  %x_pool_offset35 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %59, i32 0, i32 4
  %60 = load i64, i64* %x_pool_offset35, align 8
  %61 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %offset = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %61, i32 0, i32 7
  store i64 %60, i64* %offset, align 8
  %62 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mark = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %62, i32 0, i32 8
  store i32 1, i32* %mark, align 4
  %63 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %next36 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %63, i32 0, i32 1
  store %struct.pool_constant* null, %struct.pool_constant** %next36, align 8
  %64 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm37 = getelementptr inbounds %struct.function, %struct.function* %64, i32 0, i32 4
  %65 = load %struct.varasm_status*, %struct.varasm_status** %varasm37, align 8
  %x_last_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %65, i32 0, i32 3
  %66 = load %struct.pool_constant*, %struct.pool_constant** %x_last_pool, align 8
  %cmp38 = icmp eq %struct.pool_constant* %66, null
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.end.29
  %67 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %68 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm41 = getelementptr inbounds %struct.function, %struct.function* %68, i32 0, i32 4
  %69 = load %struct.varasm_status*, %struct.varasm_status** %varasm41, align 8
  %x_first_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %69, i32 0, i32 2
  store %struct.pool_constant* %67, %struct.pool_constant** %x_first_pool, align 8
  br label %if.end.45

if.else:                                          ; preds = %if.end.29
  %70 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %71 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm42 = getelementptr inbounds %struct.function, %struct.function* %71, i32 0, i32 4
  %72 = load %struct.varasm_status*, %struct.varasm_status** %varasm42, align 8
  %x_last_pool43 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %72, i32 0, i32 3
  %73 = load %struct.pool_constant*, %struct.pool_constant** %x_last_pool43, align 8
  %next44 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %73, i32 0, i32 1
  store %struct.pool_constant* %70, %struct.pool_constant** %next44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.40
  %74 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %75 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm46 = getelementptr inbounds %struct.function, %struct.function* %75, i32 0, i32 4
  %76 = load %struct.varasm_status*, %struct.varasm_status** %varasm46, align 8
  %x_last_pool47 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %76, i32 0, i32 3
  store %struct.pool_constant* %74, %struct.pool_constant** %x_last_pool47, align 8
  %77 = load i32, i32* %mode.addr, align 4
  %idxprom48 = sext i32 %77 to i64
  %arrayidx49 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom48
  %78 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %78 to i64
  %79 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm51 = getelementptr inbounds %struct.function, %struct.function* %79, i32 0, i32 4
  %80 = load %struct.varasm_status*, %struct.varasm_status** %varasm51, align 8
  %x_pool_offset52 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %80, i32 0, i32 4
  %81 = load i64, i64* %x_pool_offset52, align 8
  %add53 = add nsw i64 %81, %conv50
  store i64 %add53, i64* %x_pool_offset52, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.45
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %label, i32 0, i32 0
  %82 = load i32, i32* @const_labelno, align 4
  %call54 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i32 %82) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %83 = load i32, i32* @const_labelno, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* @const_labelno, align 4
  %84 = load i32, i32* %mode.addr, align 4
  %85 = load i32, i32* @target_flags, align 4
  %and55 = and i32 %85, 33554432
  %tobool56 = icmp ne i32 %and55, 0
  %cond57 = select i1 %tobool56, i32 5, i32 4
  %arraydecay58 = getelementptr inbounds [256 x i8], [256 x i8]* %label, i32 0, i32 0
  %call59 = call i8* @ggc_alloc_string(i8* %arraydecay58, i32 -1)
  %call60 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond57, i8* %call59)
  %call61 = call %struct.rtx_def* @gen_rtx_MEM(i32 %84, %struct.rtx_def* %call60)
  store %struct.rtx_def* %call61, %struct.rtx_def** %def, align 8
  %86 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %desc62 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %86, i32 0, i32 0
  %87 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc62, align 8
  %rtl63 = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %87, i32 0, i32 2
  store %struct.rtx_def* %call61, %struct.rtx_def** %rtl63, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %89 = load i64, i64* @const_alias_set, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %88, i64 %89)
  %90 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %91 = load i32, i32* %mode.addr, align 4
  %call64 = call %union.tree_node* @type_for_mode(i32 %91, i32 0)
  call void @set_mem_attributes(%struct.rtx_def* %90, %union.tree_node* %call64, i32 1)
  %92 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load65 = load i32, i32* %93, align 8
  %bf.clear66 = and i32 %bf.load65, -67108865
  %bf.set67 = or i32 %bf.clear66, 67108864
  store i32 %bf.set67, i32* %93, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx72 to i8**
  %96 = load i8*, i8** %rtstr, align 8
  %97 = ptrtoint i8* %96 to i64
  %and73 = and i64 %97, 1073741823
  %rem = urem i64 %and73, 61
  %conv74 = trunc i64 %rem to i32
  store i32 %conv74, i32* %hash, align 4
  %98 = load i32, i32* %hash, align 4
  %idxprom75 = sext i32 %98 to i64
  %99 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm76 = getelementptr inbounds %struct.function, %struct.function* %99, i32 0, i32 4
  %100 = load %struct.varasm_status*, %struct.varasm_status** %varasm76, align 8
  %x_const_rtx_sym_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %100, i32 0, i32 1
  %101 = load %struct.pool_constant**, %struct.pool_constant*** %x_const_rtx_sym_hash_table, align 8
  %arrayidx77 = getelementptr inbounds %struct.pool_constant*, %struct.pool_constant** %101, i64 %idxprom75
  %102 = load %struct.pool_constant*, %struct.pool_constant** %arrayidx77, align 8
  %103 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %next_sym = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %103, i32 0, i32 2
  store %struct.pool_constant* %102, %struct.pool_constant** %next_sym, align 8
  %104 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %105 = load i32, i32* %hash, align 4
  %idxprom78 = sext i32 %105 to i64
  %106 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm79 = getelementptr inbounds %struct.function, %struct.function* %106, i32 0, i32 4
  %107 = load %struct.varasm_status*, %struct.varasm_status** %varasm79, align 8
  %x_const_rtx_sym_hash_table80 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %107, i32 0, i32 1
  %108 = load %struct.pool_constant**, %struct.pool_constant*** %x_const_rtx_sym_hash_table80, align 8
  %arrayidx81 = getelementptr inbounds %struct.pool_constant*, %struct.pool_constant** %108, i64 %idxprom78
  store %struct.pool_constant* %104, %struct.pool_constant** %arrayidx81, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load85 = load i32, i32* %111, align 8
  %bf.clear86 = and i32 %bf.load85, -67108865
  %bf.set87 = or i32 %bf.clear86, 67108864
  store i32 %bf.set87, i32* %111, align 8
  %112 = load %struct.function*, %struct.function** @cfun, align 8
  %uses_const_pool = getelementptr inbounds %struct.function, %struct.function* %112, i32 0, i32 56
  %113 = bitcast i24* %uses_const_pool to i32*
  %bf.load88 = load i32, i32* %113, align 8
  %bf.clear89 = and i32 %bf.load88, -1048577
  %bf.set90 = or i32 %bf.clear89, 1048576
  store i32 %bf.set90, i32* %113, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  store %struct.rtx_def* %114, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %115 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %115
}

; Function Attrs: nounwind uwtable
define internal %struct.constant_descriptor* @record_constant_rtx(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %ptr = alloca %struct.constant_descriptor*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %call = call noalias i8* @xcalloc(i64 1, i64 168)
  %0 = bitcast i8* %call to %struct.constant_descriptor*
  store %struct.constant_descriptor* %0, %struct.constant_descriptor** %ptr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.constant_descriptor*, %struct.constant_descriptor** %ptr, align 8
  %u = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %3, i32 0, i32 3
  %contents = bitcast %union.anon.4* %u to [1 x i8]*
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %contents, i32 0, i32 0
  %4 = bitcast i8* %arraydecay to %struct.rtx_const*
  call void @decode_rtx_const(i32 %1, %struct.rtx_def* %2, %struct.rtx_const* %4)
  %5 = load %struct.constant_descriptor*, %struct.constant_descriptor** %ptr, align 8
  ret %struct.constant_descriptor* %5
}

declare i32 @get_mode_alignment(i32) #1

declare %union.tree_node* @make_tree(%union.tree_node*, %struct.rtx_def*) #1

declare %union.tree_node* @type_for_mode(i32, i32) #1

declare i8* @ggc_alloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %addr) #0 {
entry:
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %0, %struct.rtx_def* %1)
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %call, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  ret %struct.rtx_def* %2
}

; Function Attrs: nounwind uwtable
define internal %struct.pool_constant* @find_pool_constant(%struct.function* %f, %struct.rtx_def* %addr) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  %addr.addr = alloca %struct.rtx_def*, align 8
  %pool = alloca %struct.pool_constant*, align 8
  %label = alloca i8*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %1 = load i8*, i8** %rtstr, align 8
  store i8* %1, i8** %label, align 8
  %2 = load i8*, i8** %label, align 8
  %3 = ptrtoint i8* %2 to i64
  %and = and i64 %3, 1073741823
  %rem = urem i64 %and, 61
  %4 = load %struct.function*, %struct.function** %f.addr, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 4
  %5 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_const_rtx_sym_hash_table = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %5, i32 0, i32 1
  %6 = load %struct.pool_constant**, %struct.pool_constant*** %x_const_rtx_sym_hash_table, align 8
  %arrayidx1 = getelementptr inbounds %struct.pool_constant*, %struct.pool_constant** %6, i64 %rem
  %7 = load %struct.pool_constant*, %struct.pool_constant** %arrayidx1, align 8
  store %struct.pool_constant* %7, %struct.pool_constant** %pool, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %tobool = icmp ne %struct.pool_constant* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %desc = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %9, i32 0, i32 0
  %10 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %10, i32 0, i32 2
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtstr6 = bitcast %union.rtunion_def* %arrayidx5 to i8**
  %13 = load i8*, i8** %rtstr6, align 8
  %14 = load i8*, i8** %label, align 8
  %cmp = icmp eq i8* %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  ret %struct.pool_constant* %15

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %next_sym = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %16, i32 0, i32 2
  %17 = load %struct.pool_constant*, %struct.pool_constant** %next_sym, align 8
  store %struct.pool_constant* %17, %struct.pool_constant** %pool, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 3875, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.find_pool_constant, i32 0, i32 0)) #8
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_pool_constant_mark(%struct.rtx_def* %addr, i8* %pmarked) #0 {
entry:
  %addr.addr = alloca %struct.rtx_def*, align 8
  %pmarked.addr = alloca i8*, align 8
  %pool = alloca %struct.pool_constant*, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  store i8* %pmarked, i8** %pmarked.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %0, %struct.rtx_def* %1)
  store %struct.pool_constant* %call, %struct.pool_constant** %pool, align 8
  %2 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mark = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %2, i32 0, i32 8
  %3 = load i32, i32* %mark, align 4
  %cmp = icmp ne i32 %3, 0
  %4 = load i8*, i8** %pmarked.addr, align 8
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %4, align 1
  %5 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %5, i32 0, i32 3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_pool_constant_for_function(%struct.function* %f, %struct.rtx_def* %addr) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.function*, %struct.function** %f.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %0, %struct.rtx_def* %1)
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %call, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  ret %struct.rtx_def* %2
}

; Function Attrs: nounwind uwtable
define i32 @get_pool_mode(%struct.rtx_def* %addr) #0 {
entry:
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %0, %struct.rtx_def* %1)
  %mode = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %call, i32 0, i32 4
  %2 = load i32, i32* %mode, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @get_pool_mode_for_function(%struct.function* %f, %struct.rtx_def* %addr) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.function*, %struct.function** %f.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %0, %struct.rtx_def* %1)
  %mode = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %call, i32 0, i32 4
  %2 = load i32, i32* %mode, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @get_pool_offset(%struct.rtx_def* %addr) #0 {
entry:
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %0, %struct.rtx_def* %1)
  %offset = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %call, i32 0, i32 7
  %2 = load i64, i64* %offset, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @get_pool_size() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 4
  %1 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_pool_offset = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %1, i32 0, i32 4
  %2 = load i64, i64* %x_pool_offset, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @mark_constant_pool() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %pool = alloca %struct.pool_constant*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 4
  %1 = load %struct.varasm_status*, %struct.varasm_status** %varasm, align 8
  %x_first_pool = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %1, i32 0, i32 2
  %2 = load %struct.pool_constant*, %struct.pool_constant** %x_first_pool, align 8
  %cmp = icmp eq %struct.pool_constant* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.htab*, %struct.htab** @const_str_htab, align 8
  %call = call i64 @htab_elements(%struct.htab* %3)
  %cmp1 = icmp eq i64 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end.37

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %varasm2 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 4
  %5 = load %struct.varasm_status*, %struct.varasm_status** %varasm2, align 8
  %x_first_pool3 = getelementptr inbounds %struct.varasm_status, %struct.varasm_status* %5, i32 0, i32 2
  %6 = load %struct.pool_constant*, %struct.pool_constant** %x_first_pool3, align 8
  store %struct.pool_constant* %6, %struct.pool_constant** %pool, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %tobool = icmp ne %struct.pool_constant* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mark = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %8, i32 0, i32 8
  store i32 0, i32* %mark, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %next = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %9, i32 0, i32 1
  %10 = load %struct.pool_constant*, %struct.pool_constant** %next, align 8
  store %struct.pool_constant* %10, %struct.pool_constant** %pool, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call4, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.13, %for.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool6 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool6, label %for.body.7, label %for.end.17

for.body.7:                                       ; preds = %for.cond.5
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp8 = icmp eq i32 %conv, 105
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.body.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @mark_constants(%struct.rtx_def* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %for.body.7
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.end.17:                                       ; preds = %for.cond.5
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  %epilogue_delay_list = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 55
  %20 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_delay_list, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %insn, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.33, %for.end.17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool19 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool19, label %for.body.20, label %for.end.37

for.body.20:                                      ; preds = %for.cond.18
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load21 = load i32, i32* %23, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %idxprom23 = sext i32 %bf.clear22 to i64
  %arrayidx24 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom23
  %24 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp eq i32 %conv25, 105
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %for.body.20
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  call void @mark_constants(%struct.rtx_def* %26)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %for.body.20
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %insn, align 8
  br label %for.cond.18

for.end.37:                                       ; preds = %if.then, %for.cond.18
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %value, %union.tree_node* %endtype) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %value.addr = alloca %union.tree_node*, align 8
  %endtype.addr = alloca %union.tree_node*, align 8
  %inner = alloca %union.tree_node*, align 8
  %valid0 = alloca %union.tree_node*, align 8
  %valid1 = alloca %union.tree_node*, align 8
  %valid0599 = alloca %union.tree_node*, align 8
  %valid1604 = alloca %union.tree_node*, align 8
  %op0 = alloca %union.tree_node*, align 8
  %op1 = alloca %union.tree_node*, align 8
  %inner685 = alloca %union.tree_node*, align 8
  %inner779 = alloca %union.tree_node*, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  store %union.tree_node* %endtype, %union.tree_node** %endtype.addr, align 8
  %0 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 9), align 8
  %1 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %call = call %union.tree_node* %0(%union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %value.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 46, label %sw.bb
    i32 25, label %sw.bb.28
    i32 28, label %sw.bb.28
    i32 26, label %sw.bb.28
    i32 29, label %sw.bb.28
    i32 27, label %sw.bb.28
    i32 121, label %sw.bb.29
    i32 124, label %sw.bb.29
    i32 117, label %sw.bb.42
    i32 116, label %sw.bb.42
    i32 114, label %sw.bb.47
    i32 115, label %sw.bb.47
    i32 59, label %sw.bb.517
    i32 60, label %sw.bb.565
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common2 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %cmp = icmp eq i32 %bf.clear5, 21
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type7, align 8
  %common8 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 20
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb
  %7 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common13 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load14 = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load14, 9
  %bf.clear15 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear15, 0
  br i1 %tobool, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %tobool17 = icmp ne %union.tree_node* %9, null
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16
  %10 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp18 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands19 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp18, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands19, i32 0, i64 1
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx20, align 8
  %list = bitcast %union.tree_node* %11 to %struct.tree_list*
  %value21 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %value21, align 8
  %13 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call22 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %12, %union.tree_node* %13)
  store %union.tree_node* %call22, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.16, %land.lhs.true, %lor.lhs.false
  %14 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common23 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load24 = load i32, i32* %static_flag, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 18
  %bf.clear26 = and i32 %bf.lshr25, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %15, %cond.true ], [ null, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %retval
  br label %return

sw.bb.28:                                         ; preds = %entry, %entry, %entry, %entry, %entry
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  store %union.tree_node* %16, %union.tree_node** %retval
  br label %return

sw.bb.29:                                         ; preds = %entry, %entry
  %17 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp30 = bitcast %union.tree_node* %17 to %struct.tree_exp*
  %operands31 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp30, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands31, i32 0, i64 0
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx32, align 8
  %call33 = call i32 @staticp(%union.tree_node* %18)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %sw.bb.29
  %19 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp36 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands37, i32 0, i64 0
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %sw.bb.29
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.35
  %cond41 = phi %union.tree_node* [ %20, %cond.true.35 ], [ null, %cond.false.39 ]
  store %union.tree_node* %cond41, %union.tree_node** %retval
  br label %return

sw.bb.42:                                         ; preds = %entry, %entry
  %21 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp43 = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands44 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp43, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands44, i32 0, i64 0
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx45, align 8
  %23 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call46 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %22, %union.tree_node* %23)
  store %union.tree_node* %call46, %union.tree_node** %retval
  br label %return

sw.bb.47:                                         ; preds = %entry, %entry
  %24 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common48 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %type49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type49, align 8
  %common50 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load52 = load i32, i32* %code51, align 8
  %bf.clear53 = and i32 %bf.load52, 255
  %cmp54 = icmp eq i32 %bf.clear53, 13
  br i1 %cmp54, label %land.lhs.true.63, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %sw.bb.47
  %26 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common56 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type57, align 8
  %common58 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 2
  %bf.load60 = load i32, i32* %code59, align 8
  %bf.clear61 = and i32 %bf.load60, 255
  %cmp62 = icmp eq i32 %bf.clear61, 15
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.90

land.lhs.true.63:                                 ; preds = %lor.lhs.false.55, %sw.bb.47
  %28 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp64 = bitcast %union.tree_node* %28 to %struct.tree_exp*
  %operands65 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp64, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands65, i32 0, i64 0
  %29 = load %union.tree_node*, %union.tree_node** %arrayidx66, align 8
  %common67 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type68, align 8
  %common69 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %code70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common69, i32 0, i32 2
  %bf.load71 = load i32, i32* %code70, align 8
  %bf.clear72 = and i32 %bf.load71, 255
  %cmp73 = icmp eq i32 %bf.clear72, 13
  br i1 %cmp73, label %if.then.85, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %land.lhs.true.63
  %31 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp75 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands76 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp75, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands76, i32 0, i64 0
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx77, align 8
  %common78 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %type79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 1
  %33 = load %union.tree_node*, %union.tree_node** %type79, align 8
  %common80 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %code81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %code81, align 8
  %bf.clear83 = and i32 %bf.load82, 255
  %cmp84 = icmp eq i32 %bf.clear83, 15
  br i1 %cmp84, label %if.then.85, label %if.end.90

if.then.85:                                       ; preds = %lor.lhs.false.74, %land.lhs.true.63
  %34 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp86 = bitcast %union.tree_node* %34 to %struct.tree_exp*
  %operands87 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp86, i32 0, i32 2
  %arrayidx88 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands87, i32 0, i64 0
  %35 = load %union.tree_node*, %union.tree_node** %arrayidx88, align 8
  %36 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call89 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %35, %union.tree_node* %36)
  store %union.tree_node* %call89, %union.tree_node** %retval
  br label %return

if.end.90:                                        ; preds = %lor.lhs.false.74, %lor.lhs.false.55
  %37 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common91 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %type92 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common91, i32 0, i32 1
  %38 = load %union.tree_node*, %union.tree_node** %type92, align 8
  %common93 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code94 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common93, i32 0, i32 2
  %bf.load95 = load i32, i32* %code94, align 8
  %bf.clear96 = and i32 %bf.load95, 255
  %cmp97 = icmp eq i32 %bf.clear96, 7
  br i1 %cmp97, label %land.lhs.true.116, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.end.90
  %39 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common99 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %type100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type100, align 8
  %common101 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code102 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common101, i32 0, i32 2
  %bf.load103 = load i32, i32* %code102, align 8
  %bf.clear104 = and i32 %bf.load103, 255
  %cmp105 = icmp eq i32 %bf.clear104, 8
  br i1 %cmp105, label %land.lhs.true.106, label %if.end.156

land.lhs.true.106:                                ; preds = %lor.lhs.false.98
  %41 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common107 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type108 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common107, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type108, align 8
  %common109 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %type110 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common109, i32 0, i32 1
  %43 = load %union.tree_node*, %union.tree_node** %type110, align 8
  %common111 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %code112 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common111, i32 0, i32 2
  %bf.load113 = load i32, i32* %code112, align 8
  %bf.clear114 = and i32 %bf.load113, 255
  %cmp115 = icmp eq i32 %bf.clear114, 7
  br i1 %cmp115, label %land.lhs.true.116, label %if.end.156

land.lhs.true.116:                                ; preds = %land.lhs.true.106, %if.end.90
  %44 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp117 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands118 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp117, i32 0, i32 2
  %arrayidx119 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands118, i32 0, i64 0
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx119, align 8
  %common120 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %type121 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common120, i32 0, i32 1
  %46 = load %union.tree_node*, %union.tree_node** %type121, align 8
  %common122 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %code123 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common122, i32 0, i32 2
  %bf.load124 = load i32, i32* %code123, align 8
  %bf.clear125 = and i32 %bf.load124, 255
  %cmp126 = icmp eq i32 %bf.clear125, 7
  br i1 %cmp126, label %if.then.151, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %land.lhs.true.116
  %47 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp128 = bitcast %union.tree_node* %47 to %struct.tree_exp*
  %operands129 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp128, i32 0, i32 2
  %arrayidx130 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands129, i32 0, i64 0
  %48 = load %union.tree_node*, %union.tree_node** %arrayidx130, align 8
  %common131 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %type132 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common131, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type132, align 8
  %common133 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %code134 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common133, i32 0, i32 2
  %bf.load135 = load i32, i32* %code134, align 8
  %bf.clear136 = and i32 %bf.load135, 255
  %cmp137 = icmp eq i32 %bf.clear136, 8
  br i1 %cmp137, label %land.lhs.true.138, label %if.end.156

land.lhs.true.138:                                ; preds = %lor.lhs.false.127
  %50 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp139 = bitcast %union.tree_node* %50 to %struct.tree_exp*
  %operands140 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp139, i32 0, i32 2
  %arrayidx141 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands140, i32 0, i64 0
  %51 = load %union.tree_node*, %union.tree_node** %arrayidx141, align 8
  %common142 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %type143 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common142, i32 0, i32 1
  %52 = load %union.tree_node*, %union.tree_node** %type143, align 8
  %common144 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %type145 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common144, i32 0, i32 1
  %53 = load %union.tree_node*, %union.tree_node** %type145, align 8
  %common146 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %code147 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common146, i32 0, i32 2
  %bf.load148 = load i32, i32* %code147, align 8
  %bf.clear149 = and i32 %bf.load148, 255
  %cmp150 = icmp eq i32 %bf.clear149, 7
  br i1 %cmp150, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %land.lhs.true.138, %land.lhs.true.116
  %54 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp152 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands153 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp152, i32 0, i32 2
  %arrayidx154 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands153, i32 0, i64 0
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx154, align 8
  %56 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call155 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %55, %union.tree_node* %56)
  store %union.tree_node* %call155, %union.tree_node** %retval
  br label %return

if.end.156:                                       ; preds = %land.lhs.true.138, %lor.lhs.false.127, %land.lhs.true.106, %lor.lhs.false.98
  %57 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common157 = bitcast %union.tree_node* %57 to %struct.tree_common*
  %type158 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 1
  %58 = load %union.tree_node*, %union.tree_node** %type158, align 8
  %common159 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %code160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common159, i32 0, i32 2
  %bf.load161 = load i32, i32* %code160, align 8
  %bf.clear162 = and i32 %bf.load161, 255
  %cmp163 = icmp eq i32 %bf.clear162, 6
  br i1 %cmp163, label %land.lhs.true.188, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.end.156
  %59 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common165 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %type166 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common165, i32 0, i32 1
  %60 = load %union.tree_node*, %union.tree_node** %type166, align 8
  %common167 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %code168 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common167, i32 0, i32 2
  %bf.load169 = load i32, i32* %code168, align 8
  %bf.clear170 = and i32 %bf.load169, 255
  %cmp171 = icmp eq i32 %bf.clear170, 10
  br i1 %cmp171, label %land.lhs.true.188, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %lor.lhs.false.164
  %61 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common173 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %type174 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common173, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %type174, align 8
  %common175 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %code176 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common175, i32 0, i32 2
  %bf.load177 = load i32, i32* %code176, align 8
  %bf.clear178 = and i32 %bf.load177, 255
  %cmp179 = icmp eq i32 %bf.clear178, 11
  br i1 %cmp179, label %land.lhs.true.188, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.172
  %63 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common181 = bitcast %union.tree_node* %63 to %struct.tree_common*
  %type182 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common181, i32 0, i32 1
  %64 = load %union.tree_node*, %union.tree_node** %type182, align 8
  %common183 = bitcast %union.tree_node* %64 to %struct.tree_common*
  %code184 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common183, i32 0, i32 2
  %bf.load185 = load i32, i32* %code184, align 8
  %bf.clear186 = and i32 %bf.load185, 255
  %cmp187 = icmp eq i32 %bf.clear186, 12
  br i1 %cmp187, label %land.lhs.true.188, label %if.end.253

land.lhs.true.188:                                ; preds = %lor.lhs.false.180, %lor.lhs.false.172, %lor.lhs.false.164, %if.end.156
  %65 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp189 = bitcast %union.tree_node* %65 to %struct.tree_exp*
  %operands190 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp189, i32 0, i32 2
  %arrayidx191 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands190, i32 0, i64 0
  %66 = load %union.tree_node*, %union.tree_node** %arrayidx191, align 8
  %common192 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %type193 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common192, i32 0, i32 1
  %67 = load %union.tree_node*, %union.tree_node** %type193, align 8
  %common194 = bitcast %union.tree_node* %67 to %struct.tree_common*
  %code195 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common194, i32 0, i32 2
  %bf.load196 = load i32, i32* %code195, align 8
  %bf.clear197 = and i32 %bf.load196, 255
  %cmp198 = icmp eq i32 %bf.clear197, 6
  br i1 %cmp198, label %land.lhs.true.232, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %land.lhs.true.188
  %68 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp200 = bitcast %union.tree_node* %68 to %struct.tree_exp*
  %operands201 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp200, i32 0, i32 2
  %arrayidx202 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands201, i32 0, i64 0
  %69 = load %union.tree_node*, %union.tree_node** %arrayidx202, align 8
  %common203 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %type204 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common203, i32 0, i32 1
  %70 = load %union.tree_node*, %union.tree_node** %type204, align 8
  %common205 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %code206 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common205, i32 0, i32 2
  %bf.load207 = load i32, i32* %code206, align 8
  %bf.clear208 = and i32 %bf.load207, 255
  %cmp209 = icmp eq i32 %bf.clear208, 10
  br i1 %cmp209, label %land.lhs.true.232, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %lor.lhs.false.199
  %71 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp211 = bitcast %union.tree_node* %71 to %struct.tree_exp*
  %operands212 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp211, i32 0, i32 2
  %arrayidx213 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands212, i32 0, i64 0
  %72 = load %union.tree_node*, %union.tree_node** %arrayidx213, align 8
  %common214 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %type215 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common214, i32 0, i32 1
  %73 = load %union.tree_node*, %union.tree_node** %type215, align 8
  %common216 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %code217 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common216, i32 0, i32 2
  %bf.load218 = load i32, i32* %code217, align 8
  %bf.clear219 = and i32 %bf.load218, 255
  %cmp220 = icmp eq i32 %bf.clear219, 11
  br i1 %cmp220, label %land.lhs.true.232, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %lor.lhs.false.210
  %74 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp222 = bitcast %union.tree_node* %74 to %struct.tree_exp*
  %operands223 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp222, i32 0, i32 2
  %arrayidx224 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands223, i32 0, i64 0
  %75 = load %union.tree_node*, %union.tree_node** %arrayidx224, align 8
  %common225 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %type226 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common225, i32 0, i32 1
  %76 = load %union.tree_node*, %union.tree_node** %type226, align 8
  %common227 = bitcast %union.tree_node* %76 to %struct.tree_common*
  %code228 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common227, i32 0, i32 2
  %bf.load229 = load i32, i32* %code228, align 8
  %bf.clear230 = and i32 %bf.load229, 255
  %cmp231 = icmp eq i32 %bf.clear230, 12
  br i1 %cmp231, label %land.lhs.true.232, label %if.end.253

land.lhs.true.232:                                ; preds = %lor.lhs.false.221, %lor.lhs.false.210, %lor.lhs.false.199, %land.lhs.true.188
  %77 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common233 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %type234 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common233, i32 0, i32 1
  %78 = load %union.tree_node*, %union.tree_node** %type234, align 8
  %type235 = bitcast %union.tree_node* %78 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type235, i32 0, i32 6
  %bf.load236 = load i32, i32* %precision, align 4
  %bf.clear237 = and i32 %bf.load236, 511
  %79 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp238 = bitcast %union.tree_node* %79 to %struct.tree_exp*
  %operands239 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp238, i32 0, i32 2
  %arrayidx240 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands239, i32 0, i64 0
  %80 = load %union.tree_node*, %union.tree_node** %arrayidx240, align 8
  %common241 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %type242 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common241, i32 0, i32 1
  %81 = load %union.tree_node*, %union.tree_node** %type242, align 8
  %type243 = bitcast %union.tree_node* %81 to %struct.tree_type*
  %precision244 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type243, i32 0, i32 6
  %bf.load245 = load i32, i32* %precision244, align 4
  %bf.clear246 = and i32 %bf.load245, 511
  %cmp247 = icmp eq i32 %bf.clear237, %bf.clear246
  br i1 %cmp247, label %if.then.248, label %if.end.253

if.then.248:                                      ; preds = %land.lhs.true.232
  %82 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp249 = bitcast %union.tree_node* %82 to %struct.tree_exp*
  %operands250 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp249, i32 0, i32 2
  %arrayidx251 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands250, i32 0, i64 0
  %83 = load %union.tree_node*, %union.tree_node** %arrayidx251, align 8
  %84 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call252 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %83, %union.tree_node* %84)
  store %union.tree_node* %call252, %union.tree_node** %retval
  br label %return

if.end.253:                                       ; preds = %land.lhs.true.232, %lor.lhs.false.221, %lor.lhs.false.180
  %85 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common254 = bitcast %union.tree_node* %85 to %struct.tree_common*
  %type255 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common254, i32 0, i32 1
  %86 = load %union.tree_node*, %union.tree_node** %type255, align 8
  %common256 = bitcast %union.tree_node* %86 to %struct.tree_common*
  %code257 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common256, i32 0, i32 2
  %bf.load258 = load i32, i32* %code257, align 8
  %bf.clear259 = and i32 %bf.load258, 255
  %cmp260 = icmp eq i32 %bf.clear259, 6
  br i1 %cmp260, label %land.lhs.true.285, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %if.end.253
  %87 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common262 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %type263 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common262, i32 0, i32 1
  %88 = load %union.tree_node*, %union.tree_node** %type263, align 8
  %common264 = bitcast %union.tree_node* %88 to %struct.tree_common*
  %code265 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common264, i32 0, i32 2
  %bf.load266 = load i32, i32* %code265, align 8
  %bf.clear267 = and i32 %bf.load266, 255
  %cmp268 = icmp eq i32 %bf.clear267, 10
  br i1 %cmp268, label %land.lhs.true.285, label %lor.lhs.false.269

lor.lhs.false.269:                                ; preds = %lor.lhs.false.261
  %89 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common270 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %type271 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common270, i32 0, i32 1
  %90 = load %union.tree_node*, %union.tree_node** %type271, align 8
  %common272 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %code273 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common272, i32 0, i32 2
  %bf.load274 = load i32, i32* %code273, align 8
  %bf.clear275 = and i32 %bf.load274, 255
  %cmp276 = icmp eq i32 %bf.clear275, 11
  br i1 %cmp276, label %land.lhs.true.285, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %lor.lhs.false.269
  %91 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common278 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %type279 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common278, i32 0, i32 1
  %92 = load %union.tree_node*, %union.tree_node** %type279, align 8
  %common280 = bitcast %union.tree_node* %92 to %struct.tree_common*
  %code281 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common280, i32 0, i32 2
  %bf.load282 = load i32, i32* %code281, align 8
  %bf.clear283 = and i32 %bf.load282, 255
  %cmp284 = icmp eq i32 %bf.clear283, 12
  br i1 %cmp284, label %land.lhs.true.285, label %if.end.337

land.lhs.true.285:                                ; preds = %lor.lhs.false.277, %lor.lhs.false.269, %lor.lhs.false.261, %if.end.253
  %93 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp286 = bitcast %union.tree_node* %93 to %struct.tree_exp*
  %operands287 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp286, i32 0, i32 2
  %arrayidx288 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands287, i32 0, i64 0
  %94 = load %union.tree_node*, %union.tree_node** %arrayidx288, align 8
  %common289 = bitcast %union.tree_node* %94 to %struct.tree_common*
  %type290 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common289, i32 0, i32 1
  %95 = load %union.tree_node*, %union.tree_node** %type290, align 8
  %common291 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %code292 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common291, i32 0, i32 2
  %bf.load293 = load i32, i32* %code292, align 8
  %bf.clear294 = and i32 %bf.load293, 255
  %cmp295 = icmp eq i32 %bf.clear294, 6
  br i1 %cmp295, label %if.then.329, label %lor.lhs.false.296

lor.lhs.false.296:                                ; preds = %land.lhs.true.285
  %96 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp297 = bitcast %union.tree_node* %96 to %struct.tree_exp*
  %operands298 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp297, i32 0, i32 2
  %arrayidx299 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands298, i32 0, i64 0
  %97 = load %union.tree_node*, %union.tree_node** %arrayidx299, align 8
  %common300 = bitcast %union.tree_node* %97 to %struct.tree_common*
  %type301 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common300, i32 0, i32 1
  %98 = load %union.tree_node*, %union.tree_node** %type301, align 8
  %common302 = bitcast %union.tree_node* %98 to %struct.tree_common*
  %code303 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common302, i32 0, i32 2
  %bf.load304 = load i32, i32* %code303, align 8
  %bf.clear305 = and i32 %bf.load304, 255
  %cmp306 = icmp eq i32 %bf.clear305, 10
  br i1 %cmp306, label %if.then.329, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %lor.lhs.false.296
  %99 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp308 = bitcast %union.tree_node* %99 to %struct.tree_exp*
  %operands309 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp308, i32 0, i32 2
  %arrayidx310 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands309, i32 0, i64 0
  %100 = load %union.tree_node*, %union.tree_node** %arrayidx310, align 8
  %common311 = bitcast %union.tree_node* %100 to %struct.tree_common*
  %type312 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common311, i32 0, i32 1
  %101 = load %union.tree_node*, %union.tree_node** %type312, align 8
  %common313 = bitcast %union.tree_node* %101 to %struct.tree_common*
  %code314 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common313, i32 0, i32 2
  %bf.load315 = load i32, i32* %code314, align 8
  %bf.clear316 = and i32 %bf.load315, 255
  %cmp317 = icmp eq i32 %bf.clear316, 11
  br i1 %cmp317, label %if.then.329, label %lor.lhs.false.318

lor.lhs.false.318:                                ; preds = %lor.lhs.false.307
  %102 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp319 = bitcast %union.tree_node* %102 to %struct.tree_exp*
  %operands320 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp319, i32 0, i32 2
  %arrayidx321 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands320, i32 0, i64 0
  %103 = load %union.tree_node*, %union.tree_node** %arrayidx321, align 8
  %common322 = bitcast %union.tree_node* %103 to %struct.tree_common*
  %type323 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common322, i32 0, i32 1
  %104 = load %union.tree_node*, %union.tree_node** %type323, align 8
  %common324 = bitcast %union.tree_node* %104 to %struct.tree_common*
  %code325 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common324, i32 0, i32 2
  %bf.load326 = load i32, i32* %code325, align 8
  %bf.clear327 = and i32 %bf.load326, 255
  %cmp328 = icmp eq i32 %bf.clear327, 12
  br i1 %cmp328, label %if.then.329, label %if.end.337

if.then.329:                                      ; preds = %lor.lhs.false.318, %lor.lhs.false.307, %lor.lhs.false.296, %land.lhs.true.285
  %105 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp330 = bitcast %union.tree_node* %105 to %struct.tree_exp*
  %operands331 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp330, i32 0, i32 2
  %arrayidx332 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands331, i32 0, i64 0
  %106 = load %union.tree_node*, %union.tree_node** %arrayidx332, align 8
  %107 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call333 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %106, %union.tree_node* %107)
  store %union.tree_node* %call333, %union.tree_node** %inner, align 8
  %108 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %109 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %cmp334 = icmp eq %union.tree_node* %108, %109
  br i1 %cmp334, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.then.329
  %110 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  store %union.tree_node* %110, %union.tree_node** %retval
  br label %return

if.end.336:                                       ; preds = %if.then.329
  br label %sw.epilog

if.end.337:                                       ; preds = %lor.lhs.false.318, %lor.lhs.false.277
  %111 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common338 = bitcast %union.tree_node* %111 to %struct.tree_common*
  %type339 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common338, i32 0, i32 1
  %112 = load %union.tree_node*, %union.tree_node** %type339, align 8
  %common340 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %code341 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common340, i32 0, i32 2
  %bf.load342 = load i32, i32* %code341, align 8
  %bf.clear343 = and i32 %bf.load342, 255
  %cmp344 = icmp eq i32 %bf.clear343, 6
  br i1 %cmp344, label %land.lhs.true.369, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %if.end.337
  %113 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common346 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %type347 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common346, i32 0, i32 1
  %114 = load %union.tree_node*, %union.tree_node** %type347, align 8
  %common348 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %code349 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common348, i32 0, i32 2
  %bf.load350 = load i32, i32* %code349, align 8
  %bf.clear351 = and i32 %bf.load350, 255
  %cmp352 = icmp eq i32 %bf.clear351, 10
  br i1 %cmp352, label %land.lhs.true.369, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.345
  %115 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common354 = bitcast %union.tree_node* %115 to %struct.tree_common*
  %type355 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common354, i32 0, i32 1
  %116 = load %union.tree_node*, %union.tree_node** %type355, align 8
  %common356 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %code357 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common356, i32 0, i32 2
  %bf.load358 = load i32, i32* %code357, align 8
  %bf.clear359 = and i32 %bf.load358, 255
  %cmp360 = icmp eq i32 %bf.clear359, 11
  br i1 %cmp360, label %land.lhs.true.369, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %lor.lhs.false.353
  %117 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common362 = bitcast %union.tree_node* %117 to %struct.tree_common*
  %type363 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common362, i32 0, i32 1
  %118 = load %union.tree_node*, %union.tree_node** %type363, align 8
  %common364 = bitcast %union.tree_node* %118 to %struct.tree_common*
  %code365 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common364, i32 0, i32 2
  %bf.load366 = load i32, i32* %code365, align 8
  %bf.clear367 = and i32 %bf.load366, 255
  %cmp368 = icmp eq i32 %bf.clear367, 12
  br i1 %cmp368, label %land.lhs.true.369, label %if.end.413

land.lhs.true.369:                                ; preds = %lor.lhs.false.361, %lor.lhs.false.353, %lor.lhs.false.345, %if.end.337
  %119 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp370 = bitcast %union.tree_node* %119 to %struct.tree_exp*
  %operands371 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp370, i32 0, i32 2
  %arrayidx372 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands371, i32 0, i64 0
  %120 = load %union.tree_node*, %union.tree_node** %arrayidx372, align 8
  %common373 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %type374 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common373, i32 0, i32 1
  %121 = load %union.tree_node*, %union.tree_node** %type374, align 8
  %common375 = bitcast %union.tree_node* %121 to %struct.tree_common*
  %code376 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common375, i32 0, i32 2
  %bf.load377 = load i32, i32* %code376, align 8
  %bf.clear378 = and i32 %bf.load377, 255
  %cmp379 = icmp eq i32 %bf.clear378, 13
  br i1 %cmp379, label %land.lhs.true.391, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %land.lhs.true.369
  %122 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp381 = bitcast %union.tree_node* %122 to %struct.tree_exp*
  %operands382 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp381, i32 0, i32 2
  %arrayidx383 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands382, i32 0, i64 0
  %123 = load %union.tree_node*, %union.tree_node** %arrayidx383, align 8
  %common384 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %type385 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common384, i32 0, i32 1
  %124 = load %union.tree_node*, %union.tree_node** %type385, align 8
  %common386 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %code387 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common386, i32 0, i32 2
  %bf.load388 = load i32, i32* %code387, align 8
  %bf.clear389 = and i32 %bf.load388, 255
  %cmp390 = icmp eq i32 %bf.clear389, 15
  br i1 %cmp390, label %land.lhs.true.391, label %if.end.413

land.lhs.true.391:                                ; preds = %lor.lhs.false.380, %land.lhs.true.369
  %125 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common392 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %type393 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common392, i32 0, i32 1
  %126 = load %union.tree_node*, %union.tree_node** %type393, align 8
  %type394 = bitcast %union.tree_node* %126 to %struct.tree_type*
  %precision395 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type394, i32 0, i32 6
  %bf.load396 = load i32, i32* %precision395, align 4
  %bf.clear397 = and i32 %bf.load396, 511
  %127 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp398 = bitcast %union.tree_node* %127 to %struct.tree_exp*
  %operands399 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp398, i32 0, i32 2
  %arrayidx400 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands399, i32 0, i64 0
  %128 = load %union.tree_node*, %union.tree_node** %arrayidx400, align 8
  %common401 = bitcast %union.tree_node* %128 to %struct.tree_common*
  %type402 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common401, i32 0, i32 1
  %129 = load %union.tree_node*, %union.tree_node** %type402, align 8
  %type403 = bitcast %union.tree_node* %129 to %struct.tree_type*
  %precision404 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type403, i32 0, i32 6
  %bf.load405 = load i32, i32* %precision404, align 4
  %bf.clear406 = and i32 %bf.load405, 511
  %cmp407 = icmp sge i32 %bf.clear397, %bf.clear406
  br i1 %cmp407, label %if.then.408, label %if.end.413

if.then.408:                                      ; preds = %land.lhs.true.391
  %130 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp409 = bitcast %union.tree_node* %130 to %struct.tree_exp*
  %operands410 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp409, i32 0, i32 2
  %arrayidx411 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands410, i32 0, i64 0
  %131 = load %union.tree_node*, %union.tree_node** %arrayidx411, align 8
  %132 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call412 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %131, %union.tree_node* %132)
  store %union.tree_node* %call412, %union.tree_node** %retval
  br label %return

if.end.413:                                       ; preds = %land.lhs.true.391, %lor.lhs.false.380, %lor.lhs.false.361
  %133 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common414 = bitcast %union.tree_node* %133 to %struct.tree_common*
  %type415 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common414, i32 0, i32 1
  %134 = load %union.tree_node*, %union.tree_node** %type415, align 8
  %common416 = bitcast %union.tree_node* %134 to %struct.tree_common*
  %code417 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common416, i32 0, i32 2
  %bf.load418 = load i32, i32* %code417, align 8
  %bf.clear419 = and i32 %bf.load418, 255
  %cmp420 = icmp eq i32 %bf.clear419, 13
  br i1 %cmp420, label %land.lhs.true.429, label %lor.lhs.false.421

lor.lhs.false.421:                                ; preds = %if.end.413
  %135 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common422 = bitcast %union.tree_node* %135 to %struct.tree_common*
  %type423 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common422, i32 0, i32 1
  %136 = load %union.tree_node*, %union.tree_node** %type423, align 8
  %common424 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %code425 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common424, i32 0, i32 2
  %bf.load426 = load i32, i32* %code425, align 8
  %bf.clear427 = and i32 %bf.load426, 255
  %cmp428 = icmp eq i32 %bf.clear427, 15
  br i1 %cmp428, label %land.lhs.true.429, label %if.end.503

land.lhs.true.429:                                ; preds = %lor.lhs.false.421, %if.end.413
  %137 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp430 = bitcast %union.tree_node* %137 to %struct.tree_exp*
  %operands431 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp430, i32 0, i32 2
  %arrayidx432 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands431, i32 0, i64 0
  %138 = load %union.tree_node*, %union.tree_node** %arrayidx432, align 8
  %common433 = bitcast %union.tree_node* %138 to %struct.tree_common*
  %type434 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common433, i32 0, i32 1
  %139 = load %union.tree_node*, %union.tree_node** %type434, align 8
  %common435 = bitcast %union.tree_node* %139 to %struct.tree_common*
  %code436 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common435, i32 0, i32 2
  %bf.load437 = load i32, i32* %code436, align 8
  %bf.clear438 = and i32 %bf.load437, 255
  %cmp439 = icmp eq i32 %bf.clear438, 6
  br i1 %cmp439, label %if.then.473, label %lor.lhs.false.440

lor.lhs.false.440:                                ; preds = %land.lhs.true.429
  %140 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp441 = bitcast %union.tree_node* %140 to %struct.tree_exp*
  %operands442 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp441, i32 0, i32 2
  %arrayidx443 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands442, i32 0, i64 0
  %141 = load %union.tree_node*, %union.tree_node** %arrayidx443, align 8
  %common444 = bitcast %union.tree_node* %141 to %struct.tree_common*
  %type445 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common444, i32 0, i32 1
  %142 = load %union.tree_node*, %union.tree_node** %type445, align 8
  %common446 = bitcast %union.tree_node* %142 to %struct.tree_common*
  %code447 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common446, i32 0, i32 2
  %bf.load448 = load i32, i32* %code447, align 8
  %bf.clear449 = and i32 %bf.load448, 255
  %cmp450 = icmp eq i32 %bf.clear449, 10
  br i1 %cmp450, label %if.then.473, label %lor.lhs.false.451

lor.lhs.false.451:                                ; preds = %lor.lhs.false.440
  %143 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp452 = bitcast %union.tree_node* %143 to %struct.tree_exp*
  %operands453 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp452, i32 0, i32 2
  %arrayidx454 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands453, i32 0, i64 0
  %144 = load %union.tree_node*, %union.tree_node** %arrayidx454, align 8
  %common455 = bitcast %union.tree_node* %144 to %struct.tree_common*
  %type456 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common455, i32 0, i32 1
  %145 = load %union.tree_node*, %union.tree_node** %type456, align 8
  %common457 = bitcast %union.tree_node* %145 to %struct.tree_common*
  %code458 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common457, i32 0, i32 2
  %bf.load459 = load i32, i32* %code458, align 8
  %bf.clear460 = and i32 %bf.load459, 255
  %cmp461 = icmp eq i32 %bf.clear460, 11
  br i1 %cmp461, label %if.then.473, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %lor.lhs.false.451
  %146 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp463 = bitcast %union.tree_node* %146 to %struct.tree_exp*
  %operands464 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp463, i32 0, i32 2
  %arrayidx465 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands464, i32 0, i64 0
  %147 = load %union.tree_node*, %union.tree_node** %arrayidx465, align 8
  %common466 = bitcast %union.tree_node* %147 to %struct.tree_common*
  %type467 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common466, i32 0, i32 1
  %148 = load %union.tree_node*, %union.tree_node** %type467, align 8
  %common468 = bitcast %union.tree_node* %148 to %struct.tree_common*
  %code469 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common468, i32 0, i32 2
  %bf.load470 = load i32, i32* %code469, align 8
  %bf.clear471 = and i32 %bf.load470, 255
  %cmp472 = icmp eq i32 %bf.clear471, 12
  br i1 %cmp472, label %if.then.473, label %if.end.503

if.then.473:                                      ; preds = %lor.lhs.false.462, %lor.lhs.false.451, %lor.lhs.false.440, %land.lhs.true.429
  %149 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp474 = bitcast %union.tree_node* %149 to %struct.tree_exp*
  %operands475 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp474, i32 0, i32 2
  %arrayidx476 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands475, i32 0, i64 0
  %150 = load %union.tree_node*, %union.tree_node** %arrayidx476, align 8
  %call477 = call i32 @integer_zerop(%union.tree_node* %150)
  %tobool478 = icmp ne i32 %call477, 0
  br i1 %tobool478, label %if.then.479, label %if.else

if.then.479:                                      ; preds = %if.then.473
  %151 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  store %union.tree_node* %151, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %if.then.473
  %152 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common480 = bitcast %union.tree_node* %152 to %struct.tree_common*
  %type481 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common480, i32 0, i32 1
  %153 = load %union.tree_node*, %union.tree_node** %type481, align 8
  %type482 = bitcast %union.tree_node* %153 to %struct.tree_type*
  %precision483 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type482, i32 0, i32 6
  %bf.load484 = load i32, i32* %precision483, align 4
  %bf.clear485 = and i32 %bf.load484, 511
  %154 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp486 = bitcast %union.tree_node* %154 to %struct.tree_exp*
  %operands487 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp486, i32 0, i32 2
  %arrayidx488 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands487, i32 0, i64 0
  %155 = load %union.tree_node*, %union.tree_node** %arrayidx488, align 8
  %common489 = bitcast %union.tree_node* %155 to %struct.tree_common*
  %type490 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common489, i32 0, i32 1
  %156 = load %union.tree_node*, %union.tree_node** %type490, align 8
  %type491 = bitcast %union.tree_node* %156 to %struct.tree_type*
  %precision492 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type491, i32 0, i32 6
  %bf.load493 = load i32, i32* %precision492, align 4
  %bf.clear494 = and i32 %bf.load493, 511
  %cmp495 = icmp sle i32 %bf.clear485, %bf.clear494
  br i1 %cmp495, label %if.then.496, label %if.end.501

if.then.496:                                      ; preds = %if.else
  %157 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp497 = bitcast %union.tree_node* %157 to %struct.tree_exp*
  %operands498 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp497, i32 0, i32 2
  %arrayidx499 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands498, i32 0, i64 0
  %158 = load %union.tree_node*, %union.tree_node** %arrayidx499, align 8
  %159 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call500 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %158, %union.tree_node* %159)
  store %union.tree_node* %call500, %union.tree_node** %retval
  br label %return

if.end.501:                                       ; preds = %if.else
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.501
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %lor.lhs.false.462, %lor.lhs.false.421
  %160 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common504 = bitcast %union.tree_node* %160 to %struct.tree_common*
  %type505 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common504, i32 0, i32 1
  %161 = load %union.tree_node*, %union.tree_node** %type505, align 8
  %common506 = bitcast %union.tree_node* %161 to %struct.tree_common*
  %code507 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common506, i32 0, i32 2
  %bf.load508 = load i32, i32* %code507, align 8
  %bf.clear509 = and i32 %bf.load508, 255
  %cmp510 = icmp eq i32 %bf.clear509, 21
  br i1 %cmp510, label %if.then.511, label %if.end.516

if.then.511:                                      ; preds = %if.end.503
  %162 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp512 = bitcast %union.tree_node* %162 to %struct.tree_exp*
  %operands513 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp512, i32 0, i32 2
  %arrayidx514 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands513, i32 0, i64 0
  %163 = load %union.tree_node*, %union.tree_node** %arrayidx514, align 8
  %164 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call515 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %163, %union.tree_node* %164)
  store %union.tree_node* %call515, %union.tree_node** %retval
  br label %return

if.end.516:                                       ; preds = %if.end.503
  br label %sw.epilog

sw.bb.517:                                        ; preds = %entry
  %165 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common518 = bitcast %union.tree_node* %165 to %struct.tree_common*
  %code519 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common518, i32 0, i32 2
  %bf.load520 = load i32, i32* %code519, align 8
  %bf.clear521 = and i32 %bf.load520, 255
  %cmp522 = icmp eq i32 %bf.clear521, 6
  br i1 %cmp522, label %lor.lhs.false.541, label %lor.lhs.false.523

lor.lhs.false.523:                                ; preds = %sw.bb.517
  %166 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common524 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %code525 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common524, i32 0, i32 2
  %bf.load526 = load i32, i32* %code525, align 8
  %bf.clear527 = and i32 %bf.load526, 255
  %cmp528 = icmp eq i32 %bf.clear527, 10
  br i1 %cmp528, label %lor.lhs.false.541, label %lor.lhs.false.529

lor.lhs.false.529:                                ; preds = %lor.lhs.false.523
  %167 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common530 = bitcast %union.tree_node* %167 to %struct.tree_common*
  %code531 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common530, i32 0, i32 2
  %bf.load532 = load i32, i32* %code531, align 8
  %bf.clear533 = and i32 %bf.load532, 255
  %cmp534 = icmp eq i32 %bf.clear533, 11
  br i1 %cmp534, label %lor.lhs.false.541, label %lor.lhs.false.535

lor.lhs.false.535:                                ; preds = %lor.lhs.false.529
  %168 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common536 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %code537 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common536, i32 0, i32 2
  %bf.load538 = load i32, i32* %code537, align 8
  %bf.clear539 = and i32 %bf.load538, 255
  %cmp540 = icmp eq i32 %bf.clear539, 12
  br i1 %cmp540, label %lor.lhs.false.541, label %if.then.549

lor.lhs.false.541:                                ; preds = %lor.lhs.false.535, %lor.lhs.false.529, %lor.lhs.false.523, %sw.bb.517
  %169 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %type542 = bitcast %union.tree_node* %169 to %struct.tree_type*
  %precision543 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type542, i32 0, i32 6
  %bf.load544 = load i32, i32* %precision543, align 4
  %bf.clear545 = and i32 %bf.load544, 511
  %170 = load i32, i32* @target_flags, align 4
  %and = and i32 %170, 33554432
  %tobool546 = icmp ne i32 %and, 0
  %cond547 = select i1 %tobool546, i32 64, i32 32
  %cmp548 = icmp sge i32 %bf.clear545, %cond547
  br i1 %cmp548, label %if.then.549, label %if.end.564

if.then.549:                                      ; preds = %lor.lhs.false.541, %lor.lhs.false.535
  %171 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp550 = bitcast %union.tree_node* %171 to %struct.tree_exp*
  %operands551 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp550, i32 0, i32 2
  %arrayidx552 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands551, i32 0, i64 0
  %172 = load %union.tree_node*, %union.tree_node** %arrayidx552, align 8
  %173 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call553 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %172, %union.tree_node* %173)
  store %union.tree_node* %call553, %union.tree_node** %valid0, align 8
  %174 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp554 = bitcast %union.tree_node* %174 to %struct.tree_exp*
  %operands555 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp554, i32 0, i32 2
  %arrayidx556 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands555, i32 0, i64 1
  %175 = load %union.tree_node*, %union.tree_node** %arrayidx556, align 8
  %176 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call557 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %175, %union.tree_node* %176)
  store %union.tree_node* %call557, %union.tree_node** %valid1, align 8
  %177 = load %union.tree_node*, %union.tree_node** %valid0, align 8
  %178 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %cmp558 = icmp eq %union.tree_node* %177, %178
  br i1 %cmp558, label %if.then.559, label %if.end.560

if.then.559:                                      ; preds = %if.then.549
  %179 = load %union.tree_node*, %union.tree_node** %valid1, align 8
  store %union.tree_node* %179, %union.tree_node** %retval
  br label %return

if.end.560:                                       ; preds = %if.then.549
  %180 = load %union.tree_node*, %union.tree_node** %valid1, align 8
  %181 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %cmp561 = icmp eq %union.tree_node* %180, %181
  br i1 %cmp561, label %if.then.562, label %if.end.563

if.then.562:                                      ; preds = %if.end.560
  %182 = load %union.tree_node*, %union.tree_node** %valid0, align 8
  store %union.tree_node* %182, %union.tree_node** %retval
  br label %return

if.end.563:                                       ; preds = %if.end.560
  br label %if.end.564

if.end.564:                                       ; preds = %if.end.563, %lor.lhs.false.541
  br label %sw.epilog

sw.bb.565:                                        ; preds = %entry
  %183 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common566 = bitcast %union.tree_node* %183 to %struct.tree_common*
  %code567 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common566, i32 0, i32 2
  %bf.load568 = load i32, i32* %code567, align 8
  %bf.clear569 = and i32 %bf.load568, 255
  %cmp570 = icmp eq i32 %bf.clear569, 6
  br i1 %cmp570, label %lor.lhs.false.589, label %lor.lhs.false.571

lor.lhs.false.571:                                ; preds = %sw.bb.565
  %184 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common572 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %code573 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common572, i32 0, i32 2
  %bf.load574 = load i32, i32* %code573, align 8
  %bf.clear575 = and i32 %bf.load574, 255
  %cmp576 = icmp eq i32 %bf.clear575, 10
  br i1 %cmp576, label %lor.lhs.false.589, label %lor.lhs.false.577

lor.lhs.false.577:                                ; preds = %lor.lhs.false.571
  %185 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common578 = bitcast %union.tree_node* %185 to %struct.tree_common*
  %code579 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common578, i32 0, i32 2
  %bf.load580 = load i32, i32* %code579, align 8
  %bf.clear581 = and i32 %bf.load580, 255
  %cmp582 = icmp eq i32 %bf.clear581, 11
  br i1 %cmp582, label %lor.lhs.false.589, label %lor.lhs.false.583

lor.lhs.false.583:                                ; preds = %lor.lhs.false.577
  %186 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common584 = bitcast %union.tree_node* %186 to %struct.tree_common*
  %code585 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common584, i32 0, i32 2
  %bf.load586 = load i32, i32* %code585, align 8
  %bf.clear587 = and i32 %bf.load586, 255
  %cmp588 = icmp eq i32 %bf.clear587, 12
  br i1 %cmp588, label %lor.lhs.false.589, label %if.then.598

lor.lhs.false.589:                                ; preds = %lor.lhs.false.583, %lor.lhs.false.577, %lor.lhs.false.571, %sw.bb.565
  %187 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %type590 = bitcast %union.tree_node* %187 to %struct.tree_type*
  %precision591 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type590, i32 0, i32 6
  %bf.load592 = load i32, i32* %precision591, align 4
  %bf.clear593 = and i32 %bf.load592, 511
  %188 = load i32, i32* @target_flags, align 4
  %and594 = and i32 %188, 33554432
  %tobool595 = icmp ne i32 %and594, 0
  %cond596 = select i1 %tobool595, i32 64, i32 32
  %cmp597 = icmp sge i32 %bf.clear593, %cond596
  br i1 %cmp597, label %if.then.598, label %if.end.638

if.then.598:                                      ; preds = %lor.lhs.false.589, %lor.lhs.false.583
  %189 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp600 = bitcast %union.tree_node* %189 to %struct.tree_exp*
  %operands601 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp600, i32 0, i32 2
  %arrayidx602 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands601, i32 0, i64 0
  %190 = load %union.tree_node*, %union.tree_node** %arrayidx602, align 8
  %191 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call603 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %190, %union.tree_node* %191)
  store %union.tree_node* %call603, %union.tree_node** %valid0599, align 8
  %192 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp605 = bitcast %union.tree_node* %192 to %struct.tree_exp*
  %operands606 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp605, i32 0, i32 2
  %arrayidx607 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands606, i32 0, i64 1
  %193 = load %union.tree_node*, %union.tree_node** %arrayidx607, align 8
  %194 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %call608 = call %union.tree_node* @initializer_constant_valid_p(%union.tree_node* %193, %union.tree_node* %194)
  store %union.tree_node* %call608, %union.tree_node** %valid1604, align 8
  %195 = load %union.tree_node*, %union.tree_node** %valid1604, align 8
  %196 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  %cmp609 = icmp eq %union.tree_node* %195, %196
  br i1 %cmp609, label %if.then.610, label %if.end.611

if.then.610:                                      ; preds = %if.then.598
  %197 = load %union.tree_node*, %union.tree_node** %valid0599, align 8
  store %union.tree_node* %197, %union.tree_node** %retval
  br label %return

if.end.611:                                       ; preds = %if.then.598
  %198 = load %union.tree_node*, %union.tree_node** %valid0599, align 8
  %199 = load %union.tree_node*, %union.tree_node** %valid1604, align 8
  %cmp612 = icmp eq %union.tree_node* %198, %199
  br i1 %cmp612, label %land.lhs.true.613, label %if.end.616

land.lhs.true.613:                                ; preds = %if.end.611
  %200 = load %union.tree_node*, %union.tree_node** %valid0599, align 8
  %cmp614 = icmp ne %union.tree_node* %200, null
  br i1 %cmp614, label %if.then.615, label %if.end.616

if.then.615:                                      ; preds = %land.lhs.true.613
  %201 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  store %union.tree_node* %201, %union.tree_node** %retval
  br label %return

if.end.616:                                       ; preds = %land.lhs.true.613, %if.end.611
  %202 = load %union.tree_node*, %union.tree_node** %valid0599, align 8
  %tobool617 = icmp ne %union.tree_node* %202, null
  br i1 %tobool617, label %land.lhs.true.618, label %if.end.637

land.lhs.true.618:                                ; preds = %if.end.616
  %203 = load %union.tree_node*, %union.tree_node** %valid0599, align 8
  %common619 = bitcast %union.tree_node* %203 to %struct.tree_common*
  %code620 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common619, i32 0, i32 2
  %bf.load621 = load i32, i32* %code620, align 8
  %bf.clear622 = and i32 %bf.load621, 255
  %cmp623 = icmp eq i32 %bf.clear622, 29
  br i1 %cmp623, label %land.lhs.true.624, label %if.end.637

land.lhs.true.624:                                ; preds = %land.lhs.true.618
  %204 = load %union.tree_node*, %union.tree_node** %valid1604, align 8
  %tobool625 = icmp ne %union.tree_node* %204, null
  br i1 %tobool625, label %land.lhs.true.626, label %if.end.637

land.lhs.true.626:                                ; preds = %land.lhs.true.624
  %205 = load %union.tree_node*, %union.tree_node** %valid1604, align 8
  %common627 = bitcast %union.tree_node* %205 to %struct.tree_common*
  %code628 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common627, i32 0, i32 2
  %bf.load629 = load i32, i32* %code628, align 8
  %bf.clear630 = and i32 %bf.load629, 255
  %cmp631 = icmp eq i32 %bf.clear630, 29
  br i1 %cmp631, label %land.lhs.true.632, label %if.end.637

land.lhs.true.632:                                ; preds = %land.lhs.true.626
  %206 = load %union.tree_node*, %union.tree_node** %valid0599, align 8
  %string = bitcast %union.tree_node* %206 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %207 = load i8*, i8** %pointer, align 8
  %208 = load %union.tree_node*, %union.tree_node** %valid1604, align 8
  %string633 = bitcast %union.tree_node* %208 to %struct.tree_string*
  %pointer634 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string633, i32 0, i32 3
  %209 = load i8*, i8** %pointer634, align 8
  %cmp635 = icmp eq i8* %207, %209
  br i1 %cmp635, label %if.then.636, label %if.end.637

if.then.636:                                      ; preds = %land.lhs.true.632
  %210 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  store %union.tree_node* %210, %union.tree_node** %retval
  br label %return

if.end.637:                                       ; preds = %land.lhs.true.632, %land.lhs.true.626, %land.lhs.true.624, %land.lhs.true.618, %if.end.616
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %lor.lhs.false.589
  %211 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common639 = bitcast %union.tree_node* %211 to %struct.tree_common*
  %code640 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common639, i32 0, i32 2
  %bf.load641 = load i32, i32* %code640, align 8
  %bf.clear642 = and i32 %bf.load641, 255
  %cmp643 = icmp eq i32 %bf.clear642, 6
  br i1 %cmp643, label %if.then.662, label %lor.lhs.false.644

lor.lhs.false.644:                                ; preds = %if.end.638
  %212 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common645 = bitcast %union.tree_node* %212 to %struct.tree_common*
  %code646 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common645, i32 0, i32 2
  %bf.load647 = load i32, i32* %code646, align 8
  %bf.clear648 = and i32 %bf.load647, 255
  %cmp649 = icmp eq i32 %bf.clear648, 10
  br i1 %cmp649, label %if.then.662, label %lor.lhs.false.650

lor.lhs.false.650:                                ; preds = %lor.lhs.false.644
  %213 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common651 = bitcast %union.tree_node* %213 to %struct.tree_common*
  %code652 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common651, i32 0, i32 2
  %bf.load653 = load i32, i32* %code652, align 8
  %bf.clear654 = and i32 %bf.load653, 255
  %cmp655 = icmp eq i32 %bf.clear654, 11
  br i1 %cmp655, label %if.then.662, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %lor.lhs.false.650
  %214 = load %union.tree_node*, %union.tree_node** %endtype.addr, align 8
  %common657 = bitcast %union.tree_node* %214 to %struct.tree_common*
  %code658 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common657, i32 0, i32 2
  %bf.load659 = load i32, i32* %code658, align 8
  %bf.clear660 = and i32 %bf.load659, 255
  %cmp661 = icmp eq i32 %bf.clear660, 12
  br i1 %cmp661, label %if.then.662, label %if.end.894

if.then.662:                                      ; preds = %lor.lhs.false.656, %lor.lhs.false.650, %lor.lhs.false.644, %if.end.638
  %215 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp663 = bitcast %union.tree_node* %215 to %struct.tree_exp*
  %operands664 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp663, i32 0, i32 2
  %arrayidx665 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands664, i32 0, i64 0
  %216 = load %union.tree_node*, %union.tree_node** %arrayidx665, align 8
  store %union.tree_node* %216, %union.tree_node** %op0, align 8
  %217 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %exp666 = bitcast %union.tree_node* %217 to %struct.tree_exp*
  %operands667 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp666, i32 0, i32 2
  %arrayidx668 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands667, i32 0, i64 1
  %218 = load %union.tree_node*, %union.tree_node** %arrayidx668, align 8
  store %union.tree_node* %218, %union.tree_node** %op1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.755, %if.then.662
  %219 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %common669 = bitcast %union.tree_node* %219 to %struct.tree_common*
  %code670 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common669, i32 0, i32 2
  %bf.load671 = load i32, i32* %code670, align 8
  %bf.clear672 = and i32 %bf.load671, 255
  %cmp673 = icmp eq i32 %bf.clear672, 115
  br i1 %cmp673, label %lor.end, label %lor.lhs.false.674

lor.lhs.false.674:                                ; preds = %while.cond
  %220 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %common675 = bitcast %union.tree_node* %220 to %struct.tree_common*
  %code676 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common675, i32 0, i32 2
  %bf.load677 = load i32, i32* %code676, align 8
  %bf.clear678 = and i32 %bf.load677, 255
  %cmp679 = icmp eq i32 %bf.clear678, 114
  br i1 %cmp679, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.674
  %221 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %common680 = bitcast %union.tree_node* %221 to %struct.tree_common*
  %code681 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common680, i32 0, i32 2
  %bf.load682 = load i32, i32* %code681, align 8
  %bf.clear683 = and i32 %bf.load682, 255
  %cmp684 = icmp eq i32 %bf.clear683, 116
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.674, %while.cond
  %222 = phi i1 [ true, %lor.lhs.false.674 ], [ true, %while.cond ], [ %cmp684, %lor.rhs ]
  br i1 %222, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %223 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %exp686 = bitcast %union.tree_node* %223 to %struct.tree_exp*
  %operands687 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp686, i32 0, i32 2
  %arrayidx688 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands687, i32 0, i64 0
  %224 = load %union.tree_node*, %union.tree_node** %arrayidx688, align 8
  store %union.tree_node* %224, %union.tree_node** %inner685, align 8
  %225 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  %226 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp689 = icmp eq %union.tree_node* %225, %226
  br i1 %cmp689, label %if.then.754, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %while.body
  %227 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  %common691 = bitcast %union.tree_node* %227 to %struct.tree_common*
  %type692 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common691, i32 0, i32 1
  %228 = load %union.tree_node*, %union.tree_node** %type692, align 8
  %type693 = bitcast %union.tree_node* %228 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type693, i32 0, i32 6
  %bf.load694 = load i32, i32* %mode, align 4
  %bf.lshr695 = lshr i32 %bf.load694, 9
  %bf.clear696 = and i32 %bf.lshr695, 127
  %idxprom = sext i32 %bf.clear696 to i64
  %arrayidx697 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %229 = load i32, i32* %arrayidx697, align 4
  %cmp698 = icmp eq i32 %229, 1
  br i1 %cmp698, label %lor.lhs.false.732, label %lor.lhs.false.699

lor.lhs.false.699:                                ; preds = %lor.lhs.false.690
  %230 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  %common700 = bitcast %union.tree_node* %230 to %struct.tree_common*
  %type701 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common700, i32 0, i32 1
  %231 = load %union.tree_node*, %union.tree_node** %type701, align 8
  %type702 = bitcast %union.tree_node* %231 to %struct.tree_type*
  %mode703 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type702, i32 0, i32 6
  %bf.load704 = load i32, i32* %mode703, align 4
  %bf.lshr705 = lshr i32 %bf.load704, 9
  %bf.clear706 = and i32 %bf.lshr705, 127
  %idxprom707 = sext i32 %bf.clear706 to i64
  %arrayidx708 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom707
  %232 = load i32, i32* %arrayidx708, align 4
  %cmp709 = icmp eq i32 %232, 3
  br i1 %cmp709, label %lor.lhs.false.732, label %lor.lhs.false.710

lor.lhs.false.710:                                ; preds = %lor.lhs.false.699
  %233 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  %common711 = bitcast %union.tree_node* %233 to %struct.tree_common*
  %type712 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common711, i32 0, i32 1
  %234 = load %union.tree_node*, %union.tree_node** %type712, align 8
  %type713 = bitcast %union.tree_node* %234 to %struct.tree_type*
  %mode714 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type713, i32 0, i32 6
  %bf.load715 = load i32, i32* %mode714, align 4
  %bf.lshr716 = lshr i32 %bf.load715, 9
  %bf.clear717 = and i32 %bf.lshr716, 127
  %idxprom718 = sext i32 %bf.clear717 to i64
  %arrayidx719 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom718
  %235 = load i32, i32* %arrayidx719, align 4
  %cmp720 = icmp eq i32 %235, 5
  br i1 %cmp720, label %lor.lhs.false.732, label %lor.lhs.false.721

lor.lhs.false.721:                                ; preds = %lor.lhs.false.710
  %236 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  %common722 = bitcast %union.tree_node* %236 to %struct.tree_common*
  %type723 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common722, i32 0, i32 1
  %237 = load %union.tree_node*, %union.tree_node** %type723, align 8
  %type724 = bitcast %union.tree_node* %237 to %struct.tree_type*
  %mode725 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type724, i32 0, i32 6
  %bf.load726 = load i32, i32* %mode725, align 4
  %bf.lshr727 = lshr i32 %bf.load726, 9
  %bf.clear728 = and i32 %bf.lshr727, 127
  %idxprom729 = sext i32 %bf.clear728 to i64
  %arrayidx730 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom729
  %238 = load i32, i32* %arrayidx730, align 4
  %cmp731 = icmp eq i32 %238, 7
  br i1 %cmp731, label %lor.lhs.false.732, label %if.then.754

lor.lhs.false.732:                                ; preds = %lor.lhs.false.721, %lor.lhs.false.710, %lor.lhs.false.699, %lor.lhs.false.690
  %239 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %common733 = bitcast %union.tree_node* %239 to %struct.tree_common*
  %type734 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common733, i32 0, i32 1
  %240 = load %union.tree_node*, %union.tree_node** %type734, align 8
  %type735 = bitcast %union.tree_node* %240 to %struct.tree_type*
  %mode736 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type735, i32 0, i32 6
  %bf.load737 = load i32, i32* %mode736, align 4
  %bf.lshr738 = lshr i32 %bf.load737, 9
  %bf.clear739 = and i32 %bf.lshr738, 127
  %idxprom740 = sext i32 %bf.clear739 to i64
  %arrayidx741 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom740
  %241 = load i8, i8* %arrayidx741, align 1
  %conv = zext i8 %241 to i32
  %242 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  %common742 = bitcast %union.tree_node* %242 to %struct.tree_common*
  %type743 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common742, i32 0, i32 1
  %243 = load %union.tree_node*, %union.tree_node** %type743, align 8
  %type744 = bitcast %union.tree_node* %243 to %struct.tree_type*
  %mode745 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type744, i32 0, i32 6
  %bf.load746 = load i32, i32* %mode745, align 4
  %bf.lshr747 = lshr i32 %bf.load746, 9
  %bf.clear748 = and i32 %bf.lshr747, 127
  %idxprom749 = sext i32 %bf.clear748 to i64
  %arrayidx750 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom749
  %244 = load i8, i8* %arrayidx750, align 1
  %conv751 = zext i8 %244 to i32
  %cmp752 = icmp sgt i32 %conv, %conv751
  br i1 %cmp752, label %if.then.754, label %if.end.755

if.then.754:                                      ; preds = %lor.lhs.false.732, %lor.lhs.false.721, %while.body
  br label %while.end

if.end.755:                                       ; preds = %lor.lhs.false.732
  %245 = load %union.tree_node*, %union.tree_node** %inner685, align 8
  store %union.tree_node* %245, %union.tree_node** %op0, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.754, %lor.end
  br label %while.cond.756

while.cond.756:                                   ; preds = %if.end.857, %while.end
  %246 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %common757 = bitcast %union.tree_node* %246 to %struct.tree_common*
  %code758 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common757, i32 0, i32 2
  %bf.load759 = load i32, i32* %code758, align 8
  %bf.clear760 = and i32 %bf.load759, 255
  %cmp761 = icmp eq i32 %bf.clear760, 115
  br i1 %cmp761, label %lor.end.777, label %lor.lhs.false.763

lor.lhs.false.763:                                ; preds = %while.cond.756
  %247 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %common764 = bitcast %union.tree_node* %247 to %struct.tree_common*
  %code765 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common764, i32 0, i32 2
  %bf.load766 = load i32, i32* %code765, align 8
  %bf.clear767 = and i32 %bf.load766, 255
  %cmp768 = icmp eq i32 %bf.clear767, 114
  br i1 %cmp768, label %lor.end.777, label %lor.rhs.770

lor.rhs.770:                                      ; preds = %lor.lhs.false.763
  %248 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %common771 = bitcast %union.tree_node* %248 to %struct.tree_common*
  %code772 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common771, i32 0, i32 2
  %bf.load773 = load i32, i32* %code772, align 8
  %bf.clear774 = and i32 %bf.load773, 255
  %cmp775 = icmp eq i32 %bf.clear774, 116
  br label %lor.end.777

lor.end.777:                                      ; preds = %lor.rhs.770, %lor.lhs.false.763, %while.cond.756
  %249 = phi i1 [ true, %lor.lhs.false.763 ], [ true, %while.cond.756 ], [ %cmp775, %lor.rhs.770 ]
  br i1 %249, label %while.body.778, label %while.end.858

while.body.778:                                   ; preds = %lor.end.777
  %250 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %exp780 = bitcast %union.tree_node* %250 to %struct.tree_exp*
  %operands781 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp780, i32 0, i32 2
  %arrayidx782 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands781, i32 0, i64 0
  %251 = load %union.tree_node*, %union.tree_node** %arrayidx782, align 8
  store %union.tree_node* %251, %union.tree_node** %inner779, align 8
  %252 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  %253 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp783 = icmp eq %union.tree_node* %252, %253
  br i1 %cmp783, label %if.then.856, label %lor.lhs.false.785

lor.lhs.false.785:                                ; preds = %while.body.778
  %254 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  %common786 = bitcast %union.tree_node* %254 to %struct.tree_common*
  %type787 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common786, i32 0, i32 1
  %255 = load %union.tree_node*, %union.tree_node** %type787, align 8
  %type788 = bitcast %union.tree_node* %255 to %struct.tree_type*
  %mode789 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type788, i32 0, i32 6
  %bf.load790 = load i32, i32* %mode789, align 4
  %bf.lshr791 = lshr i32 %bf.load790, 9
  %bf.clear792 = and i32 %bf.lshr791, 127
  %idxprom793 = sext i32 %bf.clear792 to i64
  %arrayidx794 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom793
  %256 = load i32, i32* %arrayidx794, align 4
  %cmp795 = icmp eq i32 %256, 1
  br i1 %cmp795, label %lor.lhs.false.833, label %lor.lhs.false.797

lor.lhs.false.797:                                ; preds = %lor.lhs.false.785
  %257 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  %common798 = bitcast %union.tree_node* %257 to %struct.tree_common*
  %type799 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common798, i32 0, i32 1
  %258 = load %union.tree_node*, %union.tree_node** %type799, align 8
  %type800 = bitcast %union.tree_node* %258 to %struct.tree_type*
  %mode801 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type800, i32 0, i32 6
  %bf.load802 = load i32, i32* %mode801, align 4
  %bf.lshr803 = lshr i32 %bf.load802, 9
  %bf.clear804 = and i32 %bf.lshr803, 127
  %idxprom805 = sext i32 %bf.clear804 to i64
  %arrayidx806 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom805
  %259 = load i32, i32* %arrayidx806, align 4
  %cmp807 = icmp eq i32 %259, 3
  br i1 %cmp807, label %lor.lhs.false.833, label %lor.lhs.false.809

lor.lhs.false.809:                                ; preds = %lor.lhs.false.797
  %260 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  %common810 = bitcast %union.tree_node* %260 to %struct.tree_common*
  %type811 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common810, i32 0, i32 1
  %261 = load %union.tree_node*, %union.tree_node** %type811, align 8
  %type812 = bitcast %union.tree_node* %261 to %struct.tree_type*
  %mode813 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type812, i32 0, i32 6
  %bf.load814 = load i32, i32* %mode813, align 4
  %bf.lshr815 = lshr i32 %bf.load814, 9
  %bf.clear816 = and i32 %bf.lshr815, 127
  %idxprom817 = sext i32 %bf.clear816 to i64
  %arrayidx818 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom817
  %262 = load i32, i32* %arrayidx818, align 4
  %cmp819 = icmp eq i32 %262, 5
  br i1 %cmp819, label %lor.lhs.false.833, label %lor.lhs.false.821

lor.lhs.false.821:                                ; preds = %lor.lhs.false.809
  %263 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  %common822 = bitcast %union.tree_node* %263 to %struct.tree_common*
  %type823 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common822, i32 0, i32 1
  %264 = load %union.tree_node*, %union.tree_node** %type823, align 8
  %type824 = bitcast %union.tree_node* %264 to %struct.tree_type*
  %mode825 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type824, i32 0, i32 6
  %bf.load826 = load i32, i32* %mode825, align 4
  %bf.lshr827 = lshr i32 %bf.load826, 9
  %bf.clear828 = and i32 %bf.lshr827, 127
  %idxprom829 = sext i32 %bf.clear828 to i64
  %arrayidx830 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom829
  %265 = load i32, i32* %arrayidx830, align 4
  %cmp831 = icmp eq i32 %265, 7
  br i1 %cmp831, label %lor.lhs.false.833, label %if.then.856

lor.lhs.false.833:                                ; preds = %lor.lhs.false.821, %lor.lhs.false.809, %lor.lhs.false.797, %lor.lhs.false.785
  %266 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %common834 = bitcast %union.tree_node* %266 to %struct.tree_common*
  %type835 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common834, i32 0, i32 1
  %267 = load %union.tree_node*, %union.tree_node** %type835, align 8
  %type836 = bitcast %union.tree_node* %267 to %struct.tree_type*
  %mode837 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type836, i32 0, i32 6
  %bf.load838 = load i32, i32* %mode837, align 4
  %bf.lshr839 = lshr i32 %bf.load838, 9
  %bf.clear840 = and i32 %bf.lshr839, 127
  %idxprom841 = sext i32 %bf.clear840 to i64
  %arrayidx842 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom841
  %268 = load i8, i8* %arrayidx842, align 1
  %conv843 = zext i8 %268 to i32
  %269 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  %common844 = bitcast %union.tree_node* %269 to %struct.tree_common*
  %type845 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common844, i32 0, i32 1
  %270 = load %union.tree_node*, %union.tree_node** %type845, align 8
  %type846 = bitcast %union.tree_node* %270 to %struct.tree_type*
  %mode847 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type846, i32 0, i32 6
  %bf.load848 = load i32, i32* %mode847, align 4
  %bf.lshr849 = lshr i32 %bf.load848, 9
  %bf.clear850 = and i32 %bf.lshr849, 127
  %idxprom851 = sext i32 %bf.clear850 to i64
  %arrayidx852 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom851
  %271 = load i8, i8* %arrayidx852, align 1
  %conv853 = zext i8 %271 to i32
  %cmp854 = icmp sgt i32 %conv843, %conv853
  br i1 %cmp854, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %lor.lhs.false.833, %lor.lhs.false.821, %while.body.778
  br label %while.end.858

if.end.857:                                       ; preds = %lor.lhs.false.833
  %272 = load %union.tree_node*, %union.tree_node** %inner779, align 8
  store %union.tree_node* %272, %union.tree_node** %op1, align 8
  br label %while.cond.756

while.end.858:                                    ; preds = %if.then.856, %lor.end.777
  %273 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %common859 = bitcast %union.tree_node* %273 to %struct.tree_common*
  %code860 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common859, i32 0, i32 2
  %bf.load861 = load i32, i32* %code860, align 8
  %bf.clear862 = and i32 %bf.load861, 255
  %cmp863 = icmp eq i32 %bf.clear862, 121
  br i1 %cmp863, label %land.lhs.true.865, label %if.end.893

land.lhs.true.865:                                ; preds = %while.end.858
  %274 = load %union.tree_node*, %union.tree_node** %op0, align 8
  %exp866 = bitcast %union.tree_node* %274 to %struct.tree_exp*
  %operands867 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp866, i32 0, i32 2
  %arrayidx868 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands867, i32 0, i64 0
  %275 = load %union.tree_node*, %union.tree_node** %arrayidx868, align 8
  %common869 = bitcast %union.tree_node* %275 to %struct.tree_common*
  %code870 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common869, i32 0, i32 2
  %bf.load871 = load i32, i32* %code870, align 8
  %bf.clear872 = and i32 %bf.load871, 255
  %cmp873 = icmp eq i32 %bf.clear872, 31
  br i1 %cmp873, label %land.lhs.true.875, label %if.end.893

land.lhs.true.875:                                ; preds = %land.lhs.true.865
  %276 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %common876 = bitcast %union.tree_node* %276 to %struct.tree_common*
  %code877 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common876, i32 0, i32 2
  %bf.load878 = load i32, i32* %code877, align 8
  %bf.clear879 = and i32 %bf.load878, 255
  %cmp880 = icmp eq i32 %bf.clear879, 121
  br i1 %cmp880, label %land.lhs.true.882, label %if.end.893

land.lhs.true.882:                                ; preds = %land.lhs.true.875
  %277 = load %union.tree_node*, %union.tree_node** %op1, align 8
  %exp883 = bitcast %union.tree_node* %277 to %struct.tree_exp*
  %operands884 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp883, i32 0, i32 2
  %arrayidx885 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands884, i32 0, i64 0
  %278 = load %union.tree_node*, %union.tree_node** %arrayidx885, align 8
  %common886 = bitcast %union.tree_node* %278 to %struct.tree_common*
  %code887 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common886, i32 0, i32 2
  %bf.load888 = load i32, i32* %code887, align 8
  %bf.clear889 = and i32 %bf.load888, 255
  %cmp890 = icmp eq i32 %bf.clear889, 31
  br i1 %cmp890, label %if.then.892, label %if.end.893

if.then.892:                                      ; preds = %land.lhs.true.882
  %279 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 14), align 8
  store %union.tree_node* %279, %union.tree_node** %retval
  br label %return

if.end.893:                                       ; preds = %land.lhs.true.882, %land.lhs.true.875, %land.lhs.true.865, %while.end.858
  br label %if.end.894

if.end.894:                                       ; preds = %if.end.893, %lor.lhs.false.656
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.894, %if.end.564, %if.end.516, %if.end.336
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.892, %if.then.636, %if.then.615, %if.then.610, %if.then.562, %if.then.559, %if.then.511, %if.then.496, %if.then.479, %if.then.408, %if.then.335, %if.then.248, %if.then.151, %if.then.85, %sw.bb.42, %cond.end.40, %sw.bb.28, %cond.end, %if.then
  %280 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %280
}

declare i32 @staticp(%union.tree_node*) #1

declare i32 @integer_zerop(%union.tree_node*) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @output_constructor(%union.tree_node* %exp, i64 %size, i32 %align) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %link = alloca %union.tree_node*, align 8
  %field = alloca %union.tree_node*, align 8
  %min_index = alloca %union.tree_node*, align 8
  %total_bytes = alloca i64, align 8
  %byte_buffer_in_use = alloca i32, align 4
  %byte = alloca i32, align 4
  %val = alloca %union.tree_node*, align 8
  %index = alloca %union.tree_node*, align 8
  %fieldsize = alloca i64, align 8
  %lo_index = alloca i64, align 8
  %hi_index = alloca i64, align 8
  %index112 = alloca i64, align 8
  %align2 = alloca i32, align 4
  %fieldsize133 = alloca i64, align 8
  %pos = alloca i64, align 8
  %align2136 = alloca i32, align 4
  %next_offset = alloca i64, align 8
  %end_offset = alloca i64, align 8
  %this_time = alloca i32, align 4
  %shift = alloca i32, align 4
  %value280 = alloca i64, align 8
  %next_byte = alloca i64, align 8
  %next_bit = alloca i64, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  store %union.tree_node* null, %union.tree_node** %field, align 8
  store %union.tree_node* null, %union.tree_node** %min_index, align 8
  store i64 0, i64* %total_bytes, align 8
  store i32 0, i32* %byte_buffer_in_use, align 4
  store i32 0, i32* %byte, align 4
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type3 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %4, %union.tree_node** %field, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 18
  br i1 %cmp8, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type9 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %values10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type9, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %values10, align 8
  %cmp11 = icmp ne %union.tree_node* %7, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type13 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %values14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %values14, align 8
  %type15 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 12
  %10 = load %union.tree_node*, %union.tree_node** %minval, align 8
  store %union.tree_node* %10, %union.tree_node** %min_index, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %land.lhs.true, %if.end
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp17 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %12, %union.tree_node** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.348, %if.end.16
  %13 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool = icmp ne %union.tree_node* %13, null
  br i1 %tobool, label %for.body, label %for.end.350

for.body:                                         ; preds = %for.cond
  %14 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list = bitcast %union.tree_node* %14 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %15, %union.tree_node** %val, align 8
  store %union.tree_node* null, %union.tree_node** %index, align 8
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common18 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load20 = load i32, i32* %code19, align 8
  %bf.clear21 = and i32 %bf.load20, 255
  %cmp22 = icmp eq i32 %bf.clear21, 20
  br i1 %cmp22, label %land.lhs.true.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common23 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load25 = load i32, i32* %code24, align 8
  %bf.clear26 = and i32 %bf.load25, 255
  %cmp27 = icmp eq i32 %bf.clear26, 21
  br i1 %cmp27, label %land.lhs.true.34, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %18 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common29 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 22
  br i1 %cmp33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %lor.lhs.false.28, %lor.lhs.false, %for.body
  %19 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list35 = bitcast %union.tree_node* %19 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list35, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %cmp36 = icmp ne %union.tree_node* %20, null
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.34
  %21 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list38 = bitcast %union.tree_node* %21 to %struct.tree_list*
  %purpose39 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list38, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %purpose39, align 8
  store %union.tree_node* %22, %union.tree_node** %field, align 8
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true.34, %lor.lhs.false.28
  %23 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common40 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %code41, align 8
  %bf.clear43 = and i32 %bf.load42, 255
  %cmp44 = icmp eq i32 %bf.clear43, 18
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.else
  %24 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list46 = bitcast %union.tree_node* %24 to %struct.tree_list*
  %purpose47 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list46, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %purpose47, align 8
  store %union.tree_node* %25, %union.tree_node** %index, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.37
  %26 = load %union.tree_node*, %union.tree_node** %val, align 8
  %cmp50 = icmp ne %union.tree_node* %26, null
  br i1 %cmp50, label %if.then.51, label %if.end.93

if.then.51:                                       ; preds = %if.end.49
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.51
  %27 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common52 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 2
  %bf.load54 = load i32, i32* %code53, align 8
  %bf.clear55 = and i32 %bf.load54, 255
  %cmp56 = icmp eq i32 %bf.clear55, 115
  br i1 %cmp56, label %land.lhs.true.69, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %while.cond
  %28 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common58 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %code59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 2
  %bf.load60 = load i32, i32* %code59, align 8
  %bf.clear61 = and i32 %bf.load60, 255
  %cmp62 = icmp eq i32 %bf.clear61, 114
  br i1 %cmp62, label %land.lhs.true.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.57
  %29 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common64 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %code65 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 2
  %bf.load66 = load i32, i32* %code65, align 8
  %bf.clear67 = and i32 %bf.load66, 255
  %cmp68 = icmp eq i32 %bf.clear67, 116
  br i1 %cmp68, label %land.lhs.true.69, label %land.end

land.lhs.true.69:                                 ; preds = %lor.lhs.false.63, %lor.lhs.false.57, %while.cond
  %30 = load %union.tree_node*, %union.tree_node** %val, align 8
  %exp70 = bitcast %union.tree_node* %30 to %struct.tree_exp*
  %operands71 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp70, i32 0, i32 2
  %arrayidx72 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands71, i32 0, i64 0
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx72, align 8
  %32 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp73 = icmp ne %union.tree_node* %31, %32
  br i1 %cmp73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.69
  %33 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common74 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type75, align 8
  %type76 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type76, i32 0, i32 6
  %bf.load77 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load77, 9
  %bf.clear78 = and i32 %bf.lshr, 127
  %35 = load %union.tree_node*, %union.tree_node** %val, align 8
  %exp79 = bitcast %union.tree_node* %35 to %struct.tree_exp*
  %operands80 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp79, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands80, i32 0, i64 0
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx81, align 8
  %common82 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %type83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 1
  %37 = load %union.tree_node*, %union.tree_node** %type83, align 8
  %type84 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %mode85 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type84, i32 0, i32 6
  %bf.load86 = load i32, i32* %mode85, align 4
  %bf.lshr87 = lshr i32 %bf.load86, 9
  %bf.clear88 = and i32 %bf.lshr87, 127
  %cmp89 = icmp eq i32 %bf.clear78, %bf.clear88
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.69, %lor.lhs.false.63
  %38 = phi i1 [ false, %land.lhs.true.69 ], [ false, %lor.lhs.false.63 ], [ %cmp89, %land.rhs ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %39 = load %union.tree_node*, %union.tree_node** %val, align 8
  %exp90 = bitcast %union.tree_node* %39 to %struct.tree_exp*
  %operands91 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp90, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands91, i32 0, i64 0
  %40 = load %union.tree_node*, %union.tree_node** %arrayidx92, align 8
  store %union.tree_node* %40, %union.tree_node** %val, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.93

if.end.93:                                        ; preds = %while.end, %if.end.49
  %41 = load %union.tree_node*, %union.tree_node** %index, align 8
  %tobool94 = icmp ne %union.tree_node* %41, null
  br i1 %tobool94, label %land.lhs.true.95, label %if.else.124

land.lhs.true.95:                                 ; preds = %if.end.93
  %42 = load %union.tree_node*, %union.tree_node** %index, align 8
  %common96 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %code97 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common96, i32 0, i32 2
  %bf.load98 = load i32, i32* %code97, align 8
  %bf.clear99 = and i32 %bf.load98, 255
  %cmp100 = icmp eq i32 %bf.clear99, 113
  br i1 %cmp100, label %if.then.101, label %if.else.124

if.then.101:                                      ; preds = %land.lhs.true.95
  %43 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common102 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %type103 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common102, i32 0, i32 1
  %44 = load %union.tree_node*, %union.tree_node** %type103, align 8
  %call = call i64 @int_size_in_bytes(%union.tree_node* %44)
  store i64 %call, i64* %fieldsize, align 8
  %45 = load %union.tree_node*, %union.tree_node** %index, align 8
  %exp104 = bitcast %union.tree_node* %45 to %struct.tree_exp*
  %operands105 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp104, i32 0, i32 2
  %arrayidx106 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands105, i32 0, i64 0
  %46 = load %union.tree_node*, %union.tree_node** %arrayidx106, align 8
  %call107 = call i64 @tree_low_cst(%union.tree_node* %46, i32 0)
  store i64 %call107, i64* %lo_index, align 8
  %47 = load %union.tree_node*, %union.tree_node** %index, align 8
  %exp108 = bitcast %union.tree_node* %47 to %struct.tree_exp*
  %operands109 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp108, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands109, i32 0, i64 1
  %48 = load %union.tree_node*, %union.tree_node** %arrayidx110, align 8
  %call111 = call i64 @tree_low_cst(%union.tree_node* %48, i32 0)
  store i64 %call111, i64* %hi_index, align 8
  %49 = load i32, i32* %align.addr, align 4
  %50 = load i64, i64* %fieldsize, align 8
  %mul = mul i64 %50, 8
  %conv = trunc i64 %mul to i32
  %call113 = call i32 @min_align(i32 %49, i32 %conv)
  store i32 %call113, i32* %align2, align 4
  %51 = load i64, i64* %lo_index, align 8
  store i64 %51, i64* %index112, align 8
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc, %if.then.101
  %52 = load i64, i64* %index112, align 8
  %53 = load i64, i64* %hi_index, align 8
  %cmp115 = icmp sle i64 %52, %53
  br i1 %cmp115, label %for.body.117, label %for.end

for.body.117:                                     ; preds = %for.cond.114
  %54 = load %union.tree_node*, %union.tree_node** %val, align 8
  %cmp118 = icmp eq %union.tree_node* %54, null
  br i1 %cmp118, label %if.then.120, label %if.else.122

if.then.120:                                      ; preds = %for.body.117
  %55 = load i64, i64* %fieldsize, align 8
  %conv121 = trunc i64 %55 to i32
  call void @assemble_zeros(i32 %conv121)
  br label %if.end.123

if.else.122:                                      ; preds = %for.body.117
  %56 = load %union.tree_node*, %union.tree_node** %val, align 8
  %57 = load i64, i64* %fieldsize, align 8
  %58 = load i32, i32* %align2, align 4
  call void @output_constant(%union.tree_node* %56, i64 %57, i32 %58)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.122, %if.then.120
  %59 = load i64, i64* %fieldsize, align 8
  %60 = load i64, i64* %total_bytes, align 8
  %add = add i64 %60, %59
  store i64 %add, i64* %total_bytes, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %61 = load i64, i64* %index112, align 8
  %inc = add nsw i64 %61, 1
  store i64 %inc, i64* %index112, align 8
  br label %for.cond.114

for.end:                                          ; preds = %for.cond.114
  br label %if.end.339

if.else.124:                                      ; preds = %land.lhs.true.95, %if.end.93
  %62 = load %union.tree_node*, %union.tree_node** %field, align 8
  %cmp125 = icmp eq %union.tree_node* %62, null
  br i1 %cmp125, label %if.then.132, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %if.else.124
  %63 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl = bitcast %union.tree_node* %63 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %64 = bitcast i48* %bit_field_flag to i64*
  %bf.load128 = load i64, i64* %64, align 8
  %bf.lshr129 = lshr i64 %bf.load128, 12
  %bf.clear130 = and i64 %bf.lshr129, 1
  %bf.cast = trunc i64 %bf.clear130 to i32
  %tobool131 = icmp ne i32 %bf.cast, 0
  br i1 %tobool131, label %if.else.231, label %if.then.132

if.then.132:                                      ; preds = %lor.lhs.false.127, %if.else.124
  %65 = load %union.tree_node*, %union.tree_node** %field, align 8
  %tobool134 = icmp ne %union.tree_node* %65, null
  br i1 %tobool134, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.132
  %66 = load %union.tree_node*, %union.tree_node** %field, align 8
  %call135 = call i64 @int_byte_position(%union.tree_node* %66)
  br label %cond.end

cond.false:                                       ; preds = %if.then.132
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call135, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %pos, align 8
  %67 = load %union.tree_node*, %union.tree_node** %index, align 8
  %cmp137 = icmp ne %union.tree_node* %67, null
  br i1 %cmp137, label %if.then.139, label %if.end.147

if.then.139:                                      ; preds = %cond.end
  %68 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common140 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %type141 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common140, i32 0, i32 1
  %69 = load %union.tree_node*, %union.tree_node** %type141, align 8
  %type142 = bitcast %union.tree_node* %69 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type142, i32 0, i32 3
  %70 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call143 = call i64 @tree_low_cst(%union.tree_node* %70, i32 1)
  %71 = load %union.tree_node*, %union.tree_node** %index, align 8
  %call144 = call i64 @tree_low_cst(%union.tree_node* %71, i32 0)
  %72 = load %union.tree_node*, %union.tree_node** %min_index, align 8
  %call145 = call i64 @tree_low_cst(%union.tree_node* %72, i32 0)
  %sub = sub nsw i64 %call144, %call145
  %mul146 = mul nsw i64 %call143, %sub
  store i64 %mul146, i64* %pos, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.139, %cond.end
  %73 = load i32, i32* %byte_buffer_in_use, align 4
  %tobool148 = icmp ne i32 %73, 0
  br i1 %tobool148, label %if.then.149, label %if.end.154

if.then.149:                                      ; preds = %if.end.147
  %74 = load i32, i32* %byte, align 4
  %conv150 = sext i32 %74 to i64
  %call151 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv150)
  %call152 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call151, i32 1, i32 8, i32 1)
  %75 = load i64, i64* %total_bytes, align 8
  %inc153 = add nsw i64 %75, 1
  store i64 %inc153, i64* %total_bytes, align 8
  store i32 0, i32* %byte_buffer_in_use, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.149, %if.end.147
  %76 = load %union.tree_node*, %union.tree_node** %field, align 8
  %cmp155 = icmp ne %union.tree_node* %76, null
  br i1 %cmp155, label %land.lhs.true.160, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %if.end.154
  %77 = load %union.tree_node*, %union.tree_node** %index, align 8
  %cmp158 = icmp ne %union.tree_node* %77, null
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.166

land.lhs.true.160:                                ; preds = %lor.lhs.false.157, %if.end.154
  %78 = load i64, i64* %pos, align 8
  %79 = load i64, i64* %total_bytes, align 8
  %cmp161 = icmp ne i64 %78, %79
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %land.lhs.true.160
  %80 = load i64, i64* %pos, align 8
  %81 = load i64, i64* %total_bytes, align 8
  %sub164 = sub nsw i64 %80, %81
  %conv165 = trunc i64 %sub164 to i32
  call void @assemble_zeros(i32 %conv165)
  %82 = load i64, i64* %pos, align 8
  store i64 %82, i64* %total_bytes, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %land.lhs.true.160, %lor.lhs.false.157
  %83 = load i32, i32* %align.addr, align 4
  %84 = load i64, i64* %pos, align 8
  %mul167 = mul nsw i64 8, %84
  %conv168 = trunc i64 %mul167 to i32
  %call169 = call i32 @min_align(i32 %83, i32 %conv168)
  store i32 %call169, i32* %align2136, align 4
  %85 = load %union.tree_node*, %union.tree_node** %field, align 8
  %tobool170 = icmp ne %union.tree_node* %85, null
  br i1 %tobool170, label %if.then.171, label %if.else.219

if.then.171:                                      ; preds = %if.end.166
  store i64 0, i64* %fieldsize133, align 8
  %86 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common172 = bitcast %union.tree_node* %86 to %struct.tree_common*
  %type173 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common172, i32 0, i32 1
  %87 = load %union.tree_node*, %union.tree_node** %type173, align 8
  %common174 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %code175 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common174, i32 0, i32 2
  %bf.load176 = load i32, i32* %code175, align 8
  %bf.clear177 = and i32 %bf.load176, 255
  %cmp178 = icmp eq i32 %bf.clear177, 18
  br i1 %cmp178, label %land.lhs.true.180, label %if.else.203

land.lhs.true.180:                                ; preds = %if.then.171
  %88 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common181 = bitcast %union.tree_node* %88 to %struct.tree_common*
  %type182 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common181, i32 0, i32 1
  %89 = load %union.tree_node*, %union.tree_node** %type182, align 8
  %type183 = bitcast %union.tree_node* %89 to %struct.tree_type*
  %values184 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type183, i32 0, i32 1
  %90 = load %union.tree_node*, %union.tree_node** %values184, align 8
  %tobool185 = icmp ne %union.tree_node* %90, null
  br i1 %tobool185, label %land.lhs.true.186, label %if.else.203

land.lhs.true.186:                                ; preds = %land.lhs.true.180
  %91 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common187 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %type188 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common187, i32 0, i32 1
  %92 = load %union.tree_node*, %union.tree_node** %type188, align 8
  %type189 = bitcast %union.tree_node* %92 to %struct.tree_type*
  %values190 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type189, i32 0, i32 1
  %93 = load %union.tree_node*, %union.tree_node** %values190, align 8
  %type191 = bitcast %union.tree_node* %93 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type191, i32 0, i32 13
  %94 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %tobool192 = icmp ne %union.tree_node* %94, null
  br i1 %tobool192, label %if.else.203, label %if.then.193

if.then.193:                                      ; preds = %land.lhs.true.186
  %95 = load %union.tree_node*, %union.tree_node** %val, align 8
  %call194 = call i64 @array_size_for_constructor(%union.tree_node* %95)
  store i64 %call194, i64* %fieldsize133, align 8
  %96 = load i64, i64* %fieldsize133, align 8
  %cmp195 = icmp ne i64 %96, 0
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.202

land.lhs.true.197:                                ; preds = %if.then.193
  %97 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common198 = bitcast %union.tree_node* %97 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common198, i32 0, i32 0
  %98 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %cmp199 = icmp ne %union.tree_node* %98, null
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %land.lhs.true.197
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4821, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.output_constructor, i32 0, i32 0)) #8
  unreachable

if.end.202:                                       ; preds = %land.lhs.true.197, %if.then.193
  br label %if.end.218

if.else.203:                                      ; preds = %land.lhs.true.186, %land.lhs.true.180, %if.then.171
  %99 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl204 = bitcast %union.tree_node* %99 to %struct.tree_decl*
  %size_unit205 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl204, i32 0, i32 7
  %100 = load %union.tree_node*, %union.tree_node** %size_unit205, align 8
  %tobool206 = icmp ne %union.tree_node* %100, null
  br i1 %tobool206, label %if.then.207, label %if.end.217

if.then.207:                                      ; preds = %if.else.203
  %101 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl208 = bitcast %union.tree_node* %101 to %struct.tree_decl*
  %size_unit209 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl208, i32 0, i32 7
  %102 = load %union.tree_node*, %union.tree_node** %size_unit209, align 8
  %call210 = call i32 @host_integerp(%union.tree_node* %102, i32 1)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.then.212, label %if.end.216

if.then.212:                                      ; preds = %if.then.207
  %103 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl213 = bitcast %union.tree_node* %103 to %struct.tree_decl*
  %size_unit214 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl213, i32 0, i32 7
  %104 = load %union.tree_node*, %union.tree_node** %size_unit214, align 8
  %call215 = call i64 @tree_low_cst(%union.tree_node* %104, i32 1)
  store i64 %call215, i64* %fieldsize133, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.212, %if.then.207
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.else.203
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.202
  br label %if.end.223

if.else.219:                                      ; preds = %if.end.166
  %105 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common220 = bitcast %union.tree_node* %105 to %struct.tree_common*
  %type221 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common220, i32 0, i32 1
  %106 = load %union.tree_node*, %union.tree_node** %type221, align 8
  %call222 = call i64 @int_size_in_bytes(%union.tree_node* %106)
  store i64 %call222, i64* %fieldsize133, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.219, %if.end.218
  %107 = load %union.tree_node*, %union.tree_node** %val, align 8
  %cmp224 = icmp eq %union.tree_node* %107, null
  br i1 %cmp224, label %if.then.226, label %if.else.228

if.then.226:                                      ; preds = %if.end.223
  %108 = load i64, i64* %fieldsize133, align 8
  %conv227 = trunc i64 %108 to i32
  call void @assemble_zeros(i32 %conv227)
  br label %if.end.229

if.else.228:                                      ; preds = %if.end.223
  %109 = load %union.tree_node*, %union.tree_node** %val, align 8
  %110 = load i64, i64* %fieldsize133, align 8
  %111 = load i32, i32* %align2136, align 4
  call void @output_constant(%union.tree_node* %109, i64 %110, i32 %111)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.228, %if.then.226
  %112 = load i64, i64* %fieldsize133, align 8
  %113 = load i64, i64* %total_bytes, align 8
  %add230 = add i64 %113, %112
  store i64 %add230, i64* %total_bytes, align 8
  br label %if.end.338

if.else.231:                                      ; preds = %lor.lhs.false.127
  %114 = load %union.tree_node*, %union.tree_node** %val, align 8
  %cmp232 = icmp ne %union.tree_node* %114, null
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.243

land.lhs.true.234:                                ; preds = %if.else.231
  %115 = load %union.tree_node*, %union.tree_node** %val, align 8
  %common235 = bitcast %union.tree_node* %115 to %struct.tree_common*
  %code236 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common235, i32 0, i32 2
  %bf.load237 = load i32, i32* %code236, align 8
  %bf.clear238 = and i32 %bf.load237, 255
  %cmp239 = icmp ne i32 %bf.clear238, 25
  br i1 %cmp239, label %if.then.241, label %if.else.243

if.then.241:                                      ; preds = %land.lhs.true.234
  %116 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl242 = bitcast %union.tree_node* %116 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl242, i32 0, i32 8
  %117 = load %union.tree_node*, %union.tree_node** %name, align 8
  %identifier = bitcast %union.tree_node* %117 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %118 = load i8*, i8** %str, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i32 0, i32 0), i8* %118)
  br label %if.end.337

if.else.243:                                      ; preds = %land.lhs.true.234, %if.else.231
  %119 = load %union.tree_node*, %union.tree_node** %field, align 8
  %call244 = call i64 @int_bit_position(%union.tree_node* %119)
  store i64 %call244, i64* %next_offset, align 8
  %120 = load i64, i64* %next_offset, align 8
  %121 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl245 = bitcast %union.tree_node* %121 to %struct.tree_decl*
  %size246 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl245, i32 0, i32 4
  %122 = load %union.tree_node*, %union.tree_node** %size246, align 8
  %call247 = call i64 @tree_low_cst(%union.tree_node* %122, i32 1)
  %add248 = add nsw i64 %120, %call247
  store i64 %add248, i64* %end_offset, align 8
  %123 = load %union.tree_node*, %union.tree_node** %val, align 8
  %cmp249 = icmp eq %union.tree_node* %123, null
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %if.else.243
  %124 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  store %union.tree_node* %124, %union.tree_node** %val, align 8
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.251, %if.else.243
  %125 = load i64, i64* %next_offset, align 8
  %div = sdiv i64 %125, 8
  %126 = load i64, i64* %total_bytes, align 8
  %cmp253 = icmp ne i64 %div, %126
  br i1 %cmp253, label %if.then.255, label %if.end.272

if.then.255:                                      ; preds = %if.end.252
  %127 = load i32, i32* %byte_buffer_in_use, align 4
  %tobool256 = icmp ne i32 %127, 0
  br i1 %tobool256, label %if.then.257, label %if.end.262

if.then.257:                                      ; preds = %if.then.255
  %128 = load i32, i32* %byte, align 4
  %conv258 = sext i32 %128 to i64
  %call259 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv258)
  %call260 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call259, i32 1, i32 8, i32 1)
  %129 = load i64, i64* %total_bytes, align 8
  %inc261 = add nsw i64 %129, 1
  store i64 %inc261, i64* %total_bytes, align 8
  store i32 0, i32* %byte_buffer_in_use, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.257, %if.then.255
  %130 = load i64, i64* %next_offset, align 8
  %div263 = sdiv i64 %130, 8
  %131 = load i64, i64* %total_bytes, align 8
  %cmp264 = icmp ne i64 %div263, %131
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.262
  %132 = load i64, i64* %next_offset, align 8
  %div267 = sdiv i64 %132, 8
  %133 = load i64, i64* %total_bytes, align 8
  %sub268 = sub nsw i64 %div267, %133
  %conv269 = trunc i64 %sub268 to i32
  call void @assemble_zeros(i32 %conv269)
  %134 = load i64, i64* %next_offset, align 8
  %div270 = sdiv i64 %134, 8
  store i64 %div270, i64* %total_bytes, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.266, %if.end.262
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.252
  %135 = load i32, i32* %byte_buffer_in_use, align 4
  %tobool273 = icmp ne i32 %135, 0
  br i1 %tobool273, label %if.end.275, label %if.then.274

if.then.274:                                      ; preds = %if.end.272
  store i32 0, i32* %byte, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.end.272
  br label %while.cond.276

while.cond.276:                                   ; preds = %if.end.327, %if.end.275
  %136 = load i64, i64* %next_offset, align 8
  %137 = load i64, i64* %end_offset, align 8
  %cmp277 = icmp slt i64 %136, %137
  br i1 %cmp277, label %while.body.279, label %while.end.336

while.body.279:                                   ; preds = %while.cond.276
  %138 = load i64, i64* %next_offset, align 8
  %div281 = sdiv i64 %138, 8
  store i64 %div281, i64* %next_byte, align 8
  %139 = load i64, i64* %next_offset, align 8
  %rem = srem i64 %139, 8
  store i64 %rem, i64* %next_bit, align 8
  br label %while.cond.282

while.cond.282:                                   ; preds = %while.body.285, %while.body.279
  %140 = load i64, i64* %next_byte, align 8
  %141 = load i64, i64* %total_bytes, align 8
  %cmp283 = icmp ne i64 %140, %141
  br i1 %cmp283, label %while.body.285, label %while.end.290

while.body.285:                                   ; preds = %while.cond.282
  %142 = load i32, i32* %byte, align 4
  %conv286 = sext i32 %142 to i64
  %call287 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv286)
  %call288 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call287, i32 1, i32 8, i32 1)
  %143 = load i64, i64* %total_bytes, align 8
  %inc289 = add nsw i64 %143, 1
  store i64 %inc289, i64* %total_bytes, align 8
  store i32 0, i32* %byte, align 4
  br label %while.cond.282

while.end.290:                                    ; preds = %while.cond.282
  %144 = load i64, i64* %end_offset, align 8
  %145 = load i64, i64* %next_offset, align 8
  %sub291 = sub nsw i64 %144, %145
  %146 = load i64, i64* %next_bit, align 8
  %sub292 = sub nsw i64 8, %146
  %cmp293 = icmp slt i64 %sub291, %sub292
  br i1 %cmp293, label %cond.true.295, label %cond.false.297

cond.true.295:                                    ; preds = %while.end.290
  %147 = load i64, i64* %end_offset, align 8
  %148 = load i64, i64* %next_offset, align 8
  %sub296 = sub nsw i64 %147, %148
  br label %cond.end.299

cond.false.297:                                   ; preds = %while.end.290
  %149 = load i64, i64* %next_bit, align 8
  %sub298 = sub nsw i64 8, %149
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.297, %cond.true.295
  %cond300 = phi i64 [ %sub296, %cond.true.295 ], [ %sub298, %cond.false.297 ]
  %conv301 = trunc i64 %cond300 to i32
  store i32 %conv301, i32* %this_time, align 4
  %150 = load i64, i64* %next_offset, align 8
  %151 = load %union.tree_node*, %union.tree_node** %field, align 8
  %call302 = call i64 @int_bit_position(%union.tree_node* %151)
  %sub303 = sub nsw i64 %150, %call302
  %conv304 = trunc i64 %sub303 to i32
  store i32 %conv304, i32* %shift, align 4
  %152 = load i32, i32* %shift, align 4
  %cmp305 = icmp slt i32 %152, 64
  br i1 %cmp305, label %land.lhs.true.307, label %if.end.313

land.lhs.true.307:                                ; preds = %cond.end.299
  %153 = load i32, i32* %shift, align 4
  %154 = load i32, i32* %this_time, align 4
  %add308 = add nsw i32 %153, %154
  %cmp309 = icmp sgt i32 %add308, 64
  br i1 %cmp309, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %land.lhs.true.307
  %155 = load i32, i32* %shift, align 4
  %sub312 = sub nsw i32 64, %155
  store i32 %sub312, i32* %this_time, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %land.lhs.true.307, %cond.end.299
  %156 = load i32, i32* %shift, align 4
  %cmp314 = icmp slt i32 %156, 64
  br i1 %cmp314, label %if.then.316, label %if.else.318

if.then.316:                                      ; preds = %if.end.313
  %157 = load %union.tree_node*, %union.tree_node** %val, align 8
  %int_cst = bitcast %union.tree_node* %157 to %struct.tree_int_cst*
  %int_cst317 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst317, i32 0, i32 0
  %158 = load i64, i64* %low, align 8
  store i64 %158, i64* %value280, align 8
  br label %if.end.327

if.else.318:                                      ; preds = %if.end.313
  %159 = load i32, i32* %shift, align 4
  %cmp319 = icmp slt i32 %159, 128
  br i1 %cmp319, label %if.then.321, label %if.else.325

if.then.321:                                      ; preds = %if.else.318
  %160 = load %union.tree_node*, %union.tree_node** %val, align 8
  %int_cst322 = bitcast %union.tree_node* %160 to %struct.tree_int_cst*
  %int_cst323 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst322, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst323, i32 0, i32 1
  %161 = load i64, i64* %high, align 8
  store i64 %161, i64* %value280, align 8
  %162 = load i32, i32* %shift, align 4
  %sub324 = sub nsw i32 %162, 64
  store i32 %sub324, i32* %shift, align 4
  br label %if.end.326

if.else.325:                                      ; preds = %if.else.318
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4969, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.output_constructor, i32 0, i32 0)) #8
  unreachable

if.end.326:                                       ; preds = %if.then.321
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.316
  %163 = load i64, i64* %value280, align 8
  %164 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %164 to i64
  %shr = ashr i64 %163, %sh_prom
  %165 = load i32, i32* %this_time, align 4
  %sub328 = sub nsw i32 %165, 1
  %sh_prom329 = zext i32 %sub328 to i64
  %shl = shl i64 2, %sh_prom329
  %sub330 = sub nsw i64 %shl, 1
  %and = and i64 %shr, %sub330
  %166 = load i64, i64* %next_bit, align 8
  %shl331 = shl i64 %and, %166
  %167 = load i32, i32* %byte, align 4
  %conv332 = sext i32 %167 to i64
  %or = or i64 %conv332, %shl331
  %conv333 = trunc i64 %or to i32
  store i32 %conv333, i32* %byte, align 4
  %168 = load i32, i32* %this_time, align 4
  %conv334 = sext i32 %168 to i64
  %169 = load i64, i64* %next_offset, align 8
  %add335 = add nsw i64 %169, %conv334
  store i64 %add335, i64* %next_offset, align 8
  store i32 1, i32* %byte_buffer_in_use, align 4
  br label %while.cond.276

while.end.336:                                    ; preds = %while.cond.276
  br label %if.end.337

if.end.337:                                       ; preds = %while.end.336, %if.then.241
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.end.229
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %for.end
  br label %for.inc.340

for.inc.340:                                      ; preds = %if.end.339
  %170 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common341 = bitcast %union.tree_node* %170 to %struct.tree_common*
  %chain342 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common341, i32 0, i32 0
  %171 = load %union.tree_node*, %union.tree_node** %chain342, align 8
  store %union.tree_node* %171, %union.tree_node** %link, align 8
  %172 = load %union.tree_node*, %union.tree_node** %field, align 8
  %tobool343 = icmp ne %union.tree_node* %172, null
  br i1 %tobool343, label %cond.true.344, label %cond.false.347

cond.true.344:                                    ; preds = %for.inc.340
  %173 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common345 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %chain346 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common345, i32 0, i32 0
  %174 = load %union.tree_node*, %union.tree_node** %chain346, align 8
  br label %cond.end.348

cond.false.347:                                   ; preds = %for.inc.340
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.344
  %cond349 = phi %union.tree_node* [ %174, %cond.true.344 ], [ null, %cond.false.347 ]
  store %union.tree_node* %cond349, %union.tree_node** %field, align 8
  br label %for.cond

for.end.350:                                      ; preds = %for.cond
  %175 = load i32, i32* %byte_buffer_in_use, align 4
  %tobool351 = icmp ne i32 %175, 0
  br i1 %tobool351, label %if.then.352, label %if.end.357

if.then.352:                                      ; preds = %for.end.350
  %176 = load i32, i32* %byte, align 4
  %conv353 = sext i32 %176 to i64
  %call354 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv353)
  %call355 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call354, i32 1, i32 8, i32 1)
  %177 = load i64, i64* %total_bytes, align 8
  %inc356 = add nsw i64 %177, 1
  store i64 %inc356, i64* %total_bytes, align 8
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.352, %for.end.350
  %178 = load i64, i64* %total_bytes, align 8
  %179 = load i64, i64* %size.addr, align 8
  %cmp358 = icmp slt i64 %178, %179
  br i1 %cmp358, label %if.then.360, label %if.end.363

if.then.360:                                      ; preds = %if.end.357
  %180 = load i64, i64* %size.addr, align 8
  %181 = load i64, i64* %total_bytes, align 8
  %sub361 = sub nsw i64 %180, %181
  %conv362 = trunc i64 %sub361 to i32
  call void @assemble_zeros(i32 %conv362)
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.360, %if.end.357
  ret void
}

declare %union.tree_node* @get_set_constructor_bytes(%union.tree_node*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @merge_weak(%union.tree_node* %newdecl, %union.tree_node* %olddecl) #0 {
entry:
  %newdecl.addr = alloca %union.tree_node*, align 8
  %olddecl.addr = alloca %union.tree_node*, align 8
  %wd = alloca %union.tree_node*, align 8
  store %union.tree_node* %newdecl, %union.tree_node** %newdecl.addr, align 8
  store %union.tree_node* %olddecl, %union.tree_node** %olddecl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %1 = bitcast i48* %weak_flag to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 23
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %2 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %decl1 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %weak_flag2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %3 = bitcast i48* %weak_flag2 to i64*
  %bf.load3 = load i64, i64* %3, align 8
  %bf.lshr4 = lshr i64 %bf.load3, 23
  %bf.clear5 = and i64 %bf.lshr4, 1
  %bf.cast6 = trunc i64 %bf.clear5 to i32
  %cmp = icmp eq i32 %bf.cast, %bf.cast6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.44

if.end:                                           ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  %decl7 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %weak_flag8 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 5
  %5 = bitcast i48* %weak_flag8 to i64*
  %bf.load9 = load i64, i64* %5, align 8
  %bf.lshr10 = lshr i64 %bf.load9, 23
  %bf.clear11 = and i64 %bf.lshr10, 1
  %bf.cast12 = trunc i64 %bf.clear11 to i32
  %tobool = icmp ne i32 %bf.cast12, 0
  br i1 %tobool, label %if.then.13, label %if.else.43

if.then.13:                                       ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load14 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 14
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.13
  %7 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.104, i32 0, i32 0))
  br label %if.end.35

if.else:                                          ; preds = %if.then.13
  %8 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %common19 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load20 = load i32, i32* %used_flag, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 1
  %tobool23 = icmp ne i32 %bf.clear22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %decl24 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl24, i32 0, i32 14
  %10 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp25 = icmp ne %union.tree_node* %10, null
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %11 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %12 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  call void %11(%union.tree_node* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %13 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %decl26 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %assembler_name27 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 14
  %14 = load %union.tree_node*, %union.tree_node** %assembler_name27, align 8
  %common28 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load29 = load i32, i32* %static_flag, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 18
  %bf.clear31 = and i32 %bf.lshr30, 1
  %tobool32 = icmp ne i32 %bf.clear31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.end
  %15 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %15, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.105, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %cond.end, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.18
  %16 = load %union.tree_node*, %union.tree_node** @weak_decls, align 8
  store %union.tree_node* %16, %union.tree_node** %wd, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %17 = load %union.tree_node*, %union.tree_node** %wd, align 8
  %tobool36 = icmp ne %union.tree_node* %17, null
  br i1 %tobool36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %union.tree_node*, %union.tree_node** %wd, align 8
  %list = bitcast %union.tree_node* %18 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %value, align 8
  %20 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  %cmp37 = icmp eq %union.tree_node* %19, %20
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %for.body
  %21 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  %22 = load %union.tree_node*, %union.tree_node** %wd, align 8
  %list39 = bitcast %union.tree_node* %22 to %struct.tree_list*
  %value40 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list39, i32 0, i32 2
  store %union.tree_node* %21, %union.tree_node** %value40, align 8
  br label %for.end

if.end.41:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %23 = load %union.tree_node*, %union.tree_node** %wd, align 8
  %common42 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 0
  %24 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %24, %union.tree_node** %wd, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.38, %for.cond
  %25 = load %union.tree_node*, %union.tree_node** %olddecl.addr, align 8
  call void @mark_weak(%union.tree_node* %25)
  br label %if.end.44

if.else.43:                                       ; preds = %if.end
  %26 = load %union.tree_node*, %union.tree_node** %newdecl.addr, align 8
  call void @mark_weak(%union.tree_node* %26)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then, %if.else.43, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_weak(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %1 = bitcast i48* %weak_flag to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.clear = and i64 %bf.load, -8388609
  %bf.set = or i64 %bf.clear, 8388608
  store i64 %bf.set, i64* %1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 17
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp = icmp ne %struct.rtx_def* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl3 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %rtl4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 17
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtl4, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl5 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %rtl6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 17
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtl6, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %8, i8* null)
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl7 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl8 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl8, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %7, %cond.true ], [ %10, %cond.false ]
  %11 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load9 = load i32, i32* %11, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 66
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %cond.end
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl13 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %rtl14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 17
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtl14, align 8
  %tobool15 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool15, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %land.lhs.true.12
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl17 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %rtl18 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 17
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtl18, align 8
  br label %cond.end.22

cond.false.19:                                    ; preds = %land.lhs.true.12
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %16, i8* null)
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl20 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %rtl21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtl21, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.16
  %cond23 = phi %struct.rtx_def* [ %15, %cond.true.16 ], [ %18, %cond.false.19 ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool24 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %cond.end.22
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl26 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %rtl27 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtl27, align 8
  %tobool28 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %land.lhs.true.25
  %22 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl30 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %rtl31 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl30, i32 0, i32 17
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtl31, align 8
  br label %cond.end.35

cond.false.32:                                    ; preds = %land.lhs.true.25
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %24, i8* null)
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl33 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %rtl34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtl34, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.29
  %cond36 = phi %struct.rtx_def* [ %23, %cond.true.29 ], [ %26, %cond.false.32 ]
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond36, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load40 = load i32, i32* %28, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 68
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.35
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl43 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %rtl44 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl43, i32 0, i32 17
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtl44, align 8
  %tobool45 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool45, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %if.then
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl47 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %rtl48 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 17
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtl48, align 8
  br label %cond.end.52

cond.false.49:                                    ; preds = %if.then
  %33 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %33, i8* null)
  %34 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl50 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %rtl51 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl50, i32 0, i32 17
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtl51, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.49, %cond.true.46
  %cond53 = phi %struct.rtx_def* [ %32, %cond.true.46 ], [ %35, %cond.false.49 ]
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond53, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load57 = load i32, i32* %37, align 8
  %bf.clear58 = and i32 %bf.load57, -1073741825
  %bf.set59 = or i32 %bf.clear58, 1073741824
  store i32 %bf.set59, i32* %37, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.52, %cond.end.35, %cond.end.22, %cond.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @declare_weak(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.106, i32 0, i32 0))
  br label %if.end.18

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %code, align 8
  %bf.clear3 = and i32 %bf.load2, 255
  %cmp = icmp eq i32 %bf.clear3, 30
  br i1 %cmp, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load5 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 14
  %bf.clear7 = and i32 %bf.lshr6, 1
  %tobool8 = icmp ne i32 %bf.clear7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @error_with_decl(%union.tree_node* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.104, i32 0, i32 0))
  br label %if.end.17

if.else.10:                                       ; preds = %land.lhs.true, %if.else
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl11 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl11, i32 0, i32 5
  %6 = bitcast i48* %weak_flag to i64*
  %bf.load12 = load i64, i64* %6, align 8
  %bf.lshr13 = lshr i64 %bf.load12, 23
  %bf.clear14 = and i64 %bf.lshr13, 1
  %bf.cast = trunc i64 %bf.clear14 to i32
  %tobool15 = icmp ne i32 %bf.cast, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.else.10
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %8 = load %union.tree_node*, %union.tree_node** @weak_decls, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %7, %union.tree_node* %8)
  store %union.tree_node* %call, %union.tree_node** @weak_decls, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @mark_weak(%union.tree_node* %9)
  ret void
}

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @weak_finish() #0 {
entry:
  %t = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  %name = alloca i8*, align 8
  %0 = load %union.tree_node*, %union.tree_node** @weak_decls, align 8
  store %union.tree_node* %0, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %3, %union.tree_node** %decl, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 14
  %5 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp = icmp ne %union.tree_node* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void %6(%union.tree_node* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl2 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %assembler_name3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 14
  %9 = load %union.tree_node*, %union.tree_node** %assembler_name3, align 8
  %identifier = bitcast %union.tree_node* %9 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %10 = load i8*, i8** %str, align 8
  store i8* %10, i8** %name, align 8
  %11 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %11 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %used_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 1
  %tobool4 = icmp ne i32 %bf.clear, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %for.inc

if.end:                                           ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %14 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %13, i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call5 = call i32 @fputc(i32 10, %struct._IO_FILE* %15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common6 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 0
  %17 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %17, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_alias(%union.tree_node* %decl, %union.tree_node* %target) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %union.tree_node*, align 8
  %name = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %target, %union.tree_node** %target.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %0, i8* null)
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 14
  %2 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp = icmp ne %union.tree_node* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %3(%union.tree_node* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %assembler_name3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %assembler_name3, align 8
  %identifier = bitcast %union.tree_node* %6 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %7 = load i8*, i8** %str, align 8
  store i8* %7, i8** %name, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @globalize_decl(%union.tree_node* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %12 = load i8*, i8** %name, align 8
  call void @assemble_name(%struct._IO_FILE* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %15 = load %union.tree_node*, %union.tree_node** %target.addr, align 8
  %identifier5 = bitcast %union.tree_node* %15 to %struct.tree_identifier*
  %id6 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier5, i32 0, i32 1
  %str7 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id6, i32 0, i32 1
  %16 = load i8*, i8** %str7, align 8
  call void @assemble_name(%struct._IO_FILE* %14, i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common9 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load10 = load i32, i32* %used_flag, align 8
  %bf.clear11 = and i32 %bf.load10, -65537
  %bf.set = or i32 %bf.clear11, 65536
  store i32 %bf.set, i32* %used_flag, align 8
  %19 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common12 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load13 = load i32, i32* %asm_written_flag, align 8
  %bf.clear14 = and i32 %bf.load13, -16385
  %bf.set15 = or i32 %bf.clear14, 16384
  store i32 %bf.set15, i32* %asm_written_flag, align 8
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl16 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %assembler_name17 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 14
  %21 = load %union.tree_node*, %union.tree_node** %assembler_name17, align 8
  %cmp18 = icmp ne %union.tree_node* %21, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %do.end
  br label %cond.end.21

cond.false.20:                                    ; preds = %do.end
  %22 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %22(%union.tree_node* %23)
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl22 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %assembler_name23 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl22, i32 0, i32 14
  %25 = load %union.tree_node*, %union.tree_node** %assembler_name23, align 8
  %common24 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %asm_written_flag25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %asm_written_flag25, align 8
  %bf.clear27 = and i32 %bf.load26, -16385
  %bf.set28 = or i32 %bf.clear27, 16384
  store i32 %bf.set28, i32* %asm_written_flag25, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @supports_one_only() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @make_decl_one_only(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp ne i32 %bf.clear4, 30
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 5221, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.make_decl_one_only, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common6 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %public_flag, align 8
  %bf.clear8 = and i32 %bf.load7, -524289
  %bf.set = or i32 %bf.clear8, 524288
  store i32 %bf.set, i32* %public_flag, align 8
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common9 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %code10, align 8
  %bf.clear12 = and i32 %bf.load11, 255
  %cmp13 = icmp eq i32 %bf.clear12, 34
  br i1 %cmp13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl15 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 12
  %5 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp16 = icmp eq %union.tree_node* %5, null
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl17 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %initial18 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 12
  %7 = load %union.tree_node*, %union.tree_node** %initial18, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp19 = icmp eq %union.tree_node* %7, %8
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %lor.lhs.false, %land.lhs.true.14
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl21 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %common_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 5
  %10 = bitcast i48* %common_flag to i64*
  %bf.load22 = load i64, i64* %10, align 8
  %bf.clear23 = and i64 %bf.load22, -131073
  %bf.set24 = or i64 %bf.clear23, 131072
  store i64 %bf.set24, i64* %10, align 8
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false, %if.end
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl25 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %weak_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl25, i32 0, i32 5
  %12 = bitcast i48* %weak_flag to i64*
  %bf.load26 = load i64, i64* %12, align 8
  %bf.clear27 = and i64 %bf.load26, -8388609
  %bf.set28 = or i64 %bf.clear27, 8388608
  store i64 %bf.set28, i64* %12, align 8
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl29 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl29, i32 0, i32 5
  %14 = bitcast i48* %transparent_union to i64*
  %bf.load30 = load i64, i64* %14, align 8
  %bf.clear31 = and i64 %bf.load30, -524289
  %bf.set32 = or i64 %bf.clear31, 524288
  store i64 %bf.set32, i64* %14, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.20
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_varasm_once() #0 {
entry:
  %call = call %struct.htab* @htab_create(i64 128, i32 (i8*)* @const_str_htab_hash, i32 (i8*, i8*)* @const_str_htab_eq, void (i8*)* @const_str_htab_del)
  store %struct.htab* %call, %struct.htab** @const_str_htab, align 8
  %call1 = call %struct.htab* @htab_create(i64 31, i32 (i8*)* @in_named_entry_hash, i32 (i8*, i8*)* @in_named_entry_eq, void (i8*)* null)
  store %struct.htab* %call1, %struct.htab** @in_named_htab, align 8
  call void @ggc_add_root(i8* bitcast ([1009 x %struct.constant_descriptor*]* @const_hash_table to i8*), i32 1009, i32 8, void (i8*)* @mark_const_hash_entry)
  call void @ggc_add_root(i8* bitcast (%struct.htab** @const_str_htab to i8*), i32 1, i32 8, void (i8*)* @mark_const_str_htab)
  call void @ggc_add_tree_root(%union.tree_node** @weak_decls, i32 1)
  %call2 = call i64 @new_alias_set()
  store i64 %call2, i64* @const_alias_set, align 8
  ret void
}

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @const_str_htab_hash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.deferred_string*
  %label = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %1, i32 0, i32 0
  %2 = load i8*, i8** %label, align 8
  %3 = ptrtoint i8* %2 to i64
  %shr = ashr i64 %3, 3
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @const_str_htab_eq(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.deferred_string*
  %label = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %1, i32 0, i32 0
  %2 = load i8*, i8** %label, align 8
  %3 = load i8*, i8** %y.addr, align 8
  %cmp = icmp eq i8* %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @const_str_htab_del(i8* %dfsp) #0 {
entry:
  %dfsp.addr = alloca i8*, align 8
  store i8* %dfsp, i8** %dfsp.addr, align 8
  %0 = load i8*, i8** %dfsp.addr, align 8
  call void @free(i8* %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @in_named_entry_hash(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %old = alloca %struct.in_named_entry*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.in_named_entry*
  store %struct.in_named_entry* %1, %struct.in_named_entry** %old, align 8
  %2 = load %struct.in_named_entry*, %struct.in_named_entry** %old, align 8
  %name = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 @htab_hash_string(i8* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @in_named_entry_eq(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %old = alloca %struct.in_named_entry*, align 8
  %new = alloca i8*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = bitcast i8* %0 to %struct.in_named_entry*
  store %struct.in_named_entry* %1, %struct.in_named_entry** %old, align 8
  %2 = load i8*, i8** %p2.addr, align 8
  store i8* %2, i8** %new, align 8
  %3 = load %struct.in_named_entry*, %struct.in_named_entry** %old, align 8
  %name = getelementptr inbounds %struct.in_named_entry, %struct.in_named_entry* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %5 = load i8*, i8** %new, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #7
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @ggc_add_root(i8*, i32, i32, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_const_hash_entry(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %desc = alloca %struct.constant_descriptor*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct.constant_descriptor**
  %2 = load %struct.constant_descriptor*, %struct.constant_descriptor** %1, align 8
  store %struct.constant_descriptor* %2, %struct.constant_descriptor** %desc, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %3 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %tobool = icmp ne %struct.constant_descriptor* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %4 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %rtl = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %4, i32 0, i32 2
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %r__, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp = icmp ne %struct.rtx_def* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %8 = bitcast %struct.rtx_def* %7 to i8*
  %call = call i32 @ggc_set_mark(i8* %8)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct.constant_descriptor*, %struct.constant_descriptor** %desc, align 8
  %next = getelementptr inbounds %struct.constant_descriptor, %struct.constant_descriptor* %10, i32 0, i32 0
  %11 = load %struct.constant_descriptor*, %struct.constant_descriptor** %next, align 8
  store %struct.constant_descriptor* %11, %struct.constant_descriptor** %desc, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_const_str_htab(i8* %htab) #0 {
entry:
  %htab.addr = alloca i8*, align 8
  store i8* %htab, i8** %htab.addr, align 8
  %0 = load i8*, i8** %htab.addr, align 8
  %1 = bitcast i8* %0 to %struct.htab**
  %2 = load %struct.htab*, %struct.htab** %1, align 8
  call void @htab_traverse(%struct.htab* %2, i32 (i8**, i8*)* @mark_const_str_htab_1, i8* null)
  ret void
}

declare void @ggc_add_tree_root(%union.tree_node**, i32) #1

declare i64 @new_alias_set() #1

; Function Attrs: nounwind uwtable
define i32 @default_section_type_flags(%union.tree_node* %decl, i8* %name, i32 %reloc) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %name.addr = alloca i8*, align 8
  %reloc.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %reloc, i32* %reloc.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 256, i32* %flags, align 4
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool1 = icmp ne %union.tree_node* %2, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else.38

land.lhs.true.2:                                  ; preds = %if.else
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common3 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load4 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load4, 12
  %bf.clear5 = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.38

land.lhs.true.7:                                  ; preds = %land.lhs.true.2
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common8 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load9 = load i32, i32* %volatile_flag, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 11
  %bf.clear11 = and i32 %bf.lshr10, 1
  %tobool12 = icmp ne i32 %bf.clear11, 0
  br i1 %tobool12, label %if.else.38, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl14 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 12
  %6 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool15 = icmp ne %union.tree_node* %6, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.else.38

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl17 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %initial18 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 12
  %8 = load %union.tree_node*, %union.tree_node** %initial18, align 8
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp19 = icmp eq %union.tree_node* %8, %9
  br i1 %cmp19, label %land.lhs.true.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl20 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %initial21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 12
  %11 = load %union.tree_node*, %union.tree_node** %initial21, align 8
  %common22 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load23 = load i32, i32* %constant_flag, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 9
  %bf.clear25 = and i32 %bf.lshr24, 1
  %tobool26 = icmp ne i32 %bf.clear25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.38

land.lhs.true.27:                                 ; preds = %lor.lhs.false, %land.lhs.true.16
  %12 = load i32, i32* %reloc.addr, align 4
  %tobool28 = icmp ne i32 %12, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.then.37

land.lhs.true.29:                                 ; preds = %land.lhs.true.27
  %13 = load i32, i32* @flag_pic, align 4
  %tobool30 = icmp ne i32 %13, 0
  br i1 %tobool30, label %if.else.38, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.29
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl32 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %transparent_union = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl32, i32 0, i32 5
  %15 = bitcast i48* %transparent_union to i64*
  %bf.load33 = load i64, i64* %15, align 8
  %bf.lshr34 = lshr i64 %bf.load33, 19
  %bf.clear35 = and i64 %bf.lshr34, 1
  %bf.cast = trunc i64 %bf.clear35 to i32
  %tobool36 = icmp ne i32 %bf.cast, 0
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false.31, %land.lhs.true.27
  store i32 0, i32* %flags, align 4
  br label %if.end

if.else.38:                                       ; preds = %lor.lhs.false.31, %land.lhs.true.29, %lor.lhs.false, %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true.2, %if.else
  store i32 512, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.38, %if.then.37
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool40 = icmp ne %union.tree_node* %16, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.50

land.lhs.true.41:                                 ; preds = %if.end.39
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl42 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %transparent_union43 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl42, i32 0, i32 5
  %18 = bitcast i48* %transparent_union43 to i64*
  %bf.load44 = load i64, i64* %18, align 8
  %bf.lshr45 = lshr i64 %bf.load44, 19
  %bf.clear46 = and i64 %bf.lshr45, 1
  %bf.cast47 = trunc i64 %bf.clear46 to i32
  %tobool48 = icmp ne i32 %bf.cast47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.41
  %19 = load i32, i32* %flags, align 4
  %or = or i32 %19, 2048
  store i32 %or, i32* %flags, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true.41, %if.end.39
  %20 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0)) #7
  %cmp51 = icmp eq i32 %call, 0
  br i1 %cmp51, label %if.then.67, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.50
  %21 = load i8*, i8** %name.addr, align 8
  %call53 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i64 5) #7
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.67, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.52
  %22 = load i8*, i8** %name.addr, align 8
  %call56 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i64 16) #7
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.67, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.55
  %23 = load i8*, i8** %name.addr, align 8
  %call59 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0)) #7
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.67, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.58
  %24 = load i8*, i8** %name.addr, align 8
  %call62 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i64 6) #7
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.61
  %25 = load i8*, i8** %name.addr, align 8
  %call65 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i64 17) #7
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false.61, %lor.lhs.false.58, %lor.lhs.false.55, %lor.lhs.false.52, %if.end.50
  %26 = load i32, i32* %flags, align 4
  %or68 = or i32 %26, 8192
  store i32 %or68, i32* %flags, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %lor.lhs.false.64
  %27 = load i32, i32* %flags, align 4
  ret i32 %27
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @default_no_named_section(i8* %name, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 5304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.default_no_named_section, i32 0, i32 0)) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_elf_asm_named_section(i8* %name, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %flagchars = alloca [10 x i8], align 1
  %f = alloca i8*, align 8
  %type = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %flagchars, i32 0, i32 0
  store i8* %arraydecay, i8** %f, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call zeroext i1 @named_section_first_declaration(i8* %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0), i8* %2)
  br label %if.end.42

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %flags.addr, align 4
  %and = and i32 %3, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %f, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %f, align 8
  store i8 97, i8* %4, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %flags.addr, align 4
  %and4 = and i32 %5, 512
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %6 = load i8*, i8** %f, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr7, i8** %f, align 8
  store i8 119, i8* %6, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.3
  %7 = load i32, i32* %flags.addr, align 4
  %and9 = and i32 %7, 256
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %8 = load i8*, i8** %f, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr12, i8** %f, align 8
  store i8 120, i8* %8, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %9 = load i32, i32* %flags.addr, align 4
  %and14 = and i32 %9, 4096
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %10 = load i8*, i8** %f, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr17, i8** %f, align 8
  store i8 115, i8* %10, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  %11 = load i32, i32* %flags.addr, align 4
  %and19 = and i32 %11, 32768
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %12 = load i8*, i8** %f, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr22, i8** %f, align 8
  store i8 77, i8* %12, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.18
  %13 = load i32, i32* %flags.addr, align 4
  %and24 = and i32 %13, 65536
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %14 = load i8*, i8** %f, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr27, i8** %f, align 8
  store i8 83, i8* %14, align 1
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  %15 = load i8*, i8** %f, align 8
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* %flags.addr, align 4
  %and29 = and i32 %16, 8192
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8** %type, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end.28
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8** %type, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.31
  %17 = load i32, i32* %flags.addr, align 4
  %and33 = and i32 %17, 255
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.end.32
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %arraydecay36 = getelementptr inbounds [10 x i8], [10 x i8]* %flagchars, i32 0, i32 0
  %20 = load i8*, i8** %type, align 8
  %21 = load i32, i32* %flags.addr, align 4
  %and37 = and i32 %21, 255
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.118, i32 0, i32 0), i8* %19, i8* %arraydecay36, i8* %20, i32 %and37)
  br label %if.end.42

if.else.39:                                       ; preds = %if.end.32
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %23 = load i8*, i8** %name.addr, align 8
  %arraydecay40 = getelementptr inbounds [10 x i8], [10 x i8]* %flagchars, i32 0, i32 0
  %24 = load i8*, i8** %type, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.119, i32 0, i32 0), i8* %23, i8* %arraydecay40, i8* %24)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then, %if.else.39, %if.then.35
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_coff_asm_named_section(i8* %name, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %flagchars = alloca [8 x i8], align 1
  %f = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %flagchars, i32 0, i32 0
  store i8* %arraydecay, i8** %f, align 8
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %f, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %f, align 8
  store i8 119, i8* %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %2, 256
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load i8*, i8** %f, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr4, i8** %f, align 8
  store i8 120, i8* %3, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %4 = load i8*, i8** %f, align 8
  store i8 0, i8* %4, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %arraydecay6 = getelementptr inbounds [8 x i8], [8 x i8]* %flagchars, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0), i8* %6, i8* %arraydecay6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @default_pe_asm_named_section(i8* %name, i32 %flags) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %flags.addr, align 4
  call void @default_coff_asm_named_section(i8* %0, i32 %1)
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %4, 256
  %tobool2 = icmp ne i32 %and1, 0
  %cond = select i1 %tobool2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_vtable_entry(%struct.rtx_def* %symbol, i64 %offset) #0 {
entry:
  %symbol.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i64, align 8
  store %struct.rtx_def* %symbol, %struct.rtx_def** %symbol.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %symbol.addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %1, %struct.rtx_def* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = load i64, i64* %offset.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i64 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call3 = call i32 @fputc(i32 10, %struct._IO_FILE* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @assemble_vtable_inherit(%struct.rtx_def* %child, %struct.rtx_def* %parent) #0 {
entry:
  %child.addr = alloca %struct.rtx_def*, align 8
  %parent.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %child, %struct.rtx_def** %child.addr, align 8
  store %struct.rtx_def* %parent, %struct.rtx_def** %parent.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.126, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %child.addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %1, %struct.rtx_def* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %parent.addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %4, %struct.rtx_def* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call2 = call i32 @fputc(i32 10, %struct._IO_FILE* %6)
  ret void
}

declare %union.tree_node* @build_string(i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @asm_output_aligned_bss(%struct._IO_FILE* %file, %union.tree_node* %decl, i8* %name, i32 %size, i32 %align) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %name.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %align, i32* %align.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %1, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %3)
  call void @bss_section()
  %4 = load i32, i32* %align.addr, align 4
  %div = sdiv i32 %4, 8
  %conv = sext i32 %div to i64
  %call2 = call i32 @floor_log2_wide(i64 %conv)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load i32, i32* %align.addr, align 4
  %div4 = sdiv i32 %6, 8
  %conv5 = sext i32 %div4 to i64
  %call6 = call i32 @floor_log2_wide(i64 %conv5)
  %shl = shl i32 1, %call6
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %shl)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %7, %union.tree_node** @last_assemble_variable_decl, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %9, i8* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call9 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call11 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %13)
  store i32 0, i32* @size_directive_output, align 4
  %14 = load i32, i32* @flag_inhibit_size_directive, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.23, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %15 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %tobool12 = icmp ne %union.tree_node* %15, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.23

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl14 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %size15 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 4
  %17 = load %union.tree_node*, %union.tree_node** %size15, align 8
  %tobool16 = icmp ne %union.tree_node* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %land.lhs.true.13
  store i32 1, i32* @size_directive_output, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %20 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %19, i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call19 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %23 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call20 = call i64 @int_size_in_bytes(%union.tree_node* %24)
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i64 %call20)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call i32 @fputc(i32 10, %struct._IO_FILE* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.17, %land.lhs.true.13, %land.lhs.true, %do.body
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %27 = load i8*, i8** %name.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %26, i8* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %28)
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %30 = load i32, i32* %size.addr, align 4
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %31 = load i32, i32* %size.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 1, %cond.false ]
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decode_addr_const(%union.tree_node* %exp, %struct.addr_const* %value) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %value.addr = alloca %struct.addr_const*, align 8
  %target = alloca %union.tree_node*, align 8
  %offset = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.addr_const* %value, %struct.addr_const** %value.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %target, align 8
  store i32 0, i32* %offset, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.41
  %2 = load %union.tree_node*, %union.tree_node** %target, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %3 = load %union.tree_node*, %union.tree_node** %target, align 8
  %exp2 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  %call = call %union.tree_node* @byte_position(%union.tree_node* %4)
  %call5 = call i32 @host_integerp(%union.tree_node* %call, i32 0)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %union.tree_node*, %union.tree_node** %target, align 8
  %exp6 = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands7 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp6, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands7, i32 0, i64 1
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx8, align 8
  %call9 = call i64 @int_byte_position(%union.tree_node* %6)
  %7 = load i32, i32* %offset, align 4
  %conv = sext i32 %7 to i64
  %add = add nsw i64 %conv, %call9
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* %offset, align 4
  %8 = load %union.tree_node*, %union.tree_node** %target, align 8
  %exp11 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands12 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands12, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  store %union.tree_node* %9, %union.tree_node** %target, align 8
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %while.body
  %10 = load %union.tree_node*, %union.tree_node** %target, align 8
  %common14 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %code15, align 8
  %bf.clear17 = and i32 %bf.load16, 255
  %cmp18 = icmp eq i32 %bf.clear17, 43
  br i1 %cmp18, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %11 = load %union.tree_node*, %union.tree_node** %target, align 8
  %common20 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %code21, align 8
  %bf.clear23 = and i32 %bf.load22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 44
  br i1 %cmp24, label %if.then.26, label %if.else.40

if.then.26:                                       ; preds = %lor.lhs.false, %if.else
  %12 = load %union.tree_node*, %union.tree_node** %target, align 8
  %common27 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type28 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i32 0, i32 3
  %14 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call29 = call i64 @tree_low_cst(%union.tree_node* %14, i32 1)
  %15 = load %union.tree_node*, %union.tree_node** %target, align 8
  %exp30 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands31 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp30, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands31, i32 0, i64 1
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx32, align 8
  %call33 = call i64 @tree_low_cst(%union.tree_node* %16, i32 0)
  %mul = mul nsw i64 %call29, %call33
  %17 = load i32, i32* %offset, align 4
  %conv34 = sext i32 %17 to i64
  %add35 = add nsw i64 %conv34, %mul
  %conv36 = trunc i64 %add35 to i32
  store i32 %conv36, i32* %offset, align 4
  %18 = load %union.tree_node*, %union.tree_node** %target, align 8
  %exp37 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands38 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp37, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands38, i32 0, i64 0
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx39, align 8
  store %union.tree_node* %19, %union.tree_node** %target, align 8
  br label %if.end

if.else.40:                                       ; preds = %lor.lhs.false
  br label %while.end

if.end:                                           ; preds = %if.then.26
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then
  br label %while.body

while.end:                                        ; preds = %if.else.40
  %20 = load %union.tree_node*, %union.tree_node** %target, align 8
  %common42 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 2
  %bf.load44 = load i32, i32* %code43, align 8
  %bf.clear45 = and i32 %bf.load44, 255
  switch i32 %bf.clear45, label %sw.default [
    i32 34, label %sw.bb
    i32 30, label %sw.bb
    i32 31, label %sw.bb.51
    i32 26, label %sw.bb.58
    i32 29, label %sw.bb.58
    i32 27, label %sw.bb.58
    i32 46, label %sw.bb.58
    i32 25, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %while.end, %while.end
  %21 = load %union.tree_node*, %union.tree_node** %target, align 8
  %decl = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool46 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %23 = load %union.tree_node*, %union.tree_node** %target, align 8
  %decl47 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %rtl48 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 17
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtl48, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %25 = load %union.tree_node*, %union.tree_node** %target, align 8
  call void @make_decl_rtl(%union.tree_node* %25, i8* null)
  %26 = load %union.tree_node*, %union.tree_node** %target, align 8
  %decl49 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %rtl50 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl49, i32 0, i32 17
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtl50, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %24, %cond.true ], [ %27, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %x, align 8
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.end
  %28 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp52 = bitcast %union.tree_node* %28 to %struct.tree_exp*
  %operands53 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands53, i32 0, i64 0
  %29 = load %union.tree_node*, %union.tree_node** %arrayidx54, align 8
  %call55 = call %struct.rtx_def* @label_rtx(%union.tree_node* %29)
  %call56 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %call55)
  %call57 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %call56)
  store %struct.rtx_def* %call57, %struct.rtx_def** %x, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %while.end, %while.end, %while.end, %while.end, %while.end
  %30 = load %union.tree_node*, %union.tree_node** %target, align 8
  %call59 = call %struct.rtx_def* @output_constant_def(%union.tree_node* %30, i32 1)
  store %struct.rtx_def* %call59, %struct.rtx_def** %x, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.decode_addr_const, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.58, %sw.bb.51, %cond.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load60 = load i32, i32* %32, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp ne i32 %bf.clear61, 66
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.epilog
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 2356, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.decode_addr_const, i32 0, i32 0)) #8
  unreachable

if.end.65:                                        ; preds = %sw.epilog
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %x, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %36 = load %struct.addr_const*, %struct.addr_const** %value.addr, align 8
  %base = getelementptr inbounds %struct.addr_const, %struct.addr_const* %36, i32 0, i32 0
  store %struct.rtx_def* %35, %struct.rtx_def** %base, align 8
  %37 = load i32, i32* %offset, align 4
  %conv67 = sext i32 %37 to i64
  %38 = load %struct.addr_const*, %struct.addr_const** %value.addr, align 8
  %offset68 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %38, i32 0, i32 1
  store i64 %conv67, i64* %offset68, align 8
  ret void
}

declare %union.tree_node* @byte_position(%union.tree_node*) #1

declare i64 @int_byte_position(%union.tree_node*) #1

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @label_rtx(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i8* @compare_constant_1(%union.tree_node* %exp, i8* %p) #0 {
entry:
  %retval = alloca i8*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %p.addr = alloca i8*, align 8
  %strp = alloca i8*, align 8
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %xlen = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %link = alloca %union.tree_node*, align 8
  %length79 = alloca i32, align 4
  %type83 = alloca %union.tree_node*, align 8
  %mode85 = alloca i32, align 4
  %have_purpose = alloca i32, align 4
  %size = alloca i64, align 8
  %zero = alloca %union.tree_node*, align 8
  %zero223 = alloca i32, align 4
  %value238 = alloca %struct.addr_const, align 8
  %new = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %2 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb.14
    i32 29, label %sw.bb.28
    i32 27, label %sw.bb.48
    i32 46, label %sw.bb.56
    i32 121, label %sw.bb.236
    i32 124, label %sw.bb.236
    i32 59, label %sw.bb.252
    i32 60, label %sw.bb.252
    i32 113, label %sw.bb.252
    i32 115, label %sw.bb.265
    i32 114, label %sw.bb.265
    i32 116, label %sw.bb.265
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load i8*, i8** %p.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr3, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common5 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type6 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 6
  %bf.load7 = load i32, i32* %precision, align 4
  %bf.clear8 = and i32 %bf.load7, 511
  %cmp9 = icmp ne i32 %conv4, %bf.clear8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %sw.bb
  %9 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %int_cst = bitcast %union.tree_node* %9 to %struct.tree_int_cst*
  %int_cst13 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %10 = bitcast %struct.anon* %int_cst13 to i8*
  store i8* %10, i8** %strp, align 8
  store i32 16, i32* %len, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %11 = load i8*, i8** %p.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr15, i8** %p.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv16 = zext i8 %12 to i32
  %13 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common17 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %type18, align 8
  %type19 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %precision20 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load21 = load i32, i32* %precision20, align 4
  %bf.clear22 = and i32 %bf.load21, 511
  %cmp23 = icmp ne i32 %conv16, %bf.clear22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.14
  store i8* null, i8** %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.14
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst = bitcast %union.tree_node* %15 to %struct.tree_real_cst*
  %real_cst27 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %16 = bitcast %struct.realvaluetype* %real_cst27 to i8*
  store i8* %16, i8** %strp, align 8
  store i32 24, i32* %len, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end
  %17 = load i32, i32* @flag_writable_strings, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.bb.28
  store i8* null, i8** %retval
  br label %return

if.end.30:                                        ; preds = %sw.bb.28
  %18 = load i8*, i8** %p.addr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr31, i8** %p.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv32 = zext i8 %19 to i32
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common33 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %type34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common33, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %type34, align 8
  %type35 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type35, i32 0, i32 6
  %bf.load36 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load36, 9
  %bf.clear37 = and i32 %bf.lshr, 127
  %cmp38 = icmp ne i32 %conv32, %bf.clear37
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.30
  store i8* null, i8** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.30
  %22 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string = bitcast %union.tree_node* %22 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %23 = load i8*, i8** %pointer, align 8
  store i8* %23, i8** %strp, align 8
  %24 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string42 = bitcast %union.tree_node* %24 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string42, i32 0, i32 2
  %25 = load i32, i32* %length, align 4
  store i32 %25, i32* %len, align 4
  %26 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string43 = bitcast %union.tree_node* %26 to %struct.tree_string*
  %length44 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string43, i32 0, i32 2
  %27 = bitcast i32* %length44 to i8*
  %28 = load i8*, i8** %p.addr, align 8
  %call = call i32 @memcmp(i8* %27, i8* %28, i64 4) #7
  %tobool45 = icmp ne i32 %call, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.41
  store i8* null, i8** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.41
  %29 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr, i8** %p.addr, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end
  %30 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex = bitcast %union.tree_node* %30 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %31 = load %union.tree_node*, %union.tree_node** %real, align 8
  %32 = load i8*, i8** %p.addr, align 8
  %call49 = call i8* @compare_constant_1(%union.tree_node* %31, i8* %32)
  store i8* %call49, i8** %p.addr, align 8
  %33 = load i8*, i8** %p.addr, align 8
  %cmp50 = icmp eq i8* %33, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %sw.bb.48
  store i8* null, i8** %retval
  br label %return

if.end.53:                                        ; preds = %sw.bb.48
  %34 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex54 = bitcast %union.tree_node* %34 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex54, i32 0, i32 3
  %35 = load %union.tree_node*, %union.tree_node** %imag, align 8
  %36 = load i8*, i8** %p.addr, align 8
  %call55 = call i8* @compare_constant_1(%union.tree_node* %35, i8* %36)
  store i8* %call55, i8** %retval
  br label %return

sw.bb.56:                                         ; preds = %if.end
  %37 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common57 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %type58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 1
  %38 = load %union.tree_node*, %union.tree_node** %type58, align 8
  %common59 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code60 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load61 = load i32, i32* %code60, align 8
  %bf.clear62 = and i32 %bf.load61, 255
  %cmp63 = icmp eq i32 %bf.clear62, 19
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %sw.bb.56
  %39 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common66 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %type67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common66, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type67, align 8
  %call68 = call i64 @int_size_in_bytes(%union.tree_node* %40)
  %conv69 = trunc i64 %call68 to i32
  store i32 %conv69, i32* %len, align 4
  store i32 %conv69, i32* %xlen, align 4
  %41 = load i32, i32* %len, align 4
  %conv70 = sext i32 %41 to i64
  %42 = alloca i8, i64 %conv70
  store i8* %42, i8** %tmp, align 8
  %43 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %44 = load i8*, i8** %tmp, align 8
  %45 = load i32, i32* %len, align 4
  %call71 = call %union.tree_node* @get_set_constructor_bytes(%union.tree_node* %43, i8* %44, i32 %45)
  %46 = load i8*, i8** %tmp, align 8
  store i8* %46, i8** %strp, align 8
  %47 = bitcast i32* %xlen to i8*
  %48 = load i8*, i8** %p.addr, align 8
  %call72 = call i32 @memcmp(i8* %47, i8* %48, i64 4) #7
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.65
  store i8* null, i8** %retval
  br label %return

if.end.75:                                        ; preds = %if.then.65
  %49 = load i8*, i8** %p.addr, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %add.ptr76, i8** %p.addr, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb.56
  %50 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp80 = bitcast %union.tree_node* %50 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp80, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %51 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call81 = call i32 @list_length(%union.tree_node* %51)
  store i32 %call81, i32* %length79, align 4
  %52 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common86 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %type87 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 1
  %53 = load %union.tree_node*, %union.tree_node** %type87, align 8
  %type88 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %mode89 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type88, i32 0, i32 6
  %bf.load90 = load i32, i32* %mode89, align 4
  %bf.lshr91 = lshr i32 %bf.load90, 9
  %bf.clear92 = and i32 %bf.lshr91, 127
  store i32 %bf.clear92, i32* %mode85, align 4
  store i32 0, i32* %have_purpose, align 4
  %54 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp94 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands95 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp94, i32 0, i32 2
  %arrayidx96 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands95, i32 0, i64 1
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx96, align 8
  store %union.tree_node* %55, %union.tree_node** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %56 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool97 = icmp ne %union.tree_node* %56, null
  br i1 %tobool97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list = bitcast %union.tree_node* %57 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %58 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %tobool98 = icmp ne %union.tree_node* %58, null
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.body
  store i32 1, i32* %have_purpose, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %59 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common101 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common101, i32 0, i32 0
  %60 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %60, %union.tree_node** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = bitcast i32* %length79 to i8*
  %62 = load i8*, i8** %p.addr, align 8
  %call102 = call i32 @memcmp(i8* %61, i8* %62, i64 4) #7
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.end
  store i8* null, i8** %retval
  br label %return

if.end.105:                                       ; preds = %for.end
  %63 = load i8*, i8** %p.addr, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %add.ptr106, i8** %p.addr, align 8
  %64 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common107 = bitcast %union.tree_node* %64 to %struct.tree_common*
  %type108 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common107, i32 0, i32 1
  %65 = load %union.tree_node*, %union.tree_node** %type108, align 8
  %common109 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %code110 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common109, i32 0, i32 2
  %bf.load111 = load i32, i32* %code110, align 8
  %bf.clear112 = and i32 %bf.load111, 255
  %cmp113 = icmp eq i32 %bf.clear112, 20
  br i1 %cmp113, label %if.then.115, label %if.else.118

if.then.115:                                      ; preds = %if.end.105
  %66 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common116 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %type117 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common116, i32 0, i32 1
  %67 = load %union.tree_node*, %union.tree_node** %type117, align 8
  store %union.tree_node* %67, %union.tree_node** %type83, align 8
  br label %if.end.119

if.else.118:                                      ; preds = %if.end.105
  store %union.tree_node* null, %union.tree_node** %type83, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.118, %if.then.115
  %68 = bitcast %union.tree_node** %type83 to i8*
  %69 = load i8*, i8** %p.addr, align 8
  %call120 = call i32 @memcmp(i8* %68, i8* %69, i64 8) #7
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.119
  store i8* null, i8** %retval
  br label %return

if.end.123:                                       ; preds = %if.end.119
  %70 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common124 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %type125 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common124, i32 0, i32 1
  %71 = load %union.tree_node*, %union.tree_node** %type125, align 8
  %common126 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code127 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common126, i32 0, i32 2
  %bf.load128 = load i32, i32* %code127, align 8
  %bf.clear129 = and i32 %bf.load128, 255
  %cmp130 = icmp eq i32 %bf.clear129, 18
  br i1 %cmp130, label %if.then.132, label %if.end.138

if.then.132:                                      ; preds = %if.end.123
  %72 = bitcast i32* %mode85 to i8*
  %73 = load i8*, i8** %p.addr, align 8
  %call133 = call i32 @memcmp(i8* %72, i8* %73, i64 4) #7
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.132
  store i8* null, i8** %retval
  br label %return

if.end.136:                                       ; preds = %if.then.132
  %74 = load i8*, i8** %p.addr, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %add.ptr137, i8** %p.addr, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.136, %if.end.123
  %75 = load i8*, i8** %p.addr, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %75, i64 8
  store i8* %add.ptr139, i8** %p.addr, align 8
  %76 = bitcast i32* %have_purpose to i8*
  %77 = load i8*, i8** %p.addr, align 8
  %call140 = call i32 @memcmp(i8* %76, i8* %77, i64 4) #7
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.138
  store i8* null, i8** %retval
  br label %return

if.end.143:                                       ; preds = %if.end.138
  %78 = load i8*, i8** %p.addr, align 8
  %add.ptr144 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %add.ptr144, i8** %p.addr, align 8
  %79 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common145 = bitcast %union.tree_node* %79 to %struct.tree_common*
  %type146 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common145, i32 0, i32 1
  %80 = load %union.tree_node*, %union.tree_node** %type146, align 8
  %common147 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %code148 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common147, i32 0, i32 2
  %bf.load149 = load i32, i32* %code148, align 8
  %bf.clear150 = and i32 %bf.load149, 255
  %cmp151 = icmp eq i32 %bf.clear150, 18
  br i1 %cmp151, label %if.then.153, label %if.end.163

if.then.153:                                      ; preds = %if.end.143
  %81 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common155 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %type156 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common155, i32 0, i32 1
  %82 = load %union.tree_node*, %union.tree_node** %type156, align 8
  %call157 = call i64 @int_size_in_bytes(%union.tree_node* %82)
  store i64 %call157, i64* %size, align 8
  %83 = bitcast i64* %size to i8*
  %84 = load i8*, i8** %p.addr, align 8
  %call158 = call i32 @memcmp(i8* %83, i8* %84, i64 8) #7
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.153
  store i8* null, i8** %retval
  br label %return

if.end.161:                                       ; preds = %if.then.153
  %85 = load i8*, i8** %p.addr, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %85, i64 8
  store i8* %add.ptr162, i8** %p.addr, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.161, %if.end.143
  %86 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp164 = bitcast %union.tree_node* %86 to %struct.tree_exp*
  %operands165 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp164, i32 0, i32 2
  %arrayidx166 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands165, i32 0, i64 1
  %87 = load %union.tree_node*, %union.tree_node** %arrayidx166, align 8
  store %union.tree_node* %87, %union.tree_node** %link, align 8
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.232, %if.end.163
  %88 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool168 = icmp ne %union.tree_node* %88, null
  br i1 %tobool168, label %for.body.169, label %for.end.235

for.body.169:                                     ; preds = %for.cond.167
  %89 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list170 = bitcast %union.tree_node* %89 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list170, i32 0, i32 2
  %90 = load %union.tree_node*, %union.tree_node** %value, align 8
  %tobool171 = icmp ne %union.tree_node* %90, null
  br i1 %tobool171, label %if.then.172, label %if.else.180

if.then.172:                                      ; preds = %for.body.169
  %91 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list173 = bitcast %union.tree_node* %91 to %struct.tree_list*
  %value174 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list173, i32 0, i32 2
  %92 = load %union.tree_node*, %union.tree_node** %value174, align 8
  %93 = load i8*, i8** %p.addr, align 8
  %call175 = call i8* @compare_constant_1(%union.tree_node* %92, i8* %93)
  store i8* %call175, i8** %p.addr, align 8
  %cmp176 = icmp eq i8* %call175, null
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.then.172
  store i8* null, i8** %retval
  br label %return

if.end.179:                                       ; preds = %if.then.172
  br label %if.end.187

if.else.180:                                      ; preds = %for.body.169
  store %union.tree_node* null, %union.tree_node** %zero, align 8
  %94 = bitcast %union.tree_node** %zero to i8*
  %95 = load i8*, i8** %p.addr, align 8
  %call182 = call i32 @memcmp(i8* %94, i8* %95, i64 8) #7
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.else.180
  store i8* null, i8** %retval
  br label %return

if.end.185:                                       ; preds = %if.else.180
  %96 = load i8*, i8** %p.addr, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %96, i64 8
  store i8* %add.ptr186, i8** %p.addr, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.185, %if.end.179
  %97 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list188 = bitcast %union.tree_node* %97 to %struct.tree_list*
  %purpose189 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list188, i32 0, i32 1
  %98 = load %union.tree_node*, %union.tree_node** %purpose189, align 8
  %tobool190 = icmp ne %union.tree_node* %98, null
  br i1 %tobool190, label %land.lhs.true, label %if.else.207

land.lhs.true:                                    ; preds = %if.end.187
  %99 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list191 = bitcast %union.tree_node* %99 to %struct.tree_list*
  %purpose192 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list191, i32 0, i32 1
  %100 = load %union.tree_node*, %union.tree_node** %purpose192, align 8
  %common193 = bitcast %union.tree_node* %100 to %struct.tree_common*
  %code194 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common193, i32 0, i32 2
  %bf.load195 = load i32, i32* %code194, align 8
  %bf.clear196 = and i32 %bf.load195, 255
  %cmp197 = icmp eq i32 %bf.clear196, 37
  br i1 %cmp197, label %if.then.199, label %if.else.207

if.then.199:                                      ; preds = %land.lhs.true
  %101 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list200 = bitcast %union.tree_node* %101 to %struct.tree_list*
  %purpose201 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list200, i32 0, i32 1
  %102 = bitcast %union.tree_node** %purpose201 to i8*
  %103 = load i8*, i8** %p.addr, align 8
  %call202 = call i32 @memcmp(i8* %102, i8* %103, i64 8) #7
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.then.199
  store i8* null, i8** %retval
  br label %return

if.end.205:                                       ; preds = %if.then.199
  %104 = load i8*, i8** %p.addr, align 8
  %add.ptr206 = getelementptr inbounds i8, i8* %104, i64 8
  store i8* %add.ptr206, i8** %p.addr, align 8
  br label %if.end.231

if.else.207:                                      ; preds = %land.lhs.true, %if.end.187
  %105 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list208 = bitcast %union.tree_node* %105 to %struct.tree_list*
  %purpose209 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list208, i32 0, i32 1
  %106 = load %union.tree_node*, %union.tree_node** %purpose209, align 8
  %tobool210 = icmp ne %union.tree_node* %106, null
  br i1 %tobool210, label %if.then.211, label %if.else.219

if.then.211:                                      ; preds = %if.else.207
  %107 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list212 = bitcast %union.tree_node* %107 to %struct.tree_list*
  %purpose213 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list212, i32 0, i32 1
  %108 = load %union.tree_node*, %union.tree_node** %purpose213, align 8
  %109 = load i8*, i8** %p.addr, align 8
  %call214 = call i8* @compare_constant_1(%union.tree_node* %108, i8* %109)
  store i8* %call214, i8** %p.addr, align 8
  %cmp215 = icmp eq i8* %call214, null
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.then.211
  store i8* null, i8** %retval
  br label %return

if.end.218:                                       ; preds = %if.then.211
  br label %if.end.230

if.else.219:                                      ; preds = %if.else.207
  %110 = load i32, i32* %have_purpose, align 4
  %tobool220 = icmp ne i32 %110, 0
  br i1 %tobool220, label %if.then.221, label %if.end.229

if.then.221:                                      ; preds = %if.else.219
  store i32 0, i32* %zero223, align 4
  %111 = bitcast i32* %zero223 to i8*
  %112 = load i8*, i8** %p.addr, align 8
  %call224 = call i32 @memcmp(i8* %111, i8* %112, i64 4) #7
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.then.221
  store i8* null, i8** %retval
  br label %return

if.end.227:                                       ; preds = %if.then.221
  %113 = load i8*, i8** %p.addr, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %add.ptr228, i8** %p.addr, align 8
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.227, %if.else.219
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.end.218
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.205
  br label %for.inc.232

for.inc.232:                                      ; preds = %if.end.231
  %114 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common233 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %chain234 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common233, i32 0, i32 0
  %115 = load %union.tree_node*, %union.tree_node** %chain234, align 8
  store %union.tree_node* %115, %union.tree_node** %link, align 8
  br label %for.cond.167

for.end.235:                                      ; preds = %for.cond.167
  %116 = load i8*, i8** %p.addr, align 8
  store i8* %116, i8** %retval
  br label %return

sw.bb.236:                                        ; preds = %if.end, %if.end
  %117 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @decode_addr_const(%union.tree_node* %117, %struct.addr_const* %value238)
  %offset = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value238, i32 0, i32 1
  %118 = bitcast i64* %offset to i8*
  store i8* %118, i8** %strp, align 8
  store i32 8, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.248, %sw.bb.236
  %119 = load i32, i32* %len, align 4
  %dec = add nsw i32 %119, -1
  store i32 %dec, i32* %len, align 4
  %cmp239 = icmp sge i32 %dec, 0
  br i1 %cmp239, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %120 = load i8*, i8** %p.addr, align 8
  %incdec.ptr241 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr241, i8** %p.addr, align 8
  %121 = load i8, i8* %120, align 1
  %conv242 = zext i8 %121 to i32
  %122 = load i8*, i8** %strp, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr243, i8** %strp, align 8
  %123 = load i8, i8* %122, align 1
  %conv244 = zext i8 %123 to i32
  %cmp245 = icmp ne i32 %conv242, %conv244
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %while.body
  store i8* null, i8** %retval
  br label %return

if.end.248:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value238, i32 0, i32 0
  %124 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx249 to i8**
  %125 = load i8*, i8** %rtstr, align 8
  store i8* %125, i8** %strp, align 8
  %126 = load i8*, i8** %strp, align 8
  %call250 = call i64 @strlen(i8* %126) #7
  %add = add i64 %call250, 1
  %conv251 = trunc i64 %add to i32
  store i32 %conv251, i32* %len, align 4
  br label %sw.epilog

sw.bb.252:                                        ; preds = %if.end, %if.end, %if.end
  %127 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp253 = bitcast %union.tree_node* %127 to %struct.tree_exp*
  %operands254 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp253, i32 0, i32 2
  %arrayidx255 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands254, i32 0, i64 0
  %128 = load %union.tree_node*, %union.tree_node** %arrayidx255, align 8
  %129 = load i8*, i8** %p.addr, align 8
  %call256 = call i8* @compare_constant_1(%union.tree_node* %128, i8* %129)
  store i8* %call256, i8** %p.addr, align 8
  %130 = load i8*, i8** %p.addr, align 8
  %cmp257 = icmp eq i8* %130, null
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %sw.bb.252
  store i8* null, i8** %retval
  br label %return

if.end.260:                                       ; preds = %sw.bb.252
  %131 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp261 = bitcast %union.tree_node* %131 to %struct.tree_exp*
  %operands262 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp261, i32 0, i32 2
  %arrayidx263 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands262, i32 0, i64 1
  %132 = load %union.tree_node*, %union.tree_node** %arrayidx263, align 8
  %133 = load i8*, i8** %p.addr, align 8
  %call264 = call i8* @compare_constant_1(%union.tree_node* %132, i8* %133)
  store i8* %call264, i8** %retval
  br label %return

sw.bb.265:                                        ; preds = %if.end, %if.end, %if.end
  %134 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp266 = bitcast %union.tree_node* %134 to %struct.tree_exp*
  %operands267 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp266, i32 0, i32 2
  %arrayidx268 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands267, i32 0, i64 0
  %135 = load %union.tree_node*, %union.tree_node** %arrayidx268, align 8
  %136 = load i8*, i8** %p.addr, align 8
  %call269 = call i8* @compare_constant_1(%union.tree_node* %135, i8* %136)
  store i8* %call269, i8** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  %137 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 9), align 8
  %138 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call271 = call %union.tree_node* %137(%union.tree_node* %138)
  store %union.tree_node* %call271, %union.tree_node** %new, align 8
  %139 = load %union.tree_node*, %union.tree_node** %new, align 8
  %140 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %cmp272 = icmp ne %union.tree_node* %139, %140
  br i1 %cmp272, label %if.then.274, label %if.else.276

if.then.274:                                      ; preds = %sw.default
  %141 = load %union.tree_node*, %union.tree_node** %new, align 8
  %142 = load i8*, i8** %p.addr, align 8
  %call275 = call i8* @compare_constant_1(%union.tree_node* %141, i8* %142)
  store i8* %call275, i8** %retval
  br label %return

if.else.276:                                      ; preds = %sw.default
  store i8* null, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %while.end, %if.end.75, %if.end.47, %if.end.26, %if.end.12
  br label %while.cond.277

while.cond.277:                                   ; preds = %if.end.289, %sw.epilog
  %143 = load i32, i32* %len, align 4
  %dec278 = add nsw i32 %143, -1
  store i32 %dec278, i32* %len, align 4
  %cmp279 = icmp sge i32 %dec278, 0
  br i1 %cmp279, label %while.body.281, label %while.end.290

while.body.281:                                   ; preds = %while.cond.277
  %144 = load i8*, i8** %p.addr, align 8
  %incdec.ptr282 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr282, i8** %p.addr, align 8
  %145 = load i8, i8* %144, align 1
  %conv283 = zext i8 %145 to i32
  %146 = load i8*, i8** %strp, align 8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr284, i8** %strp, align 8
  %147 = load i8, i8* %146, align 1
  %conv285 = zext i8 %147 to i32
  %cmp286 = icmp ne i32 %conv283, %conv285
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %while.body.281
  store i8* null, i8** %retval
  br label %return

if.end.289:                                       ; preds = %while.body.281
  br label %while.cond.277

while.end.290:                                    ; preds = %while.cond.277
  %148 = load i8*, i8** %p.addr, align 8
  store i8* %148, i8** %retval
  br label %return

return:                                           ; preds = %while.end.290, %if.then.288, %if.else.276, %if.then.274, %sw.bb.265, %if.end.260, %if.then.259, %if.then.247, %for.end.235, %if.then.226, %if.then.217, %if.then.204, %if.then.184, %if.then.178, %if.then.160, %if.then.142, %if.then.135, %if.then.122, %if.then.104, %if.then.74, %if.end.53, %if.then.52, %if.then.46, %if.then.40, %if.then.29, %if.then.25, %if.then.11, %if.then
  %149 = load i8*, i8** %retval
  ret i8* %149
}

declare i32 @list_length(%union.tree_node*) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @record_constant_1(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %strp = alloca i8*, align 8
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %__o = alloca %struct.obstack*, align 8
  %__o3 = alloca %struct.obstack*, align 8
  %__o20 = alloca %struct.obstack*, align 8
  %__o41 = alloca %struct.obstack*, align 8
  %__o58 = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %__o88 = alloca %struct.obstack*, align 8
  %__len89 = alloca i32, align 4
  %__o103 = alloca %struct.obstack*, align 8
  %__len104 = alloca i32, align 4
  %link = alloca %union.tree_node*, align 8
  %length118 = alloca i32, align 4
  %mode121 = alloca i32, align 4
  %type129 = alloca %union.tree_node*, align 8
  %have_purpose = alloca i32, align 4
  %__o138 = alloca %struct.obstack*, align 8
  %__len139 = alloca i32, align 4
  %__o166 = alloca %struct.obstack*, align 8
  %__len167 = alloca i32, align 4
  %__o190 = alloca %struct.obstack*, align 8
  %__len191 = alloca i32, align 4
  %__o206 = alloca %struct.obstack*, align 8
  %__len207 = alloca i32, align 4
  %size = alloca i64, align 8
  %__o233 = alloca %struct.obstack*, align 8
  %__len234 = alloca i32, align 4
  %zero = alloca %union.tree_node*, align 8
  %__o261 = alloca %struct.obstack*, align 8
  %__len262 = alloca i32, align 4
  %__o289 = alloca %struct.obstack*, align 8
  %__len290 = alloca i32, align 4
  %zero316 = alloca i32, align 4
  %__o317 = alloca %struct.obstack*, align 8
  %__len318 = alloca i32, align 4
  %value341 = alloca %struct.addr_const, align 8
  %__o342 = alloca %struct.obstack*, align 8
  %__len343 = alloca i32, align 4
  %__o360 = alloca %struct.obstack*, align 8
  %__len361 = alloca i32, align 4
  %__o384 = alloca %struct.obstack*, align 8
  %__len385 = alloca i32, align 4
  %new = alloca %union.tree_node*, align 8
  %__o420 = alloca %struct.obstack*, align 8
  %__len421 = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o, align 8
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
  %6 = load i32, i32* %code, align 4
  %conv = trunc i32 %6 to i8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %next_free2, align 8
  store i8 %conv, i8* %8, align 1
  %9 = load i32, i32* %code, align 4
  switch i32 %9, label %sw.default.413 [
    i32 25, label %sw.bb
    i32 26, label %sw.bb.19
    i32 29, label %sw.bb.38
    i32 27, label %sw.bb.73
    i32 46, label %sw.bb.75
    i32 121, label %sw.bb.340
    i32 59, label %sw.bb.402
    i32 60, label %sw.bb.402
    i32 113, label %sw.bb.402
    i32 115, label %sw.bb.409
    i32 114, label %sw.bb.409
    i32 116, label %sw.bb.409
  ]

sw.bb:                                            ; preds = %if.end
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o3, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o3, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free4, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.obstack*, %struct.obstack** %__o3, align 8
  %chunk_limit6 = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 4
  %13 = load i8*, i8** %chunk_limit6, align 8
  %cmp7 = icmp ugt i8* %add.ptr5, %13
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb
  %14 = load %struct.obstack*, %struct.obstack** %__o3, align 8
  call void @_obstack_newchunk(%struct.obstack* %14, i32 1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common11 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 1
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type12 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type12, i32 0, i32 6
  %bf.load13 = load i32, i32* %precision, align 4
  %bf.clear14 = and i32 %bf.load13, 511
  %conv15 = trunc i32 %bf.clear14 to i8
  %17 = load %struct.obstack*, %struct.obstack** %__o3, align 8
  %next_free16 = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 3
  %18 = load i8*, i8** %next_free16, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr17, i8** %next_free16, align 8
  store i8 %conv15, i8* %18, align 1
  %19 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %int_cst = bitcast %union.tree_node* %19 to %struct.tree_int_cst*
  %int_cst18 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %20 = bitcast %struct.anon* %int_cst18 to i8*
  store i8* %20, i8** %strp, align 8
  store i32 16, i32* %len, align 4
  br label %sw.epilog.419

sw.bb.19:                                         ; preds = %if.end
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o20, align 8
  %21 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  %22 = load i8*, i8** %next_free21, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %chunk_limit23 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 4
  %24 = load i8*, i8** %chunk_limit23, align 8
  %cmp24 = icmp ugt i8* %add.ptr22, %24
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.19
  %25 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  call void @_obstack_newchunk(%struct.obstack* %25, i32 1)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %sw.bb.19
  %26 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common28 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type29, align 8
  %type30 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %precision31 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 6
  %bf.load32 = load i32, i32* %precision31, align 4
  %bf.clear33 = and i32 %bf.load32, 511
  %conv34 = trunc i32 %bf.clear33 to i8
  %28 = load %struct.obstack*, %struct.obstack** %__o20, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  %29 = load i8*, i8** %next_free35, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr36, i8** %next_free35, align 8
  store i8 %conv34, i8* %29, align 1
  %30 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %real_cst = bitcast %union.tree_node* %30 to %struct.tree_real_cst*
  %real_cst37 = getelementptr inbounds %struct.tree_real_cst, %struct.tree_real_cst* %real_cst, i32 0, i32 2
  %31 = bitcast %struct.realvaluetype* %real_cst37 to i8*
  store i8* %31, i8** %strp, align 8
  store i32 24, i32* %len, align 4
  br label %sw.epilog.419

sw.bb.38:                                         ; preds = %if.end
  %32 = load i32, i32* @flag_writable_strings, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.38
  br label %return

if.end.40:                                        ; preds = %sw.bb.38
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o41, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %next_free42 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 3
  %34 = load i8*, i8** %next_free42, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %chunk_limit44 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit44, align 8
  %cmp45 = icmp ugt i8* %add.ptr43, %36
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.40
  %37 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  call void @_obstack_newchunk(%struct.obstack* %37, i32 1)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.40
  %38 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common49 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %type50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 1
  %39 = load %union.tree_node*, %union.tree_node** %type50, align 8
  %type51 = bitcast %union.tree_node* %39 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type51, i32 0, i32 6
  %bf.load52 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load52, 9
  %bf.clear53 = and i32 %bf.lshr, 127
  %conv54 = trunc i32 %bf.clear53 to i8
  %40 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %next_free55 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free55, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr56, i8** %next_free55, align 8
  store i8 %conv54, i8* %41, align 1
  %42 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string = bitcast %union.tree_node* %42 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %43 = load i8*, i8** %pointer, align 8
  store i8* %43, i8** %strp, align 8
  %44 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string57 = bitcast %union.tree_node* %44 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string57, i32 0, i32 2
  %45 = load i32, i32* %length, align 4
  store i32 %45, i32* %len, align 4
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o58, align 8
  store i32 4, i32* %__len, align 4
  %46 = load %struct.obstack*, %struct.obstack** %__o58, align 8
  %next_free59 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 3
  %47 = load i8*, i8** %next_free59, align 8
  %48 = load i32, i32* %__len, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %49 = load %struct.obstack*, %struct.obstack** %__o58, align 8
  %chunk_limit61 = getelementptr inbounds %struct.obstack, %struct.obstack* %49, i32 0, i32 4
  %50 = load i8*, i8** %chunk_limit61, align 8
  %cmp62 = icmp ugt i8* %add.ptr60, %50
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.48
  %51 = load %struct.obstack*, %struct.obstack** %__o58, align 8
  %52 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %51, i32 %52)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.48
  %53 = load %struct.obstack*, %struct.obstack** %__o58, align 8
  %next_free66 = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 3
  %54 = load i8*, i8** %next_free66, align 8
  %55 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %string67 = bitcast %union.tree_node* %55 to %struct.tree_string*
  %length68 = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string67, i32 0, i32 2
  %56 = bitcast i32* %length68 to i8*
  %57 = load i32, i32* %__len, align 4
  %conv69 = sext i32 %57 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %56, i64 %conv69, i32 1, i1 false)
  %58 = load i32, i32* %__len, align 4
  %59 = load %struct.obstack*, %struct.obstack** %__o58, align 8
  %next_free70 = getelementptr inbounds %struct.obstack, %struct.obstack* %59, i32 0, i32 3
  %60 = load i8*, i8** %next_free70, align 8
  %idx.ext71 = sext i32 %58 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %60, i64 %idx.ext71
  store i8* %add.ptr72, i8** %next_free70, align 8
  br label %sw.epilog.419

sw.bb.73:                                         ; preds = %if.end
  %61 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex = bitcast %union.tree_node* %61 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %62 = load %union.tree_node*, %union.tree_node** %real, align 8
  call void @record_constant_1(%union.tree_node* %62)
  %63 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %complex74 = bitcast %union.tree_node* %63 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex74, i32 0, i32 3
  %64 = load %union.tree_node*, %union.tree_node** %imag, align 8
  call void @record_constant_1(%union.tree_node* %64)
  br label %return

sw.bb.75:                                         ; preds = %if.end
  %65 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common76 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %type77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 1
  %66 = load %union.tree_node*, %union.tree_node** %type77, align 8
  %common78 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %code79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 2
  %bf.load80 = load i32, i32* %code79, align 8
  %bf.clear81 = and i32 %bf.load80, 255
  %cmp82 = icmp eq i32 %bf.clear81, 19
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %sw.bb.75
  %67 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common85 = bitcast %union.tree_node* %67 to %struct.tree_common*
  %type86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 1
  %68 = load %union.tree_node*, %union.tree_node** %type86, align 8
  %call = call i64 @int_size_in_bytes(%union.tree_node* %68)
  %conv87 = trunc i64 %call to i32
  store i32 %conv87, i32* %nbytes, align 4
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o88, align 8
  store i32 4, i32* %__len89, align 4
  %69 = load %struct.obstack*, %struct.obstack** %__o88, align 8
  %next_free90 = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 3
  %70 = load i8*, i8** %next_free90, align 8
  %71 = load i32, i32* %__len89, align 4
  %idx.ext91 = sext i32 %71 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %70, i64 %idx.ext91
  %72 = load %struct.obstack*, %struct.obstack** %__o88, align 8
  %chunk_limit93 = getelementptr inbounds %struct.obstack, %struct.obstack* %72, i32 0, i32 4
  %73 = load i8*, i8** %chunk_limit93, align 8
  %cmp94 = icmp ugt i8* %add.ptr92, %73
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.84
  %74 = load %struct.obstack*, %struct.obstack** %__o88, align 8
  %75 = load i32, i32* %__len89, align 4
  call void @_obstack_newchunk(%struct.obstack* %74, i32 %75)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.then.84
  %76 = load %struct.obstack*, %struct.obstack** %__o88, align 8
  %next_free98 = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 3
  %77 = load i8*, i8** %next_free98, align 8
  %78 = bitcast i32* %nbytes to i8*
  %79 = load i32, i32* %__len89, align 4
  %conv99 = sext i32 %79 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %conv99, i32 1, i1 false)
  %80 = load i32, i32* %__len89, align 4
  %81 = load %struct.obstack*, %struct.obstack** %__o88, align 8
  %next_free100 = getelementptr inbounds %struct.obstack, %struct.obstack* %81, i32 0, i32 3
  %82 = load i8*, i8** %next_free100, align 8
  %idx.ext101 = sext i32 %80 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %82, i64 %idx.ext101
  store i8* %add.ptr102, i8** %next_free100, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o103, align 8
  %83 = load i32, i32* %nbytes, align 4
  store i32 %83, i32* %__len104, align 4
  %84 = load %struct.obstack*, %struct.obstack** %__o103, align 8
  %chunk_limit105 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 4
  %85 = load i8*, i8** %chunk_limit105, align 8
  %86 = load %struct.obstack*, %struct.obstack** %__o103, align 8
  %next_free106 = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 3
  %87 = load i8*, i8** %next_free106, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %87 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %88 = load i32, i32* %__len104, align 4
  %conv107 = sext i32 %88 to i64
  %cmp108 = icmp slt i64 %sub.ptr.sub, %conv107
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.97
  %89 = load %struct.obstack*, %struct.obstack** %__o103, align 8
  %90 = load i32, i32* %__len104, align 4
  call void @_obstack_newchunk(%struct.obstack* %89, i32 %90)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.97
  %91 = load i32, i32* %__len104, align 4
  %92 = load %struct.obstack*, %struct.obstack** %__o103, align 8
  %next_free112 = getelementptr inbounds %struct.obstack, %struct.obstack* %92, i32 0, i32 3
  %93 = load i8*, i8** %next_free112, align 8
  %idx.ext113 = sext i32 %91 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %93, i64 %idx.ext113
  store i8* %add.ptr114, i8** %next_free112, align 8
  %94 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %95 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @permanent_obstack, i32 0, i32 3), align 8
  %96 = load i32, i32* %nbytes, align 4
  %idx.ext115 = sext i32 %96 to i64
  %idx.neg = sub i64 0, %idx.ext115
  %add.ptr116 = getelementptr inbounds i8, i8* %95, i64 %idx.neg
  %97 = load i32, i32* %nbytes, align 4
  %call117 = call %union.tree_node* @get_set_constructor_bytes(%union.tree_node* %94, i8* %add.ptr116, i32 %97)
  br label %return

if.else:                                          ; preds = %sw.bb.75
  %98 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp119 = bitcast %union.tree_node* %98 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp119, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %99 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call120 = call i32 @list_length(%union.tree_node* %99)
  store i32 %call120, i32* %length118, align 4
  %100 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common122 = bitcast %union.tree_node* %100 to %struct.tree_common*
  %type123 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common122, i32 0, i32 1
  %101 = load %union.tree_node*, %union.tree_node** %type123, align 8
  %type124 = bitcast %union.tree_node* %101 to %struct.tree_type*
  %mode125 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type124, i32 0, i32 6
  %bf.load126 = load i32, i32* %mode125, align 4
  %bf.lshr127 = lshr i32 %bf.load126, 9
  %bf.clear128 = and i32 %bf.lshr127, 127
  store i32 %bf.clear128, i32* %mode121, align 4
  store i32 0, i32* %have_purpose, align 4
  %102 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp130 = bitcast %union.tree_node* %102 to %struct.tree_exp*
  %operands131 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp130, i32 0, i32 2
  %arrayidx132 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands131, i32 0, i64 1
  %103 = load %union.tree_node*, %union.tree_node** %arrayidx132, align 8
  store %union.tree_node* %103, %union.tree_node** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %104 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool133 = icmp ne %union.tree_node* %104, null
  br i1 %tobool133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %105 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list = bitcast %union.tree_node* %105 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %106 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %tobool134 = icmp ne %union.tree_node* %106, null
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %for.body
  store i32 1, i32* %have_purpose, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.136
  %107 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common137 = bitcast %union.tree_node* %107 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common137, i32 0, i32 0
  %108 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %108, %union.tree_node** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o138, align 8
  store i32 4, i32* %__len139, align 4
  %109 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %next_free140 = getelementptr inbounds %struct.obstack, %struct.obstack* %109, i32 0, i32 3
  %110 = load i8*, i8** %next_free140, align 8
  %111 = load i32, i32* %__len139, align 4
  %idx.ext141 = sext i32 %111 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %110, i64 %idx.ext141
  %112 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %chunk_limit143 = getelementptr inbounds %struct.obstack, %struct.obstack* %112, i32 0, i32 4
  %113 = load i8*, i8** %chunk_limit143, align 8
  %cmp144 = icmp ugt i8* %add.ptr142, %113
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %for.end
  %114 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %115 = load i32, i32* %__len139, align 4
  call void @_obstack_newchunk(%struct.obstack* %114, i32 %115)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %for.end
  %116 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %next_free148 = getelementptr inbounds %struct.obstack, %struct.obstack* %116, i32 0, i32 3
  %117 = load i8*, i8** %next_free148, align 8
  %118 = bitcast i32* %length118 to i8*
  %119 = load i32, i32* %__len139, align 4
  %conv149 = sext i32 %119 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 %conv149, i32 1, i1 false)
  %120 = load i32, i32* %__len139, align 4
  %121 = load %struct.obstack*, %struct.obstack** %__o138, align 8
  %next_free150 = getelementptr inbounds %struct.obstack, %struct.obstack* %121, i32 0, i32 3
  %122 = load i8*, i8** %next_free150, align 8
  %idx.ext151 = sext i32 %120 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %122, i64 %idx.ext151
  store i8* %add.ptr152, i8** %next_free150, align 8
  %123 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common153 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %type154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common153, i32 0, i32 1
  %124 = load %union.tree_node*, %union.tree_node** %type154, align 8
  %common155 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %code156 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common155, i32 0, i32 2
  %bf.load157 = load i32, i32* %code156, align 8
  %bf.clear158 = and i32 %bf.load157, 255
  %cmp159 = icmp eq i32 %bf.clear158, 20
  br i1 %cmp159, label %if.then.161, label %if.else.164

if.then.161:                                      ; preds = %if.end.147
  %125 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common162 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %type163 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common162, i32 0, i32 1
  %126 = load %union.tree_node*, %union.tree_node** %type163, align 8
  store %union.tree_node* %126, %union.tree_node** %type129, align 8
  br label %if.end.165

if.else.164:                                      ; preds = %if.end.147
  store %union.tree_node* null, %union.tree_node** %type129, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.then.161
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o166, align 8
  store i32 8, i32* %__len167, align 4
  %127 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %next_free168 = getelementptr inbounds %struct.obstack, %struct.obstack* %127, i32 0, i32 3
  %128 = load i8*, i8** %next_free168, align 8
  %129 = load i32, i32* %__len167, align 4
  %idx.ext169 = sext i32 %129 to i64
  %add.ptr170 = getelementptr inbounds i8, i8* %128, i64 %idx.ext169
  %130 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %chunk_limit171 = getelementptr inbounds %struct.obstack, %struct.obstack* %130, i32 0, i32 4
  %131 = load i8*, i8** %chunk_limit171, align 8
  %cmp172 = icmp ugt i8* %add.ptr170, %131
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.165
  %132 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %133 = load i32, i32* %__len167, align 4
  call void @_obstack_newchunk(%struct.obstack* %132, i32 %133)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %if.end.165
  %134 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %next_free176 = getelementptr inbounds %struct.obstack, %struct.obstack* %134, i32 0, i32 3
  %135 = load i8*, i8** %next_free176, align 8
  %136 = bitcast %union.tree_node** %type129 to i8*
  %137 = load i32, i32* %__len167, align 4
  %conv177 = sext i32 %137 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 %conv177, i32 1, i1 false)
  %138 = load i32, i32* %__len167, align 4
  %139 = load %struct.obstack*, %struct.obstack** %__o166, align 8
  %next_free178 = getelementptr inbounds %struct.obstack, %struct.obstack* %139, i32 0, i32 3
  %140 = load i8*, i8** %next_free178, align 8
  %idx.ext179 = sext i32 %138 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %140, i64 %idx.ext179
  store i8* %add.ptr180, i8** %next_free178, align 8
  %141 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common181 = bitcast %union.tree_node* %141 to %struct.tree_common*
  %type182 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common181, i32 0, i32 1
  %142 = load %union.tree_node*, %union.tree_node** %type182, align 8
  %common183 = bitcast %union.tree_node* %142 to %struct.tree_common*
  %code184 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common183, i32 0, i32 2
  %bf.load185 = load i32, i32* %code184, align 8
  %bf.clear186 = and i32 %bf.load185, 255
  %cmp187 = icmp eq i32 %bf.clear186, 18
  br i1 %cmp187, label %if.then.189, label %if.end.205

if.then.189:                                      ; preds = %if.end.175
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o190, align 8
  store i32 4, i32* %__len191, align 4
  %143 = load %struct.obstack*, %struct.obstack** %__o190, align 8
  %next_free192 = getelementptr inbounds %struct.obstack, %struct.obstack* %143, i32 0, i32 3
  %144 = load i8*, i8** %next_free192, align 8
  %145 = load i32, i32* %__len191, align 4
  %idx.ext193 = sext i32 %145 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %144, i64 %idx.ext193
  %146 = load %struct.obstack*, %struct.obstack** %__o190, align 8
  %chunk_limit195 = getelementptr inbounds %struct.obstack, %struct.obstack* %146, i32 0, i32 4
  %147 = load i8*, i8** %chunk_limit195, align 8
  %cmp196 = icmp ugt i8* %add.ptr194, %147
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.then.189
  %148 = load %struct.obstack*, %struct.obstack** %__o190, align 8
  %149 = load i32, i32* %__len191, align 4
  call void @_obstack_newchunk(%struct.obstack* %148, i32 %149)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %if.then.189
  %150 = load %struct.obstack*, %struct.obstack** %__o190, align 8
  %next_free200 = getelementptr inbounds %struct.obstack, %struct.obstack* %150, i32 0, i32 3
  %151 = load i8*, i8** %next_free200, align 8
  %152 = bitcast i32* %mode121 to i8*
  %153 = load i32, i32* %__len191, align 4
  %conv201 = sext i32 %153 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 %conv201, i32 1, i1 false)
  %154 = load i32, i32* %__len191, align 4
  %155 = load %struct.obstack*, %struct.obstack** %__o190, align 8
  %next_free202 = getelementptr inbounds %struct.obstack, %struct.obstack* %155, i32 0, i32 3
  %156 = load i8*, i8** %next_free202, align 8
  %idx.ext203 = sext i32 %154 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %156, i64 %idx.ext203
  store i8* %add.ptr204, i8** %next_free202, align 8
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.199, %if.end.175
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o206, align 8
  store i32 4, i32* %__len207, align 4
  %157 = load %struct.obstack*, %struct.obstack** %__o206, align 8
  %next_free208 = getelementptr inbounds %struct.obstack, %struct.obstack* %157, i32 0, i32 3
  %158 = load i8*, i8** %next_free208, align 8
  %159 = load i32, i32* %__len207, align 4
  %idx.ext209 = sext i32 %159 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %158, i64 %idx.ext209
  %160 = load %struct.obstack*, %struct.obstack** %__o206, align 8
  %chunk_limit211 = getelementptr inbounds %struct.obstack, %struct.obstack* %160, i32 0, i32 4
  %161 = load i8*, i8** %chunk_limit211, align 8
  %cmp212 = icmp ugt i8* %add.ptr210, %161
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.205
  %162 = load %struct.obstack*, %struct.obstack** %__o206, align 8
  %163 = load i32, i32* %__len207, align 4
  call void @_obstack_newchunk(%struct.obstack* %162, i32 %163)
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %if.end.205
  %164 = load %struct.obstack*, %struct.obstack** %__o206, align 8
  %next_free216 = getelementptr inbounds %struct.obstack, %struct.obstack* %164, i32 0, i32 3
  %165 = load i8*, i8** %next_free216, align 8
  %166 = bitcast i32* %have_purpose to i8*
  %167 = load i32, i32* %__len207, align 4
  %conv217 = sext i32 %167 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 %conv217, i32 1, i1 false)
  %168 = load i32, i32* %__len207, align 4
  %169 = load %struct.obstack*, %struct.obstack** %__o206, align 8
  %next_free218 = getelementptr inbounds %struct.obstack, %struct.obstack* %169, i32 0, i32 3
  %170 = load i8*, i8** %next_free218, align 8
  %idx.ext219 = sext i32 %168 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %170, i64 %idx.ext219
  store i8* %add.ptr220, i8** %next_free218, align 8
  %171 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common221 = bitcast %union.tree_node* %171 to %struct.tree_common*
  %type222 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common221, i32 0, i32 1
  %172 = load %union.tree_node*, %union.tree_node** %type222, align 8
  %common223 = bitcast %union.tree_node* %172 to %struct.tree_common*
  %code224 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common223, i32 0, i32 2
  %bf.load225 = load i32, i32* %code224, align 8
  %bf.clear226 = and i32 %bf.load225, 255
  %cmp227 = icmp eq i32 %bf.clear226, 18
  br i1 %cmp227, label %if.then.229, label %if.end.248

if.then.229:                                      ; preds = %if.end.215
  %173 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common230 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %type231 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common230, i32 0, i32 1
  %174 = load %union.tree_node*, %union.tree_node** %type231, align 8
  %call232 = call i64 @int_size_in_bytes(%union.tree_node* %174)
  store i64 %call232, i64* %size, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o233, align 8
  store i32 8, i32* %__len234, align 4
  %175 = load %struct.obstack*, %struct.obstack** %__o233, align 8
  %next_free235 = getelementptr inbounds %struct.obstack, %struct.obstack* %175, i32 0, i32 3
  %176 = load i8*, i8** %next_free235, align 8
  %177 = load i32, i32* %__len234, align 4
  %idx.ext236 = sext i32 %177 to i64
  %add.ptr237 = getelementptr inbounds i8, i8* %176, i64 %idx.ext236
  %178 = load %struct.obstack*, %struct.obstack** %__o233, align 8
  %chunk_limit238 = getelementptr inbounds %struct.obstack, %struct.obstack* %178, i32 0, i32 4
  %179 = load i8*, i8** %chunk_limit238, align 8
  %cmp239 = icmp ugt i8* %add.ptr237, %179
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.then.229
  %180 = load %struct.obstack*, %struct.obstack** %__o233, align 8
  %181 = load i32, i32* %__len234, align 4
  call void @_obstack_newchunk(%struct.obstack* %180, i32 %181)
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %if.then.229
  %182 = load %struct.obstack*, %struct.obstack** %__o233, align 8
  %next_free243 = getelementptr inbounds %struct.obstack, %struct.obstack* %182, i32 0, i32 3
  %183 = load i8*, i8** %next_free243, align 8
  %184 = bitcast i64* %size to i8*
  %185 = load i32, i32* %__len234, align 4
  %conv244 = sext i32 %185 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* %184, i64 %conv244, i32 1, i1 false)
  %186 = load i32, i32* %__len234, align 4
  %187 = load %struct.obstack*, %struct.obstack** %__o233, align 8
  %next_free245 = getelementptr inbounds %struct.obstack, %struct.obstack* %187, i32 0, i32 3
  %188 = load i8*, i8** %next_free245, align 8
  %idx.ext246 = sext i32 %186 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %188, i64 %idx.ext246
  store i8* %add.ptr247, i8** %next_free245, align 8
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.242, %if.end.215
  %189 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp249 = bitcast %union.tree_node* %189 to %struct.tree_exp*
  %operands250 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp249, i32 0, i32 2
  %arrayidx251 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands250, i32 0, i64 1
  %190 = load %union.tree_node*, %union.tree_node** %arrayidx251, align 8
  store %union.tree_node* %190, %union.tree_node** %link, align 8
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.335, %if.end.248
  %191 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool253 = icmp ne %union.tree_node* %191, null
  br i1 %tobool253, label %for.body.254, label %for.end.338

for.body.254:                                     ; preds = %for.cond.252
  %192 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list255 = bitcast %union.tree_node* %192 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list255, i32 0, i32 2
  %193 = load %union.tree_node*, %union.tree_node** %value, align 8
  %tobool256 = icmp ne %union.tree_node* %193, null
  br i1 %tobool256, label %if.then.257, label %if.else.260

if.then.257:                                      ; preds = %for.body.254
  %194 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list258 = bitcast %union.tree_node* %194 to %struct.tree_list*
  %value259 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list258, i32 0, i32 2
  %195 = load %union.tree_node*, %union.tree_node** %value259, align 8
  call void @record_constant_1(%union.tree_node* %195)
  br label %if.end.276

if.else.260:                                      ; preds = %for.body.254
  store %union.tree_node* null, %union.tree_node** %zero, align 8
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o261, align 8
  store i32 8, i32* %__len262, align 4
  %196 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %next_free263 = getelementptr inbounds %struct.obstack, %struct.obstack* %196, i32 0, i32 3
  %197 = load i8*, i8** %next_free263, align 8
  %198 = load i32, i32* %__len262, align 4
  %idx.ext264 = sext i32 %198 to i64
  %add.ptr265 = getelementptr inbounds i8, i8* %197, i64 %idx.ext264
  %199 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %chunk_limit266 = getelementptr inbounds %struct.obstack, %struct.obstack* %199, i32 0, i32 4
  %200 = load i8*, i8** %chunk_limit266, align 8
  %cmp267 = icmp ugt i8* %add.ptr265, %200
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.else.260
  %201 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %202 = load i32, i32* %__len262, align 4
  call void @_obstack_newchunk(%struct.obstack* %201, i32 %202)
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %if.else.260
  %203 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %next_free271 = getelementptr inbounds %struct.obstack, %struct.obstack* %203, i32 0, i32 3
  %204 = load i8*, i8** %next_free271, align 8
  %205 = bitcast %union.tree_node** %zero to i8*
  %206 = load i32, i32* %__len262, align 4
  %conv272 = sext i32 %206 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 %conv272, i32 1, i1 false)
  %207 = load i32, i32* %__len262, align 4
  %208 = load %struct.obstack*, %struct.obstack** %__o261, align 8
  %next_free273 = getelementptr inbounds %struct.obstack, %struct.obstack* %208, i32 0, i32 3
  %209 = load i8*, i8** %next_free273, align 8
  %idx.ext274 = sext i32 %207 to i64
  %add.ptr275 = getelementptr inbounds i8, i8* %209, i64 %idx.ext274
  store i8* %add.ptr275, i8** %next_free273, align 8
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.270, %if.then.257
  %210 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list277 = bitcast %union.tree_node* %210 to %struct.tree_list*
  %purpose278 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list277, i32 0, i32 1
  %211 = load %union.tree_node*, %union.tree_node** %purpose278, align 8
  %tobool279 = icmp ne %union.tree_node* %211, null
  br i1 %tobool279, label %land.lhs.true, label %if.else.306

land.lhs.true:                                    ; preds = %if.end.276
  %212 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list280 = bitcast %union.tree_node* %212 to %struct.tree_list*
  %purpose281 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list280, i32 0, i32 1
  %213 = load %union.tree_node*, %union.tree_node** %purpose281, align 8
  %common282 = bitcast %union.tree_node* %213 to %struct.tree_common*
  %code283 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common282, i32 0, i32 2
  %bf.load284 = load i32, i32* %code283, align 8
  %bf.clear285 = and i32 %bf.load284, 255
  %cmp286 = icmp eq i32 %bf.clear285, 37
  br i1 %cmp286, label %if.then.288, label %if.else.306

if.then.288:                                      ; preds = %land.lhs.true
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o289, align 8
  store i32 8, i32* %__len290, align 4
  %214 = load %struct.obstack*, %struct.obstack** %__o289, align 8
  %next_free291 = getelementptr inbounds %struct.obstack, %struct.obstack* %214, i32 0, i32 3
  %215 = load i8*, i8** %next_free291, align 8
  %216 = load i32, i32* %__len290, align 4
  %idx.ext292 = sext i32 %216 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %215, i64 %idx.ext292
  %217 = load %struct.obstack*, %struct.obstack** %__o289, align 8
  %chunk_limit294 = getelementptr inbounds %struct.obstack, %struct.obstack* %217, i32 0, i32 4
  %218 = load i8*, i8** %chunk_limit294, align 8
  %cmp295 = icmp ugt i8* %add.ptr293, %218
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.then.288
  %219 = load %struct.obstack*, %struct.obstack** %__o289, align 8
  %220 = load i32, i32* %__len290, align 4
  call void @_obstack_newchunk(%struct.obstack* %219, i32 %220)
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %if.then.288
  %221 = load %struct.obstack*, %struct.obstack** %__o289, align 8
  %next_free299 = getelementptr inbounds %struct.obstack, %struct.obstack* %221, i32 0, i32 3
  %222 = load i8*, i8** %next_free299, align 8
  %223 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list300 = bitcast %union.tree_node* %223 to %struct.tree_list*
  %purpose301 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list300, i32 0, i32 1
  %224 = bitcast %union.tree_node** %purpose301 to i8*
  %225 = load i32, i32* %__len290, align 4
  %conv302 = sext i32 %225 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %224, i64 %conv302, i32 1, i1 false)
  %226 = load i32, i32* %__len290, align 4
  %227 = load %struct.obstack*, %struct.obstack** %__o289, align 8
  %next_free303 = getelementptr inbounds %struct.obstack, %struct.obstack* %227, i32 0, i32 3
  %228 = load i8*, i8** %next_free303, align 8
  %idx.ext304 = sext i32 %226 to i64
  %add.ptr305 = getelementptr inbounds i8, i8* %228, i64 %idx.ext304
  store i8* %add.ptr305, i8** %next_free303, align 8
  br label %if.end.334

if.else.306:                                      ; preds = %land.lhs.true, %if.end.276
  %229 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list307 = bitcast %union.tree_node* %229 to %struct.tree_list*
  %purpose308 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list307, i32 0, i32 1
  %230 = load %union.tree_node*, %union.tree_node** %purpose308, align 8
  %tobool309 = icmp ne %union.tree_node* %230, null
  br i1 %tobool309, label %if.then.310, label %if.else.313

if.then.310:                                      ; preds = %if.else.306
  %231 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list311 = bitcast %union.tree_node* %231 to %struct.tree_list*
  %purpose312 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list311, i32 0, i32 1
  %232 = load %union.tree_node*, %union.tree_node** %purpose312, align 8
  call void @record_constant_1(%union.tree_node* %232)
  br label %if.end.333

if.else.313:                                      ; preds = %if.else.306
  %233 = load i32, i32* %have_purpose, align 4
  %tobool314 = icmp ne i32 %233, 0
  br i1 %tobool314, label %if.then.315, label %if.end.332

if.then.315:                                      ; preds = %if.else.313
  store i32 0, i32* %zero316, align 4
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o317, align 8
  store i32 4, i32* %__len318, align 4
  %234 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %next_free319 = getelementptr inbounds %struct.obstack, %struct.obstack* %234, i32 0, i32 3
  %235 = load i8*, i8** %next_free319, align 8
  %236 = load i32, i32* %__len318, align 4
  %idx.ext320 = sext i32 %236 to i64
  %add.ptr321 = getelementptr inbounds i8, i8* %235, i64 %idx.ext320
  %237 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %chunk_limit322 = getelementptr inbounds %struct.obstack, %struct.obstack* %237, i32 0, i32 4
  %238 = load i8*, i8** %chunk_limit322, align 8
  %cmp323 = icmp ugt i8* %add.ptr321, %238
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.then.315
  %239 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %240 = load i32, i32* %__len318, align 4
  call void @_obstack_newchunk(%struct.obstack* %239, i32 %240)
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %if.then.315
  %241 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %next_free327 = getelementptr inbounds %struct.obstack, %struct.obstack* %241, i32 0, i32 3
  %242 = load i8*, i8** %next_free327, align 8
  %243 = bitcast i32* %zero316 to i8*
  %244 = load i32, i32* %__len318, align 4
  %conv328 = sext i32 %244 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %243, i64 %conv328, i32 1, i1 false)
  %245 = load i32, i32* %__len318, align 4
  %246 = load %struct.obstack*, %struct.obstack** %__o317, align 8
  %next_free329 = getelementptr inbounds %struct.obstack, %struct.obstack* %246, i32 0, i32 3
  %247 = load i8*, i8** %next_free329, align 8
  %idx.ext330 = sext i32 %245 to i64
  %add.ptr331 = getelementptr inbounds i8, i8* %247, i64 %idx.ext330
  store i8* %add.ptr331, i8** %next_free329, align 8
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.326, %if.else.313
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.310
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.end.298
  br label %for.inc.335

for.inc.335:                                      ; preds = %if.end.334
  %248 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common336 = bitcast %union.tree_node* %248 to %struct.tree_common*
  %chain337 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common336, i32 0, i32 0
  %249 = load %union.tree_node*, %union.tree_node** %chain337, align 8
  store %union.tree_node* %249, %union.tree_node** %link, align 8
  br label %for.cond.252

for.end.338:                                      ; preds = %for.cond.252
  br label %if.end.339

if.end.339:                                       ; preds = %for.end.338
  br label %return

sw.bb.340:                                        ; preds = %if.end
  %250 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @decode_addr_const(%union.tree_node* %250, %struct.addr_const* %value341)
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o342, align 8
  store i32 8, i32* %__len343, align 4
  %251 = load %struct.obstack*, %struct.obstack** %__o342, align 8
  %next_free344 = getelementptr inbounds %struct.obstack, %struct.obstack* %251, i32 0, i32 3
  %252 = load i8*, i8** %next_free344, align 8
  %253 = load i32, i32* %__len343, align 4
  %idx.ext345 = sext i32 %253 to i64
  %add.ptr346 = getelementptr inbounds i8, i8* %252, i64 %idx.ext345
  %254 = load %struct.obstack*, %struct.obstack** %__o342, align 8
  %chunk_limit347 = getelementptr inbounds %struct.obstack, %struct.obstack* %254, i32 0, i32 4
  %255 = load i8*, i8** %chunk_limit347, align 8
  %cmp348 = icmp ugt i8* %add.ptr346, %255
  br i1 %cmp348, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %sw.bb.340
  %256 = load %struct.obstack*, %struct.obstack** %__o342, align 8
  %257 = load i32, i32* %__len343, align 4
  call void @_obstack_newchunk(%struct.obstack* %256, i32 %257)
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.350, %sw.bb.340
  %258 = load %struct.obstack*, %struct.obstack** %__o342, align 8
  %next_free352 = getelementptr inbounds %struct.obstack, %struct.obstack* %258, i32 0, i32 3
  %259 = load i8*, i8** %next_free352, align 8
  %offset = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value341, i32 0, i32 1
  %260 = bitcast i64* %offset to i8*
  %261 = load i32, i32* %__len343, align 4
  %conv353 = sext i32 %261 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %260, i64 %conv353, i32 1, i1 false)
  %262 = load i32, i32* %__len343, align 4
  %263 = load %struct.obstack*, %struct.obstack** %__o342, align 8
  %next_free354 = getelementptr inbounds %struct.obstack, %struct.obstack* %263, i32 0, i32 3
  %264 = load i8*, i8** %next_free354, align 8
  %idx.ext355 = sext i32 %262 to i64
  %add.ptr356 = getelementptr inbounds i8, i8* %264, i64 %idx.ext355
  store i8* %add.ptr356, i8** %next_free354, align 8
  %base = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value341, i32 0, i32 0
  %265 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %266 = bitcast %struct.rtx_def* %265 to i32*
  %bf.load357 = load i32, i32* %266, align 8
  %bf.clear358 = and i32 %bf.load357, 65535
  switch i32 %bf.clear358, label %sw.default [
    i32 68, label %sw.bb.359
    i32 67, label %sw.bb.383
  ]

sw.bb.359:                                        ; preds = %if.end.351
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o360, align 8
  %base362 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value341, i32 0, i32 0
  %267 = load %struct.rtx_def*, %struct.rtx_def** %base362, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx363 to i8**
  %268 = load i8*, i8** %rtstr, align 8
  %call364 = call i64 @strlen(i8* %268) #7
  %add = add i64 %call364, 1
  %conv365 = trunc i64 %add to i32
  store i32 %conv365, i32* %__len361, align 4
  %269 = load %struct.obstack*, %struct.obstack** %__o360, align 8
  %next_free366 = getelementptr inbounds %struct.obstack, %struct.obstack* %269, i32 0, i32 3
  %270 = load i8*, i8** %next_free366, align 8
  %271 = load i32, i32* %__len361, align 4
  %idx.ext367 = sext i32 %271 to i64
  %add.ptr368 = getelementptr inbounds i8, i8* %270, i64 %idx.ext367
  %272 = load %struct.obstack*, %struct.obstack** %__o360, align 8
  %chunk_limit369 = getelementptr inbounds %struct.obstack, %struct.obstack* %272, i32 0, i32 4
  %273 = load i8*, i8** %chunk_limit369, align 8
  %cmp370 = icmp ugt i8* %add.ptr368, %273
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %sw.bb.359
  %274 = load %struct.obstack*, %struct.obstack** %__o360, align 8
  %275 = load i32, i32* %__len361, align 4
  call void @_obstack_newchunk(%struct.obstack* %274, i32 %275)
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %sw.bb.359
  %276 = load %struct.obstack*, %struct.obstack** %__o360, align 8
  %next_free374 = getelementptr inbounds %struct.obstack, %struct.obstack* %276, i32 0, i32 3
  %277 = load i8*, i8** %next_free374, align 8
  %base375 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value341, i32 0, i32 0
  %278 = load %struct.rtx_def*, %struct.rtx_def** %base375, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %278, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 0
  %rtstr378 = bitcast %union.rtunion_def* %arrayidx377 to i8**
  %279 = load i8*, i8** %rtstr378, align 8
  %280 = load i32, i32* %__len361, align 4
  %conv379 = sext i32 %280 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* %279, i64 %conv379, i32 1, i1 false)
  %281 = load i32, i32* %__len361, align 4
  %282 = load %struct.obstack*, %struct.obstack** %__o360, align 8
  %next_free380 = getelementptr inbounds %struct.obstack, %struct.obstack* %282, i32 0, i32 3
  %283 = load i8*, i8** %next_free380, align 8
  %idx.ext381 = sext i32 %281 to i64
  %add.ptr382 = getelementptr inbounds i8, i8* %283, i64 %idx.ext381
  store i8* %add.ptr382, i8** %next_free380, align 8
  br label %sw.epilog

sw.bb.383:                                        ; preds = %if.end.351
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o384, align 8
  store i32 8, i32* %__len385, align 4
  %284 = load %struct.obstack*, %struct.obstack** %__o384, align 8
  %next_free386 = getelementptr inbounds %struct.obstack, %struct.obstack* %284, i32 0, i32 3
  %285 = load i8*, i8** %next_free386, align 8
  %286 = load i32, i32* %__len385, align 4
  %idx.ext387 = sext i32 %286 to i64
  %add.ptr388 = getelementptr inbounds i8, i8* %285, i64 %idx.ext387
  %287 = load %struct.obstack*, %struct.obstack** %__o384, align 8
  %chunk_limit389 = getelementptr inbounds %struct.obstack, %struct.obstack* %287, i32 0, i32 4
  %288 = load i8*, i8** %chunk_limit389, align 8
  %cmp390 = icmp ugt i8* %add.ptr388, %288
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %sw.bb.383
  %289 = load %struct.obstack*, %struct.obstack** %__o384, align 8
  %290 = load i32, i32* %__len385, align 4
  call void @_obstack_newchunk(%struct.obstack* %289, i32 %290)
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.392, %sw.bb.383
  %291 = load %struct.obstack*, %struct.obstack** %__o384, align 8
  %next_free394 = getelementptr inbounds %struct.obstack, %struct.obstack* %291, i32 0, i32 3
  %292 = load i8*, i8** %next_free394, align 8
  %base395 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %value341, i32 0, i32 0
  %293 = load %struct.rtx_def*, %struct.rtx_def** %base395, align 8
  %fld396 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %293, i32 0, i32 1
  %arrayidx397 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld396, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx397 to %struct.rtx_def**
  %294 = bitcast %struct.rtx_def** %rtx to i8*
  %295 = load i32, i32* %__len385, align 4
  %conv398 = sext i32 %295 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %292, i8* %294, i64 %conv398, i32 1, i1 false)
  %296 = load i32, i32* %__len385, align 4
  %297 = load %struct.obstack*, %struct.obstack** %__o384, align 8
  %next_free399 = getelementptr inbounds %struct.obstack, %struct.obstack* %297, i32 0, i32 3
  %298 = load i8*, i8** %next_free399, align 8
  %idx.ext400 = sext i32 %296 to i64
  %add.ptr401 = getelementptr inbounds i8, i8* %298, i64 %idx.ext400
  store i8* %add.ptr401, i8** %next_free399, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.351
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 3034, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.record_constant_1, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %if.end.393, %if.end.373
  br label %return

sw.bb.402:                                        ; preds = %if.end, %if.end, %if.end
  %299 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp403 = bitcast %union.tree_node* %299 to %struct.tree_exp*
  %operands404 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp403, i32 0, i32 2
  %arrayidx405 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands404, i32 0, i64 0
  %300 = load %union.tree_node*, %union.tree_node** %arrayidx405, align 8
  call void @record_constant_1(%union.tree_node* %300)
  %301 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp406 = bitcast %union.tree_node* %301 to %struct.tree_exp*
  %operands407 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp406, i32 0, i32 2
  %arrayidx408 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands407, i32 0, i64 1
  %302 = load %union.tree_node*, %union.tree_node** %arrayidx408, align 8
  call void @record_constant_1(%union.tree_node* %302)
  br label %return

sw.bb.409:                                        ; preds = %if.end, %if.end, %if.end
  %303 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp410 = bitcast %union.tree_node* %303 to %struct.tree_exp*
  %operands411 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp410, i32 0, i32 2
  %arrayidx412 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands411, i32 0, i64 0
  %304 = load %union.tree_node*, %union.tree_node** %arrayidx412, align 8
  call void @record_constant_1(%union.tree_node* %304)
  br label %return

sw.default.413:                                   ; preds = %if.end
  %305 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 9), align 8
  %306 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call414 = call %union.tree_node* %305(%union.tree_node* %306)
  store %union.tree_node* %call414, %union.tree_node** %new, align 8
  %307 = load %union.tree_node*, %union.tree_node** %new, align 8
  %308 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %cmp415 = icmp ne %union.tree_node* %307, %308
  br i1 %cmp415, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %sw.default.413
  %309 = load %union.tree_node*, %union.tree_node** %new, align 8
  call void @record_constant_1(%union.tree_node* %309)
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.417, %sw.default.413
  br label %return

sw.epilog.419:                                    ; preds = %if.end.65, %if.end.27, %if.end.10
  store %struct.obstack* @permanent_obstack, %struct.obstack** %__o420, align 8
  %310 = load i32, i32* %len, align 4
  store i32 %310, i32* %__len421, align 4
  %311 = load %struct.obstack*, %struct.obstack** %__o420, align 8
  %next_free422 = getelementptr inbounds %struct.obstack, %struct.obstack* %311, i32 0, i32 3
  %312 = load i8*, i8** %next_free422, align 8
  %313 = load i32, i32* %__len421, align 4
  %idx.ext423 = sext i32 %313 to i64
  %add.ptr424 = getelementptr inbounds i8, i8* %312, i64 %idx.ext423
  %314 = load %struct.obstack*, %struct.obstack** %__o420, align 8
  %chunk_limit425 = getelementptr inbounds %struct.obstack, %struct.obstack* %314, i32 0, i32 4
  %315 = load i8*, i8** %chunk_limit425, align 8
  %cmp426 = icmp ugt i8* %add.ptr424, %315
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %sw.epilog.419
  %316 = load %struct.obstack*, %struct.obstack** %__o420, align 8
  %317 = load i32, i32* %__len421, align 4
  call void @_obstack_newchunk(%struct.obstack* %316, i32 %317)
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.428, %sw.epilog.419
  %318 = load %struct.obstack*, %struct.obstack** %__o420, align 8
  %next_free430 = getelementptr inbounds %struct.obstack, %struct.obstack* %318, i32 0, i32 3
  %319 = load i8*, i8** %next_free430, align 8
  %320 = load i8*, i8** %strp, align 8
  %321 = load i32, i32* %__len421, align 4
  %conv431 = sext i32 %321 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* %320, i64 %conv431, i32 1, i1 false)
  %322 = load i32, i32* %__len421, align 4
  %323 = load %struct.obstack*, %struct.obstack** %__o420, align 8
  %next_free432 = getelementptr inbounds %struct.obstack, %struct.obstack* %323, i32 0, i32 3
  %324 = load i8*, i8** %next_free432, align 8
  %idx.ext433 = sext i32 %322 to i64
  %add.ptr434 = getelementptr inbounds i8, i8* %324, i64 %idx.ext433
  store i8* %add.ptr434, i8** %next_free432, align 8
  br label %return

return:                                           ; preds = %if.end.429, %if.end.418, %sw.bb.409, %sw.bb.402, %sw.epilog, %if.end.339, %if.end.111, %sw.bb.73, %if.then.39
  ret void
}

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @copy_node(%union.tree_node*) #1

declare %union.tree_node* @build_complex(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare %union.tree_node* @copy_list(%union.tree_node*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare i64 @htab_elements(%struct.htab*) #1

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal void @mark_constants(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.52

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 68
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %call = call i32 @mark_constant(%struct.rtx_def** %x.addr, i8* null)
  br label %for.end.52

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load4 = load i32, i32* %4, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %idxprom = sext i32 %bf.clear5 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 105
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @mark_constants(%struct.rtx_def* %7)
  br label %for.end.52

if.end.10:                                        ; preds = %if.end.3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load11 = load i32, i32* %9, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %idxprom13 = sext i32 %bf.clear12 to i64
  %arrayidx14 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom13
  %10 = load i8*, i8** %arrayidx14, align 8
  store i8* %10, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end.10
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load15 = load i32, i32* %13, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %idxprom17 = sext i32 %bf.clear16 to i64
  %arrayidx18 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom17
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %cmp20 = icmp slt i32 %11, %conv19
  br i1 %cmp20, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %16 = load i8, i8* %15, align 1
  %conv22 = sext i8 %16 to i32
  switch i32 %conv22, label %sw.default [
    i32 101, label %sw.bb
    i32 69, label %sw.bb.27
    i32 83, label %sw.bb.49
    i32 115, label %sw.bb.49
    i32 48, label %sw.bb.49
    i32 105, label %sw.bb.49
    i32 119, label %sw.bb.49
    i32 110, label %sw.bb.49
    i32 117, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 %idxprom23
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  call void @mark_constants(%struct.rtx_def* %19)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 %idxprom28
  %rtvec = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %cmp31 = icmp ne %struct.rtvec_def* %22, null
  br i1 %cmp31, label %if.then.33, label %if.end.48

if.then.33:                                       ; preds = %sw.bb.27
  store i32 0, i32* %j, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %if.then.33
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 %idxprom35
  %rtvec38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec38, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 0
  %27 = load i32, i32* %num_elem, align 4
  %cmp39 = icmp slt i32 %23, %27
  br i1 %cmp39, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.34
  %28 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %29 to i64
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 %idxprom43
  %rtvec46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %31 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec46, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %31, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom42
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx47, align 8
  call void @mark_constants(%struct.rtx_def* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body.41
  %33 = load i32, i32* %j, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %sw.bb.27
  br label %sw.epilog

sw.bb.49:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 4184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.mark_constants, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb.49, %if.end.48, %sw.bb
  br label %for.inc.50

for.inc.50:                                       ; preds = %sw.epilog
  %34 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %34, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %if.then, %if.then.2, %if.then.8, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mark_constant(%struct.rtx_def** %current_rtx, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %current_rtx.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %pool = alloca %struct.pool_constant*, align 8
  %defstr = alloca %struct.deferred_string**, align 8
  %p = alloca %struct.deferred_string*, align 8
  store %struct.rtx_def** %current_rtx, %struct.rtx_def*** %current_rtx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %current_rtx.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 68
  br i1 %cmp1, label %if.then.2, label %if.end.27

if.then.2:                                        ; preds = %if.else
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load3, 26
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %if.then.5, label %if.else.11

if.then.5:                                        ; preds = %if.then.2
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call = call %struct.pool_constant* @find_pool_constant(%struct.function* %7, %struct.rtx_def* %8)
  store %struct.pool_constant* %call, %struct.pool_constant** %pool, align 8
  %9 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mark = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %9, i32 0, i32 8
  %10 = load i32, i32* %mark, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.then.5
  %11 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %mark8 = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %11, i32 0, i32 8
  store i32 1, i32* %mark8, align 4
  %12 = load %struct.pool_constant*, %struct.pool_constant** %pool, align 8
  %constant = getelementptr inbounds %struct.pool_constant, %struct.pool_constant* %12, i32 0, i32 3
  %call9 = call i32 @for_each_rtx(%struct.rtx_def** %constant, i32 (%struct.rtx_def**, i8*)* @mark_constant, i8* null)
  br label %if.end

if.else.10:                                       ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.26

if.else.11:                                       ; preds = %if.then.2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load12 = load i32, i32* %14, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 31
  %tobool14 = icmp ne i32 %bf.lshr13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %if.else.11
  %15 = load %struct.htab*, %struct.htab** @const_str_htab, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %17 = load i8*, i8** %rtstr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtstr18 = bitcast %union.rtunion_def* %arrayidx17 to i8**
  %19 = load i8*, i8** %rtstr18, align 8
  %20 = ptrtoint i8* %19 to i64
  %shr = ashr i64 %20, 3
  %conv = trunc i64 %shr to i32
  %call19 = call i8** @htab_find_slot_with_hash(%struct.htab* %15, i8* %17, i32 %conv, i32 0)
  %21 = bitcast i8** %call19 to %struct.deferred_string**
  store %struct.deferred_string** %21, %struct.deferred_string*** %defstr, align 8
  %22 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  %tobool20 = icmp ne %struct.deferred_string** %22, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.then.15
  %23 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  %24 = load %struct.deferred_string*, %struct.deferred_string** %23, align 8
  store %struct.deferred_string* %24, %struct.deferred_string** %p, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load22 = load i32, i32* %26, align 8
  %bf.clear23 = and i32 %bf.load22, 2147483647
  store i32 %bf.clear23, i32* %26, align 8
  %27 = load %struct.deferred_string*, %struct.deferred_string** %p, align 8
  %exp = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %27, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %exp, align 8
  %29 = load %struct.deferred_string*, %struct.deferred_string** %p, align 8
  %labelno = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %29, i32 0, i32 2
  %30 = load i32, i32* %labelno, align 4
  call void @output_constant_def_contents(%union.tree_node* %28, i32 0, i32 %30)
  %31 = load %struct.htab*, %struct.htab** @const_str_htab, align 8
  %32 = load %struct.deferred_string**, %struct.deferred_string*** %defstr, align 8
  %33 = bitcast %struct.deferred_string** %32 to i8**
  call void @htab_clear_slot(%struct.htab* %31, i8** %33)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.else.11
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.else.10, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

declare i32 @handled_component_p(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i64 @array_size_for_constructor(%union.tree_node* %val) #0 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca %union.tree_node*, align 8
  %max_index = alloca %union.tree_node*, align 8
  %i = alloca %union.tree_node*, align 8
  %index = alloca %union.tree_node*, align 8
  store %union.tree_node* %val, %union.tree_node** %val.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %val.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 29
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %val.addr, align 8
  %string = bitcast %union.tree_node* %1 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 2
  %2 = load i32, i32* %length, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %max_index, align 8
  %3 = load %union.tree_node*, %union.tree_node** %val.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %4, %union.tree_node** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %union.tree_node*, %union.tree_node** %i, align 8
  %tobool = icmp ne %union.tree_node* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %i, align 8
  %list = bitcast %union.tree_node* %6 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  store %union.tree_node* %7, %union.tree_node** %index, align 8
  %8 = load %union.tree_node*, %union.tree_node** %index, align 8
  %common1 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 113
  br i1 %cmp5, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %for.body
  %9 = load %union.tree_node*, %union.tree_node** %index, align 8
  %exp8 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands9 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp8, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands9, i32 0, i64 1
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8
  store %union.tree_node* %10, %union.tree_node** %index, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %for.body
  %11 = load %union.tree_node*, %union.tree_node** %max_index, align 8
  %cmp12 = icmp eq %union.tree_node* %11, null
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %12 = load %union.tree_node*, %union.tree_node** %max_index, align 8
  %13 = load %union.tree_node*, %union.tree_node** %index, align 8
  %call = call i32 @tree_int_cst_lt(%union.tree_node* %12, %union.tree_node* %13)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.11
  %14 = load %union.tree_node*, %union.tree_node** %index, align 8
  store %union.tree_node* %14, %union.tree_node** %max_index, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %15 = load %union.tree_node*, %union.tree_node** %i, align 8
  %common17 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %16, %union.tree_node** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %union.tree_node*, %union.tree_node** %max_index, align 8
  %cmp18 = icmp eq %union.tree_node* %17, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store i64 0, i64* %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %19 = load %union.tree_node*, %union.tree_node** %max_index, align 8
  %call22 = call %union.tree_node* @convert(%union.tree_node* %18, %union.tree_node* %19)
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %21 = load %union.tree_node*, %union.tree_node** %val.addr, align 8
  %common23 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type24 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type24, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %values, align 8
  %type25 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type25, i32 0, i32 12
  %24 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %call26 = call %union.tree_node* @convert(%union.tree_node* %20, %union.tree_node* %24)
  %call27 = call %union.tree_node* @size_binop(i32 60, %union.tree_node* %call22, %union.tree_node* %call26)
  store %union.tree_node* %call27, %union.tree_node** %i, align 8
  %25 = load %union.tree_node*, %union.tree_node** %i, align 8
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  %call28 = call %union.tree_node* @convert(%union.tree_node* %26, %union.tree_node* %27)
  %call29 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %25, %union.tree_node* %call28)
  store %union.tree_node* %call29, %union.tree_node** %i, align 8
  %28 = load %union.tree_node*, %union.tree_node** %i, align 8
  %29 = load %union.tree_node*, %union.tree_node** %val.addr, align 8
  %common30 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %common32 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %type33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type33, align 8
  %type34 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type34, i32 0, i32 3
  %32 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call35 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %28, %union.tree_node* %32)
  store %union.tree_node* %call35, %union.tree_node** %i, align 8
  %33 = load %union.tree_node*, %union.tree_node** %i, align 8
  %call36 = call i64 @tree_low_cst(%union.tree_node* %33, i32 1)
  store i64 %call36, i64* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then
  %34 = load i64, i64* %retval
  ret i64 %34
}

declare i64 @int_bit_position(%union.tree_node*) #1

declare i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @size_binop(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_const_str_htab_1(i8** %x, i8* %data) #0 {
entry:
  %x.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store i8** %x, i8*** %x.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %x.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.deferred_string*
  %exp = getelementptr inbounds %struct.deferred_string, %struct.deferred_string* %2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %exp, align 8
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

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
