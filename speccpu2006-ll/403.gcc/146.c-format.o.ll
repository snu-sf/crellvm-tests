; ModuleID = 'c-format.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.format_kind_info = type { i8*, %struct.format_length_info*, %struct.format_char_info*, i8*, i8*, %struct.format_flag_spec*, %struct.format_flag_pair*, i32, i32, i32, i32, i32, i32, %union.tree_node**, %union.tree_node** }
%struct.format_length_info = type { i8*, i32, i32, i8*, i32, i32 }
%struct.format_char_info = type { i8*, i32, i32, [9 x %struct.format_type_detail], i8*, i8* }
%struct.format_type_detail = type { i32, i8*, %union.tree_node** }
%struct.format_flag_spec = type { i32, i32, i32, i8*, i8*, i32 }
%struct.format_flag_pair = type { i32, i32, i32, i32 }
%struct.function_format_info = type { i32, i64, i64 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.format_check_results = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tree_string = type { %struct.tree_common, %struct.rtx_def*, i32, i8* }
%struct.diagnostic_context = type { %struct.output_buffer, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32, void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)*, i8* }
%struct.output_buffer = type { %struct.output_state, %struct._IO_FILE*, %struct.obstack, i32, [128 x i8], i32 (%struct.output_buffer*)* }
%struct.output_state = type { i8*, i32, i32, i32, i8, i8, i32, i8*, [1 x %struct.__va_list_tag]*, [7 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.format_wanted_type = type { %union.tree_node*, i8*, i32, i32, i32, i32, i8*, %union.tree_node*, i32, %struct.format_wanted_type* }

@warn_format = common global i32 0, align 4
@warn_format_y2k = common global i32 0, align 4
@warn_format_extra_args = common global i32 0, align 4
@warn_format_nonliteral = common global i32 0, align 4
@warn_format_security = common global i32 0, align 4
@integer_types = external global [11 x %union.tree_node*], align 16
@.str = private unnamed_addr constant [36 x i8] c"format string arg not a string type\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"args to be formatted is not '...'\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"strftime formats cannot format arguments\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"format string has invalid operand number\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"function does not return string type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@warn_missing_format_attribute = external global i32, align 4
@format_types = internal constant [4 x %struct.format_kind_info] [%struct.format_kind_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct.format_length_info* getelementptr inbounds ([9 x %struct.format_length_info], [9 x %struct.format_length_info]* @printf_length_specs, i32 0, i32 0), %struct.format_char_info* getelementptr inbounds ([15 x %struct.format_char_info], [15 x %struct.format_char_info]* @print_char_table, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null, %struct.format_flag_spec* getelementptr inbounds ([11 x %struct.format_flag_spec], [11 x %struct.format_flag_spec]* @printf_flag_specs, i32 0, i32 0), %struct.format_flag_pair* getelementptr inbounds ([4 x %struct.format_flag_pair], [4 x %struct.format_flag_pair]* @printf_flag_pairs, i32 0, i32 0), i32 89, i32 119, i32 0, i32 112, i32 0, i32 76, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**) }, %struct.format_kind_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct.format_length_info* getelementptr inbounds ([8 x %struct.format_length_info], [8 x %struct.format_length_info]* @scanf_length_specs, i32 0, i32 0), %struct.format_char_info* getelementptr inbounds ([13 x %struct.format_char_info], [13 x %struct.format_char_info]* @scan_char_table, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* null, %struct.format_flag_spec* getelementptr inbounds ([7 x %struct.format_flag_spec], [7 x %struct.format_flag_spec]* @scanf_flag_specs, i32 0, i32 0), %struct.format_flag_pair* getelementptr inbounds ([2 x %struct.format_flag_pair], [2 x %struct.format_flag_pair]* @scanf_flag_pairs, i32 0, i32 0), i32 179, i32 119, i32 0, i32 0, i32 42, i32 76, %union.tree_node** null, %union.tree_node** null }, %struct.format_kind_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct.format_length_info* null, %struct.format_char_info* getelementptr inbounds ([20 x %struct.format_char_info], [20 x %struct.format_char_info]* @time_char_table, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct.format_flag_spec* getelementptr inbounds ([10 x %struct.format_flag_spec], [10 x %struct.format_flag_spec]* @strftime_flag_specs, i32 0, i32 0), %struct.format_flag_pair* getelementptr inbounds ([6 x %struct.format_flag_pair], [6 x %struct.format_flag_pair]* @strftime_flag_pairs, i32 0, i32 0), i32 4, i32 119, i32 0, i32 0, i32 0, i32 0, %union.tree_node** null, %union.tree_node** null }, %struct.format_kind_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct.format_length_info* getelementptr inbounds ([2 x %struct.format_length_info], [2 x %struct.format_length_info]* @strfmon_length_specs, i32 0, i32 0), %struct.format_char_info* getelementptr inbounds ([2 x %struct.format_char_info], [2 x %struct.format_char_info]* @monetary_char_table, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* null, %struct.format_flag_spec* getelementptr inbounds ([11 x %struct.format_flag_spec], [11 x %struct.format_flag_spec]* @strfmon_flag_specs, i32 0, i32 0), %struct.format_flag_pair* getelementptr inbounds ([2 x %struct.format_flag_pair], [2 x %struct.format_flag_pair]* @strfmon_flag_pairs, i32 0, i32 0), i32 1, i32 119, i32 35, i32 112, i32 0, i32 76, %union.tree_node** null, %union.tree_node** null }], align 16
@current_function_decl = external global %union.tree_node*, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"function might be possible candidate for `%s' format attribute\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"c-format.c\00", align 1
@__FUNCTION__.decode_format_attr = private unnamed_addr constant [19 x i8] c"decode_format_attr\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"unrecognized format specifier\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"`%s' is an unrecognized format function type\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"format string arg follows the args to be formatted\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@printf_length_specs = internal constant [9 x %struct.format_length_info] [%struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 3 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 4, i32 2 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 4, i32 4, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 5, i32 0, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 6, i32 3, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32 6, i32 4, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i32 7, i32 3, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 8, i32 3, i8* null, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@print_char_table = internal constant [15 x %struct.format_char_info] [%struct.format_char_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 8) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 24) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 56) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 72) to %union.tree_node**) }, %struct.format_type_detail { i32 4, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 72) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 240) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 56) to %union.tree_node**) }], i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 16) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 64) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 4, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 64) to %union.tree_node**) }], i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 16) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 64) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 4, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 64) to %union.tree_node**) }], i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 24) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 216) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 8) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 24) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 56) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 72) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 240) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 56) to %union.tree_node**) }], i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 4, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 24) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i32 1, i32 4, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 4, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 216) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [8 x i8] c" +#0-'I\00", align 1
@printf_flag_specs = internal constant [11 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 32, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 43, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 48, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 39, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 73, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@printf_flag_pairs = internal constant [4 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 32, i32 43, i32 1, i32 0 }, %struct.format_flag_pair { i32 48, i32 45, i32 1, i32 0 }, %struct.format_flag_pair { i32 48, i32 112, i32 1, i32 105 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"scanf\00", align 1
@scanf_length_specs = internal constant [8 x %struct.format_length_info] [%struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 3 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 4, i32 2 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 4, i32 4, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 5, i32 0, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 6, i32 3, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i32 7, i32 3, i8* null, i32 0, i32 0 }, %struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 8, i32 3, i8* null, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@scan_char_table = internal constant [13 x %struct.format_char_info] [%struct.format_char_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 8) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 24) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 56) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 72) to %union.tree_node**) }, %struct.format_type_detail { i32 4, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 72) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 240) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 56) to %union.tree_node**) }], i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 16) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 64) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 4, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 64) to %union.tree_node**) }], i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 16) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 64) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 4, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 80) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 32) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 48) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 64) to %union.tree_node**) }], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 192) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 216) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 1, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 8) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 24) to %union.tree_node**) }, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 56) to %union.tree_node**) }, %struct.format_type_detail { i32 2, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([11 x %union.tree_node*]* @integer_types to i8*), i64 72) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 40) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 240) to %union.tree_node**) }, %struct.format_type_detail { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([32 x %union.tree_node*]* @c_global_trees to i8*), i64 56) to %union.tree_node**) }], i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 1, i32 3, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 192) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i32 1, i32 4, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i32 0, i32 0), i32 1, i32 4, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i32 0) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0) }, %struct.format_char_info zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [4 x i8] c"*'I\00", align 1
@scanf_flag_specs = internal constant [7 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 42, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.94, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 97, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.98, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 39, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 73, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i32 4 }, %struct.format_flag_spec zeroinitializer], align 16
@scanf_flag_pairs = internal constant [2 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 42, i32 76, i32 0, i32 0 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@time_char_table = internal constant [20 x %struct.format_char_info] [%struct.format_char_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 3, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i32 0, i32 4, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i32 0, i32 4, [9 x %struct.format_type_detail] zeroinitializer, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"_-0^#\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"EO\00", align 1
@strftime_flag_specs = internal constant [10 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 95, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.129, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.130, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 48, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.131, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 94, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.133, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.134, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.135, i32 0, i32 0), i32 4 }, %struct.format_flag_spec { i32 69, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i32 0, i32 0), i32 3 }, %struct.format_flag_spec { i32 79, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.139, i32 0, i32 0), i32 3 }, %struct.format_flag_spec { i32 79, i32 111, i32 0, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0), i32 4 }, %struct.format_flag_spec zeroinitializer], align 16
@strftime_flag_pairs = internal constant [6 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 69, i32 79, i32 0, i32 0 }, %struct.format_flag_pair { i32 95, i32 45, i32 0, i32 0 }, %struct.format_flag_pair { i32 95, i32 48, i32 0, i32 0 }, %struct.format_flag_pair { i32 45, i32 48, i32 0, i32 0 }, %struct.format_flag_pair { i32 94, i32 35, i32 0, i32 0 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [8 x i8] c"strfmon\00", align 1
@strfmon_length_specs = internal constant [2 x %struct.format_length_info] [%struct.format_length_info { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 5, i32 0, i8* null, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@monetary_char_table = internal constant [2 x %struct.format_char_info] [%struct.format_char_info { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i32 0, i32 0), i32 0, i32 0, [9 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 200) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, i8* null, %union.tree_node** bitcast (i8* getelementptr (i8, i8* bitcast ([51 x %union.tree_node*]* @global_trees to i8*), i64 208) to %union.tree_node**) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0) }, %struct.format_char_info zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"=^+(!-\00", align 1
@strfmon_flag_specs = internal constant [11 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 61, i32 0, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.144, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 94, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 43, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 40, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 33, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.151, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.152, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.154, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.156, i32 0, i32 0), i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.157, i32 0, i32 0), i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@strfmon_flag_pairs = internal constant [2 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 43, i32 40, i32 0, i32 0 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"signed size_t\00", align 1
@c_global_trees = external global [32 x %union.tree_node*], align 16
@.str.32 = private unnamed_addr constant [10 x i8] c"ptrdiff_t\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.33 = private unnamed_addr constant [9 x i8] c"intmax_t\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"-wp0 +'I\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"oxX\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"unsigned ptrdiff_t\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"uintmax_t\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"-wp0#\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"-wp0'I\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"fgG\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"-wp0 +#'\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"-wp0 +#\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"wint_t\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"-wp\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"cR\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"aA\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"` ' flag\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"the ` ' printf flag\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"`+' flag\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"the `+' printf flag\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"`#' flag\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"the `#' printf flag\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"`0' flag\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"the `0' printf flag\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"`-' flag\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"the `-' printf flag\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"`'' flag\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"the `'' printf flag\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"`I' flag\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"the `I' printf flag\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"field width\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"field width in printf format\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"precision in printf format\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"length modifier\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"length modifier in printf format\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"*w'I\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"*w\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"efgEG\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"*w'\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"cW\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"*aw\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"cW[\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"FaA\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"assignment suppression\00", align 1
@.str.94 = private unnamed_addr constant [41 x i8] c"the assignment suppression scanf feature\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"`a' flag\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"the `a' scanf flag\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"field width in scanf format\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"length modifier in scanf format\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"the `'' scanf flag\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"the `I' scanf flag\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"ABZab\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"^#\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"HIMSUWdmw\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"-_0Ow\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"EO-_0w\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"-_0EOw\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"eVu\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"FRTnrt\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"O-_0w\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"2o\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"kls\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"`_' flag\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"the `_' strftime flag\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"the `-' strftime flag\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"the `0' strftime flag\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"`^' flag\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"the `^' strftime flag\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"the `#' strftime flag\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"field width in strftime format\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"`E' modifier\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"the `E' strftime modifier\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"`O' modifier\00", align 1
@.str.139 = private unnamed_addr constant [26 x i8] c"the `O' strftime modifier\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"the `O' modifier\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"=^+(!-w#p\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"fill character\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"fill character in strfmon format\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"the `^' strfmon flag\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"the `+' strfmon flag\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"`(' flag\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"the `(' strfmon flag\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"`!' flag\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"the `!' strfmon flag\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"the `-' strfmon flag\00", align 1
@.str.152 = private unnamed_addr constant [30 x i8] c"field width in strfmon format\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"left precision\00", align 1
@.str.154 = private unnamed_addr constant [33 x i8] c"left precision in strfmon format\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"right precision\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"right precision in strfmon format\00", align 1
@.str.157 = private unnamed_addr constant [34 x i8] c"length modifier in strfmon format\00", align 1
@.str.158 = private unnamed_addr constant [55 x i8] c"format not a string literal, format string not checked\00", align 1
@.str.159 = private unnamed_addr constant [52 x i8] c"format not a string literal and no format arguments\00", align 1
@.str.160 = private unnamed_addr constant [56 x i8] c"format not a string literal, argument types not checked\00", align 1
@.str.161 = private unnamed_addr constant [30 x i8] c"too many arguments for format\00", align 1
@.str.162 = private unnamed_addr constant [35 x i8] c"unused arguments in $-style format\00", align 1
@.str.163 = private unnamed_addr constant [26 x i8] c"zero-length format string\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"format is a wide character string\00", align 1
@.str.165 = private unnamed_addr constant [27 x i8] c"unterminated format string\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"format_arg\00", align 1
@__FUNCTION__.check_format_info_recurse = private unnamed_addr constant [26 x i8] c"check_format_info_recurse\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"null format string\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c"embedded `\5C0' in format\00", align 1
@.str.169 = private unnamed_addr constant [33 x i8] c"spurious trailing `%%' in format\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"repeated %s in format\00", align 1
@.str.171 = private unnamed_addr constant [48 x i8] c"missing fill character at end of strfmon format\00", align 1
@.str.172 = private unnamed_addr constant [29 x i8] c"too few arguments for format\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.173 = private unnamed_addr constant [24 x i8] c"zero width in %s format\00", align 1
@.str.174 = private unnamed_addr constant [34 x i8] c"empty left precision in %s format\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"field precision\00", align 1
@.str.176 = private unnamed_addr constant [29 x i8] c"empty precision in %s format\00", align 1
@pedantic = external global i32, align 4
@warn_long_long = external global i32, align 4
@c_language = external global i32, align 4
@flag_isoc99 = external global i32, align 4
@flag_isoc94 = external global i32, align 4
@.str.177 = private unnamed_addr constant [48 x i8] c"%s does not support the `%s' %s length modifier\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"ISO C++\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"ISO C\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"ISO C89\00", align 1
@.str.181 = private unnamed_addr constant [39 x i8] c"conversion lacks type at end of format\00", align 1
@.str.182 = private unnamed_addr constant [49 x i8] c"unknown conversion type character `%c' in format\00", align 1
@.str.183 = private unnamed_addr constant [49 x i8] c"unknown conversion type character 0x%x in format\00", align 1
@.str.184 = private unnamed_addr constant [41 x i8] c"%s does not support the `%%%c' %s format\00", align 1
@.str.185 = private unnamed_addr constant [30 x i8] c"%s used with `%%%c' %s format\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"%s does not support %s\00", align 1
@.str.187 = private unnamed_addr constant [49 x i8] c"%s does not support %s with the `%%%c' %s format\00", align 1
@.str.188 = private unnamed_addr constant [40 x i8] c"%s ignored with %s and `%%%c' %s format\00", align 1
@.str.189 = private unnamed_addr constant [32 x i8] c"%s ignored with %s in %s format\00", align 1
@.str.190 = private unnamed_addr constant [48 x i8] c"use of %s and %s together with `%%%c' %s format\00", align 1
@.str.191 = private unnamed_addr constant [39 x i8] c"use of %s and %s together in %s format\00", align 1
@.str.192 = private unnamed_addr constant [57 x i8] c"`%%%c' yields only last 2 digits of year in some locales\00", align 1
@.str.193 = private unnamed_addr constant [41 x i8] c"`%%%c' yields only last 2 digits of year\00", align 1
@.str.194 = private unnamed_addr constant [32 x i8] c"no closing `]' for `%%[' format\00", align 1
@.str.195 = private unnamed_addr constant [53 x i8] c"use of `%s' length modifier with `%c' type character\00", align 1
@.str.196 = private unnamed_addr constant [43 x i8] c"%s does not support the `%%%s%c' %s format\00", align 1
@.str.197 = private unnamed_addr constant [52 x i8] c"operand number specified with suppressed assignment\00", align 1
@.str.198 = private unnamed_addr constant [55 x i8] c"operand number specified for format taking no argument\00", align 1
@.str.199 = private unnamed_addr constant [35 x i8] c"missing $ operand number in format\00", align 1
@dollar_first_arg_num = internal global i32 0, align 4
@dollar_arguments_count = internal global i32 0, align 4
@dollar_max_arg_used = internal global i32 0, align 4
@dollar_format_warned = internal global i32 0, align 4
@dollar_arguments_alloc = internal global i32 0, align 4
@dollar_arguments_used = internal global i8* null, align 8
@dollar_arguments_pointer_p = internal global i8* null, align 8
@.str.200 = private unnamed_addr constant [68 x i8] c"format argument %d unused before used argument %d in $-style format\00", align 1
@.str.201 = private unnamed_addr constant [48 x i8] c"%s does not support %%n$ operand number formats\00", align 1
@.str.202 = private unnamed_addr constant [38 x i8] c"operand number out of range in format\00", align 1
@.str.203 = private unnamed_addr constant [52 x i8] c"format argument %d used more than once in %s format\00", align 1
@__FUNCTION__.maybe_read_dollar_number = private unnamed_addr constant [25 x i8] c"maybe_read_dollar_number\00", align 1
@__FUNCTION__.get_flag_spec = private unnamed_addr constant [14 x i8] c"get_flag_spec\00", align 1
@__FUNCTION__.check_format_types = private unnamed_addr constant [19 x i8] c"check_format_types\00", align 1
@.str.204 = private unnamed_addr constant [38 x i8] c"writing through null pointer (arg %d)\00", align 1
@.str.205 = private unnamed_addr constant [38 x i8] c"reading through null pointer (arg %d)\00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.206 = private unnamed_addr constant [38 x i8] c"writing into constant object (arg %d)\00", align 1
@.str.207 = private unnamed_addr constant [50 x i8] c"extra type qualifiers in format argument (arg %d)\00", align 1
@.str.208 = private unnamed_addr constant [42 x i8] c"format argument is not a pointer (arg %d)\00", align 1
@.str.209 = private unnamed_addr constant [55 x i8] c"format argument is not a pointer to a pointer (arg %d)\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"different type\00", align 1
@.str.212 = private unnamed_addr constant [27 x i8] c"%s is not type %s (arg %d)\00", align 1
@.str.213 = private unnamed_addr constant [27 x i8] c"%s format, %s arg (arg %d)\00", align 1
@input_filename = external global i8*, align 8
@lineno = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @set_Wformat(i32 %setting) #0 {
entry:
  %setting.addr = alloca i32, align 4
  store i32 %setting, i32* %setting.addr, align 4
  %0 = load i32, i32* %setting.addr, align 4
  store i32 %0, i32* @warn_format, align 4
  %1 = load i32, i32* %setting.addr, align 4
  store i32 %1, i32* @warn_format_y2k, align 4
  %2 = load i32, i32* %setting.addr, align 4
  store i32 %2, i32* @warn_format_extra_args, align 4
  %3 = load i32, i32* %setting.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %setting.addr, align 4
  store i32 %4, i32* @warn_format_nonliteral, align 4
  %5 = load i32, i32* %setting.addr, align 4
  store i32 %5, i32* @warn_format_security, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @handle_format_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  %info = alloca %struct.function_format_info, align 8
  %argument = alloca %union.tree_node*, align 8
  %arg_num = alloca i64, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %call = call zeroext i1 @decode_format_attr(%union.tree_node* %2, %struct.function_format_info* %info, i32 0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %3, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %5, %union.tree_node** %argument, align 8
  %6 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %tobool = icmp ne %union.tree_node* %6, null
  br i1 %tobool, label %if.then.2, label %if.end.34

if.then.2:                                        ; preds = %if.end
  store i64 1, i64* %arg_num, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %7 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %cmp = icmp ne %union.tree_node* %7, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i64, i64* %arg_num, align 8
  %format_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 1
  %9 = load i64, i64* %format_num, align 8
  %cmp3 = icmp ne i64 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %arg_num, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %arg_num, align 8
  %12 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %13, %union.tree_node** %argument, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %tobool4 = icmp ne %union.tree_node* %14, null
  br i1 %tobool4, label %lor.lhs.false, label %if.then.14

lor.lhs.false:                                    ; preds = %for.end
  %15 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %list = bitcast %union.tree_node* %15 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common5 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp6 = icmp ne i32 %bf.clear, 13
  br i1 %cmp6, label %if.then.14, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %17 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %list8 = bitcast %union.tree_node* %17 to %struct.tree_list*
  %value9 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list8, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %value9, align 8
  %common10 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type11, align 8
  %type12 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type12, i32 0, i32 15
  %20 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp13 = icmp ne %union.tree_node* %20, %21
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false, %for.end
  %22 = load i32, i32* %flags.addr, align 4
  %and = and i32 %22, 16
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.14
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  %23 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %23, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.7
  %first_arg_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 2
  %24 = load i64, i64* %first_arg_num, align 8
  %cmp18 = icmp ne i64 %24, 0
  br i1 %cmp18, label %if.then.19, label %if.end.32

if.then.19:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %25 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %tobool20 = icmp ne %union.tree_node* %25, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %arg_num, align 8
  %inc21 = add i64 %26, 1
  store i64 %inc21, i64* %arg_num, align 8
  %27 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %common22 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %chain23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 0
  %28 = load %union.tree_node*, %union.tree_node** %chain23, align 8
  store %union.tree_node* %28, %union.tree_node** %argument, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i64, i64* %arg_num, align 8
  %first_arg_num24 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 2
  %30 = load i64, i64* %first_arg_num24, align 8
  %cmp25 = icmp ne i64 %29, %30
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %while.end
  %31 = load i32, i32* %flags.addr, align 4
  %and27 = and i32 %31, 16
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.26
  %32 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %32, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.31:                                        ; preds = %while.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %format_type = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 0
  %33 = load i32, i32* %format_type, align 4
  %cmp35 = icmp eq i32 %33, 2
  br i1 %cmp35, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.34
  %first_arg_num36 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 2
  %34 = load i64, i64* %first_arg_num36, align 8
  %cmp37 = icmp ne i64 %34, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  %35 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %35, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true, %if.end.34
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.38, %if.end.30, %if.end.17, %if.then
  %36 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %36
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @decode_format_attr(%union.tree_node* %args, %struct.function_format_info* %info, i32 %validated_p) #0 {
entry:
  %retval = alloca i1, align 1
  %args.addr = alloca %union.tree_node*, align 8
  %info.addr = alloca %struct.function_format_info*, align 8
  %validated_p.addr = alloca i32, align 4
  %format_type_id = alloca %union.tree_node*, align 8
  %format_num_expr = alloca %union.tree_node*, align 8
  %first_arg_num_expr = alloca %union.tree_node*, align 8
  %p = alloca i8*, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store %struct.function_format_info* %info, %struct.function_format_info** %info.addr, align 8
  store i32 %validated_p, i32* %validated_p.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %0 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %1, %union.tree_node** %format_type_id, align 8
  %2 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %list1 = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value2, align 8
  store %union.tree_node* %4, %union.tree_node** %format_num_expr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %common3 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain4, align 8
  %common5 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain6, align 8
  %list7 = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value8 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list7, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value8, align 8
  store %union.tree_node* %8, %union.tree_node** %first_arg_num_expr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %format_type_id, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %validated_p.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.decode_format_attr, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i1 false, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  %11 = load %union.tree_node*, %union.tree_node** %format_type_id, align 8
  %identifier = bitcast %union.tree_node* %11 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  store i8* %12, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %call = call i32 @decode_format_type(i8* %13)
  %14 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_type = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %14, i32 0, i32 0
  store i32 %call, i32* %format_type, align 4
  %15 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_type11 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %15, i32 0, i32 0
  %16 = load i32, i32* %format_type11, align 4
  %cmp12 = icmp eq i32 %16, 4
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.else
  %17 = load i32, i32* %validated_p.addr, align 4
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.decode_format_attr, i32 0, i32 0)) #6
  unreachable

if.end.16:                                        ; preds = %if.then.13
  %18 = load i8*, i8** %p, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* %18)
  store i1 false, i1* %retval
  br label %return

if.end.17:                                        ; preds = %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.18
  %19 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common19 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %code20, align 8
  %bf.clear22 = and i32 %bf.load21, 255
  %cmp23 = icmp eq i32 %bf.clear22, 115
  br i1 %cmp23, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %20 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common24 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 114
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %21 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common29 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 116
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %22 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp33, %lor.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %23 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %exp = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %24, %union.tree_node** %format_num_expr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.53, %while.end
  %25 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %common35 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 2
  %bf.load37 = load i32, i32* %code36, align 8
  %bf.clear38 = and i32 %bf.load37, 255
  %cmp39 = icmp eq i32 %bf.clear38, 115
  br i1 %cmp39, label %lor.end.52, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %while.cond.34
  %26 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %common41 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 2
  %bf.load43 = load i32, i32* %code42, align 8
  %bf.clear44 = and i32 %bf.load43, 255
  %cmp45 = icmp eq i32 %bf.clear44, 114
  br i1 %cmp45, label %lor.end.52, label %lor.rhs.46

lor.rhs.46:                                       ; preds = %lor.lhs.false.40
  %27 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %common47 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 2
  %bf.load49 = load i32, i32* %code48, align 8
  %bf.clear50 = and i32 %bf.load49, 255
  %cmp51 = icmp eq i32 %bf.clear50, 116
  br label %lor.end.52

lor.end.52:                                       ; preds = %lor.rhs.46, %lor.lhs.false.40, %while.cond.34
  %28 = phi i1 [ true, %lor.lhs.false.40 ], [ true, %while.cond.34 ], [ %cmp51, %lor.rhs.46 ]
  br i1 %28, label %while.body.53, label %while.end.57

while.body.53:                                    ; preds = %lor.end.52
  %29 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %exp54 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands55 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp54, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands55, i32 0, i64 0
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx56, align 8
  store %union.tree_node* %30, %union.tree_node** %first_arg_num_expr, align 8
  br label %while.cond.34

while.end.57:                                     ; preds = %lor.end.52
  %31 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common58 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %code59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 2
  %bf.load60 = load i32, i32* %code59, align 8
  %bf.clear61 = and i32 %bf.load60, 255
  %cmp62 = icmp ne i32 %bf.clear61, 25
  br i1 %cmp62, label %if.then.77, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %while.end.57
  %32 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %int_cst = bitcast %union.tree_node* %32 to %struct.tree_int_cst*
  %int_cst64 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst64, i32 0, i32 1
  %33 = load i64, i64* %high, align 8
  %cmp65 = icmp ne i64 %33, 0
  br i1 %cmp65, label %if.then.77, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %34 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %common67 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %code68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 2
  %bf.load69 = load i32, i32* %code68, align 8
  %bf.clear70 = and i32 %bf.load69, 255
  %cmp71 = icmp ne i32 %bf.clear70, 25
  br i1 %cmp71, label %if.then.77, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.66
  %35 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %int_cst73 = bitcast %union.tree_node* %35 to %struct.tree_int_cst*
  %int_cst74 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst73, i32 0, i32 2
  %high75 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst74, i32 0, i32 1
  %36 = load i64, i64* %high75, align 8
  %cmp76 = icmp ne i64 %36, 0
  br i1 %cmp76, label %if.then.77, label %if.end.81

if.then.77:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.66, %lor.lhs.false.63, %while.end.57
  %37 = load i32, i32* %validated_p.addr, align 4
  %tobool78 = icmp ne i32 %37, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.77
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.decode_format_attr, i32 0, i32 0)) #6
  unreachable

if.end.80:                                        ; preds = %if.then.77
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  store i1 false, i1* %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false.72
  %38 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %int_cst82 = bitcast %union.tree_node* %38 to %struct.tree_int_cst*
  %int_cst83 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst82, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst83, i32 0, i32 0
  %39 = load i64, i64* %low, align 8
  %40 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %40, i32 0, i32 1
  store i64 %39, i64* %format_num, align 8
  %41 = load %union.tree_node*, %union.tree_node** %first_arg_num_expr, align 8
  %int_cst84 = bitcast %union.tree_node* %41 to %struct.tree_int_cst*
  %int_cst85 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst84, i32 0, i32 2
  %low86 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst85, i32 0, i32 0
  %42 = load i64, i64* %low86, align 8
  %43 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %43, i32 0, i32 2
  store i64 %42, i64* %first_arg_num, align 8
  %44 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num87 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %44, i32 0, i32 2
  %45 = load i64, i64* %first_arg_num87, align 8
  %cmp88 = icmp ne i64 %45, 0
  br i1 %cmp88, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %if.end.81
  %46 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num89 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %46, i32 0, i32 2
  %47 = load i64, i64* %first_arg_num89, align 8
  %48 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_num90 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %48, i32 0, i32 1
  %49 = load i64, i64* %format_num90, align 8
  %cmp91 = icmp ule i64 %47, %49
  br i1 %cmp91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %validated_p.addr, align 4
  %tobool93 = icmp ne i32 %50, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.92
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 298, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.decode_format_attr, i32 0, i32 0)) #6
  unreachable

if.end.95:                                        ; preds = %if.then.92
  call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  store i1 false, i1* %retval
  br label %return

if.end.96:                                        ; preds = %land.lhs.true, %if.end.81
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.96, %if.end.95, %if.end.80, %if.end.16, %if.end
  %51 = load i1, i1* %retval
  ret i1 %51
}

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @handle_format_arg_attribute(%union.tree_node** %node, %union.tree_node* %name, %union.tree_node* %args, i32 %flags, i8* %no_add_attrs) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %node.addr = alloca %union.tree_node**, align 8
  %name.addr = alloca %union.tree_node*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %no_add_attrs.addr = alloca i8*, align 8
  %type = alloca %union.tree_node*, align 8
  %format_num_expr = alloca %union.tree_node*, align 8
  %format_num = alloca i64, align 8
  %arg_num = alloca i64, align 8
  %argument = alloca %union.tree_node*, align 8
  store %union.tree_node** %node, %union.tree_node*** %node.addr, align 8
  store %union.tree_node* %name, %union.tree_node** %name.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %no_add_attrs, i8** %no_add_attrs.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %node.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %3, %union.tree_node** %format_num_expr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common1 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 114
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common6 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 116
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %8 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %exp = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %9, %union.tree_node** %format_num_expr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %10 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common11 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %code12, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp15 = icmp ne i32 %bf.clear14, 25
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %while.end
  %11 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %int_cst = bitcast %union.tree_node* %11 to %struct.tree_int_cst*
  %int_cst17 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst17, i32 0, i32 1
  %12 = load i64, i64* %high, align 8
  %cmp18 = icmp ne i64 %12, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %while.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0))
  %13 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %13, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.16
  %14 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %int_cst19 = bitcast %union.tree_node* %14 to %struct.tree_int_cst*
  %int_cst20 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst19, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst20, i32 0, i32 0
  %15 = load i64, i64* %low, align 8
  store i64 %15, i64* %format_num, align 8
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type21 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %17, %union.tree_node** %argument, align 8
  %18 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %tobool = icmp ne %union.tree_node* %18, null
  br i1 %tobool, label %if.then.22, label %if.end.47

if.then.22:                                       ; preds = %if.end
  store i64 1, i64* %arg_num, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %19 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %cmp23 = icmp ne %union.tree_node* %19, null
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i64, i64* %arg_num, align 8
  %21 = load i64, i64* %format_num, align 8
  %cmp24 = icmp ne i64 %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %cmp24, %land.rhs ]
  br i1 %22, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, i64* %arg_num, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %arg_num, align 8
  %24 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %common25 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 0
  %25 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %25, %union.tree_node** %argument, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %tobool26 = icmp ne %union.tree_node* %26, null
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.42

lor.lhs.false.27:                                 ; preds = %for.end
  %27 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %list28 = bitcast %union.tree_node* %27 to %struct.tree_list*
  %value29 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list28, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %value29, align 8
  %common30 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %code31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %code31, align 8
  %bf.clear33 = and i32 %bf.load32, 255
  %cmp34 = icmp ne i32 %bf.clear33, 13
  br i1 %cmp34, label %if.then.42, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.27
  %29 = load %union.tree_node*, %union.tree_node** %argument, align 8
  %list36 = bitcast %union.tree_node* %29 to %struct.tree_list*
  %value37 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list36, i32 0, i32 2
  %30 = load %union.tree_node*, %union.tree_node** %value37, align 8
  %common38 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %type39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type39, align 8
  %type40 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 15
  %32 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp41 = icmp ne %union.tree_node* %32, %33
  br i1 %cmp41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %lor.lhs.false.35, %lor.lhs.false.27, %for.end
  %34 = load i32, i32* %flags.addr, align 4
  %and = and i32 %34, 16
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.42
  call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.42
  %35 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %35, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %36 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common48 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %type49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 1
  %37 = load %union.tree_node*, %union.tree_node** %type49, align 8
  %common50 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %code51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load52 = load i32, i32* %code51, align 8
  %bf.clear53 = and i32 %bf.load52, 255
  %cmp54 = icmp ne i32 %bf.clear53, 13
  br i1 %cmp54, label %if.then.63, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %if.end.47
  %38 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common56 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %type57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 1
  %39 = load %union.tree_node*, %union.tree_node** %type57, align 8
  %common58 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %type59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type59, align 8
  %type60 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %main_variant61 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type60, i32 0, i32 15
  %41 = load %union.tree_node*, %union.tree_node** %main_variant61, align 8
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp62 = icmp ne %union.tree_node* %41, %42
  br i1 %cmp62, label %if.then.63, label %if.end.68

if.then.63:                                       ; preds = %lor.lhs.false.55, %if.end.47
  %43 = load i32, i32* %flags.addr, align 4
  %and64 = and i32 %43, 16
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.63
  %44 = load i8*, i8** %no_add_attrs.addr, align 8
  store i8 1, i8* %44, align 1
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.68:                                        ; preds = %lor.lhs.false.55
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.end.67, %if.end.45, %if.then
  %45 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %45
}

; Function Attrs: nounwind uwtable
define void @check_function_format(i32* %status, %union.tree_node* %attrs, %union.tree_node* %params) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %attrs.addr = alloca %union.tree_node*, align 8
  %params.addr = alloca %union.tree_node*, align 8
  %a = alloca %union.tree_node*, align 8
  %info = alloca %struct.function_format_info, align 8
  %c = alloca %union.tree_node*, align 8
  %args = alloca %union.tree_node*, align 8
  store i32* %status, i32** %status.addr, align 8
  store %union.tree_node* %attrs, %union.tree_node** %attrs.addr, align 8
  store %union.tree_node* %params, %union.tree_node** %params.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %attrs.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %1 = load %union.tree_node*, %union.tree_node** %a, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %call = call i32 @is_attribute_p(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %union.tree_node* %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end.56

if.then:                                          ; preds = %for.body
  %4 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list2 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call3 = call zeroext i1 @decode_format_attr(%union.tree_node* %5, %struct.function_format_info* %info, i32 1)
  %6 = load i32*, i32** %status.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  call void @check_format_info(i32* %6, %struct.function_format_info* %info, %union.tree_node* %7)
  %8 = load i32, i32* @warn_missing_format_attribute, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.then
  %first_arg_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 2
  %9 = load i64, i64* %first_arg_num, align 8
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %land.lhs.true.5, label %if.end.55

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %format_type = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 0
  %10 = load i32, i32* %format_type, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom
  %flags = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %arrayidx, i32 0, i32 7
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.55

if.then.7:                                        ; preds = %land.lhs.true.5
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type8 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type8, i32 0, i32 4
  %14 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  store %union.tree_node* %14, %union.tree_node** %c, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then.7
  %15 = load %union.tree_node*, %union.tree_node** %c, align 8
  %tobool10 = icmp ne %union.tree_node* %15, null
  br i1 %tobool10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %16 = load %union.tree_node*, %union.tree_node** %c, align 8
  %list12 = bitcast %union.tree_node* %16 to %struct.tree_list*
  %purpose13 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list12, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %purpose13, align 8
  %call14 = call i32 @is_attribute_p(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %union.tree_node* %17)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %for.body.11
  %18 = load %union.tree_node*, %union.tree_node** %c, align 8
  %list17 = bitcast %union.tree_node* %18 to %struct.tree_list*
  %value18 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list17, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %value18, align 8
  %list19 = bitcast %union.tree_node* %19 to %struct.tree_list*
  %value20 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list19, i32 0, i32 2
  %20 = load %union.tree_node*, %union.tree_node** %value20, align 8
  %identifier = bitcast %union.tree_node* %20 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %21 = load i8*, i8** %str, align 8
  %call21 = call i32 @decode_format_type(i8* %21)
  %format_type22 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 0
  %22 = load i32, i32* %format_type22, align 4
  %cmp23 = icmp eq i32 %call21, %22
  br i1 %cmp23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %land.lhs.true.16
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.16, %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common25 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 0
  %24 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %24, %union.tree_node** %c, align 8
  br label %for.cond.9

for.end:                                          ; preds = %if.then.24, %for.cond.9
  %25 = load %union.tree_node*, %union.tree_node** %c, align 8
  %cmp26 = icmp eq %union.tree_node* %25, null
  br i1 %cmp26, label %if.then.27, label %if.end.54

if.then.27:                                       ; preds = %for.end
  %26 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %27 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %27, %union.tree_node** %args, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.44, %if.then.27
  %28 = load %union.tree_node*, %union.tree_node** %args, align 8
  %cmp29 = icmp ne %union.tree_node* %28, null
  br i1 %cmp29, label %for.body.30, label %for.end.47

for.body.30:                                      ; preds = %for.cond.28
  %29 = load %union.tree_node*, %union.tree_node** %args, align 8
  %common31 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %common33 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common33, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp34 = icmp eq i32 %bf.clear, 13
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.43

land.lhs.true.35:                                 ; preds = %for.body.30
  %31 = load %union.tree_node*, %union.tree_node** %args, align 8
  %common36 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %type37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %type37, align 8
  %common38 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %type39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 1
  %33 = load %union.tree_node*, %union.tree_node** %type39, align 8
  %type40 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 15
  %34 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp41 = icmp eq %union.tree_node* %34, %35
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.35
  br label %for.end.47

if.end.43:                                        ; preds = %land.lhs.true.35, %for.body.30
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %36 = load %union.tree_node*, %union.tree_node** %args, align 8
  %common45 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %chain46 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 0
  %37 = load %union.tree_node*, %union.tree_node** %chain46, align 8
  store %union.tree_node* %37, %union.tree_node** %args, align 8
  br label %for.cond.28

for.end.47:                                       ; preds = %if.then.42, %for.cond.28
  %38 = load %union.tree_node*, %union.tree_node** %args, align 8
  %cmp48 = icmp ne %union.tree_node* %38, null
  br i1 %cmp48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %for.end.47
  %format_type50 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %info, i32 0, i32 0
  %39 = load i32, i32* %format_type50, align 4
  %idxprom51 = zext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom51
  %name = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %arrayidx52, i32 0, i32 0
  %40 = load i8*, i8** %name, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i32 0, i32 0), i8* %40)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %for.end.47
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.end
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true.5, %land.lhs.true, %if.then
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %41 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common58 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %chain59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 0
  %42 = load %union.tree_node*, %union.tree_node** %chain59, align 8
  store %union.tree_node* %42, %union.tree_node** %a, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  ret void
}

declare i32 @is_attribute_p(i8*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @check_format_info(i32* %status, %struct.function_format_info* %info, %union.tree_node* %params) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %info.addr = alloca %struct.function_format_info*, align 8
  %params.addr = alloca %union.tree_node*, align 8
  %arg_num = alloca i64, align 8
  %format_tree = alloca %union.tree_node*, align 8
  %res = alloca %struct.format_check_results, align 4
  store i32* %status, i32** %status.addr, align 8
  store %struct.function_format_info* %info, %struct.function_format_info** %info.addr, align 8
  store %union.tree_node* %params, %union.tree_node** %params.addr, align 8
  store i64 1, i64* %arg_num, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %if.end.79

if.end:                                           ; preds = %for.cond
  %1 = load i64, i64* %arg_num, align 8
  %2 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %2, i32 0, i32 1
  %3 = load i64, i64* %format_num, align 8
  %cmp1 = icmp eq i64 %1, %3
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.end.3:                                         ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %5, %union.tree_node** %params.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %6 = load i64, i64* %arg_num, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %arg_num, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.2
  %7 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %list = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %8, %union.tree_node** %format_tree, align 8
  %9 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common4 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %chain5, align 8
  store %union.tree_node* %10, %union.tree_node** %params.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %format_tree, align 8
  %cmp6 = icmp eq %union.tree_node* %11, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  br label %if.end.79

if.end.8:                                         ; preds = %for.end
  %number_non_literal = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 0
  store i32 0, i32* %number_non_literal, align 4
  %number_extra_args = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 1
  store i32 0, i32* %number_extra_args, align 4
  %number_dollar_extra_args = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 2
  store i32 0, i32* %number_dollar_extra_args, align 4
  %number_wide = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 3
  store i32 0, i32* %number_wide, align 4
  %number_empty = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 4
  store i32 0, i32* %number_empty, align 4
  %number_unterminated = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 5
  store i32 0, i32* %number_unterminated, align 4
  %number_other = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 6
  store i32 0, i32* %number_other, align 4
  %12 = load i32*, i32** %status.addr, align 8
  %13 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %14 = load %union.tree_node*, %union.tree_node** %format_tree, align 8
  %15 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %16 = load i64, i64* %arg_num, align 8
  call void @check_format_info_recurse(i32* %12, %struct.format_check_results* %res, %struct.function_format_info* %13, %union.tree_node* %14, %union.tree_node* %15, i64 %16)
  %number_non_literal9 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 0
  %17 = load i32, i32* %number_non_literal9, align 4
  %cmp10 = icmp sgt i32 %17, 0
  br i1 %cmp10, label %if.then.11, label %if.end.37

if.then.11:                                       ; preds = %if.end.8
  %18 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_type = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %18, i32 0, i32 0
  %19 = load i32, i32* %format_type, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom
  %flags = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %arrayidx, i32 0, i32 7
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.then.11
  %21 = load i32, i32* @warn_format_nonliteral, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %22 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.158, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  br label %if.end.36

if.else:                                          ; preds = %if.then.11
  %23 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %23, i32 0, i32 2
  %24 = load i64, i64* %first_arg_num, align 8
  %cmp16 = icmp ne i64 %24, 0
  br i1 %cmp16, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.then.17
  %25 = load i64, i64* %arg_num, align 8
  %add = add i64 %25, 1
  %26 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num18 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %26, i32 0, i32 2
  %27 = load i64, i64* %first_arg_num18, align 8
  %cmp19 = icmp ult i64 %add, %27
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp20 = icmp eq %union.tree_node* %28, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.body
  br label %while.end

if.end.22:                                        ; preds = %while.body
  %29 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common23 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %chain24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 0
  %30 = load %union.tree_node*, %union.tree_node** %chain24, align 8
  store %union.tree_node* %30, %union.tree_node** %params.addr, align 8
  %31 = load i64, i64* %arg_num, align 8
  %inc25 = add i64 %31, 1
  store i64 %inc25, i64* %arg_num, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.21, %while.cond
  %32 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp26 = icmp eq %union.tree_node* %32, null
  br i1 %cmp26, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %while.end
  %33 = load i32, i32* @warn_format_nonliteral, align 4
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %34 = load i32, i32* @warn_format_security, align 4
  %tobool28 = icmp ne i32 %34, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.159, i32 0, i32 0))
  br label %if.end.34

if.else.30:                                       ; preds = %lor.lhs.false, %while.end
  %36 = load i32, i32* @warn_format_nonliteral, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.30
  %37 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.160, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.else.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.15
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.8
  %number_extra_args38 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 1
  %38 = load i32, i32* %number_extra_args38, align 4
  %cmp39 = icmp sgt i32 %38, 0
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.49

land.lhs.true.40:                                 ; preds = %if.end.37
  %number_non_literal41 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 0
  %39 = load i32, i32* %number_non_literal41, align 4
  %cmp42 = icmp eq i32 %39, 0
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.49

land.lhs.true.43:                                 ; preds = %land.lhs.true.40
  %number_other44 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 6
  %40 = load i32, i32* %number_other44, align 4
  %cmp45 = icmp eq i32 %40, 0
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.49

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %41 = load i32, i32* @warn_format_extra_args, align 4
  %tobool47 = icmp ne i32 %41, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.46
  %42 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.161, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %land.lhs.true.46, %land.lhs.true.43, %land.lhs.true.40, %if.end.37
  %number_dollar_extra_args50 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 2
  %43 = load i32, i32* %number_dollar_extra_args50, align 4
  %cmp51 = icmp sgt i32 %43, 0
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.61

land.lhs.true.52:                                 ; preds = %if.end.49
  %number_non_literal53 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 0
  %44 = load i32, i32* %number_non_literal53, align 4
  %cmp54 = icmp eq i32 %44, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.61

land.lhs.true.55:                                 ; preds = %land.lhs.true.52
  %number_other56 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 6
  %45 = load i32, i32* %number_other56, align 4
  %cmp57 = icmp eq i32 %45, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.61

land.lhs.true.58:                                 ; preds = %land.lhs.true.55
  %46 = load i32, i32* @warn_format_extra_args, align 4
  %tobool59 = icmp ne i32 %46, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.58
  %47 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.162, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %land.lhs.true.58, %land.lhs.true.55, %land.lhs.true.52, %if.end.49
  %number_empty62 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 4
  %48 = load i32, i32* %number_empty62, align 4
  %cmp63 = icmp sgt i32 %48, 0
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.71

land.lhs.true.64:                                 ; preds = %if.end.61
  %number_non_literal65 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 0
  %49 = load i32, i32* %number_non_literal65, align 4
  %cmp66 = icmp eq i32 %49, 0
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.71

land.lhs.true.67:                                 ; preds = %land.lhs.true.64
  %number_other68 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 6
  %50 = load i32, i32* %number_other68, align 4
  %cmp69 = icmp eq i32 %50, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true.67
  %51 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.163, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true.67, %land.lhs.true.64, %if.end.61
  %number_wide72 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 3
  %52 = load i32, i32* %number_wide72, align 4
  %cmp73 = icmp sgt i32 %52, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  %53 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i32 0, i32 0))
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.71
  %number_unterminated76 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %res, i32 0, i32 5
  %54 = load i32, i32* %number_unterminated76, align 4
  %cmp77 = icmp sgt i32 %54, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  %55 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.165, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.then, %if.then.7, %if.then.78, %if.end.75
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_format_type(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %slen = alloca i32, align 4
  %alen = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %slen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %4) #7
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom3
  %name5 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %arrayidx4, i32 0, i32 0
  %6 = load i8*, i8** %name5, align 8
  %call6 = call i64 @strlen(i8* %6) #7
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %alen, align 4
  %7 = load i32, i32* %slen, align 4
  %8 = load i32, i32* %alen, align 4
  %add = add nsw i32 %8, 4
  %cmp8 = icmp eq i32 %7, %add
  br i1 %cmp8, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %s.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 95
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.40

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** %s.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %12 to i32
  %cmp17 = icmp eq i32 %conv16, 95
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.40

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %13 = load i32, i32* %slen, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom20 = sext i32 %sub to i64
  %14 = load i8*, i8** %s.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 %idxprom20
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp eq i32 %conv22, 95
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.40

land.lhs.true.25:                                 ; preds = %land.lhs.true.19
  %16 = load i32, i32* %slen, align 4
  %sub26 = sub nsw i32 %16, 2
  %idxprom27 = sext i32 %sub26 to i64
  %17 = load i8*, i8** %s.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %17, i64 %idxprom27
  %18 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %18 to i32
  %cmp30 = icmp eq i32 %conv29, 95
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.40

land.lhs.true.32:                                 ; preds = %land.lhs.true.25
  %19 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %20 to i64
  %arrayidx34 = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom33
  %name35 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %arrayidx34, i32 0, i32 0
  %21 = load i8*, i8** %name35, align 8
  %22 = load i32, i32* %alen, align 4
  %conv36 = sext i32 %22 to i64
  %call37 = call i32 @strncmp(i8* %add.ptr, i8* %21, i64 %conv36) #7
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.32
  br label %for.end

if.end.40:                                        ; preds = %land.lhs.true.32, %land.lhs.true.25, %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.39, %if.then, %for.cond
  %24 = load i32, i32* %i, align 4
  ret i32 %24
}

declare void @warning(i8*, ...) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @check_format_info_recurse(i32* %status, %struct.format_check_results* %res, %struct.function_format_info* %info, %union.tree_node* %format_tree, %union.tree_node* %params, i64 %arg_num) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %res.addr = alloca %struct.format_check_results*, align 8
  %info.addr = alloca %struct.function_format_info*, align 8
  %format_tree.addr = alloca %union.tree_node*, align 8
  %params.addr = alloca %union.tree_node*, align 8
  %arg_num.addr = alloca i64, align 8
  %format_length = alloca i32, align 4
  %offset = alloca i64, align 8
  %format_chars = alloca i8*, align 8
  %array_size = alloca %union.tree_node*, align 8
  %array_init = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  %attrs = alloca %union.tree_node*, align 8
  %found_format_arg = alloca i8, align 1
  %inner_args = alloca %union.tree_node*, align 8
  %format_num_expr = alloca %union.tree_node*, align 8
  %format_num = alloca i32, align 4
  %i = alloca i32, align 4
  %arg0 = alloca %union.tree_node*, align 8
  %arg1 = alloca %union.tree_node*, align 8
  %array_size_value = alloca i64, align 8
  store i32* %status, i32** %status.addr, align 8
  store %struct.format_check_results* %res, %struct.format_check_results** %res.addr, align 8
  store %struct.function_format_info* %info, %struct.function_format_info** %info.addr, align 8
  store %union.tree_node* %format_tree, %union.tree_node** %format_tree.addr, align 8
  store %union.tree_node* %params, %union.tree_node** %params.addr, align 8
  store i64 %arg_num, i64* %arg_num.addr, align 8
  store %union.tree_node* null, %union.tree_node** %array_size, align 8
  %0 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 115
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %status.addr, align 8
  %2 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %3 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %6 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %7 = load i64, i64* %arg_num.addr, align 8
  call void @check_format_info_recurse(i32* %1, %struct.format_check_results* %2, %struct.function_format_info* %3, %union.tree_node* %5, %union.tree_node* %6, i64 %7)
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common1 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 53
  br i1 %cmp5, label %if.then.6, label %if.end.72

if.then.6:                                        ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp7 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands8 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp7, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands8, i32 0, i64 0
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8
  %common10 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type11, align 8
  %common12 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type13, align 8
  store %union.tree_node* %12, %union.tree_node** %type, align 8
  store i8 0, i8* %found_format_arg, align 1
  %13 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type14 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 4
  %14 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  store %union.tree_node* %14, %union.tree_node** %attrs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %if.then.6
  %15 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %tobool = icmp ne %union.tree_node* %15, null
  br i1 %tobool, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  %16 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %list = bitcast %union.tree_node* %16 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %call = call i32 @is_attribute_p(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.166, i32 0, i32 0), %union.tree_node* %17)
  %tobool15 = icmp ne i32 %call, 0
  br i1 %tobool15, label %if.then.16, label %if.end.64

if.then.16:                                       ; preds = %for.body
  %18 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %list17 = bitcast %union.tree_node* %18 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list17, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %value, align 8
  %list18 = bitcast %union.tree_node* %19 to %struct.tree_list*
  %value19 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list18, i32 0, i32 2
  %20 = load %union.tree_node*, %union.tree_node** %value19, align 8
  store %union.tree_node* %20, %union.tree_node** %format_num_expr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.16
  %21 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common20 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %code21, align 8
  %bf.clear23 = and i32 %bf.load22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 115
  br i1 %cmp24, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %22 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common25 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 2
  %bf.load27 = load i32, i32* %code26, align 8
  %bf.clear28 = and i32 %bf.load27, 255
  %cmp29 = icmp eq i32 %bf.clear28, 114
  br i1 %cmp29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %23 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common30 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %code31, align 8
  %bf.clear33 = and i32 %bf.load32, 255
  %cmp34 = icmp eq i32 %bf.clear33, 116
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %24 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp34, %lor.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %25 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %exp35 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands36 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp35, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands36, i32 0, i64 0
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx37, align 8
  store %union.tree_node* %26, %union.tree_node** %format_num_expr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %27 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %common38 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %code39, align 8
  %bf.clear41 = and i32 %bf.load40, 255
  %cmp42 = icmp ne i32 %bf.clear41, 25
  br i1 %cmp42, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %while.end
  %28 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %int_cst = bitcast %union.tree_node* %28 to %struct.tree_int_cst*
  %int_cst44 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst44, i32 0, i32 1
  %29 = load i64, i64* %high, align 8
  %cmp45 = icmp ne i64 %29, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.43, %while.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1434, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.check_format_info_recurse, i32 0, i32 0)) #6
  unreachable

if.end.47:                                        ; preds = %lor.lhs.false.43
  %30 = load %union.tree_node*, %union.tree_node** %format_num_expr, align 8
  %int_cst48 = bitcast %union.tree_node* %30 to %struct.tree_int_cst*
  %int_cst49 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst48, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst49, i32 0, i32 0
  %31 = load i64, i64* %low, align 8
  %conv = trunc i64 %31 to i32
  store i32 %conv, i32* %format_num, align 4
  %32 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp50 = bitcast %union.tree_node* %32 to %struct.tree_exp*
  %operands51 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp50, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands51, i32 0, i64 1
  %33 = load %union.tree_node*, %union.tree_node** %arrayidx52, align 8
  store %union.tree_node* %33, %union.tree_node** %inner_args, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.end.47
  %34 = load %union.tree_node*, %union.tree_node** %inner_args, align 8
  %cmp54 = icmp ne %union.tree_node* %34, null
  br i1 %cmp54, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.53
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %format_num, align 4
  %cmp57 = icmp eq i32 %35, %36
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %for.body.56
  %37 = load i32*, i32** %status.addr, align 8
  %38 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %39 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %40 = load %union.tree_node*, %union.tree_node** %inner_args, align 8
  %list60 = bitcast %union.tree_node* %40 to %struct.tree_list*
  %value61 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list60, i32 0, i32 2
  %41 = load %union.tree_node*, %union.tree_node** %value61, align 8
  %42 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %43 = load i64, i64* %arg_num.addr, align 8
  call void @check_format_info_recurse(i32* %37, %struct.format_check_results* %38, %struct.function_format_info* %39, %union.tree_node* %41, %union.tree_node* %42, i64 %43)
  store i8 1, i8* %found_format_arg, align 1
  br label %for.end

if.end.62:                                        ; preds = %for.body.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %44 = load %union.tree_node*, %union.tree_node** %inner_args, align 8
  %common63 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common63, i32 0, i32 0
  %45 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %45, %union.tree_node** %inner_args, align 8
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.53

for.end:                                          ; preds = %if.then.59, %for.cond.53
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %for.body
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %47 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %common66 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %chain67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common66, i32 0, i32 0
  %48 = load %union.tree_node*, %union.tree_node** %chain67, align 8
  store %union.tree_node* %48, %union.tree_node** %attrs, align 8
  br label %for.cond

for.end.68:                                       ; preds = %for.cond
  %49 = load i8, i8* %found_format_arg, align 1
  %tobool69 = trunc i8 %49 to i1
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.end.68
  br label %return

if.end.71:                                        ; preds = %for.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end
  %50 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common73 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %code74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 2
  %bf.load75 = load i32, i32* %code74, align 8
  %bf.clear76 = and i32 %bf.load75, 255
  %cmp77 = icmp eq i32 %bf.clear76, 51
  br i1 %cmp77, label %if.then.79, label %if.end.86

if.then.79:                                       ; preds = %if.end.72
  %51 = load i32*, i32** %status.addr, align 8
  %52 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %53 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %54 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp80 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands81 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp80, i32 0, i32 2
  %arrayidx82 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands81, i32 0, i64 1
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx82, align 8
  %56 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %57 = load i64, i64* %arg_num.addr, align 8
  call void @check_format_info_recurse(i32* %51, %struct.format_check_results* %52, %struct.function_format_info* %53, %union.tree_node* %55, %union.tree_node* %56, i64 %57)
  %58 = load i32*, i32** %status.addr, align 8
  %59 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %60 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %61 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp83 = bitcast %union.tree_node* %61 to %struct.tree_exp*
  %operands84 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp83, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands84, i32 0, i64 2
  %62 = load %union.tree_node*, %union.tree_node** %arrayidx85, align 8
  %63 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %64 = load i64, i64* %arg_num.addr, align 8
  call void @check_format_info_recurse(i32* %58, %struct.format_check_results* %59, %struct.function_format_info* %60, %union.tree_node* %62, %union.tree_node* %63, i64 %64)
  br label %return

if.end.86:                                        ; preds = %if.end.72
  %65 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %call87 = call i32 @integer_zerop(%union.tree_node* %65)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.108

if.then.89:                                       ; preds = %if.end.86
  %66 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.167, i32 0, i32 0))
  br label %while.cond.90

while.cond.90:                                    ; preds = %if.end.97, %if.then.89
  %67 = load i64, i64* %arg_num.addr, align 8
  %add = add i64 %67, 1
  %68 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %68, i32 0, i32 2
  %69 = load i64, i64* %first_arg_num, align 8
  %cmp91 = icmp ult i64 %add, %69
  br i1 %cmp91, label %while.body.93, label %while.end.101

while.body.93:                                    ; preds = %while.cond.90
  %70 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp94 = icmp eq %union.tree_node* %70, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %while.body.93
  br label %return

if.end.97:                                        ; preds = %while.body.93
  %71 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common98 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %chain99 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common98, i32 0, i32 0
  %72 = load %union.tree_node*, %union.tree_node** %chain99, align 8
  store %union.tree_node* %72, %union.tree_node** %params.addr, align 8
  %73 = load i64, i64* %arg_num.addr, align 8
  %inc100 = add i64 %73, 1
  store i64 %inc100, i64* %arg_num.addr, align 8
  br label %while.cond.90

while.end.101:                                    ; preds = %while.cond.90
  %74 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp102 = icmp eq %union.tree_node* %74, null
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %while.end.101
  %75 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_other = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %75, i32 0, i32 6
  %76 = load i32, i32* %number_other, align 4
  %inc105 = add nsw i32 %76, 1
  store i32 %inc105, i32* %number_other, align 4
  br label %if.end.107

if.else:                                          ; preds = %while.end.101
  %77 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_extra_args = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %77, i32 0, i32 1
  %78 = load i32, i32* %number_extra_args, align 4
  %inc106 = add nsw i32 %78, 1
  store i32 %inc106, i32* %number_extra_args, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.104
  br label %return

if.end.108:                                       ; preds = %if.end.86
  store i64 0, i64* %offset, align 8
  %79 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common109 = bitcast %union.tree_node* %79 to %struct.tree_common*
  %code110 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common109, i32 0, i32 2
  %bf.load111 = load i32, i32* %code110, align 8
  %bf.clear112 = and i32 %bf.load111, 255
  %cmp113 = icmp eq i32 %bf.clear112, 59
  br i1 %cmp113, label %if.then.115, label %if.end.252

if.then.115:                                      ; preds = %if.end.108
  %80 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp116 = bitcast %union.tree_node* %80 to %struct.tree_exp*
  %operands117 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp116, i32 0, i32 2
  %arrayidx118 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands117, i32 0, i64 0
  %81 = load %union.tree_node*, %union.tree_node** %arrayidx118, align 8
  store %union.tree_node* %81, %union.tree_node** %arg0, align 8
  %82 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp119 = bitcast %union.tree_node* %82 to %struct.tree_exp*
  %operands120 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp119, i32 0, i32 2
  %arrayidx121 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands120, i32 0, i64 1
  %83 = load %union.tree_node*, %union.tree_node** %arrayidx121, align 8
  store %union.tree_node* %83, %union.tree_node** %arg1, align 8
  br label %while.cond.122

while.cond.122:                                   ; preds = %while.body.165, %if.then.115
  %84 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common123 = bitcast %union.tree_node* %84 to %struct.tree_common*
  %code124 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common123, i32 0, i32 2
  %bf.load125 = load i32, i32* %code124, align 8
  %bf.clear126 = and i32 %bf.load125, 255
  %cmp127 = icmp eq i32 %bf.clear126, 115
  br i1 %cmp127, label %land.lhs.true, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %while.cond.122
  %85 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common130 = bitcast %union.tree_node* %85 to %struct.tree_common*
  %code131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common130, i32 0, i32 2
  %bf.load132 = load i32, i32* %code131, align 8
  %bf.clear133 = and i32 %bf.load132, 255
  %cmp134 = icmp eq i32 %bf.clear133, 114
  br i1 %cmp134, label %land.lhs.true, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.129
  %86 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common137 = bitcast %union.tree_node* %86 to %struct.tree_common*
  %code138 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common137, i32 0, i32 2
  %bf.load139 = load i32, i32* %code138, align 8
  %bf.clear140 = and i32 %bf.load139, 255
  %cmp141 = icmp eq i32 %bf.clear140, 116
  br i1 %cmp141, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.136, %lor.lhs.false.129, %while.cond.122
  %87 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %exp143 = bitcast %union.tree_node* %87 to %struct.tree_exp*
  %operands144 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp143, i32 0, i32 2
  %arrayidx145 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands144, i32 0, i64 0
  %88 = load %union.tree_node*, %union.tree_node** %arrayidx145, align 8
  %89 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp146 = icmp ne %union.tree_node* %88, %89
  br i1 %cmp146, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %90 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common148 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %type149 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common148, i32 0, i32 1
  %91 = load %union.tree_node*, %union.tree_node** %type149, align 8
  %type150 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type150, i32 0, i32 6
  %bf.load151 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load151, 9
  %bf.clear152 = and i32 %bf.lshr, 127
  %92 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %exp153 = bitcast %union.tree_node* %92 to %struct.tree_exp*
  %operands154 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp153, i32 0, i32 2
  %arrayidx155 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands154, i32 0, i64 0
  %93 = load %union.tree_node*, %union.tree_node** %arrayidx155, align 8
  %common156 = bitcast %union.tree_node* %93 to %struct.tree_common*
  %type157 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common156, i32 0, i32 1
  %94 = load %union.tree_node*, %union.tree_node** %type157, align 8
  %type158 = bitcast %union.tree_node* %94 to %struct.tree_type*
  %mode159 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type158, i32 0, i32 6
  %bf.load160 = load i32, i32* %mode159, align 4
  %bf.lshr161 = lshr i32 %bf.load160, 9
  %bf.clear162 = and i32 %bf.lshr161, 127
  %cmp163 = icmp eq i32 %bf.clear152, %bf.clear162
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.136
  %95 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.136 ], [ %cmp163, %land.rhs ]
  br i1 %95, label %while.body.165, label %while.end.169

while.body.165:                                   ; preds = %land.end
  %96 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %exp166 = bitcast %union.tree_node* %96 to %struct.tree_exp*
  %operands167 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp166, i32 0, i32 2
  %arrayidx168 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands167, i32 0, i64 0
  %97 = load %union.tree_node*, %union.tree_node** %arrayidx168, align 8
  store %union.tree_node* %97, %union.tree_node** %arg0, align 8
  br label %while.cond.122

while.end.169:                                    ; preds = %land.end
  br label %while.cond.170

while.cond.170:                                   ; preds = %while.body.218, %while.end.169
  %98 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common171 = bitcast %union.tree_node* %98 to %struct.tree_common*
  %code172 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common171, i32 0, i32 2
  %bf.load173 = load i32, i32* %code172, align 8
  %bf.clear174 = and i32 %bf.load173, 255
  %cmp175 = icmp eq i32 %bf.clear174, 115
  br i1 %cmp175, label %land.lhs.true.191, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %while.cond.170
  %99 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common178 = bitcast %union.tree_node* %99 to %struct.tree_common*
  %code179 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common178, i32 0, i32 2
  %bf.load180 = load i32, i32* %code179, align 8
  %bf.clear181 = and i32 %bf.load180, 255
  %cmp182 = icmp eq i32 %bf.clear181, 114
  br i1 %cmp182, label %land.lhs.true.191, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %lor.lhs.false.177
  %100 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common185 = bitcast %union.tree_node* %100 to %struct.tree_common*
  %code186 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common185, i32 0, i32 2
  %bf.load187 = load i32, i32* %code186, align 8
  %bf.clear188 = and i32 %bf.load187, 255
  %cmp189 = icmp eq i32 %bf.clear188, 116
  br i1 %cmp189, label %land.lhs.true.191, label %land.end.217

land.lhs.true.191:                                ; preds = %lor.lhs.false.184, %lor.lhs.false.177, %while.cond.170
  %101 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %exp192 = bitcast %union.tree_node* %101 to %struct.tree_exp*
  %operands193 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp192, i32 0, i32 2
  %arrayidx194 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands193, i32 0, i64 0
  %102 = load %union.tree_node*, %union.tree_node** %arrayidx194, align 8
  %103 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp195 = icmp ne %union.tree_node* %102, %103
  br i1 %cmp195, label %land.rhs.197, label %land.end.217

land.rhs.197:                                     ; preds = %land.lhs.true.191
  %104 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common198 = bitcast %union.tree_node* %104 to %struct.tree_common*
  %type199 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common198, i32 0, i32 1
  %105 = load %union.tree_node*, %union.tree_node** %type199, align 8
  %type200 = bitcast %union.tree_node* %105 to %struct.tree_type*
  %mode201 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type200, i32 0, i32 6
  %bf.load202 = load i32, i32* %mode201, align 4
  %bf.lshr203 = lshr i32 %bf.load202, 9
  %bf.clear204 = and i32 %bf.lshr203, 127
  %106 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %exp205 = bitcast %union.tree_node* %106 to %struct.tree_exp*
  %operands206 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp205, i32 0, i32 2
  %arrayidx207 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands206, i32 0, i64 0
  %107 = load %union.tree_node*, %union.tree_node** %arrayidx207, align 8
  %common208 = bitcast %union.tree_node* %107 to %struct.tree_common*
  %type209 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common208, i32 0, i32 1
  %108 = load %union.tree_node*, %union.tree_node** %type209, align 8
  %type210 = bitcast %union.tree_node* %108 to %struct.tree_type*
  %mode211 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type210, i32 0, i32 6
  %bf.load212 = load i32, i32* %mode211, align 4
  %bf.lshr213 = lshr i32 %bf.load212, 9
  %bf.clear214 = and i32 %bf.lshr213, 127
  %cmp215 = icmp eq i32 %bf.clear204, %bf.clear214
  br label %land.end.217

land.end.217:                                     ; preds = %land.rhs.197, %land.lhs.true.191, %lor.lhs.false.184
  %109 = phi i1 [ false, %land.lhs.true.191 ], [ false, %lor.lhs.false.184 ], [ %cmp215, %land.rhs.197 ]
  br i1 %109, label %while.body.218, label %while.end.222

while.body.218:                                   ; preds = %land.end.217
  %110 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %exp219 = bitcast %union.tree_node* %110 to %struct.tree_exp*
  %operands220 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp219, i32 0, i32 2
  %arrayidx221 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands220, i32 0, i64 0
  %111 = load %union.tree_node*, %union.tree_node** %arrayidx221, align 8
  store %union.tree_node* %111, %union.tree_node** %arg1, align 8
  br label %while.cond.170

while.end.222:                                    ; preds = %land.end.217
  %112 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %common223 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %code224 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common223, i32 0, i32 2
  %bf.load225 = load i32, i32* %code224, align 8
  %bf.clear226 = and i32 %bf.load225, 255
  %cmp227 = icmp eq i32 %bf.clear226, 25
  br i1 %cmp227, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %while.end.222
  %113 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  store %union.tree_node* %113, %union.tree_node** %format_tree.addr, align 8
  br label %if.end.241

if.else.230:                                      ; preds = %while.end.222
  %114 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  %common231 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %code232 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common231, i32 0, i32 2
  %bf.load233 = load i32, i32* %code232, align 8
  %bf.clear234 = and i32 %bf.load233, 255
  %cmp235 = icmp eq i32 %bf.clear234, 25
  br i1 %cmp235, label %if.then.237, label %if.else.238

if.then.237:                                      ; preds = %if.else.230
  %115 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  store %union.tree_node* %115, %union.tree_node** %format_tree.addr, align 8
  %116 = load %union.tree_node*, %union.tree_node** %arg0, align 8
  store %union.tree_node* %116, %union.tree_node** %arg1, align 8
  br label %if.end.240

if.else.238:                                      ; preds = %if.else.230
  %117 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_non_literal = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %117, i32 0, i32 0
  %118 = load i32, i32* %number_non_literal, align 4
  %inc239 = add nsw i32 %118, 1
  store i32 %inc239, i32* %number_non_literal, align 4
  br label %return

if.end.240:                                       ; preds = %if.then.237
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.229
  %119 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call242 = call i32 @host_integerp(%union.tree_node* %119, i32 0)
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %lor.lhs.false.244, label %if.then.248

lor.lhs.false.244:                                ; preds = %if.end.241
  %120 = load %union.tree_node*, %union.tree_node** %arg1, align 8
  %call245 = call i64 @tree_low_cst(%union.tree_node* %120, i32 0)
  store i64 %call245, i64* %offset, align 8
  %cmp246 = icmp slt i64 %call245, 0
  br i1 %cmp246, label %if.then.248, label %if.end.251

if.then.248:                                      ; preds = %lor.lhs.false.244, %if.end.241
  %121 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_non_literal249 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %121, i32 0, i32 0
  %122 = load i32, i32* %number_non_literal249, align 4
  %inc250 = add nsw i32 %122, 1
  store i32 %inc250, i32* %number_non_literal249, align 4
  br label %return

if.end.251:                                       ; preds = %lor.lhs.false.244
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.108
  %123 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common253 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %code254 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common253, i32 0, i32 2
  %bf.load255 = load i32, i32* %code254, align 8
  %bf.clear256 = and i32 %bf.load255, 255
  %cmp257 = icmp ne i32 %bf.clear256, 121
  br i1 %cmp257, label %if.then.259, label %if.end.262

if.then.259:                                      ; preds = %if.end.252
  %124 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_non_literal260 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %124, i32 0, i32 0
  %125 = load i32, i32* %number_non_literal260, align 4
  %inc261 = add nsw i32 %125, 1
  store i32 %inc261, i32* %number_non_literal260, align 4
  br label %return

if.end.262:                                       ; preds = %if.end.252
  %126 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %exp263 = bitcast %union.tree_node* %126 to %struct.tree_exp*
  %operands264 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp263, i32 0, i32 2
  %arrayidx265 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands264, i32 0, i64 0
  %127 = load %union.tree_node*, %union.tree_node** %arrayidx265, align 8
  store %union.tree_node* %127, %union.tree_node** %format_tree.addr, align 8
  %128 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common266 = bitcast %union.tree_node* %128 to %struct.tree_common*
  %code267 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common266, i32 0, i32 2
  %bf.load268 = load i32, i32* %code267, align 8
  %bf.clear269 = and i32 %bf.load268, 255
  %cmp270 = icmp eq i32 %bf.clear269, 34
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.293

land.lhs.true.272:                                ; preds = %if.end.262
  %129 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common273 = bitcast %union.tree_node* %129 to %struct.tree_common*
  %type274 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common273, i32 0, i32 1
  %130 = load %union.tree_node*, %union.tree_node** %type274, align 8
  %common275 = bitcast %union.tree_node* %130 to %struct.tree_common*
  %code276 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common275, i32 0, i32 2
  %bf.load277 = load i32, i32* %code276, align 8
  %bf.clear278 = and i32 %bf.load277, 255
  %cmp279 = icmp eq i32 %bf.clear278, 18
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.293

land.lhs.true.281:                                ; preds = %land.lhs.true.272
  %131 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %call282 = call %union.tree_node* @decl_constant_value(%union.tree_node* %131)
  store %union.tree_node* %call282, %union.tree_node** %array_init, align 8
  %132 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %cmp283 = icmp ne %union.tree_node* %call282, %132
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.293

land.lhs.true.285:                                ; preds = %land.lhs.true.281
  %133 = load %union.tree_node*, %union.tree_node** %array_init, align 8
  %common286 = bitcast %union.tree_node* %133 to %struct.tree_common*
  %code287 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common286, i32 0, i32 2
  %bf.load288 = load i32, i32* %code287, align 8
  %bf.clear289 = and i32 %bf.load288, 255
  %cmp290 = icmp eq i32 %bf.clear289, 29
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %land.lhs.true.285
  %134 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %decl = bitcast %union.tree_node* %134 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 7
  %135 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  store %union.tree_node* %135, %union.tree_node** %array_size, align 8
  %136 = load %union.tree_node*, %union.tree_node** %array_init, align 8
  store %union.tree_node* %136, %union.tree_node** %format_tree.addr, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %land.lhs.true.285, %land.lhs.true.281, %land.lhs.true.272, %if.end.262
  %137 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common294 = bitcast %union.tree_node* %137 to %struct.tree_common*
  %code295 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common294, i32 0, i32 2
  %bf.load296 = load i32, i32* %code295, align 8
  %bf.clear297 = and i32 %bf.load296, 255
  %cmp298 = icmp ne i32 %bf.clear297, 29
  br i1 %cmp298, label %if.then.300, label %if.end.303

if.then.300:                                      ; preds = %if.end.293
  %138 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_non_literal301 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %138, i32 0, i32 0
  %139 = load i32, i32* %number_non_literal301, align 4
  %inc302 = add nsw i32 %139, 1
  store i32 %inc302, i32* %number_non_literal301, align 4
  br label %return

if.end.303:                                       ; preds = %if.end.293
  %140 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %common304 = bitcast %union.tree_node* %140 to %struct.tree_common*
  %type305 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common304, i32 0, i32 1
  %141 = load %union.tree_node*, %union.tree_node** %type305, align 8
  %common306 = bitcast %union.tree_node* %141 to %struct.tree_common*
  %type307 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common306, i32 0, i32 1
  %142 = load %union.tree_node*, %union.tree_node** %type307, align 8
  %type308 = bitcast %union.tree_node* %142 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type308, i32 0, i32 15
  %143 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %144 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp309 = icmp ne %union.tree_node* %143, %144
  br i1 %cmp309, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %if.end.303
  %145 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_wide = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %145, i32 0, i32 3
  %146 = load i32, i32* %number_wide, align 4
  %inc312 = add nsw i32 %146, 1
  store i32 %inc312, i32* %number_wide, align 4
  br label %return

if.end.313:                                       ; preds = %if.end.303
  %147 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %string = bitcast %union.tree_node* %147 to %struct.tree_string*
  %pointer = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string, i32 0, i32 3
  %148 = load i8*, i8** %pointer, align 8
  store i8* %148, i8** %format_chars, align 8
  %149 = load %union.tree_node*, %union.tree_node** %format_tree.addr, align 8
  %string314 = bitcast %union.tree_node* %149 to %struct.tree_string*
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %string314, i32 0, i32 2
  %150 = load i32, i32* %length, align 4
  store i32 %150, i32* %format_length, align 4
  %151 = load %union.tree_node*, %union.tree_node** %array_size, align 8
  %cmp315 = icmp ne %union.tree_node* %151, null
  br i1 %cmp315, label %if.then.317, label %if.end.347

if.then.317:                                      ; preds = %if.end.313
  %152 = load %union.tree_node*, %union.tree_node** %array_size, align 8
  %common318 = bitcast %union.tree_node* %152 to %struct.tree_common*
  %code319 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common318, i32 0, i32 2
  %bf.load320 = load i32, i32* %code319, align 8
  %bf.clear321 = and i32 %bf.load320, 255
  %cmp322 = icmp ne i32 %bf.clear321, 25
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.then.317
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1559, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.check_format_info_recurse, i32 0, i32 0)) #6
  unreachable

if.end.325:                                       ; preds = %if.then.317
  %153 = load %union.tree_node*, %union.tree_node** %array_size, align 8
  %call326 = call i32 @host_integerp(%union.tree_node* %153, i32 0)
  %tobool327 = icmp ne i32 %call326, 0
  br i1 %tobool327, label %if.then.328, label %if.end.346

if.then.328:                                      ; preds = %if.end.325
  %154 = load %union.tree_node*, %union.tree_node** %array_size, align 8
  %int_cst329 = bitcast %union.tree_node* %154 to %struct.tree_int_cst*
  %int_cst330 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst329, i32 0, i32 2
  %low331 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst330, i32 0, i32 0
  %155 = load i64, i64* %low331, align 8
  store i64 %155, i64* %array_size_value, align 8
  %156 = load i64, i64* %array_size_value, align 8
  %cmp332 = icmp sgt i64 %156, 0
  br i1 %cmp332, label %land.lhs.true.334, label %if.end.345

land.lhs.true.334:                                ; preds = %if.then.328
  %157 = load i64, i64* %array_size_value, align 8
  %158 = load i64, i64* %array_size_value, align 8
  %conv335 = trunc i64 %158 to i32
  %conv336 = sext i32 %conv335 to i64
  %cmp337 = icmp eq i64 %157, %conv336
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.345

land.lhs.true.339:                                ; preds = %land.lhs.true.334
  %159 = load i32, i32* %format_length, align 4
  %conv340 = sext i32 %159 to i64
  %160 = load i64, i64* %array_size_value, align 8
  %cmp341 = icmp sgt i64 %conv340, %160
  br i1 %cmp341, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %land.lhs.true.339
  %161 = load i64, i64* %array_size_value, align 8
  %conv344 = trunc i64 %161 to i32
  store i32 %conv344, i32* %format_length, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %land.lhs.true.339, %land.lhs.true.334, %if.then.328
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.end.325
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.313
  %162 = load i64, i64* %offset, align 8
  %tobool348 = icmp ne i64 %162, 0
  br i1 %tobool348, label %if.then.349, label %if.end.359

if.then.349:                                      ; preds = %if.end.347
  %163 = load i64, i64* %offset, align 8
  %164 = load i32, i32* %format_length, align 4
  %conv350 = sext i32 %164 to i64
  %cmp351 = icmp sge i64 %163, %conv350
  br i1 %cmp351, label %if.then.353, label %if.end.356

if.then.353:                                      ; preds = %if.then.349
  %165 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_non_literal354 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %165, i32 0, i32 0
  %166 = load i32, i32* %number_non_literal354, align 4
  %inc355 = add nsw i32 %166, 1
  store i32 %inc355, i32* %number_non_literal354, align 4
  br label %return

if.end.356:                                       ; preds = %if.then.349
  %167 = load i64, i64* %offset, align 8
  %168 = load i8*, i8** %format_chars, align 8
  %add.ptr = getelementptr inbounds i8, i8* %168, i64 %167
  store i8* %add.ptr, i8** %format_chars, align 8
  %169 = load i64, i64* %offset, align 8
  %170 = load i32, i32* %format_length, align 4
  %conv357 = sext i32 %170 to i64
  %sub = sub nsw i64 %conv357, %169
  %conv358 = trunc i64 %sub to i32
  store i32 %conv358, i32* %format_length, align 4
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.356, %if.end.347
  %171 = load i32, i32* %format_length, align 4
  %cmp360 = icmp slt i32 %171, 1
  br i1 %cmp360, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %if.end.359
  %172 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_unterminated = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %172, i32 0, i32 5
  %173 = load i32, i32* %number_unterminated, align 4
  %inc363 = add nsw i32 %173, 1
  store i32 %inc363, i32* %number_unterminated, align 4
  br label %return

if.end.364:                                       ; preds = %if.end.359
  %174 = load i32, i32* %format_length, align 4
  %cmp365 = icmp eq i32 %174, 1
  br i1 %cmp365, label %if.then.367, label %if.end.369

if.then.367:                                      ; preds = %if.end.364
  %175 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_empty = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %175, i32 0, i32 4
  %176 = load i32, i32* %number_empty, align 4
  %inc368 = add nsw i32 %176, 1
  store i32 %inc368, i32* %number_empty, align 4
  br label %return

if.end.369:                                       ; preds = %if.end.364
  %177 = load i32, i32* %format_length, align 4
  %dec = add nsw i32 %177, -1
  store i32 %dec, i32* %format_length, align 4
  %idxprom = sext i32 %dec to i64
  %178 = load i8*, i8** %format_chars, align 8
  %arrayidx370 = getelementptr inbounds i8, i8* %178, i64 %idxprom
  %179 = load i8, i8* %arrayidx370, align 1
  %conv371 = sext i8 %179 to i32
  %cmp372 = icmp ne i32 %conv371, 0
  br i1 %cmp372, label %if.then.374, label %if.end.377

if.then.374:                                      ; preds = %if.end.369
  %180 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_unterminated375 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %180, i32 0, i32 5
  %181 = load i32, i32* %number_unterminated375, align 4
  %inc376 = add nsw i32 %181, 1
  store i32 %inc376, i32* %number_unterminated375, align 4
  br label %return

if.end.377:                                       ; preds = %if.end.369
  br label %while.cond.378

while.cond.378:                                   ; preds = %if.end.387, %if.end.377
  %182 = load i64, i64* %arg_num.addr, align 8
  %add379 = add i64 %182, 1
  %183 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num380 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %183, i32 0, i32 2
  %184 = load i64, i64* %first_arg_num380, align 8
  %cmp381 = icmp ult i64 %add379, %184
  br i1 %cmp381, label %while.body.383, label %while.end.391

while.body.383:                                   ; preds = %while.cond.378
  %185 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp384 = icmp eq %union.tree_node* %185, null
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %while.body.383
  br label %return

if.end.387:                                       ; preds = %while.body.383
  %186 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common388 = bitcast %union.tree_node* %186 to %struct.tree_common*
  %chain389 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common388, i32 0, i32 0
  %187 = load %union.tree_node*, %union.tree_node** %chain389, align 8
  store %union.tree_node* %187, %union.tree_node** %params.addr, align 8
  %188 = load i64, i64* %arg_num.addr, align 8
  %inc390 = add i64 %188, 1
  store i64 %inc390, i64* %arg_num.addr, align 8
  br label %while.cond.378

while.end.391:                                    ; preds = %while.cond.378
  %189 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_other392 = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %189, i32 0, i32 6
  %190 = load i32, i32* %number_other392, align 4
  %inc393 = add nsw i32 %190, 1
  store i32 %inc393, i32* %number_other392, align 4
  %191 = load i32*, i32** %status.addr, align 8
  %192 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %193 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %194 = load i8*, i8** %format_chars, align 8
  %195 = load i32, i32* %format_length, align 4
  %196 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %197 = load i64, i64* %arg_num.addr, align 8
  call void @check_format_info_main(i32* %191, %struct.format_check_results* %192, %struct.function_format_info* %193, i8* %194, i32 %195, %union.tree_node* %196, i64 %197)
  br label %return

return:                                           ; preds = %while.end.391, %if.then.386, %if.then.374, %if.then.367, %if.then.362, %if.then.353, %if.then.311, %if.then.300, %if.then.259, %if.then.248, %if.else.238, %if.end.107, %if.then.96, %if.then.79, %if.then.70, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @status_warning(i32* %status, i8* %msgid, ...) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32* %status, i32** %status.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32*, i32** %status.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %status.addr, align 8
  store i32 1, i32* %1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %msgid.addr, align 8
  %3 = load i8*, i8** @input_filename, align 8
  %4 = load i32, i32* @lineno, align 4
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %2, [1 x %struct.__va_list_tag]* %ap, i8* %3, i32 %4, i32 1)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_end(i8* %arraydecay23)
  ret void
}

declare i32 @integer_zerop(%union.tree_node*) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare %union.tree_node* @decl_constant_value(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @check_format_info_main(i32* %status, %struct.format_check_results* %res, %struct.function_format_info* %info, i8* %format_chars, i32 %format_length, %union.tree_node* %params, i64 %arg_num) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %res.addr = alloca %struct.format_check_results*, align 8
  %info.addr = alloca %struct.function_format_info*, align 8
  %format_chars.addr = alloca i8*, align 8
  %format_length.addr = alloca i32, align 4
  %params.addr = alloca %union.tree_node*, align 8
  %arg_num.addr = alloca i64, align 8
  %orig_format_chars = alloca i8*, align 8
  %first_fillin_param = alloca %union.tree_node*, align 8
  %fki = alloca %struct.format_kind_info*, align 8
  %flag_specs = alloca %struct.format_flag_spec*, align 8
  %bad_flag_pairs = alloca %struct.format_flag_pair*, align 8
  %has_operand_number = alloca i32, align 4
  %i = alloca i32, align 4
  %suppressed = alloca i32, align 4
  %length_chars = alloca i8*, align 8
  %length_chars_val = alloca i32, align 4
  %length_chars_std = alloca i32, align 4
  %format_char = alloca i32, align 4
  %cur_param = alloca %union.tree_node*, align 8
  %wanted_type = alloca %union.tree_node*, align 8
  %main_arg_num = alloca i32, align 4
  %main_arg_params = alloca %union.tree_node*, align 8
  %wanted_type_std = alloca i32, align 4
  %wanted_type_name = alloca i8*, align 8
  %width_wanted_type = alloca %struct.format_wanted_type, align 8
  %precision_wanted_type = alloca %struct.format_wanted_type, align 8
  %main_wanted_type = alloca %struct.format_wanted_type, align 8
  %first_wanted_type = alloca %struct.format_wanted_type*, align 8
  %last_wanted_type = alloca %struct.format_wanted_type*, align 8
  %fli = alloca %struct.format_length_info*, align 8
  %fci = alloca %struct.format_char_info*, align 8
  %flag_chars = alloca [256 x i8], align 16
  %aflag = alloca i32, align 4
  %opnum = alloca i32, align 4
  %s = alloca %struct.format_flag_spec*, align 8
  %opnum124 = alloca i32, align 4
  %non_zero_width_char = alloca i32, align 4
  %found_width = alloca i32, align 4
  %opnum279 = alloca i32, align 4
  %s468 = alloca %struct.format_flag_spec*, align 8
  %d = alloca i32, align 4
  %s607 = alloca %struct.format_flag_spec*, align 8
  %t = alloca %struct.format_flag_spec*, align 8
  %long_name706 = alloca i8*, align 8
  %s785 = alloca %struct.format_flag_spec*, align 8
  %t786 = alloca %struct.format_flag_spec*, align 8
  %y2k_level = alloca i32, align 4
  store i32* %status, i32** %status.addr, align 8
  store %struct.format_check_results* %res, %struct.format_check_results** %res.addr, align 8
  store %struct.function_format_info* %info, %struct.function_format_info** %info.addr, align 8
  store i8* %format_chars, i8** %format_chars.addr, align 8
  store i32 %format_length, i32* %format_length.addr, align 4
  store %union.tree_node* %params, %union.tree_node** %params.addr, align 8
  store i64 %arg_num, i64* %arg_num.addr, align 8
  %0 = load i8*, i8** %format_chars.addr, align 8
  store i8* %0, i8** %orig_format_chars, align 8
  %1 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %first_fillin_param, align 8
  %2 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %format_type = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %2, i32 0, i32 0
  %3 = load i32, i32* %format_type, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.format_kind_info], [4 x %struct.format_kind_info]* @format_types, i32 0, i64 %idxprom
  store %struct.format_kind_info* %arrayidx, %struct.format_kind_info** %fki, align 8
  %4 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flag_specs1 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %4, i32 0, i32 5
  %5 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs1, align 8
  store %struct.format_flag_spec* %5, %struct.format_flag_spec** %flag_specs, align 8
  %6 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %bad_flag_pairs2 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %6, i32 0, i32 6
  %7 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs2, align 8
  store %struct.format_flag_pair* %7, %struct.format_flag_pair** %bad_flag_pairs, align 8
  store i32 -1, i32* %has_operand_number, align 4
  %8 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %8, i32 0, i32 2
  %9 = load i64, i64* %first_arg_num, align 8
  %conv = trunc i64 %9 to i32
  %10 = load %union.tree_node*, %union.tree_node** %first_fillin_param, align 8
  call void @init_dollar_format_checking(i32 %conv, %union.tree_node* %10)
  br label %while.body

while.body:                                       ; preds = %entry, %if.then.27, %if.then.32, %if.then.37, %if.then.531, %if.end.559, %if.end.966, %if.then.1053, %if.end.1145
  store i32 0, i32* %suppressed, align 4
  store i8* null, i8** %length_chars, align 8
  store i32 0, i32* %length_chars_val, align 4
  store i32 0, i32* %length_chars_std, align 4
  store i32 0, i32* %main_arg_num, align 4
  store %union.tree_node* null, %union.tree_node** %main_arg_params, align 8
  store %struct.format_wanted_type* null, %struct.format_wanted_type** %first_wanted_type, align 8
  store %struct.format_wanted_type* null, %struct.format_wanted_type** %last_wanted_type, align 8
  store %struct.format_length_info* null, %struct.format_length_info** %fli, align 8
  store %struct.format_char_info* null, %struct.format_char_info** %fci, align 8
  store i32 0, i32* %aflag, align 4
  %11 = load i8*, i8** %format_chars.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv3 = sext i8 %12 to i32
  %cmp = icmp eq i32 %conv3, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %while.body
  %13 = load i8*, i8** %format_chars.addr, align 8
  %14 = load i8*, i8** %orig_format_chars, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load i32, i32* %format_length.addr, align 4
  %conv5 = sext i32 %15 to i64
  %cmp6 = icmp ne i64 %sub.ptr.sub, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %16 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.168, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %17 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num9 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %17, i32 0, i32 2
  %18 = load i64, i64* %first_arg_num9, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %19 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp12 = icmp ne %union.tree_node* %19, null
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.18

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %has_operand_number, align 4
  %cmp15 = icmp sle i32 %20, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.14
  %21 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_other = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %21, i32 0, i32 6
  %22 = load i32, i32* %number_other, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %number_other, align 4
  %23 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_extra_args = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %23, i32 0, i32 1
  %24 = load i32, i32* %number_extra_args, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %number_extra_args, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %land.lhs.true.14, %land.lhs.true, %if.end
  %25 = load i32, i32* %has_operand_number, align 4
  %cmp19 = icmp sgt i32 %25, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %26 = load i32*, i32** %status.addr, align 8
  %27 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %28 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %28, i32 0, i32 7
  %29 = load i32, i32* %flags, align 4
  %and = and i32 %29, 128
  call void @finish_dollar_format_checking(i32* %26, %struct.format_check_results* %27, i32 %and)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  br label %return

if.end.23:                                        ; preds = %while.body
  %30 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %format_chars.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv24 = sext i8 %31 to i32
  %cmp25 = icmp ne i32 %conv24, 37
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %while.body

if.end.28:                                        ; preds = %if.end.23
  %32 = load i8*, i8** %format_chars.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv29 = sext i8 %33 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %34 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.169, i32 0, i32 0))
  br label %while.body

if.end.33:                                        ; preds = %if.end.28
  %35 = load i8*, i8** %format_chars.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv34 = sext i8 %36 to i32
  %cmp35 = icmp eq i32 %conv34, 37
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.33
  %37 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr38, i8** %format_chars.addr, align 8
  br label %while.body

if.end.39:                                        ; preds = %if.end.33
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 0
  store i8 0, i8* %arrayidx40, align 1
  %38 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags41 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %38, i32 0, i32 7
  %39 = load i32, i32* %flags41, align 4
  %and42 = and i32 %39, 16
  %tobool = icmp ne i32 %and42, 0
  br i1 %tobool, label %land.lhs.true.43, label %if.end.58

land.lhs.true.43:                                 ; preds = %if.end.39
  %40 = load i32, i32* %has_operand_number, align 4
  %cmp44 = icmp ne i32 %40, 0
  br i1 %cmp44, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %land.lhs.true.43
  %41 = load i32*, i32** %status.addr, align 8
  %42 = load %union.tree_node*, %union.tree_node** %first_fillin_param, align 8
  %43 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %call = call i32 @maybe_read_dollar_number(i32* %41, i8** %format_chars.addr, i32 0, %union.tree_node* %42, %union.tree_node** %main_arg_params, %struct.format_kind_info* %43)
  store i32 %call, i32* %opnum, align 4
  %44 = load i32, i32* %opnum, align 4
  %cmp47 = icmp eq i32 %44, -1
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.then.46
  br label %return

if.else:                                          ; preds = %if.then.46
  %45 = load i32, i32* %opnum, align 4
  %cmp50 = icmp sgt i32 %45, 0
  br i1 %cmp50, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.else
  store i32 1, i32* %has_operand_number, align 4
  %46 = load i32, i32* %opnum, align 4
  %conv53 = sext i32 %46 to i64
  %47 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num54 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %47, i32 0, i32 2
  %48 = load i64, i64* %first_arg_num54, align 8
  %add = add i64 %conv53, %48
  %sub = sub i64 %add, 1
  %conv55 = trunc i64 %sub to i32
  store i32 %conv55, i32* %main_arg_num, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.43, %if.end.39
  br label %while.cond.59

while.cond.59:                                    ; preds = %if.end.94, %if.end.58
  %49 = load i8*, i8** %format_chars.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv60 = sext i8 %50 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.59
  %51 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flag_chars63 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %51, i32 0, i32 3
  %52 = load i8*, i8** %flag_chars63, align 8
  %53 = load i8*, i8** %format_chars.addr, align 8
  %54 = load i8, i8* %53, align 1
  %conv64 = sext i8 %54 to i32
  %call65 = call i8* @strchr(i8* %52, i32 %conv64) #7
  %cmp66 = icmp ne i8* %call65, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.59
  %55 = phi i1 [ false, %while.cond.59 ], [ %cmp66, %land.rhs ]
  br i1 %55, label %while.body.68, label %while.end

while.body.68:                                    ; preds = %land.end
  %56 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs, align 8
  %57 = load i8*, i8** %format_chars.addr, align 8
  %58 = load i8, i8* %57, align 1
  %conv69 = sext i8 %58 to i32
  %call70 = call %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %56, i32 %conv69, i8* null)
  store %struct.format_flag_spec* %call70, %struct.format_flag_spec** %s, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %59 = load i8*, i8** %format_chars.addr, align 8
  %60 = load i8, i8* %59, align 1
  %conv71 = sext i8 %60 to i32
  %call72 = call i8* @strchr(i8* %arraydecay, i32 %conv71) #7
  %cmp73 = icmp ne i8* %call72, null
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %while.body.68
  %61 = load i32*, i32** %status.addr, align 8
  %62 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s, align 8
  %name = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %62, i32 0, i32 3
  %63 = load i8*, i8** %name, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.170, i32 0, i32 0), i8* %63)
  br label %if.end.85

if.else.76:                                       ; preds = %while.body.68
  %arraydecay77 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call78 = call i64 @strlen(i8* %arraydecay77) #7
  %conv79 = trunc i64 %call78 to i32
  store i32 %conv79, i32* %i, align 4
  %64 = load i8*, i8** %format_chars.addr, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %66, 1
  store i32 %inc80, i32* %i, align 4
  %idxprom81 = sext i32 %66 to i64
  %arrayidx82 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom81
  store i8 %65, i8* %arrayidx82, align 1
  %67 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %67 to i64
  %arrayidx84 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom83
  store i8 0, i8* %arrayidx84, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.76, %if.then.75
  %68 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s, align 8
  %skip_next_char = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %68, i32 0, i32 2
  %69 = load i32, i32* %skip_next_char, align 4
  %tobool86 = icmp ne i32 %69, 0
  br i1 %tobool86, label %if.then.87, label %if.end.94

if.then.87:                                       ; preds = %if.end.85
  %70 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr88, i8** %format_chars.addr, align 8
  %71 = load i8*, i8** %format_chars.addr, align 8
  %72 = load i8, i8* %71, align 1
  %conv89 = sext i8 %72 to i32
  %cmp90 = icmp eq i32 %conv89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.87
  %73 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.171, i32 0, i32 0))
  br label %return

if.end.93:                                        ; preds = %if.then.87
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.85
  %74 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr95, i8** %format_chars.addr, align 8
  br label %while.cond.59

while.end:                                        ; preds = %land.end
  %75 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %width_char = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %75, i32 0, i32 8
  %76 = load i32, i32* %width_char, align 4
  %cmp96 = icmp ne i32 %76, 0
  br i1 %cmp96, label %if.then.98, label %if.end.209

if.then.98:                                       ; preds = %while.end
  %77 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %width_type = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %77, i32 0, i32 13
  %78 = load %union.tree_node**, %union.tree_node*** %width_type, align 8
  %cmp99 = icmp ne %union.tree_node** %78, null
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.168

land.lhs.true.101:                                ; preds = %if.then.98
  %79 = load i8*, i8** %format_chars.addr, align 8
  %80 = load i8, i8* %79, align 1
  %conv102 = sext i8 %80 to i32
  %cmp103 = icmp eq i32 %conv102, 42
  br i1 %cmp103, label %if.then.105, label %if.else.168

if.then.105:                                      ; preds = %land.lhs.true.101
  %arraydecay106 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call107 = call i64 @strlen(i8* %arraydecay106) #7
  %conv108 = trunc i64 %call107 to i32
  store i32 %conv108, i32* %i, align 4
  %81 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %width_char109 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %81, i32 0, i32 8
  %82 = load i32, i32* %width_char109, align 4
  %conv110 = trunc i32 %82 to i8
  %83 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %83, 1
  store i32 %inc111, i32* %i, align 4
  %idxprom112 = sext i32 %83 to i64
  %arrayidx113 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom112
  store i8 %conv110, i8* %arrayidx113, align 1
  %84 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %84 to i64
  %arrayidx115 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom114
  store i8 0, i8* %arrayidx115, align 1
  %85 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr116, i8** %format_chars.addr, align 8
  %86 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp117 = icmp eq %union.tree_node* %86, null
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.105
  %87 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  br label %return

if.end.120:                                       ; preds = %if.then.105
  %88 = load i32, i32* %has_operand_number, align 4
  %cmp121 = icmp ne i32 %88, 0
  br i1 %cmp121, label %if.then.123, label %if.end.142

if.then.123:                                      ; preds = %if.end.120
  %89 = load i32*, i32** %status.addr, align 8
  %90 = load i32, i32* %has_operand_number, align 4
  %cmp125 = icmp eq i32 %90, 1
  %conv126 = zext i1 %cmp125 to i32
  %91 = load %union.tree_node*, %union.tree_node** %first_fillin_param, align 8
  %92 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %call127 = call i32 @maybe_read_dollar_number(i32* %89, i8** %format_chars.addr, i32 %conv126, %union.tree_node* %91, %union.tree_node** %params.addr, %struct.format_kind_info* %92)
  store i32 %call127, i32* %opnum124, align 4
  %93 = load i32, i32* %opnum124, align 4
  %cmp128 = icmp eq i32 %93, -1
  br i1 %cmp128, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %if.then.123
  br label %return

if.else.131:                                      ; preds = %if.then.123
  %94 = load i32, i32* %opnum124, align 4
  %cmp132 = icmp sgt i32 %94, 0
  br i1 %cmp132, label %if.then.134, label %if.else.139

if.then.134:                                      ; preds = %if.else.131
  store i32 1, i32* %has_operand_number, align 4
  %95 = load i32, i32* %opnum124, align 4
  %conv135 = sext i32 %95 to i64
  %96 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num136 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %96, i32 0, i32 2
  %97 = load i64, i64* %first_arg_num136, align 8
  %add137 = add i64 %conv135, %97
  %sub138 = sub i64 %add137, 1
  store i64 %sub138, i64* %arg_num.addr, align 8
  br label %if.end.140

if.else.139:                                      ; preds = %if.else.131
  store i32 0, i32* %has_operand_number, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.139, %if.then.134
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.120
  %98 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num143 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %98, i32 0, i32 2
  %99 = load i64, i64* %first_arg_num143, align 8
  %cmp144 = icmp ne i64 %99, 0
  br i1 %cmp144, label %if.then.146, label %if.end.167

if.then.146:                                      ; preds = %if.end.142
  %100 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %list = bitcast %union.tree_node* %100 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %101 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %101, %union.tree_node** %cur_param, align 8
  %102 = load i32, i32* %has_operand_number, align 4
  %cmp147 = icmp sle i32 %102, 0
  br i1 %cmp147, label %if.then.149, label %if.end.151

if.then.149:                                      ; preds = %if.then.146
  %103 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common = bitcast %union.tree_node* %103 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %104 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %104, %union.tree_node** %params.addr, align 8
  %105 = load i64, i64* %arg_num.addr, align 8
  %inc150 = add i64 %105, 1
  store i64 %inc150, i64* %arg_num.addr, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.149, %if.then.146
  %106 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %width_type152 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %106, i32 0, i32 13
  %107 = load %union.tree_node**, %union.tree_node*** %width_type152, align 8
  %108 = load %union.tree_node*, %union.tree_node** %107, align 8
  %wanted_type153 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 0
  store %union.tree_node* %108, %union.tree_node** %wanted_type153, align 8
  %wanted_type_name154 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 1
  store i8* null, i8** %wanted_type_name154, align 8
  %pointer_count = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 2
  store i32 0, i32* %pointer_count, align 4
  %char_lenient_flag = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 3
  store i32 0, i32* %char_lenient_flag, align 4
  %writing_in_flag = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 4
  store i32 0, i32* %writing_in_flag, align 4
  %reading_from_flag = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 5
  store i32 0, i32* %reading_from_flag, align 4
  %name155 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8** %name155, align 8
  %109 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %param = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 7
  store %union.tree_node* %109, %union.tree_node** %param, align 8
  %110 = load i64, i64* %arg_num.addr, align 8
  %conv156 = trunc i64 %110 to i32
  %arg_num157 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 8
  store i32 %conv156, i32* %arg_num157, align 4
  %next = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %width_wanted_type, i32 0, i32 9
  store %struct.format_wanted_type* null, %struct.format_wanted_type** %next, align 8
  %111 = load %struct.format_wanted_type*, %struct.format_wanted_type** %last_wanted_type, align 8
  %cmp158 = icmp ne %struct.format_wanted_type* %111, null
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.151
  %112 = load %struct.format_wanted_type*, %struct.format_wanted_type** %last_wanted_type, align 8
  %next161 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %112, i32 0, i32 9
  store %struct.format_wanted_type* %width_wanted_type, %struct.format_wanted_type** %next161, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.end.151
  %113 = load %struct.format_wanted_type*, %struct.format_wanted_type** %first_wanted_type, align 8
  %cmp163 = icmp eq %struct.format_wanted_type* %113, null
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  store %struct.format_wanted_type* %width_wanted_type, %struct.format_wanted_type** %first_wanted_type, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.end.162
  store %struct.format_wanted_type* %width_wanted_type, %struct.format_wanted_type** %last_wanted_type, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.142
  br label %if.end.208

if.else.168:                                      ; preds = %land.lhs.true.101, %if.then.98
  store i32 0, i32* %non_zero_width_char, align 4
  store i32 0, i32* %found_width, align 4
  br label %while.cond.169

while.cond.169:                                   ; preds = %if.end.182, %if.else.168
  %114 = load i8*, i8** %format_chars.addr, align 8
  %115 = load i8, i8* %114, align 1
  %conv170 = sext i8 %115 to i32
  %and171 = and i32 %conv170, 255
  %idxprom172 = sext i32 %and171 to i64
  %arrayidx173 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom172
  %116 = load i16, i16* %arrayidx173, align 2
  %conv174 = zext i16 %116 to i32
  %and175 = and i32 %conv174, 4
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %while.body.177, label %while.end.184

while.body.177:                                   ; preds = %while.cond.169
  store i32 1, i32* %found_width, align 4
  %117 = load i8*, i8** %format_chars.addr, align 8
  %118 = load i8, i8* %117, align 1
  %conv178 = sext i8 %118 to i32
  %cmp179 = icmp ne i32 %conv178, 48
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %while.body.177
  store i32 1, i32* %non_zero_width_char, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %while.body.177
  %119 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr183, i8** %format_chars.addr, align 8
  br label %while.cond.169

while.end.184:                                    ; preds = %while.cond.169
  %120 = load i32, i32* %found_width, align 4
  %tobool185 = icmp ne i32 %120, 0
  br i1 %tobool185, label %land.lhs.true.186, label %if.end.194

land.lhs.true.186:                                ; preds = %while.end.184
  %121 = load i32, i32* %non_zero_width_char, align 4
  %tobool187 = icmp ne i32 %121, 0
  br i1 %tobool187, label %if.end.194, label %land.lhs.true.188

land.lhs.true.188:                                ; preds = %land.lhs.true.186
  %122 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags189 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %122, i32 0, i32 7
  %123 = load i32, i32* %flags189, align 4
  %and190 = and i32 %123, 32
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %land.lhs.true.188
  %124 = load i32*, i32** %status.addr, align 8
  %125 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name193 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %125, i32 0, i32 0
  %126 = load i8*, i8** %name193, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.173, i32 0, i32 0), i8* %126)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %land.lhs.true.188, %land.lhs.true.186, %while.end.184
  %127 = load i32, i32* %found_width, align 4
  %tobool195 = icmp ne i32 %127, 0
  br i1 %tobool195, label %if.then.196, label %if.end.207

if.then.196:                                      ; preds = %if.end.194
  %arraydecay197 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call198 = call i64 @strlen(i8* %arraydecay197) #7
  %conv199 = trunc i64 %call198 to i32
  store i32 %conv199, i32* %i, align 4
  %128 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %width_char200 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %128, i32 0, i32 8
  %129 = load i32, i32* %width_char200, align 4
  %conv201 = trunc i32 %129 to i8
  %130 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %130, 1
  store i32 %inc202, i32* %i, align 4
  %idxprom203 = sext i32 %130 to i64
  %arrayidx204 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom203
  store i8 %conv201, i8* %arrayidx204, align 1
  %131 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %131 to i64
  %arrayidx206 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom205
  store i8 0, i8* %arrayidx206, align 1
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.196, %if.end.194
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.167
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %while.end
  %132 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %left_precision_char = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %132, i32 0, i32 9
  %133 = load i32, i32* %left_precision_char, align 4
  %cmp210 = icmp ne i32 %133, 0
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.249

land.lhs.true.212:                                ; preds = %if.end.209
  %134 = load i8*, i8** %format_chars.addr, align 8
  %135 = load i8, i8* %134, align 1
  %conv213 = sext i8 %135 to i32
  %cmp214 = icmp eq i32 %conv213, 35
  br i1 %cmp214, label %if.then.216, label %if.end.249

if.then.216:                                      ; preds = %land.lhs.true.212
  %136 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr217, i8** %format_chars.addr, align 8
  %arraydecay218 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call219 = call i64 @strlen(i8* %arraydecay218) #7
  %conv220 = trunc i64 %call219 to i32
  store i32 %conv220, i32* %i, align 4
  %137 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %left_precision_char221 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %137, i32 0, i32 9
  %138 = load i32, i32* %left_precision_char221, align 4
  %conv222 = trunc i32 %138 to i8
  %139 = load i32, i32* %i, align 4
  %inc223 = add nsw i32 %139, 1
  store i32 %inc223, i32* %i, align 4
  %idxprom224 = sext i32 %139 to i64
  %arrayidx225 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom224
  store i8 %conv222, i8* %arrayidx225, align 1
  %140 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %140 to i64
  %arrayidx227 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom226
  store i8 0, i8* %arrayidx227, align 1
  %141 = load i8*, i8** %format_chars.addr, align 8
  %142 = load i8, i8* %141, align 1
  %conv228 = sext i8 %142 to i32
  %and229 = and i32 %conv228, 255
  %idxprom230 = sext i32 %and229 to i64
  %arrayidx231 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom230
  %143 = load i16, i16* %arrayidx231, align 2
  %conv232 = zext i16 %143 to i32
  %and233 = and i32 %conv232, 4
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.end.237, label %if.then.235

if.then.235:                                      ; preds = %if.then.216
  %144 = load i32*, i32** %status.addr, align 8
  %145 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name236 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %145, i32 0, i32 0
  %146 = load i8*, i8** %name236, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.174, i32 0, i32 0), i8* %146)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.then.216
  br label %while.cond.238

while.cond.238:                                   ; preds = %while.body.246, %if.end.237
  %147 = load i8*, i8** %format_chars.addr, align 8
  %148 = load i8, i8* %147, align 1
  %conv239 = sext i8 %148 to i32
  %and240 = and i32 %conv239, 255
  %idxprom241 = sext i32 %and240 to i64
  %arrayidx242 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom241
  %149 = load i16, i16* %arrayidx242, align 2
  %conv243 = zext i16 %149 to i32
  %and244 = and i32 %conv243, 4
  %tobool245 = icmp ne i32 %and244, 0
  br i1 %tobool245, label %while.body.246, label %while.end.248

while.body.246:                                   ; preds = %while.cond.238
  %150 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr247 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr247, i8** %format_chars.addr, align 8
  br label %while.cond.238

while.end.248:                                    ; preds = %while.cond.238
  br label %if.end.249

if.end.249:                                       ; preds = %while.end.248, %land.lhs.true.212, %if.end.209
  %151 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %precision_char = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %151, i32 0, i32 10
  %152 = load i32, i32* %precision_char, align 4
  %cmp250 = icmp ne i32 %152, 0
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.364

land.lhs.true.252:                                ; preds = %if.end.249
  %153 = load i8*, i8** %format_chars.addr, align 8
  %154 = load i8, i8* %153, align 1
  %conv253 = sext i8 %154 to i32
  %cmp254 = icmp eq i32 %conv253, 46
  br i1 %cmp254, label %if.then.256, label %if.end.364

if.then.256:                                      ; preds = %land.lhs.true.252
  %155 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr257, i8** %format_chars.addr, align 8
  %arraydecay258 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call259 = call i64 @strlen(i8* %arraydecay258) #7
  %conv260 = trunc i64 %call259 to i32
  store i32 %conv260, i32* %i, align 4
  %156 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %precision_char261 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %156, i32 0, i32 10
  %157 = load i32, i32* %precision_char261, align 4
  %conv262 = trunc i32 %157 to i8
  %158 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %158, 1
  store i32 %inc263, i32* %i, align 4
  %idxprom264 = sext i32 %158 to i64
  %arrayidx265 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom264
  store i8 %conv262, i8* %arrayidx265, align 1
  %159 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %159 to i64
  %arrayidx267 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom266
  store i8 0, i8* %arrayidx267, align 1
  %160 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %precision_type = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %160, i32 0, i32 14
  %161 = load %union.tree_node**, %union.tree_node*** %precision_type, align 8
  %cmp268 = icmp ne %union.tree_node** %161, null
  br i1 %cmp268, label %land.lhs.true.270, label %if.else.337

land.lhs.true.270:                                ; preds = %if.then.256
  %162 = load i8*, i8** %format_chars.addr, align 8
  %163 = load i8, i8* %162, align 1
  %conv271 = sext i8 %163 to i32
  %cmp272 = icmp eq i32 %conv271, 42
  br i1 %cmp272, label %if.then.274, label %if.else.337

if.then.274:                                      ; preds = %land.lhs.true.270
  %164 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr275 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr275, i8** %format_chars.addr, align 8
  %165 = load i32, i32* %has_operand_number, align 4
  %cmp276 = icmp ne i32 %165, 0
  br i1 %cmp276, label %if.then.278, label %if.end.297

if.then.278:                                      ; preds = %if.then.274
  %166 = load i32*, i32** %status.addr, align 8
  %167 = load i32, i32* %has_operand_number, align 4
  %cmp280 = icmp eq i32 %167, 1
  %conv281 = zext i1 %cmp280 to i32
  %168 = load %union.tree_node*, %union.tree_node** %first_fillin_param, align 8
  %169 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %call282 = call i32 @maybe_read_dollar_number(i32* %166, i8** %format_chars.addr, i32 %conv281, %union.tree_node* %168, %union.tree_node** %params.addr, %struct.format_kind_info* %169)
  store i32 %call282, i32* %opnum279, align 4
  %170 = load i32, i32* %opnum279, align 4
  %cmp283 = icmp eq i32 %170, -1
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %if.then.278
  br label %return

if.else.286:                                      ; preds = %if.then.278
  %171 = load i32, i32* %opnum279, align 4
  %cmp287 = icmp sgt i32 %171, 0
  br i1 %cmp287, label %if.then.289, label %if.else.294

if.then.289:                                      ; preds = %if.else.286
  store i32 1, i32* %has_operand_number, align 4
  %172 = load i32, i32* %opnum279, align 4
  %conv290 = sext i32 %172 to i64
  %173 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num291 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %173, i32 0, i32 2
  %174 = load i64, i64* %first_arg_num291, align 8
  %add292 = add i64 %conv290, %174
  %sub293 = sub i64 %add292, 1
  store i64 %sub293, i64* %arg_num.addr, align 8
  br label %if.end.295

if.else.294:                                      ; preds = %if.else.286
  store i32 0, i32* %has_operand_number, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.294, %if.then.289
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.274
  %175 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num298 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %175, i32 0, i32 2
  %176 = load i64, i64* %first_arg_num298, align 8
  %cmp299 = icmp ne i64 %176, 0
  br i1 %cmp299, label %if.then.301, label %if.end.336

if.then.301:                                      ; preds = %if.end.297
  %177 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp302 = icmp eq %union.tree_node* %177, null
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.then.301
  %178 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  br label %return

if.end.305:                                       ; preds = %if.then.301
  %179 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %list306 = bitcast %union.tree_node* %179 to %struct.tree_list*
  %value307 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list306, i32 0, i32 2
  %180 = load %union.tree_node*, %union.tree_node** %value307, align 8
  store %union.tree_node* %180, %union.tree_node** %cur_param, align 8
  %181 = load i32, i32* %has_operand_number, align 4
  %cmp308 = icmp sle i32 %181, 0
  br i1 %cmp308, label %if.then.310, label %if.end.314

if.then.310:                                      ; preds = %if.end.305
  %182 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common311 = bitcast %union.tree_node* %182 to %struct.tree_common*
  %chain312 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common311, i32 0, i32 0
  %183 = load %union.tree_node*, %union.tree_node** %chain312, align 8
  store %union.tree_node* %183, %union.tree_node** %params.addr, align 8
  %184 = load i64, i64* %arg_num.addr, align 8
  %inc313 = add i64 %184, 1
  store i64 %inc313, i64* %arg_num.addr, align 8
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.310, %if.end.305
  %185 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %precision_type315 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %185, i32 0, i32 14
  %186 = load %union.tree_node**, %union.tree_node*** %precision_type315, align 8
  %187 = load %union.tree_node*, %union.tree_node** %186, align 8
  %wanted_type316 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 0
  store %union.tree_node* %187, %union.tree_node** %wanted_type316, align 8
  %wanted_type_name317 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 1
  store i8* null, i8** %wanted_type_name317, align 8
  %pointer_count318 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 2
  store i32 0, i32* %pointer_count318, align 4
  %char_lenient_flag319 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 3
  store i32 0, i32* %char_lenient_flag319, align 4
  %writing_in_flag320 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 4
  store i32 0, i32* %writing_in_flag320, align 4
  %reading_from_flag321 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 5
  store i32 0, i32* %reading_from_flag321, align 4
  %name322 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 6
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0), i8** %name322, align 8
  %188 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %param323 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 7
  store %union.tree_node* %188, %union.tree_node** %param323, align 8
  %189 = load i64, i64* %arg_num.addr, align 8
  %conv324 = trunc i64 %189 to i32
  %arg_num325 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 8
  store i32 %conv324, i32* %arg_num325, align 4
  %next326 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %precision_wanted_type, i32 0, i32 9
  store %struct.format_wanted_type* null, %struct.format_wanted_type** %next326, align 8
  %190 = load %struct.format_wanted_type*, %struct.format_wanted_type** %last_wanted_type, align 8
  %cmp327 = icmp ne %struct.format_wanted_type* %190, null
  br i1 %cmp327, label %if.then.329, label %if.end.331

if.then.329:                                      ; preds = %if.end.314
  %191 = load %struct.format_wanted_type*, %struct.format_wanted_type** %last_wanted_type, align 8
  %next330 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %191, i32 0, i32 9
  store %struct.format_wanted_type* %precision_wanted_type, %struct.format_wanted_type** %next330, align 8
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.329, %if.end.314
  %192 = load %struct.format_wanted_type*, %struct.format_wanted_type** %first_wanted_type, align 8
  %cmp332 = icmp eq %struct.format_wanted_type* %192, null
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.331
  store %struct.format_wanted_type* %precision_wanted_type, %struct.format_wanted_type** %first_wanted_type, align 8
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %if.end.331
  store %struct.format_wanted_type* %precision_wanted_type, %struct.format_wanted_type** %last_wanted_type, align 8
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.297
  br label %if.end.363

if.else.337:                                      ; preds = %land.lhs.true.270, %if.then.256
  %193 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags338 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %193, i32 0, i32 7
  %194 = load i32, i32* %flags338, align 4
  %and339 = and i32 %194, 64
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %if.end.351, label %land.lhs.true.341

land.lhs.true.341:                                ; preds = %if.else.337
  %195 = load i8*, i8** %format_chars.addr, align 8
  %196 = load i8, i8* %195, align 1
  %conv342 = sext i8 %196 to i32
  %and343 = and i32 %conv342, 255
  %idxprom344 = sext i32 %and343 to i64
  %arrayidx345 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom344
  %197 = load i16, i16* %arrayidx345, align 2
  %conv346 = zext i16 %197 to i32
  %and347 = and i32 %conv346, 4
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %if.end.351, label %if.then.349

if.then.349:                                      ; preds = %land.lhs.true.341
  %198 = load i32*, i32** %status.addr, align 8
  %199 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name350 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %199, i32 0, i32 0
  %200 = load i8*, i8** %name350, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.176, i32 0, i32 0), i8* %200)
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %land.lhs.true.341, %if.else.337
  br label %while.cond.352

while.cond.352:                                   ; preds = %while.body.360, %if.end.351
  %201 = load i8*, i8** %format_chars.addr, align 8
  %202 = load i8, i8* %201, align 1
  %conv353 = sext i8 %202 to i32
  %and354 = and i32 %conv353, 255
  %idxprom355 = sext i32 %and354 to i64
  %arrayidx356 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom355
  %203 = load i16, i16* %arrayidx356, align 2
  %conv357 = zext i16 %203 to i32
  %and358 = and i32 %conv357, 4
  %tobool359 = icmp ne i32 %and358, 0
  br i1 %tobool359, label %while.body.360, label %while.end.362

while.body.360:                                   ; preds = %while.cond.352
  %204 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr361 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %incdec.ptr361, i8** %format_chars.addr, align 8
  br label %while.cond.352

while.end.362:                                    ; preds = %while.cond.352
  br label %if.end.363

if.end.363:                                       ; preds = %while.end.362, %if.end.336
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %land.lhs.true.252, %if.end.249
  %205 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %length_char_specs = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %205, i32 0, i32 1
  %206 = load %struct.format_length_info*, %struct.format_length_info** %length_char_specs, align 8
  store %struct.format_length_info* %206, %struct.format_length_info** %fli, align 8
  store i8* null, i8** %length_chars, align 8
  store i32 0, i32* %length_chars_val, align 4
  store i32 0, i32* %length_chars_std, align 4
  %207 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %tobool365 = icmp ne %struct.format_length_info* %207, null
  br i1 %tobool365, label %if.then.366, label %if.end.446

if.then.366:                                      ; preds = %if.end.364
  br label %while.cond.367

while.cond.367:                                   ; preds = %while.body.379, %if.then.366
  %208 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %name368 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %208, i32 0, i32 0
  %209 = load i8*, i8** %name368, align 8
  %cmp369 = icmp ne i8* %209, null
  br i1 %cmp369, label %land.rhs.371, label %land.end.378

land.rhs.371:                                     ; preds = %while.cond.367
  %210 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %name372 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %210, i32 0, i32 0
  %211 = load i8*, i8** %name372, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %211, i64 0
  %212 = load i8, i8* %arrayidx373, align 1
  %conv374 = sext i8 %212 to i32
  %213 = load i8*, i8** %format_chars.addr, align 8
  %214 = load i8, i8* %213, align 1
  %conv375 = sext i8 %214 to i32
  %cmp376 = icmp ne i32 %conv374, %conv375
  br label %land.end.378

land.end.378:                                     ; preds = %land.rhs.371, %while.cond.367
  %215 = phi i1 [ false, %while.cond.367 ], [ %cmp376, %land.rhs.371 ]
  br i1 %215, label %while.body.379, label %while.end.381

while.body.379:                                   ; preds = %land.end.378
  %216 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %incdec.ptr380 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %216, i32 1
  store %struct.format_length_info* %incdec.ptr380, %struct.format_length_info** %fli, align 8
  br label %while.cond.367

while.end.381:                                    ; preds = %land.end.378
  %217 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %name382 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %217, i32 0, i32 0
  %218 = load i8*, i8** %name382, align 8
  %cmp383 = icmp ne i8* %218, null
  br i1 %cmp383, label %if.then.385, label %if.end.411

if.then.385:                                      ; preds = %while.end.381
  %219 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr386 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr386, i8** %format_chars.addr, align 8
  %220 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %double_name = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %220, i32 0, i32 3
  %221 = load i8*, i8** %double_name, align 8
  %cmp387 = icmp ne i8* %221, null
  br i1 %cmp387, label %land.lhs.true.389, label %if.else.399

land.lhs.true.389:                                ; preds = %if.then.385
  %222 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %name390 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %222, i32 0, i32 0
  %223 = load i8*, i8** %name390, align 8
  %arrayidx391 = getelementptr inbounds i8, i8* %223, i64 0
  %224 = load i8, i8* %arrayidx391, align 1
  %conv392 = sext i8 %224 to i32
  %225 = load i8*, i8** %format_chars.addr, align 8
  %226 = load i8, i8* %225, align 1
  %conv393 = sext i8 %226 to i32
  %cmp394 = icmp eq i32 %conv392, %conv393
  br i1 %cmp394, label %if.then.396, label %if.else.399

if.then.396:                                      ; preds = %land.lhs.true.389
  %227 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr397 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr397, i8** %format_chars.addr, align 8
  %228 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %double_name398 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %228, i32 0, i32 3
  %229 = load i8*, i8** %double_name398, align 8
  store i8* %229, i8** %length_chars, align 8
  %230 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %double_index = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %230, i32 0, i32 4
  %231 = load i32, i32* %double_index, align 4
  store i32 %231, i32* %length_chars_val, align 4
  %232 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %double_std = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %232, i32 0, i32 5
  %233 = load i32, i32* %double_std, align 4
  store i32 %233, i32* %length_chars_std, align 4
  br label %if.end.401

if.else.399:                                      ; preds = %land.lhs.true.389, %if.then.385
  %234 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %name400 = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %234, i32 0, i32 0
  %235 = load i8*, i8** %name400, align 8
  store i8* %235, i8** %length_chars, align 8
  %236 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %index = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %236, i32 0, i32 1
  %237 = load i32, i32* %index, align 4
  store i32 %237, i32* %length_chars_val, align 4
  %238 = load %struct.format_length_info*, %struct.format_length_info** %fli, align 8
  %std = getelementptr inbounds %struct.format_length_info, %struct.format_length_info* %238, i32 0, i32 2
  %239 = load i32, i32* %std, align 4
  store i32 %239, i32* %length_chars_std, align 4
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.399, %if.then.396
  %arraydecay402 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call403 = call i64 @strlen(i8* %arraydecay402) #7
  %conv404 = trunc i64 %call403 to i32
  store i32 %conv404, i32* %i, align 4
  %240 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %length_code_char = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %240, i32 0, i32 12
  %241 = load i32, i32* %length_code_char, align 4
  %conv405 = trunc i32 %241 to i8
  %242 = load i32, i32* %i, align 4
  %inc406 = add nsw i32 %242, 1
  store i32 %inc406, i32* %i, align 4
  %idxprom407 = sext i32 %242 to i64
  %arrayidx408 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom407
  store i8 %conv405, i8* %arrayidx408, align 1
  %243 = load i32, i32* %i, align 4
  %idxprom409 = sext i32 %243 to i64
  %arrayidx410 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom409
  store i8 0, i8* %arrayidx410, align 1
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.401, %while.end.381
  %244 = load i32, i32* @pedantic, align 4
  %tobool412 = icmp ne i32 %244, 0
  br i1 %tobool412, label %if.then.413, label %if.end.445

if.then.413:                                      ; preds = %if.end.411
  %245 = load i32, i32* %length_chars_std, align 4
  %cmp414 = icmp eq i32 %245, 2
  br i1 %cmp414, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.413
  %246 = load i32, i32* @warn_long_long, align 4
  %tobool416 = icmp ne i32 %246, 0
  %cond = select i1 %tobool416, i32 3, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.413
  %247 = load i32, i32* %length_chars_std, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond417 = phi i32 [ %cond, %cond.true ], [ %247, %cond.false ]
  %248 = load i32, i32* @c_language, align 4
  %cmp418 = icmp eq i32 %248, 1
  br i1 %cmp418, label %cond.true.420, label %cond.false.421

cond.true.420:                                    ; preds = %cond.end
  br label %cond.end.429

cond.false.421:                                   ; preds = %cond.end
  %249 = load i32, i32* @flag_isoc99, align 4
  %tobool422 = icmp ne i32 %249, 0
  br i1 %tobool422, label %cond.true.423, label %cond.false.424

cond.true.423:                                    ; preds = %cond.false.421
  br label %cond.end.427

cond.false.424:                                   ; preds = %cond.false.421
  %250 = load i32, i32* @flag_isoc94, align 4
  %tobool425 = icmp ne i32 %250, 0
  %cond426 = select i1 %tobool425, i32 1, i32 0
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.false.424, %cond.true.423
  %cond428 = phi i32 [ 3, %cond.true.423 ], [ %cond426, %cond.false.424 ]
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.end.427, %cond.true.420
  %cond430 = phi i32 [ 1, %cond.true.420 ], [ %cond428, %cond.end.427 ]
  %cmp431 = icmp sgt i32 %cond417, %cond430
  br i1 %cmp431, label %if.then.433, label %if.end.444

if.then.433:                                      ; preds = %cond.end.429
  %251 = load i32*, i32** %status.addr, align 8
  %252 = load i32, i32* @c_language, align 4
  %cmp434 = icmp eq i32 %252, 1
  br i1 %cmp434, label %cond.true.436, label %cond.false.437

cond.true.436:                                    ; preds = %if.then.433
  br label %cond.end.441

cond.false.437:                                   ; preds = %if.then.433
  %253 = load i32, i32* %length_chars_std, align 4
  %cmp438 = icmp eq i32 %253, 4
  %cond440 = select i1 %cmp438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0)
  br label %cond.end.441

cond.end.441:                                     ; preds = %cond.false.437, %cond.true.436
  %cond442 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), %cond.true.436 ], [ %cond440, %cond.false.437 ]
  %254 = load i8*, i8** %length_chars, align 8
  %255 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name443 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %255, i32 0, i32 0
  %256 = load i8*, i8** %name443, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %251, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.177, i32 0, i32 0), i8* %cond442, i8* %254, i8* %256)
  br label %if.end.444

if.end.444:                                       ; preds = %cond.end.441, %cond.end.429
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.end.411
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.end.364
  %257 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %modifier_chars = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %257, i32 0, i32 4
  %258 = load i8*, i8** %modifier_chars, align 8
  %cmp447 = icmp ne i8* %258, null
  br i1 %cmp447, label %if.then.449, label %if.end.484

if.then.449:                                      ; preds = %if.end.446
  br label %while.cond.450

while.cond.450:                                   ; preds = %if.end.481, %if.then.449
  %259 = load i8*, i8** %format_chars.addr, align 8
  %260 = load i8, i8* %259, align 1
  %conv451 = sext i8 %260 to i32
  %cmp452 = icmp ne i32 %conv451, 0
  br i1 %cmp452, label %land.rhs.454, label %land.end.460

land.rhs.454:                                     ; preds = %while.cond.450
  %261 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %modifier_chars455 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %261, i32 0, i32 4
  %262 = load i8*, i8** %modifier_chars455, align 8
  %263 = load i8*, i8** %format_chars.addr, align 8
  %264 = load i8, i8* %263, align 1
  %conv456 = sext i8 %264 to i32
  %call457 = call i8* @strchr(i8* %262, i32 %conv456) #7
  %cmp458 = icmp ne i8* %call457, null
  br label %land.end.460

land.end.460:                                     ; preds = %land.rhs.454, %while.cond.450
  %265 = phi i1 [ false, %while.cond.450 ], [ %cmp458, %land.rhs.454 ]
  br i1 %265, label %while.body.461, label %while.end.483

while.body.461:                                   ; preds = %land.end.460
  %arraydecay462 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %266 = load i8*, i8** %format_chars.addr, align 8
  %267 = load i8, i8* %266, align 1
  %conv463 = sext i8 %267 to i32
  %call464 = call i8* @strchr(i8* %arraydecay462, i32 %conv463) #7
  %cmp465 = icmp ne i8* %call464, null
  br i1 %cmp465, label %if.then.467, label %if.else.472

if.then.467:                                      ; preds = %while.body.461
  %268 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs, align 8
  %269 = load i8*, i8** %format_chars.addr, align 8
  %270 = load i8, i8* %269, align 1
  %conv469 = sext i8 %270 to i32
  %call470 = call %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %268, i32 %conv469, i8* null)
  store %struct.format_flag_spec* %call470, %struct.format_flag_spec** %s468, align 8
  %271 = load i32*, i32** %status.addr, align 8
  %272 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s468, align 8
  %name471 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %272, i32 0, i32 3
  %273 = load i8*, i8** %name471, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %271, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.170, i32 0, i32 0), i8* %273)
  br label %if.end.481

if.else.472:                                      ; preds = %while.body.461
  %arraydecay473 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call474 = call i64 @strlen(i8* %arraydecay473) #7
  %conv475 = trunc i64 %call474 to i32
  store i32 %conv475, i32* %i, align 4
  %274 = load i8*, i8** %format_chars.addr, align 8
  %275 = load i8, i8* %274, align 1
  %276 = load i32, i32* %i, align 4
  %inc476 = add nsw i32 %276, 1
  store i32 %inc476, i32* %i, align 4
  %idxprom477 = sext i32 %276 to i64
  %arrayidx478 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom477
  store i8 %275, i8* %arrayidx478, align 1
  %277 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %277 to i64
  %arrayidx480 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom479
  store i8 0, i8* %arrayidx480, align 1
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.472, %if.then.467
  %278 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr482 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr482, i8** %format_chars.addr, align 8
  br label %while.cond.450

while.end.483:                                    ; preds = %land.end.460
  br label %if.end.484

if.end.484:                                       ; preds = %while.end.483, %if.end.446
  %279 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags485 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %279, i32 0, i32 7
  %280 = load i32, i32* %flags485, align 4
  %and486 = and i32 %280, 2
  %tobool487 = icmp ne i32 %and486, 0
  br i1 %tobool487, label %if.then.488, label %if.end.520

if.then.488:                                      ; preds = %if.end.484
  %281 = load i8*, i8** %format_chars.addr, align 8
  %282 = load i8, i8* %281, align 1
  %conv489 = sext i8 %282 to i32
  %cmp490 = icmp eq i32 %conv489, 97
  br i1 %cmp490, label %land.lhs.true.492, label %if.end.519

land.lhs.true.492:                                ; preds = %if.then.488
  %283 = load i32, i32* @flag_isoc99, align 4
  %tobool493 = icmp ne i32 %283, 0
  br i1 %tobool493, label %if.end.519, label %if.then.494

if.then.494:                                      ; preds = %land.lhs.true.492
  %284 = load i8*, i8** %format_chars.addr, align 8
  %arrayidx495 = getelementptr inbounds i8, i8* %284, i64 1
  %285 = load i8, i8* %arrayidx495, align 1
  %conv496 = sext i8 %285 to i32
  %cmp497 = icmp eq i32 %conv496, 115
  br i1 %cmp497, label %if.then.508, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.494
  %286 = load i8*, i8** %format_chars.addr, align 8
  %arrayidx499 = getelementptr inbounds i8, i8* %286, i64 1
  %287 = load i8, i8* %arrayidx499, align 1
  %conv500 = sext i8 %287 to i32
  %cmp501 = icmp eq i32 %conv500, 83
  br i1 %cmp501, label %if.then.508, label %lor.lhs.false.503

lor.lhs.false.503:                                ; preds = %lor.lhs.false
  %288 = load i8*, i8** %format_chars.addr, align 8
  %arrayidx504 = getelementptr inbounds i8, i8* %288, i64 1
  %289 = load i8, i8* %arrayidx504, align 1
  %conv505 = sext i8 %289 to i32
  %cmp506 = icmp eq i32 %conv505, 91
  br i1 %cmp506, label %if.then.508, label %if.end.518

if.then.508:                                      ; preds = %lor.lhs.false.503, %lor.lhs.false, %if.then.494
  %arraydecay509 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call510 = call i64 @strlen(i8* %arraydecay509) #7
  %conv511 = trunc i64 %call510 to i32
  store i32 %conv511, i32* %i, align 4
  %290 = load i32, i32* %i, align 4
  %inc512 = add nsw i32 %290, 1
  store i32 %inc512, i32* %i, align 4
  %idxprom513 = sext i32 %290 to i64
  %arrayidx514 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom513
  store i8 97, i8* %arrayidx514, align 1
  %291 = load i32, i32* %i, align 4
  %idxprom515 = sext i32 %291 to i64
  %arrayidx516 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom515
  store i8 0, i8* %arrayidx516, align 1
  %292 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr517 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr517, i8** %format_chars.addr, align 8
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.508, %lor.lhs.false.503
  br label %if.end.519

if.end.519:                                       ; preds = %if.end.518, %land.lhs.true.492, %if.then.488
  br label %if.end.520

if.end.520:                                       ; preds = %if.end.519, %if.end.484
  %293 = load i8*, i8** %format_chars.addr, align 8
  %294 = load i8, i8* %293, align 1
  %conv521 = sext i8 %294 to i32
  store i32 %conv521, i32* %format_char, align 4
  %295 = load i32, i32* %format_char, align 4
  %cmp522 = icmp eq i32 %295, 0
  br i1 %cmp522, label %if.then.531, label %lor.lhs.false.524

lor.lhs.false.524:                                ; preds = %if.end.520
  %296 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags525 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %296, i32 0, i32 7
  %297 = load i32, i32* %flags525, align 4
  %and526 = and i32 %297, 4
  %tobool527 = icmp ne i32 %and526, 0
  br i1 %tobool527, label %if.end.532, label %land.lhs.true.528

land.lhs.true.528:                                ; preds = %lor.lhs.false.524
  %298 = load i32, i32* %format_char, align 4
  %cmp529 = icmp eq i32 %298, 37
  br i1 %cmp529, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %land.lhs.true.528, %if.end.520
  %299 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %299, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.181, i32 0, i32 0))
  br label %while.body

if.end.532:                                       ; preds = %land.lhs.true.528, %lor.lhs.false.524
  %300 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr533 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %incdec.ptr533, i8** %format_chars.addr, align 8
  %301 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %conversion_specs = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %301, i32 0, i32 2
  %302 = load %struct.format_char_info*, %struct.format_char_info** %conversion_specs, align 8
  store %struct.format_char_info* %302, %struct.format_char_info** %fci, align 8
  br label %while.cond.534

while.cond.534:                                   ; preds = %while.body.544, %if.end.532
  %303 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %format_chars535 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %303, i32 0, i32 0
  %304 = load i8*, i8** %format_chars535, align 8
  %cmp536 = icmp ne i8* %304, null
  br i1 %cmp536, label %land.rhs.538, label %land.end.543

land.rhs.538:                                     ; preds = %while.cond.534
  %305 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %format_chars539 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %305, i32 0, i32 0
  %306 = load i8*, i8** %format_chars539, align 8
  %307 = load i32, i32* %format_char, align 4
  %call540 = call i8* @strchr(i8* %306, i32 %307) #7
  %cmp541 = icmp eq i8* %call540, null
  br label %land.end.543

land.end.543:                                     ; preds = %land.rhs.538, %while.cond.534
  %308 = phi i1 [ false, %while.cond.534 ], [ %cmp541, %land.rhs.538 ]
  br i1 %308, label %while.body.544, label %while.end.546

while.body.544:                                   ; preds = %land.end.543
  %309 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %incdec.ptr545 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %309, i32 1
  store %struct.format_char_info* %incdec.ptr545, %struct.format_char_info** %fci, align 8
  br label %while.cond.534

while.end.546:                                    ; preds = %land.end.543
  %310 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %format_chars547 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %310, i32 0, i32 0
  %311 = load i8*, i8** %format_chars547, align 8
  %cmp548 = icmp eq i8* %311, null
  br i1 %cmp548, label %if.then.550, label %if.end.560

if.then.550:                                      ; preds = %while.end.546
  %312 = load i32, i32* %format_char, align 4
  %and551 = and i32 %312, 255
  %idxprom552 = sext i32 %and551 to i64
  %arrayidx553 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom552
  %313 = load i16, i16* %arrayidx553, align 2
  %conv554 = zext i16 %313 to i32
  %and555 = and i32 %conv554, 172
  %tobool556 = icmp ne i32 %and555, 0
  br i1 %tobool556, label %if.then.557, label %if.else.558

if.then.557:                                      ; preds = %if.then.550
  %314 = load i32*, i32** %status.addr, align 8
  %315 = load i32, i32* %format_char, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %314, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.182, i32 0, i32 0), i32 %315)
  br label %if.end.559

if.else.558:                                      ; preds = %if.then.550
  %316 = load i32*, i32** %status.addr, align 8
  %317 = load i32, i32* %format_char, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %316, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.183, i32 0, i32 0), i32 %317)
  br label %if.end.559

if.end.559:                                       ; preds = %if.else.558, %if.then.557
  br label %while.body

if.end.560:                                       ; preds = %while.end.546
  %318 = load i32, i32* @pedantic, align 4
  %tobool561 = icmp ne i32 %318, 0
  br i1 %tobool561, label %if.then.562, label %if.end.601

if.then.562:                                      ; preds = %if.end.560
  %319 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %std563 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %319, i32 0, i32 2
  %320 = load i32, i32* %std563, align 4
  %cmp564 = icmp eq i32 %320, 2
  br i1 %cmp564, label %cond.true.566, label %cond.false.569

cond.true.566:                                    ; preds = %if.then.562
  %321 = load i32, i32* @warn_long_long, align 4
  %tobool567 = icmp ne i32 %321, 0
  %cond568 = select i1 %tobool567, i32 3, i32 0
  br label %cond.end.571

cond.false.569:                                   ; preds = %if.then.562
  %322 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %std570 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %322, i32 0, i32 2
  %323 = load i32, i32* %std570, align 4
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.false.569, %cond.true.566
  %cond572 = phi i32 [ %cond568, %cond.true.566 ], [ %323, %cond.false.569 ]
  %324 = load i32, i32* @c_language, align 4
  %cmp573 = icmp eq i32 %324, 1
  br i1 %cmp573, label %cond.true.575, label %cond.false.576

cond.true.575:                                    ; preds = %cond.end.571
  br label %cond.end.584

cond.false.576:                                   ; preds = %cond.end.571
  %325 = load i32, i32* @flag_isoc99, align 4
  %tobool577 = icmp ne i32 %325, 0
  br i1 %tobool577, label %cond.true.578, label %cond.false.579

cond.true.578:                                    ; preds = %cond.false.576
  br label %cond.end.582

cond.false.579:                                   ; preds = %cond.false.576
  %326 = load i32, i32* @flag_isoc94, align 4
  %tobool580 = icmp ne i32 %326, 0
  %cond581 = select i1 %tobool580, i32 1, i32 0
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.579, %cond.true.578
  %cond583 = phi i32 [ 3, %cond.true.578 ], [ %cond581, %cond.false.579 ]
  br label %cond.end.584

cond.end.584:                                     ; preds = %cond.end.582, %cond.true.575
  %cond585 = phi i32 [ 1, %cond.true.575 ], [ %cond583, %cond.end.582 ]
  %cmp586 = icmp sgt i32 %cond572, %cond585
  br i1 %cmp586, label %if.then.588, label %if.end.600

if.then.588:                                      ; preds = %cond.end.584
  %327 = load i32*, i32** %status.addr, align 8
  %328 = load i32, i32* @c_language, align 4
  %cmp589 = icmp eq i32 %328, 1
  br i1 %cmp589, label %cond.true.591, label %cond.false.592

cond.true.591:                                    ; preds = %if.then.588
  br label %cond.end.597

cond.false.592:                                   ; preds = %if.then.588
  %329 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %std593 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %329, i32 0, i32 2
  %330 = load i32, i32* %std593, align 4
  %cmp594 = icmp eq i32 %330, 4
  %cond596 = select i1 %cmp594, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0)
  br label %cond.end.597

cond.end.597:                                     ; preds = %cond.false.592, %cond.true.591
  %cond598 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), %cond.true.591 ], [ %cond596, %cond.false.592 ]
  %331 = load i32, i32* %format_char, align 4
  %332 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name599 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %332, i32 0, i32 0
  %333 = load i8*, i8** %name599, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %327, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.184, i32 0, i32 0), i8* %cond598, i32 %331, i8* %333)
  br label %if.end.600

if.end.600:                                       ; preds = %cond.end.597, %cond.end.584
  br label %if.end.601

if.end.601:                                       ; preds = %if.end.600, %if.end.560
  store i32 0, i32* %d, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.601
  %334 = load i32, i32* %i, align 4
  %idxprom602 = sext i32 %334 to i64
  %arrayidx603 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom602
  %335 = load i8, i8* %arrayidx603, align 1
  %conv604 = sext i8 %335 to i32
  %cmp605 = icmp ne i32 %conv604, 0
  br i1 %cmp605, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %336 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs, align 8
  %337 = load i32, i32* %i, align 4
  %idxprom608 = sext i32 %337 to i64
  %arrayidx609 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom608
  %338 = load i8, i8* %arrayidx609, align 1
  %conv610 = sext i8 %338 to i32
  %call611 = call %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %336, i32 %conv610, i8* null)
  store %struct.format_flag_spec* %call611, %struct.format_flag_spec** %s607, align 8
  %339 = load i32, i32* %i, align 4
  %idxprom612 = sext i32 %339 to i64
  %arrayidx613 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom612
  %340 = load i8, i8* %arrayidx613, align 1
  %341 = load i32, i32* %i, align 4
  %342 = load i32, i32* %d, align 4
  %sub614 = sub nsw i32 %341, %342
  %idxprom615 = sext i32 %sub614 to i64
  %arrayidx616 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom615
  store i8 %340, i8* %arrayidx616, align 1
  %343 = load i32, i32* %i, align 4
  %idxprom617 = sext i32 %343 to i64
  %arrayidx618 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom617
  %344 = load i8, i8* %arrayidx618, align 1
  %conv619 = sext i8 %344 to i32
  %345 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %length_code_char620 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %345, i32 0, i32 12
  %346 = load i32, i32* %length_code_char620, align 4
  %cmp621 = icmp eq i32 %conv619, %346
  br i1 %cmp621, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %for.body
  br label %for.inc

if.end.624:                                       ; preds = %for.body
  %347 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flag_chars625 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %347, i32 0, i32 4
  %348 = load i8*, i8** %flag_chars625, align 8
  %349 = load i32, i32* %i, align 4
  %idxprom626 = sext i32 %349 to i64
  %arrayidx627 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom626
  %350 = load i8, i8* %arrayidx627, align 1
  %conv628 = sext i8 %350 to i32
  %call629 = call i8* @strchr(i8* %348, i32 %conv628) #7
  %cmp630 = icmp eq i8* %call629, null
  br i1 %cmp630, label %if.then.632, label %if.end.636

if.then.632:                                      ; preds = %if.end.624
  %351 = load i32*, i32** %status.addr, align 8
  %352 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %name633 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %352, i32 0, i32 3
  %353 = load i8*, i8** %name633, align 8
  %354 = load i32, i32* %format_char, align 4
  %355 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name634 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %355, i32 0, i32 0
  %356 = load i8*, i8** %name634, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %351, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.185, i32 0, i32 0), i8* %353, i32 %354, i8* %356)
  %357 = load i32, i32* %d, align 4
  %inc635 = add nsw i32 %357, 1
  store i32 %inc635, i32* %d, align 4
  br label %for.inc

if.end.636:                                       ; preds = %if.end.624
  %358 = load i32, i32* @pedantic, align 4
  %tobool637 = icmp ne i32 %358, 0
  br i1 %tobool637, label %if.then.638, label %if.end.755

if.then.638:                                      ; preds = %if.end.636
  %359 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %std639 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %359, i32 0, i32 5
  %360 = load i32, i32* %std639, align 4
  %cmp640 = icmp eq i32 %360, 2
  br i1 %cmp640, label %cond.true.642, label %cond.false.645

cond.true.642:                                    ; preds = %if.then.638
  %361 = load i32, i32* @warn_long_long, align 4
  %tobool643 = icmp ne i32 %361, 0
  %cond644 = select i1 %tobool643, i32 3, i32 0
  br label %cond.end.647

cond.false.645:                                   ; preds = %if.then.638
  %362 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %std646 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %362, i32 0, i32 5
  %363 = load i32, i32* %std646, align 4
  br label %cond.end.647

cond.end.647:                                     ; preds = %cond.false.645, %cond.true.642
  %cond648 = phi i32 [ %cond644, %cond.true.642 ], [ %363, %cond.false.645 ]
  %364 = load i32, i32* @c_language, align 4
  %cmp649 = icmp eq i32 %364, 1
  br i1 %cmp649, label %cond.true.651, label %cond.false.652

cond.true.651:                                    ; preds = %cond.end.647
  br label %cond.end.660

cond.false.652:                                   ; preds = %cond.end.647
  %365 = load i32, i32* @flag_isoc99, align 4
  %tobool653 = icmp ne i32 %365, 0
  br i1 %tobool653, label %cond.true.654, label %cond.false.655

cond.true.654:                                    ; preds = %cond.false.652
  br label %cond.end.658

cond.false.655:                                   ; preds = %cond.false.652
  %366 = load i32, i32* @flag_isoc94, align 4
  %tobool656 = icmp ne i32 %366, 0
  %cond657 = select i1 %tobool656, i32 1, i32 0
  br label %cond.end.658

cond.end.658:                                     ; preds = %cond.false.655, %cond.true.654
  %cond659 = phi i32 [ 3, %cond.true.654 ], [ %cond657, %cond.false.655 ]
  br label %cond.end.660

cond.end.660:                                     ; preds = %cond.end.658, %cond.true.651
  %cond661 = phi i32 [ 1, %cond.true.651 ], [ %cond659, %cond.end.658 ]
  %cmp662 = icmp sgt i32 %cond648, %cond661
  br i1 %cmp662, label %if.then.664, label %if.end.675

if.then.664:                                      ; preds = %cond.end.660
  %367 = load i32*, i32** %status.addr, align 8
  %368 = load i32, i32* @c_language, align 4
  %cmp665 = icmp eq i32 %368, 1
  br i1 %cmp665, label %cond.true.667, label %cond.false.668

cond.true.667:                                    ; preds = %if.then.664
  br label %cond.end.673

cond.false.668:                                   ; preds = %if.then.664
  %369 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %std669 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %369, i32 0, i32 5
  %370 = load i32, i32* %std669, align 4
  %cmp670 = icmp eq i32 %370, 4
  %cond672 = select i1 %cmp670, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0)
  br label %cond.end.673

cond.end.673:                                     ; preds = %cond.false.668, %cond.true.667
  %cond674 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), %cond.true.667 ], [ %cond672, %cond.false.668 ]
  %371 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %long_name = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %371, i32 0, i32 4
  %372 = load i8*, i8** %long_name, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %367, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.186, i32 0, i32 0), i8* %cond674, i8* %372)
  br label %if.end.675

if.end.675:                                       ; preds = %cond.end.673, %cond.end.660
  %373 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs, align 8
  %374 = load i32, i32* %i, align 4
  %idxprom676 = sext i32 %374 to i64
  %arrayidx677 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom676
  %375 = load i8, i8* %arrayidx677, align 1
  %conv678 = sext i8 %375 to i32
  %376 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags2 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %376, i32 0, i32 5
  %377 = load i8*, i8** %flags2, align 8
  %call679 = call %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %373, i32 %conv678, i8* %377)
  store %struct.format_flag_spec* %call679, %struct.format_flag_spec** %t, align 8
  %378 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %cmp680 = icmp ne %struct.format_flag_spec* %378, null
  br i1 %cmp680, label %land.lhs.true.682, label %if.end.754

land.lhs.true.682:                                ; preds = %if.end.675
  %379 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %std683 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %379, i32 0, i32 5
  %380 = load i32, i32* %std683, align 4
  %cmp684 = icmp eq i32 %380, 2
  br i1 %cmp684, label %cond.true.686, label %cond.false.689

cond.true.686:                                    ; preds = %land.lhs.true.682
  %381 = load i32, i32* @warn_long_long, align 4
  %tobool687 = icmp ne i32 %381, 0
  %cond688 = select i1 %tobool687, i32 3, i32 0
  br label %cond.end.691

cond.false.689:                                   ; preds = %land.lhs.true.682
  %382 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %std690 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %382, i32 0, i32 5
  %383 = load i32, i32* %std690, align 4
  br label %cond.end.691

cond.end.691:                                     ; preds = %cond.false.689, %cond.true.686
  %cond692 = phi i32 [ %cond688, %cond.true.686 ], [ %383, %cond.false.689 ]
  %384 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %std693 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %384, i32 0, i32 5
  %385 = load i32, i32* %std693, align 4
  %cmp694 = icmp eq i32 %385, 2
  br i1 %cmp694, label %cond.true.696, label %cond.false.699

cond.true.696:                                    ; preds = %cond.end.691
  %386 = load i32, i32* @warn_long_long, align 4
  %tobool697 = icmp ne i32 %386, 0
  %cond698 = select i1 %tobool697, i32 3, i32 0
  br label %cond.end.701

cond.false.699:                                   ; preds = %cond.end.691
  %387 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %std700 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %387, i32 0, i32 5
  %388 = load i32, i32* %std700, align 4
  br label %cond.end.701

cond.end.701:                                     ; preds = %cond.false.699, %cond.true.696
  %cond702 = phi i32 [ %cond698, %cond.true.696 ], [ %388, %cond.false.699 ]
  %cmp703 = icmp sgt i32 %cond692, %cond702
  br i1 %cmp703, label %if.then.705, label %if.end.754

if.then.705:                                      ; preds = %cond.end.701
  %389 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %long_name707 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %389, i32 0, i32 4
  %390 = load i8*, i8** %long_name707, align 8
  %cmp708 = icmp ne i8* %390, null
  br i1 %cmp708, label %cond.true.710, label %cond.false.712

cond.true.710:                                    ; preds = %if.then.705
  %391 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %long_name711 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %391, i32 0, i32 4
  %392 = load i8*, i8** %long_name711, align 8
  br label %cond.end.714

cond.false.712:                                   ; preds = %if.then.705
  %393 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s607, align 8
  %long_name713 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %393, i32 0, i32 4
  %394 = load i8*, i8** %long_name713, align 8
  br label %cond.end.714

cond.end.714:                                     ; preds = %cond.false.712, %cond.true.710
  %cond715 = phi i8* [ %392, %cond.true.710 ], [ %394, %cond.false.712 ]
  store i8* %cond715, i8** %long_name706, align 8
  %395 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %std716 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %395, i32 0, i32 5
  %396 = load i32, i32* %std716, align 4
  %cmp717 = icmp eq i32 %396, 2
  br i1 %cmp717, label %cond.true.719, label %cond.false.722

cond.true.719:                                    ; preds = %cond.end.714
  %397 = load i32, i32* @warn_long_long, align 4
  %tobool720 = icmp ne i32 %397, 0
  %cond721 = select i1 %tobool720, i32 3, i32 0
  br label %cond.end.724

cond.false.722:                                   ; preds = %cond.end.714
  %398 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %std723 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %398, i32 0, i32 5
  %399 = load i32, i32* %std723, align 4
  br label %cond.end.724

cond.end.724:                                     ; preds = %cond.false.722, %cond.true.719
  %cond725 = phi i32 [ %cond721, %cond.true.719 ], [ %399, %cond.false.722 ]
  %400 = load i32, i32* @c_language, align 4
  %cmp726 = icmp eq i32 %400, 1
  br i1 %cmp726, label %cond.true.728, label %cond.false.729

cond.true.728:                                    ; preds = %cond.end.724
  br label %cond.end.737

cond.false.729:                                   ; preds = %cond.end.724
  %401 = load i32, i32* @flag_isoc99, align 4
  %tobool730 = icmp ne i32 %401, 0
  br i1 %tobool730, label %cond.true.731, label %cond.false.732

cond.true.731:                                    ; preds = %cond.false.729
  br label %cond.end.735

cond.false.732:                                   ; preds = %cond.false.729
  %402 = load i32, i32* @flag_isoc94, align 4
  %tobool733 = icmp ne i32 %402, 0
  %cond734 = select i1 %tobool733, i32 1, i32 0
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.false.732, %cond.true.731
  %cond736 = phi i32 [ 3, %cond.true.731 ], [ %cond734, %cond.false.732 ]
  br label %cond.end.737

cond.end.737:                                     ; preds = %cond.end.735, %cond.true.728
  %cond738 = phi i32 [ 1, %cond.true.728 ], [ %cond736, %cond.end.735 ]
  %cmp739 = icmp sgt i32 %cond725, %cond738
  br i1 %cmp739, label %if.then.741, label %if.end.753

if.then.741:                                      ; preds = %cond.end.737
  %403 = load i32*, i32** %status.addr, align 8
  %404 = load i32, i32* @c_language, align 4
  %cmp742 = icmp eq i32 %404, 1
  br i1 %cmp742, label %cond.true.744, label %cond.false.745

cond.true.744:                                    ; preds = %if.then.741
  br label %cond.end.750

cond.false.745:                                   ; preds = %if.then.741
  %405 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t, align 8
  %std746 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %405, i32 0, i32 5
  %406 = load i32, i32* %std746, align 4
  %cmp747 = icmp eq i32 %406, 4
  %cond749 = select i1 %cmp747, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0)
  br label %cond.end.750

cond.end.750:                                     ; preds = %cond.false.745, %cond.true.744
  %cond751 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), %cond.true.744 ], [ %cond749, %cond.false.745 ]
  %407 = load i8*, i8** %long_name706, align 8
  %408 = load i32, i32* %format_char, align 4
  %409 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name752 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %409, i32 0, i32 0
  %410 = load i8*, i8** %name752, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %403, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.187, i32 0, i32 0), i8* %cond751, i8* %407, i32 %408, i8* %410)
  br label %if.end.753

if.end.753:                                       ; preds = %cond.end.750, %cond.end.737
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.753, %cond.end.701, %if.end.675
  br label %if.end.755

if.end.755:                                       ; preds = %if.end.754, %if.end.636
  br label %for.inc

for.inc:                                          ; preds = %if.end.755, %if.then.632, %if.then.623
  %411 = load i32, i32* %i, align 4
  %inc756 = add nsw i32 %411, 1
  store i32 %inc756, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %412 = load i32, i32* %i, align 4
  %413 = load i32, i32* %d, align 4
  %sub757 = sub nsw i32 %412, %413
  %idxprom758 = sext i32 %sub757 to i64
  %arrayidx759 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i64 %idxprom758
  store i8 0, i8* %arrayidx759, align 1
  %414 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags760 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %414, i32 0, i32 7
  %415 = load i32, i32* %flags760, align 4
  %and761 = and i32 %415, 2
  %tobool762 = icmp ne i32 %and761, 0
  br i1 %tobool762, label %land.lhs.true.763, label %if.end.769

land.lhs.true.763:                                ; preds = %for.end
  %arraydecay764 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call765 = call i8* @strchr(i8* %arraydecay764, i32 97) #7
  %cmp766 = icmp ne i8* %call765, null
  br i1 %cmp766, label %if.then.768, label %if.end.769

if.then.768:                                      ; preds = %land.lhs.true.763
  store i32 1, i32* %aflag, align 4
  br label %if.end.769

if.end.769:                                       ; preds = %if.then.768, %land.lhs.true.763, %for.end
  %416 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %suppression_char = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %416, i32 0, i32 11
  %417 = load i32, i32* %suppression_char, align 4
  %tobool770 = icmp ne i32 %417, 0
  br i1 %tobool770, label %land.lhs.true.771, label %if.end.778

land.lhs.true.771:                                ; preds = %if.end.769
  %arraydecay772 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %418 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %suppression_char773 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %418, i32 0, i32 11
  %419 = load i32, i32* %suppression_char773, align 4
  %call774 = call i8* @strchr(i8* %arraydecay772, i32 %419) #7
  %cmp775 = icmp ne i8* %call774, null
  br i1 %cmp775, label %if.then.777, label %if.end.778

if.then.777:                                      ; preds = %land.lhs.true.771
  store i32 1, i32* %suppressed, align 4
  br label %if.end.778

if.end.778:                                       ; preds = %if.then.777, %land.lhs.true.771, %if.end.769
  store i32 0, i32* %i, align 4
  br label %for.cond.779

for.cond.779:                                     ; preds = %for.inc.860, %if.end.778
  %420 = load i32, i32* %i, align 4
  %idxprom780 = sext i32 %420 to i64
  %421 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx781 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %421, i64 %idxprom780
  %flag_char1 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx781, i32 0, i32 0
  %422 = load i32, i32* %flag_char1, align 4
  %cmp782 = icmp ne i32 %422, 0
  br i1 %cmp782, label %for.body.784, label %for.end.862

for.body.784:                                     ; preds = %for.cond.779
  %arraydecay787 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %423 = load i32, i32* %i, align 4
  %idxprom788 = sext i32 %423 to i64
  %424 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx789 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %424, i64 %idxprom788
  %flag_char1790 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx789, i32 0, i32 0
  %425 = load i32, i32* %flag_char1790, align 4
  %call791 = call i8* @strchr(i8* %arraydecay787, i32 %425) #7
  %cmp792 = icmp eq i8* %call791, null
  br i1 %cmp792, label %if.then.794, label %if.end.795

if.then.794:                                      ; preds = %for.body.784
  br label %for.inc.860

if.end.795:                                       ; preds = %for.body.784
  %arraydecay796 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %426 = load i32, i32* %i, align 4
  %idxprom797 = sext i32 %426 to i64
  %427 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx798 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %427, i64 %idxprom797
  %flag_char2 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx798, i32 0, i32 1
  %428 = load i32, i32* %flag_char2, align 4
  %call799 = call i8* @strchr(i8* %arraydecay796, i32 %428) #7
  %cmp800 = icmp eq i8* %call799, null
  br i1 %cmp800, label %if.then.802, label %if.end.803

if.then.802:                                      ; preds = %if.end.795
  br label %for.inc.860

if.end.803:                                       ; preds = %if.end.795
  %429 = load i32, i32* %i, align 4
  %idxprom804 = sext i32 %429 to i64
  %430 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx805 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %430, i64 %idxprom804
  %predicate = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx805, i32 0, i32 3
  %431 = load i32, i32* %predicate, align 4
  %cmp806 = icmp ne i32 %431, 0
  br i1 %cmp806, label %land.lhs.true.808, label %if.end.817

land.lhs.true.808:                                ; preds = %if.end.803
  %432 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags2809 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %432, i32 0, i32 5
  %433 = load i8*, i8** %flags2809, align 8
  %434 = load i32, i32* %i, align 4
  %idxprom810 = sext i32 %434 to i64
  %435 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx811 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %435, i64 %idxprom810
  %predicate812 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx811, i32 0, i32 3
  %436 = load i32, i32* %predicate812, align 4
  %call813 = call i8* @strchr(i8* %433, i32 %436) #7
  %cmp814 = icmp eq i8* %call813, null
  br i1 %cmp814, label %if.then.816, label %if.end.817

if.then.816:                                      ; preds = %land.lhs.true.808
  br label %for.inc.860

if.end.817:                                       ; preds = %land.lhs.true.808, %if.end.803
  %437 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs, align 8
  %438 = load i32, i32* %i, align 4
  %idxprom818 = sext i32 %438 to i64
  %439 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx819 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %439, i64 %idxprom818
  %flag_char1820 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx819, i32 0, i32 0
  %440 = load i32, i32* %flag_char1820, align 4
  %call821 = call %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %437, i32 %440, i8* null)
  store %struct.format_flag_spec* %call821, %struct.format_flag_spec** %s785, align 8
  %441 = load %struct.format_flag_spec*, %struct.format_flag_spec** %flag_specs, align 8
  %442 = load i32, i32* %i, align 4
  %idxprom822 = sext i32 %442 to i64
  %443 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx823 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %443, i64 %idxprom822
  %flag_char2824 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx823, i32 0, i32 1
  %444 = load i32, i32* %flag_char2824, align 4
  %call825 = call %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %441, i32 %444, i8* null)
  store %struct.format_flag_spec* %call825, %struct.format_flag_spec** %t786, align 8
  %445 = load i32, i32* %i, align 4
  %idxprom826 = sext i32 %445 to i64
  %446 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx827 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %446, i64 %idxprom826
  %ignored = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx827, i32 0, i32 2
  %447 = load i32, i32* %ignored, align 4
  %tobool828 = icmp ne i32 %447, 0
  br i1 %tobool828, label %if.then.829, label %if.else.844

if.then.829:                                      ; preds = %if.end.817
  %448 = load i32, i32* %i, align 4
  %idxprom830 = sext i32 %448 to i64
  %449 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx831 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %449, i64 %idxprom830
  %predicate832 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx831, i32 0, i32 3
  %450 = load i32, i32* %predicate832, align 4
  %cmp833 = icmp ne i32 %450, 0
  br i1 %cmp833, label %if.then.835, label %if.else.839

if.then.835:                                      ; preds = %if.then.829
  %451 = load i32*, i32** %status.addr, align 8
  %452 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s785, align 8
  %name836 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %452, i32 0, i32 3
  %453 = load i8*, i8** %name836, align 8
  %454 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t786, align 8
  %name837 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %454, i32 0, i32 3
  %455 = load i8*, i8** %name837, align 8
  %456 = load i32, i32* %format_char, align 4
  %457 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name838 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %457, i32 0, i32 0
  %458 = load i8*, i8** %name838, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %451, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.188, i32 0, i32 0), i8* %453, i8* %455, i32 %456, i8* %458)
  br label %if.end.843

if.else.839:                                      ; preds = %if.then.829
  %459 = load i32*, i32** %status.addr, align 8
  %460 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s785, align 8
  %name840 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %460, i32 0, i32 3
  %461 = load i8*, i8** %name840, align 8
  %462 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t786, align 8
  %name841 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %462, i32 0, i32 3
  %463 = load i8*, i8** %name841, align 8
  %464 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name842 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %464, i32 0, i32 0
  %465 = load i8*, i8** %name842, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %459, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.189, i32 0, i32 0), i8* %461, i8* %463, i8* %465)
  br label %if.end.843

if.end.843:                                       ; preds = %if.else.839, %if.then.835
  br label %if.end.859

if.else.844:                                      ; preds = %if.end.817
  %466 = load i32, i32* %i, align 4
  %idxprom845 = sext i32 %466 to i64
  %467 = load %struct.format_flag_pair*, %struct.format_flag_pair** %bad_flag_pairs, align 8
  %arrayidx846 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %467, i64 %idxprom845
  %predicate847 = getelementptr inbounds %struct.format_flag_pair, %struct.format_flag_pair* %arrayidx846, i32 0, i32 3
  %468 = load i32, i32* %predicate847, align 4
  %cmp848 = icmp ne i32 %468, 0
  br i1 %cmp848, label %if.then.850, label %if.else.854

if.then.850:                                      ; preds = %if.else.844
  %469 = load i32*, i32** %status.addr, align 8
  %470 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s785, align 8
  %name851 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %470, i32 0, i32 3
  %471 = load i8*, i8** %name851, align 8
  %472 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t786, align 8
  %name852 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %472, i32 0, i32 3
  %473 = load i8*, i8** %name852, align 8
  %474 = load i32, i32* %format_char, align 4
  %475 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name853 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %475, i32 0, i32 0
  %476 = load i8*, i8** %name853, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %469, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.190, i32 0, i32 0), i8* %471, i8* %473, i32 %474, i8* %476)
  br label %if.end.858

if.else.854:                                      ; preds = %if.else.844
  %477 = load i32*, i32** %status.addr, align 8
  %478 = load %struct.format_flag_spec*, %struct.format_flag_spec** %s785, align 8
  %name855 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %478, i32 0, i32 3
  %479 = load i8*, i8** %name855, align 8
  %480 = load %struct.format_flag_spec*, %struct.format_flag_spec** %t786, align 8
  %name856 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %480, i32 0, i32 3
  %481 = load i8*, i8** %name856, align 8
  %482 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name857 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %482, i32 0, i32 0
  %483 = load i8*, i8** %name857, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %477, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.191, i32 0, i32 0), i8* %479, i8* %481, i8* %483)
  br label %if.end.858

if.end.858:                                       ; preds = %if.else.854, %if.then.850
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %if.end.843
  br label %for.inc.860

for.inc.860:                                      ; preds = %if.end.859, %if.then.816, %if.then.802, %if.then.794
  %484 = load i32, i32* %i, align 4
  %inc861 = add nsw i32 %484, 1
  store i32 %inc861, i32* %i, align 4
  br label %for.cond.779

for.end.862:                                      ; preds = %for.cond.779
  %485 = load i32, i32* @warn_format_y2k, align 4
  %tobool863 = icmp ne i32 %485, 0
  br i1 %tobool863, label %if.then.864, label %if.end.901

if.then.864:                                      ; preds = %for.end.862
  store i32 0, i32* %y2k_level, align 4
  %486 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags2865 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %486, i32 0, i32 5
  %487 = load i8*, i8** %flags2865, align 8
  %call866 = call i8* @strchr(i8* %487, i32 52) #7
  %cmp867 = icmp ne i8* %call866, null
  br i1 %cmp867, label %if.then.869, label %if.else.877

if.then.869:                                      ; preds = %if.then.864
  %arraydecay870 = getelementptr inbounds [256 x i8], [256 x i8]* %flag_chars, i32 0, i32 0
  %call871 = call i8* @strchr(i8* %arraydecay870, i32 69) #7
  %cmp872 = icmp ne i8* %call871, null
  br i1 %cmp872, label %if.then.874, label %if.else.875

if.then.874:                                      ; preds = %if.then.869
  store i32 3, i32* %y2k_level, align 4
  br label %if.end.876

if.else.875:                                      ; preds = %if.then.869
  store i32 2, i32* %y2k_level, align 4
  br label %if.end.876

if.end.876:                                       ; preds = %if.else.875, %if.then.874
  br label %if.end.891

if.else.877:                                      ; preds = %if.then.864
  %488 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags2878 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %488, i32 0, i32 5
  %489 = load i8*, i8** %flags2878, align 8
  %call879 = call i8* @strchr(i8* %489, i32 51) #7
  %cmp880 = icmp ne i8* %call879, null
  br i1 %cmp880, label %if.then.882, label %if.else.883

if.then.882:                                      ; preds = %if.else.877
  store i32 3, i32* %y2k_level, align 4
  br label %if.end.890

if.else.883:                                      ; preds = %if.else.877
  %490 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags2884 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %490, i32 0, i32 5
  %491 = load i8*, i8** %flags2884, align 8
  %call885 = call i8* @strchr(i8* %491, i32 50) #7
  %cmp886 = icmp ne i8* %call885, null
  br i1 %cmp886, label %if.then.888, label %if.end.889

if.then.888:                                      ; preds = %if.else.883
  store i32 2, i32* %y2k_level, align 4
  br label %if.end.889

if.end.889:                                       ; preds = %if.then.888, %if.else.883
  br label %if.end.890

if.end.890:                                       ; preds = %if.end.889, %if.then.882
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %if.end.876
  %492 = load i32, i32* %y2k_level, align 4
  %cmp892 = icmp eq i32 %492, 3
  br i1 %cmp892, label %if.then.894, label %if.else.895

if.then.894:                                      ; preds = %if.end.891
  %493 = load i32*, i32** %status.addr, align 8
  %494 = load i32, i32* %format_char, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %493, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.192, i32 0, i32 0), i32 %494)
  br label %if.end.900

if.else.895:                                      ; preds = %if.end.891
  %495 = load i32, i32* %y2k_level, align 4
  %cmp896 = icmp eq i32 %495, 2
  br i1 %cmp896, label %if.then.898, label %if.end.899

if.then.898:                                      ; preds = %if.else.895
  %496 = load i32*, i32** %status.addr, align 8
  %497 = load i32, i32* %format_char, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %496, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.193, i32 0, i32 0), i32 %497)
  br label %if.end.899

if.end.899:                                       ; preds = %if.then.898, %if.else.895
  br label %if.end.900

if.end.900:                                       ; preds = %if.end.899, %if.then.894
  br label %if.end.901

if.end.901:                                       ; preds = %if.end.900, %for.end.862
  %498 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags2902 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %498, i32 0, i32 5
  %499 = load i8*, i8** %flags2902, align 8
  %call903 = call i8* @strchr(i8* %499, i32 91) #7
  %cmp904 = icmp ne i8* %call903, null
  br i1 %cmp904, label %if.then.906, label %if.end.935

if.then.906:                                      ; preds = %if.end.901
  %500 = load i8*, i8** %format_chars.addr, align 8
  %501 = load i8, i8* %500, align 1
  %conv907 = sext i8 %501 to i32
  %cmp908 = icmp eq i32 %conv907, 94
  br i1 %cmp908, label %if.then.910, label %if.end.912

if.then.910:                                      ; preds = %if.then.906
  %502 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr911 = getelementptr inbounds i8, i8* %502, i32 1
  store i8* %incdec.ptr911, i8** %format_chars.addr, align 8
  br label %if.end.912

if.end.912:                                       ; preds = %if.then.910, %if.then.906
  %503 = load i8*, i8** %format_chars.addr, align 8
  %504 = load i8, i8* %503, align 1
  %conv913 = sext i8 %504 to i32
  %cmp914 = icmp eq i32 %conv913, 93
  br i1 %cmp914, label %if.then.916, label %if.end.918

if.then.916:                                      ; preds = %if.end.912
  %505 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr917 = getelementptr inbounds i8, i8* %505, i32 1
  store i8* %incdec.ptr917, i8** %format_chars.addr, align 8
  br label %if.end.918

if.end.918:                                       ; preds = %if.then.916, %if.end.912
  br label %while.cond.919

while.cond.919:                                   ; preds = %while.body.927, %if.end.918
  %506 = load i8*, i8** %format_chars.addr, align 8
  %507 = load i8, i8* %506, align 1
  %conv920 = sext i8 %507 to i32
  %tobool921 = icmp ne i32 %conv920, 0
  br i1 %tobool921, label %land.rhs.922, label %land.end.926

land.rhs.922:                                     ; preds = %while.cond.919
  %508 = load i8*, i8** %format_chars.addr, align 8
  %509 = load i8, i8* %508, align 1
  %conv923 = sext i8 %509 to i32
  %cmp924 = icmp ne i32 %conv923, 93
  br label %land.end.926

land.end.926:                                     ; preds = %land.rhs.922, %while.cond.919
  %510 = phi i1 [ false, %while.cond.919 ], [ %cmp924, %land.rhs.922 ]
  br i1 %510, label %while.body.927, label %while.end.929

while.body.927:                                   ; preds = %land.end.926
  %511 = load i8*, i8** %format_chars.addr, align 8
  %incdec.ptr928 = getelementptr inbounds i8, i8* %511, i32 1
  store i8* %incdec.ptr928, i8** %format_chars.addr, align 8
  br label %while.cond.919

while.end.929:                                    ; preds = %land.end.926
  %512 = load i8*, i8** %format_chars.addr, align 8
  %513 = load i8, i8* %512, align 1
  %conv930 = sext i8 %513 to i32
  %cmp931 = icmp ne i32 %conv930, 93
  br i1 %cmp931, label %if.then.933, label %if.end.934

if.then.933:                                      ; preds = %while.end.929
  %514 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %514, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.194, i32 0, i32 0))
  br label %if.end.934

if.end.934:                                       ; preds = %if.then.933, %while.end.929
  br label %if.end.935

if.end.935:                                       ; preds = %if.end.934, %if.end.901
  store %union.tree_node* null, %union.tree_node** %wanted_type, align 8
  store i8* null, i8** %wanted_type_name, align 8
  %515 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %flags936 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %515, i32 0, i32 7
  %516 = load i32, i32* %flags936, align 4
  %and937 = and i32 %516, 1
  %tobool938 = icmp ne i32 %and937, 0
  br i1 %tobool938, label %if.then.939, label %if.end.1049

if.then.939:                                      ; preds = %if.end.935
  %517 = load i32, i32* %length_chars_val, align 4
  %idxprom940 = zext i32 %517 to i64
  %518 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %types = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %518, i32 0, i32 3
  %arrayidx941 = getelementptr inbounds [9 x %struct.format_type_detail], [9 x %struct.format_type_detail]* %types, i32 0, i64 %idxprom940
  %type = getelementptr inbounds %struct.format_type_detail, %struct.format_type_detail* %arrayidx941, i32 0, i32 2
  %519 = load %union.tree_node**, %union.tree_node*** %type, align 8
  %tobool942 = icmp ne %union.tree_node** %519, null
  br i1 %tobool942, label %cond.true.943, label %cond.false.948

cond.true.943:                                    ; preds = %if.then.939
  %520 = load i32, i32* %length_chars_val, align 4
  %idxprom944 = zext i32 %520 to i64
  %521 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %types945 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %521, i32 0, i32 3
  %arrayidx946 = getelementptr inbounds [9 x %struct.format_type_detail], [9 x %struct.format_type_detail]* %types945, i32 0, i64 %idxprom944
  %type947 = getelementptr inbounds %struct.format_type_detail, %struct.format_type_detail* %arrayidx946, i32 0, i32 2
  %522 = load %union.tree_node**, %union.tree_node*** %type947, align 8
  %523 = load %union.tree_node*, %union.tree_node** %522, align 8
  br label %cond.end.949

cond.false.948:                                   ; preds = %if.then.939
  br label %cond.end.949

cond.end.949:                                     ; preds = %cond.false.948, %cond.true.943
  %cond950 = phi %union.tree_node* [ %523, %cond.true.943 ], [ null, %cond.false.948 ]
  store %union.tree_node* %cond950, %union.tree_node** %wanted_type, align 8
  %524 = load i32, i32* %length_chars_val, align 4
  %idxprom951 = zext i32 %524 to i64
  %525 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %types952 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %525, i32 0, i32 3
  %arrayidx953 = getelementptr inbounds [9 x %struct.format_type_detail], [9 x %struct.format_type_detail]* %types952, i32 0, i64 %idxprom951
  %name954 = getelementptr inbounds %struct.format_type_detail, %struct.format_type_detail* %arrayidx953, i32 0, i32 1
  %526 = load i8*, i8** %name954, align 8
  store i8* %526, i8** %wanted_type_name, align 8
  %527 = load i32, i32* %length_chars_val, align 4
  %idxprom955 = zext i32 %527 to i64
  %528 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %types956 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %528, i32 0, i32 3
  %arrayidx957 = getelementptr inbounds [9 x %struct.format_type_detail], [9 x %struct.format_type_detail]* %types956, i32 0, i64 %idxprom955
  %std958 = getelementptr inbounds %struct.format_type_detail, %struct.format_type_detail* %arrayidx957, i32 0, i32 0
  %529 = load i32, i32* %std958, align 4
  store i32 %529, i32* %wanted_type_std, align 4
  %530 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %cmp959 = icmp eq %union.tree_node* %530, null
  br i1 %cmp959, label %if.then.961, label %if.else.969

if.then.961:                                      ; preds = %cond.end.949
  %531 = load i32*, i32** %status.addr, align 8
  %532 = load i8*, i8** %length_chars, align 8
  %533 = load i32, i32* %format_char, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %531, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.195, i32 0, i32 0), i8* %532, i32 %533)
  %534 = load i64, i64* %arg_num.addr, align 8
  %inc962 = add i64 %534, 1
  store i64 %inc962, i64* %arg_num.addr, align 8
  %535 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp963 = icmp eq %union.tree_node* %535, null
  br i1 %cmp963, label %if.then.965, label %if.end.966

if.then.965:                                      ; preds = %if.then.961
  %536 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %536, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  br label %return

if.end.966:                                       ; preds = %if.then.961
  %537 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common967 = bitcast %union.tree_node* %537 to %struct.tree_common*
  %chain968 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common967, i32 0, i32 0
  %538 = load %union.tree_node*, %union.tree_node** %chain968, align 8
  store %union.tree_node* %538, %union.tree_node** %params.addr, align 8
  br label %while.body

if.else.969:                                      ; preds = %cond.end.949
  %539 = load i32, i32* @pedantic, align 4
  %tobool970 = icmp ne i32 %539, 0
  br i1 %tobool970, label %land.lhs.true.971, label %if.end.1047

land.lhs.true.971:                                ; preds = %if.else.969
  %540 = load i32, i32* %wanted_type_std, align 4
  %cmp972 = icmp eq i32 %540, 2
  br i1 %cmp972, label %cond.true.974, label %cond.false.977

cond.true.974:                                    ; preds = %land.lhs.true.971
  %541 = load i32, i32* @warn_long_long, align 4
  %tobool975 = icmp ne i32 %541, 0
  %cond976 = select i1 %tobool975, i32 3, i32 0
  br label %cond.end.978

cond.false.977:                                   ; preds = %land.lhs.true.971
  %542 = load i32, i32* %wanted_type_std, align 4
  br label %cond.end.978

cond.end.978:                                     ; preds = %cond.false.977, %cond.true.974
  %cond979 = phi i32 [ %cond976, %cond.true.974 ], [ %542, %cond.false.977 ]
  %543 = load i32, i32* %length_chars_std, align 4
  %cmp980 = icmp eq i32 %543, 2
  br i1 %cmp980, label %cond.true.982, label %cond.false.985

cond.true.982:                                    ; preds = %cond.end.978
  %544 = load i32, i32* @warn_long_long, align 4
  %tobool983 = icmp ne i32 %544, 0
  %cond984 = select i1 %tobool983, i32 3, i32 0
  br label %cond.end.986

cond.false.985:                                   ; preds = %cond.end.978
  %545 = load i32, i32* %length_chars_std, align 4
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.false.985, %cond.true.982
  %cond987 = phi i32 [ %cond984, %cond.true.982 ], [ %545, %cond.false.985 ]
  %cmp988 = icmp sgt i32 %cond979, %cond987
  br i1 %cmp988, label %land.lhs.true.990, label %if.end.1047

land.lhs.true.990:                                ; preds = %cond.end.986
  %546 = load i32, i32* %wanted_type_std, align 4
  %cmp991 = icmp eq i32 %546, 2
  br i1 %cmp991, label %cond.true.993, label %cond.false.996

cond.true.993:                                    ; preds = %land.lhs.true.990
  %547 = load i32, i32* @warn_long_long, align 4
  %tobool994 = icmp ne i32 %547, 0
  %cond995 = select i1 %tobool994, i32 3, i32 0
  br label %cond.end.997

cond.false.996:                                   ; preds = %land.lhs.true.990
  %548 = load i32, i32* %wanted_type_std, align 4
  br label %cond.end.997

cond.end.997:                                     ; preds = %cond.false.996, %cond.true.993
  %cond998 = phi i32 [ %cond995, %cond.true.993 ], [ %548, %cond.false.996 ]
  %549 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %std999 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %549, i32 0, i32 2
  %550 = load i32, i32* %std999, align 4
  %cmp1000 = icmp eq i32 %550, 2
  br i1 %cmp1000, label %cond.true.1002, label %cond.false.1005

cond.true.1002:                                   ; preds = %cond.end.997
  %551 = load i32, i32* @warn_long_long, align 4
  %tobool1003 = icmp ne i32 %551, 0
  %cond1004 = select i1 %tobool1003, i32 3, i32 0
  br label %cond.end.1007

cond.false.1005:                                  ; preds = %cond.end.997
  %552 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %std1006 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %552, i32 0, i32 2
  %553 = load i32, i32* %std1006, align 4
  br label %cond.end.1007

cond.end.1007:                                    ; preds = %cond.false.1005, %cond.true.1002
  %cond1008 = phi i32 [ %cond1004, %cond.true.1002 ], [ %553, %cond.false.1005 ]
  %cmp1009 = icmp sgt i32 %cond998, %cond1008
  br i1 %cmp1009, label %if.then.1011, label %if.end.1047

if.then.1011:                                     ; preds = %cond.end.1007
  %554 = load i32, i32* %wanted_type_std, align 4
  %cmp1012 = icmp eq i32 %554, 2
  br i1 %cmp1012, label %cond.true.1014, label %cond.false.1017

cond.true.1014:                                   ; preds = %if.then.1011
  %555 = load i32, i32* @warn_long_long, align 4
  %tobool1015 = icmp ne i32 %555, 0
  %cond1016 = select i1 %tobool1015, i32 3, i32 0
  br label %cond.end.1018

cond.false.1017:                                  ; preds = %if.then.1011
  %556 = load i32, i32* %wanted_type_std, align 4
  br label %cond.end.1018

cond.end.1018:                                    ; preds = %cond.false.1017, %cond.true.1014
  %cond1019 = phi i32 [ %cond1016, %cond.true.1014 ], [ %556, %cond.false.1017 ]
  %557 = load i32, i32* @c_language, align 4
  %cmp1020 = icmp eq i32 %557, 1
  br i1 %cmp1020, label %cond.true.1022, label %cond.false.1023

cond.true.1022:                                   ; preds = %cond.end.1018
  br label %cond.end.1031

cond.false.1023:                                  ; preds = %cond.end.1018
  %558 = load i32, i32* @flag_isoc99, align 4
  %tobool1024 = icmp ne i32 %558, 0
  br i1 %tobool1024, label %cond.true.1025, label %cond.false.1026

cond.true.1025:                                   ; preds = %cond.false.1023
  br label %cond.end.1029

cond.false.1026:                                  ; preds = %cond.false.1023
  %559 = load i32, i32* @flag_isoc94, align 4
  %tobool1027 = icmp ne i32 %559, 0
  %cond1028 = select i1 %tobool1027, i32 1, i32 0
  br label %cond.end.1029

cond.end.1029:                                    ; preds = %cond.false.1026, %cond.true.1025
  %cond1030 = phi i32 [ 3, %cond.true.1025 ], [ %cond1028, %cond.false.1026 ]
  br label %cond.end.1031

cond.end.1031:                                    ; preds = %cond.end.1029, %cond.true.1022
  %cond1032 = phi i32 [ 1, %cond.true.1022 ], [ %cond1030, %cond.end.1029 ]
  %cmp1033 = icmp sgt i32 %cond1019, %cond1032
  br i1 %cmp1033, label %if.then.1035, label %if.end.1046

if.then.1035:                                     ; preds = %cond.end.1031
  %560 = load i32*, i32** %status.addr, align 8
  %561 = load i32, i32* @c_language, align 4
  %cmp1036 = icmp eq i32 %561, 1
  br i1 %cmp1036, label %cond.true.1038, label %cond.false.1039

cond.true.1038:                                   ; preds = %if.then.1035
  br label %cond.end.1043

cond.false.1039:                                  ; preds = %if.then.1035
  %562 = load i32, i32* %wanted_type_std, align 4
  %cmp1040 = icmp eq i32 %562, 4
  %cond1042 = select i1 %cmp1040, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.180, i32 0, i32 0)
  br label %cond.end.1043

cond.end.1043:                                    ; preds = %cond.false.1039, %cond.true.1038
  %cond1044 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), %cond.true.1038 ], [ %cond1042, %cond.false.1039 ]
  %563 = load i8*, i8** %length_chars, align 8
  %564 = load i32, i32* %format_char, align 4
  %565 = load %struct.format_kind_info*, %struct.format_kind_info** %fki, align 8
  %name1045 = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %565, i32 0, i32 0
  %566 = load i8*, i8** %name1045, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %560, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.196, i32 0, i32 0), i8* %cond1044, i8* %563, i32 %564, i8* %566)
  br label %if.end.1046

if.end.1046:                                      ; preds = %cond.end.1043, %cond.end.1031
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.end.1046, %cond.end.1007, %cond.end.986, %if.else.969
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.end.1047
  br label %if.end.1049

if.end.1049:                                      ; preds = %if.end.1048, %if.end.935
  %567 = load %struct.function_format_info*, %struct.function_format_info** %info.addr, align 8
  %first_arg_num1050 = getelementptr inbounds %struct.function_format_info, %struct.function_format_info* %567, i32 0, i32 2
  %568 = load i64, i64* %first_arg_num1050, align 8
  %cmp1051 = icmp eq i64 %568, 0
  br i1 %cmp1051, label %if.then.1053, label %if.end.1054

if.then.1053:                                     ; preds = %if.end.1049
  br label %while.body

if.end.1054:                                      ; preds = %if.end.1049
  %569 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %pointer_count1055 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %569, i32 0, i32 1
  %570 = load i32, i32* %pointer_count1055, align 4
  %cmp1056 = icmp eq i32 %570, 0
  br i1 %cmp1056, label %land.lhs.true.1058, label %lor.lhs.false.1061

land.lhs.true.1058:                               ; preds = %if.end.1054
  %571 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %572 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp1059 = icmp eq %union.tree_node* %571, %572
  br i1 %cmp1059, label %if.then.1063, label %lor.lhs.false.1061

lor.lhs.false.1061:                               ; preds = %land.lhs.true.1058, %if.end.1054
  %573 = load i32, i32* %suppressed, align 4
  %tobool1062 = icmp ne i32 %573, 0
  br i1 %tobool1062, label %if.then.1063, label %if.else.1072

if.then.1063:                                     ; preds = %lor.lhs.false.1061, %land.lhs.true.1058
  %574 = load i32, i32* %main_arg_num, align 4
  %cmp1064 = icmp ne i32 %574, 0
  br i1 %cmp1064, label %if.then.1066, label %if.end.1071

if.then.1066:                                     ; preds = %if.then.1063
  %575 = load i32, i32* %suppressed, align 4
  %tobool1067 = icmp ne i32 %575, 0
  br i1 %tobool1067, label %if.then.1068, label %if.else.1069

if.then.1068:                                     ; preds = %if.then.1066
  %576 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %576, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.197, i32 0, i32 0))
  br label %if.end.1070

if.else.1069:                                     ; preds = %if.then.1066
  %577 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %577, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.198, i32 0, i32 0))
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.else.1069, %if.then.1068
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.end.1070, %if.then.1063
  br label %if.end.1141

if.else.1072:                                     ; preds = %lor.lhs.false.1061
  %578 = load i32, i32* %main_arg_num, align 4
  %cmp1073 = icmp ne i32 %578, 0
  br i1 %cmp1073, label %if.then.1075, label %if.else.1077

if.then.1075:                                     ; preds = %if.else.1072
  %579 = load i32, i32* %main_arg_num, align 4
  %conv1076 = sext i32 %579 to i64
  store i64 %conv1076, i64* %arg_num.addr, align 8
  %580 = load %union.tree_node*, %union.tree_node** %main_arg_params, align 8
  store %union.tree_node* %580, %union.tree_node** %params.addr, align 8
  br label %if.end.1088

if.else.1077:                                     ; preds = %if.else.1072
  %581 = load i64, i64* %arg_num.addr, align 8
  %inc1078 = add i64 %581, 1
  store i64 %inc1078, i64* %arg_num.addr, align 8
  %582 = load i32, i32* %has_operand_number, align 4
  %cmp1079 = icmp sgt i32 %582, 0
  br i1 %cmp1079, label %if.then.1081, label %if.else.1082

if.then.1081:                                     ; preds = %if.else.1077
  %583 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %583, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0))
  br label %return

if.else.1082:                                     ; preds = %if.else.1077
  store i32 0, i32* %has_operand_number, align 4
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.else.1082
  %584 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %cmp1084 = icmp eq %union.tree_node* %584, null
  br i1 %cmp1084, label %if.then.1086, label %if.end.1087

if.then.1086:                                     ; preds = %if.end.1083
  %585 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %585, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  br label %return

if.end.1087:                                      ; preds = %if.end.1083
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.end.1087, %if.then.1075
  %586 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %list1089 = bitcast %union.tree_node* %586 to %struct.tree_list*
  %value1090 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1089, i32 0, i32 2
  %587 = load %union.tree_node*, %union.tree_node** %value1090, align 8
  store %union.tree_node* %587, %union.tree_node** %cur_param, align 8
  %588 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common1091 = bitcast %union.tree_node* %588 to %struct.tree_common*
  %chain1092 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1091, i32 0, i32 0
  %589 = load %union.tree_node*, %union.tree_node** %chain1092, align 8
  store %union.tree_node* %589, %union.tree_node** %params.addr, align 8
  %590 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %wanted_type1093 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 0
  store %union.tree_node* %590, %union.tree_node** %wanted_type1093, align 8
  %591 = load i8*, i8** %wanted_type_name, align 8
  %wanted_type_name1094 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 1
  store i8* %591, i8** %wanted_type_name1094, align 8
  %592 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %pointer_count1095 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %592, i32 0, i32 1
  %593 = load i32, i32* %pointer_count1095, align 4
  %594 = load i32, i32* %aflag, align 4
  %add1096 = add nsw i32 %593, %594
  %pointer_count1097 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 2
  store i32 %add1096, i32* %pointer_count1097, align 4
  %char_lenient_flag1098 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 3
  store i32 0, i32* %char_lenient_flag1098, align 4
  %595 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags21099 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %595, i32 0, i32 5
  %596 = load i8*, i8** %flags21099, align 8
  %call1100 = call i8* @strchr(i8* %596, i32 99) #7
  %cmp1101 = icmp ne i8* %call1100, null
  br i1 %cmp1101, label %if.then.1103, label %if.end.1105

if.then.1103:                                     ; preds = %if.end.1088
  %char_lenient_flag1104 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 3
  store i32 1, i32* %char_lenient_flag1104, align 4
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.then.1103, %if.end.1088
  %writing_in_flag1106 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 4
  store i32 0, i32* %writing_in_flag1106, align 4
  %reading_from_flag1107 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 5
  store i32 0, i32* %reading_from_flag1107, align 4
  %597 = load i32, i32* %aflag, align 4
  %tobool1108 = icmp ne i32 %597, 0
  br i1 %tobool1108, label %if.then.1109, label %if.else.1111

if.then.1109:                                     ; preds = %if.end.1105
  %writing_in_flag1110 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 4
  store i32 1, i32* %writing_in_flag1110, align 4
  br label %if.end.1126

if.else.1111:                                     ; preds = %if.end.1105
  %598 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags21112 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %598, i32 0, i32 5
  %599 = load i8*, i8** %flags21112, align 8
  %call1113 = call i8* @strchr(i8* %599, i32 87) #7
  %cmp1114 = icmp ne i8* %call1113, null
  br i1 %cmp1114, label %if.then.1116, label %if.end.1118

if.then.1116:                                     ; preds = %if.else.1111
  %writing_in_flag1117 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 4
  store i32 1, i32* %writing_in_flag1117, align 4
  br label %if.end.1118

if.end.1118:                                      ; preds = %if.then.1116, %if.else.1111
  %600 = load %struct.format_char_info*, %struct.format_char_info** %fci, align 8
  %flags21119 = getelementptr inbounds %struct.format_char_info, %struct.format_char_info* %600, i32 0, i32 5
  %601 = load i8*, i8** %flags21119, align 8
  %call1120 = call i8* @strchr(i8* %601, i32 82) #7
  %cmp1121 = icmp ne i8* %call1120, null
  br i1 %cmp1121, label %if.then.1123, label %if.end.1125

if.then.1123:                                     ; preds = %if.end.1118
  %reading_from_flag1124 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 5
  store i32 1, i32* %reading_from_flag1124, align 4
  br label %if.end.1125

if.end.1125:                                      ; preds = %if.then.1123, %if.end.1118
  br label %if.end.1126

if.end.1126:                                      ; preds = %if.end.1125, %if.then.1109
  %name1127 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 6
  store i8* null, i8** %name1127, align 8
  %602 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %param1128 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 7
  store %union.tree_node* %602, %union.tree_node** %param1128, align 8
  %603 = load i64, i64* %arg_num.addr, align 8
  %conv1129 = trunc i64 %603 to i32
  %arg_num1130 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 8
  store i32 %conv1129, i32* %arg_num1130, align 4
  %next1131 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %main_wanted_type, i32 0, i32 9
  store %struct.format_wanted_type* null, %struct.format_wanted_type** %next1131, align 8
  %604 = load %struct.format_wanted_type*, %struct.format_wanted_type** %last_wanted_type, align 8
  %cmp1132 = icmp ne %struct.format_wanted_type* %604, null
  br i1 %cmp1132, label %if.then.1134, label %if.end.1136

if.then.1134:                                     ; preds = %if.end.1126
  %605 = load %struct.format_wanted_type*, %struct.format_wanted_type** %last_wanted_type, align 8
  %next1135 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %605, i32 0, i32 9
  store %struct.format_wanted_type* %main_wanted_type, %struct.format_wanted_type** %next1135, align 8
  br label %if.end.1136

if.end.1136:                                      ; preds = %if.then.1134, %if.end.1126
  %606 = load %struct.format_wanted_type*, %struct.format_wanted_type** %first_wanted_type, align 8
  %cmp1137 = icmp eq %struct.format_wanted_type* %606, null
  br i1 %cmp1137, label %if.then.1139, label %if.end.1140

if.then.1139:                                     ; preds = %if.end.1136
  store %struct.format_wanted_type* %main_wanted_type, %struct.format_wanted_type** %first_wanted_type, align 8
  br label %if.end.1140

if.end.1140:                                      ; preds = %if.then.1139, %if.end.1136
  store %struct.format_wanted_type* %main_wanted_type, %struct.format_wanted_type** %last_wanted_type, align 8
  br label %if.end.1141

if.end.1141:                                      ; preds = %if.end.1140, %if.end.1071
  %607 = load %struct.format_wanted_type*, %struct.format_wanted_type** %first_wanted_type, align 8
  %cmp1142 = icmp ne %struct.format_wanted_type* %607, null
  br i1 %cmp1142, label %if.then.1144, label %if.end.1145

if.then.1144:                                     ; preds = %if.end.1141
  %608 = load i32*, i32** %status.addr, align 8
  %609 = load %struct.format_wanted_type*, %struct.format_wanted_type** %first_wanted_type, align 8
  call void @check_format_types(i32* %608, %struct.format_wanted_type* %609)
  br label %if.end.1145

if.end.1145:                                      ; preds = %if.then.1144, %if.end.1141
  br label %while.body

return:                                           ; preds = %if.then.1086, %if.then.1081, %if.then.965, %if.then.304, %if.then.285, %if.then.130, %if.then.119, %if.then.92, %if.then.49, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_dollar_format_checking(i32 %first_arg_num, %union.tree_node* %params) #0 {
entry:
  %first_arg_num.addr = alloca i32, align 4
  %params.addr = alloca %union.tree_node*, align 8
  %oparams = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  store i32 %first_arg_num, i32* %first_arg_num.addr, align 4
  store %union.tree_node* %params, %union.tree_node** %params.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %oparams, align 8
  %1 = load i32, i32* %first_arg_num.addr, align 4
  store i32 %1, i32* @dollar_first_arg_num, align 4
  store i32 0, i32* @dollar_arguments_count, align 4
  store i32 0, i32* @dollar_max_arg_used, align 4
  store i32 0, i32* @dollar_format_warned, align 4
  %2 = load i32, i32* %first_arg_num.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* @dollar_arguments_count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @dollar_arguments_count, align 4
  %5 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %params.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %7 = load i32, i32* @dollar_arguments_alloc, align 4
  %8 = load i32, i32* @dollar_arguments_count, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %9 = load i8*, i8** @dollar_arguments_used, align 8
  %tobool3 = icmp ne i8* %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %10 = load i8*, i8** @dollar_arguments_used, align 8
  call void @free(i8* %10) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %11 = load i8*, i8** @dollar_arguments_pointer_p, align 8
  %tobool6 = icmp ne i8* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %12 = load i8*, i8** @dollar_arguments_pointer_p, align 8
  call void @free(i8* %12) #5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %13 = load i32, i32* @dollar_arguments_count, align 4
  store i32 %13, i32* @dollar_arguments_alloc, align 4
  %14 = load i32, i32* @dollar_arguments_alloc, align 4
  %conv = sext i32 %14 to i64
  %call = call noalias i8* @xmalloc(i64 %conv)
  store i8* %call, i8** @dollar_arguments_used, align 8
  %15 = load i32, i32* @dollar_arguments_alloc, align 4
  %conv9 = sext i32 %15 to i64
  %call10 = call noalias i8* @xmalloc(i64 %conv9)
  store i8* %call10, i8** @dollar_arguments_pointer_p, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.8, %if.end
  %16 = load i32, i32* @dollar_arguments_alloc, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.then.13, label %if.end.31

if.then.13:                                       ; preds = %if.end.11
  %17 = load i8*, i8** @dollar_arguments_used, align 8
  %18 = load i32, i32* @dollar_arguments_alloc, align 4
  %conv14 = sext i32 %18 to i64
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 %conv14, i32 1, i1 false)
  %19 = load i32, i32* %first_arg_num.addr, align 4
  %cmp15 = icmp sgt i32 %19, 0
  br i1 %cmp15, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %if.then.13
  store i32 0, i32* %i, align 4
  %20 = load %union.tree_node*, %union.tree_node** %oparams, align 8
  store %union.tree_node* %20, %union.tree_node** %params.addr, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.20, %if.then.17
  %21 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %tobool19 = icmp ne %union.tree_node* %21, null
  br i1 %tobool19, label %while.body.20, label %while.end.29

while.body.20:                                    ; preds = %while.cond.18
  %22 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %list = bitcast %union.tree_node* %22 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %23 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common21 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common22 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp23 = icmp eq i32 %bf.clear, 13
  %conv24 = zext i1 %cmp23 to i32
  %conv25 = trunc i32 %conv24 to i8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i8*, i8** @dollar_arguments_pointer_p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  store i8 %conv25, i8* %arrayidx, align 1
  %27 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %common26 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %chain27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 0
  %28 = load %union.tree_node*, %union.tree_node** %chain27, align 8
  store %union.tree_node* %28, %union.tree_node** %params.addr, align 8
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %while.cond.18

while.end.29:                                     ; preds = %while.cond.18
  br label %if.end.30

if.end.30:                                        ; preds = %while.end.29, %if.then.13
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_dollar_format_checking(i32* %status, %struct.format_check_results* %res, i32 %pointer_gap_ok) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %res.addr = alloca %struct.format_check_results*, align 8
  %pointer_gap_ok.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %found_pointer_gap = alloca i8, align 1
  store i32* %status, i32** %status.addr, align 8
  store %struct.format_check_results* %res, %struct.format_check_results** %res.addr, align 8
  store i32 %pointer_gap_ok, i32* %pointer_gap_ok.addr, align 4
  store i8 0, i8* %found_pointer_gap, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @dollar_max_arg_used, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** @dollar_arguments_used, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %pointer_gap_ok.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* @dollar_first_arg_num, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8*, i8** @dollar_arguments_pointer_p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %9 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i8 1, i8* %found_pointer_gap, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %if.then
  %10 = load i32*, i32** %status.addr, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* @dollar_max_arg_used, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.200, i32 0, i32 0), i32 %add, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8, i8* %found_pointer_gap, align 1
  %tobool8 = trunc i8 %14 to i1
  br i1 %tobool8, label %if.then.15, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.end
  %15 = load i32, i32* @dollar_first_arg_num, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.17

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %16 = load i32, i32* @dollar_max_arg_used, align 4
  %17 = load i32, i32* @dollar_arguments_count, align 4
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.12, %for.end
  %18 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_other = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %18, i32 0, i32 6
  %19 = load i32, i32* %number_other, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %number_other, align 4
  %20 = load %struct.format_check_results*, %struct.format_check_results** %res.addr, align 8
  %number_dollar_extra_args = getelementptr inbounds %struct.format_check_results, %struct.format_check_results* %20, i32 0, i32 2
  %21 = load i32, i32* %number_dollar_extra_args, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %number_dollar_extra_args, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.12, %lor.lhs.false.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @maybe_read_dollar_number(i32* %status, i8** %format, i32 %dollar_needed, %union.tree_node* %params, %union.tree_node** %param_ptr, %struct.format_kind_info* %fki) #0 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %format.addr = alloca i8**, align 8
  %dollar_needed.addr = alloca i32, align 4
  %params.addr = alloca %union.tree_node*, align 8
  %param_ptr.addr = alloca %union.tree_node**, align 8
  %fki.addr = alloca %struct.format_kind_info*, align 8
  %argnum = alloca i32, align 4
  %overflow_flag = alloca i32, align 4
  %fcp = alloca i8*, align 8
  %nargnum = alloca i32, align 4
  %nalloc = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %status, i32** %status.addr, align 8
  store i8** %format, i8*** %format.addr, align 8
  store i32 %dollar_needed, i32* %dollar_needed.addr, align 4
  store %union.tree_node* %params, %union.tree_node** %params.addr, align 8
  store %union.tree_node** %param_ptr, %union.tree_node*** %param_ptr.addr, align 8
  store %struct.format_kind_info* %fki, %struct.format_kind_info** %fki.addr, align 8
  %0 = load i8**, i8*** %format.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %fcp, align 8
  %2 = load i8*, i8** %fcp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and2 = and i32 %conv1, 4
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %dollar_needed.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %6 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %argnum, align 4
  store i32 0, i32* %overflow_flag, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end
  %7 = load i8*, i8** %fcp, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = sext i8 %8 to i32
  %and6 = and i32 %conv5, 255
  %idxprom7 = sext i32 %and6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom7
  %9 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %9 to i32
  %and10 = and i32 %conv9, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %argnum, align 4
  %mul = mul nsw i32 10, %10
  %11 = load i8*, i8** %fcp, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %sub = sub nsw i32 %conv12, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %nargnum, align 4
  %13 = load i32, i32* %nargnum, align 4
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %14 = load i32, i32* %nargnum, align 4
  %div = sdiv i32 %14, 10
  %15 = load i32, i32* %argnum, align 4
  %cmp14 = icmp ne i32 %div, %15
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false, %while.body
  store i32 1, i32* %overflow_flag, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %lor.lhs.false
  %16 = load i32, i32* %nargnum, align 4
  store i32 %16, i32* %argnum, align 4
  %17 = load i8*, i8** %fcp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %fcp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i8*, i8** %fcp, align 8
  %19 = load i8, i8* %18, align 1
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp ne i32 %conv18, 36
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %while.end
  %20 = load i32, i32* %dollar_needed.addr, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.then.21
  %21 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.199, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.24:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.end
  %22 = load i8*, i8** %fcp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8**, i8*** %format.addr, align 8
  store i8* %add.ptr, i8** %23, align 8
  %24 = load i32, i32* @pedantic, align 4
  %tobool26 = icmp ne i32 %24, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.25
  %25 = load i32, i32* @dollar_format_warned, align 4
  %tobool27 = icmp ne i32 %25, 0
  br i1 %tobool27, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  %26 = load i32*, i32** %status.addr, align 8
  %27 = load i32, i32* @c_language, align 4
  %cmp29 = icmp eq i32 %27, 1
  %cond = select i1 %cmp29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0)
  call void (i32*, i8*, ...) @status_warning(i32* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.201, i32 0, i32 0), i8* %cond)
  store i32 1, i32* @dollar_format_warned, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %land.lhs.true, %if.end.25
  %28 = load i32, i32* %overflow_flag, align 4
  %tobool32 = icmp ne i32 %28, 0
  br i1 %tobool32, label %if.then.41, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.31
  %29 = load i32, i32* %argnum, align 4
  %cmp34 = icmp eq i32 %29, 0
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.33
  %30 = load i32, i32* @dollar_first_arg_num, align 4
  %tobool37 = icmp ne i32 %30, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %lor.lhs.false.36
  %31 = load i32, i32* %argnum, align 4
  %32 = load i32, i32* @dollar_arguments_count, align 4
  %cmp39 = icmp sgt i32 %31, %32
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38, %lor.lhs.false.33, %if.end.31
  %33 = load i32*, i32** %status.addr, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.202, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.38, %lor.lhs.false.36
  %34 = load i32, i32* %argnum, align 4
  %35 = load i32, i32* @dollar_max_arg_used, align 4
  %cmp43 = icmp sgt i32 %34, %35
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %36 = load i32, i32* %argnum, align 4
  store i32 %36, i32* @dollar_max_arg_used, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.50, %if.end.46
  %37 = load i32, i32* @dollar_arguments_alloc, align 4
  %38 = load i32, i32* @dollar_max_arg_used, align 4
  %cmp48 = icmp slt i32 %37, %38
  br i1 %cmp48, label %while.body.50, label %while.end.59

while.body.50:                                    ; preds = %while.cond.47
  %39 = load i32, i32* @dollar_arguments_alloc, align 4
  %mul51 = mul nsw i32 2, %39
  %add52 = add nsw i32 %mul51, 16
  store i32 %add52, i32* %nalloc, align 4
  %40 = load i8*, i8** @dollar_arguments_used, align 8
  %41 = load i32, i32* %nalloc, align 4
  %conv53 = sext i32 %41 to i64
  %call = call i8* @xrealloc(i8* %40, i64 %conv53)
  store i8* %call, i8** @dollar_arguments_used, align 8
  %42 = load i8*, i8** @dollar_arguments_pointer_p, align 8
  %43 = load i32, i32* %nalloc, align 4
  %conv54 = sext i32 %43 to i64
  %call55 = call i8* @xrealloc(i8* %42, i64 %conv54)
  store i8* %call55, i8** @dollar_arguments_pointer_p, align 8
  %44 = load i8*, i8** @dollar_arguments_used, align 8
  %45 = load i32, i32* @dollar_arguments_alloc, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  %46 = load i32, i32* %nalloc, align 4
  %47 = load i32, i32* @dollar_arguments_alloc, align 4
  %sub57 = sub nsw i32 %46, %47
  %conv58 = sext i32 %sub57 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr56, i8 0, i64 %conv58, i32 1, i1 false)
  %48 = load i32, i32* %nalloc, align 4
  store i32 %48, i32* @dollar_arguments_alloc, align 4
  br label %while.cond.47

while.end.59:                                     ; preds = %while.cond.47
  %49 = load %struct.format_kind_info*, %struct.format_kind_info** %fki.addr, align 8
  %flags = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %49, i32 0, i32 7
  %50 = load i32, i32* %flags, align 4
  %and60 = and i32 %50, 8
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.else.73, label %land.lhs.true.62

land.lhs.true.62:                                 ; preds = %while.end.59
  %51 = load i32, i32* %argnum, align 4
  %sub63 = sub nsw i32 %51, 1
  %idxprom64 = sext i32 %sub63 to i64
  %52 = load i8*, i8** @dollar_arguments_used, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %52, i64 %idxprom64
  %53 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %53 to i32
  %cmp67 = icmp eq i32 %conv66, 1
  br i1 %cmp67, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %land.lhs.true.62
  %54 = load i32, i32* %argnum, align 4
  %sub70 = sub nsw i32 %54, 1
  %idxprom71 = sext i32 %sub70 to i64
  %55 = load i8*, i8** @dollar_arguments_used, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %55, i64 %idxprom71
  store i8 2, i8* %arrayidx72, align 1
  %56 = load i32*, i32** %status.addr, align 8
  %57 = load i32, i32* %argnum, align 4
  %58 = load %struct.format_kind_info*, %struct.format_kind_info** %fki.addr, align 8
  %name = getelementptr inbounds %struct.format_kind_info, %struct.format_kind_info* %58, i32 0, i32 0
  %59 = load i8*, i8** %name, align 8
  call void (i32*, i8*, ...) @status_warning(i32* %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.203, i32 0, i32 0), i32 %57, i8* %59)
  br label %if.end.77

if.else.73:                                       ; preds = %land.lhs.true.62, %while.end.59
  %60 = load i32, i32* %argnum, align 4
  %sub74 = sub nsw i32 %60, 1
  %idxprom75 = sext i32 %sub74 to i64
  %61 = load i8*, i8** @dollar_arguments_used, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %61, i64 %idxprom75
  store i8 1, i8* %arrayidx76, align 1
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.73, %if.then.69
  %62 = load i32, i32* @dollar_first_arg_num, align 4
  %tobool78 = icmp ne i32 %62, 0
  br i1 %tobool78, label %if.then.79, label %if.else.88

if.then.79:                                       ; preds = %if.end.77
  %63 = load %union.tree_node*, %union.tree_node** %params.addr, align 8
  %64 = load %union.tree_node**, %union.tree_node*** %param_ptr.addr, align 8
  store %union.tree_node* %63, %union.tree_node** %64, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.79
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %argnum, align 4
  %cmp80 = icmp slt i32 %65, %66
  br i1 %cmp80, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %67 = load %union.tree_node**, %union.tree_node*** %param_ptr.addr, align 8
  %68 = load %union.tree_node*, %union.tree_node** %67, align 8
  %cmp82 = icmp ne %union.tree_node* %68, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %69 = phi i1 [ false, %for.cond ], [ %cmp82, %land.rhs ]
  br i1 %69, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %70 = load %union.tree_node**, %union.tree_node*** %param_ptr.addr, align 8
  %71 = load %union.tree_node*, %union.tree_node** %70, align 8
  %common = bitcast %union.tree_node* %71 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %72 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %73 = load %union.tree_node**, %union.tree_node*** %param_ptr.addr, align 8
  store %union.tree_node* %72, %union.tree_node** %73, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %i, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %75 = load %union.tree_node**, %union.tree_node*** %param_ptr.addr, align 8
  %76 = load %union.tree_node*, %union.tree_node** %75, align 8
  %cmp84 = icmp eq %union.tree_node* %76, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.maybe_read_dollar_number, i32 0, i32 0)) #6
  unreachable

if.end.87:                                        ; preds = %for.end
  br label %if.end.89

if.else.88:                                       ; preds = %if.end.77
  %77 = load %union.tree_node**, %union.tree_node*** %param_ptr.addr, align 8
  store %union.tree_node* null, %union.tree_node** %77, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.end.87
  %78 = load i32, i32* %argnum, align 4
  store i32 %78, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.41, %if.else.24, %if.then.23, %if.else, %if.then.4
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct.format_flag_spec* @get_flag_spec(%struct.format_flag_spec* %spec, i32 %flag, i8* %predicates) #0 {
entry:
  %retval = alloca %struct.format_flag_spec*, align 8
  %spec.addr = alloca %struct.format_flag_spec*, align 8
  %flag.addr = alloca i32, align 4
  %predicates.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.format_flag_spec* %spec, %struct.format_flag_spec** %spec.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  store i8* %predicates, i8** %predicates.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %1, i64 %idxprom
  %flag_char = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %flag_char, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %4, i64 %idxprom1
  %flag_char3 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %flag_char3, align 4
  %6 = load i32, i32* %flag.addr, align 4
  %cmp4 = icmp ne i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load i8*, i8** %predicates.addr, align 8
  %cmp5 = icmp ne i8* %7, null
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %9, i64 %idxprom7
  %predicate = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %arrayidx8, i32 0, i32 1
  %10 = load i32, i32* %predicate, align 4
  %cmp9 = icmp ne i32 %10, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.6
  %11 = load i8*, i8** %predicates.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %13, i64 %idxprom10
  %predicate12 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %arrayidx11, i32 0, i32 1
  %14 = load i32, i32* %predicate12, align 4
  %call = call i8* @strchr(i8* %11, i32 %14) #7
  %cmp13 = icmp ne i8* %call, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %16, i64 %idxprom15
  store %struct.format_flag_spec* %arrayidx16, %struct.format_flag_spec** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.then.6
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %18, i64 %idxprom18
  %predicate20 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %arrayidx19, i32 0, i32 1
  %19 = load i32, i32* %predicate20, align 4
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.format_flag_spec*, %struct.format_flag_spec** %spec.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.format_flag_spec, %struct.format_flag_spec* %21, i64 %idxprom23
  store %struct.format_flag_spec* %arrayidx24, %struct.format_flag_spec** %retval
  br label %return

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %predicates.addr, align 8
  %cmp27 = icmp eq i8* %23, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 1276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.get_flag_spec, i32 0, i32 0)) #6
  unreachable

if.else.29:                                       ; preds = %for.end
  store %struct.format_flag_spec* null, %struct.format_flag_spec** %retval
  br label %return

return:                                           ; preds = %if.else.29, %if.then.22, %if.then.14
  %24 = load %struct.format_flag_spec*, %struct.format_flag_spec** %retval
  ret %struct.format_flag_spec* %24
}

; Function Attrs: nounwind uwtable
define internal void @check_format_types(i32* %status, %struct.format_wanted_type* %types) #0 {
entry:
  %status.addr = alloca i32*, align 8
  %types.addr = alloca %struct.format_wanted_type*, align 8
  %cur_param = alloca %union.tree_node*, align 8
  %cur_type = alloca %union.tree_node*, align 8
  %orig_cur_type = alloca %union.tree_node*, align 8
  %wanted_type = alloca %union.tree_node*, align 8
  %promoted_type = alloca %union.tree_node*, align 8
  %arg_num = alloca i32, align 4
  %i = alloca i32, align 4
  %char_type_flag = alloca i32, align 4
  %this = alloca i8*, align 8
  %that = alloca i8*, align 8
  store i32* %status, i32** %status.addr, align 8
  store %struct.format_wanted_type* %types, %struct.format_wanted_type** %types.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.391, %entry
  %0 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %cmp = icmp ne %struct.format_wanted_type* %0, null
  br i1 %cmp, label %for.body, label %for.end.392

for.body:                                         ; preds = %for.cond
  %1 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %param = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %1, i32 0, i32 7
  %2 = load %union.tree_node*, %union.tree_node** %param, align 8
  store %union.tree_node* %2, %union.tree_node** %cur_param, align 8
  %3 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  store %union.tree_node* %4, %union.tree_node** %cur_type, align 8
  %5 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp1 = icmp eq %union.tree_node* %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.391

if.end:                                           ; preds = %for.body
  store i32 0, i32* %char_type_flag, align 4
  %7 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %wanted_type2 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %7, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %wanted_type2, align 8
  store %union.tree_node* %8, %union.tree_node** %wanted_type, align 8
  %9 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %arg_num3 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %9, i32 0, i32 8
  %10 = load i32, i32* %arg_num3, align 4
  store i32 %10, i32* %arg_num, align 4
  %11 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %cmp4 = icmp eq %union.tree_node* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 2275, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.check_format_types, i32 0, i32 0)) #6
  unreachable

if.end.6:                                         ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp7 = icmp eq %union.tree_node* %12, %13
  br i1 %cmp7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.6
  %14 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %pointer_count = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %14, i32 0, i32 2
  %15 = load i32, i32* %pointer_count, align 4
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 2277, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.check_format_types, i32 0, i32 0)) #6
  unreachable

if.end.10:                                        ; preds = %land.lhs.true, %if.end.6
  %16 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %pointer_count11 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %16, i32 0, i32 2
  %17 = load i32, i32* %pointer_count11, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %18 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %call = call %union.tree_node* @simple_type_promotes_to(%union.tree_node* %18)
  store %union.tree_node* %call, %union.tree_node** %promoted_type, align 8
  %19 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  %cmp14 = icmp ne %union.tree_node* %19, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %20 = load %union.tree_node*, %union.tree_node** %promoted_type, align 8
  store %union.tree_node* %20, %union.tree_node** %wanted_type, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %21 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common18 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp19 = icmp eq i32 %bf.clear, 115
  br i1 %cmp19, label %land.lhs.true.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %22 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common20 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %code21, align 8
  %bf.clear23 = and i32 %bf.load22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 114
  br i1 %cmp24, label %land.lhs.true.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %23 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common26 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 116
  br i1 %cmp30, label %land.lhs.true.31, label %land.end

land.lhs.true.31:                                 ; preds = %lor.lhs.false.25, %lor.lhs.false, %while.cond
  %24 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %exp = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp32 = icmp ne %union.tree_node* %25, %26
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.31
  %27 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common33 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %type34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common33, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %type34, align 8
  %type35 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type35, i32 0, i32 6
  %bf.load36 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load36, 9
  %bf.clear37 = and i32 %bf.lshr, 127
  %29 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %exp38 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands39 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp38, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands39, i32 0, i64 0
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx40, align 8
  %common41 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %type42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type42, align 8
  %type43 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %mode44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type43, i32 0, i32 6
  %bf.load45 = load i32, i32* %mode44, align 4
  %bf.lshr46 = lshr i32 %bf.load45, 9
  %bf.clear47 = and i32 %bf.lshr46, 127
  %cmp48 = icmp eq i32 %bf.clear37, %bf.clear47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.31, %lor.lhs.false.25
  %32 = phi i1 [ false, %land.lhs.true.31 ], [ false, %lor.lhs.false.25 ], [ %cmp48, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %exp49 = bitcast %union.tree_node* %33 to %struct.tree_exp*
  %operands50 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp49, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands50, i32 0, i64 0
  %34 = load %union.tree_node*, %union.tree_node** %arrayidx51, align 8
  store %union.tree_node* %34, %union.tree_node** %cur_param, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %while.end
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %pointer_count53 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %36, i32 0, i32 2
  %37 = load i32, i32* %pointer_count53, align 4
  %cmp54 = icmp slt i32 %35, %37
  br i1 %cmp54, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.52
  %38 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %common56 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load58 = load i32, i32* %code57, align 8
  %bf.clear59 = and i32 %bf.load58, 255
  %cmp60 = icmp eq i32 %bf.clear59, 13
  br i1 %cmp60, label %if.then.61, label %if.else.162

if.then.61:                                       ; preds = %for.body.55
  %39 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %common62 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %type63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %type63, align 8
  store %union.tree_node* %40, %union.tree_node** %cur_type, align 8
  %41 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp64 = icmp eq %union.tree_node* %41, %42
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.61
  br label %for.end

if.end.66:                                        ; preds = %if.then.61
  %43 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %writing_in_flag = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %43, i32 0, i32 4
  %44 = load i32, i32* %writing_in_flag, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %land.lhs.true.67, label %if.end.75

land.lhs.true.67:                                 ; preds = %if.end.66
  %45 = load i32, i32* %i, align 4
  %cmp68 = icmp eq i32 %45, 0
  br i1 %cmp68, label %land.lhs.true.69, label %if.end.75

land.lhs.true.69:                                 ; preds = %land.lhs.true.67
  %46 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %cmp70 = icmp ne %union.tree_node* %46, null
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.75

land.lhs.true.71:                                 ; preds = %land.lhs.true.69
  %47 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %call72 = call i32 @integer_zerop(%union.tree_node* %47)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %land.lhs.true.71
  %48 = load i32*, i32** %status.addr, align 8
  %49 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.204, i32 0, i32 0), i32 %49)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %land.lhs.true.71, %land.lhs.true.69, %land.lhs.true.67, %if.end.66
  %50 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %reading_from_flag = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %50, i32 0, i32 5
  %51 = load i32, i32* %reading_from_flag, align 4
  %tobool76 = icmp ne i32 %51, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.85

land.lhs.true.77:                                 ; preds = %if.end.75
  %52 = load i32, i32* %i, align 4
  %cmp78 = icmp eq i32 %52, 0
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.85

land.lhs.true.79:                                 ; preds = %land.lhs.true.77
  %53 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %cmp80 = icmp ne %union.tree_node* %53, null
  br i1 %cmp80, label %land.lhs.true.81, label %if.end.85

land.lhs.true.81:                                 ; preds = %land.lhs.true.79
  %54 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %call82 = call i32 @integer_zerop(%union.tree_node* %54)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %land.lhs.true.81
  %55 = load i32*, i32** %status.addr, align 8
  %56 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.205, i32 0, i32 0), i32 %56)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %land.lhs.true.81, %land.lhs.true.79, %land.lhs.true.77, %if.end.75
  %57 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %cmp86 = icmp ne %union.tree_node* %57, null
  br i1 %cmp86, label %land.lhs.true.87, label %if.else

land.lhs.true.87:                                 ; preds = %if.end.85
  %58 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common88 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %code89 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common88, i32 0, i32 2
  %bf.load90 = load i32, i32* %code89, align 8
  %bf.clear91 = and i32 %bf.load90, 255
  %cmp92 = icmp eq i32 %bf.clear91, 121
  br i1 %cmp92, label %if.then.93, label %if.else

if.then.93:                                       ; preds = %land.lhs.true.87
  %59 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %exp94 = bitcast %union.tree_node* %59 to %struct.tree_exp*
  %operands95 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp94, i32 0, i32 2
  %arrayidx96 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands95, i32 0, i64 0
  %60 = load %union.tree_node*, %union.tree_node** %arrayidx96, align 8
  store %union.tree_node* %60, %union.tree_node** %cur_param, align 8
  br label %if.end.97

if.else:                                          ; preds = %land.lhs.true.87, %if.end.85
  store %union.tree_node* null, %union.tree_node** %cur_param, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else, %if.then.93
  %61 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %writing_in_flag98 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %61, i32 0, i32 4
  %62 = load i32, i32* %writing_in_flag98, align 4
  %tobool99 = icmp ne i32 %62, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.136

land.lhs.true.100:                                ; preds = %if.end.97
  %63 = load i32, i32* %i, align 4
  %cmp101 = icmp eq i32 %63, 0
  br i1 %cmp101, label %land.lhs.true.102, label %if.end.136

land.lhs.true.102:                                ; preds = %land.lhs.true.100
  %64 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %common103 = bitcast %union.tree_node* %64 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common103, i32 0, i32 2
  %bf.load104 = load i32, i32* %readonly_flag, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 12
  %bf.clear106 = and i32 %bf.lshr105, 1
  %tobool107 = icmp ne i32 %bf.clear106, 0
  br i1 %tobool107, label %if.then.135, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.102
  %65 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %cmp109 = icmp ne %union.tree_node* %65, null
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.136

land.lhs.true.110:                                ; preds = %lor.lhs.false.108
  %66 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common111 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %code112 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common111, i32 0, i32 2
  %bf.load113 = load i32, i32* %code112, align 8
  %bf.clear114 = and i32 %bf.load113, 255
  %idxprom = sext i32 %bf.clear114 to i64
  %arrayidx115 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %67 = load i8, i8* %arrayidx115, align 1
  %conv = sext i8 %67 to i32
  %cmp116 = icmp eq i32 %conv, 99
  br i1 %cmp116, label %if.then.135, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.110
  %68 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common119 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %code120 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common119, i32 0, i32 2
  %bf.load121 = load i32, i32* %code120, align 8
  %bf.clear122 = and i32 %bf.load121, 255
  %idxprom123 = sext i32 %bf.clear122 to i64
  %arrayidx124 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom123
  %69 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %69 to i32
  %cmp126 = icmp eq i32 %conv125, 100
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.136

land.lhs.true.128:                                ; preds = %lor.lhs.false.118
  %70 = load %union.tree_node*, %union.tree_node** %cur_param, align 8
  %common129 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %readonly_flag130 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common129, i32 0, i32 2
  %bf.load131 = load i32, i32* %readonly_flag130, align 8
  %bf.lshr132 = lshr i32 %bf.load131, 12
  %bf.clear133 = and i32 %bf.lshr132, 1
  %tobool134 = icmp ne i32 %bf.clear133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %land.lhs.true.128, %land.lhs.true.110, %land.lhs.true.102
  %71 = load i32*, i32** %status.addr, align 8
  %72 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.206, i32 0, i32 0), i32 %72)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %land.lhs.true.128, %lor.lhs.false.118, %lor.lhs.false.108, %land.lhs.true.100, %if.end.97
  %73 = load i32, i32* %i, align 4
  %cmp137 = icmp sgt i32 %73, 0
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.161

land.lhs.true.139:                                ; preds = %if.end.136
  %74 = load i32, i32* @pedantic, align 4
  %tobool140 = icmp ne i32 %74, 0
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.161

land.lhs.true.141:                                ; preds = %land.lhs.true.139
  %75 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %common142 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %readonly_flag143 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common142, i32 0, i32 2
  %bf.load144 = load i32, i32* %readonly_flag143, align 8
  %bf.lshr145 = lshr i32 %bf.load144, 12
  %bf.clear146 = and i32 %bf.lshr145, 1
  %tobool147 = icmp ne i32 %bf.clear146, 0
  br i1 %tobool147, label %if.then.160, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %land.lhs.true.141
  %76 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %common149 = bitcast %union.tree_node* %76 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common149, i32 0, i32 2
  %bf.load150 = load i32, i32* %volatile_flag, align 8
  %bf.lshr151 = lshr i32 %bf.load150, 11
  %bf.clear152 = and i32 %bf.lshr151, 1
  %tobool153 = icmp ne i32 %bf.clear152, 0
  br i1 %tobool153, label %if.then.160, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.148
  %77 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %type155 = bitcast %union.tree_node* %77 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type155, i32 0, i32 6
  %bf.load156 = load i32, i32* %restrict_flag, align 4
  %bf.lshr157 = lshr i32 %bf.load156, 21
  %bf.clear158 = and i32 %bf.lshr157, 1
  %tobool159 = icmp ne i32 %bf.clear158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.148, %land.lhs.true.141
  %78 = load i32*, i32** %status.addr, align 8
  %79 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %78, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.207, i32 0, i32 0), i32 %79)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %lor.lhs.false.154, %land.lhs.true.139, %if.end.136
  br label %if.end.169

if.else.162:                                      ; preds = %for.body.55
  %80 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %pointer_count163 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %80, i32 0, i32 2
  %81 = load i32, i32* %pointer_count163, align 4
  %cmp164 = icmp eq i32 %81, 1
  br i1 %cmp164, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %if.else.162
  %82 = load i32*, i32** %status.addr, align 8
  %83 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.208, i32 0, i32 0), i32 %83)
  br label %if.end.168

if.else.167:                                      ; preds = %if.else.162
  %84 = load i32*, i32** %status.addr, align 8
  %85 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %84, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.209, i32 0, i32 0), i32 %85)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.then.166
  br label %for.end

if.end.169:                                       ; preds = %if.end.161
  br label %for.inc

for.inc:                                          ; preds = %if.end.169
  %86 = load i32, i32* %i, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.52

for.end:                                          ; preds = %if.end.168, %if.then.65, %for.cond.52
  %87 = load i32, i32* %i, align 4
  %88 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %pointer_count170 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %88, i32 0, i32 2
  %89 = load i32, i32* %pointer_count170, align 4
  %cmp171 = icmp slt i32 %87, %89
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %for.end
  br label %for.inc.391

if.end.174:                                       ; preds = %for.end
  %90 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  store %union.tree_node* %90, %union.tree_node** %orig_cur_type, align 8
  %91 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %type175 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type175, i32 0, i32 15
  %92 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %92, %union.tree_node** %cur_type, align 8
  %93 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %char_lenient_flag = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %93, i32 0, i32 3
  %94 = load i32, i32* %char_lenient_flag, align 4
  %tobool176 = icmp ne i32 %94, 0
  br i1 %tobool176, label %if.then.177, label %if.end.185

if.then.177:                                      ; preds = %if.end.174
  %95 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %96 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp178 = icmp eq %union.tree_node* %95, %96
  br i1 %cmp178, label %lor.end, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %if.then.177
  %97 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %98 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 1), align 8
  %cmp181 = icmp eq %union.tree_node* %97, %98
  br i1 %cmp181, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.180
  %99 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %100 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 2), align 8
  %cmp183 = icmp eq %union.tree_node* %99, %100
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.180, %if.then.177
  %101 = phi i1 [ true, %lor.lhs.false.180 ], [ true, %if.then.177 ], [ %cmp183, %lor.rhs ]
  %lor.ext = zext i1 %101 to i32
  store i32 %lor.ext, i32* %char_type_flag, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %lor.end, %if.end.174
  %102 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %103 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %cmp186 = icmp eq %union.tree_node* %102, %103
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.end.185
  br label %for.inc.391

if.end.189:                                       ; preds = %if.end.185
  %104 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %105 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp190 = icmp eq %union.tree_node* %104, %105
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.200

land.lhs.true.192:                                ; preds = %if.end.189
  %106 = load i32, i32* @pedantic, align 4
  %tobool193 = icmp ne i32 %106, 0
  br i1 %tobool193, label %lor.lhs.false.194, label %if.then.199

lor.lhs.false.194:                                ; preds = %land.lhs.true.192
  %107 = load i32, i32* %i, align 4
  %cmp195 = icmp eq i32 %107, 1
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.200

land.lhs.true.197:                                ; preds = %lor.lhs.false.194
  %108 = load i32, i32* %char_type_flag, align 4
  %tobool198 = icmp ne i32 %108, 0
  br i1 %tobool198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %land.lhs.true.197, %land.lhs.true.192
  br label %for.inc.391

if.end.200:                                       ; preds = %land.lhs.true.197, %lor.lhs.false.194, %if.end.189
  %109 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %common201 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %code202 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common201, i32 0, i32 2
  %bf.load203 = load i32, i32* %code202, align 8
  %bf.clear204 = and i32 %bf.load203, 255
  %cmp205 = icmp eq i32 %bf.clear204, 6
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.237

land.lhs.true.207:                                ; preds = %if.end.200
  %110 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %common208 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %code209 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common208, i32 0, i32 2
  %bf.load210 = load i32, i32* %code209, align 8
  %bf.clear211 = and i32 %bf.load210, 255
  %cmp212 = icmp eq i32 %bf.clear211, 6
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.237

land.lhs.true.214:                                ; preds = %land.lhs.true.207
  %111 = load i32, i32* @pedantic, align 4
  %tobool215 = icmp ne i32 %111, 0
  br i1 %tobool215, label %lor.lhs.false.216, label %land.lhs.true.224

lor.lhs.false.216:                                ; preds = %land.lhs.true.214
  %112 = load i32, i32* %i, align 4
  %cmp217 = icmp eq i32 %112, 0
  br i1 %cmp217, label %land.lhs.true.224, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.216
  %113 = load i32, i32* %i, align 4
  %cmp220 = icmp eq i32 %113, 1
  br i1 %cmp220, label %land.lhs.true.222, label %if.end.237

land.lhs.true.222:                                ; preds = %lor.lhs.false.219
  %114 = load i32, i32* %char_type_flag, align 4
  %tobool223 = icmp ne i32 %114, 0
  br i1 %tobool223, label %land.lhs.true.224, label %if.end.237

land.lhs.true.224:                                ; preds = %land.lhs.true.222, %lor.lhs.false.216, %land.lhs.true.214
  %115 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %common225 = bitcast %union.tree_node* %115 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common225, i32 0, i32 2
  %bf.load226 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr227 = lshr i32 %bf.load226, 13
  %bf.clear228 = and i32 %bf.lshr227, 1
  %tobool229 = icmp ne i32 %bf.clear228, 0
  br i1 %tobool229, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.224
  %116 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %117 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %call230 = call %union.tree_node* @unsigned_type(%union.tree_node* %117)
  %cmp231 = icmp eq %union.tree_node* %116, %call230
  br i1 %cmp231, label %if.then.236, label %if.end.237

cond.false:                                       ; preds = %land.lhs.true.224
  %118 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %119 = load %union.tree_node*, %union.tree_node** %cur_type, align 8
  %call233 = call %union.tree_node* @signed_type(%union.tree_node* %119)
  %cmp234 = icmp eq %union.tree_node* %118, %call233
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %cond.false, %cond.true
  br label %for.inc.391

if.end.237:                                       ; preds = %cond.false, %cond.true, %land.lhs.true.222, %lor.lhs.false.219, %land.lhs.true.207, %if.end.200
  %120 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %121 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 0), align 8
  %cmp238 = icmp eq %union.tree_node* %120, %121
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.248

land.lhs.true.240:                                ; preds = %if.end.237
  %122 = load i32, i32* @pedantic, align 4
  %tobool241 = icmp ne i32 %122, 0
  br i1 %tobool241, label %lor.lhs.false.242, label %land.lhs.true.245

lor.lhs.false.242:                                ; preds = %land.lhs.true.240
  %123 = load i32, i32* %i, align 4
  %cmp243 = icmp slt i32 %123, 2
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.248

land.lhs.true.245:                                ; preds = %lor.lhs.false.242, %land.lhs.true.240
  %124 = load i32, i32* %char_type_flag, align 4
  %tobool246 = icmp ne i32 %124, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %land.lhs.true.245
  br label %for.inc.391

if.end.248:                                       ; preds = %land.lhs.true.245, %lor.lhs.false.242, %if.end.237
  %125 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %type249 = bitcast %union.tree_node* %125 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type249, i32 0, i32 11
  %126 = load %union.tree_node*, %union.tree_node** %name, align 8
  %decl = bitcast %union.tree_node* %126 to %struct.tree_decl*
  %name250 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %127 = load %union.tree_node*, %union.tree_node** %name250, align 8
  %identifier = bitcast %union.tree_node* %127 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %128 = load i8*, i8** %str, align 8
  store i8* %128, i8** %this, align 8
  store i8* null, i8** %that, align 8
  %129 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type251 = bitcast %union.tree_node* %129 to %struct.tree_type*
  %name252 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type251, i32 0, i32 11
  %130 = load %union.tree_node*, %union.tree_node** %name252, align 8
  %cmp253 = icmp ne %union.tree_node* %130, null
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.309

land.lhs.true.255:                                ; preds = %if.end.248
  %131 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %common256 = bitcast %union.tree_node* %131 to %struct.tree_common*
  %code257 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common256, i32 0, i32 2
  %bf.load258 = load i32, i32* %code257, align 8
  %bf.clear259 = and i32 %bf.load258, 255
  %cmp260 = icmp ne i32 %bf.clear259, 6
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.309

land.lhs.true.262:                                ; preds = %land.lhs.true.255
  %132 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %common263 = bitcast %union.tree_node* %132 to %struct.tree_common*
  %code264 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common263, i32 0, i32 2
  %bf.load265 = load i32, i32* %code264, align 8
  %bf.clear266 = and i32 %bf.load265, 255
  %cmp267 = icmp eq i32 %bf.clear266, 13
  br i1 %cmp267, label %land.lhs.true.269, label %if.then.278

land.lhs.true.269:                                ; preds = %land.lhs.true.262
  %133 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %common270 = bitcast %union.tree_node* %133 to %struct.tree_common*
  %type271 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common270, i32 0, i32 1
  %134 = load %union.tree_node*, %union.tree_node** %type271, align 8
  %common272 = bitcast %union.tree_node* %134 to %struct.tree_common*
  %code273 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common272, i32 0, i32 2
  %bf.load274 = load i32, i32* %code273, align 8
  %bf.clear275 = and i32 %bf.load274, 255
  %cmp276 = icmp eq i32 %bf.clear275, 6
  br i1 %cmp276, label %if.end.309, label %if.then.278

if.then.278:                                      ; preds = %land.lhs.true.269, %land.lhs.true.262
  %135 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type279 = bitcast %union.tree_node* %135 to %struct.tree_type*
  %name280 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type279, i32 0, i32 11
  %136 = load %union.tree_node*, %union.tree_node** %name280, align 8
  %common281 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %code282 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common281, i32 0, i32 2
  %bf.load283 = load i32, i32* %code282, align 8
  %bf.clear284 = and i32 %bf.load283, 255
  %cmp285 = icmp eq i32 %bf.clear284, 33
  br i1 %cmp285, label %land.lhs.true.287, label %if.else.302

land.lhs.true.287:                                ; preds = %if.then.278
  %137 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type288 = bitcast %union.tree_node* %137 to %struct.tree_type*
  %name289 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type288, i32 0, i32 11
  %138 = load %union.tree_node*, %union.tree_node** %name289, align 8
  %decl290 = bitcast %union.tree_node* %138 to %struct.tree_decl*
  %name291 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl290, i32 0, i32 8
  %139 = load %union.tree_node*, %union.tree_node** %name291, align 8
  %cmp292 = icmp ne %union.tree_node* %139, null
  br i1 %cmp292, label %if.then.294, label %if.else.302

if.then.294:                                      ; preds = %land.lhs.true.287
  %140 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type295 = bitcast %union.tree_node* %140 to %struct.tree_type*
  %name296 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type295, i32 0, i32 11
  %141 = load %union.tree_node*, %union.tree_node** %name296, align 8
  %decl297 = bitcast %union.tree_node* %141 to %struct.tree_decl*
  %name298 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl297, i32 0, i32 8
  %142 = load %union.tree_node*, %union.tree_node** %name298, align 8
  %identifier299 = bitcast %union.tree_node* %142 to %struct.tree_identifier*
  %id300 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier299, i32 0, i32 1
  %str301 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id300, i32 0, i32 1
  %143 = load i8*, i8** %str301, align 8
  store i8* %143, i8** %that, align 8
  br label %if.end.308

if.else.302:                                      ; preds = %land.lhs.true.287, %if.then.278
  %144 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type303 = bitcast %union.tree_node* %144 to %struct.tree_type*
  %name304 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type303, i32 0, i32 11
  %145 = load %union.tree_node*, %union.tree_node** %name304, align 8
  %identifier305 = bitcast %union.tree_node* %145 to %struct.tree_identifier*
  %id306 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier305, i32 0, i32 1
  %str307 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id306, i32 0, i32 1
  %146 = load i8*, i8** %str307, align 8
  store i8* %146, i8** %that, align 8
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.302, %if.then.294
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %land.lhs.true.269, %land.lhs.true.255, %if.end.248
  %147 = load i8*, i8** %that, align 8
  %cmp310 = icmp eq i8* %147, null
  br i1 %cmp310, label %if.then.312, label %if.end.322

if.then.312:                                      ; preds = %if.end.309
  %148 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %common313 = bitcast %union.tree_node* %148 to %struct.tree_common*
  %code314 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common313, i32 0, i32 2
  %bf.load315 = load i32, i32* %code314, align 8
  %bf.clear316 = and i32 %bf.load315, 255
  %cmp317 = icmp eq i32 %bf.clear316, 13
  br i1 %cmp317, label %if.then.319, label %if.else.320

if.then.319:                                      ; preds = %if.then.312
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.210, i32 0, i32 0), i8** %that, align 8
  br label %if.end.321

if.else.320:                                      ; preds = %if.then.312
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.211, i32 0, i32 0), i8** %that, align 8
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.320, %if.then.319
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.309
  %149 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %common323 = bitcast %union.tree_node* %149 to %struct.tree_common*
  %code324 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common323, i32 0, i32 2
  %bf.load325 = load i32, i32* %code324, align 8
  %bf.clear326 = and i32 %bf.load325, 255
  %cmp327 = icmp eq i32 %bf.clear326, 6
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.368

land.lhs.true.329:                                ; preds = %if.end.322
  %150 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %common330 = bitcast %union.tree_node* %150 to %struct.tree_common*
  %code331 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common330, i32 0, i32 2
  %bf.load332 = load i32, i32* %code331, align 8
  %bf.clear333 = and i32 %bf.load332, 255
  %cmp334 = icmp eq i32 %bf.clear333, 6
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.368

land.lhs.true.336:                                ; preds = %land.lhs.true.329
  %151 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type337 = bitcast %union.tree_node* %151 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type337, i32 0, i32 6
  %bf.load338 = load i32, i32* %precision, align 4
  %bf.clear339 = and i32 %bf.load338, 511
  %152 = load %union.tree_node*, %union.tree_node** %wanted_type, align 8
  %type340 = bitcast %union.tree_node* %152 to %struct.tree_type*
  %precision341 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type340, i32 0, i32 6
  %bf.load342 = load i32, i32* %precision341, align 4
  %bf.clear343 = and i32 %bf.load342, 511
  %cmp344 = icmp eq i32 %bf.clear339, %bf.clear343
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.368

land.lhs.true.346:                                ; preds = %land.lhs.true.336
  %153 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type347 = bitcast %union.tree_node* %153 to %struct.tree_type*
  %name348 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type347, i32 0, i32 11
  %154 = load %union.tree_node*, %union.tree_node** %name348, align 8
  %cmp349 = icmp ne %union.tree_node* %154, null
  br i1 %cmp349, label %land.lhs.true.351, label %if.end.368

land.lhs.true.351:                                ; preds = %land.lhs.true.346
  %155 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type352 = bitcast %union.tree_node* %155 to %struct.tree_type*
  %name353 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type352, i32 0, i32 11
  %156 = load %union.tree_node*, %union.tree_node** %name353, align 8
  %common354 = bitcast %union.tree_node* %156 to %struct.tree_common*
  %code355 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common354, i32 0, i32 2
  %bf.load356 = load i32, i32* %code355, align 8
  %bf.clear357 = and i32 %bf.load356, 255
  %cmp358 = icmp eq i32 %bf.clear357, 33
  br i1 %cmp358, label %if.then.360, label %if.end.368

if.then.360:                                      ; preds = %land.lhs.true.351
  %157 = load %union.tree_node*, %union.tree_node** %orig_cur_type, align 8
  %type361 = bitcast %union.tree_node* %157 to %struct.tree_type*
  %name362 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type361, i32 0, i32 11
  %158 = load %union.tree_node*, %union.tree_node** %name362, align 8
  %decl363 = bitcast %union.tree_node* %158 to %struct.tree_decl*
  %name364 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl363, i32 0, i32 8
  %159 = load %union.tree_node*, %union.tree_node** %name364, align 8
  %identifier365 = bitcast %union.tree_node* %159 to %struct.tree_identifier*
  %id366 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier365, i32 0, i32 1
  %str367 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id366, i32 0, i32 1
  %160 = load i8*, i8** %str367, align 8
  store i8* %160, i8** %that, align 8
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.360, %land.lhs.true.351, %land.lhs.true.346, %land.lhs.true.336, %land.lhs.true.329, %if.end.322
  %161 = load i8*, i8** %this, align 8
  %162 = load i8*, i8** %that, align 8
  %call369 = call i32 @strcmp(i8* %161, i8* %162) #7
  %cmp370 = icmp ne i32 %call369, 0
  br i1 %cmp370, label %if.then.372, label %if.end.390

if.then.372:                                      ; preds = %if.end.368
  %163 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %wanted_type_name = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %163, i32 0, i32 1
  %164 = load i8*, i8** %wanted_type_name, align 8
  %cmp373 = icmp ne i8* %164, null
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.382

land.lhs.true.375:                                ; preds = %if.then.372
  %165 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %wanted_type_name376 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %165, i32 0, i32 1
  %166 = load i8*, i8** %wanted_type_name376, align 8
  %167 = load i8*, i8** %that, align 8
  %call377 = call i32 @strcmp(i8* %166, i8* %167) #7
  %cmp378 = icmp ne i32 %call377, 0
  br i1 %cmp378, label %if.then.380, label %if.end.382

if.then.380:                                      ; preds = %land.lhs.true.375
  %168 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %wanted_type_name381 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %168, i32 0, i32 1
  %169 = load i8*, i8** %wanted_type_name381, align 8
  store i8* %169, i8** %this, align 8
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.380, %land.lhs.true.375, %if.then.372
  %170 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %name383 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %170, i32 0, i32 6
  %171 = load i8*, i8** %name383, align 8
  %cmp384 = icmp ne i8* %171, null
  br i1 %cmp384, label %if.then.386, label %if.else.388

if.then.386:                                      ; preds = %if.end.382
  %172 = load i32*, i32** %status.addr, align 8
  %173 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %name387 = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %173, i32 0, i32 6
  %174 = load i8*, i8** %name387, align 8
  %175 = load i8*, i8** %this, align 8
  %176 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.212, i32 0, i32 0), i8* %174, i8* %175, i32 %176)
  br label %if.end.389

if.else.388:                                      ; preds = %if.end.382
  %177 = load i32*, i32** %status.addr, align 8
  %178 = load i8*, i8** %this, align 8
  %179 = load i8*, i8** %that, align 8
  %180 = load i32, i32* %arg_num, align 4
  call void (i32*, i8*, ...) @status_warning(i32* %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.213, i32 0, i32 0), i8* %178, i8* %179, i32 %180)
  br label %if.end.389

if.end.389:                                       ; preds = %if.else.388, %if.then.386
  br label %if.end.390

if.end.390:                                       ; preds = %if.end.389, %if.end.368
  br label %for.inc.391

for.inc.391:                                      ; preds = %if.end.390, %if.then.247, %if.then.236, %if.then.199, %if.then.188, %if.then.173, %if.then
  %181 = load %struct.format_wanted_type*, %struct.format_wanted_type** %types.addr, align 8
  %next = getelementptr inbounds %struct.format_wanted_type, %struct.format_wanted_type* %181, i32 0, i32 9
  %182 = load %struct.format_wanted_type*, %struct.format_wanted_type** %next, align 8
  store %struct.format_wanted_type* %182, %struct.format_wanted_type** %types.addr, align 8
  br label %for.cond

for.end.392:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i8* @xrealloc(i8*, i64) #1

declare %union.tree_node* @simple_type_promotes_to(%union.tree_node*) #1

declare %union.tree_node* @unsigned_type(%union.tree_node*) #1

declare %union.tree_node* @signed_type(%union.tree_node*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @set_diagnostic_context(%struct.diagnostic_context*, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32) #1

declare void @report_diagnostic(%struct.diagnostic_context*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
