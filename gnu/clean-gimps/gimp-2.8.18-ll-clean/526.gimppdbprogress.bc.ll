; ModuleID = './app/core/gimppdbprogress.bc'
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
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpPdbProgressClass = type { %struct._GObjectClass, %struct._GList* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPdbProgress = type { %struct._GObject, i32, double, %struct._GimpPDB*, %struct._GimpContext*, i8*, i32 }
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GHashTable = type opaque
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
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }

@gimp_pdb_progress_get_type.type = internal global i64 0, align 8
@gimp_pdb_progress_get_type.info = internal constant %struct._GTypeInfo { i16 144, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpPdbProgressClass*)* @gimp_pdb_progress_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 72, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPdbProgress*, %struct._GimpPdbProgressClass*)* @gimp_pdb_progress_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@gimp_pdb_progress_get_type.progress_iface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_pdb_progress_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpPdbProgress\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_pdb_progress_get_by_callback = private unnamed_addr constant [34 x i8] c"gimp_pdb_progress_get_by_callback\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"GIMP_IS_PDB_PROGRESS_CLASS (klass)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"callback_name != NULL\00", align 1
@parent_class = internal global %struct._GObjectClass* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"callback-name\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimppdbprogress.c\00", align 1
@__func__.gimp_pdb_progress_constructed = private unnamed_addr constant [30 x i8] c"gimp_pdb_progress_constructed\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PDB (progress->pdb)\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"GIMP_IS_CONTEXT (progress->context)\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"Unable to run %s callback. The corresponding plug-in may have crashed.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pdb_progress_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_pdb_progress_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_pdb_progress_get_type.info, i32 0)
  store i64 %call, i64* @gimp_pdb_progress_get_type.type, align 8
  %1 = load i64, i64* @gimp_pdb_progress_get_type.type, align 8
  %call1 = call i64 @gimp_progress_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %1, i64 %call1, %struct._GInterfaceInfo* @gimp_pdb_progress_get_type.progress_iface_info)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_pdb_progress_get_type.type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_class_init(%struct._GimpPdbProgressClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpPdbProgressClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpPdbProgressClass* %klass, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %0 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPdbProgressClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPdbProgressClass* %3 to i8*
  %call1 = call i8* @g_type_class_peek_parent(i8* %4)
  %5 = bitcast i8* %call1 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** @parent_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_pdb_progress_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_pdb_progress_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_pdb_progress_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_pdb_progress_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_pdb_get_type() #8
  %call3 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call3)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_context_get_type() #8
  %call5 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_init(%struct._GimpPdbProgress* %progress, %struct._GimpPdbProgressClass* %klass) #1 {
entry:
  %progress.addr = alloca %struct._GimpPdbProgress*, align 8
  %klass.addr = alloca %struct._GimpPdbProgressClass*, align 8
  store %struct._GimpPdbProgress* %progress, %struct._GimpPdbProgress** %progress.addr, align 8
  store %struct._GimpPdbProgressClass* %klass, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %0 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %progresses = getelementptr inbounds %struct._GimpPdbProgressClass, %struct._GimpPdbProgressClass* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %progresses, align 8
  %2 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %3 = bitcast %struct._GimpPdbProgress* %2 to i8*
  %call = call %struct._GList* @g_list_prepend(%struct._GList* %1, i8* %3)
  %4 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %progresses1 = getelementptr inbounds %struct._GimpPdbProgressClass, %struct._GimpPdbProgressClass* %4, i32 0, i32 1
  store %struct._GList* %call, %struct._GList** %progresses1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_progress_iface_init(%struct._GimpProgressInterface* %iface) #1 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_pdb_progress_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_pdb_progress_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_pdb_progress_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_pdb_progress_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_pdb_progress_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_pdb_progress_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_pdb_progress_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_window_id = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 8
  store i32 (%struct._GimpProgress*)* @gimp_pdb_progress_progress_get_window_id, i32 (%struct._GimpProgress*)** %get_window_id, align 8
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GimpPdbProgress* @gimp_pdb_progress_get_by_callback(%struct._GimpPdbProgressClass* %klass, i8* %callback_name) #1 {
entry:
  %retval = alloca %struct._GimpPdbProgress*, align 8
  %klass.addr = alloca %struct._GimpPdbProgressClass*, align 8
  %callback_name.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %__class = alloca %struct._GTypeClass*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpPdbProgressClass* %klass, %struct._GimpPdbProgressClass** %klass.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPdbProgressClass* %0 to %struct._GTypeClass*
  store %struct._GTypeClass* %1, %struct._GTypeClass** %__class, align 8
  %call = call i64 @gimp_pdb_progress_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %tobool = icmp ne %struct._GTypeClass* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %3, i32 0, i32 0
  %4 = load i64, i64* %g_type, align 8
  %5 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %4, %5
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %__class, align 8
  %7 = load i64, i64* %__t, align 8
  %call3 = call i32 @g_type_check_class_is_a(%struct._GTypeClass* %6, i64 %7) #9
  store i32 %call3, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %8 = load i32, i32* %__r, align 4
  store i32 %8, i32* %tmp
  %9 = load i32, i32* %tmp
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end.4
  br label %if.end.8

if.else.7:                                        ; preds = %if.end.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_pdb_progress_get_by_callback, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPdbProgress* null, %struct._GimpPdbProgress** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %10 = load i8*, i8** %callback_name.addr, align 8
  %cmp10 = icmp ne i8* %10, null
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body.9
  br label %if.end.13

if.else.12:                                       ; preds = %do.body.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_pdb_progress_get_by_callback, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpPdbProgress* null, %struct._GimpPdbProgress** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %11 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass.addr, align 8
  %progresses = getelementptr inbounds %struct._GimpPdbProgressClass, %struct._GimpPdbProgressClass* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %progresses, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.14
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %13, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %16, %struct._GimpPdbProgress** %progress, align 8
  %17 = load i8*, i8** %callback_name.addr, align 8
  %18 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name17 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %18, i32 0, i32 5
  %19 = load i8*, i8** %callback_name17, align 8
  %call18 = call i32 @g_strcmp0(i8* %17, i8* %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.body
  %20 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  store %struct._GimpPdbProgress* %20, %struct._GimpPdbProgress** %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %21, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpPdbProgress* null, %struct._GimpPdbProgress** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.20, %if.else.12, %if.else.7
  %24 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %retval
  ret %struct._GimpPdbProgress* %24
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_class_is_a(%struct._GTypeClass*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_constructed(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %progress = alloca %struct._GimpPdbProgress*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %progress, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %4 = bitcast %struct._GObjectClass* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %8 = bitcast %struct._GObjectClass* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %12, i32 0, i32 3
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %14 = bitcast %struct._GimpPDB* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_pdb_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_progress_constructed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %26 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %26, i32 0, i32 4
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %28 = bitcast %struct._GimpContext* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_context_get_type() #8
  store i64 %call24, i64* %__t23, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type34, align 8
  %35 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %34, %35
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %37 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %38 = load i32, i32* %__r26, align 4
  store i32 %38, i32* %tmp41
  %39 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %39, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_pdb_progress_constructed, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #10
  unreachable

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_dispose(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %klass = alloca %struct._GimpPdbProgressClass*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpPdbProgressClass*
  store %struct._GimpPdbProgressClass* %3, %struct._GimpPdbProgressClass** %klass, align 8
  %4 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass, align 8
  %progresses = getelementptr inbounds %struct._GimpPdbProgressClass, %struct._GimpPdbProgressClass* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %progresses, align 8
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %7 = bitcast %struct._GObject* %6 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %5, i8* %7)
  %8 = load %struct._GimpPdbProgressClass*, %struct._GimpPdbProgressClass** %klass, align 8
  %progresses1 = getelementptr inbounds %struct._GimpPdbProgressClass, %struct._GimpPdbProgressClass* %8, i32 0, i32 1
  store %struct._GList* %call, %struct._GList** %progresses1, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %10 = bitcast %struct._GObjectClass* %9 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_finalize(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 3
  %4 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %tobool = icmp ne %struct._GimpPDB* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb2 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %5, i32 0, i32 3
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb2, align 8
  %7 = bitcast %struct._GimpPDB* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb3 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %8, i32 0, i32 3
  store %struct._GimpPDB* null, %struct._GimpPDB** %pdb3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %9, i32 0, i32 4
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool4 = icmp ne %struct._GimpContext* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context6 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %11, i32 0, i32 4
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %13 = bitcast %struct._GimpContext* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context7 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %14, i32 0, i32 4
  store %struct._GimpContext* null, %struct._GimpContext** %context7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %15, i32 0, i32 5
  %16 = load i8*, i8** %callback_name, align 8
  %tobool9 = icmp ne i8* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name11 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %17, i32 0, i32 5
  %18 = load i8*, i8** %callback_name11, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name12 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %19, i32 0, i32 5
  store i8* null, i8** %callback_name12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %21 = bitcast %struct._GObjectClass* %20 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 80)
  %22 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %22, i32 0, i32 6
  %23 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %23(%struct._GObject* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %progress = alloca %struct._GimpPdbProgress*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %progress, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %4, i32 0, i32 3
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %tobool = icmp ne %struct._GimpPDB* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb2 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %6, i32 0, i32 3
  %7 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb2, align 8
  %8 = bitcast %struct._GimpPDB* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %9)
  %10 = bitcast i8* %call3 to %struct._GimpPDB*
  %11 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %pdb4 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %11, i32 0, i32 3
  store %struct._GimpPDB* %10, %struct._GimpPDB** %pdb4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %12, i32 0, i32 4
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool6 = icmp ne %struct._GimpContext* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %sw.bb.5
  %14 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context8 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %14, i32 0, i32 4
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context8, align 8
  %16 = bitcast %struct._GimpContext* %15 to i8*
  call void @g_object_unref(i8* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %sw.bb.5
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_dup_object(%struct._GValue* %17)
  %18 = bitcast i8* %call10 to %struct._GimpContext*
  %19 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %context11 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %19, i32 0, i32 4
  store %struct._GimpContext* %18, %struct._GimpContext** %context11, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %20 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %20, i32 0, i32 5
  %21 = load i8*, i8** %callback_name, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %sw.bb.12
  %22 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name15 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %22, i32 0, i32 5
  %23 = load i8*, i8** %callback_name15, align 8
  call void @g_free(i8* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %sw.bb.12
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call i8* @g_value_dup_string(%struct._GValue* %24)
  %25 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress, align 8
  %callback_name18 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %25, i32 0, i32 5
  store i8* %call17, i8** %callback_name18, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %26 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %26, %struct._GObject** %_glib__object, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %27, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = load i32, i32* %property_id.addr, align 4
  store i32 %28, i32* %_glib__property_id, align 4
  %29 = load i32, i32* %_glib__property_id, align 4
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 1
  %31 = load i8*, i8** %name, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = bitcast %struct._GParamSpec* %32 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type, align 8
  %call19 = call i8* @g_type_name(i64 %35)
  %36 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %37 = bitcast %struct._GObject* %36 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type21, align 8
  %call22 = call i8* @g_type_name(i64 %39)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %29, i8* %31, i8* %call19, i8* %call22)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.16, %if.end.9, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #3

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #2

declare void @g_object_unref(i8*) #2

declare void @g_free(i8*) #2

declare i8* @g_value_dup_object(%struct._GValue*) #2

declare i8* @g_value_dup_string(%struct._GValue*) #2

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

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_pdb_progress_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #1 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 1
  %4 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %6 = load i8*, i8** %message.addr, align 8
  %call2 = call double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %5, i32 0, i8* %6, double 0.000000e+00)
  %7 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active3 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %7, i32 0, i32 1
  store i32 1, i32* %active3, align 4
  %8 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %value = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %8, i32 0, i32 2
  store double 0.000000e+00, double* %value, align 8
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpProgress* %9, %struct._GimpProgress** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_progress_end(%struct._GimpProgress* %progress) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 1
  %4 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %call2 = call double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %5, i32 1, i8* null, double 0.000000e+00)
  %6 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active3 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %6, i32 0, i32 1
  store i32 0, i32* %active3, align 4
  %7 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %value = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %7, i32 0, i32 2
  store double 0.000000e+00, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_pdb_progress_progress_is_active(%struct._GimpProgress* %progress) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 1
  %4 = load i32, i32* %active, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 1
  %4 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %6 = load i8*, i8** %message.addr, align 8
  %call2 = call double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %5, i32 2, i8* %6, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 1
  %4 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %6 = load double, double* %percentage.addr, align 8
  %call2 = call double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %5, i32 3, i8* null, double %6)
  %7 = load double, double* %percentage.addr, align 8
  %8 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %value = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %8, i32 0, i32 2
  store double %7, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_pdb_progress_progress_get_value(%struct._GimpProgress* %progress) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %value = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 2
  %4 = load double, double* %value, align 8
  ret double %4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pdb_progress_progress_pulse(%struct._GimpProgress* %progress) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %active = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %3, i32 0, i32 1
  %4 = load i32, i32* %active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %call2 = call double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %5, i32 4, i8* null, double 0.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_pdb_progress_progress_get_window_id(%struct._GimpProgress* %progress) #1 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %pdb_progress = alloca %struct._GimpPdbProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pdb_progress_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPdbProgress*
  store %struct._GimpPdbProgress* %2, %struct._GimpPdbProgress** %pdb_progress, align 8
  %3 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %pdb_progress, align 8
  %call2 = call double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %3, i32 5, i8* null, double 0.000000e+00)
  %conv = fptoui double %call2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal double @gimp_pdb_progress_run_callback(%struct._GimpPdbProgress* %progress, i32 %command, i8* %text, double %value) #1 {
entry:
  %progress.addr = alloca %struct._GimpPdbProgress*, align 8
  %command.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %value.addr = alloca double, align 8
  %retval1 = alloca double, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPdbProgress* %progress, %struct._GimpPdbProgress** %progress.addr, align 8
  store i32 %command, i32* %command.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store double %value, double* %value.addr, align 8
  store double 0.000000e+00, double* %retval1, align 8
  %0 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %callback_name = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %0, i32 0, i32 5
  %1 = load i8*, i8** %callback_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %callback_busy = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %2, i32 0, i32 6
  %3 = load i32, i32* %callback_busy, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end.32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %callback_busy3 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %4, i32 0, i32 6
  store i32 1, i32* %callback_busy3, align 4
  %5 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %pdb = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %5, i32 0, i32 3
  %6 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %7 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %context = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %7, i32 0, i32 4
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %callback_name4 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %9, i32 0, i32 5
  %10 = load i8*, i8** %callback_name4, align 8
  %call = call i64 @gimp_int32_get_type() #8
  %11 = load i32, i32* %command.addr, align 4
  %12 = load i8*, i8** %text.addr, align 8
  %13 = load double, double* %value.addr, align 8
  %call5 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %6, %struct._GimpContext* %8, %struct._GimpProgress* null, %struct._GError** null, i8* %10, i64 %call, i32 %11, i64 64, i8* %12, i64 60, double %13, i64 4)
  store %struct._GValueArray* %call5, %struct._GValueArray** %return_vals, align 8
  %14 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 0
  %call6 = call i32 @g_value_get_enum(%struct._GValue* %arrayidx)
  %cmp = icmp ne i32 %call6, 3
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %16 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %context8 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %16, i32 0, i32 4
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context8, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i32 0, i32 0)) #6
  %19 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %20 = bitcast %struct._GimpPdbProgress* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call10 = call i8* @g_type_name(i64 %22)
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %18, %struct._GObject* null, i32 2, i8* %call9, i8* %call10)
  br label %if.end.30

if.else:                                          ; preds = %if.then
  %23 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %23, i32 0, i32 0
  %24 = load i32, i32* %n_values, align 4
  %cmp11 = icmp uge i32 %24, 2
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.29

land.lhs.true.12:                                 ; preds = %if.else
  %25 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %25, i32 0, i32 1
  %26 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %26, i64 1
  store %struct._GValue* %arrayidx14, %struct._GValue** %__val, align 8
  store i64 60, i64* %__t, align 8
  %27 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool15 = icmp ne %struct._GValue* %27, null
  br i1 %tobool15, label %if.else.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.12
  store i32 0, i32* %__r, align 4
  br label %if.end.23

if.else.17:                                       ; preds = %land.lhs.true.12
  %28 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type18 = getelementptr inbounds %struct._GValue, %struct._GValue* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type18, align 8
  %30 = load i64, i64* %__t, align 8
  %cmp19 = icmp eq i64 %29, %30
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.17
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.21:                                       ; preds = %if.else.17
  %31 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %32 = load i64, i64* %__t, align 8
  %call22 = call i32 @g_type_check_value_holds(%struct._GValue* %31, i64 %32) #9
  store i32 %call22, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.16
  %33 = load i32, i32* %__r, align 4
  store i32 %33, i32* %tmp
  %34 = load i32, i32* %tmp
  %tobool24 = icmp ne i32 %34, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.23
  %35 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  %values26 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %35, i32 0, i32 1
  %36 = load %struct._GValue*, %struct._GValue** %values26, align 8
  %arrayidx27 = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i64 1
  %call28 = call double @g_value_get_double(%struct._GValue* %arrayidx27)
  store double %call28, double* %retval1, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.23, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.7
  %37 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %37)
  %38 = load %struct._GimpPdbProgress*, %struct._GimpPdbProgress** %progress.addr, align 8
  %callback_busy31 = getelementptr inbounds %struct._GimpPdbProgress, %struct._GimpPdbProgress* %38, i32 0, i32 6
  store i32 0, i32* %callback_busy31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %land.lhs.true, %entry
  %39 = load double, double* %retval1, align 8
  ret double %39
}

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int32_get_type() #3

declare i32 @g_value_get_enum(%struct._GValue*) #2

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #4

declare double @g_value_get_double(%struct._GValue*) #2

declare void @g_value_array_free(%struct._GValueArray*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
