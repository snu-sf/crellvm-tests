; ModuleID = './libgimpwidgets/gimpcolorprofilestore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorProfileStoreClass = type { %struct._GtkListStoreClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkListStoreClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpColorProfileStore = type { %struct._GtkListStore, i8* }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GimpConfigWriter = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_profile_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpColorProfileStore\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_color_profile_store_add = private unnamed_addr constant [29 x i8] c"gimp_color_profile_store_add\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GIMP_IS_COLOR_PROFILE_STORE (store)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"label != NULL || filename == NULL\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"profile\04None\00", align 1
@__func__._gimp_color_profile_store_history_add = private unnamed_addr constant [38 x i8] c"_gimp_color_profile_store_history_add\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"iter != NULL\00", align 1
@__func__._gimp_color_profile_store_history_reorder = private unnamed_addr constant [42 x i8] c"_gimp_color_profile_store_history_reorder\00", align 1
@gimp_color_profile_store_parent_class = internal global i8* null, align 8
@GimpColorProfileStore_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Select color profile from disk...\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"color-profile\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"GIMP color profile history\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%s: double index %d\00", align 1
@__func__.gimp_color_profile_store_save = private unnamed_addr constant [30 x i8] c"gimp_color_profile_store_save\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"end of color profile history\00", align 1
@__func__.gimp_color_profile_store_set_property = private unnamed_addr constant [38 x i8] c"gimp_color_profile_store_set_property\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"store->history == NULL\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"gimpcolorprofilestore.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@gimp_color_profile_store_init.types = private unnamed_addr constant [4 x i64] [i64 24, i64 64, i64 64, i64 24], align 16
@__func__.gimp_color_profile_store_history_insert = private unnamed_addr constant [40 x i8] c"gimp_color_profile_store_history_insert\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"label != NULL\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"index > -1\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_profile_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_profile_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_profile_store_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_list_store_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_profile_store_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorProfileStore*)* @gimp_color_profile_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_profile_store_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_profile_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_profile_store_parent_class, align 8
  %1 = load i32, i32* @GimpColorProfileStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorProfileStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorProfileStoreClass*
  call void @gimp_color_profile_store_class_init(%struct._GimpColorProfileStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_init(%struct._GimpColorProfileStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %types = alloca [4 x i64], align 16
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  %0 = bitcast [4 x i64]* %types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i64]* @gimp_color_profile_store_init.types to i8*), i64 32, i32 16, i1 false)
  %1 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %2 = bitcast %struct._GimpColorProfileStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %types, i32 0, i32 0
  call void @gtk_list_store_set_column_types(%struct._GtkListStore* %3, i32 4, i64* %arraydecay)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_color_profile_store_new(i8* %history) #3 {
entry:
  %history.addr = alloca i8*, align 8
  store i8* %history, i8** %history.addr, align 8
  %call = call i64 @gimp_color_profile_store_get_type() #7
  %0 = load i8*, i8** %history.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %0, i8* null)
  %1 = bitcast i8* %call1 to %struct._GtkListStore*
  ret %struct._GtkListStore* %1
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_profile_store_add(%struct._GimpColorProfileStore* %store, i8* %filename, i8* %label) #3 {
entry:
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %filename.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %separator = alloca %struct._GtkTreeIter, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %1 = bitcast %struct._GimpColorProfileStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_profile_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_profile_store_add, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %label.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i8*, i8** %filename.addr, align 8
  %cmp13 = icmp eq i8* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_profile_store_add, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load i8*, i8** %filename.addr, align 8
  %tobool18 = icmp ne i8* %15, null
  br i1 %tobool18, label %if.end.23, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %do.end.17
  %16 = load i8*, i8** %label.addr, align 8
  %tobool20 = icmp ne i8* %16, null
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19
  %call22 = call i8* @g_dpgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 8)
  store i8* %call22, i8** %label.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.19, %do.end.17
  %17 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  call void @gimp_color_profile_store_get_separator(%struct._GimpColorProfileStore* %17, %struct._GtkTreeIter* %separator, i32 1)
  %18 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %19 = bitcast %struct._GimpColorProfileStore* %18 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_list_store_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call24)
  %20 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkListStore*
  call void @gtk_list_store_insert_before(%struct._GtkListStore* %20, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %separator)
  %21 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %22 = bitcast %struct._GimpColorProfileStore* %21 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_list_store_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call26)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkListStore*
  %24 = load i8*, i8** %filename.addr, align 8
  %25 = load i8*, i8** %label.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %23, %struct._GtkTreeIter* %iter, i32 0, i32 0, i32 2, i8* %24, i32 1, i8* %25, i32 3, i32 -1, i32 -1)
  br label %return

return:                                           ; preds = %if.end.23, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_get_separator(%struct._GimpColorProfileStore* %store, %struct._GtkTreeIter* %iter, i32 %top) #3 {
entry:
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %top.addr = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter_valid = alloca i32, align 4
  %needle = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i32 %top, i32* %top.addr, align 4
  %0 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %1 = bitcast %struct._GimpColorProfileStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %2, %struct._GtkTreeModel** %model, align 8
  %3 = load i32, i32* %top.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 1, i32 2
  store i32 %cond, i32* %needle, align 4
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call2 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %5)
  store i32 %call2, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %iter_valid, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %8 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %8, i32 0, i32* %type, i32 -1)
  %9 = load i32, i32* %type, align 4
  %10 = load i32, i32* %needle, align 4
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call4 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %12)
  store i32 %call4, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %14 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %15 = load i32, i32* %top.addr, align 4
  call void @gimp_color_profile_store_create_separator(%struct._GimpColorProfileStore* %13, %struct._GtkTreeIter* %14, i32 %15)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @gtk_list_store_insert_before(%struct._GtkListStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_color_profile_store_history_add(%struct._GimpColorProfileStore* %store, i8* %filename, i8* %label, %struct._GtkTreeIter* %iter) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %filename.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter_valid = alloca i32, align 4
  %max = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %type = alloca i32, align 4
  %index = alloca i32, align 4
  %this = alloca i8*, align 8
  %basename = alloca i8*, align 8
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i32 -1, i32* %max, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %1 = bitcast %struct._GimpColorProfileStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_profile_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__._gimp_color_profile_store_history_add, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %cmp12 = icmp ne %struct._GtkTreeIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__._gimp_color_profile_store_history_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %15 = bitcast %struct._GimpColorProfileStore* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_tree_model_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %16, %struct._GtkTreeModel** %model, align 8
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call19 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %18)
  store i32 %call19, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %19 = load i32, i32* %iter_valid, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %21, i32 0, i32* %type, i32 3, i32* %index, i32 -1)
  %22 = load i32, i32* %type, align 4
  %cmp24 = icmp ne i32 %22, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  br label %for.inc

if.end.26:                                        ; preds = %for.body
  %23 = load i32, i32* %index, align 4
  %24 = load i32, i32* %max, align 4
  %cmp27 = icmp sgt i32 %23, %24
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %25 = load i32, i32* %index, align 4
  store i32 %25, i32* %max, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %26 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %27 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %27, i32 2, i8** %this, i32 -1)
  %28 = load i8*, i8** %this, align 8
  %tobool30 = icmp ne i8* %28, null
  br i1 %tobool30, label %land.lhs.true.31, label %lor.lhs.false

land.lhs.true.31:                                 ; preds = %if.end.29
  %29 = load i8*, i8** %filename.addr, align 8
  %tobool32 = icmp ne i8* %29, null
  br i1 %tobool32, label %land.lhs.true.33, label %lor.lhs.false

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %30 = load i8*, i8** %filename.addr, align 8
  %31 = load i8*, i8** %this, align 8
  %call34 = call i32 @strcmp(i8* %30, i8* %31) #8
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.33, %land.lhs.true.31, %if.end.29
  %32 = load i8*, i8** %this, align 8
  %tobool36 = icmp ne i8* %32, null
  br i1 %tobool36, label %if.end.47, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %lor.lhs.false
  %33 = load i8*, i8** %filename.addr, align 8
  %tobool38 = icmp ne i8* %33, null
  br i1 %tobool38, label %if.end.47, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37, %land.lhs.true.33
  %34 = load i8*, i8** %label.addr, align 8
  %tobool40 = icmp ne i8* %34, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.46

land.lhs.true.41:                                 ; preds = %if.then.39
  %35 = load i8*, i8** %label.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv = sext i8 %36 to i32
  %tobool42 = icmp ne i32 %conv, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true.41
  %37 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %38 = bitcast %struct._GimpColorProfileStore* %37 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_list_store_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call44)
  %39 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkListStore*
  %40 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %41 = load i8*, i8** %label.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %39, %struct._GtkTreeIter* %40, i32 1, i8* %41, i32 -1)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.then.39
  %42 = load i8*, i8** %this, align 8
  call void @g_free(i8* %42)
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.37, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.47, %if.then.25
  %43 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %44 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call48 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %43, %struct._GtkTreeIter* %44)
  store i32 %call48, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i8*, i8** %filename.addr, align 8
  %tobool49 = icmp ne i8* %45, null
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %for.end
  %46 = load i8*, i8** %label.addr, align 8
  %tobool52 = icmp ne i8* %46, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.end.51
  %47 = load i8*, i8** %label.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv54 = sext i8 %48 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %land.lhs.true.53
  %49 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %50 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %51 = load i8*, i8** %filename.addr, align 8
  %52 = load i8*, i8** %label.addr, align 8
  %53 = load i32, i32* %max, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %max, align 4
  %call57 = call i32 @gimp_color_profile_store_history_insert(%struct._GimpColorProfileStore* %49, %struct._GtkTreeIter* %50, i8* %51, i8* %52, i32 %inc)
  store i32 %call57, i32* %iter_valid, align 4
  br label %if.end.63

if.else.58:                                       ; preds = %land.lhs.true.53, %if.end.51
  %54 = load i8*, i8** %filename.addr, align 8
  %call60 = call noalias i8* @g_filename_display_basename(i8* %54)
  store i8* %call60, i8** %basename, align 8
  %55 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %56 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %57 = load i8*, i8** %filename.addr, align 8
  %58 = load i8*, i8** %basename, align 8
  %59 = load i32, i32* %max, align 4
  %inc61 = add nsw i32 %59, 1
  store i32 %inc61, i32* %max, align 4
  %call62 = call i32 @gimp_color_profile_store_history_insert(%struct._GimpColorProfileStore* %55, %struct._GtkTreeIter* %56, i8* %57, i8* %58, i32 %inc61)
  store i32 %call62, i32* %iter_valid, align 4
  %60 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %60)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.58, %if.then.56
  %61 = load i32, i32* %iter_valid, align 4
  store i32 %61, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then.50, %if.end.46, %if.else.14, %if.else.9
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_free(i8*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_profile_store_history_insert(%struct._GimpColorProfileStore* %store, %struct._GtkTreeIter* %iter, i8* %filename, i8* %label, i32 %index) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %filename.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %sibling = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %type = alloca i32, align 4
  %this_index = alloca i32, align 4
  %this_label = alloca i8*, align 8
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %1 = bitcast %struct._GimpColorProfileStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_model_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %2, %struct._GtkTreeModel** %model, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_color_profile_store_history_insert, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %4 = load i8*, i8** %label.addr, align 8
  %cmp3 = icmp ne i8* %4, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_color_profile_store_history_insert, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %5 = load i32, i32* %index.addr, align 4
  %cmp9 = icmp sgt i32 %5, -1
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_color_profile_store_history_insert, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %6 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %7 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gimp_color_profile_store_get_separator(%struct._GimpColorProfileStore* %6, %struct._GtkTreeIter* %7, i32 0)
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call14 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %sibling)
  store i32 %call14, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.13
  %9 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %sibling, i32 0, i32* %type, i32 3, i32* %this_index, i32 -1)
  %11 = load i32, i32* %type, align 4
  %cmp15 = icmp eq i32 %11, 2
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %for.body
  %12 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %13 = bitcast %struct._GimpColorProfileStore* %12 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_list_store_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call17)
  %14 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkListStore*
  %15 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_list_store_insert_before(%struct._GtkListStore* %14, %struct._GtkTreeIter* %15, %struct._GtkTreeIter* %sibling)
  br label %for.end

if.end.19:                                        ; preds = %for.body
  %16 = load i32, i32* %type, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end.19
  %17 = load i32, i32* %this_index, align 4
  %cmp21 = icmp sgt i32 %17, -1
  br i1 %cmp21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %land.lhs.true
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %sibling, i32 1, i8** %this_label, i32 -1)
  %19 = load i8*, i8** %this_label, align 8
  %tobool23 = icmp ne i8* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.30

land.lhs.true.24:                                 ; preds = %if.then.22
  %20 = load i8*, i8** %label.addr, align 8
  %21 = load i8*, i8** %this_label, align 8
  %call25 = call i32 @g_utf8_collate(i8* %20, i8* %21) #8
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %land.lhs.true.24
  %22 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %23 = bitcast %struct._GimpColorProfileStore* %22 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_list_store_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call28)
  %24 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkListStore*
  %25 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_list_store_insert_before(%struct._GtkListStore* %24, %struct._GtkTreeIter* %25, %struct._GtkTreeIter* %sibling)
  %26 = load i8*, i8** %this_label, align 8
  call void @g_free(i8* %26)
  br label %for.end

if.end.30:                                        ; preds = %land.lhs.true.24, %if.then.22
  %27 = load i8*, i8** %this_label, align 8
  call void @g_free(i8* %27)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true, %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %28 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call32 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %28, %struct._GtkTreeIter* %sibling)
  store i32 %call32, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %if.then.16, %for.cond
  %29 = load i32, i32* %iter_valid, align 4
  %tobool33 = icmp ne i32 %29, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %for.end
  %30 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %31 = bitcast %struct._GimpColorProfileStore* %30 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_list_store_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call35)
  %32 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkListStore*
  %33 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %34 = load i8*, i8** %filename.addr, align 8
  %35 = load i8*, i8** %label.addr, align 8
  %36 = load i32, i32* %index.addr, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %32, %struct._GtkTreeIter* %33, i32 0, i32 0, i32 2, i8* %34, i32 1, i8* %35, i32 3, i32 %36, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %for.end
  %37 = load i32, i32* %iter_valid, align 4
  store i32 %37, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.else.11, %if.else.5, %if.else
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare noalias i8* @g_filename_display_basename(i8*) #1

; Function Attrs: nounwind uwtable
define hidden void @_gimp_color_profile_store_history_reorder(%struct._GimpColorProfileStore* %store, %struct._GtkTreeIter* %iter) #3 {
entry:
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %index = alloca i32, align 4
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %type = alloca i32, align 4
  %this_index = alloca i32, align 4
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %1 = bitcast %struct._GimpColorProfileStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_profile_store_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__._gimp_color_profile_store_history_reorder, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %cmp12 = icmp ne %struct._GtkTreeIter* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__._gimp_color_profile_store_history_reorder, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %15 = bitcast %struct._GimpColorProfileStore* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_tree_model_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %16, %struct._GtkTreeModel** %model, align 8
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %18, i32 3, i32* %index, i32 -1)
  %19 = load i32, i32* %index, align 4
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.16
  br label %for.end

if.end.21:                                        ; preds = %do.end.16
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call22 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %21)
  store i32 %call22, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %22 = load i32, i32* %iter_valid, align 4
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %24 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %24, i32 0, i32* %type, i32 3, i32* %this_index, i32 -1)
  %25 = load i32, i32* %type, align 4
  %cmp26 = icmp eq i32 %25, 0
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.39

land.lhs.true.27:                                 ; preds = %for.body
  %26 = load i32, i32* %this_index, align 4
  %cmp28 = icmp sgt i32 %26, -1
  br i1 %cmp28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %land.lhs.true.27
  %27 = load i32, i32* %this_index, align 4
  %28 = load i32, i32* %index, align 4
  %cmp30 = icmp slt i32 %27, %28
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.then.29
  %29 = load i32, i32* %this_index, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %this_index, align 4
  br label %if.end.36

if.else.32:                                       ; preds = %if.then.29
  %30 = load i32, i32* %this_index, align 4
  %31 = load i32, i32* %index, align 4
  %cmp33 = icmp eq i32 %30, %31
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else.32
  store i32 0, i32* %this_index, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.31
  %32 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %33 = bitcast %struct._GimpColorProfileStore* %32 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_list_store_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call37)
  %34 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkListStore*
  %35 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %36 = load i32, i32* %this_index, align 4
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %34, %struct._GtkTreeIter* %35, i32 3, i32 %36, i32 -1)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %land.lhs.true.27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %37 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %38 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call40 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %37, %struct._GtkTreeIter* %38)
  store i32 %call40, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %if.then.20, %for.cond
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_class_init(%struct._GimpColorProfileStoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorProfileStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpColorProfileStoreClass* %klass, %struct._GimpColorProfileStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpColorProfileStoreClass*, %struct._GimpColorProfileStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorProfileStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_color_profile_store_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_profile_store_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_profile_store_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_profile_store_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_profile_store_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call1)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpColorProfileStore*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileStore*
  store %struct._GimpColorProfileStore* %2, %struct._GimpColorProfileStore** %store, align 8
  %3 = load i8*, i8** @gimp_color_profile_store_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_color_profile_store_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %13 = bitcast %struct._GimpColorProfileStore* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_list_store_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %14, %struct._GtkTreeIter* %iter)
  %15 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %16 = bitcast %struct._GimpColorProfileStore* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_list_store_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkListStore*
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)) #6
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %17, %struct._GtkTreeIter* %iter, i32 0, i32 3, i32 1, i8* %call9, i32 -1)
  %18 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %18, i32 0, i32 1
  %19 = load i8*, i8** %history, align 8
  %tobool10 = icmp ne i8* %19, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %20 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %21 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history12 = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %21, i32 0, i32 1
  %22 = load i8*, i8** %history12, align 8
  %call13 = call i32 @gimp_color_profile_store_load(%struct._GimpColorProfileStore* %20, i8* %22, %struct._GError** null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpColorProfileStore*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileStore*
  store %struct._GimpColorProfileStore* %2, %struct._GimpColorProfileStore** %store, align 8
  %3 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %3, i32 0, i32 1
  %4 = load i8*, i8** %history, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %6 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history2 = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %6, i32 0, i32 1
  %7 = load i8*, i8** %history2, align 8
  %call3 = call i32 @gimp_color_profile_store_save(%struct._GimpColorProfileStore* %5, i8* %7, %struct._GError** null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_color_profile_store_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpColorProfileStore*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileStore*
  store %struct._GimpColorProfileStore* %2, %struct._GimpColorProfileStore** %store, align 8
  %3 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %3, i32 0, i32 1
  %4 = load i8*, i8** %history, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history2 = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %5, i32 0, i32 1
  %6 = load i8*, i8** %history2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history3 = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %7, i32 0, i32 1
  store i8* null, i8** %history3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_color_profile_store_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %store = alloca %struct._GimpColorProfileStore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileStore*
  store %struct._GimpColorProfileStore* %2, %struct._GimpColorProfileStore** %store, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %4, i32 0, i32 1
  %5 = load i8*, i8** %history, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_color_profile_store_set_property, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history3 = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %7, i32 0, i32 1
  store i8* %call2, i8** %history3, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.4

do.body.4:                                        ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %11, i8* %13, i8* %call5, i8* %call8)
  br label %do.end.9

do.end.9:                                         ; preds = %do.body.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end.9, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %store = alloca %struct._GimpColorProfileStore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_profile_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorProfileStore*
  store %struct._GimpColorProfileStore* %2, %struct._GimpColorProfileStore** %store, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store, align 8
  %history = getelementptr inbounds %struct._GimpColorProfileStore, %struct._GimpColorProfileStore* %5, i32 0, i32 1
  %6 = load i8*, i8** %history, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_profile_store_load(%struct._GimpColorProfileStore* %store, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %token = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GScanner* @gimp_scanner_new_file(i8* %0, %struct._GError** %1)
  store %struct._GScanner* %call, %struct._GScanner** %scanner, align 8
  %2 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool = icmp ne %struct._GScanner* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %3, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* null)
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call1 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %4)
  %5 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call1, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call2 = call i32 @g_scanner_get_next_token(%struct._GScanner* %6)
  store i32 %call2, i32* %token, align 4
  %7 = load i32, i32* %token, align 4
  switch i32 %7, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.3
    i32 41, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  %8 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %call4 = call i32 @gimp_color_profile_store_load_profile(%struct._GimpColorProfileStore* %8, %struct._GScanner* %9, i32 %10)
  store i32 %call4, i32* %token, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.3, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %token, align 4
  %cmp6 = icmp ne i32 %11, 40
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %while.end
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call8 = call i32 @g_scanner_get_next_token(%struct._GScanner* %12)
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %14 = load i32, i32* %token, align 4
  %call9 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #6
  call void @g_scanner_unexp_token(%struct._GScanner* %13, i32 %14, i8* null, i8* null, i8* null, i8* %call9, i32 1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %while.end
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %15)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #1

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #1

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_profile_store_load_profile(%struct._GimpColorProfileStore* %store, %struct._GScanner* %scanner, i32 %index) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %index.addr = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %label = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* null, i8** %label, align 8
  store i8* null, i8** %uri, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_string(%struct._GScanner* %0, i8** %label)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %1, i8** %uri)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %uri, align 8
  %call3 = call noalias i8* @g_filename_from_uri(i8* %2, i8** null, %struct._GError** null)
  store i8* %call3, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %tobool4 = icmp ne i8* %3, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.then
  %4 = load i8*, i8** %filename, align 8
  %call6 = call i32 @g_file_test(i8* %4, i32 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.5
  %5 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %6 = load i8*, i8** %filename, align 8
  %7 = load i8*, i8** %label, align 8
  %8 = load i32, i32* %index.addr, align 4
  %call9 = call i32 @gimp_color_profile_store_history_insert(%struct._GimpColorProfileStore* %5, %struct._GtkTreeIter* %iter, i8* %6, i8* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.5, %if.then
  %9 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %label, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %11)
  store i32 41, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %entry
  %12 = load i8*, i8** %label, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %13)
  store i32 264, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.end
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #1

declare void @gimp_scanner_destroy(%struct._GScanner*) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare noalias i8* @g_filename_from_uri(i8*, i8**, %struct._GError**) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_color_profile_store_save(%struct._GimpColorProfileStore* %store, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %labels = alloca [8 x i8*], align 16
  %filenames = alloca [8 x i8*], align 16
  %iter_valid = alloca i32, align 4
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %index = alloca i32, align 4
  %uri = alloca i8*, align 8
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = bitcast [8 x i8*]* %labels to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 16, i1 false)
  %1 = bitcast [8 x i8*]* %filenames to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 64, i32 16, i1 false)
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %2, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), %struct._GError** %3)
  store %struct._GimpConfigWriter* %call, %struct._GimpConfigWriter** %writer, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool = icmp ne %struct._GimpConfigWriter* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %6 = bitcast %struct._GimpColorProfileStore* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %7, %struct._GtkTreeModel** %model, align 8
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call3 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter)
  store i32 %call3, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %iter_valid, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, i32 0, i32* %type, i32 3, i32* %index, i32 -1)
  %11 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %index, align 4
  %cmp5 = icmp sge i32 %12, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.19

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %index, align 4
  %cmp7 = icmp slt i32 %13, 8
  br i1 %cmp7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %land.lhs.true.6
  %14 = load i32, i32* %index, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* %labels, i32 0, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %16 = load i32, i32* %index, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %filenames, i32 0, i64 %idxprom10
  %17 = load i8*, i8** %arrayidx11, align 8
  %tobool12 = icmp ne i8* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.then.8
  %18 = load i32, i32* %index, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_color_profile_store_save, i32 0, i32 0), i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false
  %19 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %20 = load i32, i32* %index, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [8 x i8*], [8 x i8*]* %labels, i32 0, i64 %idxprom15
  %21 = load i32, i32* %index, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [8 x i8*], [8 x i8*]* %filenames, i32 0, i64 %idxprom17
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %19, %struct._GtkTreeIter* %iter, i32 1, i8** %arrayidx16, i32 2, i8** %arrayidx18, i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.14, %land.lhs.true.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call20 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter)
  store i32 %call20, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.45, %for.end
  %23 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %23, 8
  br i1 %cmp22, label %for.body.23, label %for.end.46

for.body.23:                                      ; preds = %for.cond.21
  %24 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [8 x i8*], [8 x i8*]* %filenames, i32 0, i64 %idxprom24
  %25 = load i8*, i8** %arrayidx25, align 8
  %tobool26 = icmp ne i8* %25, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.40

land.lhs.true.27:                                 ; preds = %for.body.23
  %26 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [8 x i8*], [8 x i8*]* %labels, i32 0, i64 %idxprom28
  %27 = load i8*, i8** %arrayidx29, align 8
  %tobool30 = icmp ne i8* %27, null
  br i1 %tobool30, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %land.lhs.true.27
  %28 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [8 x i8*], [8 x i8*]* %filenames, i32 0, i64 %idxprom32
  %29 = load i8*, i8** %arrayidx33, align 8
  %call34 = call noalias i8* @g_filename_to_uri(i8* %29, i8* null, %struct._GError** null)
  store i8* %call34, i8** %uri, align 8
  %30 = load i8*, i8** %uri, align 8
  %tobool35 = icmp ne i8* %30, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.then.31
  %31 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  %32 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [8 x i8*], [8 x i8*]* %labels, i32 0, i64 %idxprom37
  %34 = load i8*, i8** %arrayidx38, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %32, i8* %34)
  %35 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %36 = load i8*, i8** %uri, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %35, i8* %36)
  %37 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %37)
  %38 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %38)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.then.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.27, %for.body.23
  %39 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %39 to i64
  %arrayidx42 = getelementptr inbounds [8 x i8*], [8 x i8*]* %filenames, i32 0, i64 %idxprom41
  %40 = load i8*, i8** %arrayidx42, align 8
  call void @g_free(i8* %40)
  %41 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %41 to i64
  %arrayidx44 = getelementptr inbounds [8 x i8*], [8 x i8*]* %labels, i32 0, i64 %idxprom43
  %42 = load i8*, i8** %arrayidx44, align 8
  call void @g_free(i8* %42)
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.40
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.21

for.end.46:                                       ; preds = %for.cond.21
  %44 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %45 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call47 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), %struct._GError** %45)
  store i32 %call47, i32* %retval
  br label %return

return:                                           ; preds = %for.end.46, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #1

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_type_name(i64) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gtk_list_store_set_column_types(%struct._GtkListStore*, i32, i64*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_collate(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_color_profile_store_create_separator(%struct._GimpColorProfileStore* %store, %struct._GtkTreeIter* %iter, i32 %top) #3 {
entry:
  %store.addr = alloca %struct._GimpColorProfileStore*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %top.addr = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %sibling = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct._GimpColorProfileStore* %store, %struct._GimpColorProfileStore** %store.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i32 %top, i32* %top.addr, align 4
  %0 = load i32, i32* %top.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %2 = bitcast %struct._GimpColorProfileStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  %4 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_list_store_prepend(%struct._GtkListStore* %3, %struct._GtkTreeIter* %4)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %5 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %6 = bitcast %struct._GimpColorProfileStore* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_tree_model_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %7, %struct._GtkTreeModel** %model, align 8
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call4 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %sibling)
  store i32 %call4, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %iter_valid, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %sibling, i32 0, i32* %type, i32 -1)
  %11 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call7 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %sibling)
  store i32 %call7, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %13 = load i32, i32* %iter_valid, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.end
  %14 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %15 = bitcast %struct._GimpColorProfileStore* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_list_store_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkListStore*
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gtk_list_store_insert_before(%struct._GtkListStore* %16, %struct._GtkTreeIter* %17, %struct._GtkTreeIter* %sibling)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %for.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %18 = load %struct._GimpColorProfileStore*, %struct._GimpColorProfileStore** %store.addr, align 8
  %19 = bitcast %struct._GimpColorProfileStore* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_list_store_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkListStore*
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %22 = load i32, i32* %top.addr, align 4
  %tobool16 = icmp ne i32 %22, 0
  %cond = select i1 %tobool16, i32 1, i32 2
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %20, %struct._GtkTreeIter* %21, i32 0, i32 %cond, i32 3, i32 -1, i32 -1)
  ret void
}

declare void @gtk_list_store_prepend(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
