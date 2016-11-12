; ModuleID = './app/widgets/gimpdevices.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDeviceManager = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
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
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_devices_init = private unnamed_addr constant [18 x i8] c"gimp_devices_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gimp-device-manager\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"manager == NULL\00", align 1
@__func__.gimp_devices_exit = private unnamed_addr constant [18 x i8] c"gimp_devices_exit\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DEVICE_MANAGER (manager)\00", align 1
@__func__.gimp_devices_restore = private unnamed_addr constant [21 x i8] c"gimp_devices_restore\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"devicerc\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.gimp_devices_save = private unnamed_addr constant [18 x i8] c"gimp_devices_save\00", align 1
@devicerc_deleted = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GIMP devicerc\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"end of devicerc\00", align 1
@__func__.gimp_devices_clear = private unnamed_addr constant [19 x i8] c"gimp_devices_clear\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Deleting \22%s\22 failed: %s\00", align 1
@__func__.gimp_devices_get_manager = private unnamed_addr constant [25 x i8] c"gimp_devices_get_manager\00", align 1
@__func__.gimp_devices_add_widget = private unnamed_addr constant [24 x i8] c"gimp_devices_add_widget\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@__func__.gimp_devices_check_callback = private unnamed_addr constant [28 x i8] c"gimp_devices_check_callback\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"event != NULL\00", align 1
@__func__.gimp_devices_check_change = private unnamed_addr constant [26 x i8] c"gimp_devices_check_change\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_devices_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
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
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_devices_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GimpDeviceManager*
  store %struct._GimpDeviceManager* %16, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %17 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %cmp14 = icmp eq %struct._GimpDeviceManager* %17, null
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_devices_init, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call19 = call %struct._GimpDeviceManager* @gimp_device_manager_new(%struct._Gimp* %18)
  store %struct._GimpDeviceManager* %call19, %struct._GimpDeviceManager** %manager, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = bitcast %struct._Gimp* %19 to %struct._GTypeInstance*
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GObject*
  %22 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %23 = bitcast %struct._GimpDeviceManager* %22 to i8*
  call void @g_object_set_data_full(%struct._GObject* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* %23, void (i8*)* @g_object_unref)
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpDeviceManager* @gimp_device_manager_new(%struct._Gimp*) #3

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_devices_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_devices_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %13)
  store %struct._GimpDeviceManager* %call11, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %15 = bitcast %struct._GimpDeviceManager* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_device_manager_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_devices_exit, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %28 = bitcast %struct._Gimp* %27 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* null)
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpDeviceManager*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_devices_get_manager, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpDeviceManager* null, %struct._GimpDeviceManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GimpDeviceManager*
  store %struct._GimpDeviceManager* %16, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %17 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %18 = bitcast %struct._GimpDeviceManager* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_device_manager_get_type() #5
  store i64 %call18, i64* %__t17, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.13
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.body.13
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type28, align 8
  %25 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %24, %25
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %27 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #6
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %28 = load i32, i32* %__r20, align 4
  store i32 %28, i32* %tmp35
  %29 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_devices_get_manager, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpDeviceManager* null, %struct._GimpDeviceManager** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %30 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  store %struct._GimpDeviceManager* %30, %struct._GimpDeviceManager** %retval
  br label %return

return:                                           ; preds = %do.end.40, %if.else.38, %if.else.9
  %31 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %retval
  ret %struct._GimpDeviceManager* %31
}

; Function Attrs: nounwind readnone
declare i64 @gimp_device_manager_get_type() #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_devices_restore(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %current_device = alloca %struct._GimpDeviceInfo*, align 8
  %list = alloca %struct._GList*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %device_info = alloca %struct._GimpDeviceInfo*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_devices_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %13)
  store %struct._GimpDeviceManager* %call11, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %15 = bitcast %struct._GimpDeviceManager* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_device_manager_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_devices_restore, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call40 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %27)
  store %struct._GimpContext* %call40, %struct._GimpContext** %user_context, align 8
  %28 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %29 = bitcast %struct._GimpDeviceManager* %28 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_list_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call41)
  %30 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpList*
  %list43 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %list43, align 8
  store %struct._GList* %31, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.39
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool44 = icmp ne %struct._GList* %32, null
  br i1 %tobool44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  %35 = bitcast i8* %34 to %struct._GimpDeviceInfo*
  store %struct._GimpDeviceInfo* %35, %struct._GimpDeviceInfo** %device_info, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %37 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %38 = bitcast %struct._GimpDeviceInfo* %37 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_context_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call46)
  %39 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpContext*
  call void @gimp_context_copy_properties(%struct._GimpContext* %36, %struct._GimpContext* %39, i32 15600)
  %40 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  call void @gimp_device_info_set_default_tool(%struct._GimpDeviceInfo* %40)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool48 = icmp ne %struct._GList* %41, null
  br i1 %tobool48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call49 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call49, i8** %filename, align 8
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 4
  %45 = load i32, i32* %be_verbose, align 4
  %tobool50 = icmp ne i32 %45, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %for.end
  %46 = load i8*, i8** %filename, align 8
  %call52 = call i8* @gimp_filename_to_utf8(i8* %46)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %call52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %for.end
  %47 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %48 = bitcast %struct._GimpDeviceManager* %47 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_config_interface_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call54)
  %49 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpConfig*
  %50 = load i8*, i8** %filename, align 8
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %52 = bitcast %struct._Gimp* %51 to i8*
  %call56 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %49, i8* %50, i8* %52, %struct._GError** %error)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.62, label %if.then.58

if.then.58:                                       ; preds = %if.end.53
  %53 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %53, i32 0, i32 1
  %54 = load i32, i32* %code, align 4
  %cmp59 = icmp ne i32 %54, 1
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.58
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %56 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %56, i32 0, i32 2
  %57 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %55, %struct._GObject* null, i32 2, i8* %57)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.58
  %58 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %58)
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.53
  %59 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %59)
  %60 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %call63 = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %60)
  store %struct._GimpDeviceInfo* %call63, %struct._GimpDeviceInfo** %current_device, align 8
  %61 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %62 = bitcast %struct._GimpDeviceInfo* %61 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_context_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call64)
  %63 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpContext*
  %64 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  call void @gimp_context_copy_properties(%struct._GimpContext* %63, %struct._GimpContext* %64, i32 15600)
  %65 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %current_device, align 8
  %66 = bitcast %struct._GimpDeviceInfo* %65 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_context_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call66)
  %67 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpContext*
  %68 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %67, %struct._GimpContext* %68)
  br label %return

return:                                           ; preds = %if.end.62, %if.else.37, %if.else.9
  ret void
}

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare void @gimp_device_info_set_default_tool(%struct._GimpDeviceInfo*) #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_error_free(%struct._GError*) #3

declare void @g_free(i8*) #3

declare %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager*) #3

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #3

; Function Attrs: nounwind uwtable
define void @gimp_devices_save(%struct._Gimp* %gimp, i32 %always_save) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %always_save.addr = alloca i32, align 4
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %always_save, i32* %always_save.addr, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_devices_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %13)
  store %struct._GimpDeviceManager* %call11, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %15 = bitcast %struct._GimpDeviceManager* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_device_manager_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_devices_save, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load i32, i32* @devicerc_deleted, align 4
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.44

land.lhs.true.41:                                 ; preds = %do.end.39
  %28 = load i32, i32* %always_save.addr, align 4
  %tobool42 = icmp ne i32 %28, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.41, %do.end.39
  %call45 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call45, i8** %filename, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 4
  %30 = load i32, i32* %be_verbose, align 4
  %tobool46 = icmp ne i32 %30, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.44
  %31 = load i8*, i8** %filename, align 8
  %call48 = call i8* @gimp_filename_to_utf8(i8* %31)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.44
  %32 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %33 = bitcast %struct._GimpDeviceManager* %32 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_config_interface_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call50)
  %34 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpConfig*
  %35 = load i8*, i8** %filename, align 8
  %call52 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %34, i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, %struct._GError** %error)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.49
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %37 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %37, i32 0, i32 2
  %38 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %36, %struct._GObject* null, i32 2, i8* %38)
  %39 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %39)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.49
  %40 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %40)
  store i32 0, i32* @devicerc_deleted, align 4
  br label %return

return:                                           ; preds = %if.end.55, %if.then.43, %if.else.37, %if.else.9
  ret void
}

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_devices_clear(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_devices_clear, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %13)
  store %struct._GimpDeviceManager* %call11, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %15 = bitcast %struct._GimpDeviceManager* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_device_manager_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_devices_clear, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %call40 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call40, i8** %filename, align 8
  %27 = load i8*, i8** %filename, align 8
  %call41 = call i32 @g_unlink(i8* %27)
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true.43, label %if.else.54

land.lhs.true.43:                                 ; preds = %do.end.39
  %call44 = call i32* @__errno_location() #5
  %28 = load i32, i32* %call44, align 4
  %cmp45 = icmp ne i32 %28, 2
  br i1 %cmp45, label %if.then.46, label %if.else.54

if.then.46:                                       ; preds = %land.lhs.true.43
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call47 = call i32 @g_file_error_quark()
  %call48 = call i32* @__errno_location() #5
  %30 = load i32, i32* %call48, align 4
  %call49 = call i32 @g_file_error_from_errno(i32 %30)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #7
  %31 = load i8*, i8** %filename, align 8
  %call51 = call i8* @gimp_filename_to_utf8(i8* %31)
  %call52 = call i32* @__errno_location() #5
  %32 = load i32, i32* %call52, align 4
  %call53 = call i8* @g_strerror(i32 %32) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %29, i32 %call47, i32 %call49, i8* %call50, i8* %call51, i8* %call53)
  store i32 0, i32* %success, align 4
  br label %if.end.55

if.else.54:                                       ; preds = %land.lhs.true.43, %do.end.39
  store i32 1, i32* @devicerc_deleted, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.54, %if.then.46
  %33 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %33)
  %34 = load i32, i32* %success, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.else.37, %if.else.9
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @g_unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_file_error_quark() #3

declare i32 @g_file_error_from_errno(i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_devices_add_widget(%struct._Gimp* %gimp, %struct._GtkWidget* %widget) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_devices_add_widget, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_devices_add_widget, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_set_extension_events(%struct._GtkWidget* %26, i32 1)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %30 = bitcast %struct._Gimp* %29 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._Gimp*)* @gimp_devices_check_callback to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare void @gtk_widget_set_extension_events(%struct._GtkWidget*, i32) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_devices_check_callback(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %cmp = icmp ne %union._GdkEvent* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_devices_check_callback, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_devices_check_callback, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 16
  %15 = load i32, i32* %busy, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %do.end.16
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call19 = call i32 @gimp_devices_check_change(%struct._Gimp* %16, %union._GdkEvent* %17)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %do.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.14, %if.else
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_devices_check_change(%struct._Gimp* %gimp, %union._GdkEvent* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %manager = alloca %struct._GimpDeviceManager*, align 8
  %device = alloca %struct._GdkDevice*, align 8
  %device_info = alloca %struct._GimpDeviceInfo*, align 8
  %source = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_devices_check_change, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %cmp12 = icmp ne %union._GdkEvent* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_devices_check_change, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpDeviceManager* @gimp_devices_get_manager(%struct._Gimp* %14)
  store %struct._GimpDeviceManager* %call17, %struct._GimpDeviceManager** %manager, align 8
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.16
  %15 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %16 = bitcast %struct._GimpDeviceManager* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_device_manager_get_type() #5
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_devices_check_change, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %28 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call46 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %28)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %source, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %source, align 8
  %tobool47 = icmp ne %struct._GtkWidget* %29, null
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %do.end.45
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %source, align 8
  %call49 = call i32 @gtk_widget_get_extension_events(%struct._GtkWidget* %30)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.48, %do.end.45
  %31 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %31 to i32*
  %32 = load i32, i32* %type, align 4
  switch i32 %32, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.54
    i32 5, label %sw.bb.54
    i32 6, label %sw.bb.54
    i32 7, label %sw.bb.54
    i32 20, label %sw.bb.56
    i32 21, label %sw.bb.56
    i32 31, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.end.52
  %33 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %34 = bitcast %union._GdkEvent* %33 to %struct._GdkEventMotion*
  %device53 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %34, i32 0, i32 9
  %35 = load %struct._GdkDevice*, %struct._GdkDevice** %device53, align 8
  store %struct._GdkDevice* %35, %struct._GdkDevice** %device, align 8
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end.52, %if.end.52, %if.end.52, %if.end.52
  %36 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %37 = bitcast %union._GdkEvent* %36 to %struct._GdkEventButton*
  %device55 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %37, i32 0, i32 9
  %38 = load %struct._GdkDevice*, %struct._GdkDevice** %device55, align 8
  store %struct._GdkDevice* %38, %struct._GdkDevice** %device, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.52, %if.end.52
  %39 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %40 = bitcast %union._GdkEvent* %39 to %struct._GdkEventProximity*
  %device57 = getelementptr inbounds %struct._GdkEventProximity, %struct._GdkEventProximity* %40, i32 0, i32 4
  %41 = load %struct._GdkDevice*, %struct._GdkDevice** %device57, align 8
  store %struct._GdkDevice* %41, %struct._GdkDevice** %device, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.52
  %42 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %43 = bitcast %union._GdkEvent* %42 to %struct._GdkEventScroll*
  %device59 = getelementptr inbounds %struct._GdkEventScroll, %struct._GdkEventScroll* %43, i32 0, i32 8
  %44 = load %struct._GdkDevice*, %struct._GdkDevice** %device59, align 8
  store %struct._GdkDevice* %44, %struct._GdkDevice** %device, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.52
  %45 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %call60 = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %45)
  %device61 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %call60, i32 0, i32 1
  %46 = load %struct._GdkDevice*, %struct._GdkDevice** %device61, align 8
  store %struct._GdkDevice* %46, %struct._GdkDevice** %device, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb
  %47 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %call62 = call %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice* %47)
  store %struct._GimpDeviceInfo* %call62, %struct._GimpDeviceInfo** %device_info, align 8
  %48 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  %49 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %call63 = call %struct._GimpDeviceInfo* @gimp_device_manager_get_current_device(%struct._GimpDeviceManager* %49)
  %cmp64 = icmp ne %struct._GimpDeviceInfo* %48, %call63
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.epilog
  %50 = load %struct._GimpDeviceManager*, %struct._GimpDeviceManager** %manager, align 8
  %51 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %device_info, align 8
  call void @gimp_device_manager_set_current_device(%struct._GimpDeviceManager* %50, %struct._GimpDeviceInfo* %51)
  store i32 1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.65, %if.then.51, %if.else.43, %if.else.14, %if.else.9
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #3

declare i32 @gtk_widget_get_extension_events(%struct._GtkWidget*) #3

declare %struct._GimpDeviceInfo* @gimp_device_info_get_by_device(%struct._GdkDevice*) #3

declare void @gimp_device_manager_set_current_device(%struct._GimpDeviceManager*, %struct._GimpDeviceInfo*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
