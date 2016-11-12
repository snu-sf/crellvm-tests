; ModuleID = './app/dialogs/dialogs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpUIManager = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GimpImageWindow = type opaque

@global_recent_docks = global %struct._GimpContainer* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.dialogs_init = private unnamed_addr constant [13 x i8] c"dialogs_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"toplevel\00", align 1
@entries = internal constant [84 x %struct._GimpDialogFactoryEntry] [%struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_image_new_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_file_open_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_file_open_location_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_file_save_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_file_export_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_preferences_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_input_devices_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_keyboard_shortcuts_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_module_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_palette_import_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_tips_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_about_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_error_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_close_all_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_quit_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_dock_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_toolbox_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_dock_window_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_toolbox_dock_window_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_dialog, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_tool_options_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_device_status_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_error_console_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_cursor_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_image_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_image_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_brush_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_brush_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_pattern_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_pattern_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_gradient_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_gradient_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_palette_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_palette_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_font_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_font_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_buffer_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_buffer_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_document_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 48, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_document_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 48, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_template_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 24, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.114, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_template_grid_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 24, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.119, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_dynamics_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.123, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_tool_preset_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 32, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.127, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_layer_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_channel_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_vectors_list_view_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.137, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.139, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_colormap_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.143, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_histogram_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_selection_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.152, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_undo_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.156, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_sample_point_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.161, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_navigation_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.166, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_color_editor_new, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.169, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_brush_editor_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.171, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.172, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_dynamics_editor_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.174, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.175, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_gradient_editor_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.178, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_palette_editor_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.180, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.181, i32 0, i32 0), %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* @dialogs_tool_preset_editor_get, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* null, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.182, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_window, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0 }, %struct._GimpDialogFactoryEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.183, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* null, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* @dialogs_restore_window, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0 }], align 16
@__func__.dialogs_exit = private unnamed_addr constant [13 x i8] c"dialogs_exit\00", align 1
@__func__.dialogs_load_recent_docks = private unnamed_addr constant [26 x i8] c"dialogs_load_recent_docks\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.dialogs_save_recent_docks = private unnamed_addr constant [26 x i8] c"dialogs_save_recent_docks\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"recently closed docks\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"end of recently closed docks\00", align 1
@__func__.dialogs_get_toolbox = private unnamed_addr constant [20 x i8] c"dialogs_get_toolbox\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"GIMP_IS_DIALOG_FACTORY (gimp_dialog_factory_get_singleton ())\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"gimp-brightness-contrast-tool-dialog\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"gimp-color-balance-tool-dialog\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"gimp-color-picker-tool-dialog\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"gimp-colorize-tool-dialog\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"gimp-crop-tool-dialog\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"gimp-curves-tool-dialog\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"gimp-desaturate-tool-dialog\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"gimp-gegl-tool-dialog\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"gimp-hue-saturation-tool-dialog\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"gimp-levels-tool-dialog\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"gimp-measure-tool-dialog\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"gimp-posterize-tool-dialog\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"gimp-rotate-tool-dialog\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"gimp-scale-tool-dialog\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"gimp-shear-tool-dialog\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"gimp-text-tool-dialog\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"gimp-threshold-tool-dialog\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"gimp-perspective-tool-dialog\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"gimp-toolbox-color-dialog\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"gimp-gradient-editor-color-dialog\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"gimp-palette-editor-color-dialog\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"gimp-colormap-editor-color-dialog\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"gimp-controller-editor-dialog\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"gimp-controller-action-dialog\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"gimp-image-new-dialog\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"gimp-file-open-dialog\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"gimp-file-open-location-dialog\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"gimp-file-save-dialog\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"gimp-file-export-dialog\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"gimp-preferences-dialog\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"gimp-input-devices-dialog\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"gimp-keyboard-shortcuts-dialog\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"gimp-module-dialog\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"gimp-palette-import-dialog\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"gimp-tips-dialog\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"gimp-about-dialog\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"gimp-error-dialog\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"gimp-close-all-dialog\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"gimp-quit-dialog\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"gimp-toolbox\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"gimp-dock-window\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"gimp-tool-options\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Tool Options\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"gimp-tool-options-dialog\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"gimp-device-status\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Devices\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Device Status\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"gimp-device-status-dialog\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"gimp-error-console\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Errors\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"Error Console\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"gimp-errors-dialog\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"gimp-cursor-view\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Pointer\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"Pointer Information\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"gimp-cursor\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"gimp-pointer-info-dialog\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"gimp-image-list\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"Images\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"gimp-images\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"gimp-image-dialog\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"gimp-image-grid\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"gimp-brush-list\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"Brushes\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"gimp-brush-dialog\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"gimp-brush-grid\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"gimp-pattern-list\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Patterns\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"gimp-pattern-dialog\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"gimp-pattern-grid\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"gimp-gradient-list\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Gradients\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"gimp-gradient-dialog\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"gimp-gradient-grid\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"gimp-palette-list\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"Palettes\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"gimp-palette-dialog\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"gimp-palette-grid\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"gimp-font-list\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"Fonts\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"gtk-select-font\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"gimp-font-dialog\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"gimp-font-grid\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"gimp-buffer-list\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"Buffers\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"gimp-buffer-dialog\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"gimp-buffer-grid\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"gimp-document-list\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"History\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"Document History\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"document-open-recent\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"gimp-document-dialog\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"gimp-document-grid\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"gimp-template-list\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"Templates\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"Image Templates\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"gimp-template\00", align 1
@.str.114 = private unnamed_addr constant [21 x i8] c"gimp-template-dialog\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"gimp-template-grid\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"gimp-dynamics-list\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"Paint Dynamics\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"gimp-dynamics\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"gimp-dynamics-dialog\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"gimp-tool-preset-list\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"Tool Presets\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"gimp-tool-preset\00", align 1
@.str.123 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-dialog\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"gimp-layer-list\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"gimp-layers\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"gimp-layer-dialog\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"gimp-channel-list\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"gimp-channels\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"gimp-channel-dialog\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"gimp-vectors-list\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"Paths\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"gimp-paths\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"gimp-path-dialog\00", align 1
@.str.136 = private unnamed_addr constant [21 x i8] c"gimp-indexed-palette\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"Colormap\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"gimp-colormap\00", align 1
@.str.139 = private unnamed_addr constant [28 x i8] c"gimp-indexed-palette-dialog\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"gimp-histogram-editor\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"Histogram\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"gimp-histogram-dialog\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"gimp-selection-editor\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"Selection Editor\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"gimp-selection\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"gimp-selection-dialog\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"gimp-undo-history\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"Undo\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"Undo History\00", align 1
@.str.152 = private unnamed_addr constant [17 x i8] c"gimp-undo-dialog\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"gimp-sample-point-editor\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"Sample Points\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c"gimp-sample-point\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"gimp-sample-point-dialog\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"gimp-navigation-view\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"Navigation\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"Display Navigation\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"gimp-navigation\00", align 1
@.str.161 = private unnamed_addr constant [23 x i8] c"gimp-navigation-dialog\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"gimp-color-editor\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"FG/BG\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"FG/BG Color\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"gimp-default-colors\00", align 1
@.str.166 = private unnamed_addr constant [18 x i8] c"gimp-color-dialog\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"gimp-brush-editor\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"Brush Editor\00", align 1
@.str.169 = private unnamed_addr constant [25 x i8] c"gimp-brush-editor-dialog\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"gimp-dynamics-editor\00", align 1
@.str.171 = private unnamed_addr constant [22 x i8] c"Paint Dynamics Editor\00", align 1
@.str.172 = private unnamed_addr constant [28 x i8] c"gimp-dynamics-editor-dialog\00", align 1
@.str.173 = private unnamed_addr constant [21 x i8] c"gimp-gradient-editor\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"Gradient Editor\00", align 1
@.str.175 = private unnamed_addr constant [28 x i8] c"gimp-gradient-editor-dialog\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"gimp-palette-editor\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"Palette Editor\00", align 1
@.str.178 = private unnamed_addr constant [27 x i8] c"gimp-palette-editor-dialog\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"gimp-tool-preset-editor\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"Tool Preset Editor\00", align 1
@.str.181 = private unnamed_addr constant [31 x i8] c"gimp-tool-preset-editor-dialog\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"gimp-empty-image-window\00", align 1
@.str.183 = private unnamed_addr constant [25 x i8] c"gimp-single-image-window\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.dialogs_restore_dialog = private unnamed_addr constant [23 x i8] c"dialogs_restore_dialog\00", align 1
@.str.184 = private unnamed_addr constant [34 x i8] c"restoring toplevel \22%s\22 (info %p)\00", align 1
@.str.185 = private unnamed_addr constant [23 x i8] c"gimp-dialog-visibility\00", align 1
@.str.186 = private unnamed_addr constant [25 x i8] c"GIMP_TESTING_DOCKRC_NAME\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"dockrc\00", align 1

; Function Attrs: nounwind uwtable
define void @dialogs_init(%struct._Gimp* %gimp, %struct._GimpMenuFactory* %menu_factory) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %factory = alloca %struct._GimpDialogFactory*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %factory, align 8
  store i32 0, i32* %i, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dialogs_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %14 = bitcast %struct._GimpMenuFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_menu_factory_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dialogs_init, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %26)
  %27 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call40 = call %struct._GimpDialogFactory* @gimp_dialog_factory_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._GimpContext* %call39, %struct._GimpMenuFactory* %27)
  store %struct._GimpDialogFactory* %call40, %struct._GimpDialogFactory** %factory, align 8
  %28 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory, align 8
  call void @gimp_dialog_factory_set_singleton(%struct._GimpDialogFactory* %28)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %29 = load i32, i32* %i, align 4
  %conv = sext i32 %29 to i64
  %cmp41 = icmp ult i64 %conv, 84
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call43 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx, i32 0, i32 0
  %31 = load i8*, i8** %identifier, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %32 to i64
  %arrayidx45 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom44
  %name = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx45, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %call46 = call i8* @gettext(i8* %33) #7
  %34 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom47
  %blurb = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx48, i32 0, i32 2
  %35 = load i8*, i8** %blurb, align 8
  %call49 = call i8* @gettext(i8* %35) #7
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom50
  %stock_id = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx51, i32 0, i32 3
  %37 = load i8*, i8** %stock_id, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom52
  %help_id = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx53, i32 0, i32 4
  %39 = load i8*, i8** %help_id, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %40 to i64
  %arrayidx55 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom54
  %new_func = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx55, i32 0, i32 5
  %41 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)** %new_func, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom56
  %restore_func = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx57, i32 0, i32 6
  %43 = load %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)** %restore_func, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom58
  %view_size = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx59, i32 0, i32 7
  %45 = load i32, i32* %view_size, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom60
  %singleton = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx61, i32 0, i32 8
  %47 = load i32, i32* %singleton, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %48 to i64
  %arrayidx63 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom62
  %session_managed = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx63, i32 0, i32 9
  %49 = load i32, i32* %session_managed, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom64
  %remember_size = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx65, i32 0, i32 10
  %51 = load i32, i32* %remember_size, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom66
  %remember_if_open = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx67, i32 0, i32 11
  %53 = load i32, i32* %remember_if_open, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %54 to i64
  %arrayidx69 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom68
  %hideable = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx69, i32 0, i32 12
  %55 = load i32, i32* %hideable, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %56 to i64
  %arrayidx71 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom70
  %image_window = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx71, i32 0, i32 13
  %57 = load i32, i32* %image_window, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %58 to i64
  %arrayidx73 = getelementptr inbounds [84 x %struct._GimpDialogFactoryEntry], [84 x %struct._GimpDialogFactoryEntry]* @entries, i32 0, i64 %idxprom72
  %dockable = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %arrayidx73, i32 0, i32 14
  %59 = load i32, i32* %dockable, align 4
  call void @gimp_dialog_factory_register_entry(%struct._GimpDialogFactory* %call43, i8* %31, i8* %call46, i8* %call49, i8* %37, i8* %39, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)* %41, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)* %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57, i32 %59)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call74 = call i64 @gimp_session_info_get_type() #5
  %call75 = call %struct._GimpContainer* @gimp_list_new(i64 %call74, i32 0)
  store %struct._GimpContainer* %call75, %struct._GimpContainer** @global_recent_docks, align 8
  br label %return

return:                                           ; preds = %for.end, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_new(i8*, %struct._GimpContext*, %struct._GimpMenuFactory*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare void @gimp_dialog_factory_set_singleton(%struct._GimpDialogFactory*) #3

declare void @gimp_dialog_factory_register_entry(%struct._GimpDialogFactory*, i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_session_info_get_type() #1

; Function Attrs: nounwind uwtable
define void @dialogs_exit(%struct._Gimp* %gimp) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dialogs_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %tobool12 = icmp ne %struct._GimpDialogFactory* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %call14 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %13 = bitcast %struct._GimpDialogFactory* %call14 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_run_dispose(%struct._GObject* %14)
  %call16 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %15 = bitcast %struct._GimpDialogFactory* %call16 to i8*
  call void @g_object_unref(i8* %15)
  call void @gimp_dialog_factory_set_singleton(%struct._GimpDialogFactory* null)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %tobool18 = icmp ne %struct._GimpContainer* %16, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %18 = bitcast %struct._GimpContainer* %17 to i8*
  call void @g_object_unref(i8* %18)
  store %struct._GimpContainer* null, %struct._GimpContainer** @global_recent_docks, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.19, %if.end.17
  ret void
}

declare void @g_object_run_dispose(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @dialogs_load_recent_docks(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dialogs_load_recent_docks, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i8* @dialogs_get_dockrc_filename()
  store i8* %call11, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_config_interface_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpConfig*
  %19 = load i8*, i8** %filename, align 8
  %call18 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %18, i8* %19, i8* null, %struct._GError** %error)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 1
  %21 = load i32, i32* %code, align 4
  %cmp21 = icmp ne i32 %21, 1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %22, %struct._GObject* null, i32 2, i8* %24)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.20
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.15
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  call void @gimp_container_foreach(%struct._GimpContainer* %25, void (i8*, i8*)* bitcast (void (%struct._GimpSessionInfo*)* @dialogs_ensure_factory_entry_on_recent_dock to void (i8*, i8*)*), i8* null)
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %27 = bitcast %struct._GimpContainer* %26 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_list_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call25)
  %28 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %28)
  %29 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %29)
  br label %return

return:                                           ; preds = %if.end.24, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @dialogs_get_dockrc_filename() #0 {
entry:
  %basename = alloca i8*, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.186, i32 0, i32 0))
  store i8* %call, i8** %basename, align 8
  %0 = load i8*, i8** %basename, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.187, i32 0, i32 0), i8** %basename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %basename, align 8
  %call1 = call noalias i8* @gimp_personal_rc_file(i8* %1)
  ret i8* %call1
}

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @dialogs_ensure_factory_entry_on_recent_dock(%struct._GimpSessionInfo* %info) #0 {
entry:
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %entry1 = alloca %struct._GimpDialogFactoryEntry*, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  %0 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %0)
  %tobool = icmp ne %struct._GimpDialogFactoryEntry* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %call2 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call3 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %call2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0))
  store %struct._GimpDialogFactoryEntry* %call3, %struct._GimpDialogFactoryEntry** %entry1, align 8
  %1 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %2 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry1, align 8
  call void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo* %1, %struct._GimpDialogFactoryEntry* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_list_reverse(%struct._GimpList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @dialogs_save_recent_docks(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dialogs_save_recent_docks, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i8* @dialogs_get_dockrc_filename()
  store i8* %call11, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %17 = bitcast %struct._GimpContainer* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_config_interface_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpConfig*
  %19 = load i8*, i8** %filename, align 8
  %call18 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %18, i8* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* null, %struct._GError** %error)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %21 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %21, i32 0, i32 2
  %22 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %20, %struct._GObject* null, i32 2, i8* %22)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.15
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  br label %return

return:                                           ; preds = %if.end.21, %if.else.9
  ret void
}

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @dialogs_get_toolbox() #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %0 = bitcast %struct._GimpDialogFactory* %call to %struct._GTypeInstance*
  store %struct._GTypeInstance* %0, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_dialog_factory_get_type() #5
  store i64 %call1, i64* %__t, align 8
  %1 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type, align 8
  %7 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %6, %7
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %9 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %8, i64 %9) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %10 = load i32, i32* %__r, align 4
  store i32 %10, i32* %tmp
  %11 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dialogs_get_toolbox, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call13 = call %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory* %call12)
  store %struct._GList* %call13, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %12, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_dock_window_get_type() #5
  store i64 %call19, i64* %__t18, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %for.body
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %for.body
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type29, align 8
  %22 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %21, %22
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %24 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %25 = load i32, i32* %__r21, align 4
  store i32 %25, i32* %tmp36
  %26 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %26, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.44

land.lhs.true.38:                                 ; preds = %if.end.35
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data39, align 8
  %29 = bitcast i8* %28 to %struct._GimpDockWindow*
  %call40 = call i32 @gimp_dock_window_has_toolbox(%struct._GimpDockWindow* %29)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.38
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data43, align 8
  %32 = bitcast i8* %31 to %struct._GtkWidget*
  store %struct._GtkWidget* %32, %struct._GtkWidget** %retval
  br label %return

if.end.44:                                        ; preds = %land.lhs.true.38, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %33, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.42, %if.else.10
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %36
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #1

declare %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #1

declare i32 @gimp_dock_window_has_toolbox(%struct._GimpDockWindow*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @dialogs_restore_dialog(%struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, %struct._GimpSessionInfo* %info) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %config = alloca %struct._GimpCoreConfig*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %0)
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  store %struct._GimpCoreConfig* %2, %struct._GimpCoreConfig** %config, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %3, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call2 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %4)
  %identifier = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %call2, i32 0, i32 0
  %5 = load i8*, i8** %identifier, align 8
  %6 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.dialogs_restore_dialog, i32 0, i32 0), i32 437, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.184, i32 0, i32 0), i8* %5, %struct._GimpSessionInfo* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %8 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %9 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call3 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %9)
  %identifier4 = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %call3, i32 0, i32 0
  %10 = load i8*, i8** %identifier4, align 8
  %11 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info.addr, align 8
  %call5 = call %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo* %11)
  %view_size = getelementptr inbounds %struct._GimpDialogFactoryEntry, %struct._GimpDialogFactoryEntry* %call5, i32 0, i32 7
  %12 = load i32, i32* %view_size, align 4
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %14 = bitcast %struct._GimpCoreConfig* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_gui_config_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpGuiConfig*
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %15, i32 0, i32 31
  %16 = load i32, i32* %hide_docks, align 4
  %tobool8 = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool8, true
  %lnot.ext = zext i1 %lnot to i32
  %call9 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %7, %struct._GdkScreen* %8, %struct._GimpUIManager* null, i8* %10, i32 %12, i32 %lnot.ext)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %dialog, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %20 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %21 = bitcast %struct._GimpCoreConfig* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_gui_config_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpGuiConfig*
  %hide_docks13 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %22, i32 0, i32 31
  %23 = load i32, i32* %hide_docks13, align 4
  %tobool14 = icmp ne i32 %23, 0
  %cond = select i1 %tobool14, i32 3, i32 2
  %conv = sext i32 %cond to i64
  %24 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.185, i32 0, i32 0), i8* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %25
}

declare %struct._GtkWidget* @dialogs_image_new_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_file_open_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_file_open_location_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_file_save_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_file_export_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_preferences_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_input_devices_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_keyboard_shortcuts_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_module_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_palette_import_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_tips_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_about_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_error_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_close_all_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_quit_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_dock_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_toolbox_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_dock_window_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_toolbox_dock_window_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_tool_options_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_device_status_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_error_console_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_cursor_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_image_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_image_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_brush_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_brush_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_pattern_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_pattern_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_gradient_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_gradient_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_palette_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_palette_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_font_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_font_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_buffer_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_buffer_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_document_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_document_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_template_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_template_grid_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_dynamics_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_tool_preset_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_layer_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_channel_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_vectors_list_view_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_colormap_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_histogram_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_selection_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_undo_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_sample_point_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_navigation_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_color_editor_new(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_brush_editor_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_dynamics_editor_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_gradient_editor_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_palette_editor_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

declare %struct._GtkWidget* @dialogs_tool_preset_editor_get(%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @dialogs_restore_window(%struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, %struct._GimpSessionInfo* %info) #0 {
entry:
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %info.addr = alloca %struct._GimpSessionInfo*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store %struct._GimpSessionInfo* %info, %struct._GimpSessionInfo** %info.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %call = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %0)
  %gimp1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %1, %struct._Gimp** %gimp, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp* %2)
  %3 = bitcast %struct._GimpObject* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_display_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %4, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %5)
  store %struct._GimpDisplayShell* %call5, %struct._GimpDisplayShell** %shell, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call6 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %6)
  %7 = bitcast %struct._GimpImageWindow* %call6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  store %struct._GtkWidget* %8, %struct._GtkWidget** %dialog, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %9
}

declare %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory*) #3

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare %struct._GimpDialogFactoryEntry* @gimp_session_info_get_factory_entry(%struct._GimpSessionInfo*) #3

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #3

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare i8* @g_getenv(i8*) #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory*, i8*) #3

declare void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo*, %struct._GimpDialogFactoryEntry*) #3

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
