; ModuleID = './app/widgets/gimpdevicemanager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDeviceManagerClass = type { %struct._GimpListClass }
%struct._GimpListClass = type { %struct._GimpContainerClass }
%struct._GimpContainerClass = type { %struct._GimpObjectClass, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*, i32)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i32)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpDeviceManager = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpTemplate = type opaque
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
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GimpCurve = type opaque
%struct._GimpDeviceManagerPrivate = type { %struct._Gimp*, %struct._GimpDeviceInfo* }
%struct._GdkDisplayManager = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }

@gimp_device_manager_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpDeviceManager\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_device_manager_new = private unnamed_addr constant [24 x i8] c"gimp_device_manager_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"unique-names\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sort-func\00", align 1
@__func__.gimp_device_manager_get_current_device = private unnamed_addr constant [39 x i8] c"gimp_device_manager_get_current_device\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DEVICE_MANAGER (manager)\00", align 1
@__func__.gimp_device_manager_set_current_device = private unnamed_addr constant [39 x i8] c"gimp_device_manager_set_current_device\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"GIMP_IS_DEVICE_INFO (info)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"current-device\00", align 1
@gimp_device_manager_parent_class = internal global i8* null, align 8
@GimpDeviceManager_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"gimpdevicemanager.c\00", align 1
@__func__.gimp_device_manager_constructed = private unnamed_addr constant [32 x i8] c"gimp_device_manager_constructed\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"GIMP_IS_GIMP (private->gimp)\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"display-opened\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_device_manager_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_device_manager_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_device_manager_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_list_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_device_manager_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDeviceManager*)* @gimp_device_manager_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_device_manager_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_device_manager_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_device_manager_parent_class, align 8
  %1 = load i32, i32* @GimpDeviceManager_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDeviceManager_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDeviceManagerClass*
  call void @gimp_device_manager_class_init(%struct._GimpDeviceManagerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_init(%struct._GimpDeviceManager* %manager) #3 {
entry:
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDeviceManager* @gimp_device_manager_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpDeviceManager*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_device_manager_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDeviceManager* null, %struct._GimpDeviceManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_device_manager_get_type() #7
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call i64 @gimp_device_info_get_type() #7
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._Gimp* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 %call12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._GimpDeviceInfo*, %struct._GimpDeviceInfo*)* @gimp_device_info_compare, i8* null)
  %14 = bitcast i8* %call13 to %struct._GimpDeviceManager*
  store %struct._GimpDeviceManager* %14, %struct._GimpDeviceManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %retval
  ret %struct._GimpDeviceManager* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_device_info_get_type() #2

declare i32 @gimp_device_info_compare(%struct._GimpDeviceInfo*, %struct._GimpDeviceInfo*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %manager) #3 {
entry:
  %retval = alloca %struct._GimpDeviceInfo*, align 8
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpDeviceManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_manager_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_device_manager_get_current_device, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %14 = bitcast %struct._GimpDeviceManager* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_device_manager_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDeviceManagerPrivate*
  %current_device = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  store %struct._GimpDeviceInfo* %16, %struct._GimpDeviceInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %retval
  ret %struct._GimpDeviceInfo* %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_manager_set_current_device(%struct._GimpDeviceManager* %manager, %struct._GimpDeviceInfo* %info) #3 {
entry:
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %private = alloca %struct._GimpDeviceManagerPrivate*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpDeviceManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_manager_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_device_manager_set_current_device, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %14 = bitcast %struct._GimpDeviceInfo* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_device_manager_set_current_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %27 = bitcast %struct._GimpDeviceManager* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_device_manager_get_type() #7
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpDeviceManagerPrivate*
  store %struct._GimpDeviceManagerPrivate* %28, %struct._GimpDeviceManagerPrivate** %private, align 8
  %29 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %current_device = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %29, i32 0, i32 1
  %30 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %31 = bitcast %struct._GimpDeviceInfo* %30 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_context_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call41)
  %32 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpContext*
  call void @gimp_context_set_parent(%struct._GimpContext* %32, %struct._GimpContext* null)
  %33 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %34 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %current_device43 = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %34, i32 0, i32 1
  store %struct._GimpDeviceInfo* %33, %struct._GimpDeviceInfo** %current_device43, align 8
  %35 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %35, i32 0, i32 0
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call44 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %36)
  store %struct._GimpContext* %call44, %struct._GimpContext** %user_context, align 8
  %37 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %38 = bitcast %struct._GimpDeviceInfo* %37 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_context_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call45)
  %39 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpContext*
  %40 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  call void @gimp_context_copy_properties(%struct._GimpContext* %39, %struct._GimpContext* %40, i32 15600)
  %41 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %42 = bitcast %struct._GimpDeviceInfo* %41 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_context_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call47)
  %43 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpContext*
  %44 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %43, %struct._GimpContext* %44)
  %45 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %46 = bitcast %struct._GimpDeviceManager* %45 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_class_init(%struct._GimpDeviceManagerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDeviceManagerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDeviceManagerClass* %klass, %struct._GimpDeviceManagerClass** %klass.addr, align 8
  %0 = load %struct._GimpDeviceManagerClass*, %struct._GimpDeviceManagerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDeviceManagerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_device_manager_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_device_manager_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_device_manager_finalize, void (%struct._GObject*)** %finalize, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_manager_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_manager_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_device_info_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 2, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %11 = bitcast %struct._GObjectClass* %10 to i8*
  call void @g_type_class_add_private(i8* %11, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %private = alloca %struct._GimpDeviceManagerPrivate*, align 8
  %disp_manager = alloca %struct._GdkDisplayManager*, align 8
  %displays = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_manager_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceManager*
  store %struct._GimpDeviceManager* %2, %struct._GimpDeviceManager** %manager, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_device_manager_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDeviceManagerPrivate*
  store %struct._GimpDeviceManagerPrivate* %5, %struct._GimpDeviceManagerPrivate** %private, align 8
  %6 = load i8*, i8** @gimp_device_manager_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_device_manager_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %15, i32 0, i32 0
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_get_type() #7
  store i64 %call7, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_device_manager_constructed, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)) #9
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %call21 = call %struct._GdkDisplayManager* @gdk_display_manager_get()
  store %struct._GdkDisplayManager* %call21, %struct._GdkDisplayManager** %disp_manager, align 8
  %29 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %disp_manager, align 8
  %call22 = call %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager* %29)
  store %struct._GSList* %call22, %struct._GSList** %displays, align 8
  %30 = load %struct._GSList*, %struct._GSList** %displays, align 8
  %call23 = call %struct._GSList* @g_slist_reverse(%struct._GSList* %30)
  store %struct._GSList* %call23, %struct._GSList** %displays, align 8
  %31 = load %struct._GSList*, %struct._GSList** %displays, align 8
  store %struct._GSList* %31, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %32 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool24 = icmp ne %struct._GSList* %32, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %disp_manager, align 8
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8
  %36 = bitcast i8* %35 to %struct._GdkDisplay*
  %37 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  call void @gimp_device_manager_display_opened(%struct._GdkDisplayManager* %33, %struct._GdkDisplay* %36, %struct._GimpDeviceManager* %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool25 = icmp ne %struct._GSList* %38, null
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %39 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1
  %40 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %40, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._GSList*, %struct._GSList** %displays, align 8
  call void @g_slist_free(%struct._GSList* %41)
  %42 = load %struct._GdkDisplayManager*, %struct._GdkDisplayManager** %disp_manager, align 8
  %43 = bitcast %struct._GdkDisplayManager* %42 to i8*
  %44 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %45 = bitcast %struct._GimpDeviceManager* %44 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDisplayManager*, %struct._GdkDisplay*, %struct._GimpDeviceManager*)* @gimp_device_manager_display_opened to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %call27 = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call27, %struct._GdkDisplay** %display, align 8
  %46 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call28 = call %struct._GdkDevice* @gdk_display_get_core_pointer(%struct._GdkDisplay* %46)
  %call29 = call %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice* %call28)
  %47 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %current_device = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %47, i32 0, i32 1
  store %struct._GimpDeviceInfo* %call29, %struct._GimpDeviceInfo** %current_device, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %call = call %struct._GdkDisplayManager* @gdk_display_manager_get()
  %0 = bitcast %struct._GdkDisplayManager* %call to i8*
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %2 = bitcast %struct._GObject* %1 to i8*
  %call1 = call i32 @g_signal_handlers_disconnect_matched(i8* %0, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GdkDisplayManager*, %struct._GdkDisplay*, %struct._GimpDeviceManager*)* @gimp_device_manager_display_opened to i8*), i8* %2)
  %3 = load i8*, i8** @gimp_device_manager_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 5
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %6(%struct._GObject* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_device_manager_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 6
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDeviceManagerPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_manager_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceManagerPrivate*
  store %struct._GimpDeviceManagerPrivate* %2, %struct._GimpDeviceManagerPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %6, i32 0, i32 0
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
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
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpDeviceManagerPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_manager_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceManagerPrivate*
  store %struct._GimpDeviceManagerPrivate* %2, %struct._GimpDeviceManagerPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %5, i32 0, i32 0
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %current_device = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %9, i32 0, i32 1
  %10 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %11 = bitcast %struct._GimpDeviceInfo* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %15, i8* %17, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GdkDisplayManager* @gdk_display_manager_get() #1

declare %struct._GSList* @gdk_display_manager_list_displays(%struct._GdkDisplayManager*) #1

declare %struct._GSList* @g_slist_reverse(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_display_opened(%struct._GdkDisplayManager* %disp_manager, %struct._GdkDisplay* %gdk_display, %struct._GimpDeviceManager* %manager) #3 {
entry:
  %disp_manager.addr = alloca %struct._GdkDisplayManager*, align 8
  %gdk_display.addr = alloca %struct._GdkDisplay*, align 8
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %list = alloca %struct._GList*, align 8
  %device = alloca %struct._GdkDevice*, align 8
  store %struct._GdkDisplayManager* %disp_manager, %struct._GdkDisplayManager** %disp_manager.addr, align 8
  store %struct._GdkDisplay* %gdk_display, %struct._GdkDisplay** %gdk_display.addr, align 8
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %call = call %struct._GList* @gdk_display_list_devices(%struct._GdkDisplay* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GdkDevice*
  store %struct._GdkDevice* %4, %struct._GdkDevice** %device, align 8
  %5 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %6 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %7 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  call void @gimp_device_manager_device_added(%struct._GdkDisplay* %5, %struct._GdkDevice* %6, %struct._GimpDeviceManager* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %11 = bitcast %struct._GdkDisplay* %10 to i8*
  %12 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %13 = bitcast %struct._GimpDeviceManager* %12 to i8*
  %call1 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GdkDisplay*, i32, %struct._GimpDeviceManager*)* @gimp_device_manager_display_closed to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_slist_free(%struct._GSList*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GdkDisplay* @gdk_display_get_default() #1

declare %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice*) #1

declare %struct._GdkDevice* @gdk_display_get_core_pointer(%struct._GdkDisplay*) #1

declare %struct._GList* @gdk_display_list_devices(%struct._GdkDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_device_added(%struct._GdkDisplay* %gdk_display, %struct._GdkDevice* %device, %struct._GimpDeviceManager* %manager) #3 {
entry:
  %gdk_display.addr = alloca %struct._GdkDisplay*, align 8
  %device.addr = alloca %struct._GdkDevice*, align 8
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %private = alloca %struct._GimpDeviceManagerPrivate*, align 8
  %device_info = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GdkDisplay* %gdk_display, %struct._GdkDisplay** %gdk_display.addr, align 8
  store %struct._GdkDevice* %device, %struct._GdkDevice** %device.addr, align 8
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  %0 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpDeviceManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_manager_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceManagerPrivate*
  store %struct._GimpDeviceManagerPrivate* %2, %struct._GimpDeviceManagerPrivate** %private, align 8
  %3 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %4 = bitcast %struct._GimpDeviceManager* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainer*
  %6 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %name = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %5, i8* %7)
  %8 = bitcast %struct._GimpObject* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_device_info_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %9, %struct._GimpDeviceInfo** %device_info, align 8
  %10 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %tobool = icmp ne %struct._GimpDeviceInfo* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %12 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %13 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  call void @gimp_device_info_set_device(%struct._GimpDeviceInfo* %11, %struct._GdkDevice* %12, %struct._GdkDisplay* %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %14, i32 0, i32 0
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %17 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %call7 = call %struct._GimpDeviceInfo* @gimp_device_info_new(%struct._Gimp* %15, %struct._GdkDevice* %16, %struct._GdkDisplay* %17)
  store %struct._GimpDeviceInfo* %call7, %struct._GimpDeviceInfo** %device_info, align 8
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  call void @gimp_device_info_set_default_tool(%struct._GimpDeviceInfo* %18)
  %19 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %20 = bitcast %struct._GimpDeviceManager* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_container_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpContainer*
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %23 = bitcast %struct._GimpDeviceInfo* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_container_add(%struct._GimpContainer* %21, %struct._GimpObject* %24)
  %25 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %26 = bitcast %struct._GimpDeviceInfo* %25 to i8*
  call void @g_object_unref(i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_display_closed(%struct._GdkDisplay* %gdk_display, i32 %is_error, %struct._GimpDeviceManager* %manager) #3 {
entry:
  %gdk_display.addr = alloca %struct._GdkDisplay*, align 8
  %is_error.addr = alloca i32, align 4
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %list = alloca %struct._GList*, align 8
  %device = alloca %struct._GdkDevice*, align 8
  store %struct._GdkDisplay* %gdk_display, %struct._GdkDisplay** %gdk_display.addr, align 8
  store i32 %is_error, i32* %is_error.addr, align 4
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %call = call %struct._GList* @gdk_display_list_devices(%struct._GdkDisplay* %0)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GdkDevice*
  store %struct._GdkDevice* %4, %struct._GdkDevice** %device, align 8
  %5 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %6 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %7 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  call void @gimp_device_manager_device_removed(%struct._GdkDisplay* %5, %struct._GdkDevice* %6, %struct._GimpDeviceManager* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare void @gimp_device_info_set_device(%struct._GimpDeviceInfo*, %struct._GdkDevice*, %struct._GdkDisplay*) #1

declare %struct._GimpDeviceInfo* @gimp_device_info_new(%struct._Gimp*, %struct._GdkDevice*, %struct._GdkDisplay*) #1

declare void @gimp_device_info_set_default_tool(%struct._GimpDeviceInfo*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_manager_device_removed(%struct._GdkDisplay* %gdk_display, %struct._GdkDevice* %device, %struct._GimpDeviceManager* %manager) #3 {
entry:
  %gdk_display.addr = alloca %struct._GdkDisplay*, align 8
  %device.addr = alloca %struct._GdkDevice*, align 8
  %manager.addr = alloca %struct._GimpDeviceManager*, align 8
  %private = alloca %struct._GimpDeviceManagerPrivate*, align 8
  %device_info = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GdkDisplay* %gdk_display, %struct._GdkDisplay** %gdk_display.addr, align 8
  store %struct._GdkDevice* %device, %struct._GdkDevice** %device.addr, align 8
  store %struct._GimpDeviceManager* %manager, %struct._GimpDeviceManager** %manager.addr, align 8
  %0 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpDeviceManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_manager_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDeviceManagerPrivate*
  store %struct._GimpDeviceManagerPrivate* %2, %struct._GimpDeviceManagerPrivate** %private, align 8
  %3 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %4 = bitcast %struct._GimpDeviceManager* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainer*
  %6 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %name = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %6, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %call4 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %5, i8* %7)
  %8 = bitcast %struct._GimpObject* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_device_info_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %9, %struct._GimpDeviceInfo** %device_info, align 8
  %10 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %tobool = icmp ne %struct._GimpDeviceInfo* %10, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  call void @gimp_device_info_set_device(%struct._GimpDeviceInfo* %11, %struct._GdkDevice* null, %struct._GdkDisplay* null)
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %13 = load %struct._GimpDeviceManagerPrivate*, %struct._GimpDeviceManagerPrivate** %private, align 8
  %current_device = getelementptr inbounds %struct._GimpDeviceManagerPrivate, %struct._GimpDeviceManagerPrivate* %13, i32 0, i32 1
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %cmp = icmp eq %struct._GimpDeviceInfo* %12, %14
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %15 = load %struct._GdkDisplay*, %struct._GdkDisplay** %gdk_display.addr, align 8
  %call8 = call %struct._GdkDevice* @gdk_display_get_core_pointer(%struct._GdkDisplay* %15)
  store %struct._GdkDevice* %call8, %struct._GdkDevice** %device.addr, align 8
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %call9 = call %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice* %16)
  store %struct._GimpDeviceInfo* %call9, %struct._GimpDeviceInfo** %device_info, align 8
  %17 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager.addr, align 8
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  call void @gimp_device_manager_set_current_device(%struct._GimpDeviceManager* %17, %struct._GimpDeviceInfo* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
