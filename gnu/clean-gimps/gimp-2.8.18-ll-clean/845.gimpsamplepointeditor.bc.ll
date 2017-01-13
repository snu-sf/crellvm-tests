; ModuleID = './app/widgets/gimpsamplepointeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSamplePointEditorClass = type { %struct._GimpImageEditorClass }
%struct._GimpImageEditorClass = type { %struct._GimpEditorClass, void (%struct._GimpImageEditor*, %struct._GimpImage*)* }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventProperty = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i32, i32 }
%struct._GdkAtom = type opaque
%struct._GdkEventSelection = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32 }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.0 }
%union.anon.0 = type { [5 x i64] }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpSamplePointEditor = type { %struct._GimpImageEditor, %struct._GtkWidget*, [4 x %struct._GtkWidget*], [4 x i32], i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpProjection = type opaque
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpColorFrame = type { %struct._GimpFrame, i32, i32, %struct._GimpRGB, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, [5 x %struct._GtkWidget*], [5 x %struct._GtkWidget*], %struct._PangoLayout* }
%struct._GimpFrame = type { %struct._GtkFrame }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpRGB = type { double, double, double, double }
%struct._PangoLayout = type opaque
%struct._GimpDrawable = type opaque

@gimp_sample_point_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpSamplePointEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_sample_point_editor_new = private unnamed_addr constant [29 x i8] c"gimp_sample_point_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"<SamplePoints>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ui-path\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"/sample-points-popup\00", align 1
@__func__.gimp_sample_point_editor_set_sample_merged = private unnamed_addr constant [43 x i8] c"gimp_sample_point_editor_set_sample_merged\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"GIMP_IS_SAMPLE_POINT_EDITOR (editor)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"sample-merged\00", align 1
@__func__.gimp_sample_point_editor_get_sample_merged = private unnamed_addr constant [43 x i8] c"gimp_sample_point_editor_get_sample_merged\00", align 1
@gimp_sample_point_editor_parent_class = internal global i8* null, align 8
@GimpSamplePointEditor_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"gimpsamplepointeditor.c\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"content-spacing\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"sample-point-added\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"sample-point-removed\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"sample-point-moved\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"has-number\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"has-color-area\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_sample_point_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_sample_point_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_sample_point_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_editor_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 832, void (i8*, i8*)* bitcast (void (i8*)* @gimp_sample_point_editor_class_intern_init to void (i8*, i8*)*), i32 216, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_sample_point_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_sample_point_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_sample_point_editor_parent_class, align 8
  %1 = load i32, i32* @GimpSamplePointEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSamplePointEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSamplePointEditorClass*
  call void @gimp_sample_point_editor_class_init(%struct._GimpSamplePointEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_init(%struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %content_spacing = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %column = alloca i32, align 4
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  store i32 0, i32* %row, align 4
  store i32 0, i32* %column, align 4
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %0, i32 0, i32 5
  store i32 1, i32* %sample_merged, align 4
  %1 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpSamplePointEditor* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32* %content_spacing, i8* null)
  %call2 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 1)
  %4 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %table = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %4, i32 0, i32 1
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %table, align 8
  %5 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %table3 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table3, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  %9 = load i32, i32* %content_spacing, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %8, i32 0, i32 %9)
  %10 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %table6 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table6, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  %14 = load i32, i32* %content_spacing, align 4
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %13, i32 0, i32 %14)
  %15 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpSamplePointEditor* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %18 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %table11 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table11, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %table12 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %20, i32 0, i32 1
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %22, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call13 = call i64 @gimp_color_frame_get_type() #6
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  %call14 = call i8* (i64, i8*, ...) @g_object_new(i64 %call13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %add, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i8* null)
  %24 = bitcast i8* %call14 to %struct._GtkWidget*
  store %struct._GtkWidget* %24, %struct._GtkWidget** %frame, align 8
  %25 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %table15 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table15, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %30 = load i32, i32* %column, align 4
  %31 = load i32, i32* %column, align 4
  %add18 = add nsw i32 %31, 1
  %32 = load i32, i32* %row, align 4
  %33 = load i32, i32* %row, align 4
  %add19 = add nsw i32 %33, 1
  call void @gtk_table_attach(%struct._GtkTable* %28, %struct._GtkWidget* %29, i32 %30, i32 %add18, i32 %32, i32 %add19, i32 5, i32 5, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %color_frames = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %37, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %color_frames, i32 0, i64 %idxprom
  store %struct._GtkWidget* %35, %struct._GtkWidget** %arrayidx, align 8
  %38 = load i32, i32* %column, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %column, align 4
  %39 = load i32, i32* %column, align 4
  %cmp20 = icmp sgt i32 %39, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %column, align 4
  %40 = load i32, i32* %row, align 4
  %inc21 = add nsw i32 %40, 1
  store i32 %inc21, i32* %row, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %41, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_sample_point_editor_new(%struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_sample_point_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_sample_point_editor_get_type() #6
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._GimpMenuFactory* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_sample_point_editor_set_sample_merged(%struct._GimpSamplePointEditor* %editor, i32 %sample_merged) #3 {
entry:
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %sample_merged.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSamplePointEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_sample_point_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_sample_point_editor_set_sample_merged, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %sample_merged.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %sample_merged.addr, align 4
  %14 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %sample_merged12 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %14, i32 0, i32 5
  %15 = load i32, i32* %sample_merged12, align 4
  %16 = load i32, i32* %sample_merged.addr, align 4
  %cmp13 = icmp ne i32 %15, %16
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %do.end
  %17 = load i32, i32* %sample_merged.addr, align 4
  %18 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %sample_merged16 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %18, i32 0, i32 5
  store i32 %17, i32* %sample_merged16, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %19 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %19, 4
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %21, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dirty, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  call void @gimp_sample_point_editor_dirty(%struct._GimpSamplePointEditor* %23, i32 -1)
  %24 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %25 = bitcast %struct._GimpSamplePointEditor* %24 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %for.end, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_dirty(%struct._GimpSamplePointEditor* %editor, i32 %index) #3 {
entry:
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %index.addr = alloca i32, align 4
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dirty, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty_idle_id = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %3, i32 0, i32 4
  %4 = load i32, i32* %dirty_idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty_idle_id2 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %5, i32 0, i32 4
  %6 = load i32, i32* %dirty_idle_id2, align 4
  %call = call i32 @g_source_remove(i32 %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %7 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpSamplePointEditor* %7 to i8*
  %call4 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_update to i32 (i8*)*), i8* %8)
  %9 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty_idle_id5 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %9, i32 0, i32 4
  store i32 %call4, i32* %dirty_idle_id5, align 4
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_sample_point_editor_get_sample_merged(%struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSamplePointEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_sample_point_editor_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_sample_point_editor_get_sample_merged, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %13, i32 0, i32 5
  %14 = load i32, i32* %sample_merged, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_class_init(%struct._GimpSamplePointEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSamplePointEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %image_editor_class = alloca %struct._GimpImageEditorClass*, align 8
  store %struct._GimpSamplePointEditorClass* %klass, %struct._GimpSamplePointEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpSamplePointEditorClass*, %struct._GimpSamplePointEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSamplePointEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSamplePointEditorClass*, %struct._GimpSamplePointEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSamplePointEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpSamplePointEditorClass*, %struct._GimpSamplePointEditorClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSamplePointEditorClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_image_editor_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpImageEditorClass*
  store %struct._GimpImageEditorClass* %8, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_sample_point_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_sample_point_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_sample_point_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_sample_point_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_sample_point_editor_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %14 = load %struct._GimpImageEditorClass*, %struct._GimpImageEditorClass** %image_editor_class, align 8
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %14, i32 0, i32 1
  store void (%struct._GimpImageEditor*, %struct._GimpImage*)* @gimp_sample_point_editor_set_image, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 1, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 1, %struct._GParamSpec* %call5)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_sample_point_editor_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_sample_point_editor_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpSamplePointEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointEditor*
  store %struct._GimpSamplePointEditor* %2, %struct._GimpSamplePointEditor** %editor, align 8
  %3 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %dirty_idle_id = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %3, i32 0, i32 4
  %4 = load i32, i32* %dirty_idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %dirty_idle_id2 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %5, i32 0, i32 4
  %6 = load i32, i32* %dirty_idle_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %dirty_idle_id4 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %7, i32 0, i32 4
  store i32 0, i32* %dirty_idle_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_sample_point_editor_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpSamplePointEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointEditor*
  store %struct._GimpSamplePointEditor* %2, %struct._GimpSamplePointEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %5, i32 0, i32 5
  %6 = load i32, i32* %sample_merged, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpSamplePointEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointEditor*
  store %struct._GimpSamplePointEditor* %2, %struct._GimpSamplePointEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %5)
  call void @gimp_sample_point_editor_set_sample_merged(%struct._GimpSamplePointEditor* %4, i32 %call2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %editor = alloca %struct._GimpSamplePointEditor*, align 8
  %content_spacing = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointEditor*
  store %struct._GimpSamplePointEditor* %2, %struct._GimpSamplePointEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_sample_point_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i32* %content_spacing, i8* null)
  %10 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %table = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  %14 = load i32, i32* %content_spacing, align 4
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %13, i32 0, i32 %14)
  %15 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %table6 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table6, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call7)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  %19 = load i32, i32* %content_spacing, align 4
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %18, i32 0, i32 %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_set_image(%struct._GimpImageEditor* %image_editor, %struct._GimpImage* %image) #3 {
entry:
  %image_editor.addr = alloca %struct._GimpImageEditor*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %editor = alloca %struct._GimpSamplePointEditor*, align 8
  store %struct._GimpImageEditor* %image_editor, %struct._GimpImageEditor** %image_editor.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %1 = bitcast %struct._GimpImageEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sample_point_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSamplePointEditor*
  store %struct._GimpSamplePointEditor* %2, %struct._GimpSamplePointEditor** %editor, align 8
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image3 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image3, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  %8 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %9 = bitcast %struct._GimpSamplePointEditor* %8 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_point_added to i8*), i8* %9)
  %10 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image5 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %10, i32 0, i32 2
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %12 = bitcast %struct._GimpImage* %11 to i8*
  %13 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %14 = bitcast %struct._GimpSamplePointEditor* %13 to i8*
  %call6 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_point_removed to i8*), i8* %14)
  %15 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image7 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image7, align 8
  %17 = bitcast %struct._GimpImage* %16 to i8*
  %18 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %19 = bitcast %struct._GimpSamplePointEditor* %18 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_point_moved to i8*), i8* %19)
  %20 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %image9 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %20, i32 0, i32 2
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image9, align 8
  %call10 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %21)
  %22 = bitcast %struct._GimpProjection* %call10 to i8*
  %23 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %24 = bitcast %struct._GimpSamplePointEditor* %23 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, i32, i32, i32, i32, i32, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_proj_update to i8*), i8* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load i8*, i8** @gimp_sample_point_editor_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call12 = call i64 @gimp_image_editor_get_type() #6
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call12)
  %27 = bitcast %struct._GTypeClass* %call13 to %struct._GimpImageEditorClass*
  %set_image = getelementptr inbounds %struct._GimpImageEditorClass, %struct._GimpImageEditorClass* %27, i32 0, i32 1
  %28 = load void (%struct._GimpImageEditor*, %struct._GimpImage*)*, void (%struct._GimpImageEditor*, %struct._GimpImage*)** %set_image, align 8
  %29 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor.addr, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %28(%struct._GimpImageEditor* %29, %struct._GimpImage* %30)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool14 = icmp ne %struct._GimpImage* %31, null
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %33 = bitcast %struct._GimpImage* %32 to i8*
  %34 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %35 = bitcast %struct._GimpSamplePointEditor* %34 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_point_added to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %37 = bitcast %struct._GimpImage* %36 to i8*
  %38 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %39 = bitcast %struct._GimpSamplePointEditor* %38 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_point_removed to void ()*), i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %41 = bitcast %struct._GimpImage* %40 to i8*
  %42 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %43 = bitcast %struct._GimpSamplePointEditor* %42 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpSamplePoint*, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_point_moved to void ()*), i8* %43, void (i8*, %struct._GClosure*)* null, i32 0)
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call19 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %44)
  %45 = bitcast %struct._GimpProjection* %call19 to i8*
  %46 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  %47 = bitcast %struct._GimpSamplePointEditor* %46 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, i32, i32, i32, i32, %struct._GimpSamplePointEditor*)* @gimp_sample_point_editor_proj_update to void ()*), i8* %47, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.end
  %48 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor, align 8
  call void @gimp_sample_point_editor_points_changed(%struct._GimpSamplePointEditor* %48)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare i32 @g_source_remove(i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_point_added(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  call void @gimp_sample_point_editor_points_changed(%struct._GimpSamplePointEditor* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_point_removed(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  call void @gimp_sample_point_editor_points_changed(%struct._GimpSamplePointEditor* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_point_moved(%struct._GimpImage* %image, %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %i = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %0)
  %1 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %2 = bitcast %struct._GimpSamplePoint* %1 to i8*
  %call1 = call i32 @g_list_index(%struct._GList* %call, i8* %2)
  store i32 %call1, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %5 = load i32, i32* %i, align 4
  call void @gimp_sample_point_editor_dirty(%struct._GimpSamplePointEditor* %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_proj_update(%struct._GimpImage* %image, i32 %now, i32 %x, i32 %y, i32 %width, i32 %height, %struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %now.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %image_editor = alloca %struct._GimpImageEditor*, align 8
  %sample_points = alloca %struct._GList*, align 8
  %n_points = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSamplePointEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %image_editor, align 8
  store i32 0, i32* %n_points, align 4
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %call3 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %4)
  store %struct._GList* %call3, %struct._GList** %sample_points, align 8
  %5 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %5)
  %cmp = icmp ult i32 4, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call5 = call i32 @g_list_length(%struct._GList* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %n_points, align 4
  store i32 0, i32* %i, align 4
  %7 = load %struct._GList*, %struct._GList** %sample_points, align 8
  store %struct._GList* %7, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.20, %cond.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n_points, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %12, %struct._GimpSamplePoint** %sample_point, align 8
  %13 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x7 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %13, i32 0, i32 2
  %14 = load i32, i32* %x7, align 4
  %15 = load i32, i32* %x.addr, align 4
  %cmp8 = icmp sge i32 %14, %15
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %16 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x9 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %16, i32 0, i32 2
  %17 = load i32, i32* %x9, align 4
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %18, %19
  %cmp10 = icmp slt i32 %17, %add
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %20 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y12 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %20, i32 0, i32 3
  %21 = load i32, i32* %y12, align 4
  %22 = load i32, i32* %y.addr, align 4
  %cmp13 = icmp sge i32 %21, %22
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %23 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y15 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %23, i32 0, i32 3
  %24 = load i32, i32* %y15, align 4
  %25 = load i32, i32* %y.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  %add16 = add nsw i32 %25, %26
  %cmp17 = icmp slt i32 %24, %add16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.14
  %27 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %28 = load i32, i32* %i, align 4
  call void @gimp_sample_point_editor_dirty(%struct._GimpSamplePointEditor* %27, i32 %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %30, null
  br i1 %tobool, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %for.inc
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 1
  %32 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.20

cond.false.19:                                    ; preds = %for.inc
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi %struct._GList* [ %32, %cond.true.18 ], [ null, %cond.false.19 ]
  store %struct._GList* %cond21, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sample_point_editor_points_changed(%struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %image_editor = alloca %struct._GimpImageEditor*, align 8
  %sample_points = alloca %struct._GList*, align 8
  %n_points = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSamplePointEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %image_editor, align 8
  store i32 0, i32* %n_points, align 4
  %3 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %call3 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %6)
  store %struct._GList* %call3, %struct._GList** %sample_points, align 8
  %7 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %7)
  %cmp = icmp ult i32 4, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call5 = call i32 @g_list_length(%struct._GList* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %n_points, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_points, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %color_frames = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %color_frames, i32 0, i64 %idxprom
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 1)
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %15, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %dirty, i32 0, i64 %idxprom7
  store i32 1, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %n_points, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.23, %for.end
  %18 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %18, 4
  br i1 %cmp10, label %for.body.11, label %for.end.25

for.body.11:                                      ; preds = %for.cond.9
  %19 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %color_frames13 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %20, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %color_frames13, i32 0, i64 %idxprom12
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx14, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %21, i32 0)
  %22 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %23 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %color_frames16 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %23, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %color_frames16, i32 0, i64 %idxprom15
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx17, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_color_frame_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call18)
  %26 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpColorFrame*
  call void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty21 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %28, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %dirty21, i32 0, i64 %idxprom20
  store i32 0, i32* %arrayidx22, align 4
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.11
  %29 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.9

for.end.25:                                       ; preds = %for.cond.9
  %30 = load i32, i32* %n_points, align 4
  %cmp26 = icmp sgt i32 %30, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.end.25
  %31 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  call void @gimp_sample_point_editor_dirty(%struct._GimpSamplePointEditor* %31, i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.end.25
  ret void
}

declare i32 @g_list_index(%struct._GList*, i8*) #1

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_color_frame_set_invalid(%struct._GimpColorFrame*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_frame_get_type() #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_sample_point_editor_update(%struct._GimpSamplePointEditor* %editor) #3 {
entry:
  %retval = alloca i32, align 4
  %editor.addr = alloca %struct._GimpSamplePointEditor*, align 8
  %image_editor = alloca %struct._GimpImageEditor*, align 8
  %sample_points = alloca %struct._GList*, align 8
  %n_points = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %color_frame = alloca %struct._GimpColorFrame*, align 8
  %image_type = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %color_index = alloca i32, align 4
  store %struct._GimpSamplePointEditor* %editor, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %0 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpSamplePointEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageEditor*
  store %struct._GimpImageEditor* %2, %struct._GimpImageEditor** %image_editor, align 8
  store i32 0, i32* %n_points, align 4
  %3 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty_idle_id = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %3, i32 0, i32 4
  store i32 0, i32* %dirty_idle_id, align 4
  %4 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %4, i32 0, i32 2
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image2 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %call3 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %7)
  store %struct._GList* %call3, %struct._GList** %sample_points, align 8
  %8 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call4 = call i32 @g_list_length(%struct._GList* %8)
  %cmp = icmp ult i32 4, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %sample_points, align 8
  %call5 = call i32 @g_list_length(%struct._GList* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %call5, %cond.false ]
  store i32 %cond, i32* %n_points, align 4
  store i32 0, i32* %i, align 4
  %10 = load %struct._GList*, %struct._GList** %sample_points, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.25, %cond.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n_points, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %14, i32 0, i32 3
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dirty, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %for.body
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %18, %struct._GimpSamplePoint** %sample_point, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %dirty10 = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %20, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %dirty10, i32 0, i64 %idxprom9
  store i32 0, i32* %arrayidx11, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %color_frames = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %22, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [4 x %struct._GtkWidget*], [4 x %struct._GtkWidget*]* %color_frames, i32 0, i64 %idxprom12
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx13, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_color_frame_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpColorFrame*
  store %struct._GimpColorFrame* %25, %struct._GimpColorFrame** %color_frame, align 8
  %26 = load %struct._GimpImageEditor*, %struct._GimpImageEditor** %image_editor, align 8
  %image16 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %26, i32 0, i32 2
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image16, align 8
  %28 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %28, i32 0, i32 2
  %29 = load i32, i32* %x, align 4
  %30 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %30, i32 0, i32 3
  %31 = load i32, i32* %y, align 4
  %32 = load %struct._GimpSamplePointEditor*, %struct._GimpSamplePointEditor** %editor.addr, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSamplePointEditor, %struct._GimpSamplePointEditor* %32, i32 0, i32 5
  %33 = load i32, i32* %sample_merged, align 4
  %call17 = call i32 @gimp_image_pick_color(%struct._GimpImage* %27, %struct._GimpDrawable* null, i32 %29, i32 %31, i32 %33, i32 0, double 0.000000e+00, i32* %image_type, %struct._GimpRGB* %color, i32* %color_index)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.8
  %34 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %color_frame, align 8
  %35 = load i32, i32* %image_type, align 4
  %36 = load i32, i32* %color_index, align 4
  call void @gimp_color_frame_set_color(%struct._GimpColorFrame* %34, i32 %35, %struct._GimpRGB* %color, i32 %36)
  br label %if.end.20

if.else:                                          ; preds = %if.then.8
  %37 = load %struct._GimpColorFrame*, %struct._GimpColorFrame** %color_frame, align 8
  call void @gimp_color_frame_set_invalid(%struct._GimpColorFrame* %37)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %39, null
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %for.inc
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.inc
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi %struct._GList* [ %41, %cond.true.23 ], [ null, %cond.false.24 ]
  store %struct._GList* %cond26, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @gimp_image_pick_color(%struct._GimpImage*, %struct._GimpDrawable*, i32, i32, i32, i32, double, i32*, %struct._GimpRGB*, i32*) #1

declare void @gimp_color_frame_set_color(%struct._GimpColorFrame*, i32, %struct._GimpRGB*, i32) #1

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
