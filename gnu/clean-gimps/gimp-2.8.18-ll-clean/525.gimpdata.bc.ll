; ModuleID = './app/core/gimpdata.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GError = type { i32, i32, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GimpDataPrivate = type { i8*, i32, i8, i32, i64, i8*, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpTaggedInterface = type { %struct._GTypeInterface, void (%struct._GimpTagged*, %struct._GimpTag*)*, void (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, %struct._GList* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpTagged = type opaque
%struct._GimpTag = type { %struct._GObject, i32, i32, i32 }
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GCancellablePrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_data_get_type.data_type = internal global i64 0, align 8
@gimp_data_get_type.data_info = internal constant %struct._GTypeInfo { i16 312, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpDataClass*)* @gimp_data_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 32, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpData*, %struct._GimpDataClass*)* @gimp_data_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@gimp_data_get_type.tagged_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpTaggedInterface*)* @gimp_data_tagged_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpData\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_data_save = private unnamed_addr constant [15 x i8] c"gimp_data_save\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DATA (data)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"private->writable == TRUE\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"private->filename != NULL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"time::*\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"time::modified\00", align 1
@__func__.gimp_data_dirty = private unnamed_addr constant [16 x i8] c"gimp_data_dirty\00", align 1
@data_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_data_clean = private unnamed_addr constant [16 x i8] c"gimp_data_clean\00", align 1
@__func__.gimp_data_is_dirty = private unnamed_addr constant [19 x i8] c"gimp_data_is_dirty\00", align 1
@__func__.gimp_data_freeze = private unnamed_addr constant [17 x i8] c"gimp_data_freeze\00", align 1
@__func__.gimp_data_thaw = private unnamed_addr constant [15 x i8] c"gimp_data_thaw\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"private->freeze_count > 0\00", align 1
@__func__.gimp_data_is_frozen = private unnamed_addr constant [20 x i8] c"gimp_data_is_frozen\00", align 1
@__func__.gimp_data_delete_from_disk = private unnamed_addr constant [27 x i8] c"gimp_data_delete_from_disk\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"private->deletable == TRUE\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Could not delete '%s': %s\00", align 1
@__func__.gimp_data_get_extension = private unnamed_addr constant [24 x i8] c"gimp_data_get_extension\00", align 1
@__func__.gimp_data_set_filename = private unnamed_addr constant [23 x i8] c"gimp_data_set_filename\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (filename)\00", align 1
@__func__.gimp_data_create_filename = private unnamed_addr constant [26 x i8] c"gimp_data_create_filename\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"dest_dir != NULL\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"g_path_is_absolute (dest_dir)\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"gimp_data_create_filename:\0Ag_filename_from_utf8() failed for '%s': %s\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"\5C/*?\22`'<>{}|\0A\09 ;:$^&\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%s-%d%s\00", align 1
@__func__.gimp_data_get_filename = private unnamed_addr constant [23 x i8] c"gimp_data_get_filename\00", align 1
@__func__.gimp_data_set_folder_tags = private unnamed_addr constant [26 x i8] c"gimp_data_set_folder_tags\00", align 1
@.str.18 = private unnamed_addr constant [133 x i8] c"g_str_has_prefix (dirname, top_directory) && (dirname[top_directory_len] == '\5C0' || G_IS_DIR_SEPARATOR (dirname[top_directory_len]))\00", align 1
@tag_blacklist = internal global [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)], align 16
@__func__.gimp_data_get_mime_type = private unnamed_addr constant [24 x i8] c"gimp_data_get_mime_type\00", align 1
@__func__.gimp_data_is_writable = private unnamed_addr constant [22 x i8] c"gimp_data_is_writable\00", align 1
@__func__.gimp_data_is_deletable = private unnamed_addr constant [23 x i8] c"gimp_data_is_deletable\00", align 1
@__func__.gimp_data_set_mtime = private unnamed_addr constant [20 x i8] c"gimp_data_set_mtime\00", align 1
@__func__.gimp_data_get_mtime = private unnamed_addr constant [20 x i8] c"gimp_data_get_mtime\00", align 1
@__func__.gimp_data_duplicate = private unnamed_addr constant [20 x i8] c"gimp_data_duplicate\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"deletable\00", align 1
@__func__.gimp_data_make_internal = private unnamed_addr constant [24 x i8] c"gimp_data_make_internal\00", align 1
@__func__.gimp_data_is_internal = private unnamed_addr constant [22 x i8] c"gimp_data_is_internal\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"gimp-data-error-quark\00", align 1
@parent_class = internal global %struct._GimpViewableClass* null, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gimpdata.c\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"${gimp_data_dir}\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"${gimp_dir}\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Failed to convert '%s' to utf8.\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"dynamics\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"gradients\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"tool-presets\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_data_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_data_get_type.data_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_viewable_get_type() #7
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_data_get_type.data_info, i32 0)
  store i64 %call1, i64* @gimp_data_get_type.data_type, align 8
  %1 = load i64, i64* @gimp_data_get_type.data_type, align 8
  %call2 = call i64 @gimp_tagged_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %1, i64 %call2, %struct._GInterfaceInfo* @gimp_data_get_type.tagged_info)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_data_get_type.data_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_class_init(%struct._GimpDataClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpDataClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpDataClass* %klass, %struct._GimpDataClass** %klass.addr, align 8
  %0 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDataClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDataClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDataClass* %6 to i8*
  %call3 = call i8* @g_type_class_peek_parent(i8* %7)
  %8 = bitcast i8* %call3 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** @parent_class, align 8
  %9 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpDataClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i64 %11, i32 1, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call4, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @data_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_data_constructed, void (%struct._GObject*)** %constructed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_data_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_data_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_data_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %16 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %16, i32 0, i32 2
  store void (%struct._GimpObject*)* @gimp_data_name_changed, void (%struct._GimpObject*)** %name_changed, align 8
  %17 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %17, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_data_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %18 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %18, i32 0, i32 1
  store void (%struct._GimpData*)* @gimp_data_real_dirty, void (%struct._GimpData*)** %dirty, align 8
  %19 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %19, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* null, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %20 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %20, i32 0, i32 3
  store i8* (%struct._GimpData*)* null, i8* (%struct._GimpData*)** %get_extension, align 8
  %21 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %21, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* null, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 1, %struct._GParamSpec* %call5)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 2, %struct._GParamSpec* %call6)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 3, %struct._GParamSpec* %call7)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 4, %struct._GParamSpec* %call8)
  %26 = load %struct._GimpDataClass*, %struct._GimpDataClass** %klass.addr, align 8
  %27 = bitcast %struct._GimpDataClass* %26 to i8*
  call void @g_type_class_add_private(i8* %27, i64 48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_init(%struct._GimpData* %data, %struct._GimpDataClass* %data_class) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %data_class.addr = alloca %struct._GimpDataClass*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GimpDataClass* %data_class, %struct._GimpDataClass** %data_class.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %writable, align 4
  %4 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %4, i32 0, i32 2
  %bf.load2 = load i8, i8* %deletable, align 4
  %bf.clear3 = and i8 %bf.load2, -3
  %bf.set4 = or i8 %bf.clear3, 2
  store i8 %bf.set4, i8* %deletable, align 4
  %5 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %5, i32 0, i32 2
  %bf.load5 = load i8, i8* %dirty, align 4
  %bf.clear6 = and i8 %bf.load5, -5
  %bf.set7 = or i8 %bf.clear6, 4
  store i8 %bf.set7, i8* %dirty, align 4
  %6 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class.addr, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %6, i32 0, i32 2
  %7 = load i32 (%struct._GimpData*, %struct._GError**)*, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %tobool = icmp ne i32 (%struct._GimpData*, %struct._GError**)* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable8 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %8, i32 0, i32 2
  %bf.load9 = load i8, i8* %writable8, align 4
  %bf.clear10 = and i8 %bf.load9, -2
  store i8 %bf.clear10, i8* %writable8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void @gimp_data_freeze(%struct._GimpData* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_tagged_iface_init(%struct._GimpTaggedInterface* %iface) #1 {
entry:
  %iface.addr = alloca %struct._GimpTaggedInterface*, align 8
  store %struct._GimpTaggedInterface* %iface, %struct._GimpTaggedInterface** %iface.addr, align 8
  %0 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %add_tag = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %0, i32 0, i32 3
  store i32 (%struct._GimpTagged*, %struct._GimpTag*)* @gimp_data_add_tag, i32 (%struct._GimpTagged*, %struct._GimpTag*)** %add_tag, align 8
  %1 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %remove_tag = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %1, i32 0, i32 4
  store i32 (%struct._GimpTagged*, %struct._GimpTag*)* @gimp_data_remove_tag, i32 (%struct._GimpTagged*, %struct._GimpTag*)** %remove_tag, align 8
  %2 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_tags = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %2, i32 0, i32 5
  store %struct._GList* (%struct._GimpTagged*)* @gimp_data_get_tags, %struct._GList* (%struct._GimpTagged*)** %get_tags, align 8
  %3 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_identifier = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %3, i32 0, i32 6
  store i8* (%struct._GimpTagged*)* @gimp_data_get_identifier, i8* (%struct._GimpTagged*)** %get_identifier, align 8
  %4 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_checksum = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %4, i32 0, i32 7
  store i8* (%struct._GimpTagged*)* @gimp_data_get_checksum, i8* (%struct._GimpTagged*)** %get_checksum, align 8
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #3

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #3

; Function Attrs: nounwind uwtable
define i32 @gimp_data_save(%struct._GimpData* %data, %struct._GError** %error) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_data_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_data_save, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_data_get_type() #7
  %call19 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast i8* %call19 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %18, %struct._GimpDataPrivate** %private, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.17
  %19 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %19, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp21 = icmp eq i32 %bf.cast, 1
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_data_save, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %20 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %20, i32 0, i32 2
  %bf.load26 = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load26, 3
  %bf.clear27 = and i8 %bf.lshr, 1
  %bf.cast28 = zext i8 %bf.clear27 to i32
  %tobool29 = icmp ne i32 %bf.cast28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %do.end.25
  %21 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %21, i32 0, i32 2
  %bf.load31 = load i8, i8* %dirty, align 4
  %bf.clear32 = and i8 %bf.load31, -5
  store i8 %bf.clear32, i8* %dirty, align 4
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %do.end.25
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %22 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %22, i32 0, i32 0
  %23 = load i8*, i8** %filename, align 8
  %cmp35 = icmp ne i8* %23, null
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.34
  br label %if.end.38

if.else.37:                                       ; preds = %do.body.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_data_save, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %24 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %25 = bitcast %struct._GimpData* %24 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %27 = bitcast %struct._GTypeClass* %26 to %struct._GimpDataClass*
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %27, i32 0, i32 2
  %28 = load i32 (%struct._GimpData*, %struct._GError**)*, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %tobool41 = icmp ne i32 (%struct._GimpData*, %struct._GError**)* %28, null
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %do.end.39
  %29 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %30 = bitcast %struct._GimpData* %29 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpDataClass*
  %save44 = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %32, i32 0, i32 2
  %33 = load i32 (%struct._GimpData*, %struct._GError**)*, i32 (%struct._GimpData*, %struct._GError**)** %save44, align 8
  %34 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call45 = call i32 %33(%struct._GimpData* %34, %struct._GError** %35)
  store i32 %call45, i32* %success, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %do.end.39
  %36 = load i32, i32* %success, align 4
  %tobool47 = icmp ne i32 %36, 0
  br i1 %tobool47, label %if.then.48, label %if.end.61

if.then.48:                                       ; preds = %if.end.46
  %37 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename50 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %37, i32 0, i32 0
  %38 = load i8*, i8** %filename50, align 8
  %call51 = call %struct._GFile* @g_file_new_for_path(i8* %38)
  store %struct._GFile* %call51, %struct._GFile** %file, align 8
  %39 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call53 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call53, %struct._GFileInfo** %info, align 8
  %40 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool54 = icmp ne %struct._GFileInfo* %40, null
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.48
  %41 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call56 = call i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %42 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mtime = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %42, i32 0, i32 4
  store i64 %call56, i64* %mtime, align 8
  %43 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %44 = bitcast %struct._GFileInfo* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.48
  %45 = load %struct._GFile*, %struct._GFile** %file, align 8
  %46 = bitcast %struct._GFile* %45 to i8*
  call void @g_object_unref(i8* %46)
  %47 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %dirty58 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %47, i32 0, i32 2
  %bf.load59 = load i8, i8* %dirty58, align 4
  %bf.clear60 = and i8 %bf.load59, -5
  store i8 %bf.clear60, i8* %dirty58, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.57, %if.end.46
  %48 = load i32, i32* %success, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.else.37, %if.then.30, %if.else.23, %if.else.15, %if.else.9
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #2

declare %struct._GFile* @g_file_new_for_path(i8*) #2

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #2

declare i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo*, i8*) #2

declare void @g_object_unref(i8*) #2

; Function Attrs: nounwind uwtable
define void @gimp_data_dirty(%struct._GimpData* %data) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_data_dirty, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %freeze_count = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 3
  %17 = load i32, i32* %freeze_count, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %19 = bitcast %struct._GimpData* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @data_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_data_clean(%struct._GimpData* %data) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_data_clean, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 2
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, i8* %dirty, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_is_dirty(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_data_is_dirty, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 2
  %bf.load = load i8, i8* %dirty, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_data_freeze(%struct._GimpData* %data) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_data_freeze, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %freeze_count = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 3
  %17 = load i32, i32* %freeze_count, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %freeze_count, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_data_thaw(%struct._GimpData* %data) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_data_thaw, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %freeze_count = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 3
  %17 = load i32, i32* %freeze_count, align 4
  %cmp14 = icmp sgt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_data_thaw, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.23

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %freeze_count19 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %18, i32 0, i32 3
  %19 = load i32, i32* %freeze_count19, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %freeze_count19, align 4
  %20 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %freeze_count20 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %20, i32 0, i32 3
  %21 = load i32, i32* %freeze_count20, align 4
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.end.18
  %22 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void @gimp_data_dirty(%struct._GimpData* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.else.16, %if.then.22, %do.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_is_frozen(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_data_is_frozen, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %freeze_count = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 3
  %17 = load i32, i32* %freeze_count, align 4
  %cmp13 = icmp sgt i32 %17, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_delete_from_disk(%struct._GimpData* %data, %struct._GError** %error) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_delete_from_disk, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_delete_from_disk, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_data_get_type() #7
  %call19 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast i8* %call19 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %18, %struct._GimpDataPrivate** %private, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.17
  %19 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %19, i32 0, i32 0
  %20 = load i8*, i8** %filename, align 8
  %cmp21 = icmp ne i8* %20, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_delete_from_disk, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %21 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %21, i32 0, i32 2
  %bf.load = load i8, i8* %deletable, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp27 = icmp eq i32 %bf.cast, 1
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_data_delete_from_disk, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %22 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %22, i32 0, i32 2
  %bf.load32 = load i8, i8* %internal, align 4
  %bf.lshr33 = lshr i8 %bf.load32, 3
  %bf.clear34 = and i8 %bf.lshr33, 1
  %bf.cast35 = zext i8 %bf.clear34 to i32
  %tobool36 = icmp ne i32 %bf.cast35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.31
  store i32 1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %do.end.31
  %23 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename39 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %23, i32 0, i32 0
  %24 = load i8*, i8** %filename39, align 8
  %call40 = call i32 @g_unlink(i8* %24)
  %cmp41 = icmp eq i32 %call40, -1
  br i1 %cmp41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.38
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call43 = call i32 @gimp_data_error_quark() #7
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0)) #6
  %26 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename45 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %26, i32 0, i32 0
  %27 = load i8*, i8** %filename45, align 8
  %call46 = call i8* @gimp_filename_to_utf8(i8* %27)
  %call47 = call i32* @__errno_location() #7
  %28 = load i32, i32* %call47, align 4
  %call48 = call i8* @g_strerror(i32 %28) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %25, i32 %call43, i32 3, i8* %call44, i8* %call46, i8* %call48)
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.38
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.42, %if.then.37, %if.else.29, %if.else.23, %if.else.15, %if.else.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare i32 @g_unlink(i8*) #2

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #2

; Function Attrs: nounwind readnone uwtable
define i32 @gimp_data_error_quark() #0 {
entry:
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @gimp_filename_to_utf8(i8*) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define i8* @gimp_data_get_extension(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i8*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_data_get_extension, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDataClass*
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %16, i32 0, i32 3
  %17 = load i8* (%struct._GimpData*)*, i8* (%struct._GimpData*)** %get_extension, align 8
  %tobool12 = icmp ne i8* (%struct._GimpData*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %19 = bitcast %struct._GimpData* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpDataClass*
  %get_extension15 = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %21, i32 0, i32 3
  %22 = load i8* (%struct._GimpData*)*, i8* (%struct._GimpData*)** %get_extension15, align 8
  %23 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call16 = call i8* %22(%struct._GimpData* %23)
  store i8* %call16, i8** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind uwtable
define void @gimp_data_set_filename(%struct._GimpData* %data, i8* %filename, i32 %writable, i32 %deletable) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %filename.addr = alloca i8*, align 8
  %writable.addr = alloca i32, align 4
  %deletable.addr = alloca i32, align 4
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dirname = alloca i8*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %writable, i32* %writable.addr, align 4
  store i32 %deletable, i32* %deletable.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_data_set_filename, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.79

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_data_set_filename, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.79

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %filename.addr, align 8
  %call18 = call i32 @g_path_is_absolute(i8* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_data_set_filename, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.79

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %15 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %16 = bitcast %struct._GimpData* %15 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_data_get_type() #7
  %call25 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call24)
  %17 = bitcast i8* %call25 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %17, %struct._GimpDataPrivate** %private, align 8
  %18 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %18, i32 0, i32 2
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool26 = icmp ne i32 %bf.cast, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.23
  br label %if.end.79

if.end.28:                                        ; preds = %do.end.23
  %19 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename29 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %19, i32 0, i32 0
  %20 = load i8*, i8** %filename29, align 8
  %tobool30 = icmp ne i8* %20, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %21 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename32 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %21, i32 0, i32 0
  %22 = load i8*, i8** %filename32, align 8
  call void @g_free(i8* %22)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  %23 = load i8*, i8** %filename.addr, align 8
  %call34 = call noalias i8* @g_strdup(i8* %23)
  %24 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename35 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %24, i32 0, i32 0
  store i8* %call34, i8** %filename35, align 8
  %25 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable36 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %25, i32 0, i32 2
  %bf.load37 = load i8, i8* %writable36, align 4
  %bf.clear38 = and i8 %bf.load37, -2
  store i8 %bf.clear38, i8* %writable36, align 4
  %26 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable39 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %26, i32 0, i32 2
  %bf.load40 = load i8, i8* %deletable39, align 4
  %bf.clear41 = and i8 %bf.load40, -3
  store i8 %bf.clear41, i8* %deletable39, align 4
  %27 = load i32, i32* %writable.addr, align 4
  %tobool42 = icmp ne i32 %27, 0
  br i1 %tobool42, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %28 = load i32, i32* %deletable.addr, align 4
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.end.79

if.then.44:                                       ; preds = %lor.lhs.false, %if.end.33
  %29 = load i8*, i8** %filename.addr, align 8
  %call46 = call noalias i8* @g_path_get_dirname(i8* %29)
  store i8* %call46, i8** %dirname, align 8
  %30 = load i8*, i8** %filename.addr, align 8
  %call47 = call i32 @g_access(i8* %30, i32 0)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %land.lhs.true.49, label %lor.lhs.false.52

land.lhs.true.49:                                 ; preds = %if.then.44
  %31 = load i8*, i8** %filename.addr, align 8
  %call50 = call i32 @g_access(i8* %31, i32 2)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.49, %if.then.44
  %32 = load i8*, i8** %filename.addr, align 8
  %call53 = call i32 @g_access(i8* %32, i32 0)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.71

land.lhs.true.55:                                 ; preds = %lor.lhs.false.52
  %33 = load i8*, i8** %dirname, align 8
  %call56 = call i32 @g_access(i8* %33, i32 2)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %land.lhs.true.55, %land.lhs.true.49
  %34 = load i32, i32* %writable.addr, align 4
  %tobool59 = icmp ne i32 %34, 0
  %cond = select i1 %tobool59, i32 1, i32 0
  %35 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable60 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %35, i32 0, i32 2
  %36 = trunc i32 %cond to i8
  %bf.load61 = load i8, i8* %writable60, align 4
  %bf.value = and i8 %36, 1
  %bf.clear62 = and i8 %bf.load61, -2
  %bf.set = or i8 %bf.clear62, %bf.value
  store i8 %bf.set, i8* %writable60, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %37 = load i32, i32* %deletable.addr, align 4
  %tobool63 = icmp ne i32 %37, 0
  %cond64 = select i1 %tobool63, i32 1, i32 0
  %38 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable65 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %38, i32 0, i32 2
  %39 = trunc i32 %cond64 to i8
  %bf.load66 = load i8, i8* %deletable65, align 4
  %bf.value67 = and i8 %39, 1
  %bf.shl = shl i8 %bf.value67, 1
  %bf.clear68 = and i8 %bf.load66, -3
  %bf.set69 = or i8 %bf.clear68, %bf.shl
  store i8 %bf.set69, i8* %deletable65, align 4
  %bf.result.cast70 = zext i8 %bf.value67 to i32
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.58, %land.lhs.true.55, %lor.lhs.false.52
  %40 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %40)
  %41 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %42 = bitcast %struct._GimpData* %41 to %struct._GTypeInstance*
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %44 = bitcast %struct._GTypeClass* %43 to %struct._GimpDataClass*
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %44, i32 0, i32 2
  %45 = load i32 (%struct._GimpData*, %struct._GError**)*, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %tobool73 = icmp ne i32 (%struct._GimpData*, %struct._GError**)* %45, null
  br i1 %tobool73, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %if.end.71
  %46 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable75 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %46, i32 0, i32 2
  %bf.load76 = load i8, i8* %writable75, align 4
  %bf.clear77 = and i8 %bf.load76, -2
  store i8 %bf.clear77, i8* %writable75, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.71
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.9, %if.else.14, %if.else.21, %if.then.27, %if.end.78, %lor.lhs.false
  ret void
}

declare i32 @g_path_is_absolute(i8*) #2

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_path_get_dirname(i8*) #2

declare i32 @g_access(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @gimp_data_create_filename(%struct._GimpData* %data, i8* %dest_dir) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %dest_dir.addr = alloca i8*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %safename = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %fullpath = alloca i8*, align 8
  %i = alloca i32, align 4
  %unum = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i8* %dest_dir, i8** %dest_dir.addr, align 8
  store i32 1, i32* %unum, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_create_filename, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %dest_dir.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_create_filename, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %dest_dir.addr, align 8
  %call18 = call i32 @g_path_is_absolute(i8* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_create_filename, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %15 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %16 = bitcast %struct._GimpData* %15 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_data_get_type() #7
  %call25 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call24)
  %17 = bitcast i8* %call25 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %17, %struct._GimpDataPrivate** %private, align 8
  %18 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %18, i32 0, i32 2
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool26 = icmp ne i32 %bf.cast, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.23
  br label %return

if.end.28:                                        ; preds = %do.end.23
  %19 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %20 = bitcast %struct._GimpData* %19 to i8*
  %call29 = call i8* @gimp_object_get_name(i8* %20)
  %call30 = call noalias i8* @g_filename_from_utf8(i8* %call29, i64 -1, i64* null, i64* null, %struct._GError** %error)
  store i8* %call30, i8** %safename, align 8
  %21 = load i8*, i8** %safename, align 8
  %tobool31 = icmp ne i8* %21, null
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %if.end.28
  %22 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %23 = bitcast %struct._GimpData* %22 to i8*
  %call33 = call i8* @gimp_object_get_name(i8* %23)
  %24 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %24, i32 0, i32 2
  %25 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i32 0, i32 0), i8* %call33, i8* %25)
  %26 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %26)
  br label %return

if.end.34:                                        ; preds = %if.end.28
  %27 = load i8*, i8** %safename, align 8
  %call35 = call i8* @g_strchug(i8* %27)
  %call36 = call i8* @g_strchomp(i8* %call35)
  %28 = load i8*, i8** %safename, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv, 46
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %30 = load i8*, i8** %safename, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 45, i8* %arrayidx40, align 1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.34
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load i8*, i8** %safename, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %32, i64 %idxprom
  %33 = load i8, i8* %arrayidx42, align 1
  %tobool43 = icmp ne i8 %33, 0
  br i1 %tobool43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load i8*, i8** %safename, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %35, i64 %idxprom44
  %36 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %36 to i32
  %call47 = call i8* @strchr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 %conv46) #8
  %tobool48 = icmp ne i8* %call47, null
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i8*, i8** %safename, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %38, i64 %idxprom50
  store i8 45, i8* %arrayidx51, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i8*, i8** %safename, align 8
  %41 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call53 = call i8* @gimp_data_get_extension(%struct._GimpData* %41)
  %call54 = call noalias i8* (i8*, ...) @g_strconcat(i8* %40, i8* %call53, i8* null)
  store i8* %call54, i8** %filename, align 8
  %42 = load i8*, i8** %dest_dir.addr, align 8
  %43 = load i8*, i8** %filename, align 8
  %call55 = call noalias i8* (i8*, ...) @g_build_filename(i8* %42, i8* %43, i8* null)
  store i8* %call55, i8** %fullpath, align 8
  %44 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %44)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %45 = load i8*, i8** %fullpath, align 8
  %call56 = call i32 @g_file_test(i8* %45, i32 16)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %fullpath, align 8
  call void @g_free(i8* %46)
  %47 = load i8*, i8** %safename, align 8
  %48 = load i32, i32* %unum, align 4
  %inc58 = add nsw i32 %48, 1
  store i32 %inc58, i32* %unum, align 4
  %49 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call59 = call i8* @gimp_data_get_extension(%struct._GimpData* %49)
  %call60 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* %47, i32 %48, i8* %call59)
  store i8* %call60, i8** %filename, align 8
  %50 = load i8*, i8** %dest_dir.addr, align 8
  %51 = load i8*, i8** %filename, align 8
  %call61 = call noalias i8* (i8*, ...) @g_build_filename(i8* %50, i8* %51, i8* null)
  store i8* %call61, i8** %fullpath, align 8
  %52 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %52)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load i8*, i8** %safename, align 8
  call void @g_free(i8* %53)
  %54 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %55 = load i8*, i8** %fullpath, align 8
  call void @gimp_data_set_filename(%struct._GimpData* %54, i8* %55, i32 1, i32 1)
  %56 = load i8*, i8** %fullpath, align 8
  call void @g_free(i8* %56)
  br label %return

return:                                           ; preds = %while.end, %if.then.32, %if.then.27, %if.else.21, %if.else.14, %if.else.9
  ret void
}

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

declare i8* @gimp_object_get_name(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
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

declare void @g_error_free(%struct._GError*) #2

declare i8* @g_strchomp(i8*) #2

declare i8* @g_strchug(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_strconcat(i8*, ...) #2

declare noalias i8* @g_build_filename(i8*, ...) #2

declare i32 @g_file_test(i8*, i32) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @gimp_data_get_filename(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i8*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_data_get_filename, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 0
  %17 = load i8*, i8** %filename, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define void @gimp_data_set_folder_tags(%struct._GimpData* %data, i8* %top_directory) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %top_directory.addr = alloca i8*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %dirname = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %top_directory_len = alloca i64, align 8
  %basename = alloca i8*, align 8
  %tag = alloca %struct._GimpTag*, align 8
  %tmp48 = alloca i8*, align 8
  %basename59 = alloca i8*, align 8
  %i = alloca i32, align 4
  %tag75 = alloca %struct._GimpTag*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i8* %top_directory, i8** %top_directory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_set_folder_tags, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.80

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 2
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool13 = icmp ne i32 %bf.cast, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %if.end.80

if.end.15:                                        ; preds = %do.end
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %17 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %17, i32 0, i32 0
  %18 = load i8*, i8** %filename, align 8
  %cmp17 = icmp ne i8* %18, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_set_folder_tags, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.80

if.end.20:                                        ; preds = %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %19 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename22 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %19, i32 0, i32 0
  %20 = load i8*, i8** %filename22, align 8
  %call23 = call noalias i8* @g_path_get_dirname(i8* %20)
  store i8* %call23, i8** %dirname, align 8
  %21 = load i8*, i8** %top_directory.addr, align 8
  %tobool24 = icmp ne i8* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.55

if.then.25:                                       ; preds = %do.end.21
  %22 = load i8*, i8** %top_directory.addr, align 8
  %call27 = call i64 @strlen(i8* %22) #8
  store i64 %call27, i64* %top_directory_len, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.25
  %23 = load i8*, i8** %dirname, align 8
  %24 = load i8*, i8** %top_directory.addr, align 8
  %call29 = call i32 @g_str_has_prefix(i8* %23, i8* %24)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.39

land.lhs.true.31:                                 ; preds = %do.body.28
  %25 = load i64, i64* %top_directory_len, align 8
  %26 = load i8*, i8** %dirname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %25
  %27 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %27 to i32
  %cmp32 = icmp eq i32 %conv, 0
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31
  %28 = load i64, i64* %top_directory_len, align 8
  %29 = load i8*, i8** %dirname, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %29, i64 %28
  %30 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %30 to i32
  %cmp36 = icmp eq i32 %conv35, 47
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %lor.lhs.false, %land.lhs.true.31
  br label %if.end.40

if.else.39:                                       ; preds = %lor.lhs.false, %do.body.28
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_data_set_folder_tags, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.80

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.cond, %do.end.41
  %31 = load i8*, i8** %dirname, align 8
  %call44 = call noalias i8* @g_path_get_basename(i8* %31)
  store i8* %call44, i8** %basename, align 8
  %32 = load i8*, i8** %basename, align 8
  %call46 = call %struct._GimpTag* @gimp_tag_new(i8* %32)
  store %struct._GimpTag* %call46, %struct._GimpTag** %tag, align 8
  %33 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  call void @gimp_tag_set_internal(%struct._GimpTag* %33, i32 1)
  %34 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %35 = bitcast %struct._GimpData* %34 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_tagged_interface_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call49)
  %36 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpTagged*
  %37 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  call void @gimp_tagged_add_tag(%struct._GimpTagged* %36, %struct._GimpTag* %37)
  %38 = load %struct._GimpTag*, %struct._GimpTag** %tag, align 8
  %39 = bitcast %struct._GimpTag* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %40)
  %41 = load i8*, i8** %dirname, align 8
  %call51 = call noalias i8* @g_path_get_dirname(i8* %41)
  store i8* %call51, i8** %tmp48, align 8
  %42 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %42)
  %43 = load i8*, i8** %tmp48, align 8
  store i8* %43, i8** %dirname, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.42
  %44 = load i8*, i8** %dirname, align 8
  %45 = load i8*, i8** %top_directory.addr, align 8
  %call52 = call i32 @strcmp(i8* %44, i8* %45) #8
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %do.body.42, label %do.end.54

do.end.54:                                        ; preds = %do.cond
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.end.21
  %46 = load i8*, i8** %dirname, align 8
  %tobool56 = icmp ne i8* %46, null
  br i1 %tobool56, label %if.then.57, label %if.end.80

if.then.57:                                       ; preds = %if.end.55
  %47 = load i8*, i8** %dirname, align 8
  %call60 = call noalias i8* @g_path_get_basename(i8* %47)
  store i8* %call60, i8** %basename59, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.57
  %48 = load i32, i32* %i, align 4
  %conv62 = sext i32 %48 to i64
  %cmp63 = icmp ult i64 %conv62, 6
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i8*, i8** %basename59, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tag_blacklist, i32 0, i64 %idxprom
  %51 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 @strcmp(i8* %49, i8* %51) #8
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %for.body
  br label %for.end

if.end.69:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.68, %for.cond
  %53 = load i32, i32* %i, align 4
  %conv70 = sext i32 %53 to i64
  %cmp71 = icmp eq i64 %conv70, 6
  br i1 %cmp71, label %if.then.73, label %if.end.79

if.then.73:                                       ; preds = %for.end
  %54 = load i8*, i8** %basename59, align 8
  %call76 = call %struct._GimpTag* @gimp_tag_new(i8* %54)
  store %struct._GimpTag* %call76, %struct._GimpTag** %tag75, align 8
  %55 = load %struct._GimpTag*, %struct._GimpTag** %tag75, align 8
  call void @gimp_tag_set_internal(%struct._GimpTag* %55, i32 1)
  %56 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %57 = bitcast %struct._GimpData* %56 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_tagged_interface_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call77)
  %58 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpTagged*
  %59 = load %struct._GimpTag*, %struct._GimpTag** %tag75, align 8
  call void @gimp_tagged_add_tag(%struct._GimpTagged* %58, %struct._GimpTag* %59)
  %60 = load %struct._GimpTag*, %struct._GimpTag** %tag75, align 8
  %61 = bitcast %struct._GimpTag* %60 to i8*
  call void @g_object_unref(i8* %61)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.73, %for.end
  %62 = load i8*, i8** %basename59, align 8
  call void @g_free(i8* %62)
  %63 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %63)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.9, %if.then.14, %if.else.19, %if.else.39, %if.end.79, %if.end.55
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @g_str_has_prefix(i8*, i8*) #2

declare noalias i8* @g_path_get_basename(i8*) #2

declare %struct._GimpTag* @gimp_tag_new(i8*) #2

declare void @gimp_tag_set_internal(%struct._GimpTag*, i32) #2

declare void @gimp_tagged_add_tag(%struct._GimpTagged*, %struct._GimpTag*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @gimp_data_get_mime_type(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i8*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_data_get_mime_type, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mime_type = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 1
  %17 = load i32, i32* %mime_type, align 4
  %call13 = call i8* @g_quark_to_string(i32 %17) #7
  store i8* %call13, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind readnone
declare i8* @g_quark_to_string(i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_data_is_writable(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_is_writable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_is_deletable(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_data_is_deletable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 2
  %bf.load = load i8, i8* %deletable, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_data_set_mtime(%struct._GimpData* %data, i64 %mtime) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %mtime.addr = alloca i64, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i64 %mtime, i64* %mtime.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_data_set_mtime, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load i64, i64* %mtime.addr, align 8
  %17 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mtime13 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %17, i32 0, i32 4
  store i64 %16, i64* %mtime13, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @gimp_data_get_mtime(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_data_get_mtime, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mtime = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 4
  %17 = load i64, i64* %mtime, align 8
  store i64 %17, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i64, i64* %retval
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_data_duplicate(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %new = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_data_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDataClass*
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %16, i32 0, i32 4
  %17 = load %struct._GimpData* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %tobool12 = icmp ne %struct._GimpData* (%struct._GimpData*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.28

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %19 = bitcast %struct._GimpData* %18 to %struct._GTypeInstance*
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpDataClass*
  %duplicate16 = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %21, i32 0, i32 4
  %22 = load %struct._GimpData* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)** %duplicate16, align 8
  %23 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %call17 = call %struct._GimpData* %22(%struct._GimpData* %23)
  store %struct._GimpData* %call17, %struct._GimpData** %new, align 8
  %24 = load %struct._GimpData*, %struct._GimpData** %new, align 8
  %25 = bitcast %struct._GimpData* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_data_get_type() #7
  %call20 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast i8* %call20 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %26, %struct._GimpDataPrivate** %private, align 8
  %27 = load %struct._GimpData*, %struct._GimpData** %new, align 8
  %28 = bitcast %struct._GimpData* %27 to i8*
  %29 = load %struct._GimpData*, %struct._GimpData** %new, align 8
  %30 = bitcast %struct._GimpData* %29 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpDataClass*
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %32, i32 0, i32 2
  %33 = load i32 (%struct._GimpData*, %struct._GError**)*, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %cmp22 = icmp ne i32 (%struct._GimpData*, %struct._GError**)* %33, null
  %conv = zext i1 %cmp22 to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %conv, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* null)
  %34 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %34, i32 0, i32 0
  %35 = load i8*, i8** %filename, align 8
  %tobool23 = icmp ne i8* %35, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.13
  %36 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename25 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %36, i32 0, i32 0
  %37 = load i8*, i8** %filename25, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename26 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %38, i32 0, i32 0
  store i8* null, i8** %filename26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.13
  %39 = load %struct._GimpData*, %struct._GimpData** %new, align 8
  store %struct._GimpData* %39, %struct._GimpData** %retval
  br label %return

if.end.28:                                        ; preds = %do.end
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.end.27, %if.else.9
  %40 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %40
}

declare void @g_object_set(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @gimp_data_make_internal(%struct._GimpData* %data, i8* %identifier) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %identifier.addr = alloca i8*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_data_make_internal, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 0
  %17 = load i8*, i8** %filename, align 8
  %tobool13 = icmp ne i8* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename15 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %18, i32 0, i32 0
  %19 = load i8*, i8** %filename15, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename16 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %20, i32 0, i32 0
  store i8* null, i8** %filename16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.end
  %21 = load i8*, i8** %identifier.addr, align 8
  %call18 = call noalias i8* @g_strdup(i8* %21)
  %22 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %identifier19 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %22, i32 0, i32 5
  store i8* %call18, i8** %identifier19, align 8
  %23 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %23, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %writable, align 4
  %24 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %24, i32 0, i32 2
  %bf.load20 = load i8, i8* %deletable, align 4
  %bf.clear21 = and i8 %bf.load20, -3
  store i8 %bf.clear21, i8* %deletable, align 4
  %25 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %25, i32 0, i32 2
  %bf.load22 = load i8, i8* %internal, align 4
  %bf.clear23 = and i8 %bf.load22, -9
  %bf.set = or i8 %bf.clear23, 8
  store i8 %bf.set, i8* %internal, align 4
  br label %return

return:                                           ; preds = %if.end.17, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_is_internal(%struct._GimpData* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_data_is_internal, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %15, %struct._GimpDataPrivate** %private, align 8
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 2
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_data_compare(%struct._GimpData* %data1, %struct._GimpData* %data2) #1 {
entry:
  %retval = alloca i32, align 4
  %data1.addr = alloca %struct._GimpData*, align 8
  %data2.addr = alloca %struct._GimpData*, align 8
  %private1 = alloca %struct._GimpDataPrivate*, align 8
  %private2 = alloca %struct._GimpDataPrivate*, align 8
  store %struct._GimpData* %data1, %struct._GimpData** %data1.addr, align 8
  store %struct._GimpData* %data2, %struct._GimpData** %data2.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data1.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private1, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data2.addr, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %5, %struct._GimpDataPrivate** %private2, align 8
  %6 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private1, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %6, i32 0, i32 2
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %7 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private2, align 8
  %internal4 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %7, i32 0, i32 2
  %bf.load5 = load i8, i8* %internal4, align 4
  %bf.lshr6 = lshr i8 %bf.load5, 3
  %bf.clear7 = and i8 %bf.lshr6, 1
  %bf.cast8 = zext i8 %bf.clear7 to i32
  %cmp = icmp ne i32 %bf.cast, %bf.cast8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private1, align 8
  %internal9 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %8, i32 0, i32 2
  %bf.load10 = load i8, i8* %internal9, align 4
  %bf.lshr11 = lshr i8 %bf.load10, 3
  %bf.clear12 = and i8 %bf.lshr11, 1
  %bf.cast13 = zext i8 %bf.clear12 to i32
  %tobool = icmp ne i32 %bf.cast13, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private1, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %9, i32 0, i32 2
  %bf.load14 = load i8, i8* %deletable, align 4
  %bf.lshr15 = lshr i8 %bf.load14, 1
  %bf.clear16 = and i8 %bf.lshr15, 1
  %bf.cast17 = zext i8 %bf.clear16 to i32
  %10 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private2, align 8
  %deletable18 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %10, i32 0, i32 2
  %bf.load19 = load i8, i8* %deletable18, align 4
  %bf.lshr20 = lshr i8 %bf.load19, 1
  %bf.clear21 = and i8 %bf.lshr20, 1
  %bf.cast22 = zext i8 %bf.clear21 to i32
  %cmp23 = icmp ne i32 %bf.cast17, %bf.cast22
  br i1 %cmp23, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end
  %11 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private1, align 8
  %deletable25 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %11, i32 0, i32 2
  %bf.load26 = load i8, i8* %deletable25, align 4
  %bf.lshr27 = lshr i8 %bf.load26, 1
  %bf.clear28 = and i8 %bf.lshr27, 1
  %bf.cast29 = zext i8 %bf.clear28 to i32
  %tobool30 = icmp ne i32 %bf.cast29, 0
  %cond31 = select i1 %tobool30, i32 -1, i32 1
  store i32 %cond31, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end
  %12 = load %struct._GimpData*, %struct._GimpData** %data1.addr, align 8
  %13 = bitcast %struct._GimpData* %12 to %struct._GimpObject*
  %14 = load %struct._GimpData*, %struct._GimpData** %data2.addr, align 8
  %15 = bitcast %struct._GimpData* %14 to %struct._GimpObject*
  %call33 = call i32 @gimp_object_name_collate(%struct._GimpObject* %13, %struct._GimpObject* %15)
  store i32 %call33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.24, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gimp_object_name_collate(%struct._GimpObject*, %struct._GimpObject*) #2

declare i32 @g_quark_from_static_string(i8*) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

declare i8* @g_type_class_peek_parent(i8*) #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #2

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_data_constructed(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** @parent_class, align 8
  %1 = bitcast %struct._GimpViewableClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** @parent_class, align 8
  %5 = bitcast %struct._GimpViewableClass* %4 to %struct._GTypeClass*
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
  %call3 = call i64 @gimp_data_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_finalize(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename2 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %5, i32 0, i32 0
  %6 = load i8*, i8** %filename2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename3 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %7, i32 0, i32 0
  store i8* null, i8** %filename3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %8, i32 0, i32 6
  %9 = load %struct._GList*, %struct._GList** %tags, align 8
  %tobool4 = icmp ne %struct._GList* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags6 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %10, i32 0, i32 6
  %11 = load %struct._GList*, %struct._GList** %tags6, align 8
  call void @g_list_free_full(%struct._GList* %11, void (i8*)* @g_object_unref)
  %12 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags7 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %12, i32 0, i32 6
  store %struct._GList* null, %struct._GList** %tags7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %identifier = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %13, i32 0, i32 5
  %14 = load i8*, i8** %identifier, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %identifier11 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %15, i32 0, i32 5
  %16 = load i8*, i8** %identifier11, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %identifier12 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %17, i32 0, i32 5
  store i8* null, i8** %identifier12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** @parent_class, align 8
  %19 = bitcast %struct._GimpViewableClass* %18 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 80)
  %20 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %20, i32 0, i32 6
  %21 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %21(%struct._GObject* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data = alloca %struct._GimpData*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpData*
  store %struct._GimpData* %2, %struct._GimpData** %data, align 8
  %3 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_data_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %5, %struct._GimpDataPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_string(%struct._GValue* %8)
  %9 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %9, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %10 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %10, i32 0, i32 2
  %bf.load5 = load i8, i8* %deletable, align 4
  %bf.lshr = lshr i8 %bf.load5, 1
  %bf.clear6 = and i8 %bf.lshr, 1
  %bf.cast7 = zext i8 %bf.clear6 to i32
  call void @gimp_data_set_filename(%struct._GimpData* %7, i8* %call4, i32 %bf.cast, i32 %bf.cast7)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i32 @g_value_get_boolean(%struct._GValue* %11)
  %12 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable10 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %12, i32 0, i32 2
  %13 = trunc i32 %call9 to i8
  %bf.load11 = load i8, i8* %writable10, align 4
  %bf.value = and i8 %13, 1
  %bf.clear12 = and i8 %bf.load11, -2
  %bf.set = or i8 %bf.clear12, %bf.value
  store i8 %bf.set, i8* %writable10, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %14)
  %15 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable15 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %15, i32 0, i32 2
  %16 = trunc i32 %call14 to i8
  %bf.load16 = load i8, i8* %deletable15, align 4
  %bf.value17 = and i8 %16, 1
  %bf.shl = shl i8 %bf.value17, 1
  %bf.clear18 = and i8 %bf.load16, -3
  %bf.set19 = or i8 %bf.clear18, %bf.shl
  store i8 %bf.set19, i8* %deletable15, align 4
  %bf.result.cast20 = zext i8 %bf.value17 to i32
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_get_string(%struct._GValue* %17)
  %tobool = icmp ne i8* %call22, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.21
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call23 = call i8* @g_value_get_string(%struct._GValue* %18)
  %call24 = call i32 @g_quark_from_string(i8* %call23)
  %19 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mime_type = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %19, i32 0, i32 1
  store i32 %call24, i32* %mime_type, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.21
  %20 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mime_type25 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %20, i32 0, i32 1
  store i32 0, i32* %mime_type25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %21, %struct._GObject** %_glib__object, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %22, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = load i32, i32* %property_id.addr, align 4
  store i32 %23, i32* %_glib__property_id, align 4
  %24 = load i32, i32* %_glib__property_id, align 4
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %call26 = call i8* @g_type_name(i64 %30)
  %31 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type28, align 8
  %call29 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %24, i8* %26, i8* %call26, i8* %call29)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.13, %sw.bb.8, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %5, i32 0, i32 0
  %6 = load i8*, i8** %filename, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %writable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %8, i32 0, i32 2
  %bf.load = load i8, i8* %writable, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %bf.cast)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %deletable = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %10, i32 0, i32 2
  %bf.load4 = load i8, i8* %deletable, align 4
  %bf.lshr = lshr i8 %bf.load4, 1
  %bf.clear5 = and i8 %bf.lshr, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  call void @g_value_set_boolean(%struct._GValue* %9, i32 %bf.cast6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %mime_type = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %12, i32 0, i32 1
  %13 = load i32, i32* %mime_type, align 4
  %call8 = call i8* @g_quark_to_string(i32 %13) #7
  call void @g_value_set_string(%struct._GValue* %11, i8* %call8)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 350, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %17, i8* %19, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.7, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_name_changed(%struct._GimpObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %dirty = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 2
  %bf.load = load i8, i8* %dirty, align 4
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %dirty, align 4
  %4 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** @parent_class, align 8
  %5 = bitcast %struct._GimpViewableClass* %4 to %struct._GTypeClass*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call2)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GimpObjectClass*
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %6, i32 0, i32 2
  %7 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %name_changed, align 8
  %tobool = icmp ne void (%struct._GimpObject*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** @parent_class, align 8
  %9 = bitcast %struct._GimpViewableClass* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call4)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GimpObjectClass*
  %name_changed6 = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 2
  %11 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %name_changed6, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %11(%struct._GimpObject* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_data_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #1 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load i64, i64* %memsize, align 8
  %7 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** @parent_class, align 8
  %8 = bitcast %struct._GimpViewableClass* %7 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 3
  %10 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %10(%struct._GimpObject* %11, i64* %12)
  %add6 = add nsw i64 %6, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal void @gimp_data_real_dirty(%struct._GimpData* %data) #1 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %2)
  %3 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %4 = bitcast %struct._GimpData* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  call void @gimp_object_name_changed(%struct._GimpObject* %5)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare void @g_type_class_add_private(i8*, i64) #2

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #2

declare i8* @g_value_get_string(%struct._GValue*) #2

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare i32 @g_quark_from_string(i8*) #2

declare i8* @g_type_name(i64) #2

declare void @g_value_set_string(%struct._GValue*, i8*) #2

declare void @g_value_set_boolean(%struct._GValue*, i32) #2

declare i64 @gimp_string_get_memsize(i8*) #2

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #2

declare void @gimp_object_name_changed(%struct._GimpObject*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_data_add_tag(%struct._GimpTagged* %tagged, %struct._GimpTag* %tag) #1 {
entry:
  %retval = alloca i32, align 4
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %this = alloca %struct._GimpTag*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 6
  %4 = load %struct._GList*, %struct._GList** %tags, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tag_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTag*
  store %struct._GimpTag* %9, %struct._GimpTag** %this, align 8
  %10 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %11 = load %struct._GimpTag*, %struct._GimpTag** %this, align 8
  %call4 = call i32 @gimp_tag_equals(%struct._GimpTag* %10, %struct._GimpTag* %11)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags7 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %15, i32 0, i32 6
  %16 = load %struct._GList*, %struct._GList** %tags7, align 8
  %17 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %18 = bitcast %struct._GimpTag* %17 to i8*
  %call8 = call i8* @g_object_ref(i8* %18)
  %call9 = call %struct._GList* @g_list_prepend(%struct._GList* %16, i8* %call8)
  %19 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags10 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %19, i32 0, i32 6
  store %struct._GList* %call9, %struct._GList** %tags10, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_data_remove_tag(%struct._GimpTagged* %tagged, %struct._GimpTag* %tag) #1 {
entry:
  %retval = alloca i32, align 4
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %tag.addr = alloca %struct._GimpTag*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %this = alloca %struct._GimpTag*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  store %struct._GimpTag* %tag, %struct._GimpTag** %tag.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 6
  %4 = load %struct._GList*, %struct._GList** %tags, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tag_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTag*
  store %struct._GimpTag* %9, %struct._GimpTag** %this, align 8
  %10 = load %struct._GimpTag*, %struct._GimpTag** %tag.addr, align 8
  %11 = load %struct._GimpTag*, %struct._GimpTag** %this, align 8
  %call4 = call i32 @gimp_tag_equals(%struct._GimpTag* %10, %struct._GimpTag* %11)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags6 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %12, i32 0, i32 6
  %13 = load %struct._GList*, %struct._GList** %tags6, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %call7 = call %struct._GList* @g_list_delete_link(%struct._GList* %13, %struct._GList* %14)
  %15 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags8 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %15, i32 0, i32 6
  store %struct._GList* %call7, %struct._GList** %tags8, align 8
  %16 = load %struct._GimpTag*, %struct._GimpTag** %this, align 8
  %17 = bitcast %struct._GimpTag* %16 to i8*
  call void @g_object_unref(i8* %17)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %18, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_data_get_tags(%struct._GimpTagged* %tagged) #1 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %tags = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 6
  %4 = load %struct._GList*, %struct._GList** %tags, align 8
  ret %struct._GList* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_data_get_identifier(%struct._GimpTagged* %tagged) #1 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %private = alloca %struct._GimpDataPrivate*, align 8
  %identifier = alloca i8*, align 8
  %data_dir = alloca i8*, align 8
  %gimp_dir = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDataPrivate*
  store %struct._GimpDataPrivate* %2, %struct._GimpDataPrivate** %private, align 8
  store i8* null, i8** %identifier, align 8
  %3 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %3, i32 0, i32 0
  %4 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.else.31

if.then:                                          ; preds = %entry
  %call2 = call i8* @gimp_data_directory() #7
  store i8* %call2, i8** %data_dir, align 8
  %call3 = call i8* @gimp_directory() #7
  store i8* %call3, i8** %gimp_dir, align 8
  %5 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename4 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %5, i32 0, i32 0
  %6 = load i8*, i8** %filename4, align 8
  %7 = load i8*, i8** %data_dir, align 8
  %call5 = call i32 @g_str_has_prefix(i8* %6, i8* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %8 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename8 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %8, i32 0, i32 0
  %9 = load i8*, i8** %filename8, align 8
  %10 = load i8*, i8** %data_dir, align 8
  %call9 = call i64 @strlen(i8* %10) #8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call9
  %call10 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* %add.ptr, i8* null)
  store i8* %call10, i8** %tmp, align 8
  %11 = load i8*, i8** %tmp, align 8
  %call11 = call noalias i8* @g_filename_to_utf8(i8* %11, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call11, i8** %identifier, align 8
  %12 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %12)
  br label %if.end.24

if.else:                                          ; preds = %if.then
  %13 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename12 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %13, i32 0, i32 0
  %14 = load i8*, i8** %filename12, align 8
  %15 = load i8*, i8** %gimp_dir, align 8
  %call13 = call i32 @g_str_has_prefix(i8* %14, i8* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %if.else
  %16 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename16 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %16, i32 0, i32 0
  %17 = load i8*, i8** %filename16, align 8
  %18 = load i8*, i8** %gimp_dir, align 8
  %call17 = call i64 @strlen(i8* %18) #8
  %add.ptr18 = getelementptr inbounds i8, i8* %17, i64 %call17
  %call19 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8* %add.ptr18, i8* null)
  store i8* %call19, i8** %tmp, align 8
  %19 = load i8*, i8** %tmp, align 8
  %call20 = call noalias i8* @g_filename_to_utf8(i8* %19, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call20, i8** %identifier, align 8
  %20 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %20)
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %21 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename22 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %21, i32 0, i32 0
  %22 = load i8*, i8** %filename22, align 8
  %call23 = call noalias i8* @g_filename_to_utf8(i8* %22, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call23, i8** %identifier, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.7
  %23 = load i8*, i8** %identifier, align 8
  %tobool25 = icmp ne i8* %23, null
  br i1 %tobool25, label %if.end.30, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %24 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename27 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %24, i32 0, i32 0
  %25 = load i8*, i8** %filename27, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0), i8* %25)
  %26 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %filename28 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %26, i32 0, i32 0
  %27 = load i8*, i8** %filename28, align 8
  %call29 = call noalias i8* @g_strdup(i8* %27)
  store i8* %call29, i8** %identifier, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.24
  br label %if.end.37

if.else.31:                                       ; preds = %entry
  %28 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %internal = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %28, i32 0, i32 2
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool32 = icmp ne i32 %bf.cast, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.else.31
  %29 = load %struct._GimpDataPrivate*, %struct._GimpDataPrivate** %private, align 8
  %identifier34 = getelementptr inbounds %struct._GimpDataPrivate, %struct._GimpDataPrivate* %29, i32 0, i32 5
  %30 = load i8*, i8** %identifier34, align 8
  %call35 = call noalias i8* @g_strdup(i8* %30)
  store i8* %call35, i8** %identifier, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.else.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.30
  %31 = load i8*, i8** %identifier, align 8
  ret i8* %31
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_data_get_checksum(%struct._GimpTagged* %tagged) #1 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  ret i8* null
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tag_get_type() #3

declare i32 @gimp_tag_equals(%struct._GimpTag*, %struct._GimpTag*) #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

declare i8* @g_object_ref(i8*) #2

declare %struct._GList* @g_list_delete_link(%struct._GList*, %struct._GList*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #3

declare noalias i8* @g_filename_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
