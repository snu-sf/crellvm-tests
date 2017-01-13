; ModuleID = './app/widgets/gimptooleditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpToolEditorClass = type { %struct._GimpContainerTreeViewClass }
%struct._GimpContainerTreeViewClass = type { %struct._GimpContainerBoxClass, void (%struct._GimpContainerTreeView*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* }
%struct._GimpContainerBoxClass = type { %struct._GimpEditorClass }
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
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpToolOptions = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkTreePath = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpToolEditor = type { %struct._GimpContainerTreeView }
%struct._GimpToolEditorPrivate = type { %struct._GtkTreeModel*, %struct._GimpContext*, %struct._GimpContainer*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8**, i32*, i32, i32, %struct._GList* }
%struct._GimpContainerView = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }

@gimp_tool_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpToolEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_tool_editor_new = private unnamed_addr constant [21 x i8] c"gimp_tool_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stock-size\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"notify::visible\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Raise this tool\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Raise this tool to the top\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Lower this tool\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Lower this tool to the bottom\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Reset tool order and visibility\00", align 1
@gimp_tool_editor_parent_class = internal global i8* null, align 8
@GimpToolEditor_private_offset = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"gimp-tool-default-visible\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"active\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tool_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tool_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tool_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 888, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tool_editor_class_intern_init to void (i8*, i8*)*), i32 328, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpToolEditor*)* @gimp_tool_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tool_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tool_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tool_editor_parent_class, align 8
  %1 = load i32, i32* @GimpToolEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpToolEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpToolEditorClass*
  call void @gimp_tool_editor_class_init(%struct._GimpToolEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_init(%struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %model = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 0
  store %struct._GtkTreeModel* null, %struct._GtkTreeModel** %model, align 8
  %4 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %4, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %5, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %container, align 8
  %6 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %scrolled = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %6, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %scrolled, align 8
  %7 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %visible_handler_id = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %7, i32 0, i32 10
  store i32 0, i32* %visible_handler_id, align 4
  %8 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %default_tool_order = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %8, i32 0, i32 11
  store %struct._GList* null, %struct._GList** %default_tool_order, align 8
  %9 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %9, i32 0, i32 7
  store i8** null, i8*** %initial_tool_order, align 8
  %10 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %10, i32 0, i32 8
  store i32* null, i32** %initial_tool_visibility, align 8
  %11 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %11, i32 0, i32 9
  store i32 0, i32* %n_tools, align 4
  %12 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %raise_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %12, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %raise_button, align 8
  %13 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %lower_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %13, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %lower_button, align 8
  %14 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %reset_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %14, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %reset_button, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_tool_editor_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, %struct._GList* %default_tool_order, i32 %view_size, i32 %view_border_width) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %default_tool_order.addr = alloca %struct._GList*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tool_editor = alloca %struct._GimpToolEditor*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %container_view = alloca %struct._GimpContainerView*, align 8
  %object = alloca %struct._GObject*, align 8
  %gimp_object = alloca %struct._GimpObject*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tree_view65 = alloca %struct._GimpContainerTreeView*, align 8
  %tree_widget = alloca %struct._GtkWidget*, align 8
  %tree_style = alloca %struct._GtkStyle*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %eye_cell = alloca %struct._GtkCellRenderer*, align 8
  %icon_size = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GList* %default_tool_order, %struct._GList** %default_tool_order.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_tool_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_tool_editor_get_type() #6
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* null)
  %26 = bitcast i8* %call40 to %struct._GObject*
  store %struct._GObject* %26, %struct._GObject** %object, align 8
  %27 = load %struct._GObject*, %struct._GObject** %object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_tool_editor_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call41)
  %29 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpToolEditor*
  store %struct._GimpToolEditor* %29, %struct._GimpToolEditor** %tool_editor, align 8
  %30 = load %struct._GObject*, %struct._GObject** %object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_container_tree_view_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call43)
  %32 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %32, %struct._GimpContainerTreeView** %tree_view, align 8
  %33 = load %struct._GObject*, %struct._GObject** %object, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_container_view_interface_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call45)
  %35 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %35, %struct._GimpContainerView** %container_view, align 8
  %36 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %37 = bitcast %struct._GimpToolEditor* %36 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_tool_editor_get_type() #6
  %call48 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %37, i64 %call47)
  %38 = bitcast i8* %call48 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %38, %struct._GimpToolEditorPrivate** %priv, align 8
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %40 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container49 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %40, i32 0, i32 2
  store %struct._GimpContainer* %39, %struct._GimpContainer** %container49, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context50 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %42, i32 0, i32 1
  store %struct._GimpContext* %41, %struct._GimpContext** %context50, align 8
  %43 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %43, i32 0, i32 1
  %44 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %45 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %model51 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %45, i32 0, i32 0
  store %struct._GtkTreeModel* %44, %struct._GtkTreeModel** %model51, align 8
  %46 = load %struct._GList*, %struct._GList** %default_tool_order.addr, align 8
  %47 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %default_tool_order52 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %47, i32 0, i32 11
  store %struct._GList* %46, %struct._GList** %default_tool_order52, align 8
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %49 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %49, i32 0, i32 9
  %call53 = call i8** @gimp_container_get_name_array(%struct._GimpContainer* %48, i32* %n_tools)
  %50 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %50, i32 0, i32 7
  store i8** %call53, i8*** %initial_tool_order, align 8
  %51 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools54 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %51, i32 0, i32 9
  %52 = load i32, i32* %n_tools54, align 4
  %conv = sext i32 %52 to i64
  %mul = mul i64 4, %conv
  %call55 = call noalias i8* @g_slice_alloc(i64 %mul)
  %53 = bitcast i8* %call55 to i32*
  %54 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %54, i32 0, i32 8
  store i32* %53, i32** %initial_tool_visibility, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %55 = load i32, i32* %i, align 4
  %56 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools56 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %56, i32 0, i32 9
  %57 = load i32, i32* %n_tools56, align 4
  %cmp57 = icmp slt i32 %55, %57
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %59 = load i32, i32* %i, align 4
  %call59 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %58, i32 %59)
  store %struct._GimpObject* %call59, %struct._GimpObject** %gimp_object, align 8
  %60 = load %struct._GimpObject*, %struct._GimpObject** %gimp_object, align 8
  %61 = bitcast %struct._GimpObject* %60 to i8*
  %62 = load i32, i32* %i, align 4
  %idxprom = sext i32 %62 to i64
  %63 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility60 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %63, i32 0, i32 8
  %64 = load i32*, i32** %initial_tool_visibility60, align 8
  %arrayidx = getelementptr inbounds i32, i32* %64, i64 %idxprom
  call void (i8*, i8*, ...) @g_object_get(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32* %arrayidx, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %i, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %67 = load i32, i32* %view_size.addr, align 4
  %68 = load i32, i32* %view_border_width.addr, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %66, i32 %67, i32 %68)
  %69 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %70 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container61 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %70, i32 0, i32 2
  %71 = load %struct._GimpContainer*, %struct._GimpContainer** %container61, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %69, %struct._GimpContainer* %71)
  %72 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %72, %struct._GimpContext* %73)
  %74 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  call void @gimp_container_view_set_reorderable(%struct._GimpContainerView* %74, i32 1)
  %75 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %76 = bitcast %struct._GimpContainerTreeView* %75 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_editor_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call62)
  %77 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpEditor*
  call void @gimp_editor_set_show_name(%struct._GimpEditor* %77, i32 0)
  %78 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %79 = bitcast %struct._GimpToolEditor* %78 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_container_tree_view_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call66)
  %80 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %80, %struct._GimpContainerTreeView** %tree_view65, align 8
  %81 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view65, align 8
  %82 = bitcast %struct._GimpContainerTreeView* %81 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_widget_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call69)
  %83 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkWidget*
  store %struct._GtkWidget* %83, %struct._GtkWidget** %tree_widget, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_widget, align 8
  %call72 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %84)
  store %struct._GtkStyle* %call72, %struct._GtkStyle** %tree_style, align 8
  %call76 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call76, %struct._GtkTreeViewColumn** %column, align 8
  %85 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view65, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %85, i32 0, i32 4
  %86 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %87 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call77 = call i32 @gtk_tree_view_insert_column(%struct._GtkTreeView* %86, %struct._GtkTreeViewColumn* %87, i32 0)
  %call78 = call %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkCellRenderer* %call78, %struct._GtkCellRenderer** %eye_cell, align 8
  %88 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %89 = bitcast %struct._GimpToolEditor* %88 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_widget_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call79)
  %90 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkWidget*
  %91 = load i32, i32* %view_size.addr, align 4
  %92 = load %struct._GtkStyle*, %struct._GtkStyle** %tree_style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %92, i32 0, i32 12
  %93 = load i32, i32* %xthickness, align 4
  %mul81 = mul nsw i32 2, %93
  %sub = sub nsw i32 %91, %mul81
  %94 = load i32, i32* %view_size.addr, align 4
  %95 = load %struct._GtkStyle*, %struct._GtkStyle** %tree_style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %95, i32 0, i32 13
  %96 = load i32, i32* %ythickness, align 4
  %mul82 = mul nsw i32 2, %96
  %sub83 = sub nsw i32 %94, %mul82
  %call84 = call i32 @gimp_get_icon_size(%struct._GtkWidget* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 4, i32 %sub, i32 %sub83)
  store i32 %call84, i32* %icon_size, align 4
  %97 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell, align 8
  %98 = bitcast %struct._GtkCellRenderer* %97 to i8*
  %99 = load i32, i32* %icon_size, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %99, i8* null)
  %100 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %101 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %100, %struct._GtkCellRenderer* %101, i32 0)
  %102 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %103 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell, align 8
  %104 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view65, align 8
  %105 = bitcast %struct._GimpContainerTreeView* %104 to i8*
  call void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn* %102, %struct._GtkCellRenderer* %103, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)* @gimp_tool_editor_eye_data_func, i8* %105, void (i8*)* null)
  %106 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view65, align 8
  %107 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell, align 8
  call void @gimp_container_tree_view_add_toggle_cell(%struct._GimpContainerTreeView* %106, %struct._GtkCellRenderer* %107)
  %108 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %eye_cell, align 8
  %109 = bitcast %struct._GtkCellRenderer* %108 to i8*
  %110 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %111 = bitcast %struct._GimpToolEditor* %110 to i8*
  %call85 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererToggle*, i8*, i32, %struct._GimpToolEditor*)* @gimp_tool_editor_eye_clicked to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %113 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %114 = bitcast %struct._GimpToolEditor* %113 to i8*
  %call86 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolInfo*, %struct._GParamSpec*, %struct._GimpToolEditor*)* @gimp_tool_editor_visible_notify to void ()*), i8* %114)
  %115 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %visible_handler_id = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %115, i32 0, i32 10
  store i32 %call86, i32* %visible_handler_id, align 4
  %116 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %117 = bitcast %struct._GimpContainerTreeView* %116 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_editor_get_type() #6
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call87)
  %118 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpEditor*
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #8
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)) #8
  %119 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %120 = bitcast %struct._GimpToolEditor* %119 to i8*
  %call91 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* %call89, i8* %call90, void ()* bitcast (void (%struct._GtkButton*, %struct._GimpToolEditor*)* @gimp_tool_editor_raise_clicked to void ()*), void ()* bitcast (void (%struct._GtkButton*, i32, %struct._GimpToolEditor*)* @gimp_tool_editor_raise_extend_clicked to void ()*), i8* %120)
  %121 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %raise_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %121, i32 0, i32 4
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %raise_button, align 8
  %122 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %123 = bitcast %struct._GimpContainerTreeView* %122 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_editor_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call92)
  %124 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpEditor*
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)) #8
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)) #8
  %125 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %126 = bitcast %struct._GimpToolEditor* %125 to i8*
  %call96 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %call94, i8* %call95, void ()* bitcast (void (%struct._GtkButton*, %struct._GimpToolEditor*)* @gimp_tool_editor_lower_clicked to void ()*), void ()* bitcast (void (%struct._GtkButton*, i32, %struct._GimpToolEditor*)* @gimp_tool_editor_lower_extend_clicked to void ()*), i8* %126)
  %127 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %lower_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %127, i32 0, i32 5
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %lower_button, align 8
  %128 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %129 = bitcast %struct._GimpContainerTreeView* %128 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_editor_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call97)
  %130 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpEditor*
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0)) #8
  %131 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %132 = bitcast %struct._GimpToolEditor* %131 to i8*
  %call100 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* %call99, i8* null, void ()* bitcast (void (%struct._GtkButton*, %struct._GimpToolEditor*)* @gimp_tool_editor_reset_clicked to void ()*), void ()* null, i8* %132)
  %133 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %reset_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %133, i32 0, i32 6
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %reset_button, align 8
  %134 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %135 = bitcast %struct._GimpToolEditor* %134 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_widget_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call101)
  %136 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkWidget*
  store %struct._GtkWidget* %136, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.36, %if.else.9
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %137
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare i8** @gimp_container_get_name_array(%struct._GimpContainer*, i32*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

declare void @gimp_container_view_set_reorderable(%struct._GimpContainerView*, i32) #1

declare void @gimp_editor_set_show_name(%struct._GimpEditor*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare i32 @gtk_tree_view_insert_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*, i32) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_toggle_new(i8*) #1

declare i32 @gimp_get_icon_size(%struct._GtkWidget*, i8*, i32, i32, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_cell_data_func(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_eye_data_func(%struct._GtkTreeViewColumn* %tree_column, %struct._GtkCellRenderer* %cell, %struct._GtkTreeModel* %tree_model, %struct._GtkTreeIter* %iter, i8* %data) #3 {
entry:
  %tree_column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %tree_model.addr = alloca %struct._GtkTreeModel*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %visible = alloca i32, align 4
  store %struct._GtkTreeViewColumn* %tree_column, %struct._GtkTreeViewColumn** %tree_column.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  store %struct._GtkTreeModel* %tree_model, %struct._GtkTreeModel** %tree_model.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %tree_model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %1, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %2 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %2, i32 0, i32 3
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %4 = bitcast %struct._GimpViewable* %3 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32* %visible, i8* null)
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %6 = bitcast %struct._GimpViewRenderer* %5 to i8*
  call void @g_object_unref(i8* %6)
  %7 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %8 = bitcast %struct._GtkCellRenderer* %7 to i8*
  %9 = load i32, i32* %visible, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 %9, i8* null)
  ret void
}

declare void @gimp_container_tree_view_add_toggle_cell(%struct._GimpContainerTreeView*, %struct._GtkCellRenderer*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_eye_clicked(%struct._GtkCellRendererToggle* %toggle, i8* %path_str, i32 %state, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %toggle.addr = alloca %struct._GtkCellRendererToggle*, align 8
  %path_str.addr = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %active = alloca i32, align 4
  store %struct._GtkCellRendererToggle* %toggle, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load i8*, i8** %path_str.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %model = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %4, i32 0, i32 0
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call3 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GtkCellRendererToggle*, %struct._GtkCellRendererToggle** %toggle.addr, align 8
  %8 = bitcast %struct._GtkCellRendererToggle* %7 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32* %active, i8* null)
  %9 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %model4 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %9, i32 0, i32 0
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model4, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 3
  %12 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %13 = bitcast %struct._GimpViewable* %12 to i8*
  %14 = load i32, i32* %active, align 4
  %tobool5 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  call void (i8*, i8*, ...) @g_object_set(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %lnot.ext, i8* null)
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %16 = bitcast %struct._GimpViewRenderer* %15 to i8*
  call void @g_object_unref(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %17)
  ret void
}

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_visible_notify(%struct._GimpToolInfo* %tool_info, %struct._GParamSpec* %pspec, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %4 = bitcast %struct._GimpToolEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %6 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %7 = bitcast %struct._GimpToolInfo* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_viewable_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpViewable*
  %call6 = call i8* @gimp_container_view_lookup(%struct._GimpContainerView* %5, %struct._GimpViewable* %8)
  %9 = bitcast i8* %call6 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %9, %struct._GtkTreeIter** %iter, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %model = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %11, i32 0, i32 0
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %13 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call7 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %13)
  store %struct._GtkTreePath* %call7, %struct._GtkTreePath** %path, align 8
  %14 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %model8 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %14, i32 0, i32 0
  %15 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model8, align 8
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gtk_tree_model_row_changed(%struct._GtkTreeModel* %15, %struct._GtkTreePath* %16, %struct._GtkTreeIter* %17)
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_raise_clicked(%struct._GtkButton* %button, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %index = alloca i32, align 4
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call2 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %4)
  store %struct._GimpToolInfo* %call2, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %5, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %9 = bitcast %struct._GimpToolInfo* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %7, %struct._GimpObject* %10)
  store i32 %call5, i32* %index, align 4
  %11 = load i32, i32* %index, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %12 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container7 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container7, align 8
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %17 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %17, 1
  %call10 = call i32 @gimp_container_reorder(%struct._GimpContainer* %13, %struct._GimpObject* %16, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_raise_extend_clicked(%struct._GtkButton* %button, i32 %mask, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %mask.addr = alloca i32, align 4
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %index = alloca i32, align 4
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call2 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %4)
  store %struct._GimpToolInfo* %call2, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %mask.addr, align 4
  %and = and i32 %6, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %7, i32 0, i32 2
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %9 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %10 = bitcast %struct._GimpToolInfo* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  store i32 %call6, i32* %index, align 4
  %12 = load i32, i32* %index, align 4
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container8 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %13, i32 0, i32 2
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container8, align 8
  %15 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %16 = bitcast %struct._GimpToolInfo* %15 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call9)
  %17 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  %call11 = call i32 @gimp_container_reorder(%struct._GimpContainer* %14, %struct._GimpObject* %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_lower_clicked(%struct._GtkButton* %button, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %index = alloca i32, align 4
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call2 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %4)
  store %struct._GimpToolInfo* %call2, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %5, null
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %9 = bitcast %struct._GimpToolInfo* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %call5 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %7, %struct._GimpObject* %10)
  store i32 %call5, i32* %index, align 4
  %11 = load i32, i32* %index, align 4
  %add = add nsw i32 %11, 1
  %12 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container6 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container6, align 8
  %call7 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %13)
  %cmp = icmp slt i32 %add, %call7
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %14 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container9 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container9, align 8
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %17 = bitcast %struct._GimpToolInfo* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %19 = load i32, i32* %index, align 4
  %add12 = add nsw i32 %19, 1
  %call13 = call i32 @gimp_container_reorder(%struct._GimpContainer* %15, %struct._GimpObject* %18, i32 %add12)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_lower_extend_clicked(%struct._GtkButton* %button, i32 %mask, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %mask.addr = alloca i32, align 4
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %index = alloca i32, align 4
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store i32 %mask, i32* %mask.addr, align 4
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call2 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %4)
  store %struct._GimpToolInfo* %call2, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool = icmp ne %struct._GimpToolInfo* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %mask.addr, align 4
  %and = and i32 %6, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %7, i32 0, i32 2
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call4 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %8)
  %sub = sub nsw i32 %call4, 1
  store i32 %sub, i32* %index, align 4
  %9 = load i32, i32* %index, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load i32, i32* %index, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %index, align 4
  %11 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container5 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %11, i32 0, i32 2
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container5, align 8
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %14 = bitcast %struct._GimpToolInfo* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %16 = load i32, i32* %index, align 4
  %call8 = call i32 @gimp_container_reorder(%struct._GimpContainer* %12, %struct._GimpObject* %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_reset_clicked(%struct._GtkButton* %button, %struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %object = alloca %struct._GimpObject*, align 8
  %visible = alloca i32, align 4
  %data4 = alloca i8*, align 8
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %default_tool_order = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 11
  %4 = load %struct._GList*, %struct._GList** %default_tool_order, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %call2 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %7, i8* %9)
  store %struct._GimpObject* %call2, %struct._GimpObject** %object, align 8
  %10 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool3 = icmp ne %struct._GimpObject* %10, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container5 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %11, i32 0, i32 2
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container5, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %14 = load i32, i32* %i, align 4
  %call6 = call i32 @gimp_container_reorder(%struct._GimpContainer* %12, %struct._GimpObject* %13, i32 %14)
  %15 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %16 = bitcast %struct._GimpObject* %15 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @g_object_get_data(%struct._GObject* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call8, i8** %data4, align 8
  %18 = load i8*, i8** %data4, align 8
  %19 = ptrtoint i8* %18 to i64
  %conv = trunc i64 %19 to i32
  store i32 %conv, i32* %visible, align 4
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %21 = bitcast %struct._GimpObject* %20 to i8*
  %22 = load i32, i32* %visible, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %22, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %23, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %25, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_tool_editor_revert_changes(%struct._GimpToolEditor* %tool_editor) #3 {
entry:
  %tool_editor.addr = alloca %struct._GimpToolEditor*, align 8
  %i = alloca i32, align 4
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpToolEditor* %tool_editor, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %0 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor.addr, align 8
  %1 = bitcast %struct._GimpToolEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %4, i32 0, i32 9
  %5 = load i32, i32* %n_tools, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %9, i32 0, i32 7
  %10 = load i8**, i8*** %initial_tool_order, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %7, i8* %11)
  store %struct._GimpObject* %call2, %struct._GimpObject** %object, align 8
  %12 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container3 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %container3, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %15 = load i32, i32* %i, align 4
  %call4 = call i32 @gimp_container_reorder(%struct._GimpContainer* %13, %struct._GimpObject* %14, i32 %15)
  %16 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %17 = bitcast %struct._GimpObject* %16 to i8*
  %18 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %18 to i64
  %19 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %19, i32 0, i32 8
  %20 = load i32*, i32** %initial_tool_visibility, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %20, i64 %idxprom5
  %21 = load i32, i32* %arrayidx6, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %21, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_class_init(%struct._GimpToolEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpToolEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpToolEditorClass* %klass, %struct._GimpToolEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpToolEditorClass*, %struct._GimpToolEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpToolEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tool_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tool_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GimpToolEditorClass*, %struct._GimpToolEditorClass** %klass.addr, align 8
  %6 = bitcast %struct._GimpToolEditorClass* %5 to i8*
  call void @g_type_class_add_private(i8* %6, i64 88)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %2, %struct._GimpToolEditorPrivate** %priv, align 8
  %3 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %visible_handler_id = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %3, i32 0, i32 10
  %4 = load i32, i32* %visible_handler_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %5, i32 0, i32 2
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %visible_handler_id2 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %7, i32 0, i32 10
  %8 = load i32, i32* %visible_handler_id2, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %6, i32 %8)
  %9 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %visible_handler_id3 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %9, i32 0, i32 10
  store i32 0, i32* %visible_handler_id3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %context = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %10, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %11 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %container4 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %11, i32 0, i32 2
  store %struct._GimpContainer* null, %struct._GimpContainer** %container4, align 8
  %12 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %raise_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %12, i32 0, i32 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %raise_button, align 8
  %13 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %lower_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %13, i32 0, i32 5
  store %struct._GtkWidget* null, %struct._GtkWidget** %lower_button, align 8
  %14 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %reset_button = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %14, i32 0, i32 6
  store %struct._GtkWidget* null, %struct._GtkWidget** %reset_button, align 8
  %15 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %scrolled = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %15, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %scrolled, align 8
  %16 = load i8*, i8** @gimp_tool_editor_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 80)
  %18 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 5
  %19 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %19(%struct._GObject* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tool_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool_editor = alloca %struct._GimpToolEditor*, align 8
  %priv = alloca %struct._GimpToolEditorPrivate*, align 8
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpToolEditor*
  store %struct._GimpToolEditor* %2, %struct._GimpToolEditor** %tool_editor, align 8
  %3 = load %struct._GimpToolEditor*, %struct._GimpToolEditor** %tool_editor, align 8
  %4 = bitcast %struct._GimpToolEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_editor_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpToolEditorPrivate*
  store %struct._GimpToolEditorPrivate* %5, %struct._GimpToolEditorPrivate** %priv, align 8
  %6 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %6, i32 0, i32 7
  %7 = load i8**, i8*** %initial_tool_order, align 8
  %tobool = icmp ne i8** %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %9, i32 0, i32 9
  %10 = load i32, i32* %n_tools, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order4 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %12, i32 0, i32 7
  %13 = load i8**, i8*** %initial_tool_order4, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order5 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %16, i32 0, i32 7
  %17 = load i8**, i8*** %initial_tool_order5, align 8
  %18 = bitcast i8** %17 to i8*
  call void @g_free(i8* %18)
  %19 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_order6 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %19, i32 0, i32 7
  store i8** null, i8*** %initial_tool_order6, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %20 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %20, i32 0, i32 8
  %21 = load i32*, i32** %initial_tool_visibility, align 8
  %tobool7 = icmp ne i32* %21, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %22 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %n_tools9 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %22, i32 0, i32 9
  %23 = load i32, i32* %n_tools9, align 4
  %conv = sext i32 %23 to i64
  %mul = mul i64 4, %conv
  %24 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility10 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %24, i32 0, i32 8
  %25 = load i32*, i32** %initial_tool_visibility10, align 8
  %26 = bitcast i32* %25 to i8*
  call void @g_slice_free1(i64 %mul, i8* %26)
  %27 = load %struct._GimpToolEditorPrivate*, %struct._GimpToolEditorPrivate** %priv, align 8
  %initial_tool_visibility11 = getelementptr inbounds %struct._GimpToolEditorPrivate, %struct._GimpToolEditorPrivate* %27, i32 0, i32 8
  store i32* null, i32** %initial_tool_visibility11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %28 = load i8*, i8** @gimp_tool_editor_parent_class, align 8
  %29 = bitcast i8* %28 to %struct._GTypeClass*
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %29, i64 80)
  %30 = bitcast %struct._GTypeClass* %call13 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %30, i32 0, i32 6
  %31 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %31(%struct._GObject* %32)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gimp_container_remove_handler(%struct._GimpContainer*, i32) #1

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext*) #1

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i8* @gimp_container_view_lookup(%struct._GimpContainerView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_row_changed(%struct._GtkTreeModel*, %struct._GtkTreePath*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

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
