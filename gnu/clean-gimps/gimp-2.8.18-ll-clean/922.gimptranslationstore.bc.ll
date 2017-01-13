; ModuleID = './app/widgets/gimptranslationstore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTranslationStoreClass = type { %struct._GimpLanguageStoreClass }
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
%struct._GimpTranslationStore = type { %struct._GimpLanguageStore, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GDir = type opaque
%struct._GError = type { i32, i32, i8* }

@gimp_translation_store_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpTranslationStore\00", align 1
@gimp_translation_store_parent_class = internal global i8* null, align 8
@GimpTranslationStore_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"System Language\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"English\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"en_US\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gimp20.mo\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_translation_store_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_translation_store_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_translation_store_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_language_store_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_translation_store_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTranslationStore*)* @gimp_translation_store_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_translation_store_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_translation_store_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_language_store_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_translation_store_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_translation_store_parent_class, align 8
  %1 = load i32, i32* @GimpTranslationStore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTranslationStore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTranslationStoreClass*
  call void @gimp_translation_store_class_init(%struct._GimpTranslationStoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_translation_store_init(%struct._GimpTranslationStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpTranslationStore*, align 8
  store %struct._GimpTranslationStore* %store, %struct._GimpTranslationStore** %store.addr, align 8
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  %0 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store.addr, align 8
  %map = getelementptr inbounds %struct._GimpTranslationStore, %struct._GimpTranslationStore* %0, i32 0, i32 1
  store %struct._GHashTable* %call, %struct._GHashTable** %map, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkListStore* @gimp_translation_store_new() #3 {
entry:
  %call = call i64 @gimp_translation_store_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkListStore*
  ret %struct._GtkListStore* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_translation_store_class_init(%struct._GimpTranslationStoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTranslationStoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %store_class = alloca %struct._GimpLanguageStoreClass*, align 8
  store %struct._GimpTranslationStoreClass* %klass, %struct._GimpTranslationStoreClass** %klass.addr, align 8
  %0 = load %struct._GimpTranslationStoreClass*, %struct._GimpTranslationStoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTranslationStoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTranslationStoreClass*, %struct._GimpTranslationStoreClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTranslationStoreClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_language_store_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpLanguageStoreClass*
  store %struct._GimpLanguageStoreClass* %5, %struct._GimpLanguageStoreClass** %store_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_translation_store_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GimpLanguageStoreClass*, %struct._GimpLanguageStoreClass** %store_class, align 8
  %add = getelementptr inbounds %struct._GimpLanguageStoreClass, %struct._GimpLanguageStoreClass* %7, i32 0, i32 1
  store void (%struct._GimpLanguageStore*, i8*, i8*)* @gimp_translation_store_add, void (%struct._GimpLanguageStore*, i8*, i8*)** %add, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_translation_store_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %store = alloca %struct._GimpTranslationStore*, align 8
  %label = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_translation_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTranslationStore*
  store %struct._GimpTranslationStore* %2, %struct._GimpTranslationStore** %store, align 8
  %3 = load i8*, i8** @gimp_translation_store_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_translation_store_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store, align 8
  call void @gimp_translation_store_populate(%struct._GimpTranslationStore* %12)
  %13 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store, align 8
  %map = getelementptr inbounds %struct._GimpTranslationStore, %struct._GimpTranslationStore* %13, i32 0, i32 1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %map, align 8
  call void @g_hash_table_unref(%struct._GHashTable* %14)
  %15 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store, align 8
  %map5 = getelementptr inbounds %struct._GimpTranslationStore, %struct._GimpTranslationStore* %15, i32 0, i32 1
  store %struct._GHashTable* null, %struct._GHashTable** %map5, align 8
  %16 = load i8*, i8** @gimp_translation_store_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call6 = call i64 @gimp_language_store_get_type() #6
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call6)
  %18 = bitcast %struct._GTypeClass* %call7 to %struct._GimpLanguageStoreClass*
  %add = getelementptr inbounds %struct._GimpLanguageStoreClass, %struct._GimpLanguageStoreClass* %18, i32 0, i32 1
  %19 = load void (%struct._GimpLanguageStore*, i8*, i8*)*, void (%struct._GimpLanguageStore*, i8*, i8*)** %add, align 8
  %20 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store, align 8
  %21 = bitcast %struct._GimpTranslationStore* %20 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_language_store_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call8)
  %22 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpLanguageStore*
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)) #7
  call void %19(%struct._GimpLanguageStore* %22, i8* %call10, i8* null)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #7
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call12, i8** %label, align 8
  %23 = load i8*, i8** @gimp_translation_store_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call13 = call i64 @gimp_language_store_get_type() #6
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call13)
  %25 = bitcast %struct._GTypeClass* %call14 to %struct._GimpLanguageStoreClass*
  %add15 = getelementptr inbounds %struct._GimpLanguageStoreClass, %struct._GimpLanguageStoreClass* %25, i32 0, i32 1
  %26 = load void (%struct._GimpLanguageStore*, i8*, i8*)*, void (%struct._GimpLanguageStore*, i8*, i8*)** %add15, align 8
  %27 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store, align 8
  %28 = bitcast %struct._GimpTranslationStore* %27 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_language_store_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call16)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpLanguageStore*
  %30 = load i8*, i8** %label, align 8
  call void %26(%struct._GimpLanguageStore* %29, i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %31 = load i8*, i8** %label, align 8
  call void @g_free(i8* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_translation_store_add(%struct._GimpLanguageStore* %store, i8* %lang, i8* %code) #3 {
entry:
  %store.addr = alloca %struct._GimpLanguageStore*, align 8
  %lang.addr = alloca i8*, align 8
  %code.addr = alloca i8*, align 8
  store %struct._GimpLanguageStore* %store, %struct._GimpLanguageStore** %store.addr, align 8
  store i8* %lang, i8** %lang.addr, align 8
  store i8* %code, i8** %code.addr, align 8
  %0 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %store.addr, align 8
  %1 = bitcast %struct._GimpLanguageStore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_translation_store_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTranslationStore*
  %map = getelementptr inbounds %struct._GimpTranslationStore, %struct._GimpTranslationStore* %2, i32 0, i32 1
  %3 = load %struct._GHashTable*, %struct._GHashTable** %map, align 8
  %4 = load i8*, i8** %code.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %4)
  %5 = load i8*, i8** %lang.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %5)
  %call4 = call i32 @g_hash_table_replace(%struct._GHashTable* %3, i8* %call2, i8* %call3)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_translation_store_populate(%struct._GimpTranslationStore* %store) #3 {
entry:
  %store.addr = alloca %struct._GimpTranslationStore*, align 8
  %dir = alloca %struct._GDir*, align 8
  %dirname = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %language_store = alloca %struct._GimpLanguageStore*, align 8
  %label = alloca i8*, align 8
  store %struct._GimpTranslationStore* %store, %struct._GimpTranslationStore** %store.addr, align 8
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call %struct._GDir* @g_dir_open(i8* %call, i32 0, %struct._GError** null)
  store %struct._GDir* %call1, %struct._GDir** %dir, align 8
  %0 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool = icmp ne %struct._GDir* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.end
  %1 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call2 = call i8* @g_dir_read_name(%struct._GDir* %1)
  store i8* %call2, i8** %dirname, align 8
  %cmp = icmp ne i8* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i8* @gimp_locale_directory() #6
  %2 = load i8*, i8** %dirname, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call3, i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %filename, align 8
  %3 = load i8*, i8** %filename, align 8
  %call5 = call i32 @g_file_test(i8* %3, i32 16)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %while.body
  %4 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store.addr, align 8
  %5 = load i8*, i8** %dirname, align 8
  %call8 = call i8* @gimp_translation_store_map(%struct._GimpTranslationStore* %4, i8* %5)
  store i8* %call8, i8** %lang, align 8
  %6 = load i8*, i8** %lang, align 8
  %tobool9 = icmp ne i8* %6, null
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.then.7
  %7 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store.addr, align 8
  %8 = bitcast %struct._GimpTranslationStore* %7 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_language_store_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call11)
  %9 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpLanguageStore*
  store %struct._GimpLanguageStore* %9, %struct._GimpLanguageStore** %language_store, align 8
  %10 = load i8*, i8** %lang, align 8
  %11 = load i8*, i8** %dirname, align 8
  %call13 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %10, i8* %11)
  store i8* %call13, i8** %label, align 8
  %12 = load i8*, i8** @gimp_translation_store_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call14 = call i64 @gimp_language_store_get_type() #6
  %call15 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call14)
  %14 = bitcast %struct._GTypeClass* %call15 to %struct._GimpLanguageStoreClass*
  %add = getelementptr inbounds %struct._GimpLanguageStoreClass, %struct._GimpLanguageStoreClass* %14, i32 0, i32 1
  %15 = load void (%struct._GimpLanguageStore*, i8*, i8*)*, void (%struct._GimpLanguageStore*, i8*, i8*)** %add, align 8
  %16 = load %struct._GimpLanguageStore*, %struct._GimpLanguageStore** %language_store, align 8
  %17 = load i8*, i8** %label, align 8
  %18 = load i8*, i8** %dirname, align 8
  call void %15(%struct._GimpLanguageStore* %16, i8* %17, i8* %18)
  %19 = load i8*, i8** %label, align 8
  call void @g_free(i8* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.then.7
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %while.body
  %20 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %20)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %21)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare void @g_hash_table_unref(%struct._GHashTable*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #2

declare i8* @g_dir_read_name(%struct._GDir*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_translation_store_map(%struct._GimpTranslationStore* %store, i8* %locale) #3 {
entry:
  %store.addr = alloca %struct._GimpTranslationStore*, align 8
  %locale.addr = alloca i8*, align 8
  %lang = alloca i8*, align 8
  %delimiter = alloca i8*, align 8
  %copy = alloca i8*, align 8
  store %struct._GimpTranslationStore* %store, %struct._GimpTranslationStore** %store.addr, align 8
  store i8* %locale, i8** %locale.addr, align 8
  %0 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store.addr, align 8
  %map = getelementptr inbounds %struct._GimpTranslationStore, %struct._GimpTranslationStore* %0, i32 0, i32 1
  %1 = load %struct._GHashTable*, %struct._GHashTable** %map, align 8
  %2 = load i8*, i8** %locale.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %2)
  store i8* %call, i8** %lang, align 8
  %3 = load i8*, i8** %lang, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %locale.addr, align 8
  %call1 = call i8* @strchr(i8* %4, i32 95) #8
  store i8* %call1, i8** %delimiter, align 8
  %5 = load i8*, i8** %delimiter, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i8*, i8** %locale.addr, align 8
  %7 = load i8*, i8** %delimiter, align 8
  %8 = load i8*, i8** %locale.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call4 = call noalias i8* @g_strndup(i8* %6, i64 %sub.ptr.sub)
  store i8* %call4, i8** %copy, align 8
  %9 = load %struct._GimpTranslationStore*, %struct._GimpTranslationStore** %store.addr, align 8
  %map5 = getelementptr inbounds %struct._GimpTranslationStore, %struct._GimpTranslationStore* %9, i32 0, i32 1
  %10 = load %struct._GHashTable*, %struct._GHashTable** %map5, align 8
  %11 = load i8*, i8** %copy, align 8
  %call6 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %11)
  store i8* %call6, i8** %lang, align 8
  %12 = load i8*, i8** %copy, align 8
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %13 = load i8*, i8** %lang, align 8
  ret i8* %13
}

declare void @g_dir_close(%struct._GDir*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare noalias i8* @g_strndup(i8*, i64) #1

declare i32 @g_hash_table_replace(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
