; ModuleID = './app/core/gimptag.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTagClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpTag = type { %struct._GObject, i32, i32, i32 }
%struct._GString = type { i8*, i64, i64 }

@gimp_tag_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GimpTag\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_tag_new = private unnamed_addr constant [13 x i8] c"gimp_tag_new\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tag_string != NULL\00", align 1
@__func__.gimp_tag_get_internal = private unnamed_addr constant [22 x i8] c"gimp_tag_get_internal\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"GIMP_IS_TAG (tag)\00", align 1
@__func__.gimp_tag_set_internal = private unnamed_addr constant [22 x i8] c"gimp_tag_set_internal\00", align 1
@__func__.gimp_tag_get_name = private unnamed_addr constant [18 x i8] c"gimp_tag_get_name\00", align 1
@__func__.gimp_tag_get_hash = private unnamed_addr constant [18 x i8] c"gimp_tag_get_hash\00", align 1
@__func__.gimp_tag_equals = private unnamed_addr constant [16 x i8] c"gimp_tag_equals\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TAG (other)\00", align 1
@__func__.gimp_tag_compare_with_string = private unnamed_addr constant [29 x i8] c"gimp_tag_compare_with_string\00", align 1
@__func__.gimp_tag_has_prefix = private unnamed_addr constant [20 x i8] c"gimp_tag_has_prefix\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"prefix_string != NULL\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"'%s' has prefix '%s': %d\0A\00", align 1
@__func__.gimp_tag_string_make_valid = private unnamed_addr constant [27 x i8] c"gimp_tag_string_make_valid\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"tag_string\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gimp:\00", align 1
@g_utf8_skip = external constant i8*, align 8
@__func__.gimp_tag_or_null_ref = private unnamed_addr constant [21 x i8] c"gimp_tag_or_null_ref\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TAG (tag_or_null)\00", align 1
@__func__.gimp_tag_or_null_unref = private unnamed_addr constant [23 x i8] c"gimp_tag_or_null_unref\00", align 1
@gimp_tag_parent_class = internal global i8* null, align 8
@GimpTag_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tag_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tag_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tag_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tag_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTag*)* @gimp_tag_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tag_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tag_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tag_parent_class, align 8
  %1 = load i32, i32* @GimpTag_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTag_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTagClass*
  call void @gimp_tag_class_init(%struct._GimpTagClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_init(%struct._GimpTag* %tag) #2 {
entry:
  %tag.addr = alloca %struct._GimpTag*, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %tag1 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %0, i32 0, i32 1
  store i32 0, i32* %tag1, align 4
  %1 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %collate_key = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %1, i32 0, i32 2
  store i32 0, i32* %collate_key, align 4
  %2 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %internal = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %2, i32 0, i32 3
  store i32 0, i32* %internal, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTag* @gimp_tag_new(i8* %tag_string) #2 {
entry:
  %retval = alloca %struct._GimpTag*, align 8
  %tag_string.addr = alloca i8*, align 8
  %tag = alloca %struct._GimpTag*, align 8
  %tag_name = alloca i8*, align 8
  %case_folded = alloca i8*, align 8
  %collate_key = alloca i8*, align 8
  store i8* %tag_string, i8** %tag_string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %tag_string.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_tag_new, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTag* null, %struct._GimpTag** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %tag_string.addr, align 8
  %call = call i8* @gimp_tag_string_make_valid(i8* %1)
  store i8* %call, i8** %tag_name, align 8
  %2 = load i8*, i8** %tag_name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store %struct._GimpTag* null, %struct._GimpTag** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %call3 = call i64 @gimp_tag_get_type() #5
  %call4 = call i8* (i64, i8*, ...) @g_object_new(i64 %call3, i8* null)
  %3 = bitcast i8* %call4 to %struct._GimpTag*
  store %struct._GimpTag* %3, %struct._GimpTag** %tag, align 8
  %4 = load i8*, i8** %tag_name, align 8
  %call5 = call i32 @g_quark_from_string(i8* %4)
  %5 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %tag6 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %5, i32 0, i32 1
  store i32 %call5, i32* %tag6, align 4
  %6 = load i8*, i8** %tag_name, align 8
  %call7 = call noalias i8* @g_utf8_casefold(i8* %6, i64 -1)
  store i8* %call7, i8** %case_folded, align 8
  %7 = load i8*, i8** %case_folded, align 8
  %call8 = call noalias i8* @g_utf8_collate_key(i8* %7, i64 -1)
  store i8* %call8, i8** %collate_key, align 8
  %8 = load i8*, i8** %collate_key, align 8
  %call9 = call i32 @g_quark_from_string(i8* %8)
  %9 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %collate_key10 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %9, i32 0, i32 2
  store i32 %call9, i32* %collate_key10, align 4
  %10 = load i8*, i8** %collate_key, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %case_folded, align 8
  call void @g_free(i8* %11)
  %12 = load i8*, i8** %tag_name, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  store %struct._GimpTag* %13, %struct._GimpTag** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.else
  %14 = load %struct._GimpTag*, %struct._GimpTag** %retval
  ret %struct._GimpTag* %14
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_tag_string_make_valid(i8* %tag_string) #2 {
entry:
  %retval = alloca i8*, align 8
  %tag_string.addr = alloca i8*, align 8
  %tag = alloca i8*, align 8
  %buffer = alloca %struct._GString*, align 8
  %tag_cursor = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %tag_string, i8** %tag_string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %tag_string.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_tag_string_make_valid, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %tag_string.addr, align 8
  %call = call noalias i8* @g_utf8_normalize(i8* %1, i64 -1, i32 2)
  store i8* %call, i8** %tag, align 8
  %2 = load i8*, i8** %tag, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %do.end
  %3 = load i8*, i8** %tag, align 8
  %call4 = call i8* @g_strchug(i8* %3)
  %call5 = call i8* @g_strchomp(i8* %call4)
  store i8* %call5, i8** %tag, align 8
  %4 = load i8*, i8** %tag, align 8
  %5 = load i8, i8* %4, align 1
  %tobool6 = icmp ne i8 %5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  %6 = load i8*, i8** %tag, align 8
  call void @g_free(i8* %6)
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.3
  %call9 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GString* %call9, %struct._GString** %buffer, align 8
  %7 = load i8*, i8** %tag, align 8
  store i8* %7, i8** %tag_cursor, align 8
  %8 = load i8*, i8** %tag_cursor, align 8
  %call10 = call i32 @g_str_has_prefix(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  %9 = load i8*, i8** %tag_cursor, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 5
  store i8* %add.ptr, i8** %tag_cursor, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  br label %do.body.14

do.body.14:                                       ; preds = %do.cond, %if.end.13
  %10 = load i8*, i8** %tag_cursor, align 8
  %call15 = call i32 @g_utf8_get_char(i8* %10) #6
  store i32 %call15, i32* %c, align 4
  %11 = load i8*, i8** %tag_cursor, align 8
  %12 = load i8*, i8** %tag_cursor, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i64
  %14 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %15 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr16, i8** %tag_cursor, align 8
  %16 = load i32, i32* %c, align 4
  %call17 = call i32 @g_unichar_isprint(i32 %16) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %do.body.14
  %17 = load i32, i32* %c, align 4
  %call19 = call i32 @gimp_tag_is_tag_separator(i32 %17)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  %18 = load %struct._GString*, %struct._GString** %buffer, align 8
  %19 = load i32, i32* %c, align 4
  %call22 = call %struct._GString* @g_string_append_unichar(%struct._GString* %18, i32 %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true, %do.body.14
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %20 = load i32, i32* %c, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %do.body.14, label %do.end.25

do.end.25:                                        ; preds = %do.cond
  %21 = load i8*, i8** %tag, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call26 = call i8* @g_string_free(%struct._GString* %22, i32 0)
  store i8* %call26, i8** %tag, align 8
  %23 = load i8*, i8** %tag, align 8
  %call27 = call i8* @g_strchug(i8* %23)
  %call28 = call i8* @g_strchomp(i8* %call27)
  store i8* %call28, i8** %tag, align 8
  %24 = load i8*, i8** %tag, align 8
  %25 = load i8, i8* %24, align 1
  %tobool29 = icmp ne i8 %25, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %do.end.25
  %26 = load i8*, i8** %tag, align 8
  call void @g_free(i8* %26)
  store i8* null, i8** %retval
  br label %return

if.end.31:                                        ; preds = %do.end.25
  %27 = load i8*, i8** %tag, align 8
  store i8* %27, i8** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.then.7, %if.then.2, %if.else
  %28 = load i8*, i8** %retval
  ret i8* %28
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i32 @g_quark_from_string(i8*) #1

declare noalias i8* @g_utf8_casefold(i8*, i64) #1

declare noalias i8* @g_utf8_collate_key(i8*, i64) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTag* @gimp_tag_try_new(i8* %tag_string) #2 {
entry:
  %retval = alloca %struct._GimpTag*, align 8
  %tag_string.addr = alloca i8*, align 8
  %tag = alloca %struct._GimpTag*, align 8
  %tag_name = alloca i8*, align 8
  %case_folded = alloca i8*, align 8
  %collate_key = alloca i8*, align 8
  %tag_quark = alloca i32, align 4
  %collate_key_quark = alloca i32, align 4
  store i8* %tag_string, i8** %tag_string.addr, align 8
  %0 = load i8*, i8** %tag_string.addr, align 8
  %call = call i8* @gimp_tag_string_make_valid(i8* %0)
  store i8* %call, i8** %tag_name, align 8
  %1 = load i8*, i8** %tag_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpTag* null, %struct._GimpTag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %tag_name, align 8
  %call1 = call noalias i8* @g_utf8_casefold(i8* %2, i64 -1)
  store i8* %call1, i8** %case_folded, align 8
  %3 = load i8*, i8** %case_folded, align 8
  %call2 = call noalias i8* @g_utf8_collate_key(i8* %3, i64 -1)
  store i8* %call2, i8** %collate_key, align 8
  %4 = load i8*, i8** %collate_key, align 8
  %call3 = call i32 @g_quark_try_string(i8* %4)
  store i32 %call3, i32* %collate_key_quark, align 4
  %5 = load i8*, i8** %collate_key, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %case_folded, align 8
  call void @g_free(i8* %6)
  %7 = load i32, i32* %collate_key_quark, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load i8*, i8** %tag_name, align 8
  call void @g_free(i8* %8)
  store %struct._GimpTag* null, %struct._GimpTag** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load i8*, i8** %tag_name, align 8
  %call7 = call i32 @g_quark_from_string(i8* %9)
  store i32 %call7, i32* %tag_quark, align 4
  %10 = load i8*, i8** %tag_name, align 8
  call void @g_free(i8* %10)
  %11 = load i32, i32* %tag_quark, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store %struct._GimpTag* null, %struct._GimpTag** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %call11 = call i64 @gimp_tag_get_type() #5
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %12 = bitcast i8* %call12 to %struct._GimpTag*
  store %struct._GimpTag* %12, %struct._GimpTag** %tag, align 8
  %13 = load i32, i32* %tag_quark, align 4
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %tag13 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %14, i32 0, i32 1
  store i32 %13, i32* %tag13, align 4
  %15 = load i32, i32* %collate_key_quark, align 4
  %16 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %collate_key14 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %16, i32 0, i32 2
  store i32 %15, i32* %collate_key14, align 4
  %17 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  store %struct._GimpTag* %17, %struct._GimpTag** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then
  %18 = load %struct._GimpTag*, %struct._GimpTag** %retval
  ret %struct._GimpTag* %18
}

declare i32 @g_quark_try_string(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_get_internal(%struct._GimpTag* %tag) #2 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct._GimpTag*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tag_get_internal, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %internal = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %13, i32 0, i32 3
  %14 = load i32, i32* %internal, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define void @gimp_tag_set_internal(%struct._GimpTag* %tag, i32 %internal) #2 {
entry:
  %tag.addr = alloca %struct._GimpTag*, align 8
  %internal.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  store i32 %internal, i32* %internal.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_tag_set_internal, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %internal.addr, align 4
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %internal11 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %14, i32 0, i32 3
  store i32 %13, i32* %internal11, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_tag_get_name(%struct._GimpTag* %tag) #2 {
entry:
  %retval = alloca i8*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_tag_get_name, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %tag11 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %13, i32 0, i32 1
  %14 = load i32, i32* %tag11, align 4
  %call12 = call i8* @g_quark_to_string(i32 %14) #5
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind readnone
declare i8* @g_quark_to_string(i32) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_get_hash(%struct._GimpTag* %tag) #2 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct._GimpTag*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_tag_get_hash, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %collate_key = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %13, i32 0, i32 2
  %14 = load i32, i32* %collate_key, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_equals(%struct._GimpTag* %tag, %struct._GimpTag* %other) #2 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct._GimpTag*, align 8
  %other.addr = alloca %struct._GimpTag*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  store %struct._GimpTag* %other, %struct._GimpTag** %other.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tag_equals, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTag*, %struct._GimpTag** %other.addr, align 8
  %14 = bitcast %struct._GimpTag* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_tag_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_tag_equals, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %collate_key = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %26, i32 0, i32 2
  %27 = load i32, i32* %collate_key, align 4
  %28 = load %struct._GimpTag*, %struct._GimpTag** %other.addr, align 8
  %collate_key39 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %28, i32 0, i32 2
  %29 = load i32, i32* %collate_key39, align 4
  %cmp40 = icmp eq i32 %27, %29
  %conv = zext i1 %cmp40 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_compare_func(i8* %p1, i8* %p2) #2 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %t1 = alloca %struct._GimpTag*, align 8
  %t2 = alloca %struct._GimpTag*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tag_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTag*
  store %struct._GimpTag* %2, %struct._GimpTag** %t1, align 8
  %3 = load i8*, i8** %p2.addr, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tag_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTag*
  store %struct._GimpTag* %5, %struct._GimpTag** %t2, align 8
  %6 = load %struct._GimpTag*, %struct._GimpTag** %t1, align 8
  %collate_key = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %6, i32 0, i32 2
  %7 = load i32, i32* %collate_key, align 4
  %call4 = call i8* @g_quark_to_string(i32 %7) #5
  %8 = load %struct._GimpTag*, %struct._GimpTag** %t2, align 8
  %collate_key5 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %8, i32 0, i32 2
  %9 = load i32, i32* %collate_key5, align 4
  %call6 = call i8* @g_quark_to_string(i32 %9) #5
  %call7 = call i32 @g_strcmp0(i8* %call4, i8* %call6)
  ret i32 %call7
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_strcmp0(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_compare_with_string(%struct._GimpTag* %tag, i8* %tag_string) #2 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct._GimpTag*, align 8
  %tag_string.addr = alloca i8*, align 8
  %case_folded = alloca i8*, align 8
  %collate_key = alloca i8*, align 8
  %collate_key2 = alloca i8*, align 8
  %result = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  store i8* %tag_string, i8** %tag_string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tag_compare_with_string, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %tag_string.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_tag_compare_with_string, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %collate_key17 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %14, i32 0, i32 2
  %15 = load i32, i32* %collate_key17, align 4
  %call18 = call i8* @g_quark_to_string(i32 %15) #5
  store i8* %call18, i8** %collate_key, align 8
  %16 = load i8*, i8** %tag_string.addr, align 8
  %call19 = call noalias i8* @g_utf8_casefold(i8* %16, i64 -1)
  store i8* %call19, i8** %case_folded, align 8
  %17 = load i8*, i8** %case_folded, align 8
  %call20 = call noalias i8* @g_utf8_collate_key(i8* %17, i64 -1)
  store i8* %call20, i8** %collate_key2, align 8
  %18 = load i8*, i8** %collate_key, align 8
  %19 = load i8*, i8** %collate_key2, align 8
  %call21 = call i32 @g_strcmp0(i8* %18, i8* %19)
  store i32 %call21, i32* %result, align 4
  %20 = load i8*, i8** %collate_key2, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %case_folded, align 8
  call void @g_free(i8* %21)
  %22 = load i32, i32* %result, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_has_prefix(%struct._GimpTag* %tag, i8* %prefix_string) #2 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct._GimpTag*, align 8
  %prefix_string.addr = alloca i8*, align 8
  %case_folded1 = alloca i8*, align 8
  %case_folded2 = alloca i8*, align 8
  %has_prefix = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  store i8* %prefix_string, i8** %prefix_string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %1 = bitcast %struct._GimpTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tag_has_prefix, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %prefix_string.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_tag_has_prefix, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %tag17 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %14, i32 0, i32 1
  %15 = load i32, i32* %tag17, align 4
  %call18 = call i8* @g_quark_to_string(i32 %15) #5
  %call19 = call noalias i8* @g_utf8_casefold(i8* %call18, i64 -1)
  store i8* %call19, i8** %case_folded1, align 8
  %16 = load i8*, i8** %prefix_string.addr, align 8
  %call20 = call noalias i8* @g_utf8_casefold(i8* %16, i64 -1)
  store i8* %call20, i8** %case_folded2, align 8
  %17 = load i8*, i8** %case_folded1, align 8
  %18 = load i8*, i8** %case_folded2, align 8
  %call21 = call i32 @g_str_has_prefix(i8* %17, i8* %18)
  store i32 %call21, i32* %has_prefix, align 4
  %19 = load i8*, i8** %case_folded1, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %case_folded2, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %tag22 = getelementptr inbounds %struct._GimpTag, %struct._GimpTag* %21, i32 0, i32 1
  %22 = load i32, i32* %tag22, align 4
  %call23 = call i8* @g_quark_to_string(i32 %22) #5
  %23 = load i8*, i8** %prefix_string.addr, align 8
  %24 = load i32, i32* %has_prefix, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i8* %call23, i8* %23, i32 %24)
  %25 = load i32, i32* %has_prefix, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare void @g_printerr(i8*, ...) #1

declare noalias i8* @g_utf8_normalize(i8*, i64, i32) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @g_strchug(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_get_char(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_unichar_isprint(i32) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_tag_is_tag_separator(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  switch i32 %0, label %sw.default [
    i32 44, label %sw.bb
    i32 1548, label %sw.bb
    i32 2040, label %sw.bb
    i32 4963, label %sw.bb
    i32 6146, label %sw.bb
    i32 6152, label %sw.bb
    i32 12289, label %sw.bb
    i32 42509, label %sw.bb
    i32 65104, label %sw.bb
    i32 65292, label %sw.bb
    i32 65380, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

declare %struct._GString* @g_string_append_unichar(%struct._GString*, i32) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_or_null_ref(%struct._GimpTag* %tag_or_null) #2 {
entry:
  %tag_or_null.addr = alloca %struct._GimpTag*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag_or_null, %struct._GimpTag** %tag_or_null.addr, align 8
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag_or_null.addr, align 8
  %tobool = icmp ne %struct._GimpTag* %0, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._GimpTag*, %struct._GimpTag** %tag_or_null.addr, align 8
  %2 = bitcast %struct._GimpTag* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tag_or_null_ref, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.14

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag_or_null.addr, align 8
  %15 = bitcast %struct._GimpTag* %14 to i8*
  %call13 = call i8* @g_object_ref(i8* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %do.end, %entry
  ret void
}

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_tag_or_null_unref(%struct._GimpTag* %tag_or_null) #2 {
entry:
  %tag_or_null.addr = alloca %struct._GimpTag*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTag* %tag_or_null, %struct._GimpTag** %tag_or_null.addr, align 8
  %0 = load %struct._GimpTag*, %struct._GimpTag** %tag_or_null.addr, align 8
  %tobool = icmp ne %struct._GimpTag* %0, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._GimpTag*, %struct._GimpTag** %tag_or_null.addr, align 8
  %2 = bitcast %struct._GimpTag* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tag_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_tag_or_null_unref, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.13

if.end.12:                                        ; preds = %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %14 = load %struct._GimpTag*, %struct._GimpTag** %tag_or_null.addr, align 8
  %15 = bitcast %struct._GimpTag* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %do.end, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tag_class_init(%struct._GimpTagClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpTagClass*, align 8
  store %struct._GimpTagClass* %klass, %struct._GimpTagClass** %klass.addr, align 8
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
