; ModuleID = 'c-aux-info.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type { i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }

@flag_gen_aux_info = external global i32, align 4
@gen_aux_info_record.compiled_from_record = internal global i32 0, align 4
@aux_info_file = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"/* compiled from: . */\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"/* %s:%d:%c%c */ %s;\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" /*%s %s*/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@libiberty_optr = common global i8* null, align 8
@libiberty_nptr = common global i8* null, align 8
@libiberty_len = common global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@data_type = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"[ERROR]\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"c-aux-info.c\00", align 1
@__FUNCTION__.gen_type = private unnamed_addr constant [9 x i8] c"gen_type\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.30 = private unnamed_addr constant [10 x i8] c"/* ??? */\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define void @gen_aux_info_record(%union.tree_node* %fndecl, i32 %is_definition, i32 %is_implicit, i32 %is_prototyped) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %is_definition.addr = alloca i32, align 4
  %is_implicit.addr = alloca i32, align 4
  %is_prototyped.addr = alloca i32, align 4
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store i32 %is_definition, i32* %is_definition.addr, align 4
  store i32 %is_implicit, i32* %is_implicit.addr, align 4
  store i32 %is_prototyped, i32* %is_prototyped.addr, align 4
  %0 = load i32, i32* @flag_gen_aux_info, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @gen_aux_info_record.compiled_from_record, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @gen_aux_info_record.compiled_from_record, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8
  %4 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 1
  %5 = load i8*, i8** %filename, align 8
  %6 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl3 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 2
  %7 = load i32, i32* %linenum, align 4
  %8 = load i32, i32* %is_implicit.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i32, i32* %is_prototyped.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  %cond = select i1 %tobool5, i32 78, i32 79
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ 73, %cond.true ], [ %cond, %cond.false ]
  %10 = load i32, i32* %is_definition.addr, align 4
  %tobool7 = icmp ne i32 %10, 0
  %cond8 = select i1 %tobool7, i32 70, i32 67
  %11 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %12 = load i32, i32* %is_definition.addr, align 4
  %call9 = call i8* @gen_decl(%union.tree_node* %11, i32 %12, i32 0)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %5, i32 %7, i32 %cond6, i32 %cond8, i8* %call9)
  %13 = load i32, i32* %is_definition.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %cond.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8
  %15 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call13 = call i8* @gen_formal_list_for_func_def(%union.tree_node* %15, i32 1)
  %16 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call14 = call i8* @gen_formal_list_for_func_def(%union.tree_node* %16, i32 2)
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %call13, i8* %call14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %cond.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @gen_decl(%union.tree_node* %decl, i32 %is_func_definition, i32 %style) #0 {
entry:
  %retval = alloca i8*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %is_func_definition.addr = alloca i32, align 4
  %style.addr = alloca i32, align 4
  %ret_val = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %is_func_definition, i32* %is_func_definition.addr, align 4
  store i32 %style, i32* %style.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 8
  %1 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %name3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 8
  %3 = load %union.tree_node*, %union.tree_node** %name3, align 8
  %identifier = bitcast %union.tree_node* %3 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %4 = load i8*, i8** %str, align 8
  store i8* %4, i8** %ret_val, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %ret_val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %style.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %ret_val, align 8
  store i8* %6, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %volatile_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 11
  %bf.clear = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %8 = load i8*, i8** %ret_val, align 8
  %call = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %8, i8* null)
  store i8* %call, i8** %ret_val, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load10 = load i32, i32* %readonly_flag, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 12
  %bf.clear12 = and i32 %bf.lshr11, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.8
  %10 = load i8*, i8** %ret_val, align 8
  %call15 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %10, i8* null)
  store i8* %call15, i8** %ret_val, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** @data_type, align 8
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common17 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %code, align 8
  %bf.clear19 = and i32 %bf.load18, 255
  %cmp20 = icmp eq i32 %bf.clear19, 30
  br i1 %cmp20, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.end.16
  %12 = load i32, i32* %is_func_definition.addr, align 4
  %tobool21 = icmp ne i32 %12, 0
  br i1 %tobool21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %ret_val, align 8
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call23 = call i8* @gen_formal_list_for_func_def(%union.tree_node* %14, i32 0)
  %call24 = call noalias i8* (i8*, ...) @concat(i8* %13, i8* %call23, i8* null)
  store i8* %call24, i8** %ret_val, align 8
  %15 = load i8*, i8** %ret_val, align 8
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common25 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common26 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type27, align 8
  %19 = load i32, i32* %style.addr, align 4
  %call28 = call i8* @gen_type(i8* %15, %union.tree_node* %18, i32 %19)
  store i8* %call28, i8** %ret_val, align 8
  br label %if.end.33

if.else.29:                                       ; preds = %land.lhs.true, %if.end.16
  %20 = load i8*, i8** %ret_val, align 8
  %21 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common30 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %23 = load i32, i32* %style.addr, align 4
  %call32 = call i8* @gen_type(i8* %20, %union.tree_node* %22, i32 %23)
  store i8* %call32, i8** %ret_val, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.29, %if.then.22
  %24 = load i8*, i8** %ret_val, align 8
  %call34 = call noalias i8* @affix_data_type(i8* %24)
  store i8* %call34, i8** %ret_val, align 8
  %25 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common35 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 2
  %bf.load37 = load i32, i32* %code36, align 8
  %bf.clear38 = and i32 %bf.load37, 255
  %cmp39 = icmp ne i32 %bf.clear38, 30
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.48

land.lhs.true.40:                                 ; preds = %if.end.33
  %26 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl41 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 5
  %27 = bitcast i48* %regdecl_flag to i64*
  %bf.load42 = load i64, i64* %27, align 8
  %bf.lshr43 = lshr i64 %bf.load42, 10
  %bf.clear44 = and i64 %bf.lshr43, 1
  %bf.cast = trunc i64 %bf.clear44 to i32
  %tobool45 = icmp ne i32 %bf.cast, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true.40
  %28 = load i8*, i8** %ret_val, align 8
  %call47 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %28, i8* null)
  store i8* %call47, i8** %ret_val, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true.40, %if.end.33
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common49 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 2
  %bf.load50 = load i32, i32* %public_flag, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 19
  %bf.clear52 = and i32 %bf.lshr51, 1
  %tobool53 = icmp ne i32 %bf.clear52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.48
  %30 = load i8*, i8** %ret_val, align 8
  %call55 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* %30, i8* null)
  store i8* %call55, i8** %ret_val, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.48
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common57 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %code58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 2
  %bf.load59 = load i32, i32* %code58, align 8
  %bf.clear60 = and i32 %bf.load59, 255
  %cmp61 = icmp eq i32 %bf.clear60, 30
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.71

land.lhs.true.62:                                 ; preds = %if.end.56
  %32 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common63 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %public_flag64 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common63, i32 0, i32 2
  %bf.load65 = load i32, i32* %public_flag64, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 19
  %bf.clear67 = and i32 %bf.lshr66, 1
  %tobool68 = icmp ne i32 %bf.clear67, 0
  br i1 %tobool68, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.62
  %33 = load i8*, i8** %ret_val, align 8
  %call70 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %33, i8* null)
  store i8* %call70, i8** %ret_val, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %land.lhs.true.62, %if.end.56
  %34 = load i8*, i8** %ret_val, align 8
  store i8* %34, i8** %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.4
  %35 = load i8*, i8** %retval
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define internal i8* @gen_formal_list_for_func_def(%union.tree_node* %fndecl, i32 %style) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %style.addr = alloca i32, align 4
  %formal_list = alloca i8*, align 8
  %formal_decl = alloca %union.tree_node*, align 8
  %this_formal = alloca i8*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store i32 %style, i32* %style.addr, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %formal_list, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %1 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %1, %union.tree_node** %formal_decl, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %2 = load %union.tree_node*, %union.tree_node** %formal_decl, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %formal_list, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i32, i32* %style.addr, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i32, i32* %style.addr, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i8*, i8** %formal_list, align 8
  %call = call noalias i8* (i8*, ...) @concat(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* null)
  store i8* %call, i8** %formal_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.body
  %8 = load %union.tree_node*, %union.tree_node** %formal_decl, align 8
  %9 = load i32, i32* %style.addr, align 4
  %call5 = call i8* @gen_decl(%union.tree_node* %8, i32 0, i32 %9)
  store i8* %call5, i8** %this_formal, align 8
  %10 = load i32, i32* %style.addr, align 4
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load i8*, i8** %formal_list, align 8
  %12 = load i8*, i8** %this_formal, align 8
  %call9 = call noalias i8* (i8*, ...) @concat(i8* %11, i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* null)
  store i8* %call9, i8** %formal_list, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %13 = load i8*, i8** %formal_list, align 8
  %14 = load i8*, i8** %this_formal, align 8
  %call10 = call noalias i8* (i8*, ...) @concat(i8* %13, i8* %14, i8* null)
  store i8* %call10, i8** %formal_list, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.8
  %15 = load %union.tree_node*, %union.tree_node** %formal_decl, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %16, %union.tree_node** %formal_decl, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %style.addr, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %while.end
  %18 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl15 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %arguments16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 10
  %19 = load %union.tree_node*, %union.tree_node** %arguments16, align 8
  %tobool17 = icmp ne %union.tree_node* %19, null
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  %20 = load i8*, i8** %formal_list, align 8
  %call19 = call noalias i8* (i8*, ...) @concat(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* null)
  store i8* %call19, i8** %formal_list, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.14
  %21 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common21 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call22 = call i32 @deserves_ellipsis(%union.tree_node* %22)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.20
  %23 = load i8*, i8** %formal_list, align 8
  %call25 = call noalias i8* (i8*, ...) @concat(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* null)
  store i8* %call25, i8** %formal_list, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %while.end
  %24 = load i32, i32* %style.addr, align 4
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.27
  %25 = load i32, i32* %style.addr, align 4
  %cmp31 = icmp eq i32 %25, 1
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.end.27
  %26 = load i8*, i8** %formal_list, align 8
  %call34 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call34, i8** %formal_list, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %lor.lhs.false.30
  %27 = load i8*, i8** %formal_list, align 8
  ret i8* %27
}

declare noalias i8* @concat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @gen_type(i8* %ret_val, %union.tree_node* %t, i32 %style) #0 {
entry:
  %retval = alloca i8*, align 8
  %ret_val.addr = alloca i8*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  %style.addr = alloca i32, align 4
  %chain_p = alloca %union.tree_node*, align 8
  %size69 = alloca i32, align 4
  %buff = alloca [10 x i8], align 1
  store i8* %ret_val, i8** %ret_val.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %style, i32* %style.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 11
  %1 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type1 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %name2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 11
  %3 = load %union.tree_node*, %union.tree_node** %name2, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type3 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %name4 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 11
  %5 = load %union.tree_node*, %union.tree_node** %name4, align 8
  %decl = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %name5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %6 = load %union.tree_node*, %union.tree_node** %name5, align 8
  %identifier = bitcast %union.tree_node* %6 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %7 = load i8*, i8** %str, align 8
  store i8* %7, i8** @data_type, align 8
  br label %if.end.229

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common6 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  switch i32 %bf.clear9, label %sw.default [
    i32 13, label %sw.bb
    i32 18, label %sw.bb.44
    i32 23, label %sw.bb.82
    i32 1, label %sw.bb.88
    i32 20, label %sw.bb.92
    i32 21, label %sw.bb.112
    i32 10, label %sw.bb.137
    i32 33, label %sw.bb.167
    i32 6, label %sw.bb.173
    i32 7, label %sw.bb.219
    i32 5, label %sw.bb.227
    i32 0, label %sw.bb.228
  ]

sw.bb:                                            ; preds = %if.else
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common10 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load11 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load11, 12
  %bf.clear12 = and i32 %bf.lshr, 1
  %tobool13 = icmp ne i32 %bf.clear12, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %sw.bb
  %10 = load i8*, i8** %ret_val.addr, align 8
  %call = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %10, i8* null)
  store i8* %call, i8** %ret_val.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %sw.bb
  %11 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common15 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load16 = load i32, i32* %volatile_flag, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 11
  %bf.clear18 = and i32 %bf.lshr17, 1
  %tobool19 = icmp ne i32 %bf.clear18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  %12 = load i8*, i8** %ret_val.addr, align 8
  %call21 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %12, i8* null)
  store i8* %call21, i8** %ret_val.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end
  %13 = load i8*, i8** %ret_val.addr, align 8
  %call23 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* %13, i8* null)
  store i8* %call23, i8** %ret_val.addr, align 8
  %14 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common24 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %common26 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 18
  br i1 %cmp30, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %16 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common31 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %type32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %common33 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common33, i32 0, i32 2
  %bf.load35 = load i32, i32* %code34, align 8
  %bf.clear36 = and i32 %bf.load35, 255
  %cmp37 = icmp eq i32 %bf.clear36, 23
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.22
  %18 = load i8*, i8** %ret_val.addr, align 8
  %call39 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call39, i8** %ret_val.addr, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %lor.lhs.false
  %19 = load i8*, i8** %ret_val.addr, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common41 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %type42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %type42, align 8
  %22 = load i32, i32* %style.addr, align 4
  %call43 = call i8* @gen_type(i8* %19, %union.tree_node* %21, i32 %22)
  store i8* %call43, i8** %ret_val.addr, align 8
  %23 = load i8*, i8** %ret_val.addr, align 8
  store i8* %23, i8** %retval
  br label %return

sw.bb.44:                                         ; preds = %if.else
  %24 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type45 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i32 0, i32 2
  %25 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp46 = icmp ne %union.tree_node* %25, null
  br i1 %cmp46, label %lor.lhs.false.47, label %if.then.55

lor.lhs.false.47:                                 ; preds = %sw.bb.44
  %26 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type48 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %size49 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i32 0, i32 2
  %27 = load %union.tree_node*, %union.tree_node** %size49, align 8
  %common50 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load52 = load i32, i32* %code51, align 8
  %bf.clear53 = and i32 %bf.load52, 255
  %cmp54 = icmp ne i32 %bf.clear53, 25
  br i1 %cmp54, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %lor.lhs.false.47, %sw.bb.44
  %28 = load i8*, i8** %ret_val.addr, align 8
  %call56 = call noalias i8* (i8*, ...) @concat(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* null)
  %29 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common57 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type58, align 8
  %31 = load i32, i32* %style.addr, align 4
  %call59 = call i8* @gen_type(i8* %call56, %union.tree_node* %30, i32 %31)
  store i8* %call59, i8** %ret_val.addr, align 8
  br label %if.end.81

if.else.60:                                       ; preds = %lor.lhs.false.47
  %32 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call61 = call i64 @int_size_in_bytes(%union.tree_node* %32)
  %cmp62 = icmp eq i64 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %if.else.60
  %33 = load i8*, i8** %ret_val.addr, align 8
  %call64 = call noalias i8* (i8*, ...) @concat(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* null)
  %34 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common65 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type66 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common65, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type66, align 8
  %36 = load i32, i32* %style.addr, align 4
  %call67 = call i8* @gen_type(i8* %call64, %union.tree_node* %35, i32 %36)
  store i8* %call67, i8** %ret_val.addr, align 8
  br label %if.end.80

if.else.68:                                       ; preds = %if.else.60
  %37 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call70 = call i64 @int_size_in_bytes(%union.tree_node* %37)
  %38 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common71 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %type72 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common71, i32 0, i32 1
  %39 = load %union.tree_node*, %union.tree_node** %type72, align 8
  %call73 = call i64 @int_size_in_bytes(%union.tree_node* %39)
  %div = sdiv i64 %call70, %call73
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %size69, align 4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %40 = load i32, i32* %size69, align 4
  %call74 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %40) #5
  %41 = load i8*, i8** %ret_val.addr, align 8
  %arraydecay75 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i32 0, i32 0
  %call76 = call noalias i8* (i8*, ...) @concat(i8* %41, i8* %arraydecay75, i8* null)
  %42 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common77 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %type78 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common77, i32 0, i32 1
  %43 = load %union.tree_node*, %union.tree_node** %type78, align 8
  %44 = load i32, i32* %style.addr, align 4
  %call79 = call i8* @gen_type(i8* %call76, %union.tree_node* %43, i32 %44)
  store i8* %call79, i8** %ret_val.addr, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.68, %if.then.63
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.55
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.else
  %45 = load i8*, i8** %ret_val.addr, align 8
  %46 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %47 = load i32, i32* %style.addr, align 4
  %call83 = call i8* @gen_formal_list_for_type(%union.tree_node* %46, i32 %47)
  %call84 = call noalias i8* (i8*, ...) @concat(i8* %45, i8* %call83, i8* null)
  %48 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common85 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %type86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type86, align 8
  %50 = load i32, i32* %style.addr, align 4
  %call87 = call i8* @gen_type(i8* %call84, %union.tree_node* %49, i32 %50)
  store i8* %call87, i8** %ret_val.addr, align 8
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.else
  %51 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %identifier89 = bitcast %union.tree_node* %51 to %struct.tree_identifier*
  %id90 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier89, i32 0, i32 1
  %str91 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id90, i32 0, i32 1
  %52 = load i8*, i8** %str91, align 8
  store i8* %52, i8** @data_type, align 8
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.else
  %53 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type93 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %name94 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type93, i32 0, i32 11
  %54 = load %union.tree_node*, %union.tree_node** %name94, align 8
  %tobool95 = icmp ne %union.tree_node* %54, null
  br i1 %tobool95, label %if.then.96, label %if.else.102

if.then.96:                                       ; preds = %sw.bb.92
  %55 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type97 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %name98 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type97, i32 0, i32 11
  %56 = load %union.tree_node*, %union.tree_node** %name98, align 8
  %identifier99 = bitcast %union.tree_node* %56 to %struct.tree_identifier*
  %id100 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier99, i32 0, i32 1
  %str101 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id100, i32 0, i32 1
  %57 = load i8*, i8** %str101, align 8
  store i8* %57, i8** @data_type, align 8
  br label %if.end.110

if.else.102:                                      ; preds = %sw.bb.92
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** @data_type, align 8
  %58 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type103 = bitcast %union.tree_node* %58 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type103, i32 0, i32 1
  %59 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %59, %union.tree_node** %chain_p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.102
  %60 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %tobool104 = icmp ne %union.tree_node* %60, null
  br i1 %tobool104, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load i8*, i8** @data_type, align 8
  %62 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %call105 = call i8* @gen_decl(%union.tree_node* %62, i32 0, i32 0)
  %call106 = call noalias i8* (i8*, ...) @concat(i8* %61, i8* %call105, i8* null)
  store i8* %call106, i8** @data_type, align 8
  %63 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %common107 = bitcast %union.tree_node* %63 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common107, i32 0, i32 0
  %64 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %64, %union.tree_node** %chain_p, align 8
  %65 = load i8*, i8** @data_type, align 8
  %call108 = call noalias i8* (i8*, ...) @concat(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* null)
  store i8* %call108, i8** @data_type, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %66 = load i8*, i8** @data_type, align 8
  %call109 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* null)
  store i8* %call109, i8** @data_type, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %while.end, %if.then.96
  %67 = load i8*, i8** @data_type, align 8
  %call111 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* %67, i8* null)
  store i8* %call111, i8** @data_type, align 8
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.else
  %68 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type113 = bitcast %union.tree_node* %68 to %struct.tree_type*
  %name114 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type113, i32 0, i32 11
  %69 = load %union.tree_node*, %union.tree_node** %name114, align 8
  %tobool115 = icmp ne %union.tree_node* %69, null
  br i1 %tobool115, label %if.then.116, label %if.else.122

if.then.116:                                      ; preds = %sw.bb.112
  %70 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type117 = bitcast %union.tree_node* %70 to %struct.tree_type*
  %name118 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type117, i32 0, i32 11
  %71 = load %union.tree_node*, %union.tree_node** %name118, align 8
  %identifier119 = bitcast %union.tree_node* %71 to %struct.tree_identifier*
  %id120 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier119, i32 0, i32 1
  %str121 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id120, i32 0, i32 1
  %72 = load i8*, i8** %str121, align 8
  store i8* %72, i8** @data_type, align 8
  br label %if.end.135

if.else.122:                                      ; preds = %sw.bb.112
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** @data_type, align 8
  %73 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type123 = bitcast %union.tree_node* %73 to %struct.tree_type*
  %values124 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type123, i32 0, i32 1
  %74 = load %union.tree_node*, %union.tree_node** %values124, align 8
  store %union.tree_node* %74, %union.tree_node** %chain_p, align 8
  br label %while.cond.125

while.cond.125:                                   ; preds = %while.body.127, %if.else.122
  %75 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %tobool126 = icmp ne %union.tree_node* %75, null
  br i1 %tobool126, label %while.body.127, label %while.end.133

while.body.127:                                   ; preds = %while.cond.125
  %76 = load i8*, i8** @data_type, align 8
  %77 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %call128 = call i8* @gen_decl(%union.tree_node* %77, i32 0, i32 0)
  %call129 = call noalias i8* (i8*, ...) @concat(i8* %76, i8* %call128, i8* null)
  store i8* %call129, i8** @data_type, align 8
  %78 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %common130 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %chain131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common130, i32 0, i32 0
  %79 = load %union.tree_node*, %union.tree_node** %chain131, align 8
  store %union.tree_node* %79, %union.tree_node** %chain_p, align 8
  %80 = load i8*, i8** @data_type, align 8
  %call132 = call noalias i8* (i8*, ...) @concat(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* null)
  store i8* %call132, i8** @data_type, align 8
  br label %while.cond.125

while.end.133:                                    ; preds = %while.cond.125
  %81 = load i8*, i8** @data_type, align 8
  %call134 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* null)
  store i8* %call134, i8** @data_type, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %while.end.133, %if.then.116
  %82 = load i8*, i8** @data_type, align 8
  %call136 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* %82, i8* null)
  store i8* %call136, i8** @data_type, align 8
  br label %sw.epilog

sw.bb.137:                                        ; preds = %if.else
  %83 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type138 = bitcast %union.tree_node* %83 to %struct.tree_type*
  %name139 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type138, i32 0, i32 11
  %84 = load %union.tree_node*, %union.tree_node** %name139, align 8
  %tobool140 = icmp ne %union.tree_node* %84, null
  br i1 %tobool140, label %if.then.141, label %if.else.147

if.then.141:                                      ; preds = %sw.bb.137
  %85 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type142 = bitcast %union.tree_node* %85 to %struct.tree_type*
  %name143 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type142, i32 0, i32 11
  %86 = load %union.tree_node*, %union.tree_node** %name143, align 8
  %identifier144 = bitcast %union.tree_node* %86 to %struct.tree_identifier*
  %id145 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier144, i32 0, i32 1
  %str146 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id145, i32 0, i32 1
  %87 = load i8*, i8** %str146, align 8
  store i8* %87, i8** @data_type, align 8
  br label %if.end.165

if.else.147:                                      ; preds = %sw.bb.137
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** @data_type, align 8
  %88 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type148 = bitcast %union.tree_node* %88 to %struct.tree_type*
  %values149 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type148, i32 0, i32 1
  %89 = load %union.tree_node*, %union.tree_node** %values149, align 8
  store %union.tree_node* %89, %union.tree_node** %chain_p, align 8
  br label %while.cond.150

while.cond.150:                                   ; preds = %if.end.162, %if.else.147
  %90 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %tobool151 = icmp ne %union.tree_node* %90, null
  br i1 %tobool151, label %while.body.152, label %while.end.163

while.body.152:                                   ; preds = %while.cond.150
  %91 = load i8*, i8** @data_type, align 8
  %92 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %list = bitcast %union.tree_node* %92 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %93 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %identifier153 = bitcast %union.tree_node* %93 to %struct.tree_identifier*
  %id154 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier153, i32 0, i32 1
  %str155 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id154, i32 0, i32 1
  %94 = load i8*, i8** %str155, align 8
  %call156 = call noalias i8* (i8*, ...) @concat(i8* %91, i8* %94, i8* null)
  store i8* %call156, i8** @data_type, align 8
  %95 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %common157 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %chain158 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 0
  %96 = load %union.tree_node*, %union.tree_node** %chain158, align 8
  store %union.tree_node* %96, %union.tree_node** %chain_p, align 8
  %97 = load %union.tree_node*, %union.tree_node** %chain_p, align 8
  %tobool159 = icmp ne %union.tree_node* %97, null
  br i1 %tobool159, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %while.body.152
  %98 = load i8*, i8** @data_type, align 8
  %call161 = call noalias i8* (i8*, ...) @concat(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* null)
  store i8* %call161, i8** @data_type, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %while.body.152
  br label %while.cond.150

while.end.163:                                    ; preds = %while.cond.150
  %99 = load i8*, i8** @data_type, align 8
  %call164 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* null)
  store i8* %call164, i8** @data_type, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %while.end.163, %if.then.141
  %100 = load i8*, i8** @data_type, align 8
  %call166 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* %100, i8* null)
  store i8* %call166, i8** @data_type, align 8
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.else
  %101 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl168 = bitcast %union.tree_node* %101 to %struct.tree_decl*
  %name169 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl168, i32 0, i32 8
  %102 = load %union.tree_node*, %union.tree_node** %name169, align 8
  %identifier170 = bitcast %union.tree_node* %102 to %struct.tree_identifier*
  %id171 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier170, i32 0, i32 1
  %str172 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id171, i32 0, i32 1
  %103 = load i8*, i8** %str172, align 8
  store i8* %103, i8** @data_type, align 8
  br label %sw.epilog

sw.bb.173:                                        ; preds = %if.else
  %104 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type174 = bitcast %union.tree_node* %104 to %struct.tree_type*
  %name175 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type174, i32 0, i32 11
  %105 = load %union.tree_node*, %union.tree_node** %name175, align 8
  %decl176 = bitcast %union.tree_node* %105 to %struct.tree_decl*
  %name177 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl176, i32 0, i32 8
  %106 = load %union.tree_node*, %union.tree_node** %name177, align 8
  %identifier178 = bitcast %union.tree_node* %106 to %struct.tree_identifier*
  %id179 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier178, i32 0, i32 1
  %str180 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id179, i32 0, i32 1
  %107 = load i8*, i8** %str180, align 8
  store i8* %107, i8** @data_type, align 8
  %108 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common181 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common181, i32 0, i32 2
  %bf.load182 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr183 = lshr i32 %bf.load182, 13
  %bf.clear184 = and i32 %bf.lshr183, 1
  %tobool185 = icmp ne i32 %bf.clear184, 0
  br i1 %tobool185, label %land.lhs.true.186, label %if.end.218

land.lhs.true.186:                                ; preds = %sw.bb.173
  %109 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common187 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %readonly_flag188 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common187, i32 0, i32 2
  %bf.load189 = load i32, i32* %readonly_flag188, align 8
  %bf.lshr190 = lshr i32 %bf.load189, 12
  %bf.clear191 = and i32 %bf.lshr190, 1
  %mul = mul nsw i32 %bf.clear191, 1
  %110 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common192 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %volatile_flag193 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common192, i32 0, i32 2
  %bf.load194 = load i32, i32* %volatile_flag193, align 8
  %bf.lshr195 = lshr i32 %bf.load194, 11
  %bf.clear196 = and i32 %bf.lshr195, 1
  %mul197 = mul nsw i32 %bf.clear196, 2
  %or = or i32 %mul, %mul197
  %111 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type198 = bitcast %union.tree_node* %111 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type198, i32 0, i32 6
  %bf.load199 = load i32, i32* %restrict_flag, align 4
  %bf.lshr200 = lshr i32 %bf.load199, 21
  %bf.clear201 = and i32 %bf.lshr200, 1
  %mul202 = mul nsw i32 %bf.clear201, 4
  %or203 = or i32 %or, %mul202
  %112 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common204 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %code205 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common204, i32 0, i32 2
  %bf.load206 = load i32, i32* %code205, align 8
  %bf.clear207 = and i32 %bf.load206, 255
  %cmp208 = icmp eq i32 %bf.clear207, 20
  br i1 %cmp208, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.186
  %113 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common210 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %type211 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common210, i32 0, i32 1
  %114 = load %union.tree_node*, %union.tree_node** %type211, align 8
  %tobool212 = icmp ne %union.tree_node* %114, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.186
  %115 = phi i1 [ false, %land.lhs.true.186 ], [ %tobool212, %land.rhs ]
  %land.ext = zext i1 %115 to i32
  %mul213 = mul nsw i32 %land.ext, 8
  %or214 = or i32 %or203, %mul213
  %tobool215 = icmp ne i32 %or214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %land.end
  %116 = load i8*, i8** @data_type, align 8
  %call217 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* %116, i8* null)
  store i8* %call217, i8** @data_type, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %land.end, %sw.bb.173
  br label %sw.epilog

sw.bb.219:                                        ; preds = %if.else
  %117 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type220 = bitcast %union.tree_node* %117 to %struct.tree_type*
  %name221 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type220, i32 0, i32 11
  %118 = load %union.tree_node*, %union.tree_node** %name221, align 8
  %decl222 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %name223 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl222, i32 0, i32 8
  %119 = load %union.tree_node*, %union.tree_node** %name223, align 8
  %identifier224 = bitcast %union.tree_node* %119 to %struct.tree_identifier*
  %id225 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier224, i32 0, i32 1
  %str226 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id225, i32 0, i32 1
  %120 = load i8*, i8** %str226, align 8
  store i8* %120, i8** @data_type, align 8
  br label %sw.epilog

sw.bb.227:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** @data_type, align 8
  br label %sw.epilog

sw.bb.228:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8** @data_type, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 471, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.gen_type, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.228, %sw.bb.227, %sw.bb.219, %if.end.218, %sw.bb.167, %if.end.165, %if.end.135, %if.end.110, %sw.bb.88, %sw.bb.82, %if.end.81
  br label %if.end.229

if.end.229:                                       ; preds = %sw.epilog, %if.then
  %121 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common230 = bitcast %union.tree_node* %121 to %struct.tree_common*
  %readonly_flag231 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common230, i32 0, i32 2
  %bf.load232 = load i32, i32* %readonly_flag231, align 8
  %bf.lshr233 = lshr i32 %bf.load232, 12
  %bf.clear234 = and i32 %bf.lshr233, 1
  %tobool235 = icmp ne i32 %bf.clear234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.238

if.then.236:                                      ; preds = %if.end.229
  %122 = load i8*, i8** %ret_val.addr, align 8
  %call237 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %122, i8* null)
  store i8* %call237, i8** %ret_val.addr, align 8
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.236, %if.end.229
  %123 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common239 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %volatile_flag240 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common239, i32 0, i32 2
  %bf.load241 = load i32, i32* %volatile_flag240, align 8
  %bf.lshr242 = lshr i32 %bf.load241, 11
  %bf.clear243 = and i32 %bf.lshr242, 1
  %tobool244 = icmp ne i32 %bf.clear243, 0
  br i1 %tobool244, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %if.end.238
  %124 = load i8*, i8** %ret_val.addr, align 8
  %call246 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* %124, i8* null)
  store i8* %call246, i8** %ret_val.addr, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %if.end.238
  %125 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type248 = bitcast %union.tree_node* %125 to %struct.tree_type*
  %restrict_flag249 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type248, i32 0, i32 6
  %bf.load250 = load i32, i32* %restrict_flag249, align 4
  %bf.lshr251 = lshr i32 %bf.load250, 21
  %bf.clear252 = and i32 %bf.lshr251, 1
  %tobool253 = icmp ne i32 %bf.clear252, 0
  br i1 %tobool253, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %if.end.247
  %126 = load i8*, i8** %ret_val.addr, align 8
  %call255 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* %126, i8* null)
  store i8* %call255, i8** %ret_val.addr, align 8
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %if.end.247
  %127 = load i8*, i8** %ret_val.addr, align 8
  store i8* %127, i8** %retval
  br label %return

return:                                           ; preds = %if.end.256, %if.end.40
  %128 = load i8*, i8** %retval
  ret i8* %128
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @affix_data_type(i8* %param) #0 {
entry:
  %retval = alloca i8*, align 8
  %param.addr = alloca i8*, align 8
  %type_or_decl = alloca i8*, align 8
  %p = alloca i8*, align 8
  %qualifiers_then_data_type = alloca i8*, align 8
  %saved = alloca i8, align 1
  store i8* %param, i8** %param.addr, align 8
  %0 = load i8*, i8** %param.addr, align 8
  store i8* %0, i8** @libiberty_optr, align 8
  %1 = load i8*, i8** @libiberty_optr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %add = add i64 %call, 1
  store i64 %add, i64* @libiberty_len, align 8
  %2 = load i64, i64* @libiberty_len, align 8
  %3 = alloca i8, i64 %2
  store i8* %3, i8** @libiberty_nptr, align 8
  %4 = load i8*, i8** @libiberty_nptr, align 8
  %5 = load i8*, i8** @libiberty_optr, align 8
  %6 = load i64, i64* @libiberty_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %6, i32 1, i1 false)
  store i8* %4, i8** %type_or_decl, align 8
  %7 = load i8*, i8** %type_or_decl, align 8
  store i8* %7, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.then.4, %if.then, %entry
  %8 = load i8*, i8** %p, align 8
  %call1 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i64 9) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  %9 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 9
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

if.end:                                           ; preds = %for.cond
  %10 = load i8*, i8** %p, align 8
  %call2 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i64 6) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 6
  store i8* %add.ptr5, i8** %p, align 8
  br label %for.cond

if.end.6:                                         ; preds = %if.end
  br label %for.end

for.end:                                          ; preds = %if.end.6
  %12 = load i8*, i8** %p, align 8
  %13 = load i8*, i8** %type_or_decl, align 8
  %cmp = icmp eq i8* %12, %13
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.end
  %14 = load i8*, i8** @data_type, align 8
  %15 = load i8*, i8** %type_or_decl, align 8
  %call8 = call noalias i8* (i8*, ...) @concat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* %15, i8* null)
  store i8* %call8, i8** %retval
  br label %return

if.end.9:                                         ; preds = %for.end
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %saved, align 1
  %18 = load i8*, i8** %p, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %type_or_decl, align 8
  %20 = load i8*, i8** @data_type, align 8
  %call10 = call noalias i8* (i8*, ...) @concat(i8* %19, i8* %20, i8* null)
  store i8* %call10, i8** %qualifiers_then_data_type, align 8
  %21 = load i8, i8* %saved, align 1
  %22 = load i8*, i8** %p, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %qualifiers_then_data_type, align 8
  %24 = load i8*, i8** %qualifiers_then_data_type, align 8
  %25 = load i8*, i8** %p, align 8
  %call11 = call noalias i8* (i8*, i8*, ...) @reconcat(i8* %23, i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* %25, i8* null)
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7
  %26 = load i8*, i8** %retval
  ret i8* %26
}

declare i64 @int_size_in_bytes(%union.tree_node*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @gen_formal_list_for_type(%union.tree_node* %fntype, i32 %style) #0 {
entry:
  %retval = alloca i8*, align 8
  %fntype.addr = alloca %union.tree_node*, align 8
  %style.addr = alloca i32, align 4
  %formal_list = alloca i8*, align 8
  %formal_type = alloca %union.tree_node*, align 8
  %this_type = alloca i8*, align 8
  store %union.tree_node* %fntype, %union.tree_node** %fntype.addr, align 8
  store i32 %style, i32* %style.addr, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %formal_list, align 8
  %0 = load i32, i32* %style.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %fntype.addr, align 8
  %type = bitcast %union.tree_node* %1 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %2, %union.tree_node** %formal_type, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end
  %3 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %list = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp1 = icmp ne %union.tree_node* %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %formal_list, align 8
  %9 = load i8, i8* %8, align 1
  %tobool2 = icmp ne i8 %9, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  %10 = load i8*, i8** %formal_list, align 8
  %call = call noalias i8* (i8*, ...) @concat(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* null)
  store i8* %call, i8** %formal_list, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %while.body
  %11 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %list5 = bitcast %union.tree_node* %11 to %struct.tree_list*
  %value6 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list5, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %value6, align 8
  %call7 = call i8* @gen_type(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %union.tree_node* %12, i32 0)
  store i8* %call7, i8** %this_type, align 8
  %13 = load i8*, i8** %this_type, align 8
  %call8 = call i64 @strlen(i8* %13) #7
  %tobool9 = icmp ne i64 %call8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %14 = load i8*, i8** %formal_list, align 8
  %15 = load i8*, i8** %this_type, align 8
  %call10 = call noalias i8* @affix_data_type(i8* %15)
  %call11 = call noalias i8* (i8*, ...) @concat(i8* %14, i8* %call10, i8* null)
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %16 = load i8*, i8** %formal_list, align 8
  %17 = load i8*, i8** @data_type, align 8
  %call12 = call noalias i8* (i8*, ...) @concat(i8* %16, i8* %17, i8* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call11, %cond.true ], [ %call12, %cond.false ]
  store i8* %cond, i8** %formal_list, align 8
  %18 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %common = bitcast %union.tree_node* %18 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %19 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %19, %union.tree_node** %formal_type, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %formal_list, align 8
  %21 = load i8, i8* %20, align 1
  %tobool13 = icmp ne i8 %21, 0
  br i1 %tobool13, label %if.else.20, label %if.then.14

if.then.14:                                       ; preds = %while.end
  %22 = load %union.tree_node*, %union.tree_node** %fntype.addr, align 8
  %type15 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %values16 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %values16, align 8
  %tobool17 = icmp ne %union.tree_node* %23, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** %formal_list, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.then.14
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8** %formal_list, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %if.end.25

if.else.20:                                       ; preds = %while.end
  %24 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %tobool21 = icmp ne %union.tree_node* %24, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.else.20
  %25 = load i8*, i8** %formal_list, align 8
  %call23 = call noalias i8* (i8*, ...) @concat(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* null)
  store i8* %call23, i8** %formal_list, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.19
  %26 = load i8*, i8** %formal_list, align 8
  %call26 = call noalias i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call26, i8** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  %27 = load i8*, i8** %retval
  ret i8* %27
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare noalias i8* @reconcat(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @deserves_ellipsis(%union.tree_node* %fntype) #0 {
entry:
  %fntype.addr = alloca %union.tree_node*, align 8
  %formal_type = alloca %union.tree_node*, align 8
  store %union.tree_node* %fntype, %union.tree_node** %fntype.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fntype.addr, align 8
  %type = bitcast %union.tree_node* %0 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %1, %union.tree_node** %formal_type, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %4 = load %union.tree_node*, %union.tree_node** %value, align 8
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp = icmp ne %union.tree_node* %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %8, %union.tree_node** %formal_type, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %union.tree_node*, %union.tree_node** %formal_type, align 8
  %tobool1 = icmp ne %union.tree_node* %9, null
  br i1 %tobool1, label %land.end.6, label %land.rhs.2

land.rhs.2:                                       ; preds = %while.end
  %10 = load %union.tree_node*, %union.tree_node** %fntype.addr, align 8
  %type3 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %values4 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %values4, align 8
  %tobool5 = icmp ne %union.tree_node* %11, null
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.2, %while.end
  %12 = phi i1 [ false, %while.end ], [ %tobool5, %land.rhs.2 ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
