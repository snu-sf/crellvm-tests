; ModuleID = './app/widgets/gimpdockcolumns.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMenuFactory = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDockColumnsClass = type { %struct._GtkBoxClass, void (%struct._GimpDockColumns*, %struct._GimpDock*)*, void (%struct._GimpDockColumns*, %struct._GimpDock*)* }
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
%struct._GimpDockColumns = type { %struct._GtkBox, %struct._GimpDockColumnsPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockColumnsPrivate = type { %struct._GimpContext*, %struct._GimpDialogFactory*, %struct._GimpUIManager*, %struct._GList*, %struct._GtkWidget* }
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
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GtkOrientable = type opaque
%struct._GimpPanedBox = type { %struct._GtkBox, %struct._GimpPanedBoxPrivate* }
%struct._GimpPanedBoxPrivate = type opaque
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbookPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpDockablePrivate = type opaque

@gimp_dock_columns_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpDockColumns\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dock_columns_new = private unnamed_addr constant [22 x i8] c"gimp_dock_columns_new\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"GIMP_IS_DIALOG_FACTORY (dialog_factory)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP_IS_UI_MANAGER (ui_manager)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dialog-factory\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ui-manager\00", align 1
@__func__.gimp_dock_columns_add_dock = private unnamed_addr constant [27 x i8] c"gimp_dock_columns_add_dock\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"GIMP_IS_DOCK_COLUMNS (dock_columns)\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Adding GimpDock %p to GimpDockColumns %p\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"book-removed\00", align 1
@dock_columns_signals = internal global [2 x i32] zeroinitializer, align 4
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8
@__func__.gimp_dock_columns_remove_dock = private unnamed_addr constant [30 x i8] c"gimp_dock_columns_remove_dock\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Removing GimpDock %p from GimpDockColumns %p\00", align 1
@__func__.gimp_dock_columns_get_docks = private unnamed_addr constant [28 x i8] c"gimp_dock_columns_get_docks\00", align 1
@__func__.gimp_dock_columns_get_context = private unnamed_addr constant [30 x i8] c"gimp_dock_columns_get_context\00", align 1
@__func__.gimp_dock_columns_set_context = private unnamed_addr constant [30 x i8] c"gimp_dock_columns_set_context\00", align 1
@__func__.gimp_dock_columns_get_dialog_factory = private unnamed_addr constant [37 x i8] c"gimp_dock_columns_get_dialog_factory\00", align 1
@__func__.gimp_dock_columns_get_ui_manager = private unnamed_addr constant [33 x i8] c"gimp_dock_columns_get_ui_manager\00", align 1
@gimp_dock_columns_parent_class = internal global i8* null, align 8
@GimpDockColumns_private_offset = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"dock-added\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"dock-removed\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"gimpdockcolumns.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_dock_columns_dock_book_removed = private unnamed_addr constant [36 x i8] c"gimp_dock_columns_dock_book_removed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dock_columns_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dock_columns_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dock_columns_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dock_columns_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDockColumns*)* @gimp_dock_columns_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dock_columns_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dock_columns_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dock_columns_parent_class, align 8
  %1 = load i32, i32* @GimpDockColumns_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDockColumns_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDockColumnsClass*
  call void @gimp_dock_columns_class_init(%struct._GimpDockColumnsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_init(%struct._GimpDockColumns* %dock_columns) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 0)
  %3 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %4 = bitcast %struct._GimpDockColumns* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dock_columns_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDockColumnsPrivate*
  %6 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %6, i32 0, i32 1
  store %struct._GimpDockColumnsPrivate* %5, %struct._GimpDockColumnsPrivate** %p, align 8
  %call4 = call %struct._GtkWidget* @gimp_paned_box_new(i32 0, i32 0, i32 0)
  %7 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %7, i32 0, i32 1
  %8 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p5, align 8
  %paned_hbox = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %8, i32 0, i32 4
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %paned_hbox, align 8
  %9 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p6 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %9, i32 0, i32 1
  %10 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p6, align 8
  %paned_hbox7 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %10, i32 0, i32 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_hbox7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_paned_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpPanedBox*
  %14 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %15 = bitcast %struct._GimpDockColumns* %14 to i8*
  call void @gimp_paned_box_set_dropped_cb(%struct._GimpPanedBox* %13, i32 (%struct._GtkWidget*, i32, i8*)* @gimp_dock_columns_dropped_cb, i8* %15)
  %16 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %17 = bitcast %struct._GimpDockColumns* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %19 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p12 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %19, i32 0, i32 1
  %20 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p12, align 8
  %paned_hbox13 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %20, i32 0, i32 4
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_hbox13, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %21, i32 1, i32 1, i32 0)
  %22 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %22, i32 0, i32 1
  %23 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p14, align 8
  %paned_hbox15 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %23, i32 0, i32 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_hbox15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dock_columns_new(%struct._GimpContext* %context, %struct._GimpDialogFactory* %dialog_factory, %struct._GimpUIManager* %ui_manager) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %dialog_factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %ui_manager.addr = alloca %struct._GimpUIManager*, align 8
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
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpDialogFactory* %dialog_factory, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  store %struct._GimpUIManager* %ui_manager, %struct._GimpUIManager** %ui_manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_columns_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %14 = bitcast %struct._GimpDialogFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dialog_factory_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_columns_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %27 = bitcast %struct._GimpUIManager* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_ui_manager_get_type() #6
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
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_columns_new, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %call67 = call i64 @gimp_dock_columns_get_type() #6
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %40 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %41 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager.addr, align 8
  %call68 = call i8* (i64, i8*, ...) @g_object_new(i64 %call67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._GimpContext* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), %struct._GimpDialogFactory* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct._GimpUIManager* %41, i8* null)
  %42 = bitcast i8* %call68 to %struct._GtkWidget*
  store %struct._GtkWidget* %42, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.66, %if.else.64, %if.else.36, %if.else.9
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %43
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %dock_columns, %struct._GimpDock* %dock, i32 %index) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dock_columns_add_dock, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dock_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dock_columns_add_dock, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 4
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.body.39
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %28 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dock_columns_add_dock, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), %struct._GimpDock* %27, %struct._GimpDockColumns* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.body.39
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %29 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %29, i32 0, i32 1
  %30 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %docks = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %30, i32 0, i32 3
  %31 = load %struct._GList*, %struct._GList** %docks, align 8
  %32 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %33 = bitcast %struct._GimpDock* %32 to i8*
  %call44 = call %struct._GList* @g_list_append(%struct._GList* %31, i8* %33)
  %34 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p45 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %34, i32 0, i32 1
  %35 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p45, align 8
  %docks46 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %35, i32 0, i32 3
  store %struct._GList* %call44, %struct._GList** %docks46, align 8
  %36 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %37 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p47 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %37, i32 0, i32 1
  %38 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p47, align 8
  %context = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %38, i32 0, i32 0
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_dock_update_with_context(%struct._GimpDock* %36, %struct._GimpContext* %39)
  %40 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p48 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %40, i32 0, i32 1
  %41 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p48, align 8
  %paned_hbox = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %41, i32 0, i32 4
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_hbox, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_paned_box_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call49)
  %44 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpPanedBox*
  %45 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %46 = bitcast %struct._GimpDock* %45 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_widget_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call51)
  %47 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkWidget*
  %48 = load i32, i32* %index.addr, align 4
  call void @gimp_paned_box_add_widget(%struct._GimpPanedBox* %44, %struct._GtkWidget* %47, i32 %48)
  %49 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %50 = bitcast %struct._GimpDock* %49 to i8*
  %51 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %52 = bitcast %struct._GimpDockColumns* %51 to i8*
  %call53 = call i64 @g_signal_connect_object(i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockColumns*, %struct._GimpDockbook*, %struct._GimpDock*)* @gimp_dock_columns_dock_book_removed to void ()*), i8* %52, i32 2)
  %53 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %54 = bitcast %struct._GimpDockColumns* %53 to i8*
  %55 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dock_columns_signals, i32 0, i64 0), align 4
  %56 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %54, i32 %55, i32 0, %struct._GimpDock* %56)
  br label %return

return:                                           ; preds = %do.end.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @gimp_dock_update_with_context(%struct._GimpDock*, %struct._GimpContext*) #1

declare void @gimp_paned_box_add_widget(%struct._GimpPanedBox*, %struct._GtkWidget*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paned_box_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_dock_book_removed(%struct._GimpDockColumns* %dock_columns, %struct._GimpDockbook* %dockbook, %struct._GimpDock* %dock) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_dock_columns_dock_book_removed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call11 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %13)
  %cmp12 = icmp eq %struct._GList* %call11, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.43

land.lhs.true.13:                                 ; preds = %do.end
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %15 = bitcast %struct._GimpDock* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_toolbox_get_type() #6
  store i64 %call18, i64* %__t17, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.13
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %land.lhs.true.13
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type28, align 8
  %22 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %21, %22
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %24 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %25 = load i32, i32* %__r20, align 4
  store i32 %25, i32* %tmp35
  %26 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %26, 0
  br i1 %tobool36, label %if.end.43, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.34
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %28 = bitcast %struct._GimpDock* %27 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_widget_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call38)
  %29 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkWidget*
  %call40 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %29)
  %cmp41 = icmp ne %struct._GtkWidget* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.37
  %30 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %31 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns* %30, %struct._GimpDock* %31)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.then.42, %land.lhs.true.37, %if.end.34, %do.end
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_columns_prepare_dockbook(%struct._GimpDockColumns* %dock_columns, i32 %dock_index, %struct._GtkWidget** %dockbook_p) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dock_index.addr = alloca i32, align 4
  %dockbook_p.addr = alloca %struct._GtkWidget**, align 8
  %dock = alloca %struct._GtkWidget*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store i32 %dock_index, i32* %dock_index.addr, align 4
  store %struct._GtkWidget** %dockbook_p, %struct._GtkWidget*** %dockbook_p.addr, align 8
  %call = call %struct._GtkWidget* @gimp_menu_dock_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dock, align 8
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_dock_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDock*
  %4 = load i32, i32* %dock_index.addr, align 4
  call void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %0, %struct._GimpDock* %3, i32 %4)
  %5 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %call3 = call %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory* %5)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %dockbook, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_dock_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDock*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_dockbook_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDockbook*
  call void @gimp_dock_add_book(%struct._GimpDock* %8, %struct._GimpDockbook* %11, i32 -1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %15 = load %struct._GtkWidget**, %struct._GtkWidget*** %dockbook_p.addr, align 8
  %tobool = icmp ne %struct._GtkWidget** %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %17 = load %struct._GtkWidget**, %struct._GtkWidget*** %dockbook_p.addr, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_menu_dock_new() #1

declare %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory*) #1

declare void @gimp_dock_add_book(%struct._GimpDock*, %struct._GimpDockbook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns* %dock_columns, %struct._GimpDock* %dock) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_columns_remove_dock, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dock_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_columns_remove_dock, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 4
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.body.39
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %28 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_columns_remove_dock, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), %struct._GimpDock* %27, %struct._GimpDockColumns* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.body.39
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %29 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %29, i32 0, i32 1
  %30 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %docks = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %30, i32 0, i32 3
  %31 = load %struct._GList*, %struct._GList** %docks, align 8
  %32 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %33 = bitcast %struct._GimpDock* %32 to i8*
  %call44 = call %struct._GList* @g_list_remove(%struct._GList* %31, i8* %33)
  %34 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p45 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %34, i32 0, i32 1
  %35 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p45, align 8
  %docks46 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %35, i32 0, i32 3
  store %struct._GList* %call44, %struct._GList** %docks46, align 8
  %36 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_update_with_context(%struct._GimpDock* %36, %struct._GimpContext* null)
  %37 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %38 = bitcast %struct._GimpDock* %37 to i8*
  %39 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %40 = bitcast %struct._GimpDockColumns* %39 to i8*
  %call47 = call i32 @g_signal_handlers_disconnect_matched(i8* %38, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDockColumns*, %struct._GimpDockbook*, %struct._GimpDock*)* @gimp_dock_columns_dock_book_removed to i8*), i8* %40)
  %41 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %42 = bitcast %struct._GimpDock* %41 to i8*
  %call48 = call i8* @g_object_ref(i8* %42)
  %43 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p49 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %43, i32 0, i32 1
  %44 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p49, align 8
  %paned_hbox = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %44, i32 0, i32 4
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_hbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_paned_box_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call50)
  %47 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpPanedBox*
  %48 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %49 = bitcast %struct._GimpDock* %48 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_widget_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call52)
  %50 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWidget*
  call void @gimp_paned_box_remove_widget(%struct._GimpPanedBox* %47, %struct._GtkWidget* %50)
  %51 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %52 = bitcast %struct._GimpDockColumns* %51 to i8*
  %53 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dock_columns_signals, i32 0, i64 1), align 4
  %54 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %52, i32 %53, i32 0, %struct._GimpDock* %54)
  %55 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %56 = bitcast %struct._GimpDock* %55 to i8*
  call void @g_object_unref(i8* %56)
  br label %return

return:                                           ; preds = %do.end.43, %if.else.36, %if.else.9
  ret void
}

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_paned_box_remove_widget(%struct._GimpPanedBox*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %dock_columns) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dock_columns_get_docks, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %13, i32 0, i32 1
  %14 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %docks = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %14, i32 0, i32 3
  %15 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %15, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_dock_columns_get_context(%struct._GimpDockColumns* %dock_columns) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_columns_get_context, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %13, i32 0, i32 1
  %14 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %15, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dock_columns_set_context(%struct._GimpDockColumns* %dock_columns, %struct._GimpContext* %context) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_columns_set_context, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %14, i32 0, i32 1
  %15 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %context11 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %15, i32 0, i32 0
  store %struct._GimpContext* %13, %struct._GimpContext** %context11, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactory* @gimp_dock_columns_get_dialog_factory(%struct._GimpDockColumns* %dock_columns) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactory*, align 8
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dock_columns_get_dialog_factory, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %13, i32 0, i32 1
  %14 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %14, i32 0, i32 1
  %15 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  store %struct._GimpDialogFactory* %15, %struct._GimpDialogFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %retval
  ret %struct._GimpDialogFactory* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_dock_columns_get_ui_manager(%struct._GimpDockColumns* %dock_columns) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_columns_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dock_columns_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %13, i32 0, i32 1
  %14 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  store %struct._GimpUIManager* %15, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %16
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_class_init(%struct._GimpDockColumnsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDockColumnsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDockColumnsClass* %klass, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %0 = load %struct._GimpDockColumnsClass*, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDockColumnsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dock_columns_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dock_columns_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dock_columns_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpDockColumnsClass*, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %dock_added = getelementptr inbounds %struct._GimpDockColumnsClass, %struct._GimpDockColumnsClass* %6, i32 0, i32 1
  store void (%struct._GimpDockColumns*, %struct._GimpDock*)* @gimp_dock_columns_real_dock_added, void (%struct._GimpDockColumns*, %struct._GimpDock*)** %dock_added, align 8
  %7 = load %struct._GimpDockColumnsClass*, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %dock_removed = getelementptr inbounds %struct._GimpDockColumnsClass, %struct._GimpDockColumnsClass* %7, i32 0, i32 2
  store void (%struct._GimpDockColumns*, %struct._GimpDock*)* @gimp_dock_columns_real_dock_removed, void (%struct._GimpDockColumns*, %struct._GimpDock*)** %dock_removed, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_context_get_type() #6
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_dialog_factory_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 2, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_ui_manager_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 3, %struct._GParamSpec* %call6)
  %11 = load %struct._GimpDockColumnsClass*, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %12 = bitcast %struct._GimpDockColumnsClass* %11 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %call7 = call i64 @gimp_dock_get_type() #6
  %call8 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 %13, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call7)
  store i32 %call8, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dock_columns_signals, i32 0, i64 0), align 4
  %14 = load %struct._GimpDockColumnsClass*, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %15 = bitcast %struct._GimpDockColumnsClass* %14 to %struct._GTypeClass*
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type9, align 8
  %call10 = call i64 @gimp_dock_get_type() #6
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 %16, i32 1, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call10)
  store i32 %call11, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dock_columns_signals, i32 0, i64 1), align 4
  %17 = load %struct._GimpDockColumnsClass*, %struct._GimpDockColumnsClass** %klass.addr, align 8
  %18 = bitcast %struct._GimpDockColumnsClass* %17 to i8*
  call void @g_type_class_add_private(i8* %18, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_columns_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %2, %struct._GimpDockColumns** %dock_columns, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %3, i32 0, i32 1
  %4 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %docks = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %4, i32 0, i32 3
  %5 = load %struct._GList*, %struct._GList** %docks, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p2 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %6, i32 0, i32 1
  %7 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p2, align 8
  %docks3 = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %7, i32 0, i32 3
  %8 = load %struct._GList*, %struct._GList** %docks3, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpDock*
  store %struct._GimpDock* %10, %struct._GimpDock** %dock, align 8
  %11 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %12 = bitcast %struct._GimpDock* %11 to i8*
  %call4 = call i8* @g_object_ref(i8* %12)
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  call void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns* %13, %struct._GimpDock* %14)
  %15 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %16 = bitcast %struct._GimpDock* %15 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call5)
  %17 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %17)
  %18 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %19 = bitcast %struct._GimpDock* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** @gimp_dock_columns_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 80)
  %22 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %22, i32 0, i32 5
  %23 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %23(%struct._GObject* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_columns_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %2, %struct._GimpDockColumns** %dock_columns, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpContext*
  %6 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %6, i32 0, i32 1
  %7 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %7, i32 0, i32 0
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call4 to %struct._GimpDialogFactory*
  %10 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p5 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %10, i32 0, i32 1
  %11 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p5, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %11, i32 0, i32 1
  store %struct._GimpDialogFactory* %9, %struct._GimpDialogFactory** %dialog_factory, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i8* @g_value_get_object(%struct._GValue* %12)
  %13 = bitcast i8* %call7 to %struct._GimpUIManager*
  %14 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p8 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %14, i32 0, i32 1
  %15 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p8, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %15, i32 0, i32 2
  store %struct._GimpUIManager* %13, %struct._GimpUIManager** %ui_manager, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call9 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type11, align 8
  %call12 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %19, i8* %21, i8* %call9, i8* %call12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_columns_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %2, %struct._GimpDockColumns** %dock_columns, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %5, i32 0, i32 1
  %6 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = bitcast %struct._GimpContext* %7 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p3 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %10, i32 0, i32 1
  %11 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p3, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %11, i32 0, i32 1
  %12 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %13 = bitcast %struct._GimpDialogFactory* %12 to i8*
  call void @g_value_set_object(%struct._GValue* %9, i8* %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %p5 = getelementptr inbounds %struct._GimpDockColumns, %struct._GimpDockColumns* %15, i32 0, i32 1
  %16 = load %struct._GimpDockColumnsPrivate*, %struct._GimpDockColumnsPrivate** %p5, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockColumnsPrivate, %struct._GimpDockColumnsPrivate* %16, i32 0, i32 2
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %18 = bitcast %struct._GimpUIManager* %17 to i8*
  call void @g_value_set_object(%struct._GValue* %14, i8* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %22, i8* %24, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_real_dock_added(%struct._GimpDockColumns* %dock_columns, %struct._GimpDock* %dock) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_columns_real_dock_removed(%struct._GimpDockColumns* %dock_columns, %struct._GimpDock* %dock) #3 {
entry:
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_paned_box_new(i32, i32, i32) #1

declare void @gimp_paned_box_set_dropped_cb(%struct._GimpPanedBox*, i32 (%struct._GtkWidget*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dock_columns_dropped_cb(%struct._GtkWidget* %source, i32 %insert_index, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca %struct._GtkWidget*, align 8
  %insert_index.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %source, %struct._GtkWidget** %source.addr, align 8
  store i32 %insert_index, i32* %insert_index.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_columns_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %2, %struct._GimpDockColumns** %dock_columns, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %source.addr, align 8
  %call2 = call %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockbook, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %6 = load i32, i32* %insert_index.addr, align 4
  call void @gimp_dock_columns_prepare_dockbook(%struct._GimpDockColumns* %5, i32 %6, %struct._GtkWidget** %dockbook)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call3 = call i8* @g_object_ref(i8* %8)
  %9 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %10 = bitcast %struct._GimpDockable* %9 to i8*
  %call4 = call i8* @g_object_ref(i8* %10)
  %11 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call5 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %11)
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %call5, %struct._GimpDockable* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_dockbook_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDockbook*
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_add(%struct._GimpDockbook* %15, %struct._GimpDockable* %16, i32 -1)
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %18 = bitcast %struct._GimpDockable* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  call void @g_object_unref(i8* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget*) #1

declare void @gimp_dockbook_remove(%struct._GimpDockbook*, %struct._GimpDockable*) #1

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare void @gimp_dockbook_add(%struct._GimpDockbook*, %struct._GimpDockable*, i32) #1

declare %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #2

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

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
