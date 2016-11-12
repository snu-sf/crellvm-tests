; ModuleID = './app/widgets/gimptoolpalette.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolPaletteClass = type { %struct._GtkToolPaletteClass }
%struct._GtkToolPaletteClass = type { %struct._GtkContainerClass, void (%struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*)*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpToolPalette = type { %struct._GtkToolPalette }
%struct._GtkToolPalette = type { %struct._GtkContainer, %struct._GtkToolPalettePrivate* }
%struct._GtkToolPalettePrivate = type opaque
%struct._GimpToolbox = type { %struct._GimpDock, %struct._GimpToolboxPrivate* }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpToolboxPrivate = type opaque
%struct._GimpToolPalettePrivate = type { %struct._GimpToolbox*, i32, i32 }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToolItem = type { %struct._GtkBin, %struct._GtkToolItemPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkToolItemPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkToolItemGroup = type { %struct._GtkContainer, %struct._GtkToolItemGroupPrivate* }
%struct._GtkToolItemGroupPrivate = type opaque
%struct._GtkRadioToolButton = type { %struct._GtkToggleToolButton }
%struct._GtkToggleToolButton = type { %struct._GtkToolButton, %struct._GtkToggleToolButtonPrivate* }
%struct._GtkToolButton = type { %struct._GtkToolItem, %struct._GtkToolButtonPrivate* }
%struct._GtkToolButtonPrivate = type opaque
%struct._GtkToggleToolButtonPrivate = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque

@gimp_tool_palette_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpToolPalette\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_tool_palette_set_toolbox = private unnamed_addr constant [30 x i8] c"gimp_tool_palette_set_toolbox\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_TOOL_PALETTE (palette)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TOOLBOX (toolbox)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"parent-set\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"reorder\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tool-changed\00", align 1
@__func__.gimp_tool_palette_get_button_size = private unnamed_addr constant [34 x i8] c"gimp_tool_palette_get_button_size\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"width != NULL\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"height != NULL\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"gimp-rect-select-tool\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gimp-tool-palette-item\00", align 1
@gimp_tool_palette_parent_class = internal global i8* null, align 8
@GimpToolPalette_private_offset = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"tool-icon-size\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"button-relief\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"gimp-tool-info\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"notify::visible\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"tools-%s\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"tools\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_palette_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_palette_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_palette_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_tool_palette_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 880, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_palette_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolPalette*)* @gimp_tool_palette_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_palette_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tool_palette_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tool_palette_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_palette_parent_class, align 8
  %1 = load i32, i32* @GimpToolPalette_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolPalette_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolPaletteClass*
  call void @gimp_tool_palette_class_init(%struct._GimpToolPaletteClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_init(%struct._GimpToolPalette* %palette) #3 {
entry:
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  %0 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpToolPalette* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tool_palette_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToolPalette*
  call void @gtk_tool_palette_set_style(%struct._GtkToolPalette* %2, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tool_palette_new() #3 {
entry:
  %call = call i64 @gimp_tool_palette_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_tool_palette_set_toolbox(%struct._GimpToolPalette* %palette, %struct._GimpToolbox* %toolbox) #3 {
entry:
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpToolPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_palette_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_palette_set_toolbox, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %14 = bitcast %struct._GimpToolbox* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_toolbox_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_tool_palette_set_toolbox, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %27 = bitcast %struct._GimpToolPalette* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_tool_palette_get_type() #6
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %28, %struct._GimpToolPalettePrivate** %private, align 8
  %29 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %30 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox41 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %30, i32 0, i32 0
  store %struct._GimpToolbox* %29, %struct._GimpToolbox** %toolbox41, align 8
  %31 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call42 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %31)
  store %struct._GimpContext* %call42, %struct._GimpContext** %context, align 8
  %32 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox43 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %32, i32 0, i32 0
  %33 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox43, align 8
  %34 = bitcast %struct._GimpToolbox* %33 to i8*
  %35 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %36 = bitcast %struct._GimpToolPalette* %35 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolPalette*)* @gimp_tool_palette_initialize_tools to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 2)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 1
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %38, i32 0, i32 45
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %40 = bitcast %struct._GimpContainer* %39 to i8*
  %41 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %42 = bitcast %struct._GimpToolPalette* %41 to i8*
  %call45 = call i64 @g_signal_connect_object(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpToolInfo*, i32, %struct._GimpToolPalette*)* @gimp_tool_palette_tool_reorder to void ()*), i8* %42, i32 0)
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %44 = bitcast %struct._GimpContext* %43 to i8*
  %45 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %46 = bitcast %struct._GimpToolPalette* %45 to i8*
  %call46 = call i64 @g_signal_connect_object(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpToolInfo*, %struct._GimpToolPalette*)* @gimp_tool_palette_tool_changed to void ()*), i8* %46, i32 0)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_initialize_tools(%struct._GimpToolPalette* %palette) #3 {
entry:
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %active_tool = alloca %struct._GimpToolInfo*, align 8
  %list = alloca %struct._GList*, align 8
  %item_group = alloca %struct._GSList*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %group = alloca %struct._GtkWidget*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %item = alloca %struct._GtkToolItem*, align 8
  %stock_id = alloca i8*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %identifier = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  store %struct._GSList* null, %struct._GSList** %item_group, align 8
  %0 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpToolPalette* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_palette_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %2, %struct._GimpToolPalettePrivate** %private, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #8
  %call3 = call %struct._GtkWidget* @gtk_tool_item_group_new(i8* %call2)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %group, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %group, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_tool_item_group_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToolItemGroup*
  call void @gtk_tool_item_group_set_label_widget(%struct._GtkToolItemGroup* %5, %struct._GtkWidget* null)
  %6 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %7 = bitcast %struct._GimpToolPalette* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %group, align 8
  call void @gtk_container_add(%struct._GtkContainer* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %group, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %call8 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %12)
  store %struct._GimpContext* %call8, %struct._GimpContext** %context, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call9 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %13)
  store %struct._GimpToolInfo* %call9, %struct._GimpToolInfo** %active_tool, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call10 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %15)
  store %struct._GList* %call10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %16, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %19, %struct._GimpToolInfo** %tool_info, align 8
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %21 = bitcast %struct._GimpToolInfo* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %22)
  store i8* %call13, i8** %stock_id, align 8
  %23 = load %struct._GSList*, %struct._GSList** %item_group, align 8
  %24 = load i8*, i8** %stock_id, align 8
  %call14 = call %struct._GtkToolItem* @gtk_radio_tool_button_new_from_stock(%struct._GSList* %23, i8* %24)
  store %struct._GtkToolItem* %call14, %struct._GtkToolItem** %item, align 8
  %25 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %26 = bitcast %struct._GtkToolItem* %25 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_radio_tool_button_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call15)
  %27 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkRadioToolButton*
  %call17 = call %struct._GSList* @gtk_radio_tool_button_get_group(%struct._GtkRadioToolButton* %27)
  store %struct._GSList* %call17, %struct._GSList** %item_group, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %group, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tool_item_group_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkToolItemGroup*
  %31 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  call void @gtk_tool_item_group_insert(%struct._GtkToolItemGroup* %30, %struct._GtkToolItem* %31, i32 -1)
  %32 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %33 = bitcast %struct._GtkToolItem* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %35 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %36 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %36, i32 0, i32 11
  %37 = load i32, i32* %visible, align 4
  call void @gtk_tool_item_set_visible_horizontal(%struct._GtkToolItem* %35, i32 %37)
  %38 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %39 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %visible22 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %39, i32 0, i32 11
  %40 = load i32, i32* %visible22, align 4
  call void @gtk_tool_item_set_visible_vertical(%struct._GtkToolItem* %38, i32 %40)
  %41 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %42 = bitcast %struct._GimpToolInfo* %41 to i8*
  %43 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %44 = bitcast %struct._GtkToolItem* %43 to i8*
  %call23 = call i64 @g_signal_connect_object(i8* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolInfo*, %struct._GParamSpec*, %struct._GtkToolItem*)* @gimp_tool_palette_tool_visible_notify to void ()*), i8* %44, i32 0)
  %45 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %46 = bitcast %struct._GimpToolInfo* %45 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %48 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %49 = bitcast %struct._GtkToolItem* %48 to i8*
  call void @g_object_set_data(%struct._GObject* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* %49)
  %50 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %51 = bitcast %struct._GtkToolItem* %50 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %53 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %54 = bitcast %struct._GimpToolInfo* %53 to i8*
  call void @g_object_set_data(%struct._GObject* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %54)
  %55 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %56 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %active_tool, align 8
  %cmp = icmp eq %struct._GimpToolInfo* %55, %56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %57 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %58 = bitcast %struct._GtkToolItem* %57 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_toggle_tool_button_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call26)
  %59 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkToggleToolButton*
  call void @gtk_toggle_tool_button_set_active(%struct._GtkToggleToolButton* %59, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %60 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %61 = bitcast %struct._GtkToolItem* %60 to i8*
  %62 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %63 = bitcast %struct._GimpToolPalette* %62 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpToolPalette*)* @gimp_tool_palette_tool_button_toggled to void ()*), i8* %63, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %65 = bitcast %struct._GtkToolItem* %64 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_bin_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call29)
  %66 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBin*
  %call31 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %66)
  %67 = bitcast %struct._GtkWidget* %call31 to i8*
  %68 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %69 = bitcast %struct._GimpToolPalette* %68 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpToolPalette*)* @gimp_tool_palette_tool_button_press to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox33 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %70, i32 0, i32 0
  %71 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox33, align 8
  %72 = bitcast %struct._GimpToolbox* %71 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_dock_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call34)
  %73 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpDock*
  %call36 = call %struct._GimpUIManager* @gimp_dock_get_ui_manager(%struct._GimpDock* %73)
  store %struct._GimpUIManager* %call36, %struct._GimpUIManager** %ui_manager, align 8
  %74 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool37 = icmp ne %struct._GimpUIManager* %74, null
  br i1 %tobool37, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end
  store %struct._GtkAction* null, %struct._GtkAction** %action, align 8
  store i8* null, i8** %identifier, align 8
  store i8* null, i8** %tmp, align 8
  store i8* null, i8** %name, align 8
  %75 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %76 = bitcast %struct._GimpToolInfo* %75 to i8*
  %call40 = call i8* @gimp_object_get_name(i8* %76)
  store i8* %call40, i8** %identifier, align 8
  %77 = load i8*, i8** %identifier, align 8
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 5
  %78 = load i8*, i8** %identifier, align 8
  %call41 = call i64 @strlen(i8* %78) #7
  %sub = sub i64 %call41, 10
  %call42 = call noalias i8* @g_strndup(i8* %add.ptr, i64 %sub)
  store i8* %call42, i8** %tmp, align 8
  %79 = load i8*, i8** %tmp, align 8
  %call43 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* %79)
  store i8* %call43, i8** %name, align 8
  %80 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %80)
  %81 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %82 = load i8*, i8** %name, align 8
  %call44 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %82)
  store %struct._GtkAction* %call44, %struct._GtkAction** %action, align 8
  %83 = load i8*, i8** %name, align 8
  call void @g_free(i8* %83)
  %84 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool45 = icmp ne %struct._GtkAction* %84, null
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.38
  %85 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %86 = bitcast %struct._GtkToolItem* %85 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_widget_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call47)
  %87 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkWidget*
  %88 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gimp_widget_set_accel_help(%struct._GtkWidget* %87, %struct._GtkAction* %88)
  br label %if.end.51

if.else:                                          ; preds = %if.then.38
  %89 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item, align 8
  %90 = bitcast %struct._GtkToolItem* %89 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_widget_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call49)
  %91 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkWidget*
  %92 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %92, i32 0, i32 6
  %93 = load i8*, i8** %help, align 8
  %94 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %94, i32 0, i32 10
  %95 = load i8*, i8** %help_id, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %91, i8* %93, i8* %95)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool53 = icmp ne %struct._GList* %96, null
  br i1 %tobool53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %97 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %97, i32 0, i32 1
  %98 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %98, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox54 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %99, i32 0, i32 0
  %100 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox54, align 8
  %101 = bitcast %struct._GimpToolbox* %100 to i8*
  %102 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %103 = bitcast %struct._GimpToolPalette* %102 to i8*
  %call55 = call i32 @g_signal_handlers_disconnect_matched(i8* %101, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPalette*)* @gimp_tool_palette_initialize_tools to i8*), i8* %103)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_tool_reorder(%struct._GimpContainer* %container, %struct._GimpToolInfo* %tool_info, i32 %index, %struct._GimpToolPalette* %palette) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %index.addr = alloca i32, align 4
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %2 = bitcast %struct._GimpToolInfo* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call2 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %5)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %group, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %group, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tool_item_group_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToolItemGroup*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tool_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToolItem*
  %12 = load i32, i32* %index.addr, align 4
  call void @gtk_tool_item_group_set_item_position(%struct._GtkToolItemGroup* %8, %struct._GtkToolItem* %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_tool_changed(%struct._GimpContext* %context, %struct._GimpToolInfo* %tool_info, %struct._GimpToolPalette* %palette) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %tool_button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %0, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %2 = bitcast %struct._GimpToolInfo* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %tool_button, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_tool_button_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleToolButton*
  %call5 = call i32 @gtk_toggle_tool_button_get_active(%struct._GtkToggleToolButton* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %12 = bitcast %struct._GimpToolPalette* %11 to i8*
  %call8 = call i32 @g_signal_handlers_block_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpToolPalette*)* @gimp_tool_palette_tool_button_toggled to i8*), i8* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_tool_button_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleToolButton*
  call void @gtk_toggle_tool_button_set_active(%struct._GtkToggleToolButton* %15, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %18 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %19 = bitcast %struct._GimpToolPalette* %18 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct._GimpToolPalette*)* @gimp_tool_palette_tool_button_toggled to i8*), i8* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_tool_palette_get_button_size(%struct._GimpToolPalette* %palette, i32* %width, i32* %height) #3 {
entry:
  %retval = alloca i32, align 4
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %tool_button = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %button_requisition = alloca %struct._GtkRequisition, align 4
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpToolPalette* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_tool_palette_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_tool_palette_get_button_size, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %width.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_tool_palette_get_button_size, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %height.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_tool_palette_get_button_size, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %16 = bitcast %struct._GimpToolPalette* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_tool_palette_get_type() #6
  %call24 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast i8* %call24 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %17, %struct._GimpToolPalettePrivate** %private, align 8
  %18 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %18, i32 0, i32 0
  %19 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %call25 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %19)
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call25, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call26 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpToolInfo* %call26, %struct._GimpToolInfo** %tool_info, align 8
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %22 = bitcast %struct._GimpToolInfo* %21 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %call28 = call i8* @g_object_get_data(%struct._GObject* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %24 = bitcast i8* %call28 to %struct._GtkWidget*
  store %struct._GtkWidget* %24, %struct._GtkWidget** %tool_button, align 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %tobool29 = icmp ne %struct._GtkWidget* %25, null
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %do.end.22
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %26, %struct._GtkRequisition* %button_requisition)
  %width32 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %button_requisition, i32 0, i32 0
  %27 = load i32, i32* %width32, align 4
  %28 = load i32*, i32** %width.addr, align 8
  store i32 %27, i32* %28, align 4
  %height33 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %button_requisition, i32 0, i32 1
  %29 = load i32, i32* %height33, align 4
  %30 = load i32*, i32** %height.addr, align 8
  store i32 %29, i32* %30, align 4
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %do.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.30, %if.else.20, %if.else.14, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_class_init(%struct._GimpToolPaletteClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolPaletteClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpToolPaletteClass* %klass, %struct._GimpToolPaletteClass** %klass.addr, align 8
  %0 = load %struct._GimpToolPaletteClass*, %struct._GimpToolPaletteClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolPaletteClass* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %2, %struct._GtkWidgetClass** %widget_class, align 8
  %3 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %3, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_tool_palette_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %4 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %4, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_tool_palette_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %5 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call2 = call i64 @gtk_icon_size_get_type() #6
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 4, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %5, %struct._GParamSpec* %call3)
  %6 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call4 = call i64 @gtk_relief_style_get_type() #6
  %call5 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 2, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %6, %struct._GParamSpec* %call5)
  %7 = load %struct._GimpToolPaletteClass*, %struct._GimpToolPaletteClass** %klass.addr, align 8
  %8 = bitcast %struct._GimpToolPaletteClass* %7 to i8*
  call void @g_type_class_add_private(i8* %8, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %button_width = alloca i32, align 4
  %button_height = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  %list = alloca %struct._GList*, align 8
  %n_tools = alloca i32, align 4
  %tool_rows = alloca i32, align 4
  %tool_columns = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_palette_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %2, %struct._GimpToolPalettePrivate** %private, align 8
  %3 = load i8*, i8** @gimp_tool_palette_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_tool_palette_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpToolPalette*
  %call6 = call i32 @gimp_tool_palette_get_button_size(%struct._GimpToolPalette* %11, i32* %button_width, i32* %button_height)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %12, i32 0, i32 0
  %13 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %call7 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %13)
  %gimp8 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call7, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  store %struct._Gimp* %14, %struct._Gimp** %gimp, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call9 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %15)
  store %struct._GList* %call9, %struct._GList** %list, align 8
  store i32 0, i32* %n_tools, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool10 = icmp ne %struct._GList* %16, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %19, %struct._GimpToolInfo** %tool_info, align 8
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %20, i32 0, i32 11
  %21 = load i32, i32* %visible, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  %22 = load i32, i32* %n_tools, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %n_tools, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %24, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %25, i32 0, i32 2
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %button_width, align 4
  %div = sdiv i32 %26, %27
  %cmp = icmp sgt i32 1, %div
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i32 0, i32 2
  %29 = load i32, i32* %width13, align 4
  %30 = load i32, i32* %button_width, align 4
  %div14 = sdiv i32 %29, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %div14, %cond.false ]
  store i32 %cond, i32* %tool_columns, align 4
  %31 = load i32, i32* %n_tools, align 4
  %32 = load i32, i32* %tool_columns, align 4
  %div15 = sdiv i32 %31, %32
  store i32 %div15, i32* %tool_rows, align 4
  %33 = load i32, i32* %n_tools, align 4
  %34 = load i32, i32* %tool_columns, align 4
  %rem = srem i32 %33, %34
  %tobool16 = icmp ne i32 %rem, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %cond.end
  %35 = load i32, i32* %tool_rows, align 4
  %inc18 = add nsw i32 %35, 1
  store i32 %inc18, i32* %tool_rows, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %cond.end
  %36 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %tool_rows20 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %36, i32 0, i32 1
  %37 = load i32, i32* %tool_rows20, align 4
  %38 = load i32, i32* %tool_rows, align 4
  %cmp21 = icmp ne i32 %37, %38
  br i1 %cmp21, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %39 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %tool_columns22 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %39, i32 0, i32 2
  %40 = load i32, i32* %tool_columns22, align 4
  %41 = load i32, i32* %tool_columns, align 4
  %cmp23 = icmp ne i32 %40, %41
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.19
  %42 = load i32, i32* %tool_rows, align 4
  %43 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %tool_rows25 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %43, i32 0, i32 1
  store i32 %42, i32* %tool_rows25, align 4
  %44 = load i32, i32* %tool_columns, align 4
  %45 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %tool_columns26 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %45, i32 0, i32 2
  store i32 %44, i32* %tool_columns26, align 4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %47 = load i32, i32* %tool_rows, align 4
  %48 = load i32, i32* %button_height, align 4
  %mul = mul nsw i32 %47, %48
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %46, i32 -1, i32 %mul)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %previous_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %previous_style.addr = alloca %struct._GtkStyle*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %tool_icon_size = alloca i32, align 4
  %relief = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %tool_button = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %previous_style, %struct._GtkStyle** %previous_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_palette_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %2, %struct._GimpToolPalettePrivate** %private, align 8
  %3 = load i8*, i8** @gimp_tool_palette_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %previous_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %9, i32 0, i32 0
  %10 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %call4 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %10)
  %tobool = icmp ne %struct._GimpContext* %call4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox5 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %11, i32 0, i32 0
  %12 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox5, align 8
  %call6 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %12)
  %gimp7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call6, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp7, align 8
  store %struct._Gimp* %13, %struct._Gimp** %gimp, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32* %tool_icon_size, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* %relief, i8* null)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tool_palette_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToolPalette*
  %18 = load i32, i32* %tool_icon_size, align 4
  call void @gtk_tool_palette_set_icon_size(%struct._GtkToolPalette* %17, i32 %18)
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call10 = call %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %19)
  store %struct._GList* %call10, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %20, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %23, %struct._GimpToolInfo** %tool_info, align 8
  %24 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %25 = bitcast %struct._GimpToolInfo* %24 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @g_object_get_data(%struct._GObject* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0))
  %27 = bitcast i8* %call13 to %struct._GtkWidget*
  store %struct._GtkWidget* %27, %struct._GtkWidget** %tool_button, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %28, null
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %for.body
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %tool_button, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_bin_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBin*
  %call18 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %31)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %button, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_button_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkButton*
  %35 = load i32, i32* %relief, align 4
  call void @gtk_button_set_relief(%struct._GtkButton* %34, i32 %35)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool22 = icmp ne %struct._GList* %36, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1
  %38 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %38, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox23 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %39, i32 0, i32 0
  %40 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox23, align 8
  %41 = bitcast %struct._GimpToolbox* %40 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_dock_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call24)
  %42 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDock*
  call void @gimp_dock_invalidate_geometry(%struct._GimpDock* %42)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_size_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_relief_style_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_tool_palette_set_icon_size(%struct._GtkToolPalette*, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gimp_dock_invalidate_geometry(%struct._GimpDock*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare void @gtk_tool_palette_set_style(%struct._GtkToolPalette*, i32) #1

declare i32 @gtk_toggle_tool_button_get_active(%struct._GtkToggleToolButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_tool_button_get_type() #2

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_tool_button_toggled(%struct._GtkWidget* %widget, %struct._GimpToolPalette* %palette) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  %0 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpToolPalette* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_palette_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %2, %struct._GimpToolPalettePrivate** %private, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  %6 = bitcast i8* %call3 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %6, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_toggle_tool_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkToggleToolButton*
  %call6 = call i32 @gtk_toggle_tool_button_get_active(%struct._GtkToggleToolButton* %9)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %10, i32 0, i32 0
  %11 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %call7 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %11)
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %call7, %struct._GimpToolInfo* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_toggle_tool_button_set_active(%struct._GtkToggleToolButton*, i32) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #1

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_tool_item_group_set_item_position(%struct._GtkToolItemGroup*, %struct._GtkToolItem*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tool_item_group_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_tool_item_get_type() #2

declare %struct._GtkWidget* @gtk_tool_item_group_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gtk_tool_item_group_set_label_widget(%struct._GtkToolItemGroup*, %struct._GtkWidget*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GtkToolItem* @gtk_radio_tool_button_new_from_stock(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_tool_button_get_group(%struct._GtkRadioToolButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_tool_button_get_type() #2

declare void @gtk_tool_item_group_insert(%struct._GtkToolItemGroup*, %struct._GtkToolItem*, i32) #1

declare void @gtk_tool_item_set_visible_horizontal(%struct._GtkToolItem*, i32) #1

declare void @gtk_tool_item_set_visible_vertical(%struct._GtkToolItem*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_palette_tool_visible_notify(%struct._GimpToolInfo* %tool_info, %struct._GParamSpec* %pspec, %struct._GtkToolItem* %item) #3 {
entry:
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %item.addr = alloca %struct._GtkToolItem*, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkToolItem* %item, %struct._GtkToolItem** %item.addr, align 8
  %0 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item.addr, align 8
  %1 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %visible = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %1, i32 0, i32 11
  %2 = load i32, i32* %visible, align 4
  call void @gtk_tool_item_set_visible_horizontal(%struct._GtkToolItem* %0, i32 %2)
  %3 = load %struct._GtkToolItem*, %struct._GtkToolItem** %item.addr, align 8
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %visible1 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %4, i32 0, i32 11
  %5 = load i32, i32* %visible1, align 4
  call void @gtk_tool_item_set_visible_vertical(%struct._GtkToolItem* %3, i32 %5)
  ret void
}

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_tool_palette_tool_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct._GimpToolPalette* %palette) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %palette.addr = alloca %struct._GimpToolPalette*, align 8
  %private = alloca %struct._GimpToolPalettePrivate*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct._GimpToolPalette* %palette, %struct._GimpToolPalette** %palette.addr, align 8
  %0 = load %struct._GimpToolPalette*, %struct._GimpToolPalette** %palette.addr, align 8
  %1 = bitcast %struct._GimpToolPalette* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_palette_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolPalettePrivate*
  store %struct._GimpToolPalettePrivate* %2, %struct._GimpToolPalettePrivate** %private, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %5, i32 0, i32 8
  %6 = load i32, i32* %button, align 4
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox, align 8
  %call3 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %8)
  store %struct._GimpContext* %call3, %struct._GimpContext** %context, align 8
  %9 = load %struct._GimpToolPalettePrivate*, %struct._GimpToolPalettePrivate** %private, align 8
  %toolbox4 = getelementptr inbounds %struct._GimpToolPalettePrivate, %struct._GimpToolPalettePrivate* %9, i32 0, i32 0
  %10 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox4, align 8
  %11 = bitcast %struct._GimpToolbox* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dock_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDock*
  store %struct._GimpDock* %12, %struct._GimpDock** %dock, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call7 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %14)
  %15 = bitcast %struct._GimpObject* %call7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_window_strategy_interface_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpWindowStrategy*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %19 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call11 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call12 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %20)
  %call13 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %16, %struct._Gimp* %18, %struct._GimpDialogFactory* %call11, %struct._GdkScreen* %call12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

declare %struct._GimpUIManager* @gimp_dock_get_ui_manager(%struct._GimpDock*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #1

declare void @gimp_widget_set_accel_help(%struct._GtkWidget*, %struct._GtkAction*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
