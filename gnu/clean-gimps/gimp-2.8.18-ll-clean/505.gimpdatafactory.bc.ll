; ModuleID = './app/core/gimpdatafactory.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDataFactoryClass = type { %struct._GimpObjectClass }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type { %struct._Gimp*, %struct._GimpContainer*, %struct._GimpContainer*, i8*, i8*, %struct._GimpDataFactoryLoaderEntry*, i32, %struct._GimpData* (%struct._GimpContext*, i8*)*, %struct._GimpData* (%struct._GimpContext*)* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpDataFactoryLoaderEntry = type { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)*, i8*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GHashTable = type opaque
%struct.GimpDataLoadContext = type { %struct._GimpDataFactory*, %struct._GimpContext*, %struct._GHashTable*, i8* }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }

@gimp_data_factory_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpDataFactory\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_data_factory_new = private unnamed_addr constant [22 x i8] c"gimp_data_factory_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"g_type_is_a (data_type, GIMP_TYPE_DATA)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"path_property_name != NULL\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"writable_property_name != NULL\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"loader_entries != NULL\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"n_loader_entries > 0\00", align 1
@__func__.gimp_data_factory_data_init = private unnamed_addr constant [28 x i8] c"gimp_data_factory_data_init\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"GIMP_IS_DATA_FACTORY (factory)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Loading '%s' data\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@__func__.gimp_data_factory_data_refresh = private unnamed_addr constant [31 x i8] c"gimp_data_factory_data_refresh\00", align 1
@__func__.gimp_data_factory_data_save = private unnamed_addr constant [28 x i8] c"gimp_data_factory_data_save\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to save data:\0A\0A%s\00", align 1
@__func__.gimp_data_factory_data_free = private unnamed_addr constant [28 x i8] c"gimp_data_factory_data_free\00", align 1
@__func__.gimp_data_factory_data_new = private unnamed_addr constant [27 x i8] c"gimp_data_factory_data_new\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"*name != '\5C0'\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"%s: factory->priv->data_new_func() returned NULL\00", align 1
@__func__.gimp_data_factory_data_duplicate = private unnamed_addr constant [33 x i8] c"gimp_data_factory_data_duplicate\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DATA (data)\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%s copy\00", align 1
@__func__.gimp_data_factory_data_delete = private unnamed_addr constant [30 x i8] c"gimp_data_factory_data_delete\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_data_factory_data_get_standard = private unnamed_addr constant [36 x i8] c"gimp_data_factory_data_get_standard\00", align 1
@__func__.gimp_data_factory_data_save_single = private unnamed_addr constant [35 x i8] c"gimp_data_factory_data_save_single\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Data class does not implement saving\00", align 1
@__func__.gimp_data_factory_get_container = private unnamed_addr constant [32 x i8] c"gimp_data_factory_get_container\00", align 1
@__func__.gimp_data_factory_get_container_obsolete = private unnamed_addr constant [41 x i8] c"gimp_data_factory_get_container_obsolete\00", align 1
@__func__.gimp_data_factory_get_gimp = private unnamed_addr constant [27 x i8] c"gimp_data_factory_get_gimp\00", align 1
@__func__.gimp_data_factory_has_data_new_func = private unnamed_addr constant [36 x i8] c"gimp_data_factory_has_data_new_func\00", align 1
@gimp_data_factory_parent_class = internal global i8* null, align 8
@GimpDataFactory_private_offset = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [32 x i8] c"gimp-data-factory-writable-path\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp-obsolete-files\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Failed to load data:\0A\0A%s\00", align 1
@.str.24 = private unnamed_addr constant [178 x i8] c"You have a writable data folder configured (%s), but this folder does not exist. Please create the folder or fix your configuation in the Preferences dialog's 'Folders' section.\00", align 1
@.str.25 = private unnamed_addr constant [205 x i8] c"You have a writable data folder configured, but this folder is not part of your data search path. You probably edited the gimprc file manually, please fix it in the Preferences dialog's 'Folders' section.\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"You don't have any writable data folder configured.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_data_factory_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_data_factory_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_data_factory_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_data_factory_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDataFactory*)* @gimp_data_factory_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_data_factory_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_data_factory_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_data_factory_parent_class, align 8
  %1 = load i32, i32* @GimpDataFactory_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDataFactory_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDataFactoryClass*
  call void @gimp_data_factory_class_init(%struct._GimpDataFactoryClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_init(%struct._GimpDataFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataFactoryPriv*
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %3, i32 0, i32 1
  store %struct._GimpDataFactoryPriv* %2, %struct._GimpDataFactoryPriv** %priv, align 8
  %4 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %4, i32 0, i32 1
  %5 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv2, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %5, i32 0, i32 0
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %6, i32 0, i32 1
  %7 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv3, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %7, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %container, align 8
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv4 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %8, i32 0, i32 1
  %9 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv4, align 8
  %container_obsolete = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %9, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %container_obsolete, align 8
  %10 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv5, align 8
  %path_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %11, i32 0, i32 3
  store i8* null, i8** %path_property_name, align 8
  %12 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %12, i32 0, i32 1
  %13 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv6, align 8
  %writable_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %13, i32 0, i32 4
  store i8* null, i8** %writable_property_name, align 8
  %14 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv7 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %14, i32 0, i32 1
  %15 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv7, align 8
  %loader_entries = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %15, i32 0, i32 5
  store %struct._GimpDataFactoryLoaderEntry* null, %struct._GimpDataFactoryLoaderEntry** %loader_entries, align 8
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv8 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %16, i32 0, i32 1
  %17 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv8, align 8
  %n_loader_entries = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %17, i32 0, i32 6
  store i32 0, i32* %n_loader_entries, align 4
  %18 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv9 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %18, i32 0, i32 1
  %19 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv9, align 8
  %data_new_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %19, i32 0, i32 7
  store %struct._GimpData* (%struct._GimpContext*, i8*)* null, %struct._GimpData* (%struct._GimpContext*, i8*)** %data_new_func, align 8
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv10 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %20, i32 0, i32 1
  %21 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv10, align 8
  %data_get_standard_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %21, i32 0, i32 8
  store %struct._GimpData* (%struct._GimpContext*)* null, %struct._GimpData* (%struct._GimpContext*)** %data_get_standard_func, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %gimp, i64 %data_type, i8* %path_property_name, i8* %writable_property_name, %struct._GimpDataFactoryLoaderEntry* %loader_entries, i32 %n_loader_entries, %struct._GimpData* (%struct._GimpContext*, i8*)* %new_func, %struct._GimpData* (%struct._GimpContext*)* %get_standard_func) #3 {
entry:
  %retval = alloca %struct._GimpDataFactory*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %data_type.addr = alloca i64, align 8
  %path_property_name.addr = alloca i8*, align 8
  %writable_property_name.addr = alloca i8*, align 8
  %loader_entries.addr = alloca %struct._GimpDataFactoryLoaderEntry*, align 8
  %n_loader_entries.addr = alloca i32, align 4
  %new_func.addr = alloca %struct._GimpData* (%struct._GimpContext*, i8*)*, align 8
  %get_standard_func.addr = alloca %struct._GimpData* (%struct._GimpContext*)*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i64 %data_type, i64* %data_type.addr, align 8
  store i8* %path_property_name, i8** %path_property_name.addr, align 8
  store i8* %writable_property_name, i8** %writable_property_name.addr, align 8
  store %struct._GimpDataFactoryLoaderEntry* %loader_entries, %struct._GimpDataFactoryLoaderEntry** %loader_entries.addr, align 8
  store i32 %n_loader_entries, i32* %n_loader_entries.addr, align 4
  store %struct._GimpData* (%struct._GimpContext*, i8*)* %new_func, %struct._GimpData* (%struct._GimpContext*, i8*)** %new_func.addr, align 8
  store %struct._GimpData* (%struct._GimpContext*)* %get_standard_func, %struct._GimpData* (%struct._GimpContext*)** %get_standard_func.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %data_type.addr, align 8
  %call12 = call i64 @gimp_data_get_type() #7
  %call13 = call i32 @g_type_is_a(i64 %13, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load i8*, i8** %path_property_name.addr, align 8
  %cmp20 = icmp ne i8* %14, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %15 = load i8*, i8** %writable_property_name.addr, align 8
  %cmp26 = icmp ne i8* %15, null
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.25
  br label %if.end.29

if.else.28:                                       ; preds = %do.body.25
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.27
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %16 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader_entries.addr, align 8
  %cmp32 = icmp ne %struct._GimpDataFactoryLoaderEntry* %16, null
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.31
  br label %if.end.35

if.else.34:                                       ; preds = %do.body.31
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.35:                                        ; preds = %if.then.33
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %17 = load i32, i32* %n_loader_entries.addr, align 4
  %cmp38 = icmp sgt i32 %17, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.37
  br label %if.end.41

if.else.40:                                       ; preds = %do.body.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_factory_new, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %call43 = call i64 @gimp_data_factory_get_type() #7
  %call44 = call i8* (i64, i8*, ...) @g_object_new(i64 %call43, i8* null)
  %18 = bitcast i8* %call44 to %struct._GimpDataFactory*
  store %struct._GimpDataFactory* %18, %struct._GimpDataFactory** %factory, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %20, i32 0, i32 1
  %21 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %gimp45 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %21, i32 0, i32 0
  store %struct._Gimp* %19, %struct._Gimp** %gimp45, align 8
  %22 = load i64, i64* %data_type.addr, align 8
  %call46 = call %struct._GimpContainer* @gimp_list_new(i64 %22, i32 1)
  %23 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv47 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %23, i32 0, i32 1
  %24 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv47, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %24, i32 0, i32 1
  store %struct._GimpContainer* %call46, %struct._GimpContainer** %container, align 8
  %25 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv48 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %25, i32 0, i32 1
  %26 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv48, align 8
  %container49 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %26, i32 0, i32 1
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container49, align 8
  %28 = bitcast %struct._GimpContainer* %27 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_list_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call50)
  %29 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpList*
  call void @gimp_list_set_sort_func(%struct._GimpList* %29, i32 (i8*, i8*)* bitcast (i32 (%struct._GimpData*, %struct._GimpData*)* @gimp_data_compare to i32 (i8*, i8*)*))
  %30 = load i64, i64* %data_type.addr, align 8
  %call52 = call %struct._GimpContainer* @gimp_list_new(i64 %30, i32 1)
  %31 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv53 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %31, i32 0, i32 1
  %32 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv53, align 8
  %container_obsolete = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %32, i32 0, i32 2
  store %struct._GimpContainer* %call52, %struct._GimpContainer** %container_obsolete, align 8
  %33 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv54 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %33, i32 0, i32 1
  %34 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv54, align 8
  %container_obsolete55 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %34, i32 0, i32 2
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container_obsolete55, align 8
  %36 = bitcast %struct._GimpContainer* %35 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_list_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call56)
  %37 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpList*
  call void @gimp_list_set_sort_func(%struct._GimpList* %37, i32 (i8*, i8*)* bitcast (i32 (%struct._GimpData*, %struct._GimpData*)* @gimp_data_compare to i32 (i8*, i8*)*))
  %38 = load i8*, i8** %path_property_name.addr, align 8
  %call58 = call noalias i8* @g_strdup(i8* %38)
  %39 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv59 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %39, i32 0, i32 1
  %40 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv59, align 8
  %path_property_name60 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %40, i32 0, i32 3
  store i8* %call58, i8** %path_property_name60, align 8
  %41 = load i8*, i8** %writable_property_name.addr, align 8
  %call61 = call noalias i8* @g_strdup(i8* %41)
  %42 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv62 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %42, i32 0, i32 1
  %43 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv62, align 8
  %writable_property_name63 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %43, i32 0, i32 4
  store i8* %call61, i8** %writable_property_name63, align 8
  %44 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader_entries.addr, align 8
  %45 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv64 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %45, i32 0, i32 1
  %46 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv64, align 8
  %loader_entries65 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %46, i32 0, i32 5
  store %struct._GimpDataFactoryLoaderEntry* %44, %struct._GimpDataFactoryLoaderEntry** %loader_entries65, align 8
  %47 = load i32, i32* %n_loader_entries.addr, align 4
  %48 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv66 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %48, i32 0, i32 1
  %49 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv66, align 8
  %n_loader_entries67 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %49, i32 0, i32 6
  store i32 %47, i32* %n_loader_entries67, align 4
  %50 = load %struct._GimpData* (%struct._GimpContext*, i8*)*, %struct._GimpData* (%struct._GimpContext*, i8*)** %new_func.addr, align 8
  %51 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv68 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %51, i32 0, i32 1
  %52 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv68, align 8
  %data_new_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %52, i32 0, i32 7
  store %struct._GimpData* (%struct._GimpContext*, i8*)* %50, %struct._GimpData* (%struct._GimpContext*, i8*)** %data_new_func, align 8
  %53 = load %struct._GimpData* (%struct._GimpContext*)*, %struct._GimpData* (%struct._GimpContext*)** %get_standard_func.addr, align 8
  %54 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv69 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %54, i32 0, i32 1
  %55 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv69, align 8
  %data_get_standard_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %55, i32 0, i32 8
  store %struct._GimpData* (%struct._GimpContext*)* %53, %struct._GimpData* (%struct._GimpContext*)** %data_get_standard_func, align 8
  %56 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  store %struct._GimpDataFactory* %56, %struct._GimpDataFactory** %retval
  br label %return

return:                                           ; preds = %do.end.42, %if.else.40, %if.else.34, %if.else.28, %if.else.22, %if.else.16, %if.else.9
  %57 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %retval
  ret %struct._GimpDataFactory* %57
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

declare void @gimp_list_set_sort_func(%struct._GimpList*, i32 (i8*, i8*)*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i32 @gimp_data_compare(%struct._GimpData*, %struct._GimpData*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_data_factory_data_init(%struct._GimpDataFactory* %factory, %struct._GimpContext* %context, i32 %no_data) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %no_data.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %no_data, i32* %no_data.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_data_factory_data_init, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_data_factory_data_init, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %26, i32 0, i32 1
  %27 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %27, i32 0, i32 1
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %28)
  %29 = load i32, i32* %no_data.addr, align 4
  %tobool39 = icmp ne i32 %29, 0
  br i1 %tobool39, label %if.end.48, label %if.then.40

if.then.40:                                       ; preds = %do.end.38
  %30 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv41 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %30, i32 0, i32 1
  %31 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv41, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %31, i32 0, i32 0
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 4
  %33 = load i32, i32* %be_verbose, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.then.40
  %34 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %35 = bitcast %struct._GimpDataFactory* %34 to i8*
  %call45 = call i8* @gimp_object_get_name(i8* %35)
  store i8* %call45, i8** %name, align 8
  %36 = load i8*, i8** %name, align 8
  %tobool46 = icmp ne i8* %36, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.43
  %37 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %37, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* %cond)
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end, %if.then.40
  %38 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_data_factory_data_load(%struct._GimpDataFactory* %38, %struct._GimpContext* %39, %struct._GHashTable* null)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.end.38
  %40 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv49 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %40, i32 0, i32 1
  %41 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv49, align 8
  %container50 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %41, i32 0, i32 1
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %container50, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %42)
  br label %return

return:                                           ; preds = %if.end.48, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_container_freeze(%struct._GimpContainer*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_data_load(%struct._GimpDataFactory* %factory, %struct._GimpContext* %context, %struct._GHashTable* %cache) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %cache.addr = alloca %struct._GHashTable*, align 8
  %path = alloca i8*, align 8
  %writable_path = alloca i8*, align 8
  %writable_list = alloca %struct._GList*, align 8
  %tmp = alloca i8*, align 8
  %load_context = alloca %struct.GimpDataLoadContext, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GHashTable* %cache, %struct._GHashTable** %cache.addr, align 8
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %4 = bitcast %struct._GimpCoreConfig* %3 to i8*
  %5 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %5, i32 0, i32 1
  %6 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv1, align 8
  %path_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %6, i32 0, i32 3
  %7 = load i8*, i8** %path_property_name, align 8
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %8, i32 0, i32 1
  %9 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv2, align 8
  %writable_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %9, i32 0, i32 4
  %10 = load i8*, i8** %writable_property_name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* %7, i8** %path, i8* %10, i8** %writable_path, i8* null)
  %11 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %12 = load i8*, i8** %path, align 8
  %call = call i64 @strlen(i8* %12) #8
  %tobool3 = icmp ne i64 %call, 0
  br i1 %tobool3, label %if.then, label %if.end.18

if.then:                                          ; preds = %land.lhs.true
  store %struct._GList* null, %struct._GList** %writable_list, align 8
  %13 = bitcast %struct.GimpDataLoadContext* %load_context to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 32, i32 8, i1 false)
  %14 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %factory5 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %load_context, i32 0, i32 0
  store %struct._GimpDataFactory* %14, %struct._GimpDataFactory** %factory5, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %context6 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %load_context, i32 0, i32 1
  store %struct._GimpContext* %15, %struct._GimpContext** %context6, align 8
  %16 = load %struct._GHashTable*, %struct._GHashTable** %cache.addr, align 8
  %cache7 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %load_context, i32 0, i32 2
  store %struct._GHashTable* %16, %struct._GHashTable** %cache7, align 8
  %17 = load i8*, i8** %path, align 8
  %call8 = call noalias i8* @gimp_config_path_expand(i8* %17, i32 1, %struct._GError** null)
  store i8* %call8, i8** %tmp, align 8
  %18 = load i8*, i8** %path, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %tmp, align 8
  store i8* %19, i8** %path, align 8
  %20 = load i8*, i8** %writable_path, align 8
  %tobool9 = icmp ne i8* %20, null
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %21 = load i8*, i8** %writable_path, align 8
  %call11 = call noalias i8* @gimp_config_path_expand(i8* %21, i32 1, %struct._GError** null)
  store i8* %call11, i8** %tmp, align 8
  %22 = load i8*, i8** %writable_path, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** %tmp, align 8
  store i8* %23, i8** %writable_path, align 8
  %24 = load i8*, i8** %writable_path, align 8
  %call12 = call %struct._GList* @gimp_path_parse(i8* %24, i32 256, i32 1, %struct._GList** null)
  store %struct._GList* %call12, %struct._GList** %writable_list, align 8
  %25 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %26 = bitcast %struct._GimpDataFactory* %25 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %28 = load %struct._GList*, %struct._GList** %writable_list, align 8
  %29 = bitcast %struct._GList* %28 to i8*
  call void @g_object_set_data(%struct._GObject* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), i8* %29)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %30 = load i8*, i8** %path, align 8
  %31 = bitcast %struct.GimpDataLoadContext* %load_context to i8*
  call void @gimp_datafiles_read_directories(i8* %30, i32 1, void (%struct._GimpDatafileData*, i8*)* @gimp_data_factory_load_data, i8* %31)
  %32 = load i8*, i8** %path, align 8
  %33 = bitcast %struct.GimpDataLoadContext* %load_context to i8*
  call void @gimp_datafiles_read_directories(i8* %32, i32 4, void (%struct._GimpDatafileData*, i8*)* @gimp_data_factory_load_data_recursive, i8* %33)
  %34 = load i8*, i8** %writable_path, align 8
  %tobool14 = icmp ne i8* %34, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %35 = load %struct._GList*, %struct._GList** %writable_list, align 8
  call void @gimp_path_free(%struct._GList* %35)
  %36 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %37 = bitcast %struct._GimpDataFactory* %36 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), i8* null)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %entry
  %39 = load i8*, i8** %path, align 8
  call void @g_free(i8* %39)
  %40 = load i8*, i8** %writable_path, align 8
  call void @g_free(i8* %40)
  ret void
}

declare void @gimp_container_thaw(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_data_factory_data_refresh(%struct._GimpDataFactory* %factory, %struct._GimpContext* %context) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %cache = alloca %struct._GHashTable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_data_factory_data_refresh, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_data_factory_data_refresh, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %26, i32 0, i32 1
  %27 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %27, i32 0, i32 1
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %28)
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %29)
  %call39 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal)
  store %struct._GHashTable* %call39, %struct._GHashTable** %cache, align 8
  %30 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %31 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %32 = bitcast %struct._GHashTable* %31 to i8*
  call void @gimp_data_factory_data_foreach(%struct._GimpDataFactory* %30, i32 1, void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)* @gimp_data_factory_refresh_cache_add, i8* %32)
  %33 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  call void @gimp_data_factory_data_load(%struct._GimpDataFactory* %33, %struct._GimpContext* %34, %struct._GHashTable* %35)
  %36 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %call40 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %36, i32 (i8*, i8*, i8*)* @gimp_data_factory_refresh_cache_remove, i8* null)
  %37 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %37)
  %38 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv41 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %38, i32 0, i32 1
  %39 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv41, align 8
  %container42 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %39, i32 0, i32 1
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container42, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %40)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_data_factory_data_save(%struct._GimpDataFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %dirty = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %writable_dir = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %data = alloca %struct._GimpData*, align 8
  %data45 = alloca %struct._GimpData*, align 8
  %error48 = alloca %struct._GError*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GList* null, %struct._GList** %dirty, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_data_factory_data_save, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %14, i32 0, i32 1
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call11 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv15 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %16, i32 0, i32 1
  %17 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv15, align 8
  %container16 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %17, i32 0, i32 1
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %container16, align 8
  %19 = bitcast %struct._GimpContainer* %18 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_list_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call17)
  %20 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpList*
  %list19 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %list19, align 8
  store %struct._GList* %21, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.14
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %22, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %data22 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data22, align 8
  %25 = bitcast i8* %24 to %struct._GimpData*
  store %struct._GimpData* %25, %struct._GimpData** %data, align 8
  %26 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call23 = call i32 @gimp_data_is_dirty(%struct._GimpData* %26)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.30

land.lhs.true.25:                                 ; preds = %for.body
  %27 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call26 = call i32 @gimp_data_is_writable(%struct._GimpData* %27)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.25
  %28 = load %struct._GList*, %struct._GList** %dirty, align 8
  %29 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %30 = bitcast %struct._GimpData* %29 to i8*
  %call29 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %30)
  store %struct._GList* %call29, %struct._GList** %dirty, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %land.lhs.true.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool31 = icmp ne %struct._GList* %31, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GList*, %struct._GList** %dirty, align 8
  %tobool32 = icmp ne %struct._GList* %34, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %for.end
  br label %return

if.end.34:                                        ; preds = %for.end
  %35 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %call35 = call i8* @gimp_data_factory_get_save_dir(%struct._GimpDataFactory* %35, %struct._GError** %error)
  store i8* %call35, i8** %writable_dir, align 8
  %36 = load i8*, i8** %writable_dir, align 8
  %tobool36 = icmp ne i8* %36, null
  br i1 %tobool36, label %if.end.40, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  %37 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv38 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %37, i32 0, i32 1
  %38 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv38, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %38, i32 0, i32 0
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #6
  %40 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %40, i32 0, i32 2
  %41 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %39, %struct._GObject* null, i32 2, i8* %call39, i8* %41)
  call void @g_clear_error(%struct._GError** %error)
  %42 = load %struct._GList*, %struct._GList** %dirty, align 8
  call void @g_list_free(%struct._GList* %42)
  br label %return

if.end.40:                                        ; preds = %if.end.34
  %43 = load %struct._GList*, %struct._GList** %dirty, align 8
  store %struct._GList* %43, %struct._GList** %list, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %cond.end.69, %if.end.40
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool42 = icmp ne %struct._GList* %44, null
  br i1 %tobool42, label %for.body.43, label %for.end.71

for.body.43:                                      ; preds = %for.cond.41
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %data46 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 0
  %46 = load i8*, i8** %data46, align 8
  %47 = bitcast i8* %46 to %struct._GimpData*
  store %struct._GimpData* %47, %struct._GimpData** %data45, align 8
  store %struct._GError* null, %struct._GError** %error48, align 8
  %48 = load %struct._GimpData*, %struct._GimpData** %data45, align 8
  %call49 = call i8* @gimp_data_get_filename(%struct._GimpData* %48)
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %for.body.43
  %49 = load %struct._GimpData*, %struct._GimpData** %data45, align 8
  %50 = load i8*, i8** %writable_dir, align 8
  call void @gimp_data_create_filename(%struct._GimpData* %49, i8* %50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.body.43
  %51 = load %struct._GimpData*, %struct._GimpData** %data45, align 8
  %call53 = call i32 @gimp_data_save(%struct._GimpData* %51, %struct._GError** %error48)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.63, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  %52 = load %struct._GError*, %struct._GError** %error48, align 8
  %tobool56 = icmp ne %struct._GError* %52, null
  br i1 %tobool56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %if.then.55
  %53 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv58 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %53, i32 0, i32 1
  %54 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv58, align 8
  %gimp59 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %54, i32 0, i32 0
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp59, align 8
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #6
  %56 = load %struct._GError*, %struct._GError** %error48, align 8
  %message61 = getelementptr inbounds %struct._GError, %struct._GError* %56, i32 0, i32 2
  %57 = load i8*, i8** %message61, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %55, %struct._GObject* null, i32 2, i8* %call60, i8* %57)
  call void @g_clear_error(%struct._GError** %error48)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %if.then.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.52
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool65 = icmp ne %struct._GList* %58, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %for.inc.64
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %next67 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 1
  %60 = load %struct._GList*, %struct._GList** %next67, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %for.inc.64
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.66
  %cond70 = phi %struct._GList* [ %60, %cond.true.66 ], [ null, %cond.false.68 ]
  store %struct._GList* %cond70, %struct._GList** %list, align 8
  br label %for.cond.41

for.end.71:                                       ; preds = %for.cond.41
  %61 = load i8*, i8** %writable_dir, align 8
  call void @g_free(i8* %61)
  %62 = load %struct._GList*, %struct._GList** %dirty, align 8
  call void @g_list_free(%struct._GList* %62)
  br label %return

return:                                           ; preds = %for.end.71, %if.then.37, %if.then.33, %if.then.13, %if.else.9
  ret void
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_data_foreach(%struct._GimpDataFactory* %factory, i32 %skip_internal, void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)* %callback, i8* %user_data) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %skip_internal.addr = alloca i32, align 4
  %callback.addr = alloca void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %next12 = alloca %struct._GList*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store i32 %skip_internal, i32* %skip_internal.addr, align 4
  store void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)* %callback, void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %1, i32 0, i32 1
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %3 = bitcast %struct._GimpContainer* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  %list2 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  %6 = load i32, i32* %skip_internal.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_data_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpData*
  %call6 = call i32 @gimp_data_is_internal(%struct._GimpData* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool8 = icmp ne %struct._GList* %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  br label %while.cond.9

while.cond.9:                                     ; preds = %cond.end.17, %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %16, null
  br i1 %tobool10, label %while.body.11, label %while.end.20

while.body.11:                                    ; preds = %while.cond.9
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %17, null
  br i1 %tobool13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %while.body.11
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next15 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next15, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %while.body.11
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi %struct._GList* [ %19, %cond.true.14 ], [ null, %cond.false.16 ]
  store %struct._GList* %cond18, %struct._GList** %next12, align 8
  %20 = load void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)*, void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)** %callback.addr, align 8
  %21 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %data19 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data19, align 8
  %24 = bitcast i8* %23 to %struct._GimpData*
  %25 = load i8*, i8** %user_data.addr, align 8
  call void %20(%struct._GimpDataFactory* %21, %struct._GimpData* %24, i8* %25)
  %26 = load %struct._GList*, %struct._GList** %next12, align 8
  store %struct._GList* %26, %struct._GList** %list, align 8
  br label %while.cond.9

while.end.20:                                     ; preds = %while.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_refresh_cache_add(%struct._GimpDataFactory* %factory, %struct._GimpData* %data, i8* %user_data) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %user_data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %cache = alloca %struct._GHashTable*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call = call i8* @gimp_data_get_filename(%struct._GimpData* %0)
  store i8* %call, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GHashTable*
  store %struct._GHashTable* %3, %struct._GHashTable** %cache, align 8
  %4 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %5 = bitcast %struct._GimpData* %4 to i8*
  %call1 = call i8* @g_object_ref(i8* %5)
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %6, i32 0, i32 1
  %7 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %7, i32 0, i32 1
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %9 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %10 = bitcast %struct._GimpData* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %call4 = call i32 @gimp_container_remove(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %12 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %13 = load i8*, i8** %filename, align 8
  %call5 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %13)
  %14 = bitcast i8* %call5 to %struct._GList*
  store %struct._GList* %14, %struct._GList** %list, align 8
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %16 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %17 = bitcast %struct._GimpData* %16 to i8*
  %call6 = call %struct._GList* @g_list_prepend(%struct._GList* %15, i8* %17)
  store %struct._GList* %call6, %struct._GList** %list, align 8
  %18 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %19 = load i8*, i8** %filename, align 8
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %21 = bitcast %struct._GList* %20 to i8*
  %call7 = call i32 @g_hash_table_insert(%struct._GHashTable* %18, i8* %19, i8* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_data_factory_refresh_cache_remove(i8* %key, i8* %value, i8* %user_data) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %1 = bitcast i8* %0 to %struct._GList*
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  call void @g_object_unref(i8* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %value.addr, align 8
  %8 = bitcast i8* %7 to %struct._GList*
  call void @g_list_free(%struct._GList* %8)
  ret i32 1
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #1

declare i32 @gimp_data_is_dirty(%struct._GimpData*) #1

declare i32 @gimp_data_is_writable(%struct._GimpData*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_data_factory_get_save_dir(%struct._GimpDataFactory* %factory, %struct._GError** %error) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %path = alloca i8*, align 8
  %writable_path = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %path_list = alloca %struct._GList*, align 8
  %writable_list = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %writable_dir = alloca i8*, align 8
  %found_any = alloca i32, align 4
  %found = alloca %struct._GList*, align 8
  %dir = alloca i8*, align 8
  %display_name = alloca i8*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %writable_dir, align 8
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 1
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %4 = bitcast %struct._GimpCoreConfig* %3 to i8*
  %5 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %5, i32 0, i32 1
  %6 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv5, align 8
  %path_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %6, i32 0, i32 3
  %7 = load i8*, i8** %path_property_name, align 8
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv6 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %8, i32 0, i32 1
  %9 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv6, align 8
  %writable_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %9, i32 0, i32 4
  %10 = load i8*, i8** %writable_property_name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* %7, i8** %path, i8* %10, i8** %writable_path, i8* null)
  %11 = load i8*, i8** %path, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %11, i32 1, %struct._GError** null)
  store i8* %call, i8** %tmp, align 8
  %12 = load i8*, i8** %path, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %tmp, align 8
  store i8* %13, i8** %path, align 8
  %14 = load i8*, i8** %writable_path, align 8
  %call7 = call noalias i8* @gimp_config_path_expand(i8* %14, i32 1, %struct._GError** null)
  store i8* %call7, i8** %tmp, align 8
  %15 = load i8*, i8** %writable_path, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** %tmp, align 8
  store i8* %16, i8** %writable_path, align 8
  %17 = load i8*, i8** %path, align 8
  %call8 = call %struct._GList* @gimp_path_parse(i8* %17, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call8, %struct._GList** %path_list, align 8
  %18 = load i8*, i8** %writable_path, align 8
  %call9 = call %struct._GList* @gimp_path_parse(i8* %18, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call9, %struct._GList** %writable_list, align 8
  %19 = load i8*, i8** %path, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %writable_path, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %writable_path, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %if.then, label %if.else.38

if.then:                                          ; preds = %entry
  store i32 0, i32* %found_any, align 4
  %22 = load %struct._GList*, %struct._GList** %writable_list, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %23, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %path_list, align 8
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8
  %call13 = call %struct._GList* @g_list_find_custom(%struct._GList* %24, i8* %26, i32 (i8*, i8*)* @strcmp)
  store %struct._GList* %call13, %struct._GList** %found, align 8
  %27 = load %struct._GList*, %struct._GList** %found, align 8
  %tobool14 = icmp ne %struct._GList* %27, null
  br i1 %tobool14, label %if.then.15, label %if.end.29

if.then.15:                                       ; preds = %for.body
  %28 = load %struct._GList*, %struct._GList** %found, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 0
  %29 = load i8*, i8** %data17, align 8
  store i8* %29, i8** %dir, align 8
  store i32 1, i32* %found_any, align 4
  %30 = load i8*, i8** %dir, align 8
  %call18 = call i32 @g_file_test(i8* %30, i32 4)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.then.15
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool21 = icmp ne %struct._GList* %32, null
  br i1 %tobool21, label %if.end, label %if.then.22

if.then.22:                                       ; preds = %if.then.20
  %33 = load i8*, i8** %dir, align 8
  %call24 = call noalias i8* @g_filename_display_name(i8* %33)
  store i8* %call24, i8** %display_name, align 8
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call25 = call i32 @gimp_data_error_quark() #7
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.24, i32 0, i32 0)) #6
  %35 = load i8*, i8** %display_name, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %34, i32 %call25, i32 0, i8* %call26, i8* %35)
  %36 = load i8*, i8** %display_name, align 8
  call void @g_free(i8* %36)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.20
  br label %if.end.28

if.else:                                          ; preds = %if.then.15
  %37 = load i8*, i8** %dir, align 8
  %call27 = call noalias i8* @g_strdup(i8* %37)
  store i8* %call27, i8** %writable_dir, align 8
  br label %for.end

if.end.28:                                        ; preds = %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %38, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %next31 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next31, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %40, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %41 = load i8*, i8** %writable_dir, align 8
  %tobool32 = icmp ne i8* %41, null
  br i1 %tobool32, label %if.end.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %42 = load i32, i32* %found_any, align 4
  %tobool33 = icmp ne i32 %42, 0
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call35 = call i32 @gimp_data_error_quark() #7
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.25, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %43, i32 %call35, i32 0, i8* %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %land.lhs.true, %for.end
  br label %if.end.41

if.else.38:                                       ; preds = %entry
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call39 = call i32 @gimp_data_error_quark() #7
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %44, i32 %call39, i32 0, i8* %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.end.37
  %45 = load %struct._GList*, %struct._GList** %path_list, align 8
  call void @gimp_path_free(%struct._GList* %45)
  %46 = load %struct._GList*, %struct._GList** %writable_list, align 8
  call void @gimp_path_free(%struct._GList* %46)
  %47 = load i8*, i8** %writable_dir, align 8
  ret i8* %47
}

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @g_clear_error(%struct._GError**) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @gimp_data_get_filename(%struct._GimpData*) #1

declare void @gimp_data_create_filename(%struct._GimpData*, i8*) #1

declare i32 @gimp_data_save(%struct._GimpData*, %struct._GError**) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_data_factory_data_free(%struct._GimpDataFactory* %factory) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_data_factory_data_free, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %14, i32 0, i32 1
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %15)
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  call void @gimp_data_factory_data_foreach(%struct._GimpDataFactory* %16, i32 1, void (%struct._GimpDataFactory*, %struct._GimpData*, i8*)* @gimp_data_factory_remove_cb, i8* null)
  %17 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv11 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %17, i32 0, i32 1
  %18 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv11, align 8
  %container12 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %18, i32 0, i32 1
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container12, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_remove_cb(%struct._GimpDataFactory* %factory, %struct._GimpData* %data, i8* %user_data) #3 {
entry:
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %0, i32 0, i32 1
  %1 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %1, i32 0, i32 1
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_object_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpObject*
  %call2 = call i32 @gimp_container_remove(%struct._GimpContainer* %2, %struct._GimpObject* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_data_factory_data_new(%struct._GimpDataFactory* %factory, %struct._GimpContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %data = alloca %struct._GimpData*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_data_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_data_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i8*, i8** %name.addr, align 8
  %cmp40 = icmp ne i8* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_data_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load i8*, i8** %name.addr, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %cmp46 = icmp ne i32 %conv, 0
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_data_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %29, i32 0, i32 1
  %30 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %data_new_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %30, i32 0, i32 7
  %31 = load %struct._GimpData* (%struct._GimpContext*, i8*)*, %struct._GimpData* (%struct._GimpContext*, i8*)** %data_new_func, align 8
  %tobool52 = icmp ne %struct._GimpData* (%struct._GimpContext*, i8*)* %31, null
  br i1 %tobool52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.end.51
  %32 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv55 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %32, i32 0, i32 1
  %33 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv55, align 8
  %data_new_func56 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %33, i32 0, i32 7
  %34 = load %struct._GimpData* (%struct._GimpContext*, i8*)*, %struct._GimpData* (%struct._GimpContext*, i8*)** %data_new_func56, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load i8*, i8** %name.addr, align 8
  %call57 = call %struct._GimpData* %34(%struct._GimpContext* %35, i8* %36)
  store %struct._GimpData* %call57, %struct._GimpData** %data, align 8
  %37 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %tobool58 = icmp ne %struct._GimpData* %37, null
  br i1 %tobool58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.then.53
  %38 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv60 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %38, i32 0, i32 1
  %39 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv60, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %39, i32 0, i32 1
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %41 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %42 = bitcast %struct._GimpData* %41 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_object_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call61)
  %43 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpObject*
  %call63 = call i32 @gimp_container_add(%struct._GimpContainer* %40, %struct._GimpObject* %43)
  %44 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %45 = bitcast %struct._GimpData* %44 to i8*
  call void @g_object_unref(i8* %45)
  %46 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  store %struct._GimpData* %46, %struct._GimpData** %retval
  br label %return

if.end.64:                                        ; preds = %if.then.53
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_data_new, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %do.end.51
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.59, %if.else.49, %if.else.42, %if.else.36, %if.else.9
  %47 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %47
}

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @g_object_unref(i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_data_factory_data_duplicate(%struct._GimpDataFactory* %factory, %struct._GimpData* %data) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %new_data = alloca %struct._GimpData*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %name = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %copy_len = alloca i32, align 4
  %number = alloca i32, align 4
  %new_name = alloca i8*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_data_factory_data_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_data_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_data_factory_data_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call39 = call %struct._GimpData* @gimp_data_duplicate(%struct._GimpData* %26)
  store %struct._GimpData* %call39, %struct._GimpData** %new_data, align 8
  %27 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  %tobool40 = icmp ne %struct._GimpData* %27, null
  br i1 %tobool40, label %if.then.41, label %if.end.87

if.then.41:                                       ; preds = %do.end.38
  %28 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %29 = bitcast %struct._GimpData* %28 to i8*
  %call43 = call i8* @gimp_object_get_name(i8* %29)
  store i8* %call43, i8** %name, align 8
  %30 = load i8*, i8** %name, align 8
  %call48 = call i8* @strrchr(i8* %30, i32 35) #8
  store i8* %call48, i8** %ext, align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #6
  %call50 = call i64 @strlen(i8* %call49) #8
  %conv = trunc i64 %call50 to i32
  store i32 %conv, i32* %copy_len, align 4
  %31 = load i8*, i8** %name, align 8
  %call51 = call i64 @strlen(i8* %31) #8
  %32 = load i32, i32* %copy_len, align 4
  %conv52 = sext i32 %32 to i64
  %cmp53 = icmp uge i64 %call51, %conv52
  br i1 %cmp53, label %land.lhs.true.55, label %lor.lhs.false

land.lhs.true.55:                                 ; preds = %if.then.41
  %33 = load i8*, i8** %name, align 8
  %call56 = call i64 @strlen(i8* %33) #8
  %34 = load i32, i32* %copy_len, align 4
  %conv57 = sext i32 %34 to i64
  %sub = sub i64 %call56, %conv57
  %35 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 %sub
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #6
  %call59 = call i32 @strcmp(i8* %arrayidx, i8* %call58) #8
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.55, %if.then.41
  %36 = load i8*, i8** %ext, align 8
  %tobool62 = icmp ne i8* %36, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.else.78

land.lhs.true.63:                                 ; preds = %lor.lhs.false
  %37 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 1
  %call64 = call i32 @atoi(i8* %add.ptr) #8
  store i32 %call64, i32* %number, align 4
  %cmp65 = icmp sgt i32 %call64, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.78

land.lhs.true.67:                                 ; preds = %land.lhs.true.63
  %38 = load i32, i32* %number, align 4
  %conv68 = sitofp i32 %38 to double
  %call69 = call double @log10(double %conv68) #6
  %add = fadd double %call69, 1.000000e+00
  %conv70 = fptosi double %add to i32
  %conv71 = sext i32 %conv70 to i64
  %39 = load i8*, i8** %ext, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %39, i64 1
  %call73 = call i64 @strlen(i8* %add.ptr72) #8
  %cmp74 = icmp eq i64 %conv71, %call73
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %land.lhs.true.67, %land.lhs.true.55
  %40 = load i8*, i8** %name, align 8
  %call77 = call noalias i8* @g_strdup(i8* %40)
  store i8* %call77, i8** %new_name, align 8
  br label %if.end.81

if.else.78:                                       ; preds = %land.lhs.true.67, %land.lhs.true.63, %lor.lhs.false
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #6
  %41 = load i8*, i8** %name, align 8
  %call80 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call79, i8* %41)
  store i8* %call80, i8** %new_name, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.76
  %42 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  %43 = bitcast %struct._GimpData* %42 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call82)
  %44 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  %45 = load i8*, i8** %new_name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %44, i8* %45)
  %46 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %46, i32 0, i32 1
  %47 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %47, i32 0, i32 1
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %49 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  %50 = bitcast %struct._GimpData* %49 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_object_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call84)
  %51 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpObject*
  %call86 = call i32 @gimp_container_add(%struct._GimpContainer* %48, %struct._GimpObject* %51)
  %52 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  %53 = bitcast %struct._GimpData* %52 to i8*
  call void @g_object_unref(i8* %53)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.81, %do.end.38
  %54 = load %struct._GimpData*, %struct._GimpData** %new_data, align 8
  store %struct._GimpData* %54, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.else.36, %if.else.9
  %55 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %55
}

declare %struct._GimpData* @gimp_data_duplicate(%struct._GimpData*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare double @log10(double) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory* %factory, %struct._GimpData* %data, i32 %delete_from_disk, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %delete_from_disk.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i32 %delete_from_disk, i32* %delete_from_disk.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_data_factory_data_delete, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_data_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type27, align 8
  %21 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %20, %21
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %23 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %24 = load i32, i32* %__r19, align 4
  store i32 %24, i32* %tmp34
  %25 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_data_factory_data_delete, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp41 = icmp eq %struct._GError** %26, null
  br i1 %cmp41, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.40
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  %cmp42 = icmp eq %struct._GError* %28, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %lor.lhs.false, %do.body.40
  br label %if.end.45

if.else.44:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_data_factory_data_delete, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %29, i32 0, i32 1
  %30 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %30, i32 0, i32 1
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %32 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %33 = bitcast %struct._GimpData* %32 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_object_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call47)
  %34 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpObject*
  %call49 = call i32 @gimp_container_have(%struct._GimpContainer* %31, %struct._GimpObject* %34)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.65

if.then.51:                                       ; preds = %do.end.46
  %35 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %36 = bitcast %struct._GimpData* %35 to i8*
  %call52 = call i8* @g_object_ref(i8* %36)
  %37 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv53 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %37, i32 0, i32 1
  %38 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv53, align 8
  %container54 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %38, i32 0, i32 1
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container54, align 8
  %40 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %41 = bitcast %struct._GimpData* %40 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call55)
  %42 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  %call57 = call i32 @gimp_container_remove(%struct._GimpContainer* %39, %struct._GimpObject* %42)
  %43 = load i32, i32* %delete_from_disk.addr, align 4
  %tobool58 = icmp ne i32 %43, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.64

land.lhs.true.59:                                 ; preds = %if.then.51
  %44 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call60 = call i8* @gimp_data_get_filename(%struct._GimpData* %44)
  %tobool61 = icmp ne i8* %call60, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %land.lhs.true.59
  %45 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %46 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call63 = call i32 @gimp_data_delete_from_disk(%struct._GimpData* %45, %struct._GError** %46)
  store i32 %call63, i32* %retval1, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true.59, %if.then.51
  %47 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %48 = bitcast %struct._GimpData* %47 to i8*
  call void @g_object_unref(i8* %48)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %do.end.46
  %49 = load i32, i32* %retval1, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.else.44, %if.else.37, %if.else.10
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i8* @g_object_ref(i8*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_data_delete_from_disk(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_data_factory_data_get_standard(%struct._GimpDataFactory* %factory, %struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_data_factory_data_get_standard, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_data_factory_data_get_standard, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %26, i32 0, i32 1
  %27 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %data_get_standard_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %27, i32 0, i32 8
  %28 = load %struct._GimpData* (%struct._GimpContext*)*, %struct._GimpData* (%struct._GimpContext*)** %data_get_standard_func, align 8
  %tobool39 = icmp ne %struct._GimpData* (%struct._GimpContext*)* %28, null
  br i1 %tobool39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %do.end.38
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv41 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %29, i32 0, i32 1
  %30 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv41, align 8
  %data_get_standard_func42 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %30, i32 0, i32 8
  %31 = load %struct._GimpData* (%struct._GimpContext*)*, %struct._GimpData* (%struct._GimpContext*)** %data_get_standard_func42, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call43 = call %struct._GimpData* %31(%struct._GimpContext* %32)
  store %struct._GimpData* %call43, %struct._GimpData** %retval
  br label %return

if.end.44:                                        ; preds = %do.end.38
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.40, %if.else.36, %if.else.9
  %33 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %33
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_factory_data_save_single(%struct._GimpDataFactory* %factory, %struct._GimpData* %data, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %writable_dir = alloca i8*, align 8
  %my_error = alloca %struct._GError*, align 8
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_data_factory_data_save_single, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_data_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_data_factory_data_save_single, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp40 = icmp eq %struct._GError** %26, null
  br i1 %cmp40, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  %cmp41 = icmp eq %struct._GError* %28, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %lor.lhs.false, %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_data_factory_data_save_single, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %29 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call46 = call i32 @gimp_data_is_dirty(%struct._GimpData* %29)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %do.end.45
  store i32 1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %do.end.45
  %30 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call50 = call i8* @gimp_data_get_filename(%struct._GimpData* %30)
  %tobool51 = icmp ne i8* %call50, null
  br i1 %tobool51, label %if.end.61, label %if.then.52

if.then.52:                                       ; preds = %if.end.49
  store %struct._GError* null, %struct._GError** %my_error, align 8
  %31 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %call55 = call i8* @gimp_data_factory_get_save_dir(%struct._GimpDataFactory* %31, %struct._GError** %my_error)
  store i8* %call55, i8** %writable_dir, align 8
  %32 = load i8*, i8** %writable_dir, align 8
  %tobool56 = icmp ne i8* %32, null
  br i1 %tobool56, label %if.end.60, label %if.then.57

if.then.57:                                       ; preds = %if.then.52
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call58 = call i32 @gimp_data_error_quark() #7
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #6
  %34 = load %struct._GError*, %struct._GError** %my_error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %34, i32 0, i32 2
  %35 = load i8*, i8** %message, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %33, i32 %call58, i32 0, i8* %call59, i8* %35)
  call void @g_clear_error(%struct._GError** %my_error)
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.52
  %36 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %37 = load i8*, i8** %writable_dir, align 8
  call void @gimp_data_create_filename(%struct._GimpData* %36, i8* %37)
  %38 = load i8*, i8** %writable_dir, align 8
  call void @g_free(i8* %38)
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.49
  %39 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call62 = call i32 @gimp_data_is_writable(%struct._GimpData* %39)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.61
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.61
  %40 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %41 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call66 = call i32 @gimp_data_save(%struct._GimpData* %40, %struct._GError** %41)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.74, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool69 = icmp ne %struct._GError** %42, null
  br i1 %tobool69, label %if.end.73, label %if.then.70

if.then.70:                                       ; preds = %if.then.68
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call71 = call i32 @gimp_data_error_quark() #7
  %call72 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %43, i32 %call71, i32 0, i8* %call72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.then.68
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.65
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.end.73, %if.then.64, %if.then.57, %if.then.48, %if.else.43, %if.else.36, %if.else.9
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_data_error_quark() #2

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_data_factory_get_container, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %14, i32 0, i32 1
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* %15, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_data_factory_get_container_obsolete(%struct._GimpDataFactory* %factory) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_data_factory_get_container_obsolete, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container_obsolete = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %14, i32 0, i32 2
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container_obsolete, align 8
  store %struct._GimpContainer* %15, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %16
}

; Function Attrs: nounwind uwtable
define %struct._Gimp* @gimp_data_factory_get_gimp(%struct._GimpDataFactory* %factory) #3 {
entry:
  %retval = alloca %struct._Gimp*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_factory_get_gimp, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store %struct._Gimp* null, %struct._Gimp** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %14, i32 0, i32 0
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  store %struct._Gimp* %15, %struct._Gimp** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._Gimp*, %struct._Gimp** %retval
  ret %struct._Gimp* %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_factory_has_data_new_func(%struct._GimpDataFactory* %factory) #3 {
entry:
  %retval = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_data_factory_has_data_new_func, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %13, i32 0, i32 1
  %14 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %data_new_func = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %14, i32 0, i32 7
  %15 = load %struct._GimpData* (%struct._GimpContext*, i8*)*, %struct._GimpData* (%struct._GimpContext*, i8*)** %data_new_func, align 8
  %cmp11 = icmp ne %struct._GimpData* (%struct._GimpContext*, i8*)* %15, null
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_class_init(%struct._GimpDataFactoryClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDataFactoryClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpDataFactoryClass* %klass, %struct._GimpDataFactoryClass** %klass.addr, align 8
  %0 = load %struct._GimpDataFactoryClass*, %struct._GimpDataFactoryClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDataFactoryClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDataFactoryClass*, %struct._GimpDataFactoryClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDataFactoryClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_data_factory_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %7, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_data_factory_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %8 = load %struct._GimpDataFactoryClass*, %struct._GimpDataFactoryClass** %klass.addr, align 8
  %9 = bitcast %struct._GimpDataFactoryClass* %8 to i8*
  call void @g_type_class_add_private(i8* %9, i64 72)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactory*
  store %struct._GimpDataFactory* %2, %struct._GimpDataFactory** %factory, align 8
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %3, i32 0, i32 1
  %4 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %4, i32 0, i32 1
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool = icmp ne %struct._GimpContainer* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv2 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %6, i32 0, i32 1
  %7 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv2, align 8
  %container3 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %7, i32 0, i32 1
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container3, align 8
  %9 = bitcast %struct._GimpContainer* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv4 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv4, align 8
  %container5 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %11, i32 0, i32 1
  store %struct._GimpContainer* null, %struct._GimpContainer** %container5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv6 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %12, i32 0, i32 1
  %13 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv6, align 8
  %container_obsolete = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %13, i32 0, i32 2
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container_obsolete, align 8
  %tobool7 = icmp ne %struct._GimpContainer* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv9 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %15, i32 0, i32 1
  %16 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv9, align 8
  %container_obsolete10 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %16, i32 0, i32 2
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container_obsolete10, align 8
  %18 = bitcast %struct._GimpContainer* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv11 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %19, i32 0, i32 1
  %20 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv11, align 8
  %container_obsolete12 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %20, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %container_obsolete12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %21 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv14 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %21, i32 0, i32 1
  %22 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv14, align 8
  %path_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %22, i32 0, i32 3
  %23 = load i8*, i8** %path_property_name, align 8
  %tobool15 = icmp ne i8* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %24 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv17 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %24, i32 0, i32 1
  %25 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv17, align 8
  %path_property_name18 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %25, i32 0, i32 3
  %26 = load i8*, i8** %path_property_name18, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv19 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %27, i32 0, i32 1
  %28 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv19, align 8
  %path_property_name20 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %28, i32 0, i32 3
  store i8* null, i8** %path_property_name20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.13
  %29 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv22 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %29, i32 0, i32 1
  %30 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv22, align 8
  %writable_property_name = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %30, i32 0, i32 4
  %31 = load i8*, i8** %writable_property_name, align 8
  %tobool23 = icmp ne i8* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv25 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %32, i32 0, i32 1
  %33 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv25, align 8
  %writable_property_name26 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %33, i32 0, i32 4
  %34 = load i8*, i8** %writable_property_name26, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv27 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %35, i32 0, i32 1
  %36 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv27, align 8
  %writable_property_name28 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %36, i32 0, i32 4
  store i8* null, i8** %writable_property_name28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.end.21
  %37 = load i8*, i8** @gimp_data_factory_parent_class, align 8
  %38 = bitcast i8* %37 to %struct._GTypeClass*
  %call30 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %38, i64 80)
  %39 = bitcast %struct._GTypeClass* %call30 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %39, i32 0, i32 6
  %40 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %41 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %40(%struct._GObject* %41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_data_factory_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_factory_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDataFactory*
  store %struct._GimpDataFactory* %2, %struct._GimpDataFactory** %factory, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %3, i32 0, i32 1
  %4 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %4, i32 0, i32 1
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %6 = bitcast %struct._GimpContainer* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %8 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %7, i64* %8)
  %9 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %9, %call4
  store i64 %add, i64* %memsize, align 8
  %10 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv5 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %10, i32 0, i32 1
  %11 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv5, align 8
  %container_obsolete = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %11, i32 0, i32 2
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container_obsolete, align 8
  %13 = bitcast %struct._GimpContainer* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call8 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %14, i64* %15)
  %16 = load i64, i64* %memsize, align 8
  %add9 = add nsw i64 %16, %call8
  store i64 %add9, i64* %memsize, align 8
  %17 = load i64, i64* %memsize, align 8
  %18 = load i8*, i8** @gimp_data_factory_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call10)
  %20 = bitcast %struct._GTypeClass* %call11 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %20, i32 0, i32 3
  %21 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %22 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %23 = load i64*, i64** %gui_size.addr, align 8
  %call12 = call i64 %21(%struct._GimpObject* %22, i64* %23)
  %add13 = add nsw i64 %17, %call12
  ret i64 %add13
}

declare void @g_type_class_add_private(i8*, i64) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_load_data(%struct._GimpDatafileData* %file_data, i8* %data) #3 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct.GimpDataLoadContext*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %cache = alloca %struct._GHashTable*, align 8
  %loader = alloca %struct._GimpDataFactoryLoaderEntry*, align 8
  %error = alloca %struct._GError*, align 8
  %data_list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %cached_data = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %list35 = alloca %struct._GList*, align 8
  %obsolete = alloca i32, align 4
  %writable = alloca i32, align 4
  %deletable = alloca i32, align 4
  %writable_list = alloca %struct._GList*, align 8
  %data58 = alloca %struct._GimpData*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpDataLoadContext*
  store %struct.GimpDataLoadContext* %1, %struct.GimpDataLoadContext** %context, align 8
  %2 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %factory1 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %2, i32 0, i32 0
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory1, align 8
  store %struct._GimpDataFactory* %3, %struct._GimpDataFactory** %factory, align 8
  %4 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %cache2 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %4, i32 0, i32 2
  %5 = load %struct._GHashTable*, %struct._GHashTable** %cache2, align 8
  store %struct._GHashTable* %5, %struct._GHashTable** %cache, align 8
  store %struct._GimpDataFactoryLoaderEntry* null, %struct._GimpDataFactoryLoaderEntry** %loader, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %7, i32 0, i32 1
  %8 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv, align 8
  %n_loader_entries = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %8, i32 0, i32 6
  %9 = load i32, i32* %n_loader_entries, align 4
  %cmp = icmp slt i32 %6, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv3 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %11, i32 0, i32 1
  %12 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv3, align 8
  %loader_entries = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %12, i32 0, i32 5
  %13 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader_entries, align 8
  %arrayidx = getelementptr inbounds %struct._GimpDataFactoryLoaderEntry, %struct._GimpDataFactoryLoaderEntry* %13, i64 %idxprom
  store %struct._GimpDataFactoryLoaderEntry* %arrayidx, %struct._GimpDataFactoryLoaderEntry** %loader, align 8
  %14 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader, align 8
  %extension = getelementptr inbounds %struct._GimpDataFactoryLoaderEntry, %struct._GimpDataFactoryLoaderEntry* %14, i32 0, i32 1
  %15 = load i8*, i8** %extension, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %16, i32 0, i32 0
  %17 = load i8*, i8** %filename, align 8
  %18 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader, align 8
  %extension4 = getelementptr inbounds %struct._GimpDataFactoryLoaderEntry, %struct._GimpDataFactoryLoaderEntry* %18, i32 0, i32 1
  %19 = load i8*, i8** %extension4, align 8
  %call = call i32 @gimp_datafiles_check_extension(i8* %17, i8* %19)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %insert

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.87

insert:                                           ; preds = %if.then
  %21 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %tobool6 = icmp ne %struct._GHashTable* %21, null
  br i1 %tobool6, label %if.then.7, label %if.end.29

if.then.7:                                        ; preds = %insert
  %22 = load %struct._GHashTable*, %struct._GHashTable** %cache, align 8
  %23 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename8 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %23, i32 0, i32 0
  %24 = load i8*, i8** %filename8, align 8
  %call9 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* %24)
  %25 = bitcast i8* %call9 to %struct._GList*
  store %struct._GList* %25, %struct._GList** %cached_data, align 8
  %26 = load %struct._GList*, %struct._GList** %cached_data, align 8
  %tobool10 = icmp ne %struct._GList* %26, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.7
  %27 = load %struct._GList*, %struct._GList** %cached_data, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data11, align 8
  %29 = bitcast i8* %28 to %struct._GimpData*
  %call12 = call i64 @gimp_data_get_mtime(%struct._GimpData* %29)
  %cmp13 = icmp ne i64 %call12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.28

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %30 = load %struct._GList*, %struct._GList** %cached_data, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data15, align 8
  %32 = bitcast i8* %31 to %struct._GimpData*
  %call16 = call i64 @gimp_data_get_mtime(%struct._GimpData* %32)
  %33 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %mtime = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %33, i32 0, i32 4
  %34 = load i64, i64* %mtime, align 8
  %cmp17 = icmp eq i64 %call16, %34
  br i1 %cmp17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %land.lhs.true.14
  %35 = load %struct._GList*, %struct._GList** %cached_data, align 8
  store %struct._GList* %35, %struct._GList** %list, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %cond.end, %if.then.18
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool20 = icmp ne %struct._GList* %36, null
  br i1 %tobool20, label %for.body.21, label %for.end.27

for.body.21:                                      ; preds = %for.cond.19
  %37 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv22 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %37, i32 0, i32 1
  %38 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv22, align 8
  %container = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %38, i32 0, i32 1
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %data23 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data23, align 8
  %42 = bitcast i8* %41 to %struct._GimpObject*
  %call24 = call i32 @gimp_container_add(%struct._GimpContainer* %39, %struct._GimpObject* %42)
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.21
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %43, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.25
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  %45 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %45, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  br label %if.end.87

if.end.28:                                        ; preds = %land.lhs.true.14, %land.lhs.true, %if.then.7
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %insert
  %46 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader, align 8
  %load_func = getelementptr inbounds %struct._GimpDataFactoryLoaderEntry, %struct._GimpDataFactoryLoaderEntry* %46, i32 0, i32 0
  %47 = load %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)*, %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)** %load_func, align 8
  %48 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %context30 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %48, i32 0, i32 1
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context30, align 8
  %50 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename31 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %50, i32 0, i32 0
  %51 = load i8*, i8** %filename31, align 8
  %call32 = call %struct._GList* %47(%struct._GimpContext* %49, i8* %51, %struct._GError** %error)
  store %struct._GList* %call32, %struct._GList** %data_list, align 8
  %52 = load %struct._GList*, %struct._GList** %data_list, align 8
  %tobool33 = icmp ne %struct._GList* %52, null
  br i1 %tobool33, label %if.then.34, label %if.end.82

if.then.34:                                       ; preds = %if.end.29
  store i32 0, i32* %writable, align 4
  store i32 0, i32* %deletable, align 4
  %53 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %dirname = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %53, i32 0, i32 1
  %54 = load i8*, i8** %dirname, align 8
  %call36 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)) #8
  %cmp37 = icmp ne i8* %call36, null
  %conv = zext i1 %cmp37 to i32
  store i32 %conv, i32* %obsolete, align 4
  %55 = load i32, i32* %obsolete, align 4
  %tobool38 = icmp ne i32 %55, 0
  br i1 %tobool38, label %if.end.54, label %if.then.39

if.then.39:                                       ; preds = %if.then.34
  %56 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %57 = bitcast %struct._GimpDataFactory* %56 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  %call41 = call i8* @g_object_get_data(%struct._GObject* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0))
  %59 = bitcast i8* %call41 to %struct._GList*
  store %struct._GList* %59, %struct._GList** %writable_list, align 8
  %60 = load %struct._GList*, %struct._GList** %data_list, align 8
  %call42 = call i32 @g_list_length(%struct._GList* %60)
  %cmp43 = icmp eq i32 %call42, 1
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.39
  %61 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %dirname45 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %61, i32 0, i32 1
  %62 = load i8*, i8** %dirname45, align 8
  %63 = load %struct._GList*, %struct._GList** %writable_list, align 8
  %call46 = call i32 @gimp_data_factory_is_dir_writable(i8* %62, %struct._GList* %63)
  %tobool47 = icmp ne i32 %call46, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.39
  %64 = phi i1 [ false, %if.then.39 ], [ %tobool47, %land.rhs ]
  %land.ext = zext i1 %64 to i32
  store i32 %land.ext, i32* %deletable, align 4
  %65 = load i32, i32* %deletable, align 4
  %tobool48 = icmp ne i32 %65, 0
  br i1 %tobool48, label %land.rhs.49, label %land.end.52

land.rhs.49:                                      ; preds = %land.end
  %66 = load %struct._GimpDataFactoryLoaderEntry*, %struct._GimpDataFactoryLoaderEntry** %loader, align 8
  %writable50 = getelementptr inbounds %struct._GimpDataFactoryLoaderEntry, %struct._GimpDataFactoryLoaderEntry* %66, i32 0, i32 2
  %67 = load i32, i32* %writable50, align 4
  %tobool51 = icmp ne i32 %67, 0
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.49, %land.end
  %68 = phi i1 [ false, %land.end ], [ %tobool51, %land.rhs.49 ]
  %land.ext53 = zext i1 %68 to i32
  store i32 %land.ext53, i32* %writable, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %land.end.52, %if.then.34
  %69 = load %struct._GList*, %struct._GList** %data_list, align 8
  store %struct._GList* %69, %struct._GList** %list35, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %cond.end.79, %if.end.54
  %70 = load %struct._GList*, %struct._GList** %list35, align 8
  %tobool56 = icmp ne %struct._GList* %70, null
  br i1 %tobool56, label %for.body.57, label %for.end.81

for.body.57:                                      ; preds = %for.cond.55
  %71 = load %struct._GList*, %struct._GList** %list35, align 8
  %data59 = getelementptr inbounds %struct._GList, %struct._GList* %71, i32 0, i32 0
  %72 = load i8*, i8** %data59, align 8
  %73 = bitcast i8* %72 to %struct._GimpData*
  store %struct._GimpData* %73, %struct._GimpData** %data58, align 8
  %74 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  %75 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename60 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %75, i32 0, i32 0
  %76 = load i8*, i8** %filename60, align 8
  %77 = load i32, i32* %writable, align 4
  %78 = load i32, i32* %deletable, align 4
  call void @gimp_data_set_filename(%struct._GimpData* %74, i8* %76, i32 %77, i32 %78)
  %79 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  %80 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %mtime61 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %80, i32 0, i32 4
  %81 = load i64, i64* %mtime61, align 8
  call void @gimp_data_set_mtime(%struct._GimpData* %79, i64 %81)
  %82 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  call void @gimp_data_clean(%struct._GimpData* %82)
  %83 = load i32, i32* %obsolete, align 4
  %tobool62 = icmp ne i32 %83, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.body.57
  %84 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv64 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %84, i32 0, i32 1
  %85 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv64, align 8
  %container_obsolete = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %85, i32 0, i32 2
  %86 = load %struct._GimpContainer*, %struct._GimpContainer** %container_obsolete, align 8
  %87 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  %88 = bitcast %struct._GimpData* %87 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_object_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call65)
  %89 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpObject*
  %call67 = call i32 @gimp_container_add(%struct._GimpContainer* %86, %struct._GimpObject* %89)
  br label %if.end.73

if.else:                                          ; preds = %for.body.57
  %90 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  %91 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %top_directory = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %91, i32 0, i32 3
  %92 = load i8*, i8** %top_directory, align 8
  call void @gimp_data_set_folder_tags(%struct._GimpData* %90, i8* %92)
  %93 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv68 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %93, i32 0, i32 1
  %94 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv68, align 8
  %container69 = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %94, i32 0, i32 1
  %95 = load %struct._GimpContainer*, %struct._GimpContainer** %container69, align 8
  %96 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  %97 = bitcast %struct._GimpData* %96 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_object_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call70)
  %98 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpObject*
  %call72 = call i32 @gimp_container_add(%struct._GimpContainer* %95, %struct._GimpObject* %98)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.63
  %99 = load %struct._GimpData*, %struct._GimpData** %data58, align 8
  %100 = bitcast %struct._GimpData* %99 to i8*
  call void @g_object_unref(i8* %100)
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %101 = load %struct._GList*, %struct._GList** %list35, align 8
  %tobool75 = icmp ne %struct._GList* %101, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %for.inc.74
  %102 = load %struct._GList*, %struct._GList** %list35, align 8
  %next77 = getelementptr inbounds %struct._GList, %struct._GList* %102, i32 0, i32 1
  %103 = load %struct._GList*, %struct._GList** %next77, align 8
  br label %cond.end.79

cond.false.78:                                    ; preds = %for.inc.74
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.76
  %cond80 = phi %struct._GList* [ %103, %cond.true.76 ], [ null, %cond.false.78 ]
  store %struct._GList* %cond80, %struct._GList** %list35, align 8
  br label %for.cond.55

for.end.81:                                       ; preds = %for.cond.55
  %104 = load %struct._GList*, %struct._GList** %data_list, align 8
  call void @g_list_free(%struct._GList* %104)
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %if.end.29
  %105 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool83 = icmp ne %struct._GError* %105, null
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.82
  %106 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %priv85 = getelementptr inbounds %struct._GimpDataFactory, %struct._GimpDataFactory* %106, i32 0, i32 1
  %107 = load %struct._GimpDataFactoryPriv*, %struct._GimpDataFactoryPriv** %priv85, align 8
  %gimp = getelementptr inbounds %struct._GimpDataFactoryPriv, %struct._GimpDataFactoryPriv* %107, i32 0, i32 0
  %108 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0)) #6
  %109 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %109, i32 0, i32 2
  %110 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %108, %struct._GObject* null, i32 2, i8* %call86, i8* %110)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.87

if.end.87:                                        ; preds = %for.end, %for.end.27, %if.then.84, %if.end.82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_factory_load_data_recursive(%struct._GimpDatafileData* %file_data, i8* %data) #3 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct.GimpDataLoadContext*, align 8
  %top_set = alloca i32, align 4
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.GimpDataLoadContext*
  store %struct.GimpDataLoadContext* %1, %struct.GimpDataLoadContext** %context, align 8
  store i32 0, i32* %top_set, align 4
  %2 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %top_directory = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %2, i32 0, i32 3
  %3 = load i8*, i8** %top_directory, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %dirname = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %4, i32 0, i32 1
  %5 = load i8*, i8** %dirname, align 8
  %6 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %top_directory1 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %6, i32 0, i32 3
  store i8* %5, i8** %top_directory1, align 8
  store i32 1, i32* %top_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %7, i32 0, i32 0
  %8 = load i8*, i8** %filename, align 8
  %9 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %10 = bitcast %struct.GimpDataLoadContext* %9 to i8*
  call void @gimp_datafiles_read_directories(i8* %8, i32 1, void (%struct._GimpDatafileData*, i8*)* @gimp_data_factory_load_data, i8* %10)
  %11 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename2 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %11, i32 0, i32 0
  %12 = load i8*, i8** %filename2, align 8
  %13 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %14 = bitcast %struct.GimpDataLoadContext* %13 to i8*
  call void @gimp_datafiles_read_directories(i8* %12, i32 4, void (%struct._GimpDatafileData*, i8*)* @gimp_data_factory_load_data_recursive, i8* %14)
  %15 = load i32, i32* %top_set, align 4
  %tobool3 = icmp ne i32 %15, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.GimpDataLoadContext*, %struct.GimpDataLoadContext** %context, align 8
  %top_directory5 = getelementptr inbounds %struct.GimpDataLoadContext, %struct.GimpDataLoadContext* %16, i32 0, i32 3
  store i8* null, i8** %top_directory5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  ret void
}

declare void @gimp_path_free(%struct._GList*) #1

declare i32 @gimp_datafiles_check_extension(i8*, i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i64 @gimp_data_get_mtime(%struct._GimpData*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_data_factory_is_dir_writable(i8* %dirname, %struct._GList* %writable_path) #3 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %writable_path.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct._GList* %writable_path, %struct._GList** %writable_path.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %writable_path.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %dirname.addr, align 8
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %call = call i32 @g_str_has_prefix(i8* %2, i8* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %5, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %7, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare void @gimp_data_set_filename(%struct._GimpData*, i8*, i32, i32) #1

declare void @gimp_data_set_mtime(%struct._GimpData*, i64) #1

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_set_folder_tags(%struct._GimpData*, i8*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare i32 @gimp_data_is_internal(%struct._GimpData*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GList* @g_list_find_custom(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

declare i32 @g_file_test(i8*, i32) #1

declare noalias i8* @g_filename_display_name(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
