; ModuleID = './app/widgets/gimplanguagestore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLanguageStoreClass = type { %struct._GtkListStoreClass, void (%struct._GimpLanguageStore*, i8*, i8*)* }
%struct._GtkListStoreClass = type { %struct._GObjectClass, void ()*, void ()*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpLanguageStore = type { %struct._GtkListStore }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSortable = type opaque
%struct._GError = type { i32, i32, i8* }

@gimp_language_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpLanguageStore\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_language_store_add = private unnamed_addr constant [24 x i8] c"gimp_language_store_add\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_LANGUAGE_STORE (store)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"label != NULL\00", align 1
@__func__.gimp_language_store_lookup = private unnamed_addr constant [27 x i8] c"gimp_language_store_lookup\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"code != NULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"iter != NULL\00", align 1
@gimp_language_store_parent_class = internal global i8* null, align 8
@GimpLanguageStore_private_offset = internal global i32 0, align 4
@gimp_language_store_init.column_types = private unnamed_addr constant [2 x i64] [i64 64, i64 64], align 16

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_language_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_language_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_language_store_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_list_store_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_language_store_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLanguageStore*)* @gimp_language_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_language_store_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_language_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_language_store_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_language_store_parent_class, align 8
  %1 = load i32, i32* @GimpLanguageStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLanguageStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLanguageStoreClass*
  call void @gimp_language_store_class_init(%struct._GimpLanguageStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_language_store_init(%struct._GimpLanguageStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpLanguageStore*, align 8
  %column_types = alloca [2 x i64], align 16
  store %struct._GimpLanguageStore* %store, %struct._GimpLanguageStore** %store.addr, align 8
  %0 = bitcast [2 x i64]* %column_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x i64]* @gimp_language_store_init.column_types to i8*), i64 16, i32 16, i1 false)
  %1 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %2 = bitcast %struct._GimpLanguageStore* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %column_types, i32 0, i32 0
  call void @gtk_list_store_set_column_types(%struct._GtkListStore* %3, i32 2, i64* %arraydecay)
  %4 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %5 = bitcast %struct._GimpLanguageStore* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_tree_sortable_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTreeSortable*
  call void @gtk_tree_sortable_set_sort_func(%struct._GtkTreeSortable* %6, i32 0, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)* @gimp_language_store_sort, i8* null, void (i8*)* null)
  %7 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %8 = bitcast %struct._GimpLanguageStore* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tree_sortable_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTreeSortable*
  call void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable* %9, i32 0, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_language_store_new() #3 {
entry:
  %call = call i64 @gimp_language_store_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkListStore*
  ret %struct._GtkListStore* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_language_store_add(%struct._GimpLanguageStore* %store, i8* %label, i8* %code) #3 {
entry:
  %store.addr = alloca %struct._GimpLanguageStore*, align 8
  %label.addr = alloca i8*, align 8
  %code.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLanguageStore* %store, %struct._GimpLanguageStore** %store.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %1 = bitcast %struct._GimpLanguageStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_language_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_language_store_add, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %label.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_language_store_add, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %15 = bitcast %struct._GimpLanguageStore* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpLanguageStoreClass*
  %add = getelementptr inbounds %struct._GimpLanguageStoreClass, %struct._GimpLanguageStoreClass* %17, i32 0, i32 1
  %18 = load void (%struct._GimpLanguageStore*, i8*, i8*)*, void (%struct._GimpLanguageStore*, i8*, i8*)** %add, align 8
  %19 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %20 = load i8*, i8** %label.addr, align 8
  %21 = load i8*, i8** %code.addr, align 8
  call void %18(%struct._GimpLanguageStore* %19, i8* %20, i8* %21)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_language_store_lookup(%struct._GimpLanguageStore* %store, i8* %code, %struct._GtkTreeIter* %iter) #3 {
entry:
  %retval = alloca i32, align 4
  %store.addr = alloca %struct._GimpLanguageStore*, align 8
  %code.addr = alloca i8*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %hyphen = alloca i8*, align 8
  %len = alloca i32, align 4
  %iter_valid = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %value = alloca i8*, align 8
  store %struct._GimpLanguageStore* %store, %struct._GimpLanguageStore** %store.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %1 = bitcast %struct._GimpLanguageStore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_language_store_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_language_store_lookup, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %code.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_language_store_lookup, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %cmp18 = icmp ne %struct._GtkTreeIter* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_language_store_lookup, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i8*, i8** %code.addr, align 8
  %call23 = call i8* @strchr(i8* %15, i32 45) #7
  store i8* %call23, i8** %hyphen, align 8
  %16 = load i8*, i8** %hyphen, align 8
  %tobool24 = icmp ne i8* %16, null
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.end.22
  %17 = load i8*, i8** %hyphen, align 8
  %18 = load i8*, i8** %code.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %len, align 4
  br label %if.end.29

if.else.26:                                       ; preds = %do.end.22
  %19 = load i8*, i8** %code.addr, align 8
  %call27 = call i64 @strlen(i8* %19) #7
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, i32* %len, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %20 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %21 = bitcast %struct._GimpLanguageStore* %20 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_tree_model_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call30)
  %22 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTreeModel*
  store %struct._GtkTreeModel* %22, %struct._GtkTreeModel** %model, align 8
  %23 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %24 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call32 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %23, %struct._GtkTreeIter* %24)
  store i32 %call32, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %25 = load i32, i32* %iter_valid, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %27 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %26, %struct._GtkTreeIter* %27, i32 1, i8** %value, i32 -1)
  %28 = load i8*, i8** %value, align 8
  %tobool35 = icmp ne i8* %28, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.42

land.lhs.true.36:                                 ; preds = %for.body
  %29 = load i8*, i8** %code.addr, align 8
  %30 = load i8*, i8** %value, align 8
  %31 = load i32, i32* %len, align 4
  %conv37 = sext i32 %31 to i64
  %call38 = call i32 @strncmp(i8* %29, i8* %30, i64 %conv37) #7
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.36
  %32 = load i8*, i8** %value, align 8
  call void @g_free(i8* %32)
  br label %for.end

if.end.42:                                        ; preds = %land.lhs.true.36, %for.body
  %33 = load i8*, i8** %value, align 8
  call void @g_free(i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %35 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %call43 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %34, %struct._GtkTreeIter* %35)
  store i32 %call43, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %36 = load i32, i32* %iter_valid, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.20, %if.else.14, %if.else.9
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare void @g_free(i8*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_language_store_class_init(%struct._GimpLanguageStoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLanguageStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpLanguageStoreClass* %klass, %struct._GimpLanguageStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpLanguageStoreClass*, %struct._GimpLanguageStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLanguageStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_language_store_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GimpLanguageStoreClass*, %struct._GimpLanguageStoreClass** %klass.addr, align 8
  %add = getelementptr inbounds %struct._GimpLanguageStoreClass, %struct._GimpLanguageStoreClass* %4, i32 0, i32 1
  store void (%struct._GimpLanguageStore*, i8*, i8*)* @gimp_language_store_real_add, void (%struct._GimpLanguageStore*, i8*, i8*)** %add, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_language_store_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_language_store_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_language_store_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_language_store_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpLanguageStore*
  %call5 = call i32 @gimp_language_store_parse_iso_codes(%struct._GimpLanguageStore* %11, %struct._GError** null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_language_store_real_add(%struct._GimpLanguageStore* %store, i8* %label, i8* %code) #3 {
entry:
  %store.addr = alloca %struct._GimpLanguageStore*, align 8
  %label.addr = alloca i8*, align 8
  %code.addr = alloca i8*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpLanguageStore* %store, %struct._GimpLanguageStore** %store.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  %0 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %1 = bitcast %struct._GimpLanguageStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_list_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkListStore*
  call void @gtk_list_store_append(%struct._GtkListStore* %2, %struct._GtkTreeIter* %iter)
  %3 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %4 = bitcast %struct._GimpLanguageStore* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_list_store_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkListStore*
  %6 = load i8*, i8** %label.addr, align 8
  %7 = load i8*, i8** %code.addr, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %5, %struct._GtkTreeIter* %iter, i32 0, i8* %6, i32 1, i8* %7, i32 -1)
  ret void
}

declare i32 @gimp_language_store_parse_iso_codes(%struct._GimpLanguageStore*, %struct._GError**) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gtk_list_store_set_column_types(%struct._GtkListStore*, i32, i64*) #1

declare void @gtk_tree_sortable_set_sort_func(%struct._GtkTreeSortable*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_sortable_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_language_store_sort(%struct._GtkTreeModel* %model, %struct._GtkTreeIter* %a, %struct._GtkTreeIter* %b, i8* %userdata) #3 {
entry:
  %retval = alloca i32, align 4
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %a.addr = alloca %struct._GtkTreeIter*, align 8
  %b.addr = alloca %struct._GtkTreeIter*, align 8
  %userdata.addr = alloca i8*, align 8
  %avalue = alloca %struct._GValue, align 8
  %bvalue = alloca %struct._GValue, align 8
  %cmp = alloca i32, align 4
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeIter* %a, %struct._GtkTreeIter** %a.addr, align 8
  store %struct._GtkTreeIter* %b, %struct._GtkTreeIter** %b.addr, align 8
  store i8* %userdata, i8** %userdata.addr, align 8
  %0 = bitcast %struct._GValue* %avalue to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = bitcast %struct._GValue* %bvalue to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  store i32 0, i32* %cmp, align 4
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %3 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %a.addr, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %3, i32 1, %struct._GValue* %avalue)
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %b.addr, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %5, i32 1, %struct._GValue* %bvalue)
  %call = call i8* @g_value_get_string(%struct._GValue* %avalue)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %cmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i8* @g_value_get_string(%struct._GValue* %bvalue)
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %cmp, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  call void @g_value_unset(%struct._GValue* %avalue)
  call void @g_value_unset(%struct._GValue* %bvalue)
  %6 = load i32, i32* %cmp, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %7 = load i32, i32* %cmp, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %9 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %a.addr, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %9, i32 0, %struct._GValue* %avalue)
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %b.addr, align 8
  call void @gtk_tree_model_get_value(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %11, i32 0, %struct._GValue* %bvalue)
  %call8 = call i8* @g_value_get_string(%struct._GValue* %avalue)
  %call9 = call i8* @g_value_get_string(%struct._GValue* %bvalue)
  %call10 = call i32 @g_utf8_collate(i8* %call8, i8* %call9) #7
  store i32 %call10, i32* %cmp, align 4
  call void @g_value_unset(%struct._GValue* %avalue)
  call void @g_value_unset(%struct._GValue* %bvalue)
  %12 = load i32, i32* %cmp, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare void @gtk_tree_sortable_set_sort_column_id(%struct._GtkTreeSortable*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_tree_model_get_value(%struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, %struct._GValue*) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_collate(i8*, i8*) #4

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
