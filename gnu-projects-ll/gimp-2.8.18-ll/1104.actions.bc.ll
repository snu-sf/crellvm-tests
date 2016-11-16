; ModuleID = './app/actions/actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionFactory = type { %struct._GimpObject, %struct._Gimp*, %struct._GList* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpActionFactoryEntry = type { i8*, i8*, i8*, void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpNavigationEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpDisplayShell*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpItemTreeView = type { %struct._GimpContainerTreeView, %struct._GimpItemTreeViewPriv* }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GimpItemTreeViewPriv = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GParamSpecDouble = type { %struct._GParamSpec, double, double, double, double }
%struct._GParamSpecInt = type { %struct._GParamSpec, i32, i32, i32 }
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque

@global_action_factory = global %struct._GimpActionFactory* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Gimp-Actions\00", align 1
@__func__.actions_init = private unnamed_addr constant [13 x i8] c"actions_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"global_action_factory == NULL\00", align 1
@action_groups = internal constant [43 x %struct._GimpActionFactoryEntry] [%struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), void (%struct._GimpActionGroup*)* @brush_editor_actions_setup, void (%struct._GimpActionGroup*, i8*)* @brush_editor_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), void (%struct._GimpActionGroup*)* @brushes_actions_setup, void (%struct._GimpActionGroup*, i8*)* @brushes_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), void (%struct._GimpActionGroup*)* @buffers_actions_setup, void (%struct._GimpActionGroup*, i8*)* @buffers_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (%struct._GimpActionGroup*)* @channels_actions_setup, void (%struct._GimpActionGroup*, i8*)* @channels_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void (%struct._GimpActionGroup*)* @colormap_actions_setup, void (%struct._GimpActionGroup*, i8*)* @colormap_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), void (%struct._GimpActionGroup*)* @config_actions_setup, void (%struct._GimpActionGroup*, i8*)* @config_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), void (%struct._GimpActionGroup*)* @context_actions_setup, void (%struct._GimpActionGroup*, i8*)* @context_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @cursor_info_actions_setup, void (%struct._GimpActionGroup*, i8*)* @cursor_info_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @debug_actions_setup, void (%struct._GimpActionGroup*, i8*)* @debug_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @dialogs_actions_setup, void (%struct._GimpActionGroup*, i8*)* @dialogs_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @dock_actions_setup, void (%struct._GimpActionGroup*, i8*)* @dock_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @dockable_actions_setup, void (%struct._GimpActionGroup*, i8*)* @dockable_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @documents_actions_setup, void (%struct._GimpActionGroup*, i8*)* @documents_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), void (%struct._GimpActionGroup*)* @drawable_actions_setup, void (%struct._GimpActionGroup*, i8*)* @drawable_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void (%struct._GimpActionGroup*)* @dynamics_actions_setup, void (%struct._GimpActionGroup*, i8*)* @dynamics_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), void (%struct._GimpActionGroup*)* @dynamics_editor_actions_setup, void (%struct._GimpActionGroup*, i8*)* @dynamics_editor_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), void (%struct._GimpActionGroup*)* @edit_actions_setup, void (%struct._GimpActionGroup*, i8*)* @edit_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), void (%struct._GimpActionGroup*)* @error_console_actions_setup, void (%struct._GimpActionGroup*, i8*)* @error_console_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), void (%struct._GimpActionGroup*)* @file_actions_setup, void (%struct._GimpActionGroup*, i8*)* @file_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), void (%struct._GimpActionGroup*)* @fonts_actions_setup, void (%struct._GimpActionGroup*, i8*)* @fonts_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), void (%struct._GimpActionGroup*)* @gradient_editor_actions_setup, void (%struct._GimpActionGroup*, i8*)* @gradient_editor_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), void (%struct._GimpActionGroup*)* @gradients_actions_setup, void (%struct._GimpActionGroup*, i8*)* @gradients_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), void (%struct._GimpActionGroup*)* @tool_presets_actions_setup, void (%struct._GimpActionGroup*, i8*)* @tool_presets_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), void (%struct._GimpActionGroup*)* @tool_preset_editor_actions_setup, void (%struct._GimpActionGroup*, i8*)* @tool_preset_editor_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), void (%struct._GimpActionGroup*)* @help_actions_setup, void (%struct._GimpActionGroup*, i8*)* @help_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), void (%struct._GimpActionGroup*)* @image_actions_setup, void (%struct._GimpActionGroup*, i8*)* @image_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), void (%struct._GimpActionGroup*)* @images_actions_setup, void (%struct._GimpActionGroup*, i8*)* @images_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), void (%struct._GimpActionGroup*)* @layers_actions_setup, void (%struct._GimpActionGroup*, i8*)* @layers_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0), void (%struct._GimpActionGroup*)* @palette_editor_actions_setup, void (%struct._GimpActionGroup*, i8*)* @palette_editor_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0), void (%struct._GimpActionGroup*)* @palettes_actions_setup, void (%struct._GimpActionGroup*, i8*)* @palettes_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0), void (%struct._GimpActionGroup*)* @patterns_actions_setup, void (%struct._GimpActionGroup*, i8*)* @patterns_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), void (%struct._GimpActionGroup*)* @plug_in_actions_setup, void (%struct._GimpActionGroup*, i8*)* @plug_in_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), void (%struct._GimpActionGroup*)* @quick_mask_actions_setup, void (%struct._GimpActionGroup*, i8*)* @quick_mask_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.103, i32 0, i32 0), void (%struct._GimpActionGroup*)* @sample_points_actions_setup, void (%struct._GimpActionGroup*, i8*)* @sample_points_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i32 0, i32 0), void (%struct._GimpActionGroup*)* @select_actions_setup, void (%struct._GimpActionGroup*, i8*)* @select_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), void (%struct._GimpActionGroup*)* @templates_actions_setup, void (%struct._GimpActionGroup*, i8*)* @templates_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), void (%struct._GimpActionGroup*)* @text_tool_actions_setup, void (%struct._GimpActionGroup*, i8*)* @text_tool_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), void (%struct._GimpActionGroup*)* @text_editor_actions_setup, void (%struct._GimpActionGroup*, i8*)* @text_editor_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), void (%struct._GimpActionGroup*)* @tool_options_actions_setup, void (%struct._GimpActionGroup*, i8*)* @tool_options_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), void (%struct._GimpActionGroup*)* @tools_actions_setup, void (%struct._GimpActionGroup*, i8*)* @tools_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), void (%struct._GimpActionGroup*)* @vectors_actions_setup, void (%struct._GimpActionGroup*, i8*)* @vectors_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), void (%struct._GimpActionGroup*)* @view_actions_setup, void (%struct._GimpActionGroup*, i8*)* @view_actions_update }, %struct._GimpActionFactoryEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), i8* null, void (%struct._GimpActionGroup*)* @windows_actions_setup, void (%struct._GimpActionGroup*, i8*)* @windows_actions_update }], align 16
@__func__.actions_exit = private unnamed_addr constant [13 x i8] c"actions_exit\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"global_action_factory != NULL\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"global_action_factory->gimp == gimp\00", align 1
@__func__.action_select_value = private unnamed_addr constant [20 x i8] c"action_select_value\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"delta_factor >= 0.0\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"actions.c\00", align 1
@__func__.action_select_property = private unnamed_addr constant [23 x i8] c"action_select_property\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"display == NULL || GIMP_IS_DISPLAY (display)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (object)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"property_name != NULL\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"%s: %.2f\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s: %d\00", align 1
@__func__.action_select_object = private unnamed_addr constant [21 x i8] c"action_select_object\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER (container)\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"current == NULL || GIMP_IS_OBJECT (current)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"brush-editor\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Brush Editor\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Brushes\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Buffers\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gimp-channel\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"colormap\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Colormap\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Configuration\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"gtk-preferences\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Context\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"cursor-info\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Pointer Information\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"dialogs\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Dialogs\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Dock\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"dockable\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Dockable\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"documents\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Document History\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Drawable\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"gimp-layer\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"dynamics\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"Paint Dynamics\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"gimp-dynamics\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"dynamics-editor\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Paint Dynamics Editor\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Edit\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"error-console\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Error Console\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"gtk-file\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Fonts\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"gtk-select-font\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"gradient-editor\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Gradient Editor\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"gradients\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"Gradients\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"tool-presets\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Tool Presets\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"gimp-tool-preset\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"tool-preset-editor\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"Tool Preset Editor\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"gtk-help\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"gimp-image\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Images\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"palette-editor\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"Palette Editor\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"Palettes\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"Patterns\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"plug-in\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"Plug-Ins\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"gimp-plugin\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"quick-mask\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"Quick Mask\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"gimp-quick-mask-on\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"sample-points\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"Sample Points\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"gimp-sample-point\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"gimp-selection\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"templates\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"Templates\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"gimp-template\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"text-tool\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"Text Tool\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"text-editor\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"Text Editor\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"Tool Options\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"tools\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"gimp-tools\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"Paths\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"gimp-path\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"gimp-visible\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"Windows\00", align 1

; Function Attrs: nounwind uwtable
define void @actions_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %i = alloca i32, align 4
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
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.actions_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** @global_action_factory, align 8
  %cmp12 = icmp eq %struct._GimpActionFactory* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.actions_init, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpActionFactory* @gimp_action_factory_new(%struct._Gimp* %14)
  store %struct._GimpActionFactory* %call17, %struct._GimpActionFactory** @global_action_factory, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %15 = load i32, i32* %i, align 4
  %conv = sext i32 %15 to i64
  %cmp18 = icmp ult i64 %conv, 43
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** @global_action_factory, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [43 x %struct._GimpActionFactoryEntry], [43 x %struct._GimpActionFactoryEntry]* @action_groups, i32 0, i64 %idxprom
  %identifier = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %arrayidx, i32 0, i32 0
  %18 = load i8*, i8** %identifier, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [43 x %struct._GimpActionFactoryEntry], [43 x %struct._GimpActionFactoryEntry]* @action_groups, i32 0, i64 %idxprom20
  %label = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %arrayidx21, i32 0, i32 1
  %20 = load i8*, i8** %label, align 8
  %call22 = call i8* @gettext(i8* %20) #5
  %21 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [43 x %struct._GimpActionFactoryEntry], [43 x %struct._GimpActionFactoryEntry]* @action_groups, i32 0, i64 %idxprom23
  %stock_id = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %arrayidx24, i32 0, i32 2
  %22 = load i8*, i8** %stock_id, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [43 x %struct._GimpActionFactoryEntry], [43 x %struct._GimpActionFactoryEntry]* @action_groups, i32 0, i64 %idxprom25
  %setup_func = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %arrayidx26, i32 0, i32 3
  %24 = load void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*)** %setup_func, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [43 x %struct._GimpActionFactoryEntry], [43 x %struct._GimpActionFactoryEntry]* @action_groups, i32 0, i64 %idxprom27
  %update_func = getelementptr inbounds %struct._GimpActionFactoryEntry, %struct._GimpActionFactoryEntry* %arrayidx28, i32 0, i32 4
  %26 = load void (%struct._GimpActionGroup*, i8*)*, void (%struct._GimpActionGroup*, i8*)** %update_func, align 8
  call void @gimp_action_factory_group_register(%struct._GimpActionFactory* %16, i8* %18, i8* %call22, i8* %22, void (%struct._GimpActionGroup*)* %24, void (%struct._GimpActionGroup*, i8*)* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpActionFactory* @gimp_action_factory_new(%struct._Gimp*) #3

declare void @gimp_action_factory_group_register(%struct._GimpActionFactory*, i8*, i8*, i8*, void (%struct._GimpActionGroup*)*, void (%struct._GimpActionGroup*, i8*)*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @actions_exit(%struct._Gimp* %gimp) #0 {
entry:
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
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.actions_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** @global_action_factory, align 8
  %cmp12 = icmp ne %struct._GimpActionFactory* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.actions_exit, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** @global_action_factory, align 8
  %gimp18 = getelementptr inbounds %struct._GimpActionFactory, %struct._GimpActionFactory* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp18, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %cmp19 = icmp eq %struct._Gimp* %15, %16
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.actions_exit, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** @global_action_factory, align 8
  %18 = bitcast %struct._GimpActionFactory* %17 to i8*
  call void @g_object_unref(i8* %18)
  store %struct._GimpActionFactory* null, %struct._GimpActionFactory** @global_action_factory, align 8
  br label %return

return:                                           ; preds = %do.end.23, %if.else.21, %if.else.14, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._Gimp* @action_data_get_gimp(i8* %data) #0 {
entry:
  %retval = alloca %struct._Gimp*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %__inst68 = alloca %struct._GTypeInstance*, align 8
  %__t70 = alloca i64, align 8
  %__r73 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %__inst94 = alloca %struct._GTypeInstance*, align 8
  %__t96 = alloca i64, align 8
  %__r99 = alloca i32, align 4
  %tmp114 = alloca i32, align 4
  %__inst120 = alloca %struct._GTypeInstance*, align 8
  %__t122 = alloca i64, align 8
  %__r125 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %__inst146 = alloca %struct._GTypeInstance*, align 8
  %__t148 = alloca i64, align 8
  %__r151 = alloca i32, align 4
  %tmp166 = alloca i32, align 4
  %__inst172 = alloca %struct._GTypeInstance*, align 8
  %__t174 = alloca i64, align 8
  %__r177 = alloca i32, align 4
  %tmp192 = alloca i32, align 4
  %__inst198 = alloca %struct._GTypeInstance*, align 8
  %__t200 = alloca i64, align 8
  %__r203 = alloca i32, align 4
  %tmp218 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._Gimp* null, %struct._Gimp** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GimpDisplay*
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  store %struct._Gimp* %16, %struct._Gimp** %retval
  br label %return

if.else.12:                                       ; preds = %if.end.9
  %17 = load i8*, i8** %data.addr, align 8
  %18 = bitcast i8* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_window_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.else.12
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type27, align 8
  %25 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %24, %25
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %27 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %28 = load i32, i32* %__r19, align 4
  store i32 %28, i32* %tmp34
  %29 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %29, 0
  br i1 %tobool35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.end.33
  %30 = load i8*, i8** %data.addr, align 8
  %31 = bitcast i8* %30 to %struct._GimpImageWindow*
  %call38 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %31)
  store %struct._GimpDisplayShell* %call38, %struct._GimpDisplayShell** %shell, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool39 = icmp ne %struct._GimpDisplayShell* %32, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 1
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp40 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp40, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._Gimp* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._Gimp* %cond, %struct._Gimp** %retval
  br label %return

if.else.41:                                       ; preds = %if.end.33
  %36 = load i8*, i8** %data.addr, align 8
  %37 = bitcast i8* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gimp_get_type() #6
  store i64 %call46, i64* %__t45, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %if.else.41
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %if.else.41
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type56, align 8
  %44 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %43, %44
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %46 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #7
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %47 = load i32, i32* %__r48, align 4
  store i32 %47, i32* %tmp63
  %48 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %48, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  %49 = load i8*, i8** %data.addr, align 8
  %50 = bitcast i8* %49 to %struct._Gimp*
  store %struct._Gimp* %50, %struct._Gimp** %retval
  br label %return

if.else.66:                                       ; preds = %if.end.62
  %51 = load i8*, i8** %data.addr, align 8
  %52 = bitcast i8* %51 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %52, %struct._GTypeInstance** %__inst68, align 8
  %call71 = call i64 @gimp_dock_get_type() #6
  store i64 %call71, i64* %__t70, align 8
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %tobool74 = icmp ne %struct._GTypeInstance* %53, null
  br i1 %tobool74, label %if.else.76, label %if.then.75

if.then.75:                                       ; preds = %if.else.66
  store i32 0, i32* %__r73, align 4
  br label %if.end.87

if.else.76:                                       ; preds = %if.else.66
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %tobool78 = icmp ne %struct._GTypeClass* %55, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.84

land.lhs.true.79:                                 ; preds = %if.else.76
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %g_type81 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %57, i32 0, i32 0
  %58 = load i64, i64* %g_type81, align 8
  %59 = load i64, i64* %__t70, align 8
  %cmp82 = icmp eq i64 %58, %59
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.79
  store i32 1, i32* %__r73, align 4
  br label %if.end.86

if.else.84:                                       ; preds = %land.lhs.true.79, %if.else.76
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %61 = load i64, i64* %__t70, align 8
  %call85 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %60, i64 %61) #7
  store i32 %call85, i32* %__r73, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.83
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.75
  %62 = load i32, i32* %__r73, align 4
  store i32 %62, i32* %tmp88
  %63 = load i32, i32* %tmp88
  %tobool89 = icmp ne i32 %63, 0
  br i1 %tobool89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.end.87
  %64 = load i8*, i8** %data.addr, align 8
  %65 = bitcast i8* %64 to %struct._GimpDock*
  %call91 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %65)
  store %struct._GimpContext* %call91, %struct._GimpContext** %context, align 8
  br label %if.end.227

if.else.92:                                       ; preds = %if.end.87
  %66 = load i8*, i8** %data.addr, align 8
  %67 = bitcast i8* %66 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %67, %struct._GTypeInstance** %__inst94, align 8
  %call97 = call i64 @gimp_dock_window_get_type() #6
  store i64 %call97, i64* %__t96, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %tobool100 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool100, label %if.else.102, label %if.then.101

if.then.101:                                      ; preds = %if.else.92
  store i32 0, i32* %__r99, align 4
  br label %if.end.113

if.else.102:                                      ; preds = %if.else.92
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %g_class103 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class103, align 8
  %tobool104 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool104, label %land.lhs.true.105, label %if.else.110

land.lhs.true.105:                                ; preds = %if.else.102
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %g_class106 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class106, align 8
  %g_type107 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type107, align 8
  %74 = load i64, i64* %__t96, align 8
  %cmp108 = icmp eq i64 %73, %74
  br i1 %cmp108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %land.lhs.true.105
  store i32 1, i32* %__r99, align 4
  br label %if.end.112

if.else.110:                                      ; preds = %land.lhs.true.105, %if.else.102
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %76 = load i64, i64* %__t96, align 8
  %call111 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #7
  store i32 %call111, i32* %__r99, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.then.109
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.101
  %77 = load i32, i32* %__r99, align 4
  store i32 %77, i32* %tmp114
  %78 = load i32, i32* %tmp114
  %tobool115 = icmp ne i32 %78, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.end.113
  %79 = load i8*, i8** %data.addr, align 8
  %80 = bitcast i8* %79 to %struct._GimpDockWindow*
  %call117 = call %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow* %80)
  store %struct._GimpContext* %call117, %struct._GimpContext** %context, align 8
  br label %if.end.226

if.else.118:                                      ; preds = %if.end.113
  %81 = load i8*, i8** %data.addr, align 8
  %82 = bitcast i8* %81 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %82, %struct._GTypeInstance** %__inst120, align 8
  %call123 = call i64 @gimp_container_view_interface_get_type() #6
  store i64 %call123, i64* %__t122, align 8
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %tobool126 = icmp ne %struct._GTypeInstance* %83, null
  br i1 %tobool126, label %if.else.128, label %if.then.127

if.then.127:                                      ; preds = %if.else.118
  store i32 0, i32* %__r125, align 4
  br label %if.end.139

if.else.128:                                      ; preds = %if.else.118
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %g_class129 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %84, i32 0, i32 0
  %85 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class129, align 8
  %tobool130 = icmp ne %struct._GTypeClass* %85, null
  br i1 %tobool130, label %land.lhs.true.131, label %if.else.136

land.lhs.true.131:                                ; preds = %if.else.128
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %g_class132 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class132, align 8
  %g_type133 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %87, i32 0, i32 0
  %88 = load i64, i64* %g_type133, align 8
  %89 = load i64, i64* %__t122, align 8
  %cmp134 = icmp eq i64 %88, %89
  br i1 %cmp134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %land.lhs.true.131
  store i32 1, i32* %__r125, align 4
  br label %if.end.138

if.else.136:                                      ; preds = %land.lhs.true.131, %if.else.128
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %91 = load i64, i64* %__t122, align 8
  %call137 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %90, i64 %91) #7
  store i32 %call137, i32* %__r125, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.135
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.127
  %92 = load i32, i32* %__r125, align 4
  store i32 %92, i32* %tmp140
  %93 = load i32, i32* %tmp140
  %tobool141 = icmp ne i32 %93, 0
  br i1 %tobool141, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.end.139
  %94 = load i8*, i8** %data.addr, align 8
  %95 = bitcast i8* %94 to %struct._GimpContainerView*
  %call143 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %95)
  store %struct._GimpContext* %call143, %struct._GimpContext** %context, align 8
  br label %if.end.225

if.else.144:                                      ; preds = %if.end.139
  %96 = load i8*, i8** %data.addr, align 8
  %97 = bitcast i8* %96 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %97, %struct._GTypeInstance** %__inst146, align 8
  %call149 = call i64 @gimp_container_editor_get_type() #6
  store i64 %call149, i64* %__t148, align 8
  %98 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst146, align 8
  %tobool152 = icmp ne %struct._GTypeInstance* %98, null
  br i1 %tobool152, label %if.else.154, label %if.then.153

if.then.153:                                      ; preds = %if.else.144
  store i32 0, i32* %__r151, align 4
  br label %if.end.165

if.else.154:                                      ; preds = %if.else.144
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst146, align 8
  %g_class155 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class155, align 8
  %tobool156 = icmp ne %struct._GTypeClass* %100, null
  br i1 %tobool156, label %land.lhs.true.157, label %if.else.162

land.lhs.true.157:                                ; preds = %if.else.154
  %101 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst146, align 8
  %g_class158 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %101, i32 0, i32 0
  %102 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class158, align 8
  %g_type159 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %102, i32 0, i32 0
  %103 = load i64, i64* %g_type159, align 8
  %104 = load i64, i64* %__t148, align 8
  %cmp160 = icmp eq i64 %103, %104
  br i1 %cmp160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %land.lhs.true.157
  store i32 1, i32* %__r151, align 4
  br label %if.end.164

if.else.162:                                      ; preds = %land.lhs.true.157, %if.else.154
  %105 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst146, align 8
  %106 = load i64, i64* %__t148, align 8
  %call163 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %105, i64 %106) #7
  store i32 %call163, i32* %__r151, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.162, %if.then.161
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.153
  %107 = load i32, i32* %__r151, align 4
  store i32 %107, i32* %tmp166
  %108 = load i32, i32* %tmp166
  %tobool167 = icmp ne i32 %108, 0
  br i1 %tobool167, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.end.165
  %109 = load i8*, i8** %data.addr, align 8
  %110 = bitcast i8* %109 to %struct._GimpContainerEditor*
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %110, i32 0, i32 1
  %111 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call169 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %111)
  store %struct._GimpContext* %call169, %struct._GimpContext** %context, align 8
  br label %if.end.224

if.else.170:                                      ; preds = %if.end.165
  %112 = load i8*, i8** %data.addr, align 8
  %113 = bitcast i8* %112 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %113, %struct._GTypeInstance** %__inst172, align 8
  %call175 = call i64 @gimp_image_editor_get_type() #6
  store i64 %call175, i64* %__t174, align 8
  %114 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %tobool178 = icmp ne %struct._GTypeInstance* %114, null
  br i1 %tobool178, label %if.else.180, label %if.then.179

if.then.179:                                      ; preds = %if.else.170
  store i32 0, i32* %__r177, align 4
  br label %if.end.191

if.else.180:                                      ; preds = %if.else.170
  %115 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %g_class181 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %115, i32 0, i32 0
  %116 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class181, align 8
  %tobool182 = icmp ne %struct._GTypeClass* %116, null
  br i1 %tobool182, label %land.lhs.true.183, label %if.else.188

land.lhs.true.183:                                ; preds = %if.else.180
  %117 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %g_class184 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %117, i32 0, i32 0
  %118 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class184, align 8
  %g_type185 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %118, i32 0, i32 0
  %119 = load i64, i64* %g_type185, align 8
  %120 = load i64, i64* %__t174, align 8
  %cmp186 = icmp eq i64 %119, %120
  br i1 %cmp186, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %land.lhs.true.183
  store i32 1, i32* %__r177, align 4
  br label %if.end.190

if.else.188:                                      ; preds = %land.lhs.true.183, %if.else.180
  %121 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %122 = load i64, i64* %__t174, align 8
  %call189 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %121, i64 %122) #7
  store i32 %call189, i32* %__r177, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.188, %if.then.187
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.179
  %123 = load i32, i32* %__r177, align 4
  store i32 %123, i32* %tmp192
  %124 = load i32, i32* %tmp192
  %tobool193 = icmp ne i32 %124, 0
  br i1 %tobool193, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.end.191
  %125 = load i8*, i8** %data.addr, align 8
  %126 = bitcast i8* %125 to %struct._GimpImageEditor*
  %context195 = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %126, i32 0, i32 1
  %127 = load %struct._GimpContext*, %struct._GimpContext** %context195, align 8
  store %struct._GimpContext* %127, %struct._GimpContext** %context, align 8
  br label %if.end.223

if.else.196:                                      ; preds = %if.end.191
  %128 = load i8*, i8** %data.addr, align 8
  %129 = bitcast i8* %128 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %129, %struct._GTypeInstance** %__inst198, align 8
  %call201 = call i64 @gimp_navigation_editor_get_type() #6
  store i64 %call201, i64* %__t200, align 8
  %130 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst198, align 8
  %tobool204 = icmp ne %struct._GTypeInstance* %130, null
  br i1 %tobool204, label %if.else.206, label %if.then.205

if.then.205:                                      ; preds = %if.else.196
  store i32 0, i32* %__r203, align 4
  br label %if.end.217

if.else.206:                                      ; preds = %if.else.196
  %131 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst198, align 8
  %g_class207 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %131, i32 0, i32 0
  %132 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class207, align 8
  %tobool208 = icmp ne %struct._GTypeClass* %132, null
  br i1 %tobool208, label %land.lhs.true.209, label %if.else.214

land.lhs.true.209:                                ; preds = %if.else.206
  %133 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst198, align 8
  %g_class210 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %133, i32 0, i32 0
  %134 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class210, align 8
  %g_type211 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %134, i32 0, i32 0
  %135 = load i64, i64* %g_type211, align 8
  %136 = load i64, i64* %__t200, align 8
  %cmp212 = icmp eq i64 %135, %136
  br i1 %cmp212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %land.lhs.true.209
  store i32 1, i32* %__r203, align 4
  br label %if.end.216

if.else.214:                                      ; preds = %land.lhs.true.209, %if.else.206
  %137 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst198, align 8
  %138 = load i64, i64* %__t200, align 8
  %call215 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %137, i64 %138) #7
  store i32 %call215, i32* %__r203, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.214, %if.then.213
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.205
  %139 = load i32, i32* %__r203, align 4
  store i32 %139, i32* %tmp218
  %140 = load i32, i32* %tmp218
  %tobool219 = icmp ne i32 %140, 0
  br i1 %tobool219, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.end.217
  %141 = load i8*, i8** %data.addr, align 8
  %142 = bitcast i8* %141 to %struct._GimpNavigationEditor*
  %context221 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %142, i32 0, i32 1
  %143 = load %struct._GimpContext*, %struct._GimpContext** %context221, align 8
  store %struct._GimpContext* %143, %struct._GimpContext** %context, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %if.end.217
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.194
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223, %if.then.168
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.142
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.116
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.then.90
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229
  %144 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool231 = icmp ne %struct._GimpContext* %144, null
  br i1 %tobool231, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %if.end.230
  %145 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp233 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %145, i32 0, i32 1
  %146 = load %struct._Gimp*, %struct._Gimp** %gimp233, align 8
  store %struct._Gimp* %146, %struct._Gimp** %retval
  br label %return

if.end.234:                                       ; preds = %if.end.230
  store %struct._Gimp* null, %struct._Gimp** %retval
  br label %return

return:                                           ; preds = %if.end.234, %if.then.232, %if.then.65, %cond.end, %if.then.11, %if.then
  %147 = load %struct._Gimp*, %struct._Gimp** %retval
  ret %struct._Gimp* %147
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #1

declare %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #1

declare %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #1

declare %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_navigation_editor_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @action_data_get_context(i8* %data) #0 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst45 = alloca %struct._GTypeInstance*, align 8
  %__t47 = alloca i64, align 8
  %__r50 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %__inst71 = alloca %struct._GTypeInstance*, align 8
  %__t73 = alloca i64, align 8
  %__r76 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %__inst97 = alloca %struct._GTypeInstance*, align 8
  %__t99 = alloca i64, align 8
  %__r102 = alloca i32, align 4
  %tmp117 = alloca i32, align 4
  %__inst123 = alloca %struct._GTypeInstance*, align 8
  %__t125 = alloca i64, align 8
  %__r128 = alloca i32, align 4
  %tmp143 = alloca i32, align 4
  %__inst149 = alloca %struct._GTypeInstance*, align 8
  %__t151 = alloca i64, align 8
  %__r154 = alloca i32, align 4
  %tmp169 = alloca i32, align 4
  %__inst175 = alloca %struct._GTypeInstance*, align 8
  %__t177 = alloca i64, align 8
  %__r180 = alloca i32, align 4
  %tmp195 = alloca i32, align 4
  %__inst200 = alloca %struct._GTypeInstance*, align 8
  %__t202 = alloca i64, align 8
  %__r205 = alloca i32, align 4
  %tmp220 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GimpDisplay*
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call12 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %16)
  store %struct._GimpContext* %call12, %struct._GimpContext** %retval
  br label %return

if.else.13:                                       ; preds = %if.end.9
  %17 = load i8*, i8** %data.addr, align 8
  %18 = bitcast i8* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_image_window_get_type() #6
  store i64 %call18, i64* %__t17, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %if.else.13
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %if.else.13
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
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %28 = load i32, i32* %__r20, align 4
  store i32 %28, i32* %tmp35
  %29 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.43

if.then.37:                                       ; preds = %if.end.34
  %30 = load i8*, i8** %data.addr, align 8
  %31 = bitcast i8* %30 to %struct._GimpImageWindow*
  %call39 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %31)
  store %struct._GimpDisplayShell* %call39, %struct._GimpDisplayShell** %shell, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool40 = icmp ne %struct._GimpDisplayShell* %32, null
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.37
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 1
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp41 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp41, align 8
  %call42 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %35)
  br label %cond.end

cond.false:                                       ; preds = %if.then.37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpContext* [ %call42, %cond.true ], [ null, %cond.false ]
  store %struct._GimpContext* %cond, %struct._GimpContext** %retval
  br label %return

if.else.43:                                       ; preds = %if.end.34
  %36 = load i8*, i8** %data.addr, align 8
  %37 = bitcast i8* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst45, align 8
  %call48 = call i64 @gimp_get_type() #6
  store i64 %call48, i64* %__t47, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %tobool51 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool51, label %if.else.53, label %if.then.52

if.then.52:                                       ; preds = %if.else.43
  store i32 0, i32* %__r50, align 4
  br label %if.end.64

if.else.53:                                       ; preds = %if.else.43
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %tobool55 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.61

land.lhs.true.56:                                 ; preds = %if.else.53
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %g_class57 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class57, align 8
  %g_type58 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type58, align 8
  %44 = load i64, i64* %__t47, align 8
  %cmp59 = icmp eq i64 %43, %44
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.56
  store i32 1, i32* %__r50, align 4
  br label %if.end.63

if.else.61:                                       ; preds = %land.lhs.true.56, %if.else.53
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %46 = load i64, i64* %__t47, align 8
  %call62 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #7
  store i32 %call62, i32* %__r50, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.60
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.52
  %47 = load i32, i32* %__r50, align 4
  store i32 %47, i32* %tmp65
  %48 = load i32, i32* %tmp65
  %tobool66 = icmp ne i32 %48, 0
  br i1 %tobool66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.end.64
  %49 = load i8*, i8** %data.addr, align 8
  %50 = bitcast i8* %49 to %struct._Gimp*
  %call68 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %50)
  store %struct._GimpContext* %call68, %struct._GimpContext** %retval
  br label %return

if.else.69:                                       ; preds = %if.end.64
  %51 = load i8*, i8** %data.addr, align 8
  %52 = bitcast i8* %51 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %52, %struct._GTypeInstance** %__inst71, align 8
  %call74 = call i64 @gimp_dock_get_type() #6
  store i64 %call74, i64* %__t73, align 8
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %tobool77 = icmp ne %struct._GTypeInstance* %53, null
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %if.else.69
  store i32 0, i32* %__r76, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %if.else.69
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %tobool81 = icmp ne %struct._GTypeClass* %55, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.87

land.lhs.true.82:                                 ; preds = %if.else.79
  %56 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class83 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %56, i32 0, i32 0
  %57 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class83, align 8
  %g_type84 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %57, i32 0, i32 0
  %58 = load i64, i64* %g_type84, align 8
  %59 = load i64, i64* %__t73, align 8
  %cmp85 = icmp eq i64 %58, %59
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %__r76, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %land.lhs.true.82, %if.else.79
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %61 = load i64, i64* %__t73, align 8
  %call88 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %60, i64 %61) #7
  store i32 %call88, i32* %__r76, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.78
  %62 = load i32, i32* %__r76, align 4
  store i32 %62, i32* %tmp91
  %63 = load i32, i32* %tmp91
  %tobool92 = icmp ne i32 %63, 0
  br i1 %tobool92, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %if.end.90
  %64 = load i8*, i8** %data.addr, align 8
  %65 = bitcast i8* %64 to %struct._GimpDock*
  %call94 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %65)
  store %struct._GimpContext* %call94, %struct._GimpContext** %retval
  br label %return

if.else.95:                                       ; preds = %if.end.90
  %66 = load i8*, i8** %data.addr, align 8
  %67 = bitcast i8* %66 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %67, %struct._GTypeInstance** %__inst97, align 8
  %call100 = call i64 @gimp_dock_window_get_type() #6
  store i64 %call100, i64* %__t99, align 8
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %tobool103 = icmp ne %struct._GTypeInstance* %68, null
  br i1 %tobool103, label %if.else.105, label %if.then.104

if.then.104:                                      ; preds = %if.else.95
  store i32 0, i32* %__r102, align 4
  br label %if.end.116

if.else.105:                                      ; preds = %if.else.95
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %g_class106 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class106, align 8
  %tobool107 = icmp ne %struct._GTypeClass* %70, null
  br i1 %tobool107, label %land.lhs.true.108, label %if.else.113

land.lhs.true.108:                                ; preds = %if.else.105
  %71 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %g_class109 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %71, i32 0, i32 0
  %72 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class109, align 8
  %g_type110 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %72, i32 0, i32 0
  %73 = load i64, i64* %g_type110, align 8
  %74 = load i64, i64* %__t99, align 8
  %cmp111 = icmp eq i64 %73, %74
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %land.lhs.true.108
  store i32 1, i32* %__r102, align 4
  br label %if.end.115

if.else.113:                                      ; preds = %land.lhs.true.108, %if.else.105
  %75 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %76 = load i64, i64* %__t99, align 8
  %call114 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %75, i64 %76) #7
  store i32 %call114, i32* %__r102, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %if.then.112
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.104
  %77 = load i32, i32* %__r102, align 4
  store i32 %77, i32* %tmp117
  %78 = load i32, i32* %tmp117
  %tobool118 = icmp ne i32 %78, 0
  br i1 %tobool118, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %if.end.116
  %79 = load i8*, i8** %data.addr, align 8
  %80 = bitcast i8* %79 to %struct._GimpDockWindow*
  %call120 = call %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow* %80)
  store %struct._GimpContext* %call120, %struct._GimpContext** %retval
  br label %return

if.else.121:                                      ; preds = %if.end.116
  %81 = load i8*, i8** %data.addr, align 8
  %82 = bitcast i8* %81 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %82, %struct._GTypeInstance** %__inst123, align 8
  %call126 = call i64 @gimp_container_view_interface_get_type() #6
  store i64 %call126, i64* %__t125, align 8
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %tobool129 = icmp ne %struct._GTypeInstance* %83, null
  br i1 %tobool129, label %if.else.131, label %if.then.130

if.then.130:                                      ; preds = %if.else.121
  store i32 0, i32* %__r128, align 4
  br label %if.end.142

if.else.131:                                      ; preds = %if.else.121
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %g_class132 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %84, i32 0, i32 0
  %85 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class132, align 8
  %tobool133 = icmp ne %struct._GTypeClass* %85, null
  br i1 %tobool133, label %land.lhs.true.134, label %if.else.139

land.lhs.true.134:                                ; preds = %if.else.131
  %86 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %g_class135 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %86, i32 0, i32 0
  %87 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class135, align 8
  %g_type136 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %87, i32 0, i32 0
  %88 = load i64, i64* %g_type136, align 8
  %89 = load i64, i64* %__t125, align 8
  %cmp137 = icmp eq i64 %88, %89
  br i1 %cmp137, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %land.lhs.true.134
  store i32 1, i32* %__r128, align 4
  br label %if.end.141

if.else.139:                                      ; preds = %land.lhs.true.134, %if.else.131
  %90 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst123, align 8
  %91 = load i64, i64* %__t125, align 8
  %call140 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %90, i64 %91) #7
  store i32 %call140, i32* %__r128, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.139, %if.then.138
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.130
  %92 = load i32, i32* %__r128, align 4
  store i32 %92, i32* %tmp143
  %93 = load i32, i32* %tmp143
  %tobool144 = icmp ne i32 %93, 0
  br i1 %tobool144, label %if.then.145, label %if.else.147

if.then.145:                                      ; preds = %if.end.142
  %94 = load i8*, i8** %data.addr, align 8
  %95 = bitcast i8* %94 to %struct._GimpContainerView*
  %call146 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %95)
  store %struct._GimpContext* %call146, %struct._GimpContext** %retval
  br label %return

if.else.147:                                      ; preds = %if.end.142
  %96 = load i8*, i8** %data.addr, align 8
  %97 = bitcast i8* %96 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %97, %struct._GTypeInstance** %__inst149, align 8
  %call152 = call i64 @gimp_container_editor_get_type() #6
  store i64 %call152, i64* %__t151, align 8
  %98 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %tobool155 = icmp ne %struct._GTypeInstance* %98, null
  br i1 %tobool155, label %if.else.157, label %if.then.156

if.then.156:                                      ; preds = %if.else.147
  store i32 0, i32* %__r154, align 4
  br label %if.end.168

if.else.157:                                      ; preds = %if.else.147
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %g_class158 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class158, align 8
  %tobool159 = icmp ne %struct._GTypeClass* %100, null
  br i1 %tobool159, label %land.lhs.true.160, label %if.else.165

land.lhs.true.160:                                ; preds = %if.else.157
  %101 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %g_class161 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %101, i32 0, i32 0
  %102 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class161, align 8
  %g_type162 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %102, i32 0, i32 0
  %103 = load i64, i64* %g_type162, align 8
  %104 = load i64, i64* %__t151, align 8
  %cmp163 = icmp eq i64 %103, %104
  br i1 %cmp163, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %land.lhs.true.160
  store i32 1, i32* %__r154, align 4
  br label %if.end.167

if.else.165:                                      ; preds = %land.lhs.true.160, %if.else.157
  %105 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst149, align 8
  %106 = load i64, i64* %__t151, align 8
  %call166 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %105, i64 %106) #7
  store i32 %call166, i32* %__r154, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.then.164
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.156
  %107 = load i32, i32* %__r154, align 4
  store i32 %107, i32* %tmp169
  %108 = load i32, i32* %tmp169
  %tobool170 = icmp ne i32 %108, 0
  br i1 %tobool170, label %if.then.171, label %if.else.173

if.then.171:                                      ; preds = %if.end.168
  %109 = load i8*, i8** %data.addr, align 8
  %110 = bitcast i8* %109 to %struct._GimpContainerEditor*
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %110, i32 0, i32 1
  %111 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call172 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %111)
  store %struct._GimpContext* %call172, %struct._GimpContext** %retval
  br label %return

if.else.173:                                      ; preds = %if.end.168
  %112 = load i8*, i8** %data.addr, align 8
  %113 = bitcast i8* %112 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %113, %struct._GTypeInstance** %__inst175, align 8
  %call178 = call i64 @gimp_image_editor_get_type() #6
  store i64 %call178, i64* %__t177, align 8
  %114 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst175, align 8
  %tobool181 = icmp ne %struct._GTypeInstance* %114, null
  br i1 %tobool181, label %if.else.183, label %if.then.182

if.then.182:                                      ; preds = %if.else.173
  store i32 0, i32* %__r180, align 4
  br label %if.end.194

if.else.183:                                      ; preds = %if.else.173
  %115 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst175, align 8
  %g_class184 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %115, i32 0, i32 0
  %116 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class184, align 8
  %tobool185 = icmp ne %struct._GTypeClass* %116, null
  br i1 %tobool185, label %land.lhs.true.186, label %if.else.191

land.lhs.true.186:                                ; preds = %if.else.183
  %117 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst175, align 8
  %g_class187 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %117, i32 0, i32 0
  %118 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class187, align 8
  %g_type188 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %118, i32 0, i32 0
  %119 = load i64, i64* %g_type188, align 8
  %120 = load i64, i64* %__t177, align 8
  %cmp189 = icmp eq i64 %119, %120
  br i1 %cmp189, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %land.lhs.true.186
  store i32 1, i32* %__r180, align 4
  br label %if.end.193

if.else.191:                                      ; preds = %land.lhs.true.186, %if.else.183
  %121 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst175, align 8
  %122 = load i64, i64* %__t177, align 8
  %call192 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %121, i64 %122) #7
  store i32 %call192, i32* %__r180, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.191, %if.then.190
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.182
  %123 = load i32, i32* %__r180, align 4
  store i32 %123, i32* %tmp195
  %124 = load i32, i32* %tmp195
  %tobool196 = icmp ne i32 %124, 0
  br i1 %tobool196, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %if.end.194
  %125 = load i8*, i8** %data.addr, align 8
  %126 = bitcast i8* %125 to %struct._GimpImageEditor*
  %context = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %126, i32 0, i32 1
  %127 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %127, %struct._GimpContext** %retval
  br label %return

if.else.198:                                      ; preds = %if.end.194
  %128 = load i8*, i8** %data.addr, align 8
  %129 = bitcast i8* %128 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %129, %struct._GTypeInstance** %__inst200, align 8
  %call203 = call i64 @gimp_navigation_editor_get_type() #6
  store i64 %call203, i64* %__t202, align 8
  %130 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst200, align 8
  %tobool206 = icmp ne %struct._GTypeInstance* %130, null
  br i1 %tobool206, label %if.else.208, label %if.then.207

if.then.207:                                      ; preds = %if.else.198
  store i32 0, i32* %__r205, align 4
  br label %if.end.219

if.else.208:                                      ; preds = %if.else.198
  %131 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst200, align 8
  %g_class209 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %131, i32 0, i32 0
  %132 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class209, align 8
  %tobool210 = icmp ne %struct._GTypeClass* %132, null
  br i1 %tobool210, label %land.lhs.true.211, label %if.else.216

land.lhs.true.211:                                ; preds = %if.else.208
  %133 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst200, align 8
  %g_class212 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %133, i32 0, i32 0
  %134 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class212, align 8
  %g_type213 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %134, i32 0, i32 0
  %135 = load i64, i64* %g_type213, align 8
  %136 = load i64, i64* %__t202, align 8
  %cmp214 = icmp eq i64 %135, %136
  br i1 %cmp214, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %land.lhs.true.211
  store i32 1, i32* %__r205, align 4
  br label %if.end.218

if.else.216:                                      ; preds = %land.lhs.true.211, %if.else.208
  %137 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst200, align 8
  %138 = load i64, i64* %__t202, align 8
  %call217 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %137, i64 %138) #7
  store i32 %call217, i32* %__r205, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.216, %if.then.215
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.207
  %139 = load i32, i32* %__r205, align 4
  store i32 %139, i32* %tmp220
  %140 = load i32, i32* %tmp220
  %tobool221 = icmp ne i32 %140, 0
  br i1 %tobool221, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %if.end.219
  %141 = load i8*, i8** %data.addr, align 8
  %142 = bitcast i8* %141 to %struct._GimpNavigationEditor*
  %context223 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %142, i32 0, i32 1
  %143 = load %struct._GimpContext*, %struct._GimpContext** %context223, align 8
  store %struct._GimpContext* %143, %struct._GimpContext** %retval
  br label %return

if.end.224:                                       ; preds = %if.end.219
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %if.end.232, %if.then.222, %if.then.197, %if.then.171, %if.then.145, %if.then.119, %if.then.93, %if.then.67, %cond.end, %if.then.11, %if.then
  %144 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %144
}

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @action_data_get_image(i8* %data) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %__inst69 = alloca %struct._GTypeInstance*, align 8
  %__t71 = alloca i64, align 8
  %__r74 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %__inst95 = alloca %struct._GTypeInstance*, align 8
  %__t97 = alloca i64, align 8
  %__r100 = alloca i32, align 4
  %tmp115 = alloca i32, align 4
  %__inst121 = alloca %struct._GTypeInstance*, align 8
  %__t123 = alloca i64, align 8
  %__r126 = alloca i32, align 4
  %tmp141 = alloca i32, align 4
  %__inst147 = alloca %struct._GTypeInstance*, align 8
  %__t149 = alloca i64, align 8
  %__r152 = alloca i32, align 4
  %tmp167 = alloca i32, align 4
  %__inst172 = alloca %struct._GTypeInstance*, align 8
  %__t174 = alloca i64, align 8
  %__r177 = alloca i32, align 4
  %tmp192 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %15, %struct._GimpDisplay** %display, align 8
  br label %if.end.203

if.else.12:                                       ; preds = %if.end.9
  %16 = load i8*, i8** %data.addr, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_window_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.else.12
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type27, align 8
  %24 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %23, %24
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %26 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %27 = load i32, i32* %__r19, align 4
  store i32 %27, i32* %tmp34
  %28 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.end.33
  %29 = load i8*, i8** %data.addr, align 8
  %30 = bitcast i8* %29 to %struct._GimpImageWindow*
  %call38 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %30)
  store %struct._GimpDisplayShell* %call38, %struct._GimpDisplayShell** %shell, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool39 = icmp ne %struct._GimpDisplayShell* %31, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 1
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display40, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDisplay* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GimpDisplay* %cond, %struct._GimpDisplay** %display, align 8
  br label %if.end.202

if.else.41:                                       ; preds = %if.end.33
  %34 = load i8*, i8** %data.addr, align 8
  %35 = bitcast i8* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gimp_get_type() #6
  store i64 %call46, i64* %__t45, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %if.else.41
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %if.else.41
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type56, align 8
  %42 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %41, %42
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %44 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #7
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %45 = load i32, i32* %__r48, align 4
  store i32 %45, i32* %tmp63
  %46 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %46, 0
  br i1 %tobool64, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.end.62
  %47 = load i8*, i8** %data.addr, align 8
  %48 = bitcast i8* %47 to %struct._Gimp*
  %call66 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %48)
  store %struct._GimpContext* %call66, %struct._GimpContext** %context, align 8
  br label %if.end.201

if.else.67:                                       ; preds = %if.end.62
  %49 = load i8*, i8** %data.addr, align 8
  %50 = bitcast i8* %49 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %50, %struct._GTypeInstance** %__inst69, align 8
  %call72 = call i64 @gimp_dock_get_type() #6
  store i64 %call72, i64* %__t71, align 8
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %tobool75 = icmp ne %struct._GTypeInstance* %51, null
  br i1 %tobool75, label %if.else.77, label %if.then.76

if.then.76:                                       ; preds = %if.else.67
  store i32 0, i32* %__r74, align 4
  br label %if.end.88

if.else.77:                                       ; preds = %if.else.67
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class78 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class78, align 8
  %tobool79 = icmp ne %struct._GTypeClass* %53, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.else.85

land.lhs.true.80:                                 ; preds = %if.else.77
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %g_type82 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type82, align 8
  %57 = load i64, i64* %__t71, align 8
  %cmp83 = icmp eq i64 %56, %57
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.80
  store i32 1, i32* %__r74, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %land.lhs.true.80, %if.else.77
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %59 = load i64, i64* %__t71, align 8
  %call86 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %58, i64 %59) #7
  store i32 %call86, i32* %__r74, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.76
  %60 = load i32, i32* %__r74, align 4
  store i32 %60, i32* %tmp89
  %61 = load i32, i32* %tmp89
  %tobool90 = icmp ne i32 %61, 0
  br i1 %tobool90, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %if.end.88
  %62 = load i8*, i8** %data.addr, align 8
  %63 = bitcast i8* %62 to %struct._GimpDock*
  %call92 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %63)
  store %struct._GimpContext* %call92, %struct._GimpContext** %context, align 8
  br label %if.end.200

if.else.93:                                       ; preds = %if.end.88
  %64 = load i8*, i8** %data.addr, align 8
  %65 = bitcast i8* %64 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %65, %struct._GTypeInstance** %__inst95, align 8
  %call98 = call i64 @gimp_dock_window_get_type() #6
  store i64 %call98, i64* %__t97, align 8
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %tobool101 = icmp ne %struct._GTypeInstance* %66, null
  br i1 %tobool101, label %if.else.103, label %if.then.102

if.then.102:                                      ; preds = %if.else.93
  store i32 0, i32* %__r100, align 4
  br label %if.end.114

if.else.103:                                      ; preds = %if.else.93
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %g_class104 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class104, align 8
  %tobool105 = icmp ne %struct._GTypeClass* %68, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.else.111

land.lhs.true.106:                                ; preds = %if.else.103
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %g_class107 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class107, align 8
  %g_type108 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %70, i32 0, i32 0
  %71 = load i64, i64* %g_type108, align 8
  %72 = load i64, i64* %__t97, align 8
  %cmp109 = icmp eq i64 %71, %72
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %land.lhs.true.106
  store i32 1, i32* %__r100, align 4
  br label %if.end.113

if.else.111:                                      ; preds = %land.lhs.true.106, %if.else.103
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst95, align 8
  %74 = load i64, i64* %__t97, align 8
  %call112 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %73, i64 %74) #7
  store i32 %call112, i32* %__r100, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.then.110
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.102
  %75 = load i32, i32* %__r100, align 4
  store i32 %75, i32* %tmp115
  %76 = load i32, i32* %tmp115
  %tobool116 = icmp ne i32 %76, 0
  br i1 %tobool116, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %if.end.114
  %77 = load i8*, i8** %data.addr, align 8
  %78 = bitcast i8* %77 to %struct._GimpDockWindow*
  %call118 = call %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow* %78)
  store %struct._GimpContext* %call118, %struct._GimpContext** %context, align 8
  br label %if.end.199

if.else.119:                                      ; preds = %if.end.114
  %79 = load i8*, i8** %data.addr, align 8
  %80 = bitcast i8* %79 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %80, %struct._GTypeInstance** %__inst121, align 8
  %call124 = call i64 @gimp_item_tree_view_get_type() #6
  store i64 %call124, i64* %__t123, align 8
  %81 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst121, align 8
  %tobool127 = icmp ne %struct._GTypeInstance* %81, null
  br i1 %tobool127, label %if.else.129, label %if.then.128

if.then.128:                                      ; preds = %if.else.119
  store i32 0, i32* %__r126, align 4
  br label %if.end.140

if.else.129:                                      ; preds = %if.else.119
  %82 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst121, align 8
  %g_class130 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %82, i32 0, i32 0
  %83 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class130, align 8
  %tobool131 = icmp ne %struct._GTypeClass* %83, null
  br i1 %tobool131, label %land.lhs.true.132, label %if.else.137

land.lhs.true.132:                                ; preds = %if.else.129
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst121, align 8
  %g_class133 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %84, i32 0, i32 0
  %85 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class133, align 8
  %g_type134 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %85, i32 0, i32 0
  %86 = load i64, i64* %g_type134, align 8
  %87 = load i64, i64* %__t123, align 8
  %cmp135 = icmp eq i64 %86, %87
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %land.lhs.true.132
  store i32 1, i32* %__r126, align 4
  br label %if.end.139

if.else.137:                                      ; preds = %land.lhs.true.132, %if.else.129
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst121, align 8
  %89 = load i64, i64* %__t123, align 8
  %call138 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %88, i64 %89) #7
  store i32 %call138, i32* %__r126, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %if.then.136
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.128
  %90 = load i32, i32* %__r126, align 4
  store i32 %90, i32* %tmp141
  %91 = load i32, i32* %tmp141
  %tobool142 = icmp ne i32 %91, 0
  br i1 %tobool142, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.end.140
  %92 = load i8*, i8** %data.addr, align 8
  %93 = bitcast i8* %92 to %struct._GimpItemTreeView*
  %call144 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %93)
  store %struct._GimpImage* %call144, %struct._GimpImage** %retval
  br label %return

if.else.145:                                      ; preds = %if.end.140
  %94 = load i8*, i8** %data.addr, align 8
  %95 = bitcast i8* %94 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %95, %struct._GTypeInstance** %__inst147, align 8
  %call150 = call i64 @gimp_image_editor_get_type() #6
  store i64 %call150, i64* %__t149, align 8
  %96 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst147, align 8
  %tobool153 = icmp ne %struct._GTypeInstance* %96, null
  br i1 %tobool153, label %if.else.155, label %if.then.154

if.then.154:                                      ; preds = %if.else.145
  store i32 0, i32* %__r152, align 4
  br label %if.end.166

if.else.155:                                      ; preds = %if.else.145
  %97 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst147, align 8
  %g_class156 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %97, i32 0, i32 0
  %98 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class156, align 8
  %tobool157 = icmp ne %struct._GTypeClass* %98, null
  br i1 %tobool157, label %land.lhs.true.158, label %if.else.163

land.lhs.true.158:                                ; preds = %if.else.155
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst147, align 8
  %g_class159 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class159, align 8
  %g_type160 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %100, i32 0, i32 0
  %101 = load i64, i64* %g_type160, align 8
  %102 = load i64, i64* %__t149, align 8
  %cmp161 = icmp eq i64 %101, %102
  br i1 %cmp161, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %land.lhs.true.158
  store i32 1, i32* %__r152, align 4
  br label %if.end.165

if.else.163:                                      ; preds = %land.lhs.true.158, %if.else.155
  %103 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst147, align 8
  %104 = load i64, i64* %__t149, align 8
  %call164 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %103, i64 %104) #7
  store i32 %call164, i32* %__r152, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.163, %if.then.162
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.154
  %105 = load i32, i32* %__r152, align 4
  store i32 %105, i32* %tmp167
  %106 = load i32, i32* %tmp167
  %tobool168 = icmp ne i32 %106, 0
  br i1 %tobool168, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.end.166
  %107 = load i8*, i8** %data.addr, align 8
  %108 = bitcast i8* %107 to %struct._GimpImageEditor*
  %image = getelementptr inbounds %struct._GimpImageEditor, %struct._GimpImageEditor* %108, i32 0, i32 2
  %109 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %109, %struct._GimpImage** %retval
  br label %return

if.else.170:                                      ; preds = %if.end.166
  %110 = load i8*, i8** %data.addr, align 8
  %111 = bitcast i8* %110 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %111, %struct._GTypeInstance** %__inst172, align 8
  %call175 = call i64 @gimp_navigation_editor_get_type() #6
  store i64 %call175, i64* %__t174, align 8
  %112 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %tobool178 = icmp ne %struct._GTypeInstance* %112, null
  br i1 %tobool178, label %if.else.180, label %if.then.179

if.then.179:                                      ; preds = %if.else.170
  store i32 0, i32* %__r177, align 4
  br label %if.end.191

if.else.180:                                      ; preds = %if.else.170
  %113 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %g_class181 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %113, i32 0, i32 0
  %114 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class181, align 8
  %tobool182 = icmp ne %struct._GTypeClass* %114, null
  br i1 %tobool182, label %land.lhs.true.183, label %if.else.188

land.lhs.true.183:                                ; preds = %if.else.180
  %115 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %g_class184 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %115, i32 0, i32 0
  %116 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class184, align 8
  %g_type185 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %116, i32 0, i32 0
  %117 = load i64, i64* %g_type185, align 8
  %118 = load i64, i64* %__t174, align 8
  %cmp186 = icmp eq i64 %117, %118
  br i1 %cmp186, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %land.lhs.true.183
  store i32 1, i32* %__r177, align 4
  br label %if.end.190

if.else.188:                                      ; preds = %land.lhs.true.183, %if.else.180
  %119 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst172, align 8
  %120 = load i64, i64* %__t174, align 8
  %call189 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %119, i64 %120) #7
  store i32 %call189, i32* %__r177, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.188, %if.then.187
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.179
  %121 = load i32, i32* %__r177, align 4
  store i32 %121, i32* %tmp192
  %122 = load i32, i32* %tmp192
  %tobool193 = icmp ne i32 %122, 0
  br i1 %tobool193, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.end.191
  %123 = load i8*, i8** %data.addr, align 8
  %124 = bitcast i8* %123 to %struct._GimpNavigationEditor*
  %context195 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %124, i32 0, i32 1
  %125 = load %struct._GimpContext*, %struct._GimpContext** %context195, align 8
  store %struct._GimpContext* %125, %struct._GimpContext** %context, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %if.end.191
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.117
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.91
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.65
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %cond.end
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.11
  %126 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool204 = icmp ne %struct._GimpContext* %126, null
  br i1 %tobool204, label %if.then.205, label %if.else.207

if.then.205:                                      ; preds = %if.end.203
  %127 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call206 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %127)
  store %struct._GimpImage* %call206, %struct._GimpImage** %retval
  br label %return

if.else.207:                                      ; preds = %if.end.203
  %128 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool208 = icmp ne %struct._GimpDisplay* %128, null
  br i1 %tobool208, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.else.207
  %129 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call210 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %129)
  store %struct._GimpImage* %call210, %struct._GimpImage** %retval
  br label %return

if.end.211:                                       ; preds = %if.else.207
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.212, %if.then.209, %if.then.205, %if.then.169, %if.then.143, %if.then
  %130 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %130
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_tree_view_get_type() #1

declare %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView*) #3

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpDisplay* @action_data_get_display(i8* %data) #0 {
entry:
  %retval = alloca %struct._GimpDisplay*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst68 = alloca %struct._GTypeInstance*, align 8
  %__t70 = alloca i64, align 8
  %__r73 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  %__inst94 = alloca %struct._GTypeInstance*, align 8
  %__t96 = alloca i64, align 8
  %__r99 = alloca i32, align 4
  %tmp114 = alloca i32, align 4
  %__inst120 = alloca %struct._GTypeInstance*, align 8
  %__t122 = alloca i64, align 8
  %__r125 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %15, %struct._GimpDisplay** %retval
  br label %return

if.else.12:                                       ; preds = %if.end.9
  %16 = load i8*, i8** %data.addr, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_window_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.else.12
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type27, align 8
  %24 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %23, %24
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %26 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %27 = load i32, i32* %__r19, align 4
  store i32 %27, i32* %tmp34
  %28 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.end.33
  %29 = load i8*, i8** %data.addr, align 8
  %30 = bitcast i8* %29 to %struct._GimpImageWindow*
  %call38 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %30)
  store %struct._GimpDisplayShell* %call38, %struct._GimpDisplayShell** %shell, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool39 = icmp ne %struct._GimpDisplayShell* %31, null
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.36
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 1
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpDisplay* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GimpDisplay* %cond, %struct._GimpDisplay** %retval
  br label %return

if.else.40:                                       ; preds = %if.end.33
  %34 = load i8*, i8** %data.addr, align 8
  %35 = bitcast i8* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_get_type() #6
  store i64 %call45, i64* %__t44, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %if.else.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %if.else.40
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type55, align 8
  %42 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %41, %42
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %44 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #7
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %45 = load i32, i32* %__r47, align 4
  store i32 %45, i32* %tmp62
  %46 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %46, 0
  br i1 %tobool63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.end.61
  %47 = load i8*, i8** %data.addr, align 8
  %48 = bitcast i8* %47 to %struct._Gimp*
  %call65 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %48)
  store %struct._GimpContext* %call65, %struct._GimpContext** %context, align 8
  br label %if.end.147

if.else.66:                                       ; preds = %if.end.61
  %49 = load i8*, i8** %data.addr, align 8
  %50 = bitcast i8* %49 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %50, %struct._GTypeInstance** %__inst68, align 8
  %call71 = call i64 @gimp_dock_get_type() #6
  store i64 %call71, i64* %__t70, align 8
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %tobool74 = icmp ne %struct._GTypeInstance* %51, null
  br i1 %tobool74, label %if.else.76, label %if.then.75

if.then.75:                                       ; preds = %if.else.66
  store i32 0, i32* %__r73, align 4
  br label %if.end.87

if.else.76:                                       ; preds = %if.else.66
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %52, i32 0, i32 0
  %53 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %tobool78 = icmp ne %struct._GTypeClass* %53, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.84

land.lhs.true.79:                                 ; preds = %if.else.76
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %g_type81 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type81, align 8
  %57 = load i64, i64* %__t70, align 8
  %cmp82 = icmp eq i64 %56, %57
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %land.lhs.true.79
  store i32 1, i32* %__r73, align 4
  br label %if.end.86

if.else.84:                                       ; preds = %land.lhs.true.79, %if.else.76
  %58 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst68, align 8
  %59 = load i64, i64* %__t70, align 8
  %call85 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %58, i64 %59) #7
  store i32 %call85, i32* %__r73, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.84, %if.then.83
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.75
  %60 = load i32, i32* %__r73, align 4
  store i32 %60, i32* %tmp88
  %61 = load i32, i32* %tmp88
  %tobool89 = icmp ne i32 %61, 0
  br i1 %tobool89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.end.87
  %62 = load i8*, i8** %data.addr, align 8
  %63 = bitcast i8* %62 to %struct._GimpDock*
  %call91 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %63)
  store %struct._GimpContext* %call91, %struct._GimpContext** %context, align 8
  br label %if.end.146

if.else.92:                                       ; preds = %if.end.87
  %64 = load i8*, i8** %data.addr, align 8
  %65 = bitcast i8* %64 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %65, %struct._GTypeInstance** %__inst94, align 8
  %call97 = call i64 @gimp_dock_window_get_type() #6
  store i64 %call97, i64* %__t96, align 8
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %tobool100 = icmp ne %struct._GTypeInstance* %66, null
  br i1 %tobool100, label %if.else.102, label %if.then.101

if.then.101:                                      ; preds = %if.else.92
  store i32 0, i32* %__r99, align 4
  br label %if.end.113

if.else.102:                                      ; preds = %if.else.92
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %g_class103 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %67, i32 0, i32 0
  %68 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class103, align 8
  %tobool104 = icmp ne %struct._GTypeClass* %68, null
  br i1 %tobool104, label %land.lhs.true.105, label %if.else.110

land.lhs.true.105:                                ; preds = %if.else.102
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %g_class106 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class106, align 8
  %g_type107 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %70, i32 0, i32 0
  %71 = load i64, i64* %g_type107, align 8
  %72 = load i64, i64* %__t96, align 8
  %cmp108 = icmp eq i64 %71, %72
  br i1 %cmp108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %land.lhs.true.105
  store i32 1, i32* %__r99, align 4
  br label %if.end.112

if.else.110:                                      ; preds = %land.lhs.true.105, %if.else.102
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst94, align 8
  %74 = load i64, i64* %__t96, align 8
  %call111 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %73, i64 %74) #7
  store i32 %call111, i32* %__r99, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.then.109
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.101
  %75 = load i32, i32* %__r99, align 4
  store i32 %75, i32* %tmp114
  %76 = load i32, i32* %tmp114
  %tobool115 = icmp ne i32 %76, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.end.113
  %77 = load i8*, i8** %data.addr, align 8
  %78 = bitcast i8* %77 to %struct._GimpDockWindow*
  %call117 = call %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow* %78)
  store %struct._GimpContext* %call117, %struct._GimpContext** %context, align 8
  br label %if.end.145

if.else.118:                                      ; preds = %if.end.113
  %79 = load i8*, i8** %data.addr, align 8
  %80 = bitcast i8* %79 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %80, %struct._GTypeInstance** %__inst120, align 8
  %call123 = call i64 @gimp_navigation_editor_get_type() #6
  store i64 %call123, i64* %__t122, align 8
  %81 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %tobool126 = icmp ne %struct._GTypeInstance* %81, null
  br i1 %tobool126, label %if.else.128, label %if.then.127

if.then.127:                                      ; preds = %if.else.118
  store i32 0, i32* %__r125, align 4
  br label %if.end.139

if.else.128:                                      ; preds = %if.else.118
  %82 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %g_class129 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %82, i32 0, i32 0
  %83 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class129, align 8
  %tobool130 = icmp ne %struct._GTypeClass* %83, null
  br i1 %tobool130, label %land.lhs.true.131, label %if.else.136

land.lhs.true.131:                                ; preds = %if.else.128
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %g_class132 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %84, i32 0, i32 0
  %85 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class132, align 8
  %g_type133 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %85, i32 0, i32 0
  %86 = load i64, i64* %g_type133, align 8
  %87 = load i64, i64* %__t122, align 8
  %cmp134 = icmp eq i64 %86, %87
  br i1 %cmp134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %land.lhs.true.131
  store i32 1, i32* %__r125, align 4
  br label %if.end.138

if.else.136:                                      ; preds = %land.lhs.true.131, %if.else.128
  %88 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst120, align 8
  %89 = load i64, i64* %__t122, align 8
  %call137 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %88, i64 %89) #7
  store i32 %call137, i32* %__r125, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.135
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.127
  %90 = load i32, i32* %__r125, align 4
  store i32 %90, i32* %tmp140
  %91 = load i32, i32* %tmp140
  %tobool141 = icmp ne i32 %91, 0
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.end.139
  %92 = load i8*, i8** %data.addr, align 8
  %93 = bitcast i8* %92 to %struct._GimpNavigationEditor*
  %context143 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %93, i32 0, i32 1
  %94 = load %struct._GimpContext*, %struct._GimpContext** %context143, align 8
  store %struct._GimpContext* %94, %struct._GimpContext** %context, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.end.139
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.116
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.90
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.64
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148
  %95 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool150 = icmp ne %struct._GimpContext* %95, null
  br i1 %tobool150, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.end.149
  %96 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call152 = call i8* @gimp_context_get_display(%struct._GimpContext* %96)
  %97 = bitcast i8* %call152 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %97, %struct._GimpDisplay** %retval
  br label %return

if.end.153:                                       ; preds = %if.end.149
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

return:                                           ; preds = %if.end.153, %if.then.151, %cond.end, %if.then.11, %if.then
  %98 = load %struct._GimpDisplay*, %struct._GimpDisplay** %retval
  ret %struct._GimpDisplay* %98
}

declare i8* @gimp_context_get_display(%struct._GimpContext*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpDisplayShell* @action_data_get_shell(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %2)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  ret %struct._GimpDisplayShell* %3
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @action_data_get_widget(i8* %data) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %15, %struct._GimpDisplay** %display, align 8
  br label %if.end.66

if.else.12:                                       ; preds = %if.end.9
  %16 = load i8*, i8** %data.addr, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %if.else.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %if.else.12
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type27, align 8
  %24 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %23, %24
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %26 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %27 = load i32, i32* %__r19, align 4
  store i32 %27, i32* %tmp34
  %28 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %if.end.33
  %29 = load i8*, i8** %data.addr, align 8
  %30 = bitcast i8* %29 to %struct._Gimp*
  %call37 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %30)
  %call38 = call i8* @gimp_context_get_display(%struct._GimpContext* %call37)
  %31 = bitcast i8* %call38 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %31, %struct._GimpDisplay** %display, align 8
  br label %if.end.65

if.else.39:                                       ; preds = %if.end.33
  %32 = load i8*, i8** %data.addr, align 8
  %33 = bitcast i8* %32 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %33, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gtk_widget_get_type() #6
  store i64 %call44, i64* %__t43, align 8
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %34, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %if.else.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %if.else.39
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %36, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type54, align 8
  %40 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %39, %40
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %42 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %41, i64 %42) #7
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %43 = load i32, i32* %__r46, align 4
  store i32 %43, i32* %tmp61
  %44 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %44, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %45 = load i8*, i8** %data.addr, align 8
  %46 = bitcast i8* %45 to %struct._GtkWidget*
  store %struct._GtkWidget* %46, %struct._GtkWidget** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.36
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.11
  %47 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool67 = icmp ne %struct._GimpDisplay* %47, null
  br i1 %tobool67, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.end.66
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call69 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %48)
  %49 = bitcast %struct._GimpDisplayShell* %call69 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_widget_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call70)
  %50 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkWidget*
  store %struct._GtkWidget* %50, %struct._GtkWidget** %retval
  br label %return

if.end.72:                                        ; preds = %if.end.66
  %call73 = call %struct._GtkWidget* @dialogs_get_toolbox()
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.68, %if.then.63, %if.then
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %51
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GtkWidget* @dialogs_get_toolbox() #3

; Function Attrs: nounwind uwtable
define i32 @action_data_sel_count(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_editor_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.end.6
  %13 = load i8*, i8** %data.addr, align 8
  %14 = bitcast i8* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_editor_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %15, %struct._GimpContainerEditor** %editor, align 8
  %16 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %16, i32 0, i32 1
  %17 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call12 = call i32 @gimp_container_view_get_selected(%struct._GimpContainerView* %17, %struct._GList** null)
  store i32 %call12, i32* %retval
  br label %return

if.else.13:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.13, %if.then.8
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gimp_container_view_get_selected(%struct._GimpContainerView*, %struct._GList**) #3

; Function Attrs: nounwind uwtable
define double @action_select_value(i32 %select_type, double %value, double %min, double %max, double %def, double %small_inc, double %inc, double %skip_inc, double %delta_factor, i32 %wrap) #0 {
entry:
  %retval = alloca double, align 8
  %select_type.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %def.addr = alloca double, align 8
  %small_inc.addr = alloca double, align 8
  %inc.addr = alloca double, align 8
  %skip_inc.addr = alloca double, align 8
  %delta_factor.addr = alloca double, align 8
  %wrap.addr = alloca i32, align 4
  store i32 %select_type, i32* %select_type.addr, align 4
  store double %value, double* %value.addr, align 8
  store double %min, double* %min.addr, align 8
  store double %max, double* %max.addr, align 8
  store double %def, double* %def.addr, align 8
  store double %small_inc, double* %small_inc.addr, align 8
  store double %inc, double* %inc.addr, align 8
  store double %skip_inc, double* %skip_inc.addr, align 8
  store double %delta_factor, double* %delta_factor.addr, align 8
  store i32 %wrap, i32* %wrap.addr, align 4
  %0 = load i32, i32* %select_type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.1
    i32 -3, label %sw.bb.2
    i32 -4, label %sw.bb.3
    i32 -5, label %sw.bb.4
    i32 -6, label %sw.bb.5
    i32 -7, label %sw.bb.7
    i32 -8, label %sw.bb.9
    i32 -9, label %sw.bb.11
    i32 -10, label %sw.bb.13
    i32 -11, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %1 = load double, double* %def.addr, align 8
  store double %1, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load double, double* %min.addr, align 8
  store double %2, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load double, double* %max.addr, align 8
  store double %3, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load double, double* %small_inc.addr, align 8
  %5 = load double, double* %value.addr, align 8
  %sub = fsub double %5, %4
  store double %sub, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load double, double* %small_inc.addr, align 8
  %7 = load double, double* %value.addr, align 8
  %add = fadd double %7, %6
  store double %add, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load double, double* %inc.addr, align 8
  %9 = load double, double* %value.addr, align 8
  %sub6 = fsub double %9, %8
  store double %sub6, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load double, double* %inc.addr, align 8
  %11 = load double, double* %value.addr, align 8
  %add8 = fadd double %11, %10
  store double %add8, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load double, double* %skip_inc.addr, align 8
  %13 = load double, double* %value.addr, align 8
  %sub10 = fsub double %13, %12
  store double %sub10, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load double, double* %skip_inc.addr, align 8
  %15 = load double, double* %value.addr, align 8
  %add12 = fadd double %15, %14
  store double %add12, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.13
  %16 = load double, double* %delta_factor.addr, align 8
  %cmp = fcmp oge double %16, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.action_select_value, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %17 = load double, double* %value.addr, align 8
  store double %17, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %18 = load double, double* %delta_factor.addr, align 8
  %add14 = fadd double 1.000000e+00, %18
  %19 = load double, double* %value.addr, align 8
  %div = fdiv double %19, %add14
  store double %div, double* %value.addr, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  br label %do.body.16

do.body.16:                                       ; preds = %sw.bb.15
  %20 = load double, double* %delta_factor.addr, align 8
  %cmp17 = fcmp oge double %20, 0.000000e+00
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.action_select_value, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %21 = load double, double* %value.addr, align 8
  store double %21, double* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %22 = load double, double* %delta_factor.addr, align 8
  %add22 = fadd double 1.000000e+00, %22
  %23 = load double, double* %value.addr, align 8
  %mul = fmul double %23, %add22
  store double %mul, double* %value.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %24 = load i32, i32* %select_type.addr, align 4
  %cmp23 = icmp sge i32 %24, 0
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %sw.default
  %25 = load i32, i32* %select_type.addr, align 4
  %conv = sitofp i32 %25 to double
  %26 = load double, double* %max.addr, align 8
  %27 = load double, double* %min.addr, align 8
  %sub25 = fsub double %26, %27
  %mul26 = fmul double %conv, %sub25
  %div27 = fdiv double %mul26, 1.000000e+03
  %28 = load double, double* %min.addr, align 8
  %add28 = fadd double %div27, %28
  store double %add28, double* %value.addr, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %sw.default
  br label %do.body.30

do.body.30:                                       ; preds = %if.else.29
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 522, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.action_select_value, i32 0, i32 0))
  %29 = load double, double* %value.addr, align 8
  store double %29, double* %retval
  br label %return

do.end.31:                                        ; No predecessors!
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %if.then.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.32, %do.end.21, %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %30 = load i32, i32* %wrap.addr, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.33, label %if.else.45

if.then.33:                                       ; preds = %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.33
  %31 = load double, double* %value.addr, align 8
  %32 = load double, double* %min.addr, align 8
  %cmp34 = fcmp olt double %31, %32
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load double, double* %max.addr, align 8
  %34 = load double, double* %min.addr, align 8
  %35 = load double, double* %value.addr, align 8
  %sub36 = fsub double %34, %35
  %sub37 = fsub double %33, %sub36
  store double %sub37, double* %value.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.41, %while.end
  %36 = load double, double* %value.addr, align 8
  %37 = load double, double* %max.addr, align 8
  %cmp39 = fcmp ogt double %36, %37
  br i1 %cmp39, label %while.body.41, label %while.end.44

while.body.41:                                    ; preds = %while.cond.38
  %38 = load double, double* %min.addr, align 8
  %39 = load double, double* %value.addr, align 8
  %40 = load double, double* %max.addr, align 8
  %sub42 = fsub double %39, %40
  %add43 = fadd double %38, %sub42
  store double %add43, double* %value.addr, align 8
  br label %while.cond.38

while.end.44:                                     ; preds = %while.cond.38
  br label %if.end.54

if.else.45:                                       ; preds = %sw.epilog
  %41 = load double, double* %value.addr, align 8
  %42 = load double, double* %max.addr, align 8
  %cmp46 = fcmp ogt double %41, %42
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.45
  %43 = load double, double* %max.addr, align 8
  br label %cond.end.52

cond.false:                                       ; preds = %if.else.45
  %44 = load double, double* %value.addr, align 8
  %45 = load double, double* %min.addr, align 8
  %cmp48 = fcmp olt double %44, %45
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false
  %46 = load double, double* %min.addr, align 8
  br label %cond.end

cond.false.51:                                    ; preds = %cond.false
  %47 = load double, double* %value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.51, %cond.true.50
  %cond = phi double [ %46, %cond.true.50 ], [ %47, %cond.false.51 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end, %cond.true
  %cond53 = phi double [ %43, %cond.true ], [ %cond, %cond.end ]
  store double %cond53, double* %value.addr, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %cond.end.52, %while.end.44
  %48 = load double, double* %value.addr, align 8
  store double %48, double* %retval
  br label %return

return:                                           ; preds = %if.end.54, %do.body.30, %if.else.19, %if.else
  %49 = load double, double* %retval
  ret double %49
}

declare void @g_log(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @action_select_property(i32 %select_type, %struct._GimpDisplay* %display, %struct._GObject* %object, i8* %property_name, double %small_inc, double %inc, double %skip_inc, double %delta_factor, i32 %wrap) #0 {
entry:
  %select_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %property_name.addr = alloca i8*, align 8
  %small_inc.addr = alloca double, align 8
  %inc.addr = alloca double, align 8
  %skip_inc.addr = alloca double, align 8
  %delta_factor.addr = alloca double, align 8
  %wrap.addr = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst28 = alloca %struct._GTypeInstance*, align 8
  %__t30 = alloca i64, align 8
  %__r32 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %value = alloca double, align 8
  %blurb = alloca i8*, align 8
  %__inst69 = alloca %struct._GTypeInstance*, align 8
  %__t71 = alloca i64, align 8
  %__r74 = alloca i32, align 4
  %tmp89 = alloca i32, align 4
  %value93 = alloca i32, align 4
  %blurb111 = alloca i8*, align 8
  store i32 %select_type, i32* %select_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %property_name, i8** %property_name.addr, align 8
  store double %small_inc, double* %small_inc.addr, align 8
  store double %inc, double* %inc.addr, align 8
  store double %skip_inc, double* %skip_inc.addr, align 8
  store double %delta_factor, double* %delta_factor.addr, align 8
  store i32 %wrap, i32* %wrap.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._GimpDisplay* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %2 = bitcast %struct._GimpDisplay* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.action_select_property, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.122

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call13 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %15, i64 80) #7
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.action_select_property, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.122

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load i8*, i8** %property_name.addr, align 8
  %cmp20 = icmp ne i8* %16, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.action_select_property, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.122

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GObjectClass*
  %21 = load i8*, i8** %property_name.addr, align 8
  %call26 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %20, i8* %21)
  store %struct._GParamSpec* %call26, %struct._GParamSpec** %pspec, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst28, align 8
  %24 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %24, i64 13
  %25 = load i64, i64* %arrayidx, align 8
  store i64 %25, i64* %__t30, align 8
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %tobool33 = icmp ne %struct._GTypeInstance* %26, null
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %do.end.24
  store i32 0, i32* %__r32, align 4
  br label %if.end.46

if.else.35:                                       ; preds = %do.end.24
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %28, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.43

land.lhs.true.38:                                 ; preds = %if.else.35
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type40 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type40, align 8
  %32 = load i64, i64* %__t30, align 8
  %cmp41 = icmp eq i64 %31, %32
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %__r32, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true.38, %if.else.35
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst28, align 8
  %34 = load i64, i64* %__t30, align 8
  %call44 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %33, i64 %34) #7
  store i32 %call44, i32* %__r32, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.34
  %35 = load i32, i32* %__r32, align 4
  store i32 %35, i32* %tmp47
  %36 = load i32, i32* %tmp47
  %tobool48 = icmp ne i32 %36, 0
  br i1 %tobool48, label %if.then.49, label %if.else.67

if.then.49:                                       ; preds = %if.end.46
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %38 = bitcast %struct._GObject* %37 to i8*
  %39 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %38, i8* %39, double* %value, i8* null)
  %40 = load i32, i32* %select_type.addr, align 4
  %41 = load double, double* %value, align 8
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %43 = bitcast %struct._GParamSpec* %42 to %struct._GTypeInstance*
  %44 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %44, i64 13
  %45 = load i64, i64* %arrayidx51, align 8
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %45)
  %46 = bitcast %struct._GTypeInstance* %call52 to %struct._GParamSpecDouble*
  %minimum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %46, i32 0, i32 1
  %47 = load double, double* %minimum, align 8
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %49 = bitcast %struct._GParamSpec* %48 to %struct._GTypeInstance*
  %50 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx53 = getelementptr inbounds i64, i64* %50, i64 13
  %51 = load i64, i64* %arrayidx53, align 8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %51)
  %52 = bitcast %struct._GTypeInstance* %call54 to %struct._GParamSpecDouble*
  %maximum = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %52, i32 0, i32 2
  %53 = load double, double* %maximum, align 8
  %54 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %55 = bitcast %struct._GParamSpec* %54 to %struct._GTypeInstance*
  %56 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx55 = getelementptr inbounds i64, i64* %56, i64 13
  %57 = load i64, i64* %arrayidx55, align 8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %57)
  %58 = bitcast %struct._GTypeInstance* %call56 to %struct._GParamSpecDouble*
  %default_value = getelementptr inbounds %struct._GParamSpecDouble, %struct._GParamSpecDouble* %58, i32 0, i32 3
  %59 = load double, double* %default_value, align 8
  %60 = load double, double* %small_inc.addr, align 8
  %61 = load double, double* %inc.addr, align 8
  %62 = load double, double* %skip_inc.addr, align 8
  %63 = load double, double* %delta_factor.addr, align 8
  %64 = load i32, i32* %wrap.addr, align 4
  %call57 = call double @action_select_value(i32 %40, double %41, double %47, double %53, double %59, double %60, double %61, double %62, double %63, i32 %64)
  store double %call57, double* %value, align 8
  %65 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %66 = bitcast %struct._GObject* %65 to i8*
  %67 = load i8*, i8** %property_name.addr, align 8
  %68 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %66, i8* %67, double %68, i8* null)
  %69 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool58 = icmp ne %struct._GimpDisplay* %69, null
  br i1 %tobool58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.then.49
  %70 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call61 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %70)
  store i8* %call61, i8** %blurb, align 8
  %71 = load i8*, i8** %blurb, align 8
  %tobool62 = icmp ne i8* %71, null
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.then.59
  %72 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %73 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #5
  %74 = load i8*, i8** %blurb, align 8
  %75 = load double, double* %value, align 8
  call void (%struct._GimpDisplay*, %struct._GObject*, i8*, ...) @action_message(%struct._GimpDisplay* %72, %struct._GObject* %73, i8* %call64, i8* %74, double %75)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.then.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.49
  br label %if.end.122

if.else.67:                                       ; preds = %if.end.46
  %76 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %77 = bitcast %struct._GParamSpec* %76 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %77, %struct._GTypeInstance** %__inst69, align 8
  %78 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %78, i64 3
  %79 = load i64, i64* %arrayidx72, align 8
  store i64 %79, i64* %__t71, align 8
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %tobool75 = icmp ne %struct._GTypeInstance* %80, null
  br i1 %tobool75, label %if.else.77, label %if.then.76

if.then.76:                                       ; preds = %if.else.67
  store i32 0, i32* %__r74, align 4
  br label %if.end.88

if.else.77:                                       ; preds = %if.else.67
  %81 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class78 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %81, i32 0, i32 0
  %82 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class78, align 8
  %tobool79 = icmp ne %struct._GTypeClass* %82, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.else.85

land.lhs.true.80:                                 ; preds = %if.else.77
  %83 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %83, i32 0, i32 0
  %84 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %g_type82 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %84, i32 0, i32 0
  %85 = load i64, i64* %g_type82, align 8
  %86 = load i64, i64* %__t71, align 8
  %cmp83 = icmp eq i64 %85, %86
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %land.lhs.true.80
  store i32 1, i32* %__r74, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %land.lhs.true.80, %if.else.77
  %87 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst69, align 8
  %88 = load i64, i64* %__t71, align 8
  %call86 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %87, i64 %88) #7
  store i32 %call86, i32* %__r74, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then.76
  %89 = load i32, i32* %__r74, align 4
  store i32 %89, i32* %tmp89
  %90 = load i32, i32* %tmp89
  %tobool90 = icmp ne i32 %90, 0
  br i1 %tobool90, label %if.then.91, label %if.else.118

if.then.91:                                       ; preds = %if.end.88
  %91 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %92 = bitcast %struct._GObject* %91 to i8*
  %93 = load i8*, i8** %property_name.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %92, i8* %93, i32* %value93, i8* null)
  %94 = load i32, i32* %select_type.addr, align 4
  %95 = load i32, i32* %value93, align 4
  %conv = sitofp i32 %95 to double
  %96 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %97 = bitcast %struct._GParamSpec* %96 to %struct._GTypeInstance*
  %98 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx94 = getelementptr inbounds i64, i64* %98, i64 3
  %99 = load i64, i64* %arrayidx94, align 8
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %99)
  %100 = bitcast %struct._GTypeInstance* %call95 to %struct._GParamSpecInt*
  %minimum96 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %100, i32 0, i32 1
  %101 = load i32, i32* %minimum96, align 4
  %conv97 = sitofp i32 %101 to double
  %102 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %103 = bitcast %struct._GParamSpec* %102 to %struct._GTypeInstance*
  %104 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx98 = getelementptr inbounds i64, i64* %104, i64 3
  %105 = load i64, i64* %arrayidx98, align 8
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %105)
  %106 = bitcast %struct._GTypeInstance* %call99 to %struct._GParamSpecInt*
  %maximum100 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %106, i32 0, i32 2
  %107 = load i32, i32* %maximum100, align 4
  %conv101 = sitofp i32 %107 to double
  %108 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %109 = bitcast %struct._GParamSpec* %108 to %struct._GTypeInstance*
  %110 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx102 = getelementptr inbounds i64, i64* %110, i64 3
  %111 = load i64, i64* %arrayidx102, align 8
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %111)
  %112 = bitcast %struct._GTypeInstance* %call103 to %struct._GParamSpecInt*
  %default_value104 = getelementptr inbounds %struct._GParamSpecInt, %struct._GParamSpecInt* %112, i32 0, i32 3
  %113 = load i32, i32* %default_value104, align 4
  %conv105 = sitofp i32 %113 to double
  %114 = load double, double* %small_inc.addr, align 8
  %115 = load double, double* %inc.addr, align 8
  %116 = load double, double* %skip_inc.addr, align 8
  %117 = load double, double* %delta_factor.addr, align 8
  %118 = load i32, i32* %wrap.addr, align 4
  %call106 = call double @action_select_value(i32 %94, double %conv, double %conv97, double %conv101, double %conv105, double %114, double %115, double %116, double %117, i32 %118)
  %conv107 = fptosi double %call106 to i32
  store i32 %conv107, i32* %value93, align 4
  %119 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %120 = bitcast %struct._GObject* %119 to i8*
  %121 = load i8*, i8** %property_name.addr, align 8
  %122 = load i32, i32* %value93, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %120, i8* %121, i32 %122, i8* null)
  %123 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool108 = icmp ne %struct._GimpDisplay* %123, null
  br i1 %tobool108, label %if.then.109, label %if.end.117

if.then.109:                                      ; preds = %if.then.91
  %124 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call112 = call i8* @g_param_spec_get_blurb(%struct._GParamSpec* %124)
  store i8* %call112, i8** %blurb111, align 8
  %125 = load i8*, i8** %blurb111, align 8
  %tobool113 = icmp ne i8* %125, null
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.then.109
  %126 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %127 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #5
  %128 = load i8*, i8** %blurb111, align 8
  %129 = load i32, i32* %value93, align 4
  call void (%struct._GimpDisplay*, %struct._GObject*, i8*, ...) @action_message(%struct._GimpDisplay* %126, %struct._GObject* %127, i8* %call115, i8* %128, i32 %129)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.then.109
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.91
  br label %if.end.121

if.else.118:                                      ; preds = %if.end.88
  br label %do.body.119

do.body.119:                                      ; preds = %if.else.118
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 616, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.action_select_property, i32 0, i32 0))
  br label %if.end.122

do.end.120:                                       ; No predecessors!
  br label %if.end.121

if.end.121:                                       ; preds = %do.end.120, %if.end.117
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.10, %if.else.16, %if.else.22, %do.body.119, %if.end.121, %if.end.66
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #2

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #3

declare void @g_object_get(i8*, i8*, ...) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare i8* @g_param_spec_get_blurb(%struct._GParamSpec*) #3

; Function Attrs: nounwind uwtable
define void @action_message(%struct._GimpDisplay* %display, %struct._GObject* %object, i8* %format, ...) #0 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %object.addr = alloca %struct._GObject*, align 8
  %format.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %stock_id = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call1 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %1)
  store %struct._GimpStatusbar* %call1, %struct._GimpStatusbar** %statusbar, align 8
  store i8* null, i8** %stock_id, align 8
  %2 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %3 = bitcast %struct._GObject* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_tool_options_get_type() #6
  store i64 %call2, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_tool_options_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpToolOptions*
  %tool_info14 = getelementptr inbounds %struct._GimpToolOptions, %struct._GimpToolOptions* %17, i32 0, i32 1
  %18 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info14, align 8
  store %struct._GimpToolInfo* %18, %struct._GimpToolInfo** %tool_info, align 8
  %19 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %20 = bitcast %struct._GimpToolInfo* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_viewable_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpViewable*
  %call17 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %21)
  store i8* %call17, i8** %stock_id, align 8
  br label %if.end.47

if.else.18:                                       ; preds = %if.end.8
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_viewable_get_type() #6
  store i64 %call23, i64* %__t22, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %if.else.18
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type33, align 8
  %30 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %29, %30
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %32 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #7
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %33 = load i32, i32* %__r25, align 4
  store i32 %33, i32* %tmp40
  %34 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %34, 0
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.39
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_viewable_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call43)
  %37 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpViewable*
  %call45 = call i8* @gimp_viewable_get_stock_id(%struct._GimpViewable* %37)
  store i8* %call45, i8** %stock_id, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.10
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay48 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay48)
  %38 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %39 = load i8*, i8** %stock_id, align 8
  %40 = load i8*, i8** %format.addr, align 8
  %arraydecay49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_statusbar_push_temp_valist(%struct._GimpStatusbar* %38, i32 0, i8* %39, i8* %40, %struct.__va_list_tag* %arraydecay49)
  %arraydecay50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay5051 = bitcast %struct.__va_list_tag* %arraydecay50 to i8*
  call void @llvm.va_end(i8* %arraydecay5051)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @action_select_object(i32 %select_type, %struct._GimpContainer* %container, %struct._GimpObject* %current) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %select_type.addr = alloca i32, align 4
  %container.addr = alloca %struct._GimpContainer*, align 8
  %current.addr = alloca %struct._GimpObject*, align 8
  %select_index = alloca i32, align 4
  %n_children = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store i32 %select_type, i32* %select_type.addr, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpObject* %current, %struct._GimpObject** %current.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.action_select_object, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %cmp12 = icmp eq %struct._GimpObject* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_object_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.action_select_object, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %tobool40 = icmp ne %struct._GimpObject* %27, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %do.end.39
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.42:                                        ; preds = %do.end.39
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call43 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %28)
  store i32 %call43, i32* %n_children, align 4
  %29 = load i32, i32* %n_children, align 4
  %cmp44 = icmp eq i32 %29, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %30 = load i32, i32* %select_type.addr, align 4
  switch i32 %30, label %sw.default [
    i32 -2, label %sw.bb
    i32 -3, label %sw.bb.47
    i32 -6, label %sw.bb.48
    i32 -7, label %sw.bb.51
    i32 -8, label %sw.bb.53
    i32 -9, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %if.end.46
  store i32 0, i32* %select_index, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end.46
  %31 = load i32, i32* %n_children, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %select_index, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.46
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %33 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %call49 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %32, %struct._GimpObject* %33)
  %sub50 = sub nsw i32 %call49, 1
  store i32 %sub50, i32* %select_index, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.46
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %35 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %call52 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %34, %struct._GimpObject* %35)
  %add = add nsw i32 %call52, 1
  store i32 %add, i32* %select_index, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.end.46
  %36 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %37 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %call54 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %36, %struct._GimpObject* %37)
  %sub55 = sub nsw i32 %call54, 10
  store i32 %sub55, i32* %select_index, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.46
  %38 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %39 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  %call57 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %38, %struct._GimpObject* %39)
  %add58 = add nsw i32 %call57, 10
  store i32 %add58, i32* %select_index, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.46
  %40 = load i32, i32* %select_type.addr, align 4
  %cmp59 = icmp sge i32 %40, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %sw.default
  %41 = load i32, i32* %select_type.addr, align 4
  store i32 %41, i32* %select_index, align 4
  br label %if.end.64

if.else.61:                                       ; preds = %sw.default
  br label %do.body.62

do.body.62:                                       ; preds = %if.else.61
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 669, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.action_select_object, i32 0, i32 0))
  %42 = load %struct._GimpObject*, %struct._GimpObject** %current.addr, align 8
  store %struct._GimpObject* %42, %struct._GimpObject** %retval
  br label %return

do.end.63:                                        ; No predecessors!
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %if.then.60
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.64, %sw.bb.56, %sw.bb.53, %sw.bb.51, %sw.bb.48, %sw.bb.47, %sw.bb
  %43 = load i32, i32* %select_index, align 4
  %44 = load i32, i32* %n_children, align 4
  %sub65 = sub nsw i32 %44, 1
  %cmp66 = icmp sgt i32 %43, %sub65
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %45 = load i32, i32* %n_children, align 4
  %sub67 = sub nsw i32 %45, 1
  br label %cond.end.71

cond.false:                                       ; preds = %sw.epilog
  %46 = load i32, i32* %select_index, align 4
  %cmp68 = icmp slt i32 %46, 0
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false
  br label %cond.end

cond.false.70:                                    ; preds = %cond.false
  %47 = load i32, i32* %select_index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.70, %cond.true.69
  %cond = phi i32 [ 0, %cond.true.69 ], [ %47, %cond.false.70 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end, %cond.true
  %cond72 = phi i32 [ %sub67, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond72, i32* %select_index, align 4
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %49 = load i32, i32* %select_index, align 4
  %call73 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %48, i32 %49)
  store %struct._GimpObject* %call73, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %cond.end.71, %do.body.62, %if.then.45, %if.then.41, %if.else.37, %if.else.9
  %50 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %50
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #3

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #3

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #1

declare i8* @gimp_viewable_get_stock_id(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @gimp_statusbar_push_temp_valist(%struct._GimpStatusbar*, i32, i8*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @brush_editor_actions_setup(%struct._GimpActionGroup*) #3

declare void @brush_editor_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @brushes_actions_setup(%struct._GimpActionGroup*) #3

declare void @brushes_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @buffers_actions_setup(%struct._GimpActionGroup*) #3

declare void @buffers_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @channels_actions_setup(%struct._GimpActionGroup*) #3

declare void @channels_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @colormap_actions_setup(%struct._GimpActionGroup*) #3

declare void @colormap_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @config_actions_setup(%struct._GimpActionGroup*) #3

declare void @config_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @context_actions_setup(%struct._GimpActionGroup*) #3

declare void @context_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @cursor_info_actions_setup(%struct._GimpActionGroup*) #3

declare void @cursor_info_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @debug_actions_setup(%struct._GimpActionGroup*) #3

declare void @debug_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @dialogs_actions_setup(%struct._GimpActionGroup*) #3

declare void @dialogs_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @dock_actions_setup(%struct._GimpActionGroup*) #3

declare void @dock_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @dockable_actions_setup(%struct._GimpActionGroup*) #3

declare void @dockable_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @documents_actions_setup(%struct._GimpActionGroup*) #3

declare void @documents_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @drawable_actions_setup(%struct._GimpActionGroup*) #3

declare void @drawable_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @dynamics_actions_setup(%struct._GimpActionGroup*) #3

declare void @dynamics_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @dynamics_editor_actions_setup(%struct._GimpActionGroup*) #3

declare void @dynamics_editor_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @edit_actions_setup(%struct._GimpActionGroup*) #3

declare void @edit_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @error_console_actions_setup(%struct._GimpActionGroup*) #3

declare void @error_console_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @file_actions_setup(%struct._GimpActionGroup*) #3

declare void @file_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @fonts_actions_setup(%struct._GimpActionGroup*) #3

declare void @fonts_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @gradient_editor_actions_setup(%struct._GimpActionGroup*) #3

declare void @gradient_editor_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @gradients_actions_setup(%struct._GimpActionGroup*) #3

declare void @gradients_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @tool_presets_actions_setup(%struct._GimpActionGroup*) #3

declare void @tool_presets_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @tool_preset_editor_actions_setup(%struct._GimpActionGroup*) #3

declare void @tool_preset_editor_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @help_actions_setup(%struct._GimpActionGroup*) #3

declare void @help_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @image_actions_setup(%struct._GimpActionGroup*) #3

declare void @image_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @images_actions_setup(%struct._GimpActionGroup*) #3

declare void @images_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @layers_actions_setup(%struct._GimpActionGroup*) #3

declare void @layers_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @palette_editor_actions_setup(%struct._GimpActionGroup*) #3

declare void @palette_editor_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @palettes_actions_setup(%struct._GimpActionGroup*) #3

declare void @palettes_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @patterns_actions_setup(%struct._GimpActionGroup*) #3

declare void @patterns_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @plug_in_actions_setup(%struct._GimpActionGroup*) #3

declare void @plug_in_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @quick_mask_actions_setup(%struct._GimpActionGroup*) #3

declare void @quick_mask_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @sample_points_actions_setup(%struct._GimpActionGroup*) #3

declare void @sample_points_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @select_actions_setup(%struct._GimpActionGroup*) #3

declare void @select_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @templates_actions_setup(%struct._GimpActionGroup*) #3

declare void @templates_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @text_tool_actions_setup(%struct._GimpActionGroup*) #3

declare void @text_tool_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @text_editor_actions_setup(%struct._GimpActionGroup*) #3

declare void @text_editor_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @tool_options_actions_setup(%struct._GimpActionGroup*) #3

declare void @tool_options_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @tools_actions_setup(%struct._GimpActionGroup*) #3

declare void @tools_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @vectors_actions_setup(%struct._GimpActionGroup*) #3

declare void @vectors_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @view_actions_setup(%struct._GimpActionGroup*) #3

declare void @view_actions_update(%struct._GimpActionGroup*, i8*) #3

declare void @windows_actions_setup(%struct._GimpActionGroup*) #3

declare void @windows_actions_update(%struct._GimpActionGroup*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
