; ModuleID = './app/widgets/gimpdeviceinfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDeviceInfoClass = type { %struct._GimpContextClass, void (%struct._GimpDeviceInfo*)* }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
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
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GimpConfig = type opaque

@gimp_device_info_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpDeviceInfo\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_device_info_new = private unnamed_addr constant [21 x i8] c"gimp_device_info_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GDK_IS_DEVICE (device)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"GDK_IS_DISPLAY (display)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@__func__.gimp_device_info_get_device = private unnamed_addr constant [28 x i8] c"gimp_device_info_get_device\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"GIMP_IS_DEVICE_INFO (info)\00", align 1
@__func__.gimp_device_info_set_device = private unnamed_addr constant [28 x i8] c"gimp_device_info_set_device\00", align 1
@.str.9 = private unnamed_addr constant [92 x i8] c"(device == NULL && display == NULL) || (GDK_IS_DEVICE (device) && GDK_IS_DISPLAY (display))\00", align 1
@.str.10 = private unnamed_addr constant [101 x i8] c"(info->device == NULL && GDK_IS_DEVICE (device)) || (GDK_IS_DEVICE (info->device) && device == NULL)\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"device == NULL || strcmp (device->name, gimp_object_get_name (info)) == 0\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"gimp-device-info\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"%s: stored 'num-axes' for device '%s' doesn't match number of axes present in device\0A\00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"%s: stored 'num-keys' for device '%s' doesn't match number of keys present in device\0A\00", align 1
@__func__.gimp_device_info_set_default_tool = private unnamed_addr constant [34 x i8] c"gimp_device_info_set_default_tool\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp-eraser-tool\00", align 1
@__func__.gimp_device_info_get_mode = private unnamed_addr constant [26 x i8] c"gimp_device_info_get_mode\00", align 1
@__func__.gimp_device_info_set_mode = private unnamed_addr constant [26 x i8] c"gimp_device_info_set_mode\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@__func__.gimp_device_info_has_cursor = private unnamed_addr constant [28 x i8] c"gimp_device_info_has_cursor\00", align 1
@__func__.gimp_device_info_get_n_axes = private unnamed_addr constant [28 x i8] c"gimp_device_info_get_n_axes\00", align 1
@__func__.gimp_device_info_get_axis_use = private unnamed_addr constant [30 x i8] c"gimp_device_info_get_axis_use\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"axis >= 0 && axis < gimp_device_info_get_n_axes (info)\00", align 1
@__func__.gimp_device_info_set_axis_use = private unnamed_addr constant [30 x i8] c"gimp_device_info_set_axis_use\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"axes\00", align 1
@__func__.gimp_device_info_get_n_keys = private unnamed_addr constant [28 x i8] c"gimp_device_info_get_n_keys\00", align 1
@__func__.gimp_device_info_get_key = private unnamed_addr constant [25 x i8] c"gimp_device_info_get_key\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"key >= 0 && key < gimp_device_info_get_n_keys (info)\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"keyval != NULL\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"modifiers != NULL\00", align 1
@__func__.gimp_device_info_set_key = private unnamed_addr constant [25 x i8] c"gimp_device_info_set_key\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@__func__.gimp_device_info_get_curve = private unnamed_addr constant [27 x i8] c"gimp_device_info_get_curve\00", align 1
@__func__.gimp_device_info_map_axis = private unnamed_addr constant [26 x i8] c"gimp_device_info_map_axis\00", align 1
@__func__.gimp_device_info_changed = private unnamed_addr constant [25 x i8] c"gimp_device_info_changed\00", align 1
@device_info_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_device_info_get_by_device = private unnamed_addr constant [31 x i8] c"gimp_device_info_get_by_device\00", align 1
@gimp_device_info_parent_class = internal global i8* null, align 8
@GimpDeviceInfo_private_offset = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"gimp-input-device\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"pressure-curve\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"gimpdeviceinfo.c\00", align 1
@__func__.gimp_device_info_constructed = private unnamed_addr constant [29 x i8] c"gimp_device_info_constructed\00", align 1
@.str.29 = private unnamed_addr constant [116 x i8] c"(info->device == NULL && info->display == NULL) || (GDK_IS_DEVICE (info->device) && GDK_IS_DISPLAY (info->display))\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"foreground-changed\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"background-changed\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"tool-changed\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"brush-changed\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"pattern-changed\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"gradient-changed\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"pressure curve\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"notify::name\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"eraser\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"gimp-tool-eraser\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"pen\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"airbrush\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"gimp-tool-airbrush\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"touchpad\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"trackpoint\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"gimp-cursor\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_device_info_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_device_info_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_device_info_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_context_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_device_info_class_intern_init to void (i8*, i8*)*), i32 400, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_device_info_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_device_info_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_device_info_parent_class, align 8
  %1 = load i32, i32* @GimpDeviceInfo_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDeviceInfo_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDeviceInfoClass*
  call void @gimp_device_info_class_init(%struct._GimpDeviceInfoClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_init(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %0, i32 0, i32 1
  store %struct._GdkDevice* null, %struct._GdkDevice** %device, align 8
  %1 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %display = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %1, i32 0, i32 2
  store %struct._GdkDisplay* null, %struct._GdkDisplay** %display, align 8
  %2 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %mode = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %2, i32 0, i32 3
  store i32 0, i32* %mode, align 4
  %3 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %3, i32 0, i32 4
  store i32 0, i32* %n_axes, align 4
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %4, i32 0, i32 5
  store i32* null, i32** %axes, align 8
  %5 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %5, i32 0, i32 6
  store i32 0, i32* %n_keys, align 4
  %6 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %6, i32 0, i32 7
  store %struct._GdkDeviceKey* null, %struct._GdkDeviceKey** %keys, align 8
  %call = call %struct._GimpData* @gimp_curve_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0))
  %7 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_curve_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call1)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCurve*
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %9, i32 0, i32 8
  store %struct._GimpCurve* %8, %struct._GimpCurve** %pressure_curve, align 8
  %10 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %11 = bitcast %struct._GimpDeviceInfo* %10 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_guess_icon to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDeviceInfo* @gimp_device_info_new(%struct._Gimp* %gimp, %struct._GdkDevice* %device, %struct._GdkDisplay* %display) #3 {
entry:
  %retval = alloca %struct._GimpDeviceInfo*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %device.addr = alloca %struct._GdkDevice*, align 8
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GdkDevice* %device, %struct._GdkDevice** %device.addr, align 8
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_device_info_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %14 = bitcast %struct._GdkDevice* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gdk_device_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_device_info_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %27 = bitcast %struct._GdkDisplay* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gdk_display_get_type() #7
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #8
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_device_info_new, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call i64 @gimp_device_info_get_type() #7
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %40 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %41 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %call68 = call i8* (i64, i8*, ...) @g_object_new(i64 %call67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._GdkDevice* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._GdkDisplay* %41, i8* null)
  %42 = bitcast i8* %call68 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %42, %struct._GimpDeviceInfo** %retval
  br label %return

return:                                           ; preds = %do.end.66, %if.else.64, %if.else.36, %if.else.9
  %43 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %retval
  ret %struct._GimpDeviceInfo* %43
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_device_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gdk_display_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GdkDevice* @gimp_device_info_get_device(%struct._GimpDeviceInfo* %info, %struct._GdkDisplay** %display) #3 {
entry:
  %retval = alloca %struct._GdkDevice*, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %display.addr = alloca %struct._GdkDisplay**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkDisplay** %display, %struct._GdkDisplay*** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_get_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GdkDevice* null, %struct._GdkDevice** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GdkDisplay**, %struct._GdkDisplay*** %display.addr, align 8
  %tobool11 = icmp ne %struct._GdkDisplay** %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %display13 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %14, i32 0, i32 2
  %15 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display13, align 8
  %16 = load %struct._GdkDisplay**, %struct._GdkDisplay*** %display.addr, align 8
  store %struct._GdkDisplay* %15, %struct._GdkDisplay** %16, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %17, i32 0, i32 1
  %18 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  store %struct._GdkDevice* %18, %struct._GdkDevice** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else.9
  %19 = load %struct._GdkDevice*, %struct._GdkDevice** %retval
  ret %struct._GdkDevice* %19
}

; Function Attrs: nounwind uwtable
define void @gimp_device_info_set_device(%struct._GimpDeviceInfo* %info, %struct._GdkDevice* %device, %struct._GdkDisplay* %display) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %device.addr = alloca %struct._GdkDevice*, align 8
  %display.addr = alloca %struct._GdkDisplay*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %__inst40 = alloca %struct._GTypeInstance*, align 8
  %__t42 = alloca i64, align 8
  %__r45 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %__inst71 = alloca %struct._GTypeInstance*, align 8
  %__t73 = alloca i64, align 8
  %__r76 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %__inst95 = alloca %struct._GTypeInstance*, align 8
  %__t98 = alloca i64, align 8
  %__r101 = alloca i32, align 4
  %tmp116 = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkDevice* %device, %struct._GdkDevice** %device.addr, align 8
  store %struct._GdkDisplay* %display, %struct._GdkDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_set_device, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %cmp12 = icmp eq %struct._GdkDevice* %13, null
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %cmp14 = icmp eq %struct._GdkDisplay* %14, null
  br i1 %cmp14, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13, %do.body.11
  %15 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %16 = bitcast %struct._GdkDevice* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gdk_device_get_type() #7
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.63

land.lhs.true.38:                                 ; preds = %if.end.35
  %28 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %29 = bitcast %struct._GdkDisplay* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst40, align 8
  %call43 = call i64 @gdk_display_get_type() #7
  store i64 %call43, i64* %__t42, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %tobool46 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.38
  store i32 0, i32* %__r45, align 4
  br label %if.end.59

if.else.48:                                       ; preds = %land.lhs.true.38
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %tobool50 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.56

land.lhs.true.51:                                 ; preds = %if.else.48
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %g_type53 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type53, align 8
  %36 = load i64, i64* %__t42, align 8
  %cmp54 = icmp eq i64 %35, %36
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.51
  store i32 1, i32* %__r45, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %land.lhs.true.51, %if.else.48
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %38 = load i64, i64* %__t42, align 8
  %call57 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #8
  store i32 %call57, i32* %__r45, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.47
  %39 = load i32, i32* %__r45, align 4
  store i32 %39, i32* %tmp60
  %40 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %40, 0
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.end.59, %land.lhs.true.13
  br label %if.end.64

if.else.63:                                       ; preds = %if.end.59, %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_set_device, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.64:                                        ; preds = %if.then.62
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %41 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device67 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %41, i32 0, i32 1
  %42 = load %struct._GdkDevice*, %struct._GdkDevice** %device67, align 8
  %cmp68 = icmp eq %struct._GdkDevice* %42, null
  br i1 %cmp68, label %land.lhs.true.69, label %lor.lhs.false.93

land.lhs.true.69:                                 ; preds = %do.body.66
  %43 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %44 = bitcast %struct._GdkDevice* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst71, align 8
  %call74 = call i64 @gdk_device_get_type() #7
  store i64 %call74, i64* %__t73, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %tobool77 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.69
  store i32 0, i32* %__r76, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %land.lhs.true.69
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %tobool81 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.87

land.lhs.true.82:                                 ; preds = %if.else.79
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class83 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class83, align 8
  %g_type84 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type84, align 8
  %51 = load i64, i64* %__t73, align 8
  %cmp85 = icmp eq i64 %50, %51
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %__r76, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %land.lhs.true.82, %if.else.79
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %53 = load i64, i64* %__t73, align 8
  %call88 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #8
  store i32 %call88, i32* %__r76, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.78
  %54 = load i32, i32* %__r76, align 4
  store i32 %54, i32* %tmp91
  %55 = load i32, i32* %tmp91
  %tobool92 = icmp ne i32 %55, 0
  br i1 %tobool92, label %if.then.120, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %if.end.90, %do.body.66
  %56 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device96 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %56, i32 0, i32 1
  %57 = load %struct._GdkDevice*, %struct._GdkDevice** %device96, align 8
  %58 = bitcast %struct._GdkDevice* %57 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %58, %struct._GTypeInstance** %__inst95, align 8
  %call99 = call i64 @gdk_device_get_type() #7
  store i64 %call99, i64* %__t98, align 8
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %tobool102 = icmp ne %struct._GTypeInstance* %59, null
  br i1 %tobool102, label %if.else.104, label %if.then.103

if.then.103:                                      ; preds = %lor.lhs.false.93
  store i32 0, i32* %__r101, align 4
  br label %if.end.115

if.else.104:                                      ; preds = %lor.lhs.false.93
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %g_class105 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class105, align 8
  %tobool106 = icmp ne %struct._GTypeClass* %61, null
  br i1 %tobool106, label %land.lhs.true.107, label %if.else.112

land.lhs.true.107:                                ; preds = %if.else.104
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %g_class108 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class108, align 8
  %g_type109 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type109, align 8
  %65 = load i64, i64* %__t98, align 8
  %cmp110 = icmp eq i64 %64, %65
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %land.lhs.true.107
  store i32 1, i32* %__r101, align 4
  br label %if.end.114

if.else.112:                                      ; preds = %land.lhs.true.107, %if.else.104
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %67 = load i64, i64* %__t98, align 8
  %call113 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %66, i64 %67) #8
  store i32 %call113, i32* %__r101, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.112, %if.then.111
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.103
  %68 = load i32, i32* %__r101, align 4
  store i32 %68, i32* %tmp116
  %69 = load i32, i32* %tmp116
  %tobool117 = icmp ne i32 %69, 0
  br i1 %tobool117, label %land.lhs.true.118, label %if.else.121

land.lhs.true.118:                                ; preds = %if.end.115
  %70 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %cmp119 = icmp eq %struct._GdkDevice* %70, null
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %land.lhs.true.118, %if.end.90
  br label %if.end.122

if.else.121:                                      ; preds = %land.lhs.true.118, %if.end.115
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_set_device, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.122:                                       ; preds = %if.then.120
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  br label %do.body.124

do.body.124:                                      ; preds = %do.end.123
  %71 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %cmp125 = icmp eq %struct._GdkDevice* %71, null
  br i1 %cmp125, label %if.then.130, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %do.body.124
  %72 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %name = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %72, i32 0, i32 1
  %73 = load i8*, i8** %name, align 8
  %74 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %75 = bitcast %struct._GimpDeviceInfo* %74 to i8*
  %call127 = call i8* @gimp_object_get_name(i8* %75)
  %call128 = call i32 @strcmp(i8* %73, i8* %call127) #8
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %lor.lhs.false.126, %do.body.124
  br label %if.end.132

if.else.131:                                      ; preds = %lor.lhs.false.126
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_set_device, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.132:                                       ; preds = %if.then.130
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  %76 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %tobool134 = icmp ne %struct._GdkDevice* %76, null
  br i1 %tobool134, label %if.then.135, label %if.else.173

if.then.135:                                      ; preds = %do.end.133
  %77 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %78 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device136 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %78, i32 0, i32 1
  store %struct._GdkDevice* %77, %struct._GdkDevice** %device136, align 8
  %79 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display.addr, align 8
  %80 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %display137 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %80, i32 0, i32 2
  store %struct._GdkDisplay* %79, %struct._GdkDisplay** %display137, align 8
  %81 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %82 = bitcast %struct._GdkDevice* %81 to %struct._GTypeInstance*
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call138 to %struct._GObject*
  %84 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %85 = bitcast %struct._GimpDeviceInfo* %84 to i8*
  call void @g_object_set_data(%struct._GObject* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* %85)
  %86 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %87 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %mode = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %87, i32 0, i32 3
  %88 = load i32, i32* %mode, align 4
  call void @gimp_device_info_set_mode(%struct._GimpDeviceInfo* %86, i32 %88)
  %89 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %89, i32 0, i32 4
  %90 = load i32, i32* %n_axes, align 4
  %91 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_axes = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %91, i32 0, i32 5
  %92 = load i32, i32* %num_axes, align 4
  %cmp139 = icmp ne i32 %90, %92
  br i1 %cmp139, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.135
  %93 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %name141 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %93, i32 0, i32 1
  %94 = load i8*, i8** %name141, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_set_device, i32 0, i32 0), i8* %94)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.then.135
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.142
  %95 = load i32, i32* %i, align 4
  %96 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes143 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %96, i32 0, i32 4
  %97 = load i32, i32* %n_axes143, align 4
  %98 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_axes144 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %98, i32 0, i32 5
  %99 = load i32, i32* %num_axes144, align 4
  %cmp145 = icmp slt i32 %97, %99
  br i1 %cmp145, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %100 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes146 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %100, i32 0, i32 4
  %101 = load i32, i32* %n_axes146, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %102 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_axes147 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %102, i32 0, i32 5
  %103 = load i32, i32* %num_axes147, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %101, %cond.true ], [ %103, %cond.false ]
  %cmp148 = icmp slt i32 %95, %cond
  br i1 %cmp148, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %104 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom = sext i32 %106 to i64
  %107 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %107, i32 0, i32 5
  %108 = load i32*, i32** %axes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %108, i64 %idxprom
  %109 = load i32, i32* %arrayidx, align 4
  call void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo* %104, i32 %105, i32 %109)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %110 = load i32, i32* %i, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %111 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %111, i32 0, i32 6
  %112 = load i32, i32* %n_keys, align 4
  %113 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_keys = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %113, i32 0, i32 7
  %114 = load i32, i32* %num_keys, align 4
  %cmp149 = icmp ne i32 %112, %114
  br i1 %cmp149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %for.end
  %115 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %name151 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %115, i32 0, i32 1
  %116 = load i8*, i8** %name151, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_set_device, i32 0, i32 0), i8* %116)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.170, %if.end.152
  %117 = load i32, i32* %i, align 4
  %118 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys154 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %118, i32 0, i32 6
  %119 = load i32, i32* %n_keys154, align 4
  %120 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_keys155 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %120, i32 0, i32 7
  %121 = load i32, i32* %num_keys155, align 4
  %cmp156 = icmp slt i32 %119, %121
  br i1 %cmp156, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %for.cond.153
  %122 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys158 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %122, i32 0, i32 6
  %123 = load i32, i32* %n_keys158, align 4
  br label %cond.end.161

cond.false.159:                                   ; preds = %for.cond.153
  %124 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_keys160 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %124, i32 0, i32 7
  %125 = load i32, i32* %num_keys160, align 4
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.159, %cond.true.157
  %cond162 = phi i32 [ %123, %cond.true.157 ], [ %125, %cond.false.159 ]
  %cmp163 = icmp slt i32 %117, %cond162
  br i1 %cmp163, label %for.body.164, label %for.end.172

for.body.164:                                     ; preds = %cond.end.161
  %126 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %127 = load i32, i32* %i, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %128 to i64
  %129 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %129, i32 0, i32 7
  %130 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys, align 8
  %arrayidx166 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %130, i64 %idxprom165
  %keyval = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx166, i32 0, i32 0
  %131 = load i32, i32* %keyval, align 4
  %132 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %132 to i64
  %133 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys168 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %133, i32 0, i32 7
  %134 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys168, align 8
  %arrayidx169 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %134, i64 %idxprom167
  %modifiers = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx169, i32 0, i32 1
  %135 = load i32, i32* %modifiers, align 4
  call void @gimp_device_info_set_key(%struct._GimpDeviceInfo* %126, i32 %127, i32 %131, i32 %135)
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.164
  %136 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %136, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.153

for.end.172:                                      ; preds = %cond.end.161
  br label %if.end.236

if.else.173:                                      ; preds = %do.end.133
  %137 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device174 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %137, i32 0, i32 1
  %138 = load %struct._GdkDevice*, %struct._GdkDevice** %device174, align 8
  store %struct._GdkDevice* %138, %struct._GdkDevice** %device.addr, align 8
  %139 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %display175 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %139, i32 0, i32 2
  %140 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display175, align 8
  store %struct._GdkDisplay* %140, %struct._GdkDisplay** %display.addr, align 8
  %141 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device176 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %141, i32 0, i32 1
  store %struct._GdkDevice* null, %struct._GdkDevice** %device176, align 8
  %142 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %display177 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %142, i32 0, i32 2
  store %struct._GdkDisplay* null, %struct._GdkDisplay** %display177, align 8
  %143 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %144 = bitcast %struct._GdkDevice* %143 to %struct._GTypeInstance*
  %call178 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 80)
  %145 = bitcast %struct._GTypeInstance* %call178 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* null)
  %146 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %147 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %mode179 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %147, i32 0, i32 3
  %148 = load i32, i32* %mode179, align 4
  call void @gimp_device_info_set_mode(%struct._GimpDeviceInfo* %146, i32 %148)
  %149 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_axes180 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %149, i32 0, i32 5
  %150 = load i32, i32* %num_axes180, align 4
  %151 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes181 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %151, i32 0, i32 4
  store i32 %150, i32* %n_axes181, align 4
  %152 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes182 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %152, i32 0, i32 5
  %153 = load i32*, i32** %axes182, align 8
  %154 = bitcast i32* %153 to i8*
  %155 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes183 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %155, i32 0, i32 4
  %156 = load i32, i32* %n_axes183, align 4
  %conv = sext i32 %156 to i64
  %call184 = call i8* @g_realloc_n(i8* %154, i64 %conv, i64 4)
  %157 = bitcast i8* %call184 to i32*
  %158 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes185 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %158, i32 0, i32 5
  store i32* %157, i32** %axes185, align 8
  %159 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes186 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %159, i32 0, i32 5
  %160 = load i32*, i32** %axes186, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes187 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %162, i32 0, i32 4
  %163 = load i32, i32* %n_axes187, align 4
  %conv188 = sext i32 %163 to i64
  %mul = mul i64 %conv188, 4
  call void @llvm.memset.p0i8.i64(i8* %161, i8 0, i64 %mul, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.197, %if.else.173
  %164 = load i32, i32* %i, align 4
  %165 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_axes190 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %165, i32 0, i32 5
  %166 = load i32, i32* %num_axes190, align 4
  %cmp191 = icmp slt i32 %164, %166
  br i1 %cmp191, label %for.body.193, label %for.end.199

for.body.193:                                     ; preds = %for.cond.189
  %167 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %169 to i64
  %170 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %axes195 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %170, i32 0, i32 6
  %171 = load %struct._GdkDeviceAxis*, %struct._GdkDeviceAxis** %axes195, align 8
  %arrayidx196 = getelementptr inbounds %struct._GdkDeviceAxis, %struct._GdkDeviceAxis* %171, i64 %idxprom194
  %use = getelementptr inbounds %struct._GdkDeviceAxis, %struct._GdkDeviceAxis* %arrayidx196, i32 0, i32 0
  %172 = load i32, i32* %use, align 4
  call void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo* %167, i32 %168, i32 %172)
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.body.193
  %173 = load i32, i32* %i, align 4
  %inc198 = add nsw i32 %173, 1
  store i32 %inc198, i32* %i, align 4
  br label %for.cond.189

for.end.199:                                      ; preds = %for.cond.189
  %174 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_keys200 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %174, i32 0, i32 7
  %175 = load i32, i32* %num_keys200, align 4
  %176 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys201 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %176, i32 0, i32 6
  store i32 %175, i32* %n_keys201, align 4
  %177 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys202 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %177, i32 0, i32 7
  %178 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys202, align 8
  %179 = bitcast %struct._GdkDeviceKey* %178 to i8*
  %180 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys203 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %180, i32 0, i32 6
  %181 = load i32, i32* %n_keys203, align 4
  %conv204 = sext i32 %181 to i64
  %call205 = call i8* @g_realloc_n(i8* %179, i64 %conv204, i64 8)
  %182 = bitcast i8* %call205 to %struct._GdkDeviceKey*
  %183 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys206 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %183, i32 0, i32 7
  store %struct._GdkDeviceKey* %182, %struct._GdkDeviceKey** %keys206, align 8
  %184 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys207 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %184, i32 0, i32 7
  %185 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys207, align 8
  %186 = bitcast %struct._GdkDeviceKey* %185 to i8*
  %187 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys208 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %187, i32 0, i32 6
  %188 = load i32, i32* %n_keys208, align 4
  %conv209 = sext i32 %188 to i64
  %mul210 = mul i64 %conv209, 8
  call void @llvm.memset.p0i8.i64(i8* %186, i8 0, i64 %mul210, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.233, %for.end.199
  %189 = load i32, i32* %i, align 4
  %190 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys212 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %190, i32 0, i32 6
  %191 = load i32, i32* %n_keys212, align 4
  %192 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_keys213 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %192, i32 0, i32 7
  %193 = load i32, i32* %num_keys213, align 4
  %cmp214 = icmp slt i32 %191, %193
  br i1 %cmp214, label %cond.true.216, label %cond.false.218

cond.true.216:                                    ; preds = %for.cond.211
  %194 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys217 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %194, i32 0, i32 6
  %195 = load i32, i32* %n_keys217, align 4
  br label %cond.end.220

cond.false.218:                                   ; preds = %for.cond.211
  %196 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %num_keys219 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %196, i32 0, i32 7
  %197 = load i32, i32* %num_keys219, align 4
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.false.218, %cond.true.216
  %cond221 = phi i32 [ %195, %cond.true.216 ], [ %197, %cond.false.218 ]
  %cmp222 = icmp slt i32 %189, %cond221
  br i1 %cmp222, label %for.body.224, label %for.end.235

for.body.224:                                     ; preds = %cond.end.220
  %198 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %199 = load i32, i32* %i, align 4
  %200 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %200 to i64
  %201 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %keys226 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %201, i32 0, i32 8
  %202 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys226, align 8
  %arrayidx227 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %202, i64 %idxprom225
  %keyval228 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx227, i32 0, i32 0
  %203 = load i32, i32* %keyval228, align 4
  %204 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %204 to i64
  %205 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %keys230 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %205, i32 0, i32 8
  %206 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys230, align 8
  %arrayidx231 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %206, i64 %idxprom229
  %modifiers232 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx231, i32 0, i32 1
  %207 = load i32, i32* %modifiers232, align 4
  call void @gimp_device_info_set_key(%struct._GimpDeviceInfo* %198, i32 %199, i32 %203, i32 %207)
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.224
  %208 = load i32, i32* %i, align 4
  %inc234 = add nsw i32 %208, 1
  store i32 %inc234, i32* %i, align 4
  br label %for.cond.211

for.end.235:                                      ; preds = %cond.end.220
  br label %if.end.236

if.end.236:                                       ; preds = %for.end.235, %for.end.172
  %209 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %210 = bitcast %struct._GimpDeviceInfo* %209 to %struct._GTypeInstance*
  %call237 = call i64 @gimp_object_get_type() #7
  %call238 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call237)
  %211 = bitcast %struct._GTypeInstance* %call238 to %struct._GimpObject*
  call void @gimp_object_name_changed(%struct._GimpObject* %211)
  %212 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %213 = bitcast %struct._GimpDeviceInfo* %212 to %struct._GTypeInstance*
  %call239 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %213, i64 80)
  %214 = bitcast %struct._GTypeInstance* %call239 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %215 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  call void @gimp_device_info_changed(%struct._GimpDeviceInfo* %215)
  br label %return

return:                                           ; preds = %if.end.236, %if.else.131, %if.else.121, %if.else.63, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_info_set_mode(%struct._GimpDeviceInfo* %info, i32 %mode) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_device_info_set_mode, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call11 = call i32 @gimp_device_info_get_mode(%struct._GimpDeviceInfo* %14)
  %cmp12 = icmp ne i32 %13, %call11
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 1
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool14 = icmp ne %struct._GdkDevice* %16, null
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.then.13
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device16 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %17, i32 0, i32 1
  %18 = load %struct._GdkDevice*, %struct._GdkDevice** %device16, align 8
  %19 = load i32, i32* %mode.addr, align 4
  %call17 = call i32 @gdk_device_set_mode(%struct._GdkDevice* %18, i32 %19)
  br label %if.end.20

if.else.18:                                       ; preds = %if.then.13
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %mode19 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %21, i32 0, i32 3
  store i32 %20, i32* %mode19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.15
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %23 = bitcast %struct._GimpDeviceInfo* %22 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  %25 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  call void @gimp_device_info_changed(%struct._GimpDeviceInfo* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.end.20, %do.end
  ret void
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo* %info, i32 %axis, i32 %use) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %axis.addr = alloca i32, align 4
  %use.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %axis, i32* %axis.addr, align 4
  store i32 %use, i32* %use.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_device_info_set_axis_use, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %axis.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %axis.addr, align 4
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call14 = call i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %15)
  %cmp15 = icmp slt i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_device_info_set_axis_use, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.29

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load i32, i32* %use.addr, align 4
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %18 = load i32, i32* %axis.addr, align 4
  %call20 = call i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo* %17, i32 %18)
  %cmp21 = icmp ne i32 %16, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %do.end.19
  %19 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %19, i32 0, i32 1
  %20 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool23 = icmp ne %struct._GdkDevice* %20, null
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.22
  %21 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device25 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %21, i32 0, i32 1
  %22 = load %struct._GdkDevice*, %struct._GdkDevice** %device25, align 8
  %23 = load i32, i32* %axis.addr, align 4
  %24 = load i32, i32* %use.addr, align 4
  call void @gdk_device_set_axis_use(%struct._GdkDevice* %22, i32 %23, i32 %24)
  br label %if.end.27

if.else.26:                                       ; preds = %if.then.22
  %25 = load i32, i32* %use.addr, align 4
  %26 = load i32, i32* %axis.addr, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %27, i32 0, i32 5
  %28 = load i32*, i32** %axes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %28, i64 %idxprom
  store i32 %25, i32* %arrayidx, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.24
  %29 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %30 = bitcast %struct._GimpDeviceInfo* %29 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.else.17, %if.end.27, %do.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_device_info_set_key(%struct._GimpDeviceInfo* %info, i32 %key, i32 %keyval, i32 %modifiers) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %key.addr = alloca i32, align 4
  %keyval.addr = alloca i32, align 4
  %modifiers.addr = alloca i32, align 4
  %old_keyval = alloca i32, align 4
  %old_modifiers = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %keyval, i32* %keyval.addr, align 4
  store i32 %modifiers, i32* %modifiers.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_set_key, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.34

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %key.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %key.addr, align 4
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call14 = call i32 @gimp_device_info_get_n_keys(%struct._GimpDeviceInfo* %15)
  %cmp15 = icmp slt i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_set_key, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.34

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %17 = load i32, i32* %key.addr, align 4
  call void @gimp_device_info_get_key(%struct._GimpDeviceInfo* %16, i32 %17, i32* %old_keyval, i32* %old_modifiers)
  %18 = load i32, i32* %keyval.addr, align 4
  %19 = load i32, i32* %old_keyval, align 4
  %cmp20 = icmp ne i32 %18, %19
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.19
  %20 = load i32, i32* %modifiers.addr, align 4
  %21 = load i32, i32* %old_modifiers, align 4
  %cmp21 = icmp ne i32 %20, %21
  br i1 %cmp21, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %lor.lhs.false, %do.end.19
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %22, i32 0, i32 1
  %23 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool23 = icmp ne %struct._GdkDevice* %23, null
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.then.22
  %24 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device25 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %24, i32 0, i32 1
  %25 = load %struct._GdkDevice*, %struct._GdkDevice** %device25, align 8
  %26 = load i32, i32* %key.addr, align 4
  %27 = load i32, i32* %keyval.addr, align 4
  %28 = load i32, i32* %modifiers.addr, align 4
  call void @gdk_device_set_key(%struct._GdkDevice* %25, i32 %26, i32 %27, i32 %28)
  br label %if.end.32

if.else.26:                                       ; preds = %if.then.22
  %29 = load i32, i32* %keyval.addr, align 4
  %30 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %31, i32 0, i32 7
  %32 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %32, i64 %idxprom
  %keyval27 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx, i32 0, i32 0
  store i32 %29, i32* %keyval27, align 4
  %33 = load i32, i32* %modifiers.addr, align 4
  %34 = load i32, i32* %key.addr, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys29 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %35, i32 0, i32 7
  %36 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %36, i64 %idxprom28
  %modifiers31 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx30, i32 0, i32 1
  store i32 %33, i32* %modifiers31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.26, %if.then.24
  %37 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %38 = bitcast %struct._GimpDeviceInfo* %37 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.9, %if.else.17, %if.end.32, %lor.lhs.false
  ret void
}

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gimp_object_name_changed(%struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_info_changed(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_changed, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %14 = bitcast %struct._GimpDeviceInfo* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @device_info_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_device_info_set_default_tool(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tools = alloca %struct._GimpContainer*, align 8
  %eraser = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_device_info_set_default_tool, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %13, i32 0, i32 1
  %14 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool11 = icmp ne %struct._GdkDevice* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.29

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device13 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 1
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device13, align 8
  %call14 = call i32 @gdk_device_get_source(%struct._GdkDevice* %16)
  %cmp15 = icmp eq i32 %call14, 2
  br i1 %cmp15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %land.lhs.true.12
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %18 = bitcast %struct._GimpDeviceInfo* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_context_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpContext*
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 45
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  store %struct._GimpContainer* %21, %struct._GimpContainer** %tools, align 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %tools, align 8
  %call21 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  %23 = bitcast %struct._GimpObject* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_tool_info_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %24, %struct._GimpToolInfo** %eraser, align 8
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %eraser, align 8
  %tobool24 = icmp ne %struct._GimpToolInfo* %25, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.16
  %26 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %27 = bitcast %struct._GimpDeviceInfo* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_context_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpContext*
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %eraser, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %28, %struct._GimpToolInfo* %29)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.16
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.end.28, %land.lhs.true.12, %do.end
  ret void
}

declare i32 @gdk_device_get_source(%struct._GdkDevice*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_get_mode(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_device_info_get_mode, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %13, i32 0, i32 1
  %14 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool11 = icmp ne %struct._GdkDevice* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device13 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 1
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device13, align 8
  %mode = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %16, i32 0, i32 3
  %17 = load i32, i32* %mode, align 4
  store i32 %17, i32* %retval
  br label %return

if.else.14:                                       ; preds = %do.end
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %mode15 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %18, i32 0, i32 3
  %19 = load i32, i32* %mode15, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.12, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gdk_device_set_mode(%struct._GdkDevice*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_has_cursor(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_has_cursor, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %13, i32 0, i32 1
  %14 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool11 = icmp ne %struct._GdkDevice* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device13 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 1
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device13, align 8
  %has_cursor = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %16, i32 0, i32 4
  %17 = load i32, i32* %has_cursor, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_get_n_axes, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %13, i32 0, i32 1
  %14 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool11 = icmp ne %struct._GdkDevice* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device13 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 1
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device13, align 8
  %num_axes = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %16, i32 0, i32 5
  %17 = load i32, i32* %num_axes, align 4
  store i32 %17, i32* %retval
  br label %return

if.else.14:                                       ; preds = %do.end
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %18, i32 0, i32 4
  %19 = load i32, i32* %n_axes, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.12, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo* %info, i32 %axis) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %axis.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %axis, i32* %axis.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_device_info_get_axis_use, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %axis.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %axis.addr, align 4
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call14 = call i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %15)
  %cmp15 = icmp slt i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_device_info_get_axis_use, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %16, i32 0, i32 1
  %17 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool20 = icmp ne %struct._GdkDevice* %17, null
  br i1 %tobool20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %do.end.19
  %18 = load i32, i32* %axis.addr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device22 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %19, i32 0, i32 1
  %20 = load %struct._GdkDevice*, %struct._GdkDevice** %device22, align 8
  %axes = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %20, i32 0, i32 6
  %21 = load %struct._GdkDeviceAxis*, %struct._GdkDeviceAxis** %axes, align 8
  %arrayidx = getelementptr inbounds %struct._GdkDeviceAxis, %struct._GdkDeviceAxis* %21, i64 %idxprom
  %use = getelementptr inbounds %struct._GdkDeviceAxis, %struct._GdkDeviceAxis* %arrayidx, i32 0, i32 0
  %22 = load i32, i32* %use, align 4
  store i32 %22, i32* %retval
  br label %return

if.else.23:                                       ; preds = %do.end.19
  %23 = load i32, i32* %axis.addr, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %axes25 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %24, i32 0, i32 5
  %25 = load i32*, i32** %axes25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %25, i64 %idxprom24
  %26 = load i32, i32* %arrayidx26, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.else.23, %if.then.21, %if.else.17, %if.else.9
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @gdk_device_set_axis_use(%struct._GdkDevice*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_get_n_keys(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_device_info_get_n_keys, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %13, i32 0, i32 1
  %14 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool11 = icmp ne %struct._GdkDevice* %14, null
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device13 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 1
  %16 = load %struct._GdkDevice*, %struct._GdkDevice** %device13, align 8
  %num_keys = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %16, i32 0, i32 7
  %17 = load i32, i32* %num_keys, align 4
  store i32 %17, i32* %retval
  br label %return

if.else.14:                                       ; preds = %do.end
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %n_keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %18, i32 0, i32 6
  %19 = load i32, i32* %n_keys, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.12, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @gimp_device_info_get_key(%struct._GimpDeviceInfo* %info, i32 %key, i32* %keyval, i32* %modifiers) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %key.addr = alloca i32, align 4
  %keyval.addr = alloca i32*, align 8
  %modifiers.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32* %keyval, i32** %keyval.addr, align 8
  store i32* %modifiers, i32** %modifiers.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_get_key, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.50

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %key.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %key.addr, align 4
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %call14 = call i32 @gimp_device_info_get_n_keys(%struct._GimpDeviceInfo* %15)
  %cmp15 = icmp slt i32 %14, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_get_key, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.50

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load i32*, i32** %keyval.addr, align 8
  %cmp21 = icmp ne i32* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_get_key, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.50

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %17 = load i32*, i32** %modifiers.addr, align 8
  %cmp27 = icmp ne i32* %17, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_device_info_get_key, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.50

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %18, i32 0, i32 1
  %19 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool32 = icmp ne %struct._GdkDevice* %19, null
  br i1 %tobool32, label %if.then.33, label %if.else.41

if.then.33:                                       ; preds = %do.end.31
  %20 = load i32, i32* %key.addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device34 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %21, i32 0, i32 1
  %22 = load %struct._GdkDevice*, %struct._GdkDevice** %device34, align 8
  %keys = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %22, i32 0, i32 8
  %23 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys, align 8
  %arrayidx = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %23, i64 %idxprom
  %keyval35 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx, i32 0, i32 0
  %24 = load i32, i32* %keyval35, align 4
  %25 = load i32*, i32** %keyval.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %key.addr, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device37 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %27, i32 0, i32 1
  %28 = load %struct._GdkDevice*, %struct._GdkDevice** %device37, align 8
  %keys38 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %28, i32 0, i32 8
  %29 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys38, align 8
  %arrayidx39 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %29, i64 %idxprom36
  %modifiers40 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx39, i32 0, i32 1
  %30 = load i32, i32* %modifiers40, align 4
  %31 = load i32*, i32** %modifiers.addr, align 8
  store i32 %30, i32* %31, align 4
  br label %if.end.50

if.else.41:                                       ; preds = %do.end.31
  %32 = load i32, i32* %key.addr, align 4
  %idxprom42 = sext i32 %32 to i64
  %33 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys43 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %33, i32 0, i32 7
  %34 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %34, i64 %idxprom42
  %keyval45 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx44, i32 0, i32 0
  %35 = load i32, i32* %keyval45, align 4
  %36 = load i32*, i32** %keyval.addr, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %key.addr, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %keys47 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %38, i32 0, i32 7
  %39 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys47, align 8
  %arrayidx48 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %39, i64 %idxprom46
  %modifiers49 = getelementptr inbounds %struct._GdkDeviceKey, %struct._GdkDeviceKey* %arrayidx48, i32 0, i32 1
  %40 = load i32, i32* %modifiers49, align 4
  %41 = load i32*, i32** %modifiers.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.9, %if.else.17, %if.else.23, %if.else.29, %if.else.41, %if.then.33
  ret void
}

declare void @gdk_device_set_key(%struct._GdkDevice*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpCurve* @gimp_device_info_get_curve(%struct._GimpDeviceInfo* %info, i32 %use) #3 {
entry:
  %retval = alloca %struct._GimpCurve*, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %use.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %use, i32* %use.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_device_info_get_curve, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %use.addr, align 4
  switch i32 %13, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %14, i32 0, i32 8
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  store %struct._GimpCurve* %15, %struct._GimpCurve** %retval
  br label %return

sw.default:                                       ; preds = %do.end
  store %struct._GimpCurve* null, %struct._GimpCurve** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.else.9
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %retval
  ret %struct._GimpCurve* %16
}

; Function Attrs: nounwind uwtable
define double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %info, i32 %use, double %value) #3 {
entry:
  %retval = alloca double, align 8
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %use.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store i32 %use, i32* %use.addr, align 4
  store double %value, double* %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_device_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_device_info_map_axis, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0))
  %13 = load double, double* %value.addr, align 8
  store double %13, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load i32, i32* %use.addr, align 4
  switch i32 %14, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.19
    i32 6, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %do.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 8
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %17 = load double, double* %value.addr, align 8
  %call11 = call double @gimp_curve_map_value(%struct._GimpCurve* %16, double %17)
  store double %call11, double* %retval
  br label %return

sw.bb.12:                                         ; preds = %do.end
  %18 = load double, double* %value.addr, align 8
  %cmp13 = fcmp ogt double %18, 1.000000e+00
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.12
  br label %cond.end.17

cond.false:                                       ; preds = %sw.bb.12
  %19 = load double, double* %value.addr, align 8
  %cmp14 = fcmp olt double %19, -1.000000e+00
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false
  %20 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ -1.000000e+00, %cond.true.15 ], [ %20, %cond.false.16 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond18, double* %retval
  br label %return

sw.bb.19:                                         ; preds = %do.end
  %21 = load double, double* %value.addr, align 8
  %cmp20 = fcmp ogt double %21, 1.000000e+00
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %sw.bb.19
  br label %cond.end.28

cond.false.22:                                    ; preds = %sw.bb.19
  %22 = load double, double* %value.addr, align 8
  %cmp23 = fcmp olt double %22, -1.000000e+00
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.22
  br label %cond.end.26

cond.false.25:                                    ; preds = %cond.false.22
  %23 = load double, double* %value.addr, align 8
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi double [ -1.000000e+00, %cond.true.24 ], [ %23, %cond.false.25 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end.26, %cond.true.21
  %cond29 = phi double [ 1.000000e+00, %cond.true.21 ], [ %cond27, %cond.end.26 ]
  store double %cond29, double* %retval
  br label %return

sw.bb.30:                                         ; preds = %do.end
  %24 = load double, double* %value.addr, align 8
  %cmp31 = fcmp ogt double %24, 1.000000e+00
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %sw.bb.30
  br label %cond.end.39

cond.false.33:                                    ; preds = %sw.bb.30
  %25 = load double, double* %value.addr, align 8
  %cmp34 = fcmp olt double %25, 0.000000e+00
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.33
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.false.33
  %26 = load double, double* %value.addr, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi double [ 0.000000e+00, %cond.true.35 ], [ %26, %cond.false.36 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %cond.true.32
  %cond40 = phi double [ 1.000000e+00, %cond.true.32 ], [ %cond38, %cond.end.37 ]
  store double %cond40, double* %retval
  br label %return

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %27 = load double, double* %value.addr, align 8
  store double %27, double* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %cond.end.39, %cond.end.28, %cond.end.17, %sw.bb, %if.else.9
  %28 = load double, double* %retval
  ret double %28
}

declare double @gimp_curve_map_value(%struct._GimpCurve*, double) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice* %device) #3 {
entry:
  %retval = alloca %struct._GimpDeviceInfo*, align 8
  %device.addr = alloca %struct._GdkDevice*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GdkDevice* %device, %struct._GdkDevice** %device.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %1 = bitcast %struct._GdkDevice* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_device_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_device_info_get_by_device, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDeviceInfo* null, %struct._GimpDeviceInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GdkDevice*, %struct._GdkDevice** %device.addr, align 8
  %14 = bitcast %struct._GdkDevice* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %16, %struct._GimpDeviceInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %retval
  ret %struct._GimpDeviceInfo* %17
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_compare(%struct._GimpDeviceInfo* %a, %struct._GimpDeviceInfo* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpDeviceInfo*, align 8
  %b.addr = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GimpDeviceInfo* %a, %struct._GimpDeviceInfo** %a.addr, align 8
  store %struct._GimpDeviceInfo* %b, %struct._GimpDeviceInfo** %b.addr, align 8
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %0, i32 0, i32 1
  %1 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool = icmp ne %struct._GdkDevice* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %display = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %2, i32 0, i32 2
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %tobool1 = icmp ne %struct._GdkDisplay* %3, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %device3 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %4, i32 0, i32 1
  %5 = load %struct._GdkDevice*, %struct._GdkDevice** %device3, align 8
  %6 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %6, i32 0, i32 2
  %7 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display4, align 8
  %call = call %struct._GdkDevice* @gdk_display_get_core_pointer(%struct._GdkDisplay* %7)
  %cmp = icmp eq %struct._GdkDevice* %5, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %device5 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %8, i32 0, i32 1
  %9 = load %struct._GdkDevice*, %struct._GdkDevice** %device5, align 8
  %tobool6 = icmp ne %struct._GdkDevice* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else.16

land.lhs.true.7:                                  ; preds = %if.else
  %10 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %display8 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %10, i32 0, i32 2
  %11 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display8, align 8
  %tobool9 = icmp ne %struct._GdkDisplay* %11, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.else.16

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %device11 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %12, i32 0, i32 1
  %13 = load %struct._GdkDevice*, %struct._GdkDevice** %device11, align 8
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %display12 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %14, i32 0, i32 2
  %15 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display12, align 8
  %call13 = call %struct._GdkDevice* @gdk_display_get_core_pointer(%struct._GdkDisplay* %15)
  %cmp14 = icmp eq %struct._GdkDevice* %13, %call13
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.else.16:                                       ; preds = %land.lhs.true.10, %land.lhs.true.7, %if.else
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %device17 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %16, i32 0, i32 1
  %17 = load %struct._GdkDevice*, %struct._GdkDevice** %device17, align 8
  %tobool18 = icmp ne %struct._GdkDevice* %17, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.else.23

land.lhs.true.19:                                 ; preds = %if.else.16
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %device20 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %18, i32 0, i32 1
  %19 = load %struct._GdkDevice*, %struct._GdkDevice** %device20, align 8
  %tobool21 = icmp ne %struct._GdkDevice* %19, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.19
  store i32 -1, i32* %retval
  br label %return

if.else.23:                                       ; preds = %land.lhs.true.19, %if.else.16
  %20 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %device24 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %20, i32 0, i32 1
  %21 = load %struct._GdkDevice*, %struct._GdkDevice** %device24, align 8
  %tobool25 = icmp ne %struct._GdkDevice* %21, null
  br i1 %tobool25, label %if.else.30, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %if.else.23
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %device27 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %22, i32 0, i32 1
  %23 = load %struct._GdkDevice*, %struct._GdkDevice** %device27, align 8
  %tobool28 = icmp ne %struct._GdkDevice* %23, null
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %retval
  br label %return

if.else.30:                                       ; preds = %land.lhs.true.26, %if.else.23
  %24 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %a.addr, align 8
  %25 = bitcast %struct._GimpDeviceInfo* %24 to %struct._GimpObject*
  %26 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %b.addr, align 8
  %27 = bitcast %struct._GimpDeviceInfo* %26 to %struct._GimpObject*
  %call31 = call i32 @gimp_object_name_collate(%struct._GimpObject* %25, %struct._GimpObject* %27)
  store i32 %call31, i32* %retval
  br label %return

return:                                           ; preds = %if.else.30, %if.then.29, %if.then.22, %if.then.15, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare %struct._GdkDevice* @gdk_display_get_core_pointer(%struct._GdkDisplay*) #1

declare i32 @gimp_object_name_collate(%struct._GimpObject*, %struct._GimpObject*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_class_init(%struct._GimpDeviceInfoClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDeviceInfoClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpDeviceInfoClass* %klass, %struct._GimpDeviceInfoClass** %klass.addr, align 8
  %0 = load %struct._GimpDeviceInfoClass*, %struct._GimpDeviceInfoClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfoClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDeviceInfoClass*, %struct._GimpDeviceInfoClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDeviceInfoClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GimpDeviceInfoClass*, %struct._GimpDeviceInfoClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDeviceInfoClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i64 %8, i32 1, i32 424, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @device_info_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_device_info_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_device_info_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_info_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_device_info_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %13 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i8** %default_stock_id, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gdk_device_get_type() #7
  %call5 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 1, %struct._GParamSpec* %call5)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gdk_display_get_type() #7
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 2, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gdk_input_mode_get_type() #7
  %call9 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 3, %struct._GParamSpec* %call9)
  %call10 = call i64 @gdk_axis_use_get_type() #7
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, i64 %call10, i32 0, i32 227)
  store %struct._GParamSpec* %call11, %struct._GParamSpec** %param_spec, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_value_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, %struct._GParamSpec* %18, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 4, %struct._GParamSpec* %call12)
  %call13 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i8* null, i32 227)
  store %struct._GParamSpec* %call13, %struct._GParamSpec** %param_spec, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_value_array(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, %struct._GParamSpec* %20, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 5, %struct._GParamSpec* %call14)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call i64 @gimp_curve_get_type() #7
  %call16 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i64 %call15, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 6, %struct._GParamSpec* %call16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %info = alloca %struct._GimpDeviceInfo*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t25 = alloca i64, align 8
  %__r28 = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %2, %struct._GimpDeviceInfo** %info, align 8
  %3 = load i8*, i8** @gimp_device_info_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_device_info_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
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
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %12, i32 0, i32 1
  %13 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %cmp = icmp eq %struct._GdkDevice* %13, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %display = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %14, i32 0, i32 2
  %15 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %cmp5 = icmp eq %struct._GdkDisplay* %15, null
  br i1 %cmp5, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %16 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device6 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %16, i32 0, i32 1
  %17 = load %struct._GdkDevice*, %struct._GdkDevice** %device6, align 8
  %18 = bitcast %struct._GdkDevice* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gdk_device_get_type() #7
  store i64 %call7, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.else.15

land.lhs.true.11:                                 ; preds = %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp13 = icmp eq i64 %24, %25
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %__r, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %land.lhs.true.11, %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #8
  store i32 %call16, i32* %__r, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.9
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %29, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.46

land.lhs.true.20:                                 ; preds = %if.end.18
  %30 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %display23 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %30, i32 0, i32 2
  %31 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display23, align 8
  %32 = bitcast %struct._GdkDisplay* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst22, align 8
  %call26 = call i64 @gdk_display_get_type() #7
  store i64 %call26, i64* %__t25, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool29 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool29, label %if.else.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.20
  store i32 0, i32* %__r28, align 4
  br label %if.end.42

if.else.31:                                       ; preds = %land.lhs.true.20
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %tobool33 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.else.39

land.lhs.true.34:                                 ; preds = %if.else.31
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type36, align 8
  %39 = load i64, i64* %__t25, align 8
  %cmp37 = icmp eq i64 %38, %39
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 1, i32* %__r28, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.34, %if.else.31
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %41 = load i64, i64* %__t25, align 8
  %call40 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #8
  store i32 %call40, i32* %__r28, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.30
  %42 = load i32, i32* %__r28, align 4
  store i32 %42, i32* %tmp43
  %43 = load i32, i32* %tmp43
  %tobool44 = icmp ne i32 %43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42, %land.lhs.true
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.42, %if.end.18
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_device_info_constructed, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.29, i32 0, i32 0)) #9
  unreachable

if.end.47:                                        ; preds = %if.then.45
  br label %do.end

do.end:                                           ; preds = %if.end.47
  %44 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %45 = bitcast %struct._GObject* %44 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_context_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call48)
  %46 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpContext*
  %gimp50 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp50, align 8
  store %struct._Gimp* %47, %struct._Gimp** %gimp, align 8
  %48 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device51 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %48, i32 0, i32 1
  %49 = load %struct._GdkDevice*, %struct._GdkDevice** %device51, align 8
  %tobool52 = icmp ne %struct._GdkDevice* %49, null
  br i1 %tobool52, label %if.then.53, label %if.end.63

if.then.53:                                       ; preds = %do.end
  %50 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device54 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %50, i32 0, i32 1
  %51 = load %struct._GdkDevice*, %struct._GdkDevice** %device54, align 8
  %52 = bitcast %struct._GdkDevice* %51 to %struct._GTypeInstance*
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call55 to %struct._GObject*
  %54 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %55 = bitcast %struct._GimpDeviceInfo* %54 to i8*
  call void @g_object_set_data(%struct._GObject* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* %55)
  %56 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %57 = bitcast %struct._GimpDeviceInfo* %56 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_object_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call56)
  %58 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpObject*
  %59 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device58 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %59, i32 0, i32 1
  %60 = load %struct._GdkDevice*, %struct._GdkDevice** %device58, align 8
  %name = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %60, i32 0, i32 1
  %61 = load i8*, i8** %name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %58, i8* %61)
  %62 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device59 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %62, i32 0, i32 1
  %63 = load %struct._GdkDevice*, %struct._GdkDevice** %device59, align 8
  %mode = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %63, i32 0, i32 3
  %64 = load i32, i32* %mode, align 4
  %65 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %mode60 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %65, i32 0, i32 3
  store i32 %64, i32* %mode60, align 4
  %66 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device61 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %66, i32 0, i32 1
  %67 = load %struct._GdkDevice*, %struct._GdkDevice** %device61, align 8
  %num_axes = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %67, i32 0, i32 5
  %68 = load i32, i32* %num_axes, align 4
  %69 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %69, i32 0, i32 4
  store i32 %68, i32* %n_axes, align 4
  %70 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device62 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %70, i32 0, i32 1
  %71 = load %struct._GdkDevice*, %struct._GdkDevice** %device62, align 8
  %num_keys = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %71, i32 0, i32 7
  %72 = load i32, i32* %num_keys, align 4
  %73 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %73, i32 0, i32 6
  store i32 %72, i32* %n_keys, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.53, %do.end
  %74 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %75 = bitcast %struct._GObject* %74 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_context_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call64)
  %76 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpContext*
  call void @gimp_context_define_properties(%struct._GimpContext* %76, i32 15600, i32 0)
  %77 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call66 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %77)
  %78 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %79 = bitcast %struct._GObject* %78 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_context_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call67)
  %80 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpContext*
  call void @gimp_context_copy_properties(%struct._GimpContext* %call66, %struct._GimpContext* %80, i32 15600)
  %81 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %82 = bitcast %struct._GObject* %81 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_context_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call69)
  %83 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpContext*
  call void @gimp_context_set_serialize_properties(%struct._GimpContext* %83, i32 15600)
  %84 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %85 = bitcast %struct._GObject* %84 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %86 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %87 = bitcast %struct._GObject* %86 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %88 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %89 = bitcast %struct._GObject* %88 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %91 = bitcast %struct._GObject* %90 to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %93 = bitcast %struct._GObject* %92 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %94 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %95 = bitcast %struct._GObject* %94 to i8*
  %call76 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDeviceInfo*)* @gimp_device_info_changed to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %info = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %2, %struct._GimpDeviceInfo** %info, align 8
  %3 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %3, i32 0, i32 5
  %4 = load i32*, i32** %axes, align 8
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %axes2 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %5, i32 0, i32 5
  %6 = load i32*, i32** %axes2, align 8
  %7 = bitcast i32* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %axes3 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %8, i32 0, i32 5
  store i32* null, i32** %axes3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %9, i32 0, i32 7
  %10 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys, align 8
  %tobool4 = icmp ne %struct._GdkDeviceKey* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %keys6 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %11, i32 0, i32 7
  %12 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys6, align 8
  %13 = bitcast %struct._GdkDeviceKey* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %keys7 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %14, i32 0, i32 7
  store %struct._GdkDeviceKey* null, %struct._GdkDeviceKey** %keys7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %15, i32 0, i32 8
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %tobool9 = icmp ne %struct._GimpCurve* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %pressure_curve11 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %17, i32 0, i32 8
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve11, align 8
  %19 = bitcast %struct._GimpCurve* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %pressure_curve12 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %20, i32 0, i32 8
  store %struct._GimpCurve* null, %struct._GimpCurve** %pressure_curve12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %21 = load i8*, i8** @gimp_device_info_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 80)
  %23 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 6
  %24 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %24(%struct._GObject* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %info = alloca %struct._GimpDeviceInfo*, align 8
  %device = alloca %struct._GdkDevice*, align 8
  %src_curve = alloca %struct._GimpCurve*, align 8
  %dest_curve = alloca %struct._GimpCurve*, align 8
  %array = alloca %struct._GValueArray*, align 8
  %i = alloca i32, align 4
  %n_device_values = alloca i32, align 4
  %axis_use = alloca i32, align 4
  %array28 = alloca %struct._GValueArray*, align 8
  %i32 = alloca i32, align 4
  %n_device_values33 = alloca i32, align 4
  %accel = alloca i8*, align 8
  %keyval = alloca i32, align 4
  %modifiers = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %2, %struct._GimpDeviceInfo** %info, align 8
  %3 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device2 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %3, i32 0, i32 1
  %4 = load %struct._GdkDevice*, %struct._GdkDevice** %device2, align 8
  store %struct._GdkDevice* %4, %struct._GdkDevice** %device, align 8
  store %struct._GimpCurve* null, %struct._GimpCurve** %src_curve, align 8
  store %struct._GimpCurve* null, %struct._GimpCurve** %dest_curve, align 8
  %5 = load i32, i32* %property_id.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.27
    i32 6, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_get_object(%struct._GValue* %6)
  %7 = bitcast i8* %call3 to %struct._GdkDevice*
  %8 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device4 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %8, i32 0, i32 1
  store %struct._GdkDevice* %7, %struct._GdkDevice** %device4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %9)
  %10 = bitcast i8* %call6 to %struct._GdkDisplay*
  %11 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %display = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %11, i32 0, i32 2
  store %struct._GdkDisplay* %10, %struct._GdkDisplay** %display, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_enum(%struct._GValue* %13)
  call void @gimp_device_info_set_mode(%struct._GimpDeviceInfo* %12, i32 %call8)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_boxed(%struct._GValue* %14)
  %15 = bitcast i8* %call10 to %struct._GValueArray*
  store %struct._GValueArray* %15, %struct._GValueArray** %array, align 8
  %16 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %tobool = icmp ne %struct._GValueArray* %16, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %sw.bb.9
  %17 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool11 = icmp ne %struct._GdkDevice* %17, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %18 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %18, i32 0, i32 0
  %19 = load i32, i32* %n_values, align 4
  %20 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %num_axes = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %20, i32 0, i32 5
  %21 = load i32, i32* %num_axes, align 4
  %cmp = icmp ult i32 %19, %21
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %22 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %n_values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %22, i32 0, i32 0
  %23 = load i32, i32* %n_values13, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %24 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %num_axes14 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %24, i32 0, i32 5
  %25 = load i32, i32* %num_axes14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %n_device_values, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %n_values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %26, i32 0, i32 0
  %27 = load i32, i32* %n_values15, align 4
  store i32 %27, i32* %n_device_values, align 4
  %28 = load i32, i32* %n_device_values, align 4
  %29 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %29, i32 0, i32 4
  store i32 %28, i32* %n_axes, align 4
  %30 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %axes = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %30, i32 0, i32 5
  %31 = load i32*, i32** %axes, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_axes16 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %33, i32 0, i32 4
  %34 = load i32, i32* %n_axes16, align 4
  %conv = sext i32 %34 to i64
  %call17 = call i8* @g_realloc_n(i8* %32, i64 %conv, i64 4)
  %35 = bitcast i8* %call17 to i32*
  %36 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %axes18 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %36, i32 0, i32 5
  store i32* %35, i32** %axes18, align 8
  %37 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %axes19 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %37, i32 0, i32 5
  %38 = load i32*, i32** %axes19, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_axes20 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %40, i32 0, i32 4
  %41 = load i32, i32* %n_axes20, align 4
  %conv21 = sext i32 %41 to i64
  %mul = mul i64 %conv21, 4
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n_device_values, align 4
  %cmp22 = icmp slt i32 %42, %43
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %45 = load i32, i32* %i, align 4
  %call24 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %44, i32 %45)
  %call25 = call i32 @g_value_get_enum(%struct._GValue* %call24)
  store i32 %call25, i32* %axis_use, align 4
  %46 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %axis_use, align 4
  call void @gimp_device_info_set_axis_use(%struct._GimpDeviceInfo* %46, i32 %47, i32 %48)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %sw.bb.9
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %50 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call29 = call i8* @g_value_get_boxed(%struct._GValue* %50)
  %51 = bitcast i8* %call29 to %struct._GValueArray*
  store %struct._GValueArray* %51, %struct._GValueArray** %array28, align 8
  %52 = load %struct._GValueArray*, %struct._GValueArray** %array28, align 8
  %tobool30 = icmp ne %struct._GValueArray* %52, null
  br i1 %tobool30, label %if.then.31, label %if.end.65

if.then.31:                                       ; preds = %sw.bb.27
  %53 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %tobool34 = icmp ne %struct._GdkDevice* %53, null
  br i1 %tobool34, label %if.then.35, label %if.else.45

if.then.35:                                       ; preds = %if.then.31
  %54 = load %struct._GValueArray*, %struct._GValueArray** %array28, align 8
  %n_values36 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %54, i32 0, i32 0
  %55 = load i32, i32* %n_values36, align 4
  %56 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %num_keys = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %56, i32 0, i32 7
  %57 = load i32, i32* %num_keys, align 4
  %cmp37 = icmp ult i32 %55, %57
  br i1 %cmp37, label %cond.true.39, label %cond.false.41

cond.true.39:                                     ; preds = %if.then.35
  %58 = load %struct._GValueArray*, %struct._GValueArray** %array28, align 8
  %n_values40 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %58, i32 0, i32 0
  %59 = load i32, i32* %n_values40, align 4
  br label %cond.end.43

cond.false.41:                                    ; preds = %if.then.35
  %60 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %num_keys42 = getelementptr inbounds %struct._GdkDevice, %struct._GdkDevice* %60, i32 0, i32 7
  %61 = load i32, i32* %num_keys42, align 4
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.39
  %cond44 = phi i32 [ %59, %cond.true.39 ], [ %61, %cond.false.41 ]
  store i32 %cond44, i32* %n_device_values33, align 4
  br label %if.end.55

if.else.45:                                       ; preds = %if.then.31
  %62 = load %struct._GValueArray*, %struct._GValueArray** %array28, align 8
  %n_values46 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %62, i32 0, i32 0
  %63 = load i32, i32* %n_values46, align 4
  store i32 %63, i32* %n_device_values33, align 4
  %64 = load i32, i32* %n_device_values33, align 4
  %65 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %65, i32 0, i32 6
  store i32 %64, i32* %n_keys, align 4
  %66 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %keys = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %66, i32 0, i32 7
  %67 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys, align 8
  %68 = bitcast %struct._GdkDeviceKey* %67 to i8*
  %69 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_keys47 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %69, i32 0, i32 6
  %70 = load i32, i32* %n_keys47, align 4
  %conv48 = sext i32 %70 to i64
  %call49 = call i8* @g_realloc_n(i8* %68, i64 %conv48, i64 8)
  %71 = bitcast i8* %call49 to %struct._GdkDeviceKey*
  %72 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %keys50 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %72, i32 0, i32 7
  store %struct._GdkDeviceKey* %71, %struct._GdkDeviceKey** %keys50, align 8
  %73 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %keys51 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %73, i32 0, i32 7
  %74 = load %struct._GdkDeviceKey*, %struct._GdkDeviceKey** %keys51, align 8
  %75 = bitcast %struct._GdkDeviceKey* %74 to i8*
  %76 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %n_keys52 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %76, i32 0, i32 6
  %77 = load i32, i32* %n_keys52, align 4
  %conv53 = sext i32 %77 to i64
  %mul54 = mul i64 %conv53, 8
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 %mul54, i32 4, i1 false)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.45, %cond.end.43
  store i32 0, i32* %i32, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.62, %if.end.55
  %78 = load i32, i32* %i32, align 4
  %79 = load i32, i32* %n_device_values33, align 4
  %cmp57 = icmp slt i32 %78, %79
  br i1 %cmp57, label %for.body.59, label %for.end.64

for.body.59:                                      ; preds = %for.cond.56
  %80 = load %struct._GValueArray*, %struct._GValueArray** %array28, align 8
  %81 = load i32, i32* %i32, align 4
  %call60 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %80, i32 %81)
  %call61 = call i8* @g_value_get_string(%struct._GValue* %call60)
  store i8* %call61, i8** %accel, align 8
  %82 = load i8*, i8** %accel, align 8
  call void @gtk_accelerator_parse(i8* %82, i32* %keyval, i32* %modifiers)
  %83 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %84 = load i32, i32* %i32, align 4
  %85 = load i32, i32* %keyval, align 4
  %86 = load i32, i32* %modifiers, align 4
  call void @gimp_device_info_set_key(%struct._GimpDeviceInfo* %83, i32 %84, i32 %85, i32 %86)
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.59
  %87 = load i32, i32* %i32, align 4
  %inc63 = add nsw i32 %87, 1
  store i32 %inc63, i32* %i32, align 4
  br label %for.cond.56

for.end.64:                                       ; preds = %for.cond.56
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %sw.bb.27
  br label %sw.epilog

sw.bb.66:                                         ; preds = %entry
  %88 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call67 = call i8* @g_value_get_object(%struct._GValue* %88)
  %89 = bitcast i8* %call67 to %struct._GimpCurve*
  store %struct._GimpCurve* %89, %struct._GimpCurve** %src_curve, align 8
  %90 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %90, i32 0, i32 8
  %91 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  store %struct._GimpCurve* %91, %struct._GimpCurve** %dest_curve, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %92 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %92, %struct._GObject** %_glib__object, align 8
  %93 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %93, %struct._GParamSpec** %_glib__pspec, align 8
  %94 = load i32, i32* %property_id.addr, align 4
  store i32 %94, i32* %_glib__property_id, align 4
  %95 = load i32, i32* %_glib__property_id, align 4
  %96 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %96, i32 0, i32 1
  %97 = load i8*, i8** %name, align 8
  %98 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %99 = bitcast %struct._GParamSpec* %98 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %100, i32 0, i32 0
  %101 = load i64, i64* %g_type, align 8
  %call68 = call i8* @g_type_name(i64 %101)
  %102 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %103 = bitcast %struct._GObject* %102 to %struct._GTypeInstance*
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %103, i32 0, i32 0
  %104 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %104, i32 0, i32 0
  %105 = load i64, i64* %g_type70, align 8
  %call71 = call i8* @g_type_name(i64 %105)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 365, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %95, i8* %97, i8* %call68, i8* %call71)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.66, %if.end.65, %if.end.26, %sw.bb.7, %sw.bb.5, %sw.bb
  %106 = load %struct._GimpCurve*, %struct._GimpCurve** %src_curve, align 8
  %tobool72 = icmp ne %struct._GimpCurve* %106, null
  br i1 %tobool72, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %sw.epilog
  %107 = load %struct._GimpCurve*, %struct._GimpCurve** %dest_curve, align 8
  %tobool73 = icmp ne %struct._GimpCurve* %107, null
  br i1 %tobool73, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %land.lhs.true
  %108 = load %struct._GimpCurve*, %struct._GimpCurve** %src_curve, align 8
  %109 = bitcast %struct._GimpCurve* %108 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_config_interface_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call75)
  %110 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpConfig*
  %111 = load %struct._GimpCurve*, %struct._GimpCurve** %dest_curve, align 8
  %112 = bitcast %struct._GimpCurve* %111 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_config_interface_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call77)
  %113 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpConfig*
  %call79 = call i32 @gimp_config_copy(%struct._GimpConfig* %110, %struct._GimpConfig* %113, i32 256)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %land.lhs.true, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %info = alloca %struct._GimpDeviceInfo*, align 8
  %array = alloca %struct._GValueArray*, align 8
  %enum_value = alloca %struct._GValue, align 8
  %n_axes = alloca i32, align 4
  %i = alloca i32, align 4
  %array13 = alloca %struct._GValueArray*, align 8
  %string_value = alloca %struct._GValue, align 8
  %n_keys = alloca i32, align 4
  %i14 = alloca i32, align 4
  %keyval = alloca i32, align 4
  %modifiers = alloca i32, align 4
  %accel = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_device_info_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %2, %struct._GimpDeviceInfo** %info, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %5, i32 0, i32 1
  %6 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %7 = bitcast %struct._GdkDevice* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %display = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %9, i32 0, i32 2
  %10 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %11 = bitcast %struct._GdkDisplay* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %call4 = call i32 @gimp_device_info_get_mode(%struct._GimpDeviceInfo* %13)
  call void @g_value_set_enum(%struct._GValue* %12, i32 %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %14 = bitcast %struct._GValue* %enum_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 24, i32 8, i1 false)
  %call6 = call %struct._GValueArray* @g_value_array_new(i32 6)
  store %struct._GValueArray* %call6, %struct._GValueArray** %array, align 8
  %call7 = call i64 @gdk_axis_use_get_type() #7
  %call8 = call %struct._GValue* @g_value_init(%struct._GValue* %enum_value, i64 %call7)
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %call9 = call i32 @gimp_device_info_get_n_axes(%struct._GimpDeviceInfo* %15)
  store i32 %call9, i32* %n_axes, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.5
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n_axes, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %19 = load i32, i32* %i, align 4
  %call10 = call i32 @gimp_device_info_get_axis_use(%struct._GimpDeviceInfo* %18, i32 %19)
  call void @g_value_set_enum(%struct._GValue* %enum_value, i32 %call10)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %call11 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %20, %struct._GValue* %enum_value)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @g_value_unset(%struct._GValue* %enum_value)
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %24 = bitcast %struct._GValueArray* %23 to i8*
  call void @g_value_take_boxed(%struct._GValue* %22, i8* %24)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %25 = bitcast %struct._GValue* %string_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 24, i32 8, i1 false)
  %call15 = call %struct._GValueArray* @g_value_array_new(i32 32)
  store %struct._GValueArray* %call15, %struct._GValueArray** %array13, align 8
  %call16 = call %struct._GValue* @g_value_init(%struct._GValue* %string_value, i64 64)
  %26 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %call17 = call i32 @gimp_device_info_get_n_keys(%struct._GimpDeviceInfo* %26)
  store i32 %call17, i32* %n_keys, align 4
  store i32 0, i32* %i14, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %sw.bb.12
  %27 = load i32, i32* %i14, align 4
  %28 = load i32, i32* %n_keys, align 4
  %cmp19 = icmp slt i32 %27, %28
  br i1 %cmp19, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.18
  %29 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %30 = load i32, i32* %i14, align 4
  call void @gimp_device_info_get_key(%struct._GimpDeviceInfo* %29, i32 %30, i32* %keyval, i32* %modifiers)
  %31 = load i32, i32* %keyval, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.20
  %32 = load i32, i32* %keyval, align 4
  %33 = load i32, i32* %modifiers, align 4
  %call21 = call i8* @gtk_accelerator_name(i32 %32, i32 %33)
  store i8* %call21, i8** %accel, align 8
  %34 = load i8*, i8** %accel, align 8
  %call22 = call noalias i8* @g_strescape(i8* %34, i8* null)
  store i8* %call22, i8** %escaped, align 8
  %35 = load i8*, i8** %accel, align 8
  call void @g_free(i8* %35)
  %36 = load i8*, i8** %escaped, align 8
  call void @g_value_set_string(%struct._GValue* %string_value, i8* %36)
  %37 = load i8*, i8** %escaped, align 8
  call void @g_free(i8* %37)
  br label %if.end

if.else:                                          ; preds = %for.body.20
  call void @g_value_set_string(%struct._GValue* %string_value, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load %struct._GValueArray*, %struct._GValueArray** %array13, align 8
  %call23 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %38, %struct._GValue* %string_value)
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %39 = load i32, i32* %i14, align 4
  %inc25 = add nsw i32 %39, 1
  store i32 %inc25, i32* %i14, align 4
  br label %for.cond.18

for.end.26:                                       ; preds = %for.cond.18
  call void @g_value_unset(%struct._GValue* %string_value)
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GValueArray*, %struct._GValueArray** %array13, align 8
  %42 = bitcast %struct._GValueArray* %41 to i8*
  call void @g_value_take_boxed(%struct._GValue* %40, i8* %42)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info, align 8
  %pressure_curve = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %44, i32 0, i32 8
  %45 = load %struct._GimpCurve*, %struct._GimpCurve** %pressure_curve, align 8
  %46 = bitcast %struct._GimpCurve* %45 to i8*
  call void @g_value_set_object(%struct._GValue* %43, i8* %46)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %47 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %47, %struct._GObject** %_glib__object, align 8
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %48, %struct._GParamSpec** %_glib__pspec, align 8
  %49 = load i32, i32* %property_id.addr, align 4
  store i32 %49, i32* %_glib__property_id, align 4
  %50 = load i32, i32* %_glib__property_id, align 4
  %51 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %51, i32 0, i32 1
  %52 = load i8*, i8** %name, align 8
  %53 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %54 = bitcast %struct._GParamSpec* %53 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type, align 8
  %call28 = call i8* @g_type_name(i64 %56)
  %57 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %58 = bitcast %struct._GObject* %57 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %58, i32 0, i32 0
  %59 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %59, i32 0, i32 0
  %60 = load i64, i64* %g_type30, align 8
  %call31 = call i8* @g_type_name(i64 %60)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 475, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %50, i8* %52, i8* %call28, i8* %call31)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.27, %for.end.26, %for.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_input_mode_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gdk_axis_use_get_type() #2

declare %struct._GParamSpec* @g_param_spec_value_array(i8*, i8*, i8*, %struct._GParamSpec*, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare void @gimp_context_define_properties(%struct._GimpContext*, i32, i32) #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_context_set_serialize_properties(%struct._GimpContext*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare %struct._GValue* @g_value_array_get_nth(%struct._GValueArray*, i32) #1

declare i8* @g_value_get_string(%struct._GValue*) #1

declare void @gtk_accelerator_parse(i8*, i32*, i32*) #1

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

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare %struct._GValueArray* @g_value_array_new(i32) #1

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

declare i8* @gtk_accelerator_name(i32, i32) #1

declare noalias i8* @g_strescape(i8*, i8*) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare %struct._GimpData* @gimp_curve_new(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_device_info_guess_icon(%struct._GimpDeviceInfo* %info) #3 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %stock_id = alloca i8*, align 8
  %down = alloca i8*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpDeviceInfo* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_viewable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpViewable*
  store %struct._GimpViewable* %2, %struct._GimpViewable** %viewable, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %4 = bitcast %struct._GimpViewable* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call3 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %5)
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %7 = bitcast %struct._GimpViewable* %6 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %9 = bitcast %struct._GTypeClass* %8 to %struct._GimpViewableClass*
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %9, i32 0, i32 1
  %10 = load i8*, i8** %default_stock_id, align 8
  %call4 = call i32 @strcmp(i8* %call3, i8* %10) #8
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.39, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %stock_id, align 8
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %12 = bitcast %struct._GimpViewable* %11 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %12)
  %call7 = call noalias i8* @g_ascii_strdown(i8* %call6, i64 -1)
  store i8* %call7, i8** %down, align 8
  %13 = load i8*, i8** %down, align 8
  %call8 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #8
  %tobool9 = icmp ne i8* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.then
  %14 = load i8*, i8** %down, align 8
  %call11 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end.34

if.else.14:                                       ; preds = %if.else
  %15 = load i8*, i8** %down, align 8
  %call15 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0)) #8
  %tobool16 = icmp ne i8* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.14
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end.33

if.else.18:                                       ; preds = %if.else.14
  %16 = load i8*, i8** %down, align 8
  %call19 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)) #8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.18
  %17 = load i8*, i8** %down, align 8
  %call21 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #8
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.then.32, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %18 = load i8*, i8** %down, align 8
  %call24 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0)) #8
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %if.then.32, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.23
  %19 = load i8*, i8** %down, align 8
  %call27 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0)) #8
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.26
  %20 = load i8*, i8** %down, align 8
  %call30 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #8
  %tobool31 = icmp ne i8* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false.26, %lor.lhs.false.23, %lor.lhs.false, %if.else.18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8** %stock_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.32, %lor.lhs.false.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.13
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.10
  %21 = load i8*, i8** %down, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %stock_id, align 8
  %tobool36 = icmp ne i8* %22, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %24 = load i8*, i8** %stock_id, align 8
  call void @gimp_viewable_set_stock_id(%struct._GimpViewable* %23, i8* %24)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true, %entry
  ret void
}

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

declare noalias i8* @g_ascii_strdown(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare void @gimp_viewable_set_stock_id(%struct._GimpViewable*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
