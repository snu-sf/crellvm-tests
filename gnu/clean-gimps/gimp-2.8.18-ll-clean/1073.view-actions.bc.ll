; ModuleID = './app/actions/view-actions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i8* }
%struct._GimpToggleActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()*, i32, i8* }
%struct._GimpEnumActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct._GimpRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionGroupPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpRGB, i32 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
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
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }

@.str = private unnamed_addr constant [12 x i8] c"view-action\00", align 1
@view_actions = internal constant [13 x %struct._GimpActionEntry] [%struct._GimpActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* null }, %struct._GimpActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* null, void ()* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_new_cmd_callback to void ()*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_close_cmd_callback to void ()*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.71, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_zoom_fit_in_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_zoom_fill_cmd_callback to void ()*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.77, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_zoom_revert_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_navigation_window_cmd_callback to void ()*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.85, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_display_filters_cmd_callback to void ()*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.89, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_shrink_wrap_cmd_callback to void ()*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i32 0, i32 0) }, %struct._GimpActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @window_open_display_cmd_callback to void ()*), i8* null }], align 16
@view_toggle_actions = internal constant [16 x %struct._GimpToggleActionEntry] [%struct._GimpToggleActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.95, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_dot_for_dot_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.99, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_selection_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.102, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_layer_boundary_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_guides_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.109, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_grid_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.110, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.111, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.112, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_sample_points_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_snap_to_guides_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.116, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.118, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_snap_to_grid_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.119, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.120, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.121, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_snap_to_canvas_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.124, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_snap_to_vectors_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.125, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_menubar_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.128, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.131, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_rulers_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.134, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_scrollbars_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.135, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.137, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_toggle_statusbar_cmd_callback to void ()*), i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.138, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_fullscreen_cmd_callback to void ()*), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.143, i32 0, i32 0) }, %struct._GimpToggleActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.146, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_use_gegl_cmd_callback to void ()*), i32 0, i8* null }], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"view-zoom-action\00", align 1
@view_zoom_actions = internal constant [9 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.151, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i32 0, i32 0), i32 -6, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i32 -7, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i32 0, i32 0), i32 -6, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.162, i32 0, i32 0), i32 -7, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.173, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }], align 16
@view_zoom_explicit_actions = internal constant [15 x %struct._GimpRadioActionEntry] [%struct._GimpRadioActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.176, i32 0, i32 0), i32 160000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.177, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.176, i32 0, i32 0), i32 160000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i32 80000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.182, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i32 80000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i32 40000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.187, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0), i32 40000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0), i32 20000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.192, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.191, i32 0, i32 0), i32 20000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), i32 10000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.198, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), i32 10000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.198, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.203, i32 0, i32 0), i32 5000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.206, i32 0, i32 0), i32 2500, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i32 0, i32 0), i32 1250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i32 0, i32 0), i32 625, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0) }, %struct._GimpRadioActionEntry { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.214, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.215, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"view-padding-color\00", align 1
@view_padding_color_actions = internal constant [5 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.216, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.217, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.219, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.220, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.221, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.222, i32 0, i32 0), i32 2, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.224, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.225, i32 0, i32 0), i32 3, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i32 0, i32 0) }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.227, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.228, i32 0, i32 0), i32 -1, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i32 0, i32 0) }], align 16
@view_scroll_horizontal_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.229, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.230, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.231, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.232, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.233, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.234, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.236, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.237, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.238, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.239, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.240, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.241, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.242, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@view_scroll_vertical_actions = internal constant [7 x %struct._GimpEnumActionEntry] [%struct._GimpEnumActionEntry { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.243, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.244, i32 0, i32 0), i8* null, i8* null, i32 0, i32 1, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.245, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.246, i32 0, i32 0), i8* null, i8* null, i32 -2, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.247, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.248, i32 0, i32 0), i8* null, i8* null, i32 -3, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.249, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.250, i32 0, i32 0), i8* null, i8* null, i32 -6, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.251, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.252, i32 0, i32 0), i8* null, i8* null, i32 -7, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.253, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.254, i32 0, i32 0), i8* null, i8* null, i32 -8, i32 0, i8* null }, %struct._GimpEnumActionEntry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.255, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.256, i32 0, i32 0), i8* null, i8* null, i32 -9, i32 0, i8* null }], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"view-zoom-other\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"notify::check-type\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"gimp-view-change-screen\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"view-new\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"view-close\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"view-dot-for-dot\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"view-zoom-revert\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Re_vert Zoom (%d%%)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Re_vert Zoom\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"view-zoom-out\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"view-zoom-in\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"view-zoom-fit-in\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"view-zoom-fill\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"view-zoom-16-1\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"view-zoom-8-1\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"view-zoom-4-1\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"view-zoom-2-1\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"view-zoom-1-1\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"view-zoom-1-2\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"view-zoom-1-4\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"view-zoom-1-8\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"view-zoom-1-16\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"view-navigation-window\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"view-display-filters\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"view-show-selection\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"view-show-layer-boundary\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"view-show-guides\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"view-show-grid\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"view-show-sample-points\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"view-snap-to-guides\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"view-snap-to-grid\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"view-snap-to-canvas\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"view-snap-to-vectors\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"view-padding-color-theme\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"view-padding-color-light-check\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"view-padding-color-dark-check\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"view-padding-color-custom\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"view-padding-color-prefs\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"view-padding-color-menu\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"view-show-menubar\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"view-show-rulers\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"view-show-scrollbars\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"view-show-statusbar\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"view-shrink-wrap\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"view-fullscreen\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"view-use-gegl\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"view-menu\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"_View\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"view-zoom-menu\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"_Zoom\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"_Padding Color\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"view-move-to-screen-menu\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"gimp-move-to-screen\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Move to Screen\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"_New View\00", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"Create another view on this image\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"gimp-view-new\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"_Close View\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"<primary>W\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"Close the active image view\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"gimp-file-close\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"gtk-zoom-fit\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"_Fit Image in Window\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"<primary><shift>J\00", align 1
@.str.71 = private unnamed_addr constant [62 x i8] c"Adjust the zoom ratio so that the image becomes fully visible\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"gimp-view-zoom-fit-in\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"Fi_ll Window\00", align 1
@.str.74 = private unnamed_addr constant [56 x i8] c"Adjust the zoom ratio so that the entire window is used\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"gimp-view-zoom-fill\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"grave\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"Restore the previous zoom level\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"gimp-view-zoom-revert\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"gimp-navigation\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"Na_vigation Window\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Show an overview window for this image\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"gimp-navigation-dialog\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"gimp-display-filter\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"Display _Filters...\00", align 1
@.str.85 = private unnamed_addr constant [39 x i8] c"Configure filters applied to this view\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"gimp-display-filter-dialog\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"Shrink _Wrap\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"<primary>J\00", align 1
@.str.89 = private unnamed_addr constant [57 x i8] c"Reduce the image window to the size of the image display\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"gimp-view-shrink-wrap\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"view-open-display\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"_Open Display...\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"Connect to another display\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"_Dot for Dot\00", align 1
@.str.95 = private unnamed_addr constant [48 x i8] c"A pixel on the screen represents an image pixel\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"gimp-view-dot-for-dot\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"Show _Selection\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"<primary>T\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"Display the selection outline\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"gimp-view-show-selection\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"Show _Layer Boundary\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"Draw a border around the active layer\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"gimp-view-show-layer-boundary\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"Show _Guides\00", align 1
@.str.105 = private unnamed_addr constant [18 x i8] c"<primary><shift>T\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Display the image's guides\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"gimp-view-show-guides\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"S_how Grid\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"Display the image's grid\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"gimp-view-show-grid\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"Show Sample Points\00", align 1
@.str.112 = private unnamed_addr constant [40 x i8] c"Display the image's color sample points\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"gimp-view-show-sample-points\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"Sn_ap to Guides\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"Tool operations snap to guides\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"gimp-view-snap-to-guides\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"Sna_p to Grid\00", align 1
@.str.118 = private unnamed_addr constant [33 x i8] c"Tool operations snap to the grid\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"gimp-view-snap-to-grid\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"Snap to _Canvas Edges\00", align 1
@.str.121 = private unnamed_addr constant [41 x i8] c"Tool operations snap to the canvas edges\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"gimp-view-snap-to-canvas\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"Snap t_o Active Path\00", align 1
@.str.124 = private unnamed_addr constant [40 x i8] c"Tool operations snap to the active path\00", align 1
@.str.125 = private unnamed_addr constant [26 x i8] c"gimp-view-snap-to-vectors\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"Show _Menubar\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"Show this window's menubar\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"gimp-view-show-menubar\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"Show R_ulers\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"<primary><shift>R\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"Show this window's rulers\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"gimp-view-show-rulers\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"Show Scroll_bars\00", align 1
@.str.134 = private unnamed_addr constant [30 x i8] c"Show this window's scrollbars\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"gimp-view-show-scrollbars\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"Show S_tatusbar\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"Show this window's statusbar\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"gimp-view-show-statusbar\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"gtk-fullscreen\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Fullscr_een\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"F11\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"Toggle fullscreen view\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"gimp-view-fullscreen\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"gimp-gegl\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Use GEGL\00", align 1
@.str.146 = private unnamed_addr constant [44 x i8] c"Use GEGL to create this window's projection\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"view-zoom\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"Set zoom factor\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"view-zoom-minimum\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"gtk-zoom-out\00", align 1
@.str.151 = private unnamed_addr constant [28 x i8] c"Zoom out as far as possible\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"gimp-view-zoom-out\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"view-zoom-maximum\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"gtk-zoom-in\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"Zoom in as far as possible\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"gimp-view-zoom-in\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"Zoom _Out\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"Zoom out\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"Zoom _In\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"Zoom in\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"view-zoom-out-accel\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"gimp-char-picker\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"Zoom Out\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"KP_Subtract\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"view-zoom-in-accel\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"Zoom In\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"KP_Add\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"view-zoom-out-skip\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"Zoom out a lot\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"view-zoom-in-skip\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"Zoom in a lot\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"1_6:1  (1600%)\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"Zoom 16:1\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"view-zoom-16-1-accel\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"KP_5\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"_8:1  (800%)\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"Zoom 8:1\00", align 1
@.str.182 = private unnamed_addr constant [20 x i8] c"view-zoom-8-1-accel\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"KP_4\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"_4:1  (400%)\00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"Zoom 4:1\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"view-zoom-4-1-accel\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"KP_3\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"_2:1  (200%)\00", align 1
@.str.190 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"Zoom 2:1\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"view-zoom-2-1-accel\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"KP_2\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"gtk-zoom-100\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"_1:1  (100%)\00", align 1
@.str.196 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"Zoom 1:1\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"gimp-view-zoom-100\00", align 1
@.str.199 = private unnamed_addr constant [20 x i8] c"view-zoom-1-1-accel\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"KP_1\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"1:_2  (50%)\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"<shift>2\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"Zoom 1:2\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"1:_4  (25%)\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"<shift>3\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"Zoom 1:4\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"1:_8  (12.5%)\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"<shift>4\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"Zoom 1:8\00", align 1
@.str.210 = private unnamed_addr constant [15 x i8] c"1:1_6  (6.25%)\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"<shift>5\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"Zoom 1:16\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"Othe_r...\00", align 1
@.str.214 = private unnamed_addr constant [25 x i8] c"Set a custom zoom factor\00", align 1
@.str.215 = private unnamed_addr constant [21 x i8] c"gimp-view-zoom-other\00", align 1
@.str.216 = private unnamed_addr constant [12 x i8] c"From _Theme\00", align 1
@.str.217 = private unnamed_addr constant [41 x i8] c"Use the current theme's background color\00", align 1
@.str.218 = private unnamed_addr constant [24 x i8] c"gimp-view-padding-color\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"_Light Check Color\00", align 1
@.str.220 = private unnamed_addr constant [26 x i8] c"Use the light check color\00", align 1
@.str.221 = private unnamed_addr constant [18 x i8] c"_Dark Check Color\00", align 1
@.str.222 = private unnamed_addr constant [25 x i8] c"Use the dark check color\00", align 1
@.str.223 = private unnamed_addr constant [17 x i8] c"gtk-select-color\00", align 1
@.str.224 = private unnamed_addr constant [24 x i8] c"Select _Custom Color...\00", align 1
@.str.225 = private unnamed_addr constant [23 x i8] c"Use an arbitrary color\00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"As in _Preferences\00", align 1
@.str.228 = private unnamed_addr constant [56 x i8] c"Reset padding color to what's configured in preferences\00", align 1
@.str.229 = private unnamed_addr constant [23 x i8] c"view-scroll-horizontal\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"Set horizontal scroll offset\00", align 1
@.str.231 = private unnamed_addr constant [24 x i8] c"view-scroll-left-border\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"Scroll to left border\00", align 1
@.str.233 = private unnamed_addr constant [25 x i8] c"view-scroll-right-border\00", align 1
@.str.234 = private unnamed_addr constant [23 x i8] c"Scroll to right border\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"view-scroll-left\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"Scroll left\00", align 1
@.str.237 = private unnamed_addr constant [18 x i8] c"view-scroll-right\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"Scroll right\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"view-scroll-page-left\00", align 1
@.str.240 = private unnamed_addr constant [17 x i8] c"Scroll page left\00", align 1
@.str.241 = private unnamed_addr constant [23 x i8] c"view-scroll-page-right\00", align 1
@.str.242 = private unnamed_addr constant [18 x i8] c"Scroll page right\00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"view-scroll-vertical\00", align 1
@.str.244 = private unnamed_addr constant [27 x i8] c"Set vertical scroll offset\00", align 1
@.str.245 = private unnamed_addr constant [23 x i8] c"view-scroll-top-border\00", align 1
@.str.246 = private unnamed_addr constant [21 x i8] c"Scroll to top border\00", align 1
@.str.247 = private unnamed_addr constant [26 x i8] c"view-scroll-bottom-border\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"Scroll to bottom border\00", align 1
@.str.249 = private unnamed_addr constant [15 x i8] c"view-scroll-up\00", align 1
@.str.250 = private unnamed_addr constant [10 x i8] c"Scroll up\00", align 1
@.str.251 = private unnamed_addr constant [17 x i8] c"view-scroll-down\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"Scroll down\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"view-scroll-page-up\00", align 1
@.str.254 = private unnamed_addr constant [15 x i8] c"Scroll page up\00", align 1
@.str.255 = private unnamed_addr constant [22 x i8] c"view-scroll-page-down\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"Scroll page down\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"Othe_r (%s)...\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"_Zoom (%s)\00", align 1

; Function Attrs: nounwind uwtable
define void @view_actions_setup(%struct._GimpActionGroup* %group) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_actions(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpActionEntry* getelementptr inbounds ([13 x %struct._GimpActionEntry], [13 x %struct._GimpActionEntry]* @view_actions, i32 0, i32 0), i32 13)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._GimpToggleActionEntry* getelementptr inbounds ([16 x %struct._GimpToggleActionEntry], [16 x %struct._GimpToggleActionEntry]* @view_toggle_actions, i32 0, i32 0), i32 16)
  %2 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([9 x %struct._GimpEnumActionEntry], [9 x %struct._GimpEnumActionEntry]* @view_zoom_actions, i32 0, i32 0), i32 9, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @view_zoom_cmd_callback to void ()*))
  %3 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), %struct._GimpRadioActionEntry* getelementptr inbounds ([15 x %struct._GimpRadioActionEntry], [15 x %struct._GimpRadioActionEntry]* @view_zoom_explicit_actions, i32 0, i32 0), i32 15, %struct._GSList* null, i32 10000, void ()* bitcast (void (%struct._GtkAction*, %struct._GtkAction*, i8*)* @view_zoom_explicit_cmd_callback to void ()*))
  %4 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %struct._GimpEnumActionEntry* getelementptr inbounds ([5 x %struct._GimpEnumActionEntry], [5 x %struct._GimpEnumActionEntry]* @view_padding_color_actions, i32 0, i32 0), i32 5, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @view_padding_color_cmd_callback to void ()*))
  %5 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %5, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @view_scroll_horizontal_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @view_scroll_horizontal_cmd_callback to void ()*))
  %6 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup* %6, i8* null, %struct._GimpEnumActionEntry* getelementptr inbounds ([7 x %struct._GimpEnumActionEntry], [7 x %struct._GimpEnumActionEntry]* @view_scroll_vertical_actions, i32 0, i32 0), i32 7, void ()* bitcast (void (%struct._GtkAction*, i32, i8*)* @view_scroll_vertical_cmd_callback to void ()*))
  %7 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %8 = bitcast %struct._GimpActionGroup* %7 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_action_group_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call1)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkActionGroup*
  %call3 = call %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkAction* %call3, %struct._GtkAction** %action, align 8
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %11 = bitcast %struct._GtkAction* %10 to i8*
  %12 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %12, i32 0, i32 4
  %13 = load i8*, i8** %user_data, align 8
  %call4 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAction*, i8*)* @view_zoom_other_cmd_callback to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %14 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 1
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %17 = bitcast %struct._GimpCoreConfig* %16 to i8*
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = bitcast %struct._GimpActionGroup* %18 to i8*
  %call5 = call i64 @g_signal_connect_object(i8* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayConfig*, %struct._GParamSpec*, %struct._GimpActionGroup*)* @view_actions_check_type_notify to void ()*), i8* %19, i32 0)
  %20 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %gimp6 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %config7 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 1
  %22 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config7, align 8
  %23 = bitcast %struct._GimpCoreConfig* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_display_config_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDisplayConfig*
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @view_actions_check_type_notify(%struct._GimpDisplayConfig* %24, %struct._GParamSpec* null, %struct._GimpActionGroup* %25)
  %26 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data10 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %26, i32 0, i32 4
  %27 = load i8*, i8** %user_data10, align 8
  %28 = bitcast i8* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst, align 8
  %call11 = call i64 @gimp_image_window_get_type() #5
  store i64 %call11, i64* %__t, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.17

if.else:                                          ; preds = %entry
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.else
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %35 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %34, %35
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.15:                                       ; preds = %land.lhs.true, %if.else
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %37 = load i64, i64* %__t, align 8
  %call16 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call16, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  %38 = load i32, i32* %__r, align 4
  store i32 %38, i32* %tmp
  %39 = load i32, i32* %tmp
  %tobool18 = icmp ne i32 %39, 0
  br i1 %tobool18, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %40 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data21 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %40, i32 0, i32 4
  %41 = load i8*, i8** %user_data21, align 8
  %42 = bitcast i8* %41 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %42, %struct._GTypeInstance** %__inst20, align 8
  %call24 = call i64 @gimp_get_type() #5
  store i64 %call24, i64* %__t23, align 8
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %43, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %lor.lhs.false
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %45, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type34, align 8
  %49 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %48, %49
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %50 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %51 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %50, i64 %51) #6
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %52 = load i32, i32* %__r26, align 4
  store i32 %52, i32* %tmp41
  %53 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40, %if.end.17
  %54 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @window_actions_setup(%struct._GimpActionGroup* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.40
  ret void
}

declare void @gimp_action_group_add_actions(%struct._GimpActionGroup*, i8*, %struct._GimpActionEntry*, i32) #1

declare void @gimp_action_group_add_toggle_actions(%struct._GimpActionGroup*, i8*, %struct._GimpToggleActionEntry*, i32) #1

declare void @gimp_action_group_add_enum_actions(%struct._GimpActionGroup*, i8*, %struct._GimpEnumActionEntry*, i32, void ()*) #1

declare void @view_zoom_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GSList* @gimp_action_group_add_radio_actions(%struct._GimpActionGroup*, i8*, %struct._GimpRadioActionEntry*, i32, %struct._GSList*, i32, void ()*) #1

declare void @view_zoom_explicit_cmd_callback(%struct._GtkAction*, %struct._GtkAction*, i8*) #1

declare void @view_padding_color_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @view_scroll_horizontal_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare void @view_scroll_vertical_cmd_callback(%struct._GtkAction*, i32, i8*) #1

declare %struct._GtkAction* @gtk_action_group_get_action(%struct._GtkActionGroup*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @view_zoom_other_cmd_callback(%struct._GtkAction*, i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @view_actions_check_type_notify(%struct._GimpDisplayConfig* %config, %struct._GParamSpec* %pspec, %struct._GimpActionGroup* %group) #0 {
entry:
  %config.addr = alloca %struct._GimpDisplayConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  store %struct._GimpDisplayConfig* %config, %struct._GimpDisplayConfig** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  %0 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call = call %struct._GimpRGB* @gimp_render_light_check_color()
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), %struct._GimpRGB* %call, i32 0)
  %1 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call1 = call %struct._GimpRGB* @gimp_render_dark_check_color()
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), %struct._GimpRGB* %call1, i32 0)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

declare void @window_actions_setup(%struct._GimpActionGroup*, i8*) #1

; Function Attrs: nounwind uwtable
define void @view_actions_update(%struct._GimpActionGroup* %group, i8* %data) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %options = alloca %struct._GimpDisplayOptions*, align 8
  %label = alloca i8*, align 8
  %fullscreen = alloca i32, align 4
  %revert_enabled = alloca i32, align 4
  %use_gegl = alloca i32, align 4
  %window = alloca %struct._GimpImageWindow*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst235 = alloca %struct._GTypeInstance*, align 8
  %__t238 = alloca i64, align 8
  %__r241 = alloca i32, align 4
  %tmp257 = alloca i32, align 4
  %window261 = alloca %struct._GtkWidget*, align 8
  %__inst269 = alloca %struct._GTypeInstance*, align 8
  %__t271 = alloca i64, align 8
  %__r274 = alloca i32, align 4
  %tmp290 = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  store %struct._GimpDisplayOptions* null, %struct._GimpDisplayOptions** %options, align 8
  store i8* null, i8** %label, align 8
  store i32 0, i32* %fullscreen, align 4
  store i32 0, i32* %revert_enabled, align 4
  store i32 0, i32* %use_gegl, align 4
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call3 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %4)
  store %struct._GimpImageWindow* %call3, %struct._GimpImageWindow** %window, align 8
  %5 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool4 = icmp ne %struct._GimpImageWindow* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call6 = call i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %6)
  store i32 %call6, i32* %fullscreen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %7, null
  br i1 %tobool7, label %cond.true, label %cond.false.11

cond.true:                                        ; preds = %if.end
  %8 = load i32, i32* %fullscreen, align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false

cond.true.9:                                      ; preds = %cond.true
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 4
  %10 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %options10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 3
  %12 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options10, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.9
  %cond = phi %struct._GimpDisplayOptions* [ %10, %cond.true.9 ], [ %12, %cond.false ]
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %no_image_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 5
  %14 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %no_image_options, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.end
  %cond13 = phi %struct._GimpDisplayOptions* [ %cond, %cond.end ], [ %14, %cond.false.11 ]
  store %struct._GimpDisplayOptions* %cond13, %struct._GimpDisplayOptions** %options, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call14 = call i32 @gimp_display_shell_scale_can_revert(%struct._GimpDisplayShell* %15)
  store i32 %call14, i32* %revert_enabled, align 4
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool15 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %cond.end.12
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %17)
  %use_gegl18 = getelementptr inbounds %struct._GimpProjection, %struct._GimpProjection* %call17, i32 0, i32 10
  %18 = load i32, i32* %use_gegl18, align 4
  store i32 %18, i32* %use_gegl, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %cond.end.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %19 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %20, null
  %conv = zext i1 %cmp to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %conv)
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp21 = icmp ne %struct._GimpImage* %22, null
  %conv22 = zext i1 %cmp21 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %conv22)
  %23 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp23 = icmp ne %struct._GimpImage* %24, null
  %conv24 = zext i1 %cmp23 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 %conv24)
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool25 = icmp ne %struct._GimpDisplay* %26, null
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.20
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 17
  %28 = load i32, i32* %dot_for_dot, align 4
  %tobool26 = icmp ne i32 %28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.20
  %29 = phi i1 [ false, %if.end.20 ], [ %tobool26, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  %cmp27 = icmp ne i32 %land.ext, 0
  %conv28 = zext i1 %cmp27 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 %conv28)
  %30 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %31 = load i32, i32* %revert_enabled, align 4
  %cmp29 = icmp ne i32 %31, 0
  %conv30 = zext i1 %cmp29 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %conv30)
  %32 = load i32, i32* %revert_enabled, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %land.end
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #7
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %last_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 23
  %34 = load double, double* %last_scale, align 8
  %mul = fmul double %34, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv34 = fptosi double %add to i32
  %call35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call33, i32 %conv34)
  store i8* %call35, i8** %label, align 8
  %35 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %36 = load i8*, i8** %label, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %36)
  %37 = load i8*, i8** %label, align 8
  call void @g_free(i8* %37)
  br label %if.end.37

if.else:                                          ; preds = %land.end
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #7
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.32
  %39 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp38 = icmp ne %struct._GimpImage* %40, null
  %conv39 = zext i1 %cmp38 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %conv39)
  %41 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp40 = icmp ne %struct._GimpImage* %42, null
  %conv41 = zext i1 %cmp40 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %conv41)
  %43 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp42 = icmp ne %struct._GimpImage* %44, null
  %conv43 = zext i1 %cmp42 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 %conv43)
  %45 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp44 = icmp ne %struct._GimpImage* %46, null
  %conv45 = zext i1 %cmp44 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %conv45)
  %47 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp46 = icmp ne %struct._GimpImage* %48, null
  %conv47 = zext i1 %cmp46 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %conv47)
  %49 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp48 = icmp ne %struct._GimpImage* %50, null
  %conv49 = zext i1 %cmp48 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %conv49)
  %51 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp50 = icmp ne %struct._GimpImage* %52, null
  %conv51 = zext i1 %cmp50 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %conv51)
  %53 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp52 = icmp ne %struct._GimpImage* %54, null
  %conv53 = zext i1 %cmp52 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 %conv53)
  %55 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp54 = icmp ne %struct._GimpImage* %56, null
  %conv55 = zext i1 %cmp54 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 %conv55)
  %57 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp56 = icmp ne %struct._GimpImage* %58, null
  %conv57 = zext i1 %cmp56 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 %conv57)
  %59 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp58 = icmp ne %struct._GimpImage* %60, null
  %conv59 = zext i1 %cmp58 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 %conv59)
  %61 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp60 = icmp ne %struct._GimpImage* %62, null
  %conv61 = zext i1 %cmp60 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %conv61)
  %63 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp62 = icmp ne %struct._GimpImage* %64, null
  %conv63 = zext i1 %cmp62 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 %conv63)
  %65 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp64 = icmp ne %struct._GimpImage* %66, null
  %conv65 = zext i1 %cmp64 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %conv65)
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool66 = icmp ne %struct._GimpImage* %67, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.37
  %68 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @view_actions_set_zoom(%struct._GimpActionGroup* %68, %struct._GimpDisplayShell* %69)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.37
  %70 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp69 = icmp ne %struct._GimpImage* %71, null
  %conv70 = zext i1 %cmp69 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i32 %conv70)
  %72 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp71 = icmp ne %struct._GimpImage* %73, null
  %conv72 = zext i1 %cmp71 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 %conv72)
  %74 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp73 = icmp ne %struct._GimpImage* %75, null
  %conv74 = zext i1 %cmp73 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 %conv74)
  %76 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %77 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool75 = icmp ne %struct._GimpDisplay* %77, null
  br i1 %tobool75, label %land.rhs.76, label %land.end.78

land.rhs.76:                                      ; preds = %if.end.68
  %78 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_selection = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %78, i32 0, i32 5
  %79 = load i32, i32* %show_selection, align 4
  %tobool77 = icmp ne i32 %79, 0
  br label %land.end.78

land.end.78:                                      ; preds = %land.rhs.76, %if.end.68
  %80 = phi i1 [ false, %if.end.68 ], [ %tobool77, %land.rhs.76 ]
  %land.ext79 = zext i1 %80 to i32
  %cmp80 = icmp ne i32 %land.ext79, 0
  %conv81 = zext i1 %cmp80 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 %conv81)
  %81 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %82 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp82 = icmp ne %struct._GimpImage* %82, null
  %conv83 = zext i1 %cmp82 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %conv83)
  %83 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %84 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool84 = icmp ne %struct._GimpDisplay* %84, null
  br i1 %tobool84, label %land.rhs.85, label %land.end.87

land.rhs.85:                                      ; preds = %land.end.78
  %85 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_layer_boundary = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %85, i32 0, i32 6
  %86 = load i32, i32* %show_layer_boundary, align 4
  %tobool86 = icmp ne i32 %86, 0
  br label %land.end.87

land.end.87:                                      ; preds = %land.rhs.85, %land.end.78
  %87 = phi i1 [ false, %land.end.78 ], [ %tobool86, %land.rhs.85 ]
  %land.ext88 = zext i1 %87 to i32
  %cmp89 = icmp ne i32 %land.ext88, 0
  %conv90 = zext i1 %cmp89 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %conv90)
  %88 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp91 = icmp ne %struct._GimpImage* %89, null
  %conv92 = zext i1 %cmp91 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 %conv92)
  %90 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %91 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool93 = icmp ne %struct._GimpDisplay* %91, null
  br i1 %tobool93, label %land.rhs.94, label %land.end.96

land.rhs.94:                                      ; preds = %land.end.87
  %92 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_guides = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %92, i32 0, i32 7
  %93 = load i32, i32* %show_guides, align 4
  %tobool95 = icmp ne i32 %93, 0
  br label %land.end.96

land.end.96:                                      ; preds = %land.rhs.94, %land.end.87
  %94 = phi i1 [ false, %land.end.87 ], [ %tobool95, %land.rhs.94 ]
  %land.ext97 = zext i1 %94 to i32
  %cmp98 = icmp ne i32 %land.ext97, 0
  %conv99 = zext i1 %cmp98 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 %conv99)
  %95 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %96 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp100 = icmp ne %struct._GimpImage* %96, null
  %conv101 = zext i1 %cmp100 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 %conv101)
  %97 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %98 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool102 = icmp ne %struct._GimpDisplay* %98, null
  br i1 %tobool102, label %land.rhs.103, label %land.end.105

land.rhs.103:                                     ; preds = %land.end.96
  %99 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_grid = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %99, i32 0, i32 8
  %100 = load i32, i32* %show_grid, align 4
  %tobool104 = icmp ne i32 %100, 0
  br label %land.end.105

land.end.105:                                     ; preds = %land.rhs.103, %land.end.96
  %101 = phi i1 [ false, %land.end.96 ], [ %tobool104, %land.rhs.103 ]
  %land.ext106 = zext i1 %101 to i32
  %cmp107 = icmp ne i32 %land.ext106, 0
  %conv108 = zext i1 %cmp107 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 %conv108)
  %102 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %103 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp109 = icmp ne %struct._GimpImage* %103, null
  %conv110 = zext i1 %cmp109 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i32 %conv110)
  %104 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %105 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool111 = icmp ne %struct._GimpDisplay* %105, null
  br i1 %tobool111, label %land.rhs.112, label %land.end.114

land.rhs.112:                                     ; preds = %land.end.105
  %106 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_sample_points = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %106, i32 0, i32 9
  %107 = load i32, i32* %show_sample_points, align 4
  %tobool113 = icmp ne i32 %107, 0
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.112, %land.end.105
  %108 = phi i1 [ false, %land.end.105 ], [ %tobool113, %land.rhs.112 ]
  %land.ext115 = zext i1 %108 to i32
  %cmp116 = icmp ne i32 %land.ext115, 0
  %conv117 = zext i1 %cmp116 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), i32 %conv117)
  %109 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %110 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp118 = icmp ne %struct._GimpImage* %110, null
  %conv119 = zext i1 %cmp118 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %conv119)
  %111 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %112 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool120 = icmp ne %struct._GimpDisplay* %112, null
  br i1 %tobool120, label %land.rhs.121, label %land.end.123

land.rhs.121:                                     ; preds = %land.end.114
  %113 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %snap_to_guides = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %113, i32 0, i32 6
  %114 = load i32, i32* %snap_to_guides, align 4
  %tobool122 = icmp ne i32 %114, 0
  br label %land.end.123

land.end.123:                                     ; preds = %land.rhs.121, %land.end.114
  %115 = phi i1 [ false, %land.end.114 ], [ %tobool122, %land.rhs.121 ]
  %land.ext124 = zext i1 %115 to i32
  %cmp125 = icmp ne i32 %land.ext124, 0
  %conv126 = zext i1 %cmp125 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %conv126)
  %116 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %117 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp127 = icmp ne %struct._GimpImage* %117, null
  %conv128 = zext i1 %cmp127 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %conv128)
  %118 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %119 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool129 = icmp ne %struct._GimpDisplay* %119, null
  br i1 %tobool129, label %land.rhs.130, label %land.end.132

land.rhs.130:                                     ; preds = %land.end.123
  %120 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %snap_to_grid = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %120, i32 0, i32 7
  %121 = load i32, i32* %snap_to_grid, align 4
  %tobool131 = icmp ne i32 %121, 0
  br label %land.end.132

land.end.132:                                     ; preds = %land.rhs.130, %land.end.123
  %122 = phi i1 [ false, %land.end.123 ], [ %tobool131, %land.rhs.130 ]
  %land.ext133 = zext i1 %122 to i32
  %cmp134 = icmp ne i32 %land.ext133, 0
  %conv135 = zext i1 %cmp134 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %conv135)
  %123 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %124 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp136 = icmp ne %struct._GimpImage* %124, null
  %conv137 = zext i1 %cmp136 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i32 %conv137)
  %125 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %126 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool138 = icmp ne %struct._GimpDisplay* %126, null
  br i1 %tobool138, label %land.rhs.139, label %land.end.141

land.rhs.139:                                     ; preds = %land.end.132
  %127 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %snap_to_canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %127, i32 0, i32 8
  %128 = load i32, i32* %snap_to_canvas, align 4
  %tobool140 = icmp ne i32 %128, 0
  br label %land.end.141

land.end.141:                                     ; preds = %land.rhs.139, %land.end.132
  %129 = phi i1 [ false, %land.end.132 ], [ %tobool140, %land.rhs.139 ]
  %land.ext142 = zext i1 %129 to i32
  %cmp143 = icmp ne i32 %land.ext142, 0
  %conv144 = zext i1 %cmp143 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i32 %conv144)
  %130 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %131 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp145 = icmp ne %struct._GimpImage* %131, null
  %conv146 = zext i1 %cmp145 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i32 %conv146)
  %132 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %133 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool147 = icmp ne %struct._GimpDisplay* %133, null
  br i1 %tobool147, label %land.rhs.148, label %land.end.150

land.rhs.148:                                     ; preds = %land.end.141
  %134 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %snap_to_vectors = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %134, i32 0, i32 9
  %135 = load i32, i32* %snap_to_vectors, align 4
  %tobool149 = icmp ne i32 %135, 0
  br label %land.end.150

land.end.150:                                     ; preds = %land.rhs.148, %land.end.141
  %136 = phi i1 [ false, %land.end.141 ], [ %tobool149, %land.rhs.148 ]
  %land.ext151 = zext i1 %136 to i32
  %cmp152 = icmp ne i32 %land.ext151, 0
  %conv153 = zext i1 %cmp152 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i32 %conv153)
  %137 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %138 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp154 = icmp ne %struct._GimpImage* %138, null
  %conv155 = zext i1 %cmp154 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i32 %conv155)
  %139 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %140 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp156 = icmp ne %struct._GimpImage* %140, null
  %conv157 = zext i1 %cmp156 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i32 %conv157)
  %141 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %142 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp158 = icmp ne %struct._GimpImage* %142, null
  %conv159 = zext i1 %cmp158 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i32 %conv159)
  %143 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp160 = icmp ne %struct._GimpImage* %144, null
  %conv161 = zext i1 %cmp160 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i32 %conv161)
  %145 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %146 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp162 = icmp ne %struct._GimpImage* %146, null
  %conv163 = zext i1 %cmp162 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i32 %conv163)
  %147 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool164 = icmp ne %struct._GimpDisplay* %147, null
  br i1 %tobool164, label %if.then.165, label %if.end.172

if.then.165:                                      ; preds = %land.end.150
  %148 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %149 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_color = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %149, i32 0, i32 11
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0), %struct._GimpRGB* %padding_color, i32 0)
  %150 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %150, i32 0, i32 33
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %tobool166 = icmp ne %struct._GtkWidget* %151, null
  br i1 %tobool166, label %if.then.167, label %if.end.171

if.then.167:                                      ; preds = %if.then.165
  %152 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas168 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %152, i32 0, i32 33
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas168, align 8
  %call169 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %153)
  store %struct._GtkStyle* %call169, %struct._GtkStyle** %style, align 8
  %154 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas170 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %154, i32 0, i32 33
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas170, align 8
  call void @gtk_widget_ensure_style(%struct._GtkWidget* %155)
  %156 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %156, i32 0, i32 2
  %arraydecay = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i32 0
  %add.ptr = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arraydecay, i64 0
  call void @gimp_rgb_set_gdk_color(%struct._GimpRGB* %color, %struct._GdkColor* %add.ptr)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  %157 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  call void @gimp_action_group_set_action_color(%struct._GimpActionGroup* %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), %struct._GimpRGB* %color, i32 0)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %if.then.165
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %land.end.150
  %158 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %159 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp173 = icmp ne %struct._GimpImage* %159, null
  %conv174 = zext i1 %cmp173 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 %conv174)
  %160 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %161 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool175 = icmp ne %struct._GimpDisplay* %161, null
  br i1 %tobool175, label %land.rhs.176, label %land.end.178

land.rhs.176:                                     ; preds = %if.end.172
  %162 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_menubar = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %162, i32 0, i32 1
  %163 = load i32, i32* %show_menubar, align 4
  %tobool177 = icmp ne i32 %163, 0
  br label %land.end.178

land.end.178:                                     ; preds = %land.rhs.176, %if.end.172
  %164 = phi i1 [ false, %if.end.172 ], [ %tobool177, %land.rhs.176 ]
  %land.ext179 = zext i1 %164 to i32
  %cmp180 = icmp ne i32 %land.ext179, 0
  %conv181 = zext i1 %cmp180 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 %conv181)
  %165 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %166 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp182 = icmp ne %struct._GimpImage* %166, null
  %conv183 = zext i1 %cmp182 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 %conv183)
  %167 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %168 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool184 = icmp ne %struct._GimpDisplay* %168, null
  br i1 %tobool184, label %land.rhs.185, label %land.end.187

land.rhs.185:                                     ; preds = %land.end.178
  %169 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_rulers = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %169, i32 0, i32 3
  %170 = load i32, i32* %show_rulers, align 4
  %tobool186 = icmp ne i32 %170, 0
  br label %land.end.187

land.end.187:                                     ; preds = %land.rhs.185, %land.end.178
  %171 = phi i1 [ false, %land.end.178 ], [ %tobool186, %land.rhs.185 ]
  %land.ext188 = zext i1 %171 to i32
  %cmp189 = icmp ne i32 %land.ext188, 0
  %conv190 = zext i1 %cmp189 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 %conv190)
  %172 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %173 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp191 = icmp ne %struct._GimpImage* %173, null
  %conv192 = zext i1 %cmp191 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i32 %conv192)
  %174 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %175 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool193 = icmp ne %struct._GimpDisplay* %175, null
  br i1 %tobool193, label %land.rhs.194, label %land.end.196

land.rhs.194:                                     ; preds = %land.end.187
  %176 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_scrollbars = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %176, i32 0, i32 4
  %177 = load i32, i32* %show_scrollbars, align 4
  %tobool195 = icmp ne i32 %177, 0
  br label %land.end.196

land.end.196:                                     ; preds = %land.rhs.194, %land.end.187
  %178 = phi i1 [ false, %land.end.187 ], [ %tobool195, %land.rhs.194 ]
  %land.ext197 = zext i1 %178 to i32
  %cmp198 = icmp ne i32 %land.ext197, 0
  %conv199 = zext i1 %cmp198 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %174, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0), i32 %conv199)
  %179 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %180 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp200 = icmp ne %struct._GimpImage* %180, null
  %conv201 = zext i1 %cmp200 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i32 %conv201)
  %181 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %182 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool202 = icmp ne %struct._GimpDisplay* %182, null
  br i1 %tobool202, label %land.rhs.203, label %land.end.205

land.rhs.203:                                     ; preds = %land.end.196
  %183 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_statusbar = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %183, i32 0, i32 2
  %184 = load i32, i32* %show_statusbar, align 4
  %tobool204 = icmp ne i32 %184, 0
  br label %land.end.205

land.end.205:                                     ; preds = %land.rhs.203, %land.end.196
  %185 = phi i1 [ false, %land.end.196 ], [ %tobool204, %land.rhs.203 ]
  %land.ext206 = zext i1 %185 to i32
  %cmp207 = icmp ne i32 %land.ext206, 0
  %conv208 = zext i1 %cmp207 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i32 %conv208)
  %186 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %187 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp209 = icmp ne %struct._GimpImage* %187, null
  %conv210 = zext i1 %cmp209 to i32
  call void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i32 %conv210)
  %188 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %189 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool211 = icmp ne %struct._GimpDisplay* %189, null
  br i1 %tobool211, label %land.rhs.212, label %land.end.214

land.rhs.212:                                     ; preds = %land.end.205
  %190 = load i32, i32* %fullscreen, align 4
  %tobool213 = icmp ne i32 %190, 0
  br label %land.end.214

land.end.214:                                     ; preds = %land.rhs.212, %land.end.205
  %191 = phi i1 [ false, %land.end.205 ], [ %tobool213, %land.rhs.212 ]
  %land.ext215 = zext i1 %191 to i32
  %cmp216 = icmp ne i32 %land.ext215, 0
  %conv217 = zext i1 %cmp216 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i32 %conv217)
  %192 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %193 = load i32, i32* %use_gegl, align 4
  %cmp218 = icmp ne i32 %193, 0
  %conv219 = zext i1 %cmp218 to i32
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i32 %conv219)
  %194 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %194, i32 0, i32 4
  %195 = load i8*, i8** %user_data, align 8
  %196 = bitcast i8* %195 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %196, %struct._GTypeInstance** %__inst, align 8
  %call220 = call i64 @gimp_image_window_get_type() #5
  store i64 %call220, i64* %__t, align 8
  %197 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool221 = icmp ne %struct._GTypeInstance* %197, null
  br i1 %tobool221, label %if.else.223, label %if.then.222

if.then.222:                                      ; preds = %land.end.214
  store i32 0, i32* %__r, align 4
  br label %if.end.232

if.else.223:                                      ; preds = %land.end.214
  %198 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %198, i32 0, i32 0
  %199 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool224 = icmp ne %struct._GTypeClass* %199, null
  br i1 %tobool224, label %land.lhs.true, label %if.else.229

land.lhs.true:                                    ; preds = %if.else.223
  %200 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class225 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %200, i32 0, i32 0
  %201 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class225, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %201, i32 0, i32 0
  %202 = load i64, i64* %g_type, align 8
  %203 = load i64, i64* %__t, align 8
  %cmp226 = icmp eq i64 %202, %203
  br i1 %cmp226, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.231

if.else.229:                                      ; preds = %land.lhs.true, %if.else.223
  %204 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %205 = load i64, i64* %__t, align 8
  %call230 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %204, i64 %205) #6
  store i32 %call230, i32* %__r, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.229, %if.then.228
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.222
  %206 = load i32, i32* %__r, align 4
  store i32 %206, i32* %tmp
  %207 = load i32, i32* %tmp
  %tobool233 = icmp ne i32 %207, 0
  br i1 %tobool233, label %if.then.259, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.232
  %208 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %user_data236 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %208, i32 0, i32 4
  %209 = load i8*, i8** %user_data236, align 8
  %210 = bitcast i8* %209 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %210, %struct._GTypeInstance** %__inst235, align 8
  %call239 = call i64 @gimp_get_type() #5
  store i64 %call239, i64* %__t238, align 8
  %211 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst235, align 8
  %tobool242 = icmp ne %struct._GTypeInstance* %211, null
  br i1 %tobool242, label %if.else.244, label %if.then.243

if.then.243:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %__r241, align 4
  br label %if.end.256

if.else.244:                                      ; preds = %lor.lhs.false
  %212 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst235, align 8
  %g_class245 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %212, i32 0, i32 0
  %213 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class245, align 8
  %tobool246 = icmp ne %struct._GTypeClass* %213, null
  br i1 %tobool246, label %land.lhs.true.247, label %if.else.253

land.lhs.true.247:                                ; preds = %if.else.244
  %214 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst235, align 8
  %g_class248 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %214, i32 0, i32 0
  %215 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class248, align 8
  %g_type249 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %215, i32 0, i32 0
  %216 = load i64, i64* %g_type249, align 8
  %217 = load i64, i64* %__t238, align 8
  %cmp250 = icmp eq i64 %216, %217
  br i1 %cmp250, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %land.lhs.true.247
  store i32 1, i32* %__r241, align 4
  br label %if.end.255

if.else.253:                                      ; preds = %land.lhs.true.247, %if.else.244
  %218 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst235, align 8
  %219 = load i64, i64* %__t238, align 8
  %call254 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %218, i64 %219) #6
  store i32 %call254, i32* %__r241, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.253, %if.then.252
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.243
  %220 = load i32, i32* %__r241, align 4
  store i32 %220, i32* %tmp257
  %221 = load i32, i32* %tmp257
  %tobool258 = icmp ne i32 %221, 0
  br i1 %tobool258, label %if.then.259, label %if.end.294

if.then.259:                                      ; preds = %if.end.256, %if.end.232
  store %struct._GtkWidget* null, %struct._GtkWidget** %window261, align 8
  %222 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool262 = icmp ne %struct._GimpDisplayShell* %222, null
  br i1 %tobool262, label %if.then.263, label %if.end.267

if.then.263:                                      ; preds = %if.then.259
  %223 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %224 = bitcast %struct._GimpDisplayShell* %223 to %struct._GTypeInstance*
  %call264 = call i64 @gtk_widget_get_type() #5
  %call265 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call264)
  %225 = bitcast %struct._GTypeInstance* %call265 to %struct._GtkWidget*
  %call266 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %225)
  store %struct._GtkWidget* %call266, %struct._GtkWidget** %window261, align 8
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.263, %if.then.259
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %window261, align 8
  %227 = bitcast %struct._GtkWidget* %226 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %227, %struct._GTypeInstance** %__inst269, align 8
  %call272 = call i64 @gtk_window_get_type() #5
  store i64 %call272, i64* %__t271, align 8
  %228 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst269, align 8
  %tobool275 = icmp ne %struct._GTypeInstance* %228, null
  br i1 %tobool275, label %if.else.277, label %if.then.276

if.then.276:                                      ; preds = %if.end.267
  store i32 0, i32* %__r274, align 4
  br label %if.end.289

if.else.277:                                      ; preds = %if.end.267
  %229 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst269, align 8
  %g_class278 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %229, i32 0, i32 0
  %230 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class278, align 8
  %tobool279 = icmp ne %struct._GTypeClass* %230, null
  br i1 %tobool279, label %land.lhs.true.280, label %if.else.286

land.lhs.true.280:                                ; preds = %if.else.277
  %231 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst269, align 8
  %g_class281 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %231, i32 0, i32 0
  %232 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class281, align 8
  %g_type282 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %232, i32 0, i32 0
  %233 = load i64, i64* %g_type282, align 8
  %234 = load i64, i64* %__t271, align 8
  %cmp283 = icmp eq i64 %233, %234
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %land.lhs.true.280
  store i32 1, i32* %__r274, align 4
  br label %if.end.288

if.else.286:                                      ; preds = %land.lhs.true.280, %if.else.277
  %235 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst269, align 8
  %236 = load i64, i64* %__t271, align 8
  %call287 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %235, i64 %236) #6
  store i32 %call287, i32* %__r274, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.286, %if.then.285
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.276
  %237 = load i32, i32* %__r274, align 4
  store i32 %237, i32* %tmp290
  %238 = load i32, i32* %tmp290
  %tobool291 = icmp ne i32 %238, 0
  br i1 %tobool291, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.end.289
  %239 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %window261, align 8
  call void @window_actions_update(%struct._GimpActionGroup* %239, %struct._GtkWidget* %240)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %if.end.289
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.256
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow*) #1

declare i32 @gimp_display_shell_scale_can_revert(%struct._GimpDisplayShell*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare void @gimp_action_group_set_action_sensitive(%struct._GimpActionGroup*, i8*, i32) #1

declare void @gimp_action_group_set_action_active(%struct._GimpActionGroup*, i8*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_action_group_set_action_label(%struct._GimpActionGroup*, i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @view_actions_set_zoom(%struct._GimpActionGroup* %group, %struct._GimpDisplayShell* %shell) #0 {
entry:
  %group.addr = alloca %struct._GimpActionGroup*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %action = alloca i8*, align 8
  %str = alloca i8*, align 8
  %label = alloca i8*, align 8
  %scale = alloca i32, align 4
  store %struct._GimpActionGroup* %group, %struct._GimpActionGroup** %group.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i8* null, i8** %action, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 22
  %1 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %2 = bitcast %struct._GimpZoomModel* %1 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.257, i32 0, i32 0), i8** %str, i8* null)
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 22
  %4 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom1, align 8
  %call = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %4)
  %mul = fmul double %call, 1.000000e+03
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %scale, align 4
  %5 = load i32, i32* %scale, align 4
  switch i32 %5, label %sw.epilog [
    i32 16000, label %sw.bb
    i32 8000, label %sw.bb.2
    i32 4000, label %sw.bb.3
    i32 2000, label %sw.bb.4
    i32 1000, label %sw.bb.5
    i32 500, label %sw.bb.6
    i32 250, label %sw.bb.7
    i32 125, label %sw.bb.8
    i32 63, label %sw.bb.9
    i32 62, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry, %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8** %action, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %6 = load i8*, i8** %action, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8** %action, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.258, i32 0, i32 0)) #7
  %7 = load i8*, i8** %str, align 8
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, i8* %7)
  store i8* %call11, i8** %label, align 8
  %8 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %9 = load i8*, i8** %action, align 8
  %10 = load i8*, i8** %label, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %8, i8* %9, i8* %10)
  %11 = load i8*, i8** %label, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 22
  %13 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom12, align 8
  %call13 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %13)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 27
  store double %call13, double* %other_scale, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %15 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %16 = load i8*, i8** %action, align 8
  call void @gimp_action_group_set_action_active(%struct._GimpActionGroup* %15, i8* %16, i32 1)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.259, i32 0, i32 0)) #7
  %17 = load i8*, i8** %str, align 8
  %call15 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call14, i8* %17)
  store i8* %call15, i8** %label, align 8
  %18 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group.addr, align 8
  %19 = load i8*, i8** %label, align 8
  call void @gimp_action_group_set_action_label(%struct._GimpActionGroup* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* %19)
  %20 = load i8*, i8** %label, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 27
  %22 = load double, double* %other_scale16, align 8
  %call17 = call double @fabs(double %22) #5
  %sub = fsub double -0.000000e+00, %call17
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %other_scale18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 27
  store double %sub, double* %other_scale18, align 8
  %24 = load i8*, i8** %str, align 8
  call void @g_free(i8* %24)
  ret void
}

declare void @gimp_action_group_set_action_color(%struct._GimpActionGroup*, i8*, %struct._GimpRGB*, i32) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_ensure_style(%struct._GtkWidget*) #1

declare void @gimp_rgb_set_gdk_color(%struct._GimpRGB*, %struct._GdkColor*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @window_actions_update(%struct._GimpActionGroup*, %struct._GtkWidget*) #1

declare void @view_new_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_close_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_zoom_fit_in_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_zoom_fill_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_zoom_revert_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_navigation_window_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_display_filters_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_shrink_wrap_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @window_open_display_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_dot_for_dot_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_selection_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_layer_boundary_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_guides_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_grid_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_sample_points_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_snap_to_guides_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_snap_to_grid_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_snap_to_canvas_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_snap_to_vectors_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_menubar_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_rulers_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_scrollbars_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_toggle_statusbar_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_fullscreen_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @view_use_gegl_cmd_callback(%struct._GtkAction*, i8*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare %struct._GimpRGB* @gimp_render_light_check_color() #1

declare %struct._GimpRGB* @gimp_render_dark_check_color() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
