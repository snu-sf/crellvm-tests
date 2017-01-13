; ModuleID = './app/widgets/gimpcolorpanel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorPanelClass = type { %struct._GimpColorButtonClass }
%struct._GimpColorButtonClass = type { %struct._GimpButtonClass, void (%struct._GimpColorButton*)*, i64 (%struct._GimpColorButton*)*, void ()*, void ()*, void ()* }
%struct._GimpButtonClass = type { %struct._GtkButtonClass, void (%struct._GimpButton*, i32)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkButtonClass = type { %struct._GtkBinClass, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void (%struct._GtkButton*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
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
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpColorPanel = type { %struct._GimpColorButton, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
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
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpDialogFactory = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpColorDialog = type { %struct._GimpViewableDialog, i32, %struct._GtkWidget*, [12 x %struct._GtkWidget*] }
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }

@gimp_color_panel_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpColorPanel\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_color_panel_new = private unnamed_addr constant [21 x i8] c"gimp_color_panel_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"area-width\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"area-height\00", align 1
@__func__.gimp_color_panel_set_context = private unnamed_addr constant [29 x i8] c"gimp_color_panel_set_context\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"GIMP_IS_COLOR_PANEL (panel)\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@gimp_color_panel_parent_class = internal global i8* null, align 8
@GimpColorPanel_private_offset = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"color-button-use-foreground\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"color-button-use-background\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"color-button-use-black\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"color-button-use-white\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_panel_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_panel_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_panel_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_color_button_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 984, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_panel_class_intern_init to void (i8*, i8*)*), i32 208, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorPanel*)* @gimp_color_panel_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_panel_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_color_panel_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_panel_parent_class, align 8
  %1 = load i32, i32* @GimpColorPanel_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorPanel_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorPanelClass*
  call void @gimp_color_panel_class_init(%struct._GimpColorPanelClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_init(%struct._GimpColorPanel* %panel) #3 {
entry:
  %panel.addr = alloca %struct._GimpColorPanel*, align 8
  store %struct._GimpColorPanel* %panel, %struct._GimpColorPanel** %panel.addr, align 8
  %0 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel.addr, align 8
  %context = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %0, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %1, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_color_panel_new(i8* %title, %struct._GimpRGB* %color, i32 %type, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i8* %title, i8** %title.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %title.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_color_panel_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_color_panel_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp sgt i32 %2, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_color_panel_new, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %3 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_color_panel_new, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %call = call i64 @gimp_color_panel_get_type() #5
  %4 = load i8*, i8** %title.addr, align 8
  %5 = load i32, i32* %type.addr, align 4
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  %call19 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %8, i8* null)
  %9 = bitcast i8* %call19 to %struct._GtkWidget*
  store %struct._GtkWidget* %9, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.10, %if.else.4, %if.else
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %10
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_color_panel_set_context(%struct._GimpColorPanel* %panel, %struct._GimpContext* %context) #3 {
entry:
  %panel.addr = alloca %struct._GimpColorPanel*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpColorPanel* %panel, %struct._GimpColorPanel** %panel.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel.addr, align 8
  %1 = bitcast %struct._GimpColorPanel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_color_panel_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_panel_set_context, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
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

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_color_panel_set_context, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel.addr, align 8
  %context40 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %28, i32 0, i32 1
  store %struct._GimpContext* %27, %struct._GimpContext** %context40, align 8
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_class_init(%struct._GimpColorPanelClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpColorPanelClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %button_class = alloca %struct._GtkButtonClass*, align 8
  %color_button_class = alloca %struct._GimpColorButtonClass*, align 8
  store %struct._GimpColorPanelClass* %klass, %struct._GimpColorPanelClass** %klass.addr, align 8
  %0 = load %struct._GimpColorPanelClass*, %struct._GimpColorPanelClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorPanelClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpColorPanelClass*, %struct._GimpColorPanelClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpColorPanelClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpColorPanelClass*, %struct._GimpColorPanelClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpColorPanelClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_button_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkButtonClass*
  store %struct._GtkButtonClass* %8, %struct._GtkButtonClass** %button_class, align 8
  %9 = load %struct._GimpColorPanelClass*, %struct._GimpColorPanelClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpColorPanelClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_color_button_get_type() #5
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpColorButtonClass*
  store %struct._GimpColorButtonClass* %11, %struct._GimpColorButtonClass** %color_button_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_color_panel_dispose, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 25
  store i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_color_panel_button_press, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %14 = load %struct._GtkButtonClass*, %struct._GtkButtonClass** %button_class, align 8
  %clicked = getelementptr inbounds %struct._GtkButtonClass, %struct._GtkButtonClass* %14, i32 0, i32 3
  store void (%struct._GtkButton*)* @gimp_color_panel_clicked, void (%struct._GtkButton*)** %clicked, align 8
  %15 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %color_button_class, align 8
  %color_changed = getelementptr inbounds %struct._GimpColorButtonClass, %struct._GimpColorButtonClass* %15, i32 0, i32 1
  store void (%struct._GimpColorButton*)* @gimp_color_panel_color_changed, void (%struct._GimpColorButton*)** %color_changed, align 8
  %16 = load %struct._GimpColorButtonClass*, %struct._GimpColorButtonClass** %color_button_class, align 8
  %get_action_type = getelementptr inbounds %struct._GimpColorButtonClass, %struct._GimpColorButtonClass* %16, i32 0, i32 2
  store i64 (%struct._GimpColorButton*)* @gimp_color_panel_get_action_type, i64 (%struct._GimpColorButton*)** %get_action_type, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %panel = alloca %struct._GimpColorPanel*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_panel_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorPanel*
  store %struct._GimpColorPanel* %2, %struct._GimpColorPanel** %panel, align 8
  %3 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog2 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog2, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %6)
  %7 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog3 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %7, i32 0, i32 2
  store %struct._GtkWidget* null, %struct._GtkWidget** %color_dialog3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_color_panel_parent_class, align 8
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
define internal i32 @gimp_color_panel_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %color_button = alloca %struct._GimpColorButton*, align 8
  %color_panel = alloca %struct._GimpColorPanel*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %1 = bitcast %struct._GdkEventButton* %0 to %union._GdkEvent*
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_color_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorButton*
  store %struct._GimpColorButton* %4, %struct._GimpColorButton** %color_button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_panel_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorPanel*
  store %struct._GimpColorPanel* %7, %struct._GimpColorPanel** %color_panel, align 8
  %8 = load %struct._GimpColorButton*, %struct._GimpColorButton** %color_button, align 8
  %popup_menu = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %8, i32 0, i32 5
  %9 = load i8*, i8** %popup_menu, align 8
  %10 = bitcast i8* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_ui_manager_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkUIManager*
  store %struct._GtkUIManager* %11, %struct._GtkUIManager** %ui_manager, align 8
  %12 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call7 = call %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager* %12)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call7, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GtkActionGroup*
  store %struct._GtkActionGroup* %14, %struct._GtkActionGroup** %group, align 8
  %15 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %call8 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkAction* %call8, %struct._GtkAction** %action, align 8
  %16 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %17 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %color_panel, align 8
  %context = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %17, i32 0, i32 1
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %cmp = icmp ne %struct._GimpContext* %18, null
  %conv = zext i1 %cmp to i32
  call void @gtk_action_set_visible(%struct._GtkAction* %16, i32 %conv)
  %19 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %call9 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkAction* %call9, %struct._GtkAction** %action, align 8
  %20 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %21 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %color_panel, align 8
  %context10 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %21, i32 0, i32 1
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context10, align 8
  %cmp11 = icmp ne %struct._GimpContext* %22, null
  %conv12 = zext i1 %cmp11 to i32
  call void @gtk_action_set_visible(%struct._GtkAction* %20, i32 %conv12)
  %23 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %color_panel, align 8
  %context13 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %23, i32 0, i32 1
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context13, align 8
  %tobool14 = icmp ne %struct._GimpContext* %24, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %25 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %call16 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GtkAction* %call16, %struct._GtkAction** %action, align 8
  %26 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %color_panel, align 8
  %context17 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %26, i32 0, i32 1
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context17, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %27, %struct._GimpRGB* %color)
  %28 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %29 = bitcast %struct._GtkAction* %28 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  %30 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %call18 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkAction* %call18, %struct._GtkAction** %action, align 8
  %31 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %color_panel, align 8
  %context19 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %31, i32 0, i32 1
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context19, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %32, %struct._GimpRGB* %color)
  %33 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %34 = bitcast %struct._GtkAction* %33 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  %35 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %call20 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GtkAction* %call20, %struct._GtkAction** %action, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %36 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %37 = bitcast %struct._GtkAction* %36 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  %38 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %call21 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GtkAction* %call21, %struct._GtkAction** %action, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %39 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %40 = bitcast %struct._GtkAction* %39 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GimpRGB* %color, i8* null)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %41 = load i8*, i8** @gimp_color_panel_parent_class, align 8
  %42 = bitcast i8* %41 to %struct._GTypeClass*
  %call23 = call i64 @gtk_widget_get_type() #5
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %42, i64 %call23)
  %43 = bitcast %struct._GTypeClass* %call24 to %struct._GtkWidgetClass*
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %43, i32 0, i32 25
  %44 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %tobool25 = icmp ne i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %44, null
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.22
  %45 = load i8*, i8** @gimp_color_panel_parent_class, align 8
  %46 = bitcast i8* %45 to %struct._GTypeClass*
  %call27 = call i64 @gtk_widget_get_type() #5
  %call28 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %46, i64 %call27)
  %47 = bitcast %struct._GTypeClass* %call28 to %struct._GtkWidgetClass*
  %button_press_event29 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %47, i32 0, i32 25
  %48 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event29, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %50 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %call30 = call i32 %48(%struct._GtkWidget* %49, %struct._GdkEventButton* %50)
  store i32 %call30, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.26
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_clicked(%struct._GtkButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %panel = alloca %struct._GimpColorPanel*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  %0 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %1 = bitcast %struct._GtkButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_panel_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorPanel*
  store %struct._GimpColorPanel* %2, %struct._GimpColorPanel** %panel, align 8
  %3 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %4 = bitcast %struct._GtkButton* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %5, %struct._GimpRGB* %color)
  %6 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %context = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %8, i32 0, i32 1
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %10 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %11 = bitcast %struct._GtkButton* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_button_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorButton*
  %title = getelementptr inbounds %struct._GimpColorButton, %struct._GimpColorButton* %12, i32 0, i32 1
  %13 = load i8*, i8** %title, align 8
  %14 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %15 = bitcast %struct._GtkButton* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %17 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %18 = bitcast %struct._GtkButton* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_color_button_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpColorButton*
  %call10 = call i32 @gimp_color_button_has_alpha(%struct._GimpColorButton* %19)
  %call11 = call %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable* null, %struct._GimpContext* %9, i8* %13, i8* null, i8* null, %struct._GtkWidget* %16, %struct._GimpDialogFactory* null, i8* null, %struct._GimpRGB* %color, i32 0, i32 %call10)
  %20 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog12 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %20, i32 0, i32 2
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %color_dialog12, align 8
  %21 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog13 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %21, i32 0, i32 2
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog13, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog14 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %24, i32 0, i32 2
  %25 = bitcast %struct._GtkWidget** %color_dialog14 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog16 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %26, i32 0, i32 2
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog16, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %30 = bitcast %struct._GimpColorPanel* %29 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorDialog*, %struct._GimpRGB*, i32, %struct._GimpColorPanel*)* @gimp_color_panel_dialog_update to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog18 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %31, i32 0, i32 2
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog18, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_window_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_color_changed(%struct._GimpColorButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  %panel = alloca %struct._GimpColorPanel*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %0 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %1 = bitcast %struct._GimpColorButton* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_panel_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorPanel*
  store %struct._GimpColorPanel* %2, %struct._GimpColorPanel** %panel, align 8
  %3 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %3, i32 0, i32 2
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorButton*, %struct._GimpColorButton** %button.addr, align 8
  %6 = bitcast %struct._GimpColorButton* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorButton*
  call void @gimp_color_button_get_color(%struct._GimpColorButton* %7, %struct._GimpRGB* %color)
  %8 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel, align 8
  %color_dialog4 = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorDialog*
  call void @gimp_color_dialog_set_color(%struct._GimpColorDialog* %11, %struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_color_panel_get_action_type(%struct._GimpColorButton* %button) #3 {
entry:
  %button.addr = alloca %struct._GimpColorButton*, align 8
  store %struct._GimpColorButton* %button, %struct._GimpColorButton** %button.addr, align 8
  %call = call i64 @gimp_action_get_type() #5
  ret i64 %call
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_set_visible(%struct._GtkAction*, i32) #1

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare %struct._GtkWidget* @gimp_color_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GimpDialogFactory*, i8*, %struct._GimpRGB*, i32, i32) #1

declare i32 @gimp_color_button_has_alpha(%struct._GimpColorButton*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_panel_dialog_update(%struct._GimpColorDialog* %dialog, %struct._GimpRGB* %color, i32 %state, %struct._GimpColorPanel* %panel) #3 {
entry:
  %dialog.addr = alloca %struct._GimpColorDialog*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %state.addr = alloca i32, align 4
  %panel.addr = alloca %struct._GimpColorPanel*, align 8
  store %struct._GimpColorDialog* %dialog, %struct._GimpColorDialog** %dialog.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpColorPanel* %panel, %struct._GimpColorPanel** %panel.addr, align 8
  %0 = load i32, i32* %state.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel.addr, align 8
  %2 = bitcast %struct._GimpColorPanel* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorButton*
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %3, %struct._GimpRGB* %4)
  br label %sw.bb.3

sw.bb.3:                                          ; preds = %entry, %sw.bb.1
  %5 = load %struct._GimpColorPanel*, %struct._GimpColorPanel** %panel.addr, align 8
  %color_dialog = getelementptr inbounds %struct._GimpColorPanel, %struct._GimpColorPanel* %5, i32 0, i32 2
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %color_dialog, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.3, %entry, %sw.bb
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gimp_color_dialog_set_color(%struct._GimpColorDialog*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_dialog_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_action_get_type() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
