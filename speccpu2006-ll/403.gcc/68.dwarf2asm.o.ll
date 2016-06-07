; ModuleID = 'dwarf2asm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@asm_out_file = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@flag_debug_asm = external global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@target_flags = external global i32, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"\09.ascii \22\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"\5C%o\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\5C0\22\09%s \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\22\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"\09.string\09\00", align 1
@.str.9 = private unnamed_addr constant [257 x i8] c"\01\01\01\01\01\01\01\01btn\01fr\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\5C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\09.ascii\09\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.12 = private unnamed_addr constant [12 x i8] c"dwarf2asm.c\00", align 1
@__FUNCTION__.size_of_encoded_value = private unnamed_addr constant [22 x i8] c"size_of_encoded_value\00", align 1
@eh_data_format_name.format_names = internal constant [256 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.81, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"uleb128\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"udata2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"udata4\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"udata8\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"sleb128\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"sdata2\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"sdata4\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sdata8\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pcrel\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"pcrel uleb128\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"pcrel udata2\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"pcrel udata4\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"pcrel udata8\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"pcrel sleb128\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"pcrel sdata2\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"pcrel sdata4\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"pcrel sdata8\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"textrel\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"textrel uleb128\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"textrel udata2\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"textrel udata4\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"textrel udata8\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"textrel sleb128\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"textrel sdata2\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"textrel sdata4\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"textrel sdata8\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"datarel\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"datarel uleb128\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"datarel udata2\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"datarel udata4\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"datarel udata8\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"datarel sleb128\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"datarel sdata2\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"datarel sdata4\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"datarel sdata8\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"funcrel\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"funcrel uleb128\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"funcrel udata2\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"funcrel udata4\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"funcrel udata8\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"funcrel sleb128\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"funcrel sdata2\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"funcrel sdata4\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"funcrel sdata8\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"aligned absolute\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"indirect pcrel\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"indirect pcrel uleb128\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata2\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata4\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"indirect pcrel udata8\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"indirect pcrel sleb128\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata2\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata4\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"indirect pcrel sdata8\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"indirect textrel\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"indirect textrel uleb128\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"indirect textrel udata2\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"indirect textrel udata4\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"indirect textrel udata8\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"indirect textrel sleb128\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata2\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata4\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"indirect textrel sdata8\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"indirect datarel\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"indirect datarel uleb128\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"indirect datarel udata2\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"indirect datarel udata4\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"indirect datarel udata8\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"indirect datarel sleb128\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata2\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata4\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"indirect datarel sdata8\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"indirect funcrel\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"indirect funcrel uleb128\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata2\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata4\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"indirect funcrel udata8\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"indirect funcrel sleb128\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata2\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata4\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"indirect funcrel sdata8\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"omit\00", align 1
@__FUNCTION__.eh_data_format_name = private unnamed_addr constant [20 x i8] c"eh_data_format_name\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"\09.uleb128 \00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"\09.sleb128 \00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@indirect_pool = internal global %struct.splay_tree_s* null, align 8
@.str.99 = private unnamed_addr constant [8 x i8] c"\09.long\09\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"@GOT\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"@GOTOFF\00", align 1
@__FUNCTION__.dw2_asm_output_encoded_addr_rtx = private unnamed_addr constant [32 x i8] c"dw2_asm_output_encoded_addr_rtx\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"\09.hidden DW.ref.%s\0A\00", align 1
@__FUNCTION__.dw2_force_const_mem = private unnamed_addr constant [20 x i8] c"dw2_force_const_mem\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"DW.ref.%s\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@ggc_pending_trees = external global %struct.varray_head_tag*, align 8

; Function Attrs: nounwind uwtable
define void @dw2_assemble_integer(i32 %size, %struct.rtx_def* %x) #0 {
entry:
  %size.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %op = alloca i8*, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %call = call i8* @integer_asm_op(i32 %0, i32 0)
  store i8* %call, i8** %op, align 8
  %1 = load i8*, i8** %op, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %op, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call1 = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %8 = load i64, i64* %rtwint, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %8)
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %9, %struct.rtx_def* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.6

if.else.4:                                        ; preds = %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = load i32, i32* %size.addr, align 4
  %call5 = call zeroext i1 @assemble_integer(%struct.rtx_def* %11, i32 %12, i32 8, i32 1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.4, %if.end
  ret void
}

declare i8* @integer_asm_op(i32, i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @output_addr_const(%struct._IO_FILE*, %struct.rtx_def*) #1

declare zeroext i1 @assemble_integer(%struct.rtx_def*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_data(i32 %size, i64 %value, i8* %comment, ...) #0 {
entry:
  %size.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %size, i32* %size.addr, align 4
  store i64 %value, i64* %value.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, 8
  %cmp = icmp slt i32 %mul, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %mul2 = mul nsw i32 %1, 8
  %sh_prom = zext i32 %mul2 to i64
  %shl = shl i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %2 = load i64, i64* %value.addr, align 8
  %and = and i64 %2, %neg
  store i64 %and, i64* %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %size.addr, align 4
  %4 = load i64, i64* %value.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %4)
  call void @dw2_assemble_integer(i32 %3, %struct.rtx_def* %call)
  %5 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %9 = load i8*, i8** %comment.addr, align 8
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call7 = call i32 @vfprintf(%struct._IO_FILE* %8, i8* %9, %struct.__va_list_tag* %arraydecay6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call9 = call i32 @fputc(i32 10, %struct._IO_FILE* %10)
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_delta(i32 %size, i8* %lab1, i8* %lab2, i8* %comment, ...) #0 {
entry:
  %size.addr = alloca i32, align 4
  %lab1.addr = alloca i8*, align 8
  %lab2.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %size, i32* %size.addr, align 4
  store i8* %lab1, i8** %lab1.addr, align 8
  store i8* %lab2, i8** %lab2.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %2 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %2, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 5, i32 4
  %3 = load i8*, i8** %lab1.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond4, i8* %3)
  %4 = load i32, i32* @target_flags, align 4
  %and5 = and i32 %4, 33554432
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 5, i32 4
  %5 = load i8*, i8** %lab2.addr, align 8
  %call8 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond7, i8* %5)
  %call9 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond, %struct.rtx_def* %call, %struct.rtx_def* %call8)
  call void @dw2_assemble_integer(i32 %0, %struct.rtx_def* %call9)
  %6 = load i32, i32* @flag_debug_asm, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %comment.addr, align 8
  %tobool11 = icmp ne i8* %7, null
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %10 = load i8*, i8** %comment.addr, align 8
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call14 = call i32 @vfprintf(%struct._IO_FILE* %9, i8* %10, %struct.__va_list_tag* %arraydecay13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call15 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1617 = bitcast %struct.__va_list_tag* %arraydecay16 to i8*
  call void @llvm.va_end(i8* %arraydecay1617)
  ret void
}

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_offset(i32 %size, i8* %label, i8* %comment, ...) #0 {
entry:
  %size.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %size, i32* %size.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %2 = load i8*, i8** %label.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %2)
  call void @dw2_assemble_integer(i32 %0, %struct.rtx_def* %call)
  %3 = load i32, i32* @flag_debug_asm, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load i8*, i8** %comment.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_pcrel(i32 %size, i8* %label, i8* %comment, ...) #0 {
entry:
  %size.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %size, i32* %size.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %2 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %2, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 5, i32 4
  %3 = load i8*, i8** %label.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond4, i8* %3)
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %call5 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond, %struct.rtx_def* %call, %struct.rtx_def* %4)
  call void @dw2_assemble_integer(i32 %0, %struct.rtx_def* %call5)
  %5 = load i32, i32* @flag_debug_asm, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i8*, i8** %comment.addr, align 8
  %tobool7 = icmp ne i8* %6, null
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %9 = load i8*, i8** %comment.addr, align 8
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call10 = call i32 @vfprintf(%struct._IO_FILE* %8, i8* %9, %struct.__va_list_tag* %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call11 = call i32 @fputc(i32 10, %struct._IO_FILE* %10)
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_addr(i32 %size, i8* %label, i8* %comment, ...) #0 {
entry:
  %size.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %size, i32* %size.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %2 = load i8*, i8** %label.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %2)
  call void @dw2_assemble_integer(i32 %0, %struct.rtx_def* %call)
  %3 = load i32, i32* @flag_debug_asm, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load i8*, i8** %comment.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_addr_rtx(i32 %size, %struct.rtx_def* %addr, i8* %comment, ...) #0 {
entry:
  %size.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %size, i32* %size.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  call void @dw2_assemble_integer(i32 %0, %struct.rtx_def* %1)
  %2 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %comment.addr, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %6 = load i8*, i8** %comment.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vfprintf(%struct._IO_FILE* %5, i8* %6, %struct.__va_list_tag* %arraydecay3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call5 = call i32 @fputc(i32 10, %struct._IO_FILE* %7)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_nstring(i8* %str, i64 %orig_len, i8* %comment, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %orig_len.addr = alloca i64, align 8
  %comment.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %c = alloca i32, align 4
  %_ascii_bytes = alloca i8*, align 8
  %limit = alloca i8*, align 8
  %bytes_in_chunk = alloca i32, align 4
  %p = alloca i8*, align 8
  %_limited_str = alloca i8*, align 8
  %ch = alloca i32, align 4
  %escape = alloca i32, align 4
  %escape78 = alloca i32, align 4
  %ch79 = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i64 %orig_len, i64* %orig_len.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i64, i64* %orig_len.addr, align 8
  store i64 %0, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  store i64 %call, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %comment.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else.25

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %5)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %len, align 8
  %cmp5 = icmp ult i64 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %8
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  store i32 %conv, i32* %c, align 4
  %11 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %11, 34
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load i32, i32* %c, align 4
  %cmp8 = icmp eq i32 %12, 92
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %lor.lhs.false, %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call11 = call i32 @fputc(i32 92, %struct._IO_FILE* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %lor.lhs.false
  %14 = load i32, i32* %c, align 4
  %and = and i32 %14, 255
  %idxprom = sext i32 %and to i64
  %arrayidx13 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %15 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %15 to i32
  %and15 = and i32 %conv14, 16
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.12
  %16 = load i32, i32* %c, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call18 = call i32 @fputc(i32 %16, %struct._IO_FILE* %17)
  br label %if.end.20

if.else:                                          ; preds = %if.end.12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %19 = load i32, i32* %c, align 4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %23 = load i8*, i8** %comment.addr, align 8
  %arraydecay22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call23 = call i32 @vfprintf(%struct._IO_FILE* %22, i8* %23, %struct.__va_list_tag* %arraydecay22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call24 = call i32 @fputc(i32 10, %struct._IO_FILE* %24)
  br label %if.end.115

if.else.25:                                       ; preds = %land.lhs.true, %if.end
  %25 = load i64, i64* %orig_len.addr, align 8
  %cmp26 = icmp eq i64 %25, -1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.25
  %26 = load i64, i64* %len, align 8
  %add = add i64 %26, 1
  store i64 %add, i64* %len, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.else.25
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %27 = load i8*, i8** %str.addr, align 8
  store i8* %27, i8** %_ascii_bytes, align 8
  %28 = load i8*, i8** %_ascii_bytes, align 8
  %29 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %add.ptr, i8** %limit, align 8
  store i32 0, i32* %bytes_in_chunk, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.101, %do.body
  %30 = load i8*, i8** %_ascii_bytes, align 8
  %31 = load i8*, i8** %limit, align 8
  %cmp31 = icmp ult i8* %30, %31
  br i1 %cmp31, label %for.body.33, label %for.end.103

for.body.33:                                      ; preds = %for.cond.30
  %32 = load i32, i32* %bytes_in_chunk, align 4
  %cmp34 = icmp uge i32 %32, 60
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.body.33
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %bytes_in_chunk, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.body.33
  %34 = load i8*, i8** %_ascii_bytes, align 8
  store i8* %34, i8** %p, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.46, %if.end.38
  %35 = load i8*, i8** %p, align 8
  %36 = load i8*, i8** %limit, align 8
  %cmp40 = icmp ult i8* %35, %36
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.39
  %37 = load i8*, i8** %p, align 8
  %38 = load i8, i8* %37, align 1
  %conv42 = zext i8 %38 to i32
  %cmp43 = icmp ne i32 %conv42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.39
  %39 = phi i1 [ false, %for.cond.39 ], [ %cmp43, %land.rhs ]
  br i1 %39, label %for.body.45, label %for.end.47

for.body.45:                                      ; preds = %land.end
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.45
  %40 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.39

for.end.47:                                       ; preds = %land.end
  %41 = load i8*, i8** %p, align 8
  %42 = load i8*, i8** %limit, align 8
  %cmp48 = icmp ult i8* %41, %42
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.77

land.lhs.true.50:                                 ; preds = %for.end.47
  %43 = load i8*, i8** %p, align 8
  %44 = load i8*, i8** %_ascii_bytes, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp51 = icmp sle i64 %sub.ptr.sub, 256
  br i1 %cmp51, label %if.then.53, label %if.else.77

if.then.53:                                       ; preds = %land.lhs.true.50
  %45 = load i32, i32* %bytes_in_chunk, align 4
  %cmp54 = icmp ugt i32 %45, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.53
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %bytes_in_chunk, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.53
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.58
  %47 = load i8*, i8** %_ascii_bytes, align 8
  store i8* %47, i8** %_limited_str, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.73, %do.body.59
  %49 = load i8*, i8** %_limited_str, align 8
  %50 = load i8, i8* %49, align 1
  %conv62 = zext i8 %50 to i32
  store i32 %conv62, i32* %ch, align 4
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %for.body.64, label %for.end.75

for.body.64:                                      ; preds = %for.cond.61
  %51 = load i32, i32* %ch, align 4
  %idxprom65 = zext i32 %51 to i64
  %arrayidx66 = getelementptr inbounds [257 x i8], [257 x i8]* @.str.9, i32 0, i64 %idxprom65
  %52 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %52 to i32
  store i32 %conv67, i32* %escape, align 4
  switch i32 %conv67, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %for.body.64
  %53 = load i32, i32* %ch, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call68 = call i32 @_IO_putc(i32 %53, %struct._IO_FILE* %54)
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body.64
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %56 = load i32, i32* %ch, align 4
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %56)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.64
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call71 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %57)
  %58 = load i32, i32* %escape, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call72 = call i32 @_IO_putc(i32 %58, %struct._IO_FILE* %59)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.69, %sw.bb
  br label %for.inc.73

for.inc.73:                                       ; preds = %sw.epilog
  %60 = load i8*, i8** %_limited_str, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr74, i8** %_limited_str, align 8
  br label %for.cond.61

for.end.75:                                       ; preds = %for.cond.61
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %do.end

do.end:                                           ; preds = %for.end.75
  %62 = load i8*, i8** %p, align 8
  store i8* %62, i8** %_ascii_bytes, align 8
  br label %if.end.100

if.else.77:                                       ; preds = %land.lhs.true.50, %for.end.47
  %63 = load i32, i32* %bytes_in_chunk, align 4
  %cmp80 = icmp eq i32 %63, 0
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.else.77
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.else.77
  %65 = load i8*, i8** %_ascii_bytes, align 8
  %66 = load i8, i8* %65, align 1
  %conv85 = zext i8 %66 to i32
  store i32 %conv85, i32* %ch79, align 4
  %idxprom86 = zext i32 %conv85 to i64
  %arrayidx87 = getelementptr inbounds [257 x i8], [257 x i8]* @.str.9, i32 0, i64 %idxprom86
  %67 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %67 to i32
  store i32 %conv88, i32* %escape78, align 4
  switch i32 %conv88, label %sw.default.95 [
    i32 0, label %sw.bb.89
    i32 1, label %sw.bb.92
  ]

sw.bb.89:                                         ; preds = %if.end.84
  %68 = load i32, i32* %ch79, align 4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call90 = call i32 @_IO_putc(i32 %68, %struct._IO_FILE* %69)
  %70 = load i32, i32* %bytes_in_chunk, align 4
  %inc91 = add i32 %70, 1
  store i32 %inc91, i32* %bytes_in_chunk, align 4
  br label %sw.epilog.99

sw.bb.92:                                         ; preds = %if.end.84
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %72 = load i32, i32* %ch79, align 4
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %72)
  %73 = load i32, i32* %bytes_in_chunk, align 4
  %add94 = add i32 %73, 4
  store i32 %add94, i32* %bytes_in_chunk, align 4
  br label %sw.epilog.99

sw.default.95:                                    ; preds = %if.end.84
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call96 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %74)
  %75 = load i32, i32* %escape78, align 4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call97 = call i32 @_IO_putc(i32 %75, %struct._IO_FILE* %76)
  %77 = load i32, i32* %bytes_in_chunk, align 4
  %add98 = add i32 %77, 2
  store i32 %add98, i32* %bytes_in_chunk, align 4
  br label %sw.epilog.99

sw.epilog.99:                                     ; preds = %sw.default.95, %sw.bb.92, %sw.bb.89
  br label %if.end.100

if.end.100:                                       ; preds = %sw.epilog.99, %do.end
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %78 = load i8*, i8** %_ascii_bytes, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr102, i8** %_ascii_bytes, align 8
  br label %for.cond.30

for.end.103:                                      ; preds = %for.cond.30
  %79 = load i32, i32* %bytes_in_chunk, align 4
  %cmp104 = icmp ugt i32 %79, 0
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %for.end.103
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %for.end.103
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %81 = load i64, i64* %orig_len.addr, align 8
  %cmp110 = icmp ne i64 %81, -1
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %do.end.109
  %82 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call113 = call zeroext i1 @assemble_integer(%struct.rtx_def* %82, i32 1, i32 8, i32 1)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %do.end.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %for.end
  %arraydecay116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay116117 = bitcast %struct.__va_list_tag* %arraydecay116 to i8*
  call void @llvm.va_end(i8* %arraydecay116117)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @size_of_uleb128(i64 %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  %size = alloca i32, align 4
  %byte = alloca i32, align 4
  store i64 %value, i64* %value.addr, align 8
  store i32 0, i32* %size, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %value.addr, align 8
  %and = and i64 %0, 127
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %byte, align 4
  %1 = load i64, i64* %value.addr, align 8
  %shr = lshr i64 %1, 7
  store i64 %shr, i64* %value.addr, align 8
  %2 = load i32, i32* %size, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %size, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i64, i64* %value.addr, align 8
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load i32, i32* %size, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @size_of_sleb128(i64 %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  %size = alloca i32, align 4
  %byte = alloca i32, align 4
  store i64 %value, i64* %value.addr, align 8
  store i32 0, i32* %size, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %entry
  %0 = load i64, i64* %value.addr, align 8
  %and = and i64 %0, 127
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %byte, align 4
  %1 = load i64, i64* %value.addr, align 8
  %shr = ashr i64 %1, 7
  store i64 %shr, i64* %value.addr, align 8
  %2 = load i32, i32* %size, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %size, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i64, i64* %value.addr, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %do.cond
  %4 = load i32, i32* %byte, align 4
  %and2 = and i32 %4, 64
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %do.cond
  %5 = load i64, i64* %value.addr, align 8
  %cmp5 = icmp eq i64 %5, -1
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i32, i32* %byte, align 4
  %and7 = and i32 %6, 64
  %cmp8 = icmp ne i32 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %cmp8, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %8 = phi i1 [ true, %land.lhs.true ], [ %7, %land.end ]
  %lnot = xor i1 %8, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %9 = load i32, i32* %size, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @size_of_encoded_value(i32 %encoding) #0 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca i32, align 4
  store i32 %encoding, i32* %encoding.addr, align 4
  %0 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp eq i32 %0, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %encoding.addr, align 4
  %and = and i32 %1, 7
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %2, 33554432
  %tobool = icmp ne i32 %and1, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %div = sdiv i32 %cond, 8
  store i32 %div, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.end
  store i32 4, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.end
  store i32 8, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 340, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.size_of_encoded_value, i32 0, i32 0)) #7
  unreachable

return:                                           ; preds = %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @eh_data_format_name(i32 %format) #0 {
entry:
  %format.addr = alloca i32, align 4
  store i32 %format, i32* %format.addr, align 4
  %0 = load i32, i32* %format.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %format.addr, align 4
  %cmp1 = icmp sgt i32 %1, 255
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %format.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* @eh_data_format_name.format_names, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.eh_data_format_name, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false.2
  %4 = load i32, i32* %format.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8*], [256 x i8*]* @eh_data_format_name.format_names, i32 0, i64 %idxprom4
  %5 = load i8*, i8** %arrayidx5, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_data_uleb128(i64 %value, i8* %comment, ...) #0 {
entry:
  %value.addr = alloca i64, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %value, i64* %value.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load i64, i64* %value.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %2)
  %3 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load i8*, i8** %comment.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_data_sleb128(i64 %value, i8* %comment, ...) #0 {
entry:
  %value.addr = alloca i64, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %value, i64* %value.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load i64, i64* %value.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i64 %2)
  %3 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = load i8*, i8** %comment.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_delta_uleb128(i8* %lab1, i8* %lab2, i8* %comment, ...) #0 {
entry:
  %lab1.addr = alloca i8*, align 8
  %lab2.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %lab1, i8** %lab1.addr, align 8
  store i8* %lab2, i8** %lab2.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load i8*, i8** %lab1.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %1, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call2 = call i32 @fputc(i32 45, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = load i8*, i8** %lab2.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %4, i8* %5)
  %6 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %10 = load i8*, i8** %comment.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %9, i8* %10, %struct.__va_list_tag* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret void
}

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_delta_sleb128(i8* %lab1, i8* %lab2, i8* %comment, ...) #0 {
entry:
  %lab1.addr = alloca i8*, align 8
  %lab2.addr = alloca i8*, align 8
  %comment.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %lab1, i8** %lab1.addr, align 8
  store i8* %lab2, i8** %lab2.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %2 = load i8*, i8** %lab1.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %1, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call2 = call i32 @fputc(i32 45, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = load i8*, i8** %lab2.addr, align 8
  call void @assemble_name(%struct._IO_FILE* %4, i8* %5)
  %6 = load i32, i32* @flag_debug_asm, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i8*, i8** %comment.addr, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %10 = load i8*, i8** %comment.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %9, i8* %10, %struct.__va_list_tag* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call7 = call i32 @fputc(i32 10, %struct._IO_FILE* %11)
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*
  call void @llvm.va_end(i8* %arraydecay89)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dw2_output_indirect_constants() #0 {
entry:
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @indirect_pool, align 8
  %tobool = icmp ne %struct.splay_tree_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** @indirect_pool, align 8
  %call = call i32 @splay_tree_foreach(%struct.splay_tree_s* %1, i32 (%struct.splay_tree_node_s*, i8*)* @dw2_output_indirect_constant_1, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @splay_tree_foreach(%struct.splay_tree_s*, i32 (%struct.splay_tree_node_s*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dw2_output_indirect_constant_1(%struct.splay_tree_node_s* %node, i8* %data) #0 {
entry:
  %node.addr = alloca %struct.splay_tree_node_s*, align 8
  %data.addr = alloca i8*, align 8
  %sym = alloca i8*, align 8
  %sym_ref = alloca %struct.rtx_def*, align 8
  store %struct.splay_tree_node_s* %node, %struct.splay_tree_node_s** %node.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i32 0, i32 0
  %1 = load i64, i64* %key, align 8
  %2 = inttoptr i64 %1 to i8*
  store i8* %2, i8** %sym, align 8
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %4 = load i8*, i8** %sym, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %sym_ref, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %6 = load i8*, i8** %sym, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i8* %6)
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 1
  %8 = load i64, i64* %value, align 8
  %9 = inttoptr i64 %8 to %union.tree_node*
  call void @assemble_variable(%union.tree_node* %9, i32 1, i32 1, i32 1)
  %10 = load %struct.rtx_def*, %struct.rtx_def** %sym_ref, align 8
  %11 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %11, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 64, i32 32
  %div = sdiv i32 %cond4, 8
  %12 = load i32, i32* @target_flags, align 4
  %and5 = and i32 %12, 33554432
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 64, i32 32
  %call8 = call zeroext i1 @assemble_integer(%struct.rtx_def* %10, i32 %div, i32 %cond7, i32 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @dw2_asm_output_encoded_addr_rtx(i32 %encoding, %struct.rtx_def* %addr, i8* %comment, ...) #0 {
entry:
  %encoding.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  %comment.addr = alloca i8*, align 8
  %size = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %encoding, i32* %encoding.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %encoding.addr, align 4
  %call = call i32 @size_of_encoded_value(i32 %0)
  store i32 %call, i32* %size, align 4
  %1 = load i32, i32* %encoding.addr, align 4
  %cmp = icmp eq i32 %1, 80
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  call void @assemble_align(i32 %cond)
  %3 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %4 = load i32, i32* %size, align 4
  %5 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %5, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 64, i32 32
  %call5 = call zeroext i1 @assemble_integer(%struct.rtx_def* %3, i32 %4, i32 %cond4, i32 1)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp6 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp7 = icmp eq %struct.rtx_def* %8, %9
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %11 = load i32, i32* %size, align 4
  %call9 = call zeroext i1 @assemble_integer(%struct.rtx_def* %10, i32 %11, i32 8, i32 1)
  br label %if.end.35

if.else:                                          ; preds = %lor.lhs.false
  br label %restart

restart:                                          ; preds = %if.then.22, %if.else
  br label %do.body

do.body:                                          ; preds = %restart
  %12 = load i32, i32* %size, align 4
  %cmp10 = icmp eq i32 %12, 4
  br i1 %cmp10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %do.body
  %13 = load i32, i32* %encoding.addr, align 4
  %and11 = and i32 %13, 112
  %cmp12 = icmp eq i32 %and11, 48
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %land.lhs.true
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), %struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %17 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %15, i8* %17)
  %18 = load i32, i32* %encoding.addr, align 4
  %and15 = and i32 %18, 128
  %tobool16 = icmp ne i32 %and15, 0
  %cond17 = select i1 %tobool16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call18 = call i32 @fputs(i8* %cond17, %struct._IO_FILE* %19)
  br label %done

if.end.19:                                        ; preds = %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %20 = load i32, i32* %encoding.addr, align 4
  %and20 = and i32 %20, 128
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call23 = call %struct.rtx_def* @dw2_force_const_mem(%struct.rtx_def* %21)
  store %struct.rtx_def* %call23, %struct.rtx_def** %addr.addr, align 8
  %22 = load i32, i32* %encoding.addr, align 4
  %and24 = and i32 %22, -129
  store i32 %and24, i32* %encoding.addr, align 4
  br label %restart

if.end.25:                                        ; preds = %do.end
  %23 = load i32, i32* %encoding.addr, align 4
  %and26 = and i32 %23, 240
  switch i32 %and26, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end.25
  %24 = load i32, i32* %size, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  call void @dw2_assemble_integer(i32 %24, %struct.rtx_def* %25)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.25
  %26 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load = load i32, i32* %27, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp28 = icmp ne i32 %bf.clear, 68
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.bb.27
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 877, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.dw2_asm_output_encoded_addr_rtx, i32 0, i32 0)) #7
  unreachable

if.end.30:                                        ; preds = %sw.bb.27
  %28 = load i32, i32* %size, align 4
  %29 = load i32, i32* @target_flags, align 4
  %and31 = and i32 %29, 33554432
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i32 5, i32 4
  %30 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %call34 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond33, %struct.rtx_def* %30, %struct.rtx_def* %31)
  call void @dw2_assemble_integer(i32 %28, %struct.rtx_def* %call34)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.25
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 888, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.dw2_asm_output_encoded_addr_rtx, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %if.end.30, %sw.bb
  br label %done

done:                                             ; preds = %sw.epilog, %if.then.13
  br label %if.end.35

if.end.35:                                        ; preds = %done, %if.then.8
  %32 = load i32, i32* @flag_debug_asm, align 4
  %tobool36 = icmp ne i32 %32, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.43

land.lhs.true.37:                                 ; preds = %if.end.35
  %33 = load i8*, i8** %comment.addr, align 8
  %tobool38 = icmp ne i8* %33, null
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %land.lhs.true.37
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %36 = load i8*, i8** %comment.addr, align 8
  %arraydecay41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call42 = call i32 @vfprintf(%struct._IO_FILE* %35, i8* %36, %struct.__va_list_tag* %arraydecay41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %land.lhs.true.37, %if.end.35
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call44 = call i32 @fputc(i32 10, %struct._IO_FILE* %37)
  %arraydecay45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay4546 = bitcast %struct.__va_list_tag* %arraydecay45 to i8*
  call void @llvm.va_end(i8* %arraydecay4546)
  br label %return

return:                                           ; preds = %if.end.43, %if.then
  ret void
}

declare void @assemble_align(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @dw2_force_const_mem(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %node = alloca %struct.splay_tree_node_s*, align 8
  %str = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  %id = alloca %union.tree_node*, align 8
  %ref_name = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @indirect_pool, align 8
  %tobool = icmp ne %struct.splay_tree_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* @splay_tree_compare_pointers, void (i64)* null, void (i64)* null)
  store %struct.splay_tree_s* %call, %struct.splay_tree_s** @indirect_pool, align 8
  call void @ggc_add_root(i8* bitcast (%struct.splay_tree_s** @indirect_pool to i8*), i32 1, i32 8, void (i8*)* @mark_indirect_pool)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 68
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 740, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.dw2_force_const_mem, i32 0, i32 0)) #7
  unreachable

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %4 = load i8*, i8** %rtstr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtstr5 = bitcast %union.rtunion_def* %arrayidx4 to i8**
  %6 = load i8*, i8** %rtstr5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 42
  %conv8 = zext i1 %cmp7 to i32
  %idx.ext = sext i32 %conv8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %str, align 8
  %8 = load %struct.splay_tree_s*, %struct.splay_tree_s** @indirect_pool, align 8
  %9 = load i8*, i8** %str, align 8
  %10 = ptrtoint i8* %9 to i64
  %call9 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %8, i64 %10)
  store %struct.splay_tree_node_s* %call9, %struct.splay_tree_node_s** %node, align 8
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %tobool10 = icmp ne %struct.splay_tree_node_s* %11, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.2
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %12, i32 0, i32 1
  %13 = load i64, i64* %value, align 8
  %14 = inttoptr i64 %13 to %union.tree_node*
  store %union.tree_node* %14, %union.tree_node** %decl, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end.2
  %15 = load i8*, i8** %str, align 8
  %call12 = call i64 @strlen(i8* %15) #6
  %add = add i64 %call12, 8
  %16 = alloca i8, i64 %add
  store i8* %16, i8** %ref_name, align 8
  %17 = load i8*, i8** %ref_name, align 8
  %18 = load i8*, i8** %str, align 8
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i8* %18) #2
  %19 = load i8*, i8** %ref_name, align 8
  %call14 = call %union.tree_node* @get_identifier(i8* %19)
  store %union.tree_node* %call14, %union.tree_node** %id, align 8
  %20 = load %union.tree_node*, %union.tree_node** %id, align 8
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 28), align 8
  %call15 = call %union.tree_node* @build_decl(i32 34, %union.tree_node* %20, %union.tree_node* %21)
  store %union.tree_node* %call15, %union.tree_node** %decl, align 8
  %22 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl16 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %artificial_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 5
  %23 = bitcast i48* %artificial_flag to i64*
  %bf.load17 = load i64, i64* %23, align 8
  %bf.clear18 = and i64 %bf.load17, -4194305
  %bf.set = or i64 %bf.clear18, 4194304
  store i64 %bf.set, i64* %23, align 8
  %24 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %24 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load19 = load i32, i32* %public_flag, align 8
  %bf.clear20 = and i32 %bf.load19, -524289
  %bf.set21 = or i32 %bf.clear20, 524288
  store i32 %bf.set21, i32* %public_flag, align 8
  %25 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %26 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl22 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl22, i32 0, i32 12
  store %union.tree_node* %25, %union.tree_node** %initial, align 8
  %27 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @make_decl_one_only(%union.tree_node* %27)
  %28 = load i8*, i8** %str, align 8
  %call23 = call %union.tree_node* @maybe_get_identifier(i8* %28)
  store %union.tree_node* %call23, %union.tree_node** %id, align 8
  %29 = load %union.tree_node*, %union.tree_node** %id, align 8
  %tobool24 = icmp ne %union.tree_node* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.else
  %30 = load %union.tree_node*, %union.tree_node** %id, align 8
  %common26 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %static_flag, align 8
  %bf.clear28 = and i32 %bf.load27, -262145
  %bf.set29 = or i32 %bf.clear28, 262144
  store i32 %bf.set29, i32* %static_flag, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.else
  %31 = load %struct.splay_tree_s*, %struct.splay_tree_s** @indirect_pool, align 8
  %32 = load i8*, i8** %str, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %35 = ptrtoint %union.tree_node* %34 to i64
  %call31 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %31, i64 %33, i64 %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %if.then.11
  %36 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl33 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 17
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool34 = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.32
  %38 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl35 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %rtl36 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl35, i32 0, i32 17
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtl36, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  %40 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @make_decl_rtl(%union.tree_node* %40, i8* null)
  %41 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl37 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %rtl38 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 17
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtl38, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %39, %cond.true ], [ %42, %cond.false ]
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  ret %struct.rtx_def* %43
}

declare void @assemble_variable(%union.tree_node*, i32, i32, i32) #1

declare %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) #1

declare i32 @splay_tree_compare_pointers(i64, i64) #1

declare void @ggc_add_root(i8*, i32, i32, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_indirect_pool(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @indirect_pool, align 8
  %call = call i32 @splay_tree_foreach(%struct.splay_tree_s* %0, i32 (%struct.splay_tree_node_s*, i8*)* @mark_indirect_pool_entry, i8* null)
  ret void
}

declare %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

declare %union.tree_node* @get_identifier(i8*) #1

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #1

declare void @make_decl_one_only(%union.tree_node*) #1

declare %union.tree_node* @maybe_get_identifier(i8*) #1

declare %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_indirect_pool_entry(%struct.splay_tree_node_s* %node, i8* %data) #0 {
entry:
  %node.addr = alloca %struct.splay_tree_node_s*, align 8
  %data.addr = alloca i8*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store %struct.splay_tree_node_s* %node, %struct.splay_tree_node_s** %node.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %0, i32 0, i32 1
  %1 = load i64, i64* %value, align 8
  %2 = inttoptr i64 %1 to %union.tree_node*
  store %union.tree_node* %2, %union.tree_node** %t__, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %4 = bitcast %union.tree_node* %3 to i8*
  %call = call i32 @ggc_set_mark(i8* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 1
  %6 = load i64, i64* %elements_used, align 8
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 0
  %8 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %6, %8
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body.1
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 0
  %11 = load i64, i64* %num_elements3, align 8
  %mul = mul i64 2, %11
  %call4 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %9, i64 %mul)
  store %struct.varray_head_tag* %call4, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body.1
  %12 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 1
  %14 = load i64, i64* %elements_used5, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %elements_used5, align 8
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data6 to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %14
  store %union.tree_node* %12, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  ret i32 0
}

declare i32 @ggc_set_mark(i8*) #1

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
