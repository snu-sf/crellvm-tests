; ModuleID = './plug-ins/ifs-compose/ifs-compose.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.IfsComposeVals = type { i32, i32, i32, i32, double, double, double, double }
%struct.AffElement = type { %struct.AffElementVals, %struct.Aff2, %struct.Aff3, i8*, %struct.IPolygon*, %struct.IPolygon* }
%struct.AffElementVals = type { double, double, double, double, double, double, i32, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double }
%struct.Aff2 = type { double, double, double, double, double, double }
%struct.Aff3 = type { [3 x [4 x double]] }
%struct.IPolygon = type { %struct._GdkPoint*, i32 }
%struct._GdkPoint = type { i32, i32 }
%struct.IfsDialog = type { %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair*, %struct._GtkWidget*, %struct.ColorMap*, %struct.ColorMap*, %struct.ColorMap*, %struct.ColorMap*, %struct.ColorMap*, %struct.ValuePair*, %struct.ValuePair*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32, i32, i32, i32, %struct.AffElement*, i32, %struct.AffElementVals, i32 }
%struct.ColorMap = type { %struct._GimpRGB*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct.ValuePair = type { %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, %union.anon }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%union.anon = type { double* }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct.IfsDesignArea = type { %struct._GtkWidget*, %struct._GtkUIManager*, %struct._GdkDrawable*, i32, double, double, double, double, double, double, i32, i32 }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct.IfsOptionsDialog = type { %struct._GtkWidget*, %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair*, %struct.ValuePair* }
%struct.IfsComposeInterface = type { i32 }
%struct.UndoItem = type { %struct.IfsComposeVals, %struct.AffElement**, i32*, i32 }
%struct._GtkActionEntry = type { i8*, i8*, i8*, i8*, i8*, void ()* }
%struct._GtkRadioActionEntry = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon.0] }
%union.anon.0 = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkFileChooser = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GimpColorArea = type { %struct._GtkDrawingArea, i8*, i32, i32, i32, i32, %struct._GimpRGB, i8 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkCursor = type { i32, i32 }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque
%struct._PangoLayout = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@query.return_vals = internal global %struct._GimpParamDef* null, align 8
@query.nreturn_vals = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"plug-in-ifscompose\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Create an Iterated Function System (IFS) fractal\00", align 1
@.str.8 = private unnamed_addr constant [383 x i8] c"Interactively create an Iterated Function System fractal. Use the window on the upper left to adjust the component transformations of the fractal. The operation that is performed is selected by the buttons underneath the window, or from a menu popped up by the right mouse button. The fractal will be rendered with a transparent background if the current image has an alpha channel.\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Owen Taylor\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"_IFS Fractal...\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"<Image>/Filters/Render/Nature\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"ifscompose-parasite\00", align 1
@ifsvals = internal global %struct.IfsComposeVals { i32 0, i32 50000, i32 4096, i32 4, double 7.500000e-01, double 1.000000e+00, double 5.000000e-01, double 5.000000e-01 }, align 8
@elements = internal global %struct.AffElement** null, align 8
@count_for_naming = internal global i32 0, align 4
@ifsD = internal global %struct.IfsDialog* null, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"ifs-compose\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"IFS Fractal\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"gimp-ifs-compose\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@ifsDesign = internal global %struct.IfsDesignArea* null, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"/ifs-compose-toolbar\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Spatial Transformation\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Color Transformation\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Relative probability:\00", align 1
@element_selected = internal global i32* null, align 8
@ifsOptD = internal global %struct.IfsOptionsDialog* null, align 8
@ifscint = internal global %struct.IfsComposeInterface zeroinitializer, align 4
@ifs_compose_load.dialog = internal global %struct._GtkWidget* null, align 8
@.str.31 = private unnamed_addr constant [22 x i8] c"Open IFS Fractal file\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Open failed\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"File '%s' doesn't seem to be an IFS Fractal file.\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"ifscompose-message\00", align 1
@ifs_compose_save.dialog = internal global %struct._GtkWidget* null, align 8
@.str.36 = private unnamed_addr constant [25 x i8] c"Save as IFS Fractal file\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Save failed\00", align 1
@undo_cur = internal global i32 -1, align 4
@undo_start = internal global i32 0, align 4
@undo_num = internal global i32 0, align 4
@undo_ring = internal global [24 x %struct.UndoItem] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [40 x i8] c"/ui/dummy-menubar/ifs-compose-menu/undo\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"/ui/dummy-menubar/ifs-compose-menu/redo\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"/ui/dummy-menubar/ifs-compose-menu/delete\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"configure-event\00", align 1
@design_area_realize.cursors = internal constant [3 x i32] [i32 52, i32 50, i32 34], align 4
@.str.49 = private unnamed_addr constant [32 x i8] c"/dummy-menubar/ifs-compose-menu\00", align 1
@design_op_menu_create.actions = internal global [8 x %struct._GtkActionEntry] [%struct._GtkActionEntry { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, void ()* null }, %struct._GtkActionEntry { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @ifs_compose_new_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @ifs_compose_delete_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* null, void ()* @undo }, %struct._GtkActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* null, void ()* @redo }, %struct._GtkActionEntry { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* null, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @design_area_select_all_callback to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @recompute_center_cb to void ()*) }, %struct._GtkActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* null, void ()* bitcast (void (%struct._GtkAction*, i8*)* @ifs_compose_options_callback to void ()*) }], align 16
@.str.50 = private unnamed_addr constant [17 x i8] c"ifs-compose-menu\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"IFS Fractal Menu\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"<control>N\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"<control>D\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"gtk-undo\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"<control>Z\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"redo\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"gtk-redo\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"<control>Y\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"select-all\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"gimp-selection-all\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Select _All\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"<control>A\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"gimp-center\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"Re_center\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"<control>C\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"Recompute Center\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"gtk-preferences\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"Render Options\00", align 1
@design_op_menu_create.radio_actions = internal global [3 x %struct._GtkRadioActionEntry] [%struct._GtkRadioActionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* null, i32 0 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i32 1 }, %struct._GtkRadioActionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* null, i32 2 }], align 16
@.str.76 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"gimp-tool-move\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"Move\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"gimp-tool-rotate\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"Rotate / Scale\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"gimp-tool-perspective\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"Actions\00", align 1
@.str.90 = private unnamed_addr constant [476 x i8] c"<ui>  <menubar name=\22dummy-menubar\22>    <menu action=\22ifs-compose-menu\22>      <menuitem action=\22move\22 />      <menuitem action=\22rotate\22 />      <menuitem action=\22stretch\22 />      <separator />      <menuitem action=\22new\22 />      <menuitem action=\22delete\22 />      <menuitem action=\22undo\22 />      <menuitem action=\22redo\22 />      <menuitem action=\22select-all\22 />      <menuitem action=\22center\22 />      <separator />      <menuitem action=\22options\22 />    </menu>  </menubar></ui>\00", align 1
@.str.91 = private unnamed_addr constant [411 x i8] c"<ui>  <toolbar name=\22ifs-compose-toolbar\22>    <toolitem action=\22move\22 />    <toolitem action=\22rotate\22 />    <toolitem action=\22stretch\22 />    <separator />    <toolitem action=\22new\22 />    <toolitem action=\22delete\22 />    <toolitem action=\22undo\22 />    <toolitem action=\22redo\22 />    <toolitem action=\22select-all\22 />    <toolitem action=\22center\22 />    <separator />    <toolitem action=\22options\22 />  </toolbar></ui>\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"IFS Fractal Render Options\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"Max. memory:\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"Iterations:\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"Subdivide:\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"Spot radius:\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"X:\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"Y:\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Scale:\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Angle:\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"Asymmetry:\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Shear:\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"Flip\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"IFS Fractal: Target\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"Scale hue by:\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"Scale value by:\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"IFS Fractal: Red\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"IFS Fractal: Green\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"IFS Fractal: Blue\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"IFS Fractal: Black\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"Transformation %s\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"Rendering IFS (%d/%d)\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"Indexed images not supported by IFS Fractal\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %0 = load i32, i32* @query.nreturn_vals, align 4
  %1 = load %struct._GimpParamDef*, %struct._GimpParamDef** @query.return_vals, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 %0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* %1)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %image_id = alloca i32, align 4
  %found_parasite = alloca i32, align 4
  %length = alloca i32, align 4
  %data16 = alloca i8*, align 8
  %length28 = alloca i32, align 4
  %data33 = alloca i8*, align 8
  %str = alloca i8*, align 8
  %parasite57 = alloca %struct._GimpParasite*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GimpParasite* null, %struct._GimpParasite** %parasite, align 8
  store i32 0, i32* %found_parasite, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_image, align 4
  store i32 %6, i32* %image_id, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %do.end
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call9 = call %struct._GimpParasite* @gimp_item_get_parasite(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GimpParasite* %call9, %struct._GimpParasite** %parasite, align 8
  %12 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool = icmp ne %struct._GimpParasite* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call10 = call i8* @gimp_parasite_data(%struct._GimpParasite* %13)
  %call11 = call i32 @ifsvals_parse_string(i8* %call10, %struct.IfsComposeVals* @ifsvals, %struct.AffElement*** @elements)
  store i32 %call11, i32* %found_parasite, align 4
  %14 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %15 = load i32, i32* %found_parasite, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %if.end.21, label %if.then.13

if.then.13:                                       ; preds = %if.end
  %call14 = call i32 @gimp_procedural_db_get_data_size(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call14, i32* %length, align 4
  %16 = load i32, i32* %length, align 4
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.then.13
  %17 = load i32, i32* %length, align 4
  %conv = sext i32 %17 to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call17, i8** %data16, align 8
  %18 = load i8*, i8** %data16, align 8
  %call18 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* %18)
  %19 = load i8*, i8** %data16, align 8
  %call19 = call i32 @ifsvals_parse_string(i8* %19, %struct.IfsComposeVals* @ifsvals, %struct.AffElement*** @elements)
  %20 = load i8*, i8** %data16, align 8
  call void @g_free(i8* %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %21 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  store i32 %21, i32* @count_for_naming, align 4
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call22 = call i32 @ifs_compose_dialog(%struct._GimpDrawable* %22)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  br label %return

if.end.25:                                        ; preds = %if.end.21
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %do.end
  %call29 = call i32 @gimp_procedural_db_get_data_size(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call29, i32* %length28, align 4
  %23 = load i32, i32* %length28, align 4
  %cmp30 = icmp sgt i32 %23, 0
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %sw.bb.27
  %24 = load i32, i32* %length28, align 4
  %conv34 = sext i32 %24 to i64
  %call35 = call noalias i8* @g_malloc_n(i64 %conv34, i64 1)
  store i8* %call35, i8** %data33, align 8
  %25 = load i8*, i8** %data33, align 8
  %call36 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* %25)
  %26 = load i8*, i8** %data33, align 8
  %call37 = call i32 @ifsvals_parse_string(i8* %26, %struct.IfsComposeVals* @ifsvals, %struct.AffElement*** @elements)
  %27 = load i8*, i8** %data33, align 8
  call void @g_free(i8* %27)
  br label %if.end.38

if.else:                                          ; preds = %sw.bb.27
  call void @ifs_compose_set_defaults()
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.32
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.38, %sw.bb.26, %if.end.25
  %28 = load i32, i32* %status, align 4
  %cmp39 = icmp eq i32 %28, 3
  br i1 %cmp39, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %sw.epilog
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id41 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id41, align 4
  %call42 = call i32 @gimp_drawable_is_rgb(i32 %30)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id44, align 4
  %call45 = call i32 @gimp_drawable_is_gray(i32 %32)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.78

if.then.47:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load i32, i32* %width, align 4
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 2
  %36 = load i32, i32* %height, align 4
  %cmp48 = icmp ugt i32 %34, %36
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.47
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width50 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 1
  %38 = load i32, i32* %width50, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.47
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 2
  %40 = load i32, i32* %height51, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %40, %cond.false ]
  %call52 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %cond, %call52
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv53 = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv53)
  %41 = load i32, i32* %run_mode, align 4
  %cmp54 = icmp eq i32 %41, 0
  br i1 %cmp54, label %if.then.56, label %if.else.71

if.then.56:                                       ; preds = %cond.end
  %42 = load i32, i32* %image_id, align 4
  %call58 = call i32 @gimp_image_undo_group_start(i32 %42)
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @ifs_compose(%struct._GimpDrawable* %43)
  %44 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %call59 = call i8* @ifsvals_stringify(%struct.IfsComposeVals* @ifsvals, %struct.AffElement** %44)
  store i8* %call59, i8** %str, align 8
  %45 = load i8*, i8** %str, align 8
  %46 = load i8*, i8** %str, align 8
  %call60 = call i64 @strlen(i8* %46) #7
  %add61 = add i64 %call60, 1
  %conv62 = trunc i64 %add61 to i32
  %call63 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* %45, i32 %conv62)
  %47 = load i8*, i8** %str, align 8
  %call64 = call i64 @strlen(i8* %47) #7
  %add65 = add i64 %call64, 1
  %conv66 = trunc i64 %add65 to i32
  %48 = load i8*, i8** %str, align 8
  %call67 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 3, i32 %conv66, i8* %48)
  store %struct._GimpParasite* %call67, %struct._GimpParasite** %parasite57, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id68, align 4
  %51 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite57, align 8
  %call69 = call i32 @gimp_item_attach_parasite(i32 %50, %struct._GimpParasite* %51)
  %52 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite57, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %52)
  %53 = load i8*, i8** %str, align 8
  call void @g_free(i8* %53)
  %54 = load i32, i32* %image_id, align 4
  %call70 = call i32 @gimp_image_undo_group_end(i32 %54)
  br label %if.end.72

if.else.71:                                       ; preds = %cond.end
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @ifs_compose(%struct._GimpDrawable* %55)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.56
  %56 = load i32, i32* %run_mode, align 4
  %cmp73 = icmp ne i32 %56, 1
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %call76 = call i32 @gimp_displays_flush()
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  br label %if.end.83

if.else.78:                                       ; preds = %lor.lhs.false, %sw.epilog
  %57 = load i32, i32* %status, align 4
  %cmp79 = icmp eq i32 %57, 3
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.else.78
  store i32 0, i32* %status, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.else.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.77
  %58 = load i32, i32* %status, align 4
  store i32 %58, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %59)
  br label %return

return:                                           ; preds = %if.end.83, %if.then.24
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare %struct._GimpParasite* @gimp_item_get_parasite(i32, i8*) #1

declare i32 @ifsvals_parse_string(i8*, %struct.IfsComposeVals*, %struct.AffElement***) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

declare i32 @gimp_procedural_db_get_data_size(i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ifs_compose_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %toolbar = alloca %struct._GtkWidget*, align 8
  %aspect_frame = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %design_width = alloca i32, align 4
  %design_height = alloca i32, align 4
  %i = alloca i32, align 4
  %ratio = alloca double, align 8
  %t1 = alloca %struct.Aff2, align 8
  %t2 = alloca %struct.Aff2, align 8
  %t3 = alloca %struct.Aff2, align 8
  %x_offset = alloca double, align 8
  %y_offset = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %scale132 = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  store i32 %1, i32* %design_width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  store i32 %3, i32* %design_height, align 4
  %4 = load i32, i32* %design_width, align 4
  %5 = load i32, i32* %design_height, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %design_width, align 4
  %cmp1 = icmp sgt i32 %6, 300
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %design_height, align 4
  %mul = mul nsw i32 %7, 300
  %8 = load i32, i32* %design_width, align 4
  %div = sdiv i32 %mul, %8
  store i32 %div, i32* %design_height, align 4
  store i32 300, i32* %design_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %design_height, align 4
  %cmp3 = icmp sgt i32 %9, 300
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.else
  %10 = load i32, i32* %design_width, align 4
  %mul5 = mul nsw i32 %10, 300
  %11 = load i32, i32* %design_height, align 4
  %div6 = sdiv i32 %mul5, %11
  store i32 %div6, i32* %design_width, align 4
  store i32 300, i32* %design_height, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 456)
  %12 = bitcast i8* %call to %struct.IfsDialog*
  store %struct.IfsDialog* %12, %struct.IfsDialog** @ifsD, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width9, align 4
  %15 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_width = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %15, i32 0, i32 21
  store i32 %14, i32* %drawable_width, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 2
  %17 = load i32, i32* %height10, align 4
  %18 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_height = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %18, i32 0, i32 22
  store i32 %17, i32* %drawable_height, align 4
  %19 = load i32, i32* %design_width, align 4
  %20 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_width = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %20, i32 0, i32 23
  store i32 %19, i32* %preview_width, align 4
  %21 = load i32, i32* %design_height, align 4
  %22 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_height = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %22, i32 0, i32 24
  store i32 %21, i32* %preview_height, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 1)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0)) #5
  %call12 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %25, i32 2, i32 3, i32 1, i32 -5, i32 -6, i32 -1)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %32 = bitcast %struct._GtkWidget** %dialog to i8*
  %33 = bitcast i8* %32 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %31, i8** %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %35 = bitcast %struct._GtkWidget* %34 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @ifs_compose_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* @gtk_main_quit, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %39 = load i32, i32* %design_width, align 4
  %40 = load i32, i32* %design_height, align 4
  call void @design_area_create(%struct._GtkWidget* %38, i32 %39, i32 %40)
  %41 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %41, i32 0, i32 1
  %42 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call20 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %toolbar, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_dialog_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call21)
  %45 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkDialog*
  %call23 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %45)
  %46 = bitcast %struct._GtkWidget* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call24)
  %47 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %toolbar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call26 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %main_vbox, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_container_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call27)
  %52 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %52, i32 12)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_dialog_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call29)
  %55 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkDialog*
  %call31 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %55)
  %56 = bitcast %struct._GtkWidget* %call31 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call32)
  %57 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 1, i32 1, i32 0)
  %call34 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %hbox, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call35)
  %61 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %61, %struct._GtkWidget* %62, i32 0, i32 0, i32 0)
  %63 = load i32, i32* %design_width, align 4
  %conv = sitofp i32 %63 to double
  %64 = load i32, i32* %design_height, align 4
  %conv37 = sitofp i32 %64 to double
  %div38 = fdiv double %conv, %conv37
  %conv39 = fptrunc double %div38 to float
  %call40 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 5.000000e-01, float 5.000000e-01, float %conv39, i32 0)
  store %struct._GtkWidget* %call40, %struct._GtkWidget** %aspect_frame, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_frame_get_type() #6
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call41)
  %67 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %67, i32 1)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call43)
  %70 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 1, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_container_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call45)
  %75 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkContainer*
  %76 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %76, i32 0, i32 0
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_container_add(%struct._GtkContainer* %75, %struct._GtkWidget* %77)
  %78 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area47 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %78, i32 0, i32 0
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %area47, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load i32, i32* %design_width, align 4
  %conv48 = sitofp i32 %80 to double
  %81 = load i32, i32* %design_height, align 4
  %conv49 = sitofp i32 %81 to double
  %div50 = fdiv double %conv48, %conv49
  %conv51 = fptrunc double %div50 to float
  %call52 = call %struct._GtkWidget* @gtk_aspect_frame_new(i8* null, float 5.000000e-01, float 5.000000e-01, float %conv51, i32 0)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %aspect_frame, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_frame_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call53)
  %84 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %84, i32 1)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call55)
  %87 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 1, i32 1, i32 0)
  %call57 = call %struct._GtkWidget* @gimp_preview_area_new()
  %89 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %89, i32 0, i32 18
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %preview, align 8
  %90 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview58 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %90, i32 0, i32 18
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %preview58, align 8
  %92 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_width59 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %92, i32 0, i32 23
  %93 = load i32, i32* %preview_width59, align 4
  %94 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_height60 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %94, i32 0, i32 24
  %95 = load i32, i32* %preview_height60, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %91, i32 %93, i32 %95)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_container_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call61)
  %98 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkContainer*
  %99 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview63 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %99, i32 0, i32 18
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %preview63, align 8
  call void @gtk_container_add(%struct._GtkContainer* %98, %struct._GtkWidget* %100)
  %101 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview64 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %101, i32 0, i32 18
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %preview64, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %aspect_frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %103)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %call65 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  %105 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_frame = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %105, i32 0, i32 17
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %current_frame, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call66)
  %108 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %109 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_frame68 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %109, i32 0, i32 17
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %current_frame68, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %108, %struct._GtkWidget* %110, i32 0, i32 0, i32 0)
  %call69 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %vbox, align 8
  %111 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_frame70 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %111, i32 0, i32 17
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %current_frame70, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_container_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call71)
  %114 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkContainer*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %114, %struct._GtkWidget* %115)
  %call73 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %notebook, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_notebook_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call74)
  %118 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %118, i32 2)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_box_get_type() #6
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call76)
  %121 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkBox*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %121, %struct._GtkWidget* %122, i32 0, i32 0, i32 0)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %123)
  %call78 = call %struct._GtkWidget* @ifs_compose_trans_page()
  store %struct._GtkWidget* %call78, %struct._GtkWidget** %page, align 8
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0)) #5
  %call80 = call %struct._GtkWidget* @gtk_label_new(i8* %call79)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %label, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_misc_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call81)
  %126 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %126, float 5.000000e-01, float 5.000000e-01)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_notebook_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call83)
  %129 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkNotebook*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call85 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %129, %struct._GtkWidget* %130, %struct._GtkWidget* %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %call86 = call %struct._GtkWidget* @ifs_compose_color_page()
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %page, align 8
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  %call88 = call %struct._GtkWidget* @gtk_label_new(i8* %call87)
  store %struct._GtkWidget* %call88, %struct._GtkWidget** %label, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_misc_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call89)
  %135 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %135, float 5.000000e-01, float 5.000000e-01)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_notebook_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call91)
  %138 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkNotebook*
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call93 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %138, %struct._GtkWidget* %139, %struct._GtkWidget* %140)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %call94 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %hbox, align 8
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call95)
  %144 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %144, %struct._GtkWidget* %145, i32 0, i32 0, i32 0)
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0)) #5
  %call98 = call %struct._GtkWidget* @gtk_label_new(i8* %call97)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %label, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_misc_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call99)
  %148 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %148, float 0.000000e+00, float 5.000000e-01)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_box_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call101)
  %151 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkBox*
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %151, %struct._GtkWidget* %152, i32 0, i32 0, i32 0)
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %154, i32 0, i32 27
  %prob = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals, i32 0, i32 15
  %155 = bitcast double* %prob to i8*
  %call103 = call %struct.ValuePair* @value_pair_create(i8* %155, double 0.000000e+00, double 5.000000e+00, i32 1, i32 1)
  %156 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %prob_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %156, i32 0, i32 0
  store %struct.ValuePair* %call103, %struct.ValuePair** %prob_pair, align 8
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #6
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call104)
  %159 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %160 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %prob_pair106 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %160, i32 0, i32 0
  %161 = load %struct.ValuePair*, %struct.ValuePair** %prob_pair106, align 8
  %scale = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %161, i32 0, i32 1
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %159, %struct._GtkWidget* %162, i32 1, i32 1, i32 0)
  %163 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %prob_pair107 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %163, i32 0, i32 0
  %164 = load %struct.ValuePair*, %struct.ValuePair** %prob_pair107, align 8
  %scale108 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %164, i32 0, i32 1
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %scale108, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %165)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_box_get_type() #6
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call109)
  %168 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkBox*
  %169 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %prob_pair111 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %169, i32 0, i32 0
  %170 = load %struct.ValuePair*, %struct.ValuePair** %prob_pair111, align 8
  %spin = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %170, i32 0, i32 2
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %168, %struct._GtkWidget* %171, i32 0, i32 1, i32 0)
  %172 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %prob_pair112 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %172, i32 0, i32 0
  %173 = load %struct.ValuePair*, %struct.ValuePair** %prob_pair112, align 8
  %spin113 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %173, i32 0, i32 2
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %spin113, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %174)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %175)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %177 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_frame114 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %177, i32 0, i32 17
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %current_frame114, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %178)
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %179)
  %180 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp115 = icmp eq i32 %180, 0
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %if.end.8
  call void @ifs_compose_set_defaults()
  br label %if.end.173

if.else.118:                                      ; preds = %if.end.8
  %181 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_height119 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %181, i32 0, i32 22
  %182 = load i32, i32* %drawable_height119, align 4
  %conv120 = sitofp i32 %182 to double
  %183 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_width121 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %183, i32 0, i32 21
  %184 = load i32, i32* %drawable_width121, align 4
  %conv122 = sitofp i32 %184 to double
  %div123 = fdiv double %conv120, %conv122
  store double %div123, double* %ratio, align 8
  %185 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv124 = sext i32 %185 to i64
  %call125 = call noalias i8* @g_malloc_n(i64 %conv124, i64 4)
  %186 = bitcast i8* %call125 to i32*
  store i32* %186, i32** @element_selected, align 8
  %187 = load i32*, i32** @element_selected, align 8
  %arrayidx = getelementptr inbounds i32, i32* %187, i64 0
  store i32 1, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.118
  %188 = load i32, i32* %i, align 4
  %189 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp126 = icmp slt i32 %188, %189
  br i1 %cmp126, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %190 = load i32, i32* %i, align 4
  %idxprom = sext i32 %190 to i64
  %191 = load i32*, i32** @element_selected, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %191, i64 %idxprom
  store i32 0, i32* %arrayidx128, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %192 = load i32, i32* %i, align 4
  %inc = add nsw i32 %192, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %193 = load double, double* %ratio, align 8
  %194 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %cmp129 = fcmp une double %193, %194
  br i1 %cmp129, label %if.then.131, label %if.end.161

if.then.131:                                      ; preds = %for.end
  %195 = load double, double* %ratio, align 8
  %196 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %cmp133 = fcmp olt double %195, %196
  br i1 %cmp133, label %if.then.135, label %if.else.138

if.then.135:                                      ; preds = %if.then.131
  %197 = load double, double* %ratio, align 8
  %198 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %div136 = fdiv double %197, %198
  store double %div136, double* %scale132, align 8
  %199 = load double, double* %scale132, align 8
  %sub = fsub double 1.000000e+00, %199
  %div137 = fdiv double %sub, 2.000000e+00
  store double %div137, double* %x_offset, align 8
  store double 0.000000e+00, double* %y_offset, align 8
  br label %if.end.141

if.else.138:                                      ; preds = %if.then.131
  store double 1.000000e+00, double* %scale132, align 8
  store double 0.000000e+00, double* %x_offset, align 8
  %200 = load double, double* %ratio, align 8
  %201 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %sub139 = fsub double %200, %201
  %div140 = fdiv double %sub139, 2.000000e+00
  store double %div140, double* %y_offset, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.135
  %202 = load double, double* %scale132, align 8
  call void @aff2_scale(%struct.Aff2* %t1, double %202, i32 0)
  %203 = load double, double* %x_offset, align 8
  %204 = load double, double* %y_offset, align 8
  call void @aff2_translate(%struct.Aff2* %t2, double %203, double %204)
  call void @aff2_compose(%struct.Aff2* %t3, %struct.Aff2* %t2, %struct.Aff2* %t1)
  call void @aff2_invert(%struct.Aff2* %t1, %struct.Aff2* %t3)
  %205 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %206 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff2_apply(%struct.Aff2* %t3, double %205, double %206, double* %center_x, double* %center_y)
  store i32 0, i32* %i, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.158, %if.end.141
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp143 = icmp slt i32 %207, %208
  br i1 %cmp143, label %for.body.145, label %for.end.160

for.body.145:                                     ; preds = %for.cond.142
  %209 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %209 to i64
  %210 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx147 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %210, i64 %idxprom146
  %211 = load %struct.AffElement*, %struct.AffElement** %arrayidx147, align 8
  %212 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %213 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %214 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %211, double 1.000000e+00, double %212, double %213, double %214)
  %215 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %215 to i64
  %216 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx149 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %216, i64 %idxprom148
  %217 = load %struct.AffElement*, %struct.AffElement** %arrayidx149, align 8
  %trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %217, i32 0, i32 1
  call void @aff2_compose(%struct.Aff2* %t2, %struct.Aff2* %trans, %struct.Aff2* %t1)
  %218 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %218 to i64
  %219 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx151 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %219, i64 %idxprom150
  %220 = load %struct.AffElement*, %struct.AffElement** %arrayidx151, align 8
  %trans152 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %220, i32 0, i32 1
  call void @aff2_compose(%struct.Aff2* %trans152, %struct.Aff2* %t3, %struct.Aff2* %t2)
  %221 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %221 to i64
  %222 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx154 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %222, i64 %idxprom153
  %223 = load %struct.AffElement*, %struct.AffElement** %arrayidx154, align 8
  %224 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %224 to i64
  %225 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx156 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %225, i64 %idxprom155
  %226 = load %struct.AffElement*, %struct.AffElement** %arrayidx156, align 8
  %trans157 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %226, i32 0, i32 1
  %227 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %228 = load double, double* %center_x, align 8
  %229 = load double, double* %center_y, align 8
  call void @aff_element_decompose_trans(%struct.AffElement* %223, %struct.Aff2* %trans157, double 1.000000e+00, double %227, double %228, double %229)
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.145
  %230 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %230, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.142

for.end.160:                                      ; preds = %for.cond.142
  %231 = load double, double* %center_x, align 8
  store double %231, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %232 = load double, double* %center_y, align 8
  store double %232, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  %233 = load double, double* %ratio, align 8
  store double %233, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  br label %if.end.161

if.end.161:                                       ; preds = %for.end.160, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.168, %if.end.161
  %234 = load i32, i32* %i, align 4
  %235 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp163 = icmp slt i32 %234, %235
  br i1 %cmp163, label %for.body.165, label %for.end.170

for.body.165:                                     ; preds = %for.cond.162
  %236 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %236 to i64
  %237 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx167 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %237, i64 %idxprom166
  %238 = load %struct.AffElement*, %struct.AffElement** %arrayidx167, align 8
  call void @aff_element_compute_color_trans(%struct.AffElement* %238)
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.body.165
  %239 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %239, 1
  store i32 %inc169, i32* %i, align 4
  br label %for.cond.162

for.end.170:                                      ; preds = %for.cond.162
  call void @set_current_element(i32 0)
  %240 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv171 = sext i32 %240 to i64
  %call172 = call noalias i8* @g_malloc_n(i64 %conv171, i64 416)
  %241 = bitcast i8* %call172 to %struct.AffElement*
  %242 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %242, i32 0, i32 25
  store %struct.AffElement* %241, %struct.AffElement** %selected_orig, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %for.end.170, %if.then.117
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %243)
  call void @ifs_compose_preview()
  call void @gtk_main()
  %244 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager174 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %244, i32 0, i32 1
  %245 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager174, align 8
  %246 = bitcast %struct._GtkUIManager* %245 to i8*
  call void @g_object_unref(i8* %246)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %247, null
  br i1 %tobool, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.173
  %248 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %248)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %if.end.173
  %249 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %tobool177 = icmp ne %struct.IfsOptionsDialog* %249, null
  br i1 %tobool177, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %if.end.176
  %250 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %dialog179 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %250, i32 0, i32 0
  %251 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog179, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %251)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.178, %if.end.176
  call void @gdk_flush()
  %252 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %253 = bitcast %struct.IfsDialog* %252 to i8*
  call void @g_free(i8* %253)
  %254 = load i32, i32* getelementptr inbounds (%struct.IfsComposeInterface, %struct.IfsComposeInterface* @ifscint, i32 0, i32 0), align 4
  ret i32 %254
}

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_set_defaults() #0 {
entry:
  %i = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %call = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_height = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 22
  %1 = load i32, i32* %drawable_height, align 4
  %conv = sitofp i32 %1 to double
  %2 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_width = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %2, i32 0, i32 21
  %3 = load i32, i32* %drawable_width, align 4
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %7, i64 %idxprom
  %8 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  call void @aff_element_free(%struct.AffElement* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @count_for_naming, align 4
  store i32 3, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %10 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %11 = bitcast %struct.AffElement** %10 to i8*
  %12 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv3 = sext i32 %12 to i64
  %mul = mul i64 %conv3, 8
  %call4 = call i8* @g_realloc(i8* %11, i64 %mul)
  %13 = bitcast i8* %call4 to %struct.AffElement**
  store %struct.AffElement** %13, %struct.AffElement*** @elements, align 8
  %14 = load i32*, i32** @element_selected, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv5 = sext i32 %16 to i64
  %mul6 = mul i64 %conv5, 4
  %call7 = call i8* @g_realloc(i8* %15, i64 %mul6)
  %17 = bitcast i8* %call7 to i32*
  store i32* %17, i32** @element_selected, align 8
  %18 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %mul8 = fmul double 3.700000e-01, %18
  %19 = load i32, i32* @count_for_naming, align 4
  %inc9 = add nsw i32 %19, 1
  store i32 %inc9, i32* @count_for_naming, align 4
  %call10 = call %struct.AffElement* @aff_element_new(double 3.000000e-01, double %mul8, %struct._GimpRGB* %color, i32 %inc9)
  %20 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx11 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %20, i64 0
  store %struct.AffElement* %call10, %struct.AffElement** %arrayidx11, align 8
  %21 = load i32*, i32** @element_selected, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %arrayidx12, align 4
  %22 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %mul13 = fmul double 3.700000e-01, %22
  %23 = load i32, i32* @count_for_naming, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, i32* @count_for_naming, align 4
  %call15 = call %struct.AffElement* @aff_element_new(double 7.000000e-01, double %mul13, %struct._GimpRGB* %color, i32 %inc14)
  %24 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx16 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %24, i64 1
  store %struct.AffElement* %call15, %struct.AffElement** %arrayidx16, align 8
  %25 = load i32*, i32** @element_selected, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %arrayidx17, align 4
  %26 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %mul18 = fmul double 7.000000e-01, %26
  %27 = load i32, i32* @count_for_naming, align 4
  %inc19 = add nsw i32 %27, 1
  store i32 %inc19, i32* @count_for_naming, align 4
  %call20 = call %struct.AffElement* @aff_element_new(double 5.000000e-01, double %mul18, %struct._GimpRGB* %color, i32 %inc19)
  %28 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx21 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %28, i64 2
  store %struct.AffElement* %call20, %struct.AffElement** %arrayidx21, align 8
  %29 = load i32*, i32** @element_selected, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 0, i32* %arrayidx22, align 4
  store double 5.000000e-01, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %30 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %mul23 = fmul double 5.000000e-01, %30
  store double %mul23, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  %31 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_height24 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %31, i32 0, i32 22
  %32 = load i32, i32* %drawable_height24, align 4
  %33 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_width25 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %33, i32 0, i32 21
  %34 = load i32, i32* %drawable_width25, align 4
  %mul26 = mul nsw i32 %32, %34
  store i32 %mul26, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  store i32 4096, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 2), align 4
  %35 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %tobool = icmp ne %struct.IfsOptionsDialog* %35, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %36 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %iterations_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %36, i32 0, i32 1
  %37 = load %struct.ValuePair*, %struct.ValuePair** %iterations_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %37)
  %38 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %subdivide_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %38, i32 0, i32 2
  %39 = load %struct.ValuePair*, %struct.ValuePair** %subdivide_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %39)
  %40 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %40, i32 0, i32 3
  %41 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %41)
  %42 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %memory_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %42, i32 0, i32 4
  %43 = load %struct.ValuePair*, %struct.ValuePair** %memory_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %43)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store double 7.000000e-01, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 4), align 8
  call void @set_current_element(i32 0)
  %44 = load i32*, i32** @element_selected, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 1, i32* %arrayidx27, align 4
  call void @recompute_center(i32 0)
  %45 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %45, i32 0, i32 25
  %46 = load %struct.AffElement*, %struct.AffElement** %selected_orig, align 8
  %tobool28 = icmp ne %struct.AffElement* %46, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end
  %47 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig30 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %47, i32 0, i32 25
  %48 = load %struct.AffElement*, %struct.AffElement** %selected_orig30, align 8
  %49 = bitcast %struct.AffElement* %48 to i8*
  call void @g_free(i8* %49)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end
  %50 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv32 = sext i32 %50 to i64
  %call33 = call noalias i8* @g_malloc_n(i64 %conv32, i64 416)
  %51 = bitcast i8* %call33 to %struct.AffElement*
  %52 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig34 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %52, i32 0, i32 25
  store %struct.AffElement* %51, %struct.AffElement** %selected_orig34, align 8
  ret void
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare i32 @gimp_image_undo_group_start(i32) #1

; Function Attrs: nounwind uwtable
define internal void @ifs_compose(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %type = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %num_bands = alloca i32, align 4
  %band_height = alloca i32, align 4
  %band_y = alloca i32, align 4
  %band_no = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %mask = alloca i8*, align 8
  %nhits = alloca i8*, align 8
  %rc = alloca i8, align 1
  %gc = alloca i8, align 1
  %bc = alloca i8, align 1
  %color = alloca %struct._GimpRGB, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %destrow = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %rtot = alloca i32, align 4
  %btot = alloca i32, align 4
  %gtot = alloca i32, align 4
  %mtot = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %maskptr = alloca i8*, align 8
  %maskval = alloca i8, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call, i32* %type, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width1, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height2, align 4
  store i32 %5, i32* %height, align 4
  store i8* null, i8** %mask, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul3 = mul nsw i32 %8, %9
  %mul4 = mul nsw i32 %mul, %mul3
  %mul5 = mul nsw i32 %mul4, 5
  %conv = sitofp i32 %mul5 to double
  %10 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 2), align 4
  %mul6 = mul nsw i32 1024, %10
  %conv7 = sitofp i32 %mul6 to double
  %div = fdiv double %conv, %conv7
  %call8 = call double @ceil(double %div) #6
  %conv9 = fptosi double %call8 to i32
  store i32 %conv9, i32* %num_bands, align 4
  %11 = load i32, i32* %height, align 4
  %12 = load i32, i32* %num_bands, align 4
  %add = add nsw i32 %11, %12
  %sub = sub nsw i32 %add, 1
  %13 = load i32, i32* %num_bands, align 4
  %div10 = sdiv i32 %sub, %13
  store i32 %div10, i32* %band_height, align 4
  %14 = load i32, i32* %band_height, align 4
  %15 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %height, align 4
  store i32 %16, i32* %band_height, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %band_height, align 4
  %mul12 = mul nsw i32 %17, %18
  %19 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul13 = mul nsw i32 %19, %20
  %mul14 = mul nsw i32 %mul12, %mul13
  %conv15 = sext i32 %mul14 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 1)
  store i8* %call16, i8** %mask, align 8
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %band_height, align 4
  %mul17 = mul nsw i32 %21, %22
  %23 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul18 = mul nsw i32 %23, %24
  %mul19 = mul nsw i32 %mul17, %mul18
  %mul20 = mul nsw i32 %mul19, 3
  %conv21 = sext i32 %mul20 to i64
  %call22 = call noalias i8* @g_malloc_n(i64 %conv21, i64 1)
  store i8* %call22, i8** %data, align 8
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %band_height, align 4
  %mul23 = mul nsw i32 %25, %26
  %27 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul24 = mul nsw i32 %27, %28
  %mul25 = mul nsw i32 %mul23, %mul24
  %conv26 = sext i32 %mul25 to i64
  %call27 = call noalias i8* @g_malloc_n(i64 %conv26, i64 1)
  store i8* %call27, i8** %nhits, align 8
  %call28 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %rc, i8* %gc, i8* %bc)
  store i32 0, i32* %band_no, align 4
  store i32 0, i32* %band_y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.188, %if.end
  %29 = load i32, i32* %band_no, align 4
  %30 = load i32, i32* %num_bands, align 4
  %cmp29 = icmp slt i32 %29, %30
  br i1 %cmp29, label %for.body, label %for.end.190

for.body:                                         ; preds = %for.cond
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.122, i32 0, i32 0)) #5
  %31 = load i32, i32* %band_no, align 4
  %add32 = add nsw i32 %31, 1
  %32 = load i32, i32* %num_bands, align 4
  %call33 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call31, i32 %add32, i32 %32)
  %33 = load i32, i32* %band_y, align 4
  %34 = load i32, i32* %band_height, align 4
  %add34 = add nsw i32 %33, %34
  %35 = load i32, i32* %height, align 4
  %cmp35 = icmp sgt i32 %add34, %35
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %for.body
  %36 = load i32, i32* %height, align 4
  %37 = load i32, i32* %band_y, align 4
  %sub38 = sub nsw i32 %36, %37
  store i32 %sub38, i32* %band_height, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %for.body
  %38 = load i8*, i8** %mask, align 8
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %band_height, align 4
  %mul40 = mul nsw i32 %39, %40
  %41 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul41 = mul nsw i32 %41, %42
  %mul42 = mul nsw i32 %mul40, %mul41
  %conv43 = sext i32 %mul42 to i64
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 %conv43, i32 1, i1 false)
  %43 = load i8*, i8** %nhits, align 8
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %band_height, align 4
  %mul44 = mul nsw i32 %44, %45
  %46 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul45 = mul nsw i32 %46, %47
  %mul46 = mul nsw i32 %mul44, %mul45
  %conv47 = sext i32 %mul46 to i64
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 %conv47, i32 1, i1 false)
  %48 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 1), align 4
  %53 = load i32, i32* %band_y, align 4
  %54 = load i32, i32* %band_height, align 4
  %55 = load i8*, i8** %data, align 8
  %56 = load i8*, i8** %mask, align 8
  %57 = load i8*, i8** %nhits, align 8
  call void @ifs_render(%struct.AffElement** %48, i32 %49, i32 %50, i32 %51, i32 %52, %struct.IfsComposeVals* @ifsvals, i32 %53, i32 %54, i8* %55, i8* %56, i8* %57, i32 0)
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %59 = load i32, i32* %band_y, align 4
  %60 = load i32, i32* %width, align 4
  %61 = load i32, i32* %band_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %58, i32 0, i32 %59, i32 %60, i32 %61, i32 1, i32 1)
  %call48 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call48, i8** %pr, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.184, %if.end.39
  %62 = load i8*, i8** %pr, align 8
  %cmp50 = icmp ne i8* %62, null
  br i1 %cmp50, label %for.body.52, label %for.end.186

for.body.52:                                      ; preds = %for.cond.49
  %data53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %63 = load i8*, i8** %data53, align 8
  store i8* %63, i8** %destrow, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %64 = load i32, i32* %y, align 4
  store i32 %64, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.181, %for.body.52
  %65 = load i32, i32* %j, align 4
  %y55 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %66 = load i32, i32* %y55, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %67 = load i32, i32* %h, align 4
  %add56 = add nsw i32 %66, %67
  %cmp57 = icmp slt i32 %65, %add56
  br i1 %cmp57, label %for.body.59, label %for.end.183

for.body.59:                                      ; preds = %for.cond.54
  %68 = load i8*, i8** %destrow, align 8
  store i8* %68, i8** %dest, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %69 = load i32, i32* %x, align 4
  store i32 %69, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.176, %for.body.59
  %70 = load i32, i32* %i, align 4
  %x61 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %71 = load i32, i32* %x61, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %72 = load i32, i32* %w, align 4
  %add62 = add nsw i32 %71, %72
  %cmp63 = icmp slt i32 %70, %add62
  br i1 %cmp63, label %for.body.65, label %for.end.178

for.body.65:                                      ; preds = %for.cond.60
  store i32 0, i32* %rtot, align 4
  store i32 0, i32* %btot, align 4
  store i32 0, i32* %gtot, align 4
  store i32 0, i32* %mtot, align 4
  store i32 0, i32* %jj, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.109, %for.body.65
  %73 = load i32, i32* %jj, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %cmp67 = icmp slt i32 %73, %74
  br i1 %cmp67, label %for.body.69, label %for.end.111

for.body.69:                                      ; preds = %for.cond.66
  %75 = load i8*, i8** %data, align 8
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %band_y, align 4
  %sub70 = sub nsw i32 %76, %77
  %78 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul71 = mul nsw i32 %sub70, %78
  %79 = load i32, i32* %jj, align 4
  %add72 = add nsw i32 %mul71, %79
  %80 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul73 = mul nsw i32 %add72, %80
  %81 = load i32, i32* %width, align 4
  %mul74 = mul nsw i32 %mul73, %81
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul75 = mul nsw i32 %82, %83
  %add76 = add nsw i32 %mul74, %mul75
  %mul77 = mul nsw i32 3, %add76
  %idx.ext = sext i32 %mul77 to i64
  %add.ptr = getelementptr inbounds i8, i8* %75, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8
  %84 = load i8*, i8** %mask, align 8
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %band_y, align 4
  %sub78 = sub nsw i32 %85, %86
  %87 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul79 = mul nsw i32 %sub78, %87
  %88 = load i32, i32* %jj, align 4
  %add80 = add nsw i32 %mul79, %88
  %89 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul81 = mul nsw i32 %add80, %89
  %90 = load i32, i32* %width, align 4
  %mul82 = mul nsw i32 %mul81, %90
  %idx.ext83 = sext i32 %mul82 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %84, i64 %idx.ext83
  %91 = load i32, i32* %i, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul85 = mul nsw i32 %91, %92
  %idx.ext86 = sext i32 %mul85 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr84, i64 %idx.ext86
  store i8* %add.ptr87, i8** %maskptr, align 8
  store i32 0, i32* %ii, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc, %for.body.69
  %93 = load i32, i32* %ii, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %cmp89 = icmp slt i32 %93, %94
  br i1 %cmp89, label %for.body.91, label %for.end

for.body.91:                                      ; preds = %for.cond.88
  %95 = load i8*, i8** %maskptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr, i8** %maskptr, align 8
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %maskval, align 1
  %97 = load i8, i8* %maskval, align 1
  %conv92 = zext i8 %97 to i32
  %98 = load i32, i32* %mtot, align 4
  %add93 = add nsw i32 %98, %conv92
  store i32 %add93, i32* %mtot, align 4
  %99 = load i8, i8* %maskval, align 1
  %conv94 = zext i8 %99 to i32
  %100 = load i8*, i8** %ptr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr95, i8** %ptr, align 8
  %101 = load i8, i8* %100, align 1
  %conv96 = zext i8 %101 to i32
  %mul97 = mul nsw i32 %conv94, %conv96
  %102 = load i32, i32* %rtot, align 4
  %add98 = add nsw i32 %102, %mul97
  store i32 %add98, i32* %rtot, align 4
  %103 = load i8, i8* %maskval, align 1
  %conv99 = zext i8 %103 to i32
  %104 = load i8*, i8** %ptr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr100, i8** %ptr, align 8
  %105 = load i8, i8* %104, align 1
  %conv101 = zext i8 %105 to i32
  %mul102 = mul nsw i32 %conv99, %conv101
  %106 = load i32, i32* %gtot, align 4
  %add103 = add nsw i32 %106, %mul102
  store i32 %add103, i32* %gtot, align 4
  %107 = load i8, i8* %maskval, align 1
  %conv104 = zext i8 %107 to i32
  %108 = load i8*, i8** %ptr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr105, i8** %ptr, align 8
  %109 = load i8, i8* %108, align 1
  %conv106 = zext i8 %109 to i32
  %mul107 = mul nsw i32 %conv104, %conv106
  %110 = load i32, i32* %btot, align 4
  %add108 = add nsw i32 %110, %mul107
  store i32 %add108, i32* %btot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.91
  %111 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond.88

for.end:                                          ; preds = %for.cond.88
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end
  %112 = load i32, i32* %jj, align 4
  %inc110 = add nsw i32 %112, 1
  store i32 %inc110, i32* %jj, align 4
  br label %for.cond.66

for.end.111:                                      ; preds = %for.cond.66
  %113 = load i32, i32* %mtot, align 4
  %tobool = icmp ne i32 %113, 0
  br i1 %tobool, label %if.then.112, label %if.end.118

if.then.112:                                      ; preds = %for.end.111
  %114 = load i32, i32* %mtot, align 4
  %115 = load i32, i32* %rtot, align 4
  %div113 = sdiv i32 %115, %114
  store i32 %div113, i32* %rtot, align 4
  %116 = load i32, i32* %mtot, align 4
  %117 = load i32, i32* %gtot, align 4
  %div114 = sdiv i32 %117, %116
  store i32 %div114, i32* %gtot, align 4
  %118 = load i32, i32* %mtot, align 4
  %119 = load i32, i32* %btot, align 4
  %div115 = sdiv i32 %119, %118
  store i32 %div115, i32* %btot, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3), align 4
  %mul116 = mul nsw i32 %120, %121
  %122 = load i32, i32* %mtot, align 4
  %div117 = sdiv i32 %122, %mul116
  store i32 %div117, i32* %mtot, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.112, %for.end.111
  %123 = load i32, i32* %type, align 4
  switch i32 %123, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.133
    i32 0, label %sw.bb.141
    i32 1, label %sw.bb.166
    i32 4, label %sw.bb.175
    i32 5, label %sw.bb.175
  ]

sw.bb:                                            ; preds = %if.end.118
  %124 = load i32, i32* %mtot, align 4
  %125 = load i32, i32* %rtot, align 4
  %126 = load i32, i32* %btot, align 4
  %add119 = add nsw i32 %125, %126
  %127 = load i32, i32* %gtot, align 4
  %add120 = add nsw i32 %add119, %127
  %mul121 = mul nsw i32 %124, %add120
  %128 = load i32, i32* %mtot, align 4
  %sub122 = sub nsw i32 255, %128
  %129 = load i8, i8* %rc, align 1
  %conv123 = zext i8 %129 to i32
  %130 = load i8, i8* %gc, align 1
  %conv124 = zext i8 %130 to i32
  %add125 = add nsw i32 %conv123, %conv124
  %131 = load i8, i8* %bc, align 1
  %conv126 = zext i8 %131 to i32
  %add127 = add nsw i32 %add125, %conv126
  %mul128 = mul nsw i32 %sub122, %add127
  %add129 = add nsw i32 %mul121, %mul128
  %div130 = sdiv i32 %add129, 765
  %conv131 = trunc i32 %div130 to i8
  %132 = load i8*, i8** %dest, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr132, i8** %dest, align 8
  store i8 %conv131, i8* %132, align 1
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.end.118
  %133 = load i32, i32* %rtot, align 4
  %134 = load i32, i32* %btot, align 4
  %add134 = add nsw i32 %133, %134
  %135 = load i32, i32* %gtot, align 4
  %add135 = add nsw i32 %add134, %135
  %div136 = sdiv i32 %add135, 3
  %conv137 = trunc i32 %div136 to i8
  %136 = load i8*, i8** %dest, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr138, i8** %dest, align 8
  store i8 %conv137, i8* %136, align 1
  %137 = load i32, i32* %mtot, align 4
  %conv139 = trunc i32 %137 to i8
  %138 = load i8*, i8** %dest, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr140, i8** %dest, align 8
  store i8 %conv139, i8* %138, align 1
  br label %sw.epilog

sw.bb.141:                                        ; preds = %if.end.118
  %139 = load i32, i32* %mtot, align 4
  %140 = load i32, i32* %rtot, align 4
  %mul142 = mul nsw i32 %139, %140
  %141 = load i32, i32* %mtot, align 4
  %sub143 = sub nsw i32 255, %141
  %142 = load i8, i8* %rc, align 1
  %conv144 = zext i8 %142 to i32
  %mul145 = mul nsw i32 %sub143, %conv144
  %add146 = add nsw i32 %mul142, %mul145
  %div147 = sdiv i32 %add146, 255
  %conv148 = trunc i32 %div147 to i8
  %143 = load i8*, i8** %dest, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr149, i8** %dest, align 8
  store i8 %conv148, i8* %143, align 1
  %144 = load i32, i32* %mtot, align 4
  %145 = load i32, i32* %gtot, align 4
  %mul150 = mul nsw i32 %144, %145
  %146 = load i32, i32* %mtot, align 4
  %sub151 = sub nsw i32 255, %146
  %147 = load i8, i8* %gc, align 1
  %conv152 = zext i8 %147 to i32
  %mul153 = mul nsw i32 %sub151, %conv152
  %add154 = add nsw i32 %mul150, %mul153
  %div155 = sdiv i32 %add154, 255
  %conv156 = trunc i32 %div155 to i8
  %148 = load i8*, i8** %dest, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr157, i8** %dest, align 8
  store i8 %conv156, i8* %148, align 1
  %149 = load i32, i32* %mtot, align 4
  %150 = load i32, i32* %btot, align 4
  %mul158 = mul nsw i32 %149, %150
  %151 = load i32, i32* %mtot, align 4
  %sub159 = sub nsw i32 255, %151
  %152 = load i8, i8* %bc, align 1
  %conv160 = zext i8 %152 to i32
  %mul161 = mul nsw i32 %sub159, %conv160
  %add162 = add nsw i32 %mul158, %mul161
  %div163 = sdiv i32 %add162, 255
  %conv164 = trunc i32 %div163 to i8
  %153 = load i8*, i8** %dest, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr165, i8** %dest, align 8
  store i8 %conv164, i8* %153, align 1
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.118
  %154 = load i32, i32* %rtot, align 4
  %conv167 = trunc i32 %154 to i8
  %155 = load i8*, i8** %dest, align 8
  %incdec.ptr168 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr168, i8** %dest, align 8
  store i8 %conv167, i8* %155, align 1
  %156 = load i32, i32* %gtot, align 4
  %conv169 = trunc i32 %156 to i8
  %157 = load i8*, i8** %dest, align 8
  %incdec.ptr170 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr170, i8** %dest, align 8
  store i8 %conv169, i8* %157, align 1
  %158 = load i32, i32* %btot, align 4
  %conv171 = trunc i32 %158 to i8
  %159 = load i8*, i8** %dest, align 8
  %incdec.ptr172 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr172, i8** %dest, align 8
  store i8 %conv171, i8* %159, align 1
  %160 = load i32, i32* %mtot, align 4
  %conv173 = trunc i32 %160 to i8
  %161 = load i8*, i8** %dest, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr174, i8** %dest, align 8
  store i8 %conv173, i8* %161, align 1
  br label %sw.epilog

sw.bb.175:                                        ; preds = %if.end.118, %if.end.118
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.123, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.118, %sw.bb.175, %sw.bb.166, %sw.bb.141, %sw.bb.133, %sw.bb
  br label %for.inc.176

for.inc.176:                                      ; preds = %sw.epilog
  %162 = load i32, i32* %i, align 4
  %inc177 = add nsw i32 %162, 1
  store i32 %inc177, i32* %i, align 4
  br label %for.cond.60

for.end.178:                                      ; preds = %for.cond.60
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %163 = load i32, i32* %rowstride, align 4
  %164 = load i8*, i8** %destrow, align 8
  %idx.ext179 = sext i32 %163 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %164, i64 %idx.ext179
  store i8* %add.ptr180, i8** %destrow, align 8
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.178
  %165 = load i32, i32* %j, align 4
  %inc182 = add nsw i32 %165, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.54

for.end.183:                                      ; preds = %for.cond.54
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %166 = load i8*, i8** %pr, align 8
  %call185 = call i8* @gimp_pixel_rgns_process(i8* %166)
  store i8* %call185, i8** %pr, align 8
  br label %for.cond.49

for.end.186:                                      ; preds = %for.cond.49
  %167 = load i32, i32* %band_height, align 4
  %168 = load i32, i32* %band_y, align 4
  %add187 = add nsw i32 %168, %167
  store i32 %add187, i32* %band_y, align 4
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.end.186
  %169 = load i32, i32* %band_no, align 4
  %inc189 = add nsw i32 %169, 1
  store i32 %inc189, i32* %band_no, align 4
  br label %for.cond

for.end.190:                                      ; preds = %for.cond
  %170 = load i8*, i8** %mask, align 8
  call void @g_free(i8* %170)
  %171 = load i8*, i8** %data, align 8
  call void @g_free(i8* %171)
  %172 = load i8*, i8** %nhits, align 8
  call void @g_free(i8* %172)
  %173 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %173)
  %174 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id191 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %174, i32 0, i32 0
  %175 = load i32, i32* %drawable_id191, align 4
  %call192 = call i32 @gimp_drawable_merge_shadow(i32 %175, i32 1)
  %176 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id193 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %176, i32 0, i32 0
  %177 = load i32, i32* %drawable_id193, align 4
  %178 = load i32, i32* %width, align 4
  %179 = load i32, i32* %height, align 4
  %call194 = call i32 @gimp_drawable_update(i32 %177, i32 0, i32 0, i32 %178, i32 %179)
  ret void
}

declare i8* @ifsvals_stringify(%struct.IfsComposeVals*, %struct.AffElement**) #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare i32 @gimp_item_attach_parasite(i32, %struct._GimpParasite*) #1

declare i32 @gimp_image_undo_group_end(i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 1, label %sw.bb.2
    i32 -5, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @ifs_compose_load(%struct._GtkWidget* %1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @ifs_compose_save(%struct._GtkWidget* %2)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %3, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %4, %struct._GdkRectangle* %allocation)
  call void @undo_begin()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.2
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  call void @undo_update(i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @ifs_compose_set_defaults()
  call void @ifs_compose_preview()
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.7, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end.9

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %12, i64 %idxprom
  %13 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %14 = load i32, i32* %width, align 4
  %conv = sitofp i32 %14 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %15 = load i32, i32* %height, align 4
  %conv6 = sitofp i32 %15 to double
  %16 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %17 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %13, double %conv, double %conv6, double %16, double %17)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.5
  %18 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.3

for.end.9:                                        ; preds = %for.cond.3
  call void @design_area_redraw()
  call void @design_op_actions_update()
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.IfsComposeInterface, %struct.IfsComposeInterface* @ifscint, i32 0, i32 0), align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.10
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.9, %sw.bb.1, %sw.bb
  ret void
}

declare void @gtk_main_quit() #1

; Function Attrs: nounwind uwtable
define internal void @design_area_create(%struct._GtkWidget* %window, i32 %design_width, i32 %design_height) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %design_width.addr = alloca i32, align 4
  %design_height.addr = alloca i32, align 4
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  store i32 %design_width, i32* %design_width.addr, align 4
  store i32 %design_height, i32* %design_height.addr, align 4
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 88)
  %0 = bitcast i8* %call to %struct.IfsDesignArea*
  store %struct.IfsDesignArea* %0, %struct.IfsDesignArea** @ifsDesign, align 8
  %1 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %1, i32 0, i32 3
  store i32 0, i32* %op, align 4
  %call1 = call %struct._GtkWidget* @gtk_drawing_area_new()
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 0
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %area, align 8
  %3 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area2 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %3, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %area2, align 8
  %5 = load i32, i32* %design_width.addr, align 4
  %6 = load i32, i32* %design_height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %4, i32 %5, i32 %6)
  %7 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area3 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %7, i32 0, i32 0
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area3, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @design_area_realize to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %10 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area5 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %10, i32 0, i32 0
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %area5, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)* @design_area_expose to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area7 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %area7, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @design_area_button_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area9 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %area9, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @design_area_button_release to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area11 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %19, i32 0, i32 0
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %area11, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* @design_area_motion to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area13 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %22, i32 0, i32 0
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %area13, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)* @design_area_configure to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area15 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %25, i32 0, i32 0
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %area15, align 8
  call void @gtk_widget_set_events(%struct._GtkWidget* %26, i32 782)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %call16 = call %struct._GtkUIManager* @design_op_menu_create(%struct._GtkWidget* %27)
  %28 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %28, i32 0, i32 1
  store %struct._GtkUIManager* %call16, %struct._GtkUIManager** %ui_manager, align 8
  call void @design_op_actions_update()
  ret void
}

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare %struct._GtkWidget* @gtk_aspect_frame_new(i8*, float, float, float, i32) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @ifs_compose_trans_page() #0 {
entry:
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 6, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %8, i32 2, i32 6)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %11, i32 4, i32 6)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %17, i32 2, i32 6)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0)) #5
  %call17 = call %struct._GtkWidget* @gtk_label_new(i8* %call16)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %label, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_misc_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %25, float 0.000000e+00, float 5.000000e-01)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %28, %struct._GtkWidget* %29, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %31, i32 0, i32 27
  %x = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals, i32 0, i32 0
  %32 = bitcast double* %x to i8*
  %call22 = call %struct.ValuePair* @value_pair_create(i8* %32, double 0.000000e+00, double 1.000000e+00, i32 0, i32 1)
  %33 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %x_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %33, i32 0, i32 1
  store %struct.ValuePair* %call22, %struct.ValuePair** %x_pair, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %37 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %x_pair25 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %37, i32 0, i32 1
  %38 = load %struct.ValuePair*, %struct.ValuePair** %x_pair25, align 8
  %spin = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %38, i32 0, i32 2
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_table_attach(%struct._GtkTable* %36, %struct._GtkWidget* %39, i32 1, i32 2, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %40 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %x_pair26 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %40, i32 0, i32 1
  %41 = load %struct.ValuePair*, %struct.ValuePair** %x_pair26, align 8
  %spin27 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %41, i32 0, i32 2
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %spin27, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0)) #5
  %call29 = call %struct._GtkWidget* @gtk_label_new(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %label, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_misc_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call30)
  %45 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %45, float 0.000000e+00, float 5.000000e-01)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %48, %struct._GtkWidget* %49, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals34 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %51, i32 0, i32 27
  %y = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals34, i32 0, i32 1
  %52 = bitcast double* %y to i8*
  %call35 = call %struct.ValuePair* @value_pair_create(i8* %52, double 0.000000e+00, double 1.000000e+00, i32 0, i32 1)
  %53 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %y_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %53, i32 0, i32 2
  store %struct.ValuePair* %call35, %struct.ValuePair** %y_pair, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call36)
  %56 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %57 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %y_pair38 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %57, i32 0, i32 2
  %58 = load %struct.ValuePair*, %struct.ValuePair** %y_pair38, align 8
  %spin39 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %58, i32 0, i32 2
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %spin39, align 8
  call void @gtk_table_attach(%struct._GtkTable* %56, %struct._GtkWidget* %59, i32 1, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %60 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %y_pair40 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %60, i32 0, i32 2
  %61 = load %struct.ValuePair*, %struct.ValuePair** %y_pair40, align 8
  %spin41 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %61, i32 0, i32 2
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %spin41, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %62)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0)) #5
  %call43 = call %struct._GtkWidget* @gtk_label_new(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %label, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_misc_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call44)
  %65 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %65, float 0.000000e+00, float 5.000000e-01)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call46)
  %68 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %68, %struct._GtkWidget* %69, i32 2, i32 3, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals48 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %71, i32 0, i32 27
  %scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals48, i32 0, i32 3
  %72 = bitcast double* %scale to i8*
  %call49 = call %struct.ValuePair* @value_pair_create(i8* %72, double 0.000000e+00, double 1.000000e+00, i32 0, i32 1)
  %73 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %73, i32 0, i32 3
  store %struct.ValuePair* %call49, %struct.ValuePair** %scale_pair, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call50)
  %76 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %77 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %scale_pair52 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %77, i32 0, i32 3
  %78 = load %struct.ValuePair*, %struct.ValuePair** %scale_pair52, align 8
  %spin53 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %78, i32 0, i32 2
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %spin53, align 8
  call void @gtk_table_attach(%struct._GtkTable* %76, %struct._GtkWidget* %79, i32 3, i32 4, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %80 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %scale_pair54 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %80, i32 0, i32 3
  %81 = load %struct.ValuePair*, %struct.ValuePair** %scale_pair54, align 8
  %spin55 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %81, i32 0, i32 2
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %spin55, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0)) #5
  %call57 = call %struct._GtkWidget* @gtk_label_new(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %label, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_misc_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call58)
  %85 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %85, float 0.000000e+00, float 1.000000e+00)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call60)
  %88 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %88, %struct._GtkWidget* %89, i32 2, i32 3, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %91 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals62 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %91, i32 0, i32 27
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals62, i32 0, i32 2
  %92 = bitcast double* %theta to i8*
  %call63 = call %struct.ValuePair* @value_pair_create(i8* %92, double -1.800000e+02, double 1.800000e+02, i32 0, i32 1)
  %93 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %angle_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %93, i32 0, i32 4
  store %struct.ValuePair* %call63, %struct.ValuePair** %angle_pair, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call64)
  %96 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %97 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %angle_pair66 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %97, i32 0, i32 4
  %98 = load %struct.ValuePair*, %struct.ValuePair** %angle_pair66, align 8
  %spin67 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %98, i32 0, i32 2
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %spin67, align 8
  call void @gtk_table_attach(%struct._GtkTable* %96, %struct._GtkWidget* %99, i32 3, i32 4, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %100 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %angle_pair68 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %100, i32 0, i32 4
  %101 = load %struct.ValuePair*, %struct.ValuePair** %angle_pair68, align 8
  %spin69 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %101, i32 0, i32 2
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %spin69, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0)) #5
  %call71 = call %struct._GtkWidget* @gtk_label_new(i8* %call70)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %label, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_misc_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call72)
  %105 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %105, float 0.000000e+00, float 5.000000e-01)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call74)
  %108 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %108, %struct._GtkWidget* %109, i32 4, i32 5, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %111 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals76 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %111, i32 0, i32 27
  %asym = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals76, i32 0, i32 4
  %112 = bitcast double* %asym to i8*
  %call77 = call %struct.ValuePair* @value_pair_create(i8* %112, double 1.000000e-01, double 1.000000e+01, i32 0, i32 1)
  %113 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %asym_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %113, i32 0, i32 5
  store %struct.ValuePair* %call77, %struct.ValuePair** %asym_pair, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_table_get_type() #6
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call78)
  %116 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkTable*
  %117 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %asym_pair80 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %117, i32 0, i32 5
  %118 = load %struct.ValuePair*, %struct.ValuePair** %asym_pair80, align 8
  %spin81 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %118, i32 0, i32 2
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %spin81, align 8
  call void @gtk_table_attach(%struct._GtkTable* %116, %struct._GtkWidget* %119, i32 5, i32 6, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %120 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %asym_pair82 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %120, i32 0, i32 5
  %121 = load %struct.ValuePair*, %struct.ValuePair** %asym_pair82, align 8
  %spin83 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %121, i32 0, i32 2
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %spin83, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0)) #5
  %call85 = call %struct._GtkWidget* @gtk_label_new(i8* %call84)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %label, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_misc_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call86)
  %125 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %125, float 0.000000e+00, float 5.000000e-01)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call88)
  %128 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %128, %struct._GtkWidget* %129, i32 4, i32 5, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %130)
  %131 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals90 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %131, i32 0, i32 27
  %shear = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals90, i32 0, i32 5
  %132 = bitcast double* %shear to i8*
  %call91 = call %struct.ValuePair* @value_pair_create(i8* %132, double -1.000000e+01, double 1.000000e+01, i32 0, i32 1)
  %133 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %shear_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %133, i32 0, i32 6
  store %struct.ValuePair* %call91, %struct.ValuePair** %shear_pair, align 8
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %135 = bitcast %struct._GtkWidget* %134 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_table_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %135, i64 %call92)
  %136 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkTable*
  %137 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %shear_pair94 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %137, i32 0, i32 6
  %138 = load %struct.ValuePair*, %struct.ValuePair** %shear_pair94, align 8
  %spin95 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %138, i32 0, i32 2
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %spin95, align 8
  call void @gtk_table_attach(%struct._GtkTable* %136, %struct._GtkWidget* %139, i32 5, i32 6, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %140 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %shear_pair96 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %140, i32 0, i32 6
  %141 = load %struct.ValuePair*, %struct.ValuePair** %shear_pair96, align 8
  %spin97 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %141, i32 0, i32 2
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %spin97, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0)) #5
  %call99 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call98)
  %143 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %flip_check_button = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %143, i32 0, i32 7
  store %struct._GtkWidget* %call99, %struct._GtkWidget** %flip_check_button, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_table_get_type() #6
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call100)
  %146 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkTable*
  %147 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %flip_check_button102 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %147, i32 0, i32 7
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %flip_check_button102, align 8
  call void @gtk_table_attach(%struct._GtkTable* %146, %struct._GtkWidget* %148, i32 0, i32 6, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %149 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %flip_check_button103 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %149, i32 0, i32 7
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %flip_check_button103, align 8
  %151 = bitcast %struct._GtkWidget* %150 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @flip_check_button_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %152 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %flip_check_button105 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %152, i32 0, i32 7
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %flip_check_button105, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %154
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @ifs_compose_color_page() #0 {
entry:
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 5, i32 0)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %table, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_table_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %5, i32 12)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %8, i32 6)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0)) #5
  %call11 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %14, i8* %call10)
  %15 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %simple_button = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %15, i32 0, i32 15
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %simple_button, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  %19 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %simple_button14 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %19, i32 0, i32 15
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %simple_button14, align 8
  call void @gtk_table_attach(%struct._GtkTable* %18, %struct._GtkWidget* %20, i32 0, i32 1, i32 0, i32 2, i32 4, i32 4, i32 0, i32 0)
  %21 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %simple_button15 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %21, i32 0, i32 15
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %simple_button15, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_radio_button_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkRadioButton*
  %call18 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %24)
  store %struct._GSList* %call18, %struct._GSList** %group, align 8
  %25 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %simple_button19 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %25, i32 0, i32 15
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %simple_button19, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @simple_color_toggled to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %simple_button21 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %28, i32 0, i32 15
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %simple_button21, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i32 0, i32 0)) #5
  %30 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %30, i32 0, i32 27
  %target_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals, i32 0, i32 11
  %call23 = call %struct.ColorMap* @color_map_create(i8* %call22, %struct._GimpRGB* null, %struct._GimpRGB* %target_color, i32 1)
  %31 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %target_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %31, i32 0, i32 12
  store %struct.ColorMap* %call23, %struct.ColorMap** %target_cmap, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_table_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call24)
  %34 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTable*
  %35 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %target_cmap26 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %35, i32 0, i32 12
  %36 = load %struct.ColorMap*, %struct.ColorMap** %target_cmap26, align 8
  %hbox = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %34, %struct._GtkWidget* %37, i32 1, i32 2, i32 0, i32 2, i32 4, i32 0, i32 0, i32 0)
  %38 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %target_cmap27 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %38, i32 0, i32 12
  %39 = load %struct.ColorMap*, %struct.ColorMap** %target_cmap27, align 8
  %hbox28 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %39, i32 0, i32 1
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox28, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.108, i32 0, i32 0)) #5
  %call30 = call %struct._GtkWidget* @gtk_label_new(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %label, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_misc_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call31)
  %43 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %43, float 0.000000e+00, float 5.000000e-01)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call33)
  %46 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %46, %struct._GtkWidget* %47, i32 2, i32 3, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %48)
  %49 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals35 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %49, i32 0, i32 27
  %hue_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals35, i32 0, i32 12
  %50 = bitcast double* %hue_scale to i8*
  %call36 = call %struct.ValuePair* @value_pair_create(i8* %50, double 0.000000e+00, double 1.000000e+00, i32 1, i32 1)
  %51 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %51, i32 0, i32 13
  store %struct.ValuePair* %call36, %struct.ValuePair** %hue_scale_pair, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call37)
  %54 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %55 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair39 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %55, i32 0, i32 13
  %56 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair39, align 8
  %scale = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %56, i32 0, i32 1
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_table_attach(%struct._GtkTable* %54, %struct._GtkWidget* %57, i32 3, i32 4, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %58 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair40 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %58, i32 0, i32 13
  %59 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair40, align 8
  %scale41 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %59, i32 0, i32 1
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %scale41, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call42)
  %63 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %64 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair44 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %64, i32 0, i32 13
  %65 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair44, align 8
  %spin = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %65, i32 0, i32 2
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_table_attach(%struct._GtkTable* %63, %struct._GtkWidget* %66, i32 4, i32 5, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %67 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair45 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %67, i32 0, i32 13
  %68 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair45, align 8
  %spin46 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %68, i32 0, i32 2
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %spin46, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0)) #5
  %call48 = call %struct._GtkWidget* @gtk_label_new(i8* %call47)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %label, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_misc_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call49)
  %72 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %72, float 0.000000e+00, float 5.000000e-01)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call51)
  %75 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %75, %struct._GtkWidget* %76, i32 2, i32 3, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %77)
  %78 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals53 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %78, i32 0, i32 27
  %value_scale = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals53, i32 0, i32 13
  %79 = bitcast double* %value_scale to i8*
  %call54 = call %struct.ValuePair* @value_pair_create(i8* %79, double 0.000000e+00, double 1.000000e+00, i32 1, i32 1)
  %80 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %80, i32 0, i32 14
  store %struct.ValuePair* %call54, %struct.ValuePair** %value_scale_pair, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call55)
  %83 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %84 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair57 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %84, i32 0, i32 14
  %85 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair57, align 8
  %scale58 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %85, i32 0, i32 1
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %scale58, align 8
  call void @gtk_table_attach(%struct._GtkTable* %83, %struct._GtkWidget* %86, i32 3, i32 4, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %87 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair59 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %87, i32 0, i32 14
  %88 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair59, align 8
  %scale60 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %88, i32 0, i32 1
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %scale60, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call61)
  %92 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %93 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair63 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %93, i32 0, i32 14
  %94 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair63, align 8
  %spin64 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %94, i32 0, i32 2
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %spin64, align 8
  call void @gtk_table_attach(%struct._GtkTable* %92, %struct._GtkWidget* %95, i32 4, i32 5, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %96 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair65 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %96, i32 0, i32 14
  %97 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair65, align 8
  %spin66 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %97, i32 0, i32 2
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %spin66, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.110, i32 0, i32 0)) #5
  %call68 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %99, i8* %call67)
  %100 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %full_button = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %100, i32 0, i32 16
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %full_button, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call69)
  %103 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %104 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %full_button71 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %104, i32 0, i32 16
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %full_button71, align 8
  call void @gtk_table_attach(%struct._GtkTable* %103, %struct._GtkWidget* %105, i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %106 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %full_button72 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %106, i32 0, i32 16
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %full_button72, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_radio_button_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call73)
  %109 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkRadioButton*
  %call75 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %109)
  store %struct._GSList* %call75, %struct._GSList** %group, align 8
  %110 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %full_button76 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %110, i32 0, i32 16
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %full_button76, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %call77 = call i32 @gimp_rgb_parse_name(%struct._GimpRGB* %color, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i32 -1)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0)) #5
  %112 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals79 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %112, i32 0, i32 27
  %red_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals79, i32 0, i32 7
  %call80 = call %struct.ColorMap* @color_map_create(i8* %call78, %struct._GimpRGB* %color, %struct._GimpRGB* %red_color, i32 0)
  %113 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %red_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %113, i32 0, i32 8
  store %struct.ColorMap* %call80, %struct.ColorMap** %red_cmap, align 8
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_table_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call81)
  %116 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkTable*
  %117 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %red_cmap83 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %117, i32 0, i32 8
  %118 = load %struct.ColorMap*, %struct.ColorMap** %red_cmap83, align 8
  %hbox84 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %118, i32 0, i32 1
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox84, align 8
  call void @gtk_table_attach(%struct._GtkTable* %116, %struct._GtkWidget* %119, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %120 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %red_cmap85 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %120, i32 0, i32 8
  %121 = load %struct.ColorMap*, %struct.ColorMap** %red_cmap85, align 8
  %hbox86 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %121, i32 0, i32 1
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox86, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %call87 = call i32 @gimp_rgb_parse_name(%struct._GimpRGB* %color, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i32 -1)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.114, i32 0, i32 0)) #5
  %123 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals89 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %123, i32 0, i32 27
  %green_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals89, i32 0, i32 8
  %call90 = call %struct.ColorMap* @color_map_create(i8* %call88, %struct._GimpRGB* %color, %struct._GimpRGB* %green_color, i32 0)
  %124 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %green_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %124, i32 0, i32 9
  store %struct.ColorMap* %call90, %struct.ColorMap** %green_cmap, align 8
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_table_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call91)
  %127 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTable*
  %128 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %green_cmap93 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %128, i32 0, i32 9
  %129 = load %struct.ColorMap*, %struct.ColorMap** %green_cmap93, align 8
  %hbox94 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %129, i32 0, i32 1
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox94, align 8
  call void @gtk_table_attach(%struct._GtkTable* %127, %struct._GtkWidget* %130, i32 2, i32 3, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %131 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %green_cmap95 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %131, i32 0, i32 9
  %132 = load %struct.ColorMap*, %struct.ColorMap** %green_cmap95, align 8
  %hbox96 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %132, i32 0, i32 1
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox96, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %133)
  %call97 = call i32 @gimp_rgb_parse_name(%struct._GimpRGB* %color, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i32 -1)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.116, i32 0, i32 0)) #5
  %134 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals99 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %134, i32 0, i32 27
  %blue_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals99, i32 0, i32 9
  %call100 = call %struct.ColorMap* @color_map_create(i8* %call98, %struct._GimpRGB* %color, %struct._GimpRGB* %blue_color, i32 0)
  %135 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %blue_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %135, i32 0, i32 10
  store %struct.ColorMap* %call100, %struct.ColorMap** %blue_cmap, align 8
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_table_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call101)
  %138 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkTable*
  %139 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %blue_cmap103 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %139, i32 0, i32 10
  %140 = load %struct.ColorMap*, %struct.ColorMap** %blue_cmap103, align 8
  %hbox104 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %140, i32 0, i32 1
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox104, align 8
  call void @gtk_table_attach(%struct._GtkTable* %138, %struct._GtkWidget* %141, i32 3, i32 4, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %142 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %blue_cmap105 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %142, i32 0, i32 10
  %143 = load %struct.ColorMap*, %struct.ColorMap** %blue_cmap105, align 8
  %hbox106 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %143, i32 0, i32 1
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox106, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  %call107 = call i32 @gimp_rgb_parse_name(%struct._GimpRGB* %color, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i32 -1)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 1.000000e+00)
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.118, i32 0, i32 0)) #5
  %145 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals109 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %145, i32 0, i32 27
  %black_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals109, i32 0, i32 10
  %call110 = call %struct.ColorMap* @color_map_create(i8* %call108, %struct._GimpRGB* %color, %struct._GimpRGB* %black_color, i32 0)
  %146 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %black_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %146, i32 0, i32 11
  store %struct.ColorMap* %call110, %struct.ColorMap** %black_cmap, align 8
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_table_get_type() #6
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call111)
  %149 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkTable*
  %150 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %black_cmap113 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %150, i32 0, i32 11
  %151 = load %struct.ColorMap*, %struct.ColorMap** %black_cmap113, align 8
  %hbox114 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %151, i32 0, i32 1
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox114, align 8
  call void @gtk_table_attach(%struct._GtkTable* %149, %struct._GtkWidget* %152, i32 4, i32 5, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %153 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %black_cmap115 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %153, i32 0, i32 11
  %154 = load %struct.ColorMap*, %struct.ColorMap** %black_cmap115, align 8
  %hbox116 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %154, i32 0, i32 1
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox116, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %155)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %156
}

; Function Attrs: nounwind uwtable
define internal %struct.ValuePair* @value_pair_create(i8* %data, double %lower, double %upper, i32 %create_scale, i32 %type) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %create_scale.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %value_pair = alloca %struct.ValuePair*, align 8
  store i8* %data, i8** %data.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store i32 %create_scale, i32* %create_scale.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct.ValuePair*
  store %struct.ValuePair* %0, %struct.ValuePair** %value_pair, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to double*
  %3 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %data1 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %3, i32 0, i32 5
  %d = bitcast %union.anon* %data1 to double**
  store double* %2, double** %d, align 8
  %4 = load i32, i32* %type.addr, align 4
  %5 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %type2 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %5, i32 0, i32 3
  store i32 %4, i32* %type2, align 4
  %6 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %timeout_id = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %6, i32 0, i32 4
  store i32 0, i32* %timeout_id, align 4
  %7 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %7, i32 0, i32 0
  %8 = bitcast %struct._GtkAdjustment** %adjustment to %struct._GtkObject**
  %9 = load double, double* %lower.addr, align 8
  %10 = load double, double* %upper.addr, align 8
  %11 = load double, double* %upper.addr, align 8
  %12 = load double, double* %lower.addr, align 8
  %sub = fsub double %11, %12
  %div = fdiv double %sub, 1.000000e+02
  %13 = load double, double* %upper.addr, align 8
  %14 = load double, double* %lower.addr, align 8
  %sub3 = fsub double %13, %14
  %div4 = fdiv double %sub3, 1.000000e+01
  %call5 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %8, double 1.000000e+00, double %9, double %10, double %div, double %div4, double 0.000000e+00, double 1.000000e+00, i32 3)
  %15 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %spin = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %15, i32 0, i32 2
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %spin, align 8
  %16 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %spin6 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %16, i32 0, i32 2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %spin6, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %17, i32 72, i32 -1)
  %18 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment7 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %18, i32 0, i32 0
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment7, align 8
  %20 = bitcast %struct._GtkAdjustment* %19 to i8*
  %21 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %22 = bitcast %struct.ValuePair* %21 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct.ValuePair*)* @value_pair_scale_callback to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load i32, i32* %create_scale.addr, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %if.else.21

if.then:                                          ; preds = %entry
  %24 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment9 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %24, i32 0, i32 0
  %25 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment9, align 8
  %call10 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %25)
  %26 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %scale = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %26, i32 0, i32 1
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %scale, align 8
  %27 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %28 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %scale12 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %28, i32 0, i32 1
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %scale12, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_scale_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call13)
  %31 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %31, i32 0)
  br label %if.end

if.else:                                          ; preds = %if.then
  %32 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %scale15 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %scale15, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_scale_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call16)
  %35 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkScale*
  call void @gtk_scale_set_digits(%struct._GtkScale* %35, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %36 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %scale18 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %scale18, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_scale_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call19)
  %39 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %39, i32 0)
  br label %if.end.23

if.else.21:                                       ; preds = %entry
  %40 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %scale22 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %40, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %scale22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.end
  %41 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  ret %struct.ValuePair* %41
}

declare void @aff2_scale(%struct.Aff2*, double, i32) #1

declare void @aff2_translate(%struct.Aff2*, double, double) #1

declare void @aff2_compose(%struct.Aff2*, %struct.Aff2*, %struct.Aff2*) #1

declare void @aff2_invert(%struct.Aff2*, %struct.Aff2*) #1

declare void @aff2_apply(%struct.Aff2*, double, double, double*, double*) #1

declare void @aff_element_compute_trans(%struct.AffElement*, double, double, double, double) #1

declare void @aff_element_decompose_trans(%struct.AffElement*, %struct.Aff2*, double, double, double, double) #1

declare void @aff_element_compute_color_trans(%struct.AffElement*) #1

; Function Attrs: nounwind uwtable
define internal void @set_current_element(i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  %frame_name = alloca i8*, align 8
  store i32 %index, i32* %index.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0)) #5
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %1, i64 %idxprom
  %2 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %name = getelementptr inbounds %struct.AffElement, %struct.AffElement* %2, i32 0, i32 3
  %3 = load i8*, i8** %name, align 8
  %call1 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call, i8* %3)
  store i8* %call1, i8** %frame_name, align 8
  %4 = load i32, i32* %index.addr, align 4
  %5 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %5, i32 0, i32 26
  store i32 %4, i32* %current_element, align 4
  %6 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_frame = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %6, i32 0, i32 17
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %current_frame, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_frame_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkFrame*
  %10 = load i8*, i8** %frame_name, align 8
  call void @gtk_frame_set_label(%struct._GtkFrame* %9, i8* %10)
  %11 = load i8*, i8** %frame_name, align 8
  call void @g_free(i8* %11)
  call void @update_values()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_preview() #0 {
entry:
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %rc = alloca i8, align 1
  %gc = alloca i8, align 1
  %bc = alloca i8, align 1
  %ptr = alloca i8*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_width = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 23
  %1 = load i32, i32* %preview_width, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_height = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %2, i32 0, i32 24
  %3 = load i32, i32* %preview_height, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_data = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %4, i32 0, i32 19
  %5 = load i8*, i8** %preview_data, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %width, align 4
  %mul = mul nsw i32 3, %6
  %7 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %7
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %8 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_data2 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %8, i32 0, i32 19
  store i8* %call, i8** %preview_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @gimp_context_get_background(%struct._GimpRGB* %color)
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %rc, i8* %gc, i8* %bc)
  %9 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_data4 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %9, i32 0, i32 19
  %10 = load i8*, i8** %preview_data4, align 8
  store i8* %10, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %mul5 = mul nsw i32 %12, %13
  %cmp = icmp slt i32 %11, %mul5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8, i8* %rc, align 1
  %15 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* %gc, align 1
  %17 = load i8*, i8** %ptr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr7, i8** %ptr, align 8
  store i8 %16, i8* %17, align 1
  %18 = load i8, i8* %bc, align 1
  %19 = load i8*, i8** %ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr8, i8** %ptr, align 8
  store i8 %18, i8* %19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_iterations = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %21, i32 0, i32 20
  %22 = load i32, i32* %preview_iterations, align 4
  %cmp9 = icmp eq i32 %22, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %call12 = call i32 @g_idle_add(i32 (i8*)* @preview_idle_render, i8* null)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.end
  %23 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 1), align 4
  %conv14 = sitofp i32 %23 to double
  %24 = load i32, i32* %width, align 4
  %conv15 = sitofp i32 %24 to double
  %25 = load i32, i32* %height, align 4
  %conv16 = sitofp i32 %25 to double
  %mul17 = fmul double %conv15, %conv16
  %26 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_width = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %26, i32 0, i32 21
  %27 = load i32, i32* %drawable_width, align 4
  %28 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %drawable_height = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %28, i32 0, i32 22
  %29 = load i32, i32* %drawable_height, align 4
  %mul18 = mul nsw i32 %27, %29
  %conv19 = sitofp i32 %mul18 to double
  %div = fdiv double %mul17, %conv19
  %mul20 = fmul double %conv14, %div
  %conv21 = fptosi double %mul20 to i32
  %30 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_iterations22 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %30, i32 0, i32 20
  store i32 %conv21, i32* %preview_iterations22, align 4
  ret void
}

declare void @gtk_main() #1

declare void @g_object_unref(i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gdk_flush() #1

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_load(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0)) #5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @ifs_compose_load.dialog to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @ifsfile_load_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_load.dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_save(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0)) #5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* bitcast (%struct._GtkWidget** @ifs_compose_save.dialog to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @ifsfile_save_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @ifs_compose_save.dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %19)
  ret void
}

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind uwtable
define internal void @undo_begin() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %to_delete = alloca i32, align 4
  %new_index = alloca i32, align 4
  %0 = load i32, i32* @undo_cur, align 4
  %cmp = icmp eq i32 %0, 23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %to_delete, align 4
  %1 = load i32, i32* @undo_start, align 4
  %add = add nsw i32 %1, 1
  %rem = srem i32 %add, 24
  store i32 %rem, i32* @undo_start, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @undo_cur, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @undo_cur, align 4
  %3 = load i32, i32* @undo_num, align 4
  %4 = load i32, i32* @undo_cur, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %to_delete, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @undo_num, align 4
  %6 = load i32, i32* %to_delete, align 4
  %sub1 = sub nsw i32 %5, %6
  %add2 = add nsw i32 %sub1, 1
  store i32 %add2, i32* @undo_num, align 4
  %7 = load i32, i32* @undo_start, align 4
  %8 = load i32, i32* @undo_cur, align 4
  %add3 = add nsw i32 %7, %8
  %rem4 = srem i32 %add3, 24
  store i32 %rem4, i32* %new_index, align 4
  %9 = load i32, i32* %new_index, align 4
  store i32 %9, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end
  %10 = load i32, i32* %to_delete, align 4
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom
  %ifsvals = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx, i32 0, i32 0
  %num_elements = getelementptr inbounds %struct.IfsComposeVals, %struct.IfsComposeVals* %ifsvals, i32 0, i32 0
  %13 = load i32, i32* %num_elements, align 4
  %cmp7 = icmp slt i32 %11, %13
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom10
  %elements = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx11, i32 0, i32 1
  %16 = load %struct.AffElement**, %struct.AffElement*** %elements, align 8
  %arrayidx12 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %16, i64 %idxprom9
  %17 = load %struct.AffElement*, %struct.AffElement** %arrayidx12, align 8
  %tobool = icmp ne %struct.AffElement* %17, null
  br i1 %tobool, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %for.body.8
  %18 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom15
  %elements17 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx16, i32 0, i32 1
  %20 = load %struct.AffElement**, %struct.AffElement*** %elements17, align 8
  %arrayidx18 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %20, i64 %idxprom14
  %21 = load %struct.AffElement*, %struct.AffElement** %arrayidx18, align 8
  call void @aff_element_free(%struct.AffElement* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %23 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom21
  %elements23 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx22, i32 0, i32 1
  %24 = load %struct.AffElement**, %struct.AffElement*** %elements23, align 8
  %25 = bitcast %struct.AffElement** %24 to i8*
  call void @g_free(i8* %25)
  %26 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom24
  %element_selected = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx25, i32 0, i32 2
  %27 = load i32*, i32** %element_selected, align 8
  %28 = bitcast i32* %27 to i8*
  call void @g_free(i8* %28)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %29 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %29, 1
  %rem28 = srem i32 %add27, 24
  store i32 %rem28, i32* %j, align 4
  %30 = load i32, i32* %to_delete, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %to_delete, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %31 = load i32, i32* %new_index, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom30
  %ifsvals32 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx31, i32 0, i32 0
  %32 = bitcast %struct.IfsComposeVals* %ifsvals32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast (%struct.IfsComposeVals* @ifsvals to i8*), i64 48, i32 8, i1 false)
  %33 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv = sext i32 %33 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %34 = bitcast i8* %call to %struct.AffElement**
  %35 = load i32, i32* %new_index, align 4
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom33
  %elements35 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx34, i32 0, i32 1
  store %struct.AffElement** %34, %struct.AffElement*** %elements35, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv36 = sext i32 %36 to i64
  %call37 = call noalias i8* @g_malloc_n(i64 %conv36, i64 4)
  %37 = bitcast i8* %call37 to i32*
  %38 = load i32, i32* %new_index, align 4
  %idxprom38 = sext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom38
  %element_selected40 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx39, i32 0, i32 2
  store i32* %37, i32** %element_selected40, align 8
  %39 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %39, i32 0, i32 26
  %40 = load i32, i32* %current_element, align 4
  %41 = load i32, i32* %new_index, align 4
  %idxprom41 = sext i32 %41 to i64
  %arrayidx42 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom41
  %current_element43 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx42, i32 0, i32 3
  store i32 %40, i32* %current_element43, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.60, %for.end.29
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp45 = icmp slt i32 %42, %43
  br i1 %cmp45, label %for.body.47, label %for.end.62

for.body.47:                                      ; preds = %for.cond.44
  %44 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %44 to i64
  %45 = load i32, i32* %new_index, align 4
  %idxprom49 = sext i32 %45 to i64
  %arrayidx50 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom49
  %elements51 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx50, i32 0, i32 1
  %46 = load %struct.AffElement**, %struct.AffElement*** %elements51, align 8
  %arrayidx52 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %46, i64 %idxprom48
  store %struct.AffElement* null, %struct.AffElement** %arrayidx52, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %47 to i64
  %48 = load i32*, i32** @element_selected, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %48, i64 %idxprom53
  %49 = load i32, i32* %arrayidx54, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load i32, i32* %new_index, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom56
  %element_selected58 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx57, i32 0, i32 2
  %52 = load i32*, i32** %element_selected58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %52, i64 %idxprom55
  store i32 %49, i32* %arrayidx59, align 4
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.47
  %53 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %53, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.44

for.end.62:                                       ; preds = %for.cond.44
  call void @design_op_actions_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undo_update(i32 %el) #0 {
entry:
  %el.addr = alloca i32, align 4
  %elem = alloca %struct.AffElement*, align 8
  store i32 %el, i32* %el.addr, align 4
  store %struct.AffElement* null, %struct.AffElement** %elem, align 8
  %0 = load i32, i32* %el.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* @undo_start, align 4
  %2 = load i32, i32* @undo_cur, align 4
  %add = add nsw i32 %1, %2
  %rem = srem i32 %add, 24
  %idxprom1 = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom1
  %elements = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx, i32 0, i32 1
  %3 = load %struct.AffElement**, %struct.AffElement*** %elements, align 8
  %arrayidx2 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %3, i64 %idxprom
  %4 = load %struct.AffElement*, %struct.AffElement** %arrayidx2, align 8
  %tobool = icmp ne %struct.AffElement* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc_n(i64 1, i64 416)
  %5 = bitcast i8* %call to %struct.AffElement*
  store %struct.AffElement* %5, %struct.AffElement** %elem, align 8
  %6 = load i32, i32* %el.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32, i32* @undo_start, align 4
  %8 = load i32, i32* @undo_cur, align 4
  %add4 = add nsw i32 %7, %8
  %rem5 = srem i32 %add4, 24
  %idxprom6 = sext i32 %rem5 to i64
  %arrayidx7 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom6
  %elements8 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx7, i32 0, i32 1
  %9 = load %struct.AffElement**, %struct.AffElement*** %elements8, align 8
  %arrayidx9 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %9, i64 %idxprom3
  store %struct.AffElement* %5, %struct.AffElement** %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %11 = load i32, i32* %el.addr, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx11 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %12, i64 %idxprom10
  %13 = load %struct.AffElement*, %struct.AffElement** %arrayidx11, align 8
  %14 = bitcast %struct.AffElement* %10 to i8*
  %15 = bitcast %struct.AffElement* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 416, i32 8, i1 false)
  %16 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %draw_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %16, i32 0, i32 5
  store %struct.IPolygon* null, %struct.IPolygon** %draw_boundary, align 8
  %17 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %17, i32 0, i32 4
  store %struct.IPolygon* null, %struct.IPolygon** %click_boundary, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @design_area_redraw() #0 {
entry:
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %5, i64 %idxprom
  %6 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %7 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %8 = load i32, i32* %height, align 4
  %9 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  call void @aff_element_compute_boundary(%struct.AffElement* %6, i32 %7, i32 %8, %struct.AffElement** %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area1 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %12, i32 0, i32 0
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %area1, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @design_op_actions_update() #0 {
entry:
  %act = alloca %struct._GtkAction*, align 8
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 1
  %1 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0))
  store %struct._GtkAction* %call, %struct._GtkAction** %act, align 8
  %2 = load %struct._GtkAction*, %struct._GtkAction** %act, align 8
  %3 = load i32, i32* @undo_cur, align 4
  %cmp = icmp sge i32 %3, 0
  %conv = zext i1 %cmp to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %2, i32 %conv)
  %4 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager1 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %4, i32 0, i32 1
  %5 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager1, align 8
  %call2 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0))
  store %struct._GtkAction* %call2, %struct._GtkAction** %act, align 8
  %6 = load %struct._GtkAction*, %struct._GtkAction** %act, align 8
  %7 = load i32, i32* @undo_cur, align 4
  %8 = load i32, i32* @undo_num, align 4
  %sub = sub nsw i32 %8, 1
  %cmp3 = icmp ne i32 %7, %sub
  %conv4 = zext i1 %cmp3 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %6, i32 %conv4)
  %9 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager5 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %9, i32 0, i32 1
  %10 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager5, align 8
  %call6 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0))
  store %struct._GtkAction* %call6, %struct._GtkAction** %act, align 8
  %11 = load %struct._GtkAction*, %struct._GtkAction** %act, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp7 = icmp sgt i32 %12, 2
  %conv8 = zext i1 %cmp7 to i32
  call void @gtk_action_set_sensitive(%struct._GtkAction* %11, i32 %conv8)
  ret void
}

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

; Function Attrs: nounwind uwtable
define internal void @ifsfile_load_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %new_elements = alloca %struct.AffElement**, align 8
  %new_ifsvals = alloca %struct.IfsComposeVals, align 8
  %error = alloca %struct._GError*, align 8
  %i = alloca i32, align 4
  %message11 = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load i8*, i8** %filename, align 8
  %call3 = call i32 @g_file_get_contents(i8* %4, i8** %buffer, i64* null, %struct._GError** %error)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #5
  %8 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %8, i32 0, i32 2
  %9 = load i8*, i8** %message, align 8
  call void @ifscompose_message_dialog(i32 3, %struct._GtkWindow* %7, i8* %call7, i8* %9)
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %10)
  %11 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %11)
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load i8*, i8** %buffer, align 8
  %call8 = call i32 @ifsvals_parse_string(i8* %12, %struct.IfsComposeVals* %new_ifsvals, %struct.AffElement*** %new_elements)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.18, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.33, i32 0, i32 0)) #5
  %13 = load i8*, i8** %filename, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %13)
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call12, i8* %call13)
  store i8* %call14, i8** %message11, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call15)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #5
  %17 = load i8*, i8** %message11, align 8
  call void @ifscompose_message_dialog(i32 3, %struct._GtkWindow* %16, i8* %call17, i8* %17)
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %message11, align 8
  call void @g_free(i8* %19)
  %20 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %20)
  br label %return

if.end.18:                                        ; preds = %if.end
  %21 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %22)
  call void @undo_begin()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp19 = icmp ult i32 %23, %24
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  call void @undo_update(i32 %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.AffElement**, %struct.AffElement*** %new_elements, align 8
  call void @ifsfile_replace_ifsvals(%struct.IfsComposeVals* %new_ifsvals, %struct.AffElement** %27)
  call void @design_op_actions_update()
  call void @ifs_compose_preview()
  call void @design_area_redraw()
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %entry
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %30)
  br label %return

return:                                           ; preds = %if.end.20, %if.then.10, %if.then.4
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare i32 @g_file_get_contents(i8*, i8**, i64*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @ifscompose_message_dialog(i32 %type, %struct._GtkWindow* %parent, i8* %title, i8* %message) #0 {
entry:
  %type.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GtkWindow*, align 8
  %title.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct._GtkWindow* %parent, %struct._GtkWindow** %parent.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %parent.addr, align 8
  %1 = load i32, i32* %type.addr, align 4
  %2 = load i8*, i8** %message.addr, align 8
  %call = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* %0, i32 0, i32 %1, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %dialog, align 8
  %3 = load i8*, i8** %title.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %7 = load i8*, i8** %title.addr, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  %call7 = call i32 @gtk_dialog_run(%struct._GtkDialog* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %14)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ifsfile_replace_ifsvals(%struct.IfsComposeVals* %new_ifsvals, %struct.AffElement** %new_elements) #0 {
entry:
  %new_ifsvals.addr = alloca %struct.IfsComposeVals*, align 8
  %new_elements.addr = alloca %struct.AffElement**, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  store %struct.IfsComposeVals* %new_ifsvals, %struct.IfsComposeVals** %new_ifsvals.addr, align 8
  store %struct.AffElement** %new_elements, %struct.AffElement*** %new_elements.addr, align 8
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %5, i64 %idxprom
  %6 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  call void @aff_element_free(%struct.AffElement* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %9 = bitcast %struct.AffElement** %8 to i8*
  call void @g_free(i8* %9)
  %10 = load %struct.IfsComposeVals*, %struct.IfsComposeVals** %new_ifsvals.addr, align 8
  %11 = bitcast %struct.IfsComposeVals* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.IfsComposeVals* @ifsvals to i8*), i8* %11, i64 48, i32 8, i1 false)
  %12 = load %struct.AffElement**, %struct.AffElement*** %new_elements.addr, align 8
  store %struct.AffElement** %12, %struct.AffElement*** @elements, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.9, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp2 = icmp ult i32 %13, %14
  br i1 %cmp2, label %for.body.3, label %for.end.11

for.body.3:                                       ; preds = %for.cond.1
  %15 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %15 to i64
  %16 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx5 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %16, i64 %idxprom4
  %17 = load %struct.AffElement*, %struct.AffElement** %arrayidx5, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %conv = sitofp i32 %18 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %19 = load i32, i32* %height, align 4
  %conv6 = sitofp i32 %19 to double
  %20 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %21 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %17, double %conv, double %conv6, double %20, double %21)
  %22 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %22 to i64
  %23 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx8 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %23, i64 %idxprom7
  %24 = load %struct.AffElement*, %struct.AffElement** %arrayidx8, align 8
  call void @aff_element_compute_color_trans(%struct.AffElement* %24)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.3
  %25 = load i32, i32* %i, align 4
  %inc10 = add i32 %25, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.1

for.end.11:                                       ; preds = %for.cond.1
  %26 = load i32*, i32** @element_selected, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv12 = sext i32 %28 to i64
  %mul = mul i64 %conv12, 4
  %call = call i8* @g_realloc(i8* %27, i64 %mul)
  %29 = bitcast i8* %call to i32*
  store i32* %29, i32** @element_selected, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %for.end.11
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp14 = icmp ult i32 %30, %31
  br i1 %cmp14, label %for.body.16, label %for.end.21

for.body.16:                                      ; preds = %for.cond.13
  %32 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %32 to i64
  %33 = load i32*, i32** @element_selected, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %33, i64 %idxprom17
  store i32 0, i32* %arrayidx18, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %34 = load i32, i32* %i, align 4
  %inc20 = add i32 %34, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  %35 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %tobool = icmp ne %struct.IfsOptionsDialog* %35, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.21
  %36 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %iterations_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %36, i32 0, i32 1
  %37 = load %struct.ValuePair*, %struct.ValuePair** %iterations_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %37)
  %38 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %subdivide_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %38, i32 0, i32 2
  %39 = load %struct.ValuePair*, %struct.ValuePair** %subdivide_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %39)
  %40 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %40, i32 0, i32 3
  %41 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %41)
  %42 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %memory_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %42, i32 0, i32 4
  %43 = load %struct.ValuePair*, %struct.ValuePair** %memory_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %43)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.21
  call void @set_current_element(i32 0)
  %44 = load i32*, i32** @element_selected, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 1, i32* %arrayidx22, align 4
  call void @recompute_center(i32 0)
  %45 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %45, i32 0, i32 25
  %46 = load %struct.AffElement*, %struct.AffElement** %selected_orig, align 8
  %tobool23 = icmp ne %struct.AffElement* %46, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end
  %47 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig25 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %47, i32 0, i32 25
  %48 = load %struct.AffElement*, %struct.AffElement** %selected_orig25, align 8
  %49 = bitcast %struct.AffElement* %48 to i8*
  call void @g_free(i8* %49)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end
  %50 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv27 = sext i32 %50 to i64
  %call28 = call noalias i8* @g_malloc_n(i64 %conv27, i64 416)
  %51 = bitcast i8* %call28 to %struct.AffElement*
  %52 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig29 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %52, i32 0, i32 25
  store %struct.AffElement* %51, %struct.AffElement** %selected_orig29, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare i32 @gtk_dialog_run(%struct._GtkDialog*) #1

declare void @aff_element_free(%struct.AffElement*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @g_realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @value_pair_update(%struct.ValuePair* %value_pair) #0 {
entry:
  %value_pair.addr = alloca %struct.ValuePair*, align 8
  store %struct.ValuePair* %value_pair, %struct.ValuePair** %value_pair.addr, align 8
  %0 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %type = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %0, i32 0, i32 3
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %adjustment = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %2, i32 0, i32 0
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %4 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %data = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %4, i32 0, i32 5
  %i = bitcast %union.anon* %data to i32**
  %5 = load i32*, i32** %i, align 8
  %6 = load i32, i32* %5, align 4
  %conv = sitofp i32 %6 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %adjustment1 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %7, i32 0, i32 0
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment1, align 8
  %9 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %data2 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %9, i32 0, i32 5
  %d = bitcast %union.anon* %data2 to double**
  %10 = load double*, double** %d, align 8
  %11 = load double, double* %10, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %8, double %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recompute_center(i32 %save_undo) #0 {
entry:
  %save_undo.addr = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  store i32 %save_undo, i32* %save_undo.addr, align 4
  store double 0.000000e+00, double* %center_x, align 8
  store double 0.000000e+00, double* %center_y, align 8
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %2 = load i32, i32* %save_undo.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @undo_begin()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %save_undo.addr, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  call void @undo_update(i32 %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %8, i64 %idxprom
  %9 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %10 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %11 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %12 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %9, double 1.000000e+00, double %10, double %11, double %12)
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx5 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %14, i64 %idxprom4
  %15 = load %struct.AffElement*, %struct.AffElement** %arrayidx5, align 8
  %trans = getelementptr inbounds %struct.AffElement, %struct.AffElement* %15, i32 0, i32 1
  call void @aff2_fixed_point(%struct.Aff2* %trans, double* %x, double* %y)
  %16 = load double, double* %x, align 8
  %17 = load double, double* %center_x, align 8
  %add = fadd double %17, %16
  store double %add, double* %center_x, align 8
  %18 = load double, double* %y, align 8
  %19 = load double, double* %center_y, align 8
  %add6 = fadd double %19, %18
  store double %add6, double* %center_y, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load double, double* %center_x, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %22 to double
  %div = fdiv double %21, %conv
  store double %div, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %23 = load double, double* %center_y, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv7 = sitofp i32 %24 to double
  %div8 = fdiv double %23, %conv7
  store double %div8, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.18, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp10 = icmp slt i32 %25, %26
  br i1 %cmp10, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.9
  %27 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %27 to i64
  %28 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx14 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %28, i64 %idxprom13
  %29 = load %struct.AffElement*, %struct.AffElement** %arrayidx14, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %30 to i64
  %31 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx16 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %31, i64 %idxprom15
  %32 = load %struct.AffElement*, %struct.AffElement** %arrayidx16, align 8
  %trans17 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %32, i32 0, i32 1
  %33 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 5), align 8
  %34 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %35 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_decompose_trans(%struct.AffElement* %29, %struct.Aff2* %trans17, double 1.000000e+00, double %33, double %34, double %35)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %36 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %36, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.9

for.end.20:                                       ; preds = %for.cond.9
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %37 = load i32, i32* %width, align 4
  %cmp21 = icmp sgt i32 %37, 1
  br i1 %cmp21, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %for.end.20
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %38 = load i32, i32* %height, align 4
  %cmp23 = icmp sgt i32 %38, 1
  br i1 %cmp23, label %if.then.25, label %if.end.39

if.then.25:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %if.then.25
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp27 = icmp slt i32 %39, %40
  br i1 %cmp27, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %41 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx31 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %42, i64 %idxprom30
  %43 = load %struct.AffElement*, %struct.AffElement** %arrayidx31, align 8
  %width32 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %44 = load i32, i32* %width32, align 4
  %conv33 = sitofp i32 %44 to double
  %height34 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %45 = load i32, i32* %height34, align 4
  %conv35 = sitofp i32 %45 to double
  %46 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %47 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %43, double %conv33, double %conv35, double %46, double %47)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %48 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %48, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  call void @design_area_redraw()
  call void @update_values()
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %land.lhs.true, %for.end.20
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare void @aff2_fixed_point(%struct.Aff2*, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @update_values() #0 {
entry:
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %in_update = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 28
  store i32 1, i32* %in_update, align 4
  %1 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %1, i32 0, i32 27
  %2 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %2, i32 0, i32 26
  %3 = load i32, i32* %current_element, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %4, i64 %idxprom
  %5 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %5, i32 0, i32 0
  %6 = bitcast %struct.AffElementVals* %current_vals to i8*
  %7 = bitcast %struct.AffElementVals* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 248, i32 8, i1 false)
  %8 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals1 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %8, i32 0, i32 27
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals1, i32 0, i32 2
  %9 = load double, double* %theta, align 8
  %mul = fmul double %9, 0x404CA5DC1A63C1F8
  store double %mul, double* %theta, align 8
  %10 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %prob_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %10, i32 0, i32 0
  %11 = load %struct.ValuePair*, %struct.ValuePair** %prob_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %11)
  %12 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %x_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %12, i32 0, i32 1
  %13 = load %struct.ValuePair*, %struct.ValuePair** %x_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %13)
  %14 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %y_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %14, i32 0, i32 2
  %15 = load %struct.ValuePair*, %struct.ValuePair** %y_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %15)
  %16 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %16, i32 0, i32 3
  %17 = load %struct.ValuePair*, %struct.ValuePair** %scale_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %17)
  %18 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %angle_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %18, i32 0, i32 4
  %19 = load %struct.ValuePair*, %struct.ValuePair** %angle_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %19)
  %20 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %asym_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %20, i32 0, i32 5
  %21 = load %struct.ValuePair*, %struct.ValuePair** %asym_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %21)
  %22 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %shear_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %22, i32 0, i32 6
  %23 = load %struct.ValuePair*, %struct.ValuePair** %shear_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %23)
  %24 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %red_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %24, i32 0, i32 8
  %25 = load %struct.ColorMap*, %struct.ColorMap** %red_cmap, align 8
  call void @color_map_update(%struct.ColorMap* %25)
  %26 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %green_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %26, i32 0, i32 9
  %27 = load %struct.ColorMap*, %struct.ColorMap** %green_cmap, align 8
  call void @color_map_update(%struct.ColorMap* %27)
  %28 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %blue_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %28, i32 0, i32 10
  %29 = load %struct.ColorMap*, %struct.ColorMap** %blue_cmap, align 8
  call void @color_map_update(%struct.ColorMap* %29)
  %30 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %black_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %30, i32 0, i32 11
  %31 = load %struct.ColorMap*, %struct.ColorMap** %black_cmap, align 8
  call void @color_map_update(%struct.ColorMap* %31)
  %32 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %target_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %32, i32 0, i32 12
  %33 = load %struct.ColorMap*, %struct.ColorMap** %target_cmap, align 8
  call void @color_map_update(%struct.ColorMap* %33)
  %34 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %34, i32 0, i32 13
  %35 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %35)
  %36 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %36, i32 0, i32 14
  %37 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair, align 8
  call void @value_pair_update(%struct.ValuePair* %37)
  %38 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element2 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %38, i32 0, i32 26
  %39 = load i32, i32* %current_element2, align 4
  %idxprom3 = sext i32 %39 to i64
  %40 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx4 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %40, i64 %idxprom3
  %41 = load %struct.AffElement*, %struct.AffElement** %arrayidx4, align 8
  %v5 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %41, i32 0, i32 0
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v5, i32 0, i32 14
  %42 = load i32, i32* %simple_color, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %43 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %simple_button = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %43, i32 0, i32 15
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %simple_button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call)
  %46 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %46, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %47 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %full_button = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %47, i32 0, i32 16
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %full_button, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_toggle_button_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call7)
  %50 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %50, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %51 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %flip_check_button = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %51, i32 0, i32 7
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %flip_check_button, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_toggle_button_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call9)
  %54 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkToggleButton*
  %55 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element11 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %55, i32 0, i32 26
  %56 = load i32, i32* %current_element11, align 4
  %idxprom12 = sext i32 %56 to i64
  %57 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx13 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %57, i64 %idxprom12
  %58 = load %struct.AffElement*, %struct.AffElement** %arrayidx13, align 8
  %v14 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %58, i32 0, i32 0
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v14, i32 0, i32 6
  %59 = load i32, i32* %flip, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %54, i32 %59)
  %60 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %in_update15 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %60, i32 0, i32 28
  store i32 0, i32* %in_update15, align 4
  call void @simple_color_set_sensitive()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_map_update(%struct.ColorMap* %color_map) #0 {
entry:
  %color_map.addr = alloca %struct.ColorMap*, align 8
  store %struct.ColorMap* %color_map, %struct.ColorMap** %color_map.addr, align 8
  %0 = load %struct.ColorMap*, %struct.ColorMap** %color_map.addr, align 8
  %button = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorButton*
  %4 = load %struct.ColorMap*, %struct.ColorMap** %color_map.addr, align 8
  %color = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %4, i32 0, i32 0
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %3, %struct._GimpRGB* %5)
  %6 = load %struct.ColorMap*, %struct.ColorMap** %color_map.addr, align 8
  %fixed_point = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %6, i32 0, i32 4
  %7 = load i32, i32* %fixed_point, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.ColorMap*, %struct.ColorMap** %color_map.addr, align 8
  %orig_preview = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %orig_preview, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_color_area_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpColorArea*
  %12 = load %struct.ColorMap*, %struct.ColorMap** %color_map.addr, align 8
  %color4 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %12, i32 0, i32 0
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color4, align 8
  call void @gimp_color_area_set_color(%struct._GimpColorArea* %11, %struct._GimpRGB* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @simple_color_set_sensitive() #0 {
entry:
  %sc = alloca i32, align 4
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 26
  %1 = load i32, i32* %current_element, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %2, i64 %idxprom
  %3 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %3, i32 0, i32 0
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 14
  %4 = load i32, i32* %simple_color, align 4
  store i32 %4, i32* %sc, align 4
  %5 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %target_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %5, i32 0, i32 12
  %6 = load %struct.ColorMap*, %struct.ColorMap** %target_cmap, align 8
  %hbox = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %6, i32 0, i32 1
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %8 = load i32, i32* %sc, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 %8)
  %9 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %9, i32 0, i32 13
  %10 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair, align 8
  %scale = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  %12 = load i32, i32* %sc, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %11, i32 %12)
  %13 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %hue_scale_pair1 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %13, i32 0, i32 13
  %14 = load %struct.ValuePair*, %struct.ValuePair** %hue_scale_pair1, align 8
  %spin = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  %16 = load i32, i32* %sc, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %15, i32 %16)
  %17 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %17, i32 0, i32 14
  %18 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair, align 8
  %scale2 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %18, i32 0, i32 1
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %scale2, align 8
  %20 = load i32, i32* %sc, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %19, i32 %20)
  %21 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %value_scale_pair3 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %21, i32 0, i32 14
  %22 = load %struct.ValuePair*, %struct.ValuePair** %value_scale_pair3, align 8
  %spin4 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %22, i32 0, i32 2
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %spin4, align 8
  %24 = load i32, i32* %sc, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %23, i32 %24)
  %25 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %red_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %25, i32 0, i32 8
  %26 = load %struct.ColorMap*, %struct.ColorMap** %red_cmap, align 8
  %hbox5 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %26, i32 0, i32 1
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox5, align 8
  %28 = load i32, i32* %sc, align 4
  %tobool = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %27, i32 %lnot.ext)
  %29 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %green_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %29, i32 0, i32 9
  %30 = load %struct.ColorMap*, %struct.ColorMap** %green_cmap, align 8
  %hbox6 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %30, i32 0, i32 1
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox6, align 8
  %32 = load i32, i32* %sc, align 4
  %tobool7 = icmp ne i32 %32, 0
  %lnot8 = xor i1 %tobool7, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %31, i32 %lnot.ext9)
  %33 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %blue_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %33, i32 0, i32 10
  %34 = load %struct.ColorMap*, %struct.ColorMap** %blue_cmap, align 8
  %hbox10 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %34, i32 0, i32 1
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox10, align 8
  %36 = load i32, i32* %sc, align 4
  %tobool11 = icmp ne i32 %36, 0
  %lnot12 = xor i1 %tobool11, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %35, i32 %lnot.ext13)
  %37 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %black_cmap = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %37, i32 0, i32 11
  %38 = load %struct.ColorMap*, %struct.ColorMap** %black_cmap, align 8
  %hbox14 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %38, i32 0, i32 1
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox14, align 8
  %40 = load i32, i32* %sc, align 4
  %tobool15 = icmp ne i32 %40, 0
  %lnot16 = xor i1 %tobool15, true
  %lnot.ext17 = zext i1 %lnot16 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %39, i32 %lnot.ext17)
  ret void
}

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare void @gimp_color_area_set_color(%struct._GimpColorArea*, %struct._GimpRGB*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_area_get_type() #3

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ifsfile_save_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %str = alloca i8*, align 8
  %fh = alloca %struct._IO_FILE*, align 8
  %message = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %call3 = call i8* @ifsvals_stringify(%struct.IfsComposeVals* @ifsvals, %struct.AffElement** %4)
  store i8* %call3, i8** %str, align 8
  %5 = load i8*, i8** %filename, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fh, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %tobool = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0)) #5
  %7 = load i8*, i8** %filename, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call8 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %8) #6
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call6, i8* %call7, i8* %call9)
  store i8* %call10, i8** %message, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)) #5
  %12 = load i8*, i8** %message, align 8
  call void @ifscompose_message_dialog(i32 3, %struct._GtkWindow* %11, i8* %call13, i8* %12)
  %13 = load i8*, i8** %message, align 8
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %14)
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load i8*, i8** %str, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call14 = call i32 @fputs(i8* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %18)
  br label %return

return:                                           ; preds = %if.end.16, %if.then.5
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @aff_element_compute_boundary(%struct.AffElement*, i32, i32, %struct.AffElement**, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager*, i8*) #1

declare void @gtk_action_set_sensitive(%struct._GtkAction*, i32) #1

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

; Function Attrs: nounwind uwtable
define internal void @design_area_realize(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 3
  %3 = load i32, i32* %op, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @design_area_realize.cursors, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %1, i32 %4)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %5)
  %6 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call2, %struct._GdkCursor* %6)
  %7 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @design_area_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %layout = alloca %struct._PangoLayout*, align 8
  %i = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %1)
  store i32 %call1, i32* %state, align 4
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %2, %struct._GdkRectangle* %allocation)
  %3 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %pixmap = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %3, i32 0, i32 2
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %call2 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %4)
  store %struct._cairo* %call2, %struct._cairo** %cr, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load i32, i32* %state, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %bg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %bg, i32 0, i64 %idxprom
  call void @gdk_cairo_set_source_color(%struct._cairo* %5, %struct._GdkColor* %arrayidx)
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_join(%struct._cairo* %9, i32 1)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_cap(%struct._cairo* %10, i32 1)
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %11, double 5.000000e-01, double 5.000000e-01)
  %12 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %13 = load i32, i32* %width, align 4
  %conv = sitofp i32 %13 to double
  %mul = fmul double %12, %conv
  %conv3 = fptosi double %mul to i32
  store i32 %conv3, i32* %cx, align 4
  %14 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %15 = load i32, i32* %width4, align 4
  %conv5 = sitofp i32 %15 to double
  %mul6 = fmul double %14, %conv5
  %conv7 = fptosi double %mul6 to i32
  store i32 %conv7, i32* %cy, align 4
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %17 = load i32, i32* %cx, align 4
  %sub = sub nsw i32 %17, 10
  %conv8 = sitofp i32 %sub to double
  %18 = load i32, i32* %cy, align 4
  %conv9 = sitofp i32 %18 to double
  call void @cairo_move_to(%struct._cairo* %16, double %conv8, double %conv9)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %20 = load i32, i32* %cx, align 4
  %add = add nsw i32 %20, 10
  %conv10 = sitofp i32 %add to double
  %21 = load i32, i32* %cy, align 4
  %conv11 = sitofp i32 %21 to double
  call void @cairo_line_to(%struct._cairo* %19, double %conv10, double %conv11)
  %22 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %23 = load i32, i32* %cx, align 4
  %conv12 = sitofp i32 %23 to double
  %24 = load i32, i32* %cy, align 4
  %sub13 = sub nsw i32 %24, 10
  %conv14 = sitofp i32 %sub13 to double
  call void @cairo_move_to(%struct._cairo* %22, double %conv12, double %conv14)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %26 = load i32, i32* %cx, align 4
  %conv15 = sitofp i32 %26 to double
  %27 = load i32, i32* %cy, align 4
  %add16 = add nsw i32 %27, 10
  %conv17 = sitofp i32 %add16 to double
  call void @cairo_line_to(%struct._cairo* %25, double %conv15, double %conv17)
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load i32, i32* %state, align 4
  %idxprom18 = zext i32 %29 to i64
  %30 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %30, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom18
  call void @gdk_cairo_set_source_color(%struct._cairo* %28, %struct._GdkColor* %arrayidx19)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %31, double 1.000000e+00)
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call20 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %33, i8* null)
  store %struct._PangoLayout* %call20, %struct._PangoLayout** %layout, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %34, %35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx23 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %37, i64 %idxprom22
  %38 = load %struct.AffElement*, %struct.AffElement** %arrayidx23, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %39 to i64
  %40 = load i32*, i32** @element_selected, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %40, i64 %idxprom24
  %41 = load i32, i32* %arrayidx25, align 4
  %width26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %42 = load i32, i32* %width26, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %43 = load i32, i32* %height, align 4
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %45 = load i32, i32* %state, align 4
  %idxprom27 = zext i32 %45 to i64
  %46 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg28 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %46, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg28, i32 0, i64 %idxprom27
  %47 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @aff_element_draw(%struct.AffElement* %38, i32 %41, i32 %42, i32 %43, %struct._cairo* %44, %struct._GdkColor* %arrayidx29, %struct._PangoLayout* %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %50 = bitcast %struct._PangoLayout* %49 to i8*
  call void @g_object_unref(i8* %50)
  %51 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call30 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %52)
  %call31 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call30)
  store %struct._cairo* %call31, %struct._cairo** %cr, align 8
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %54 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %54, i32 0, i32 4
  %55 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %53, %struct._GdkRegion* %55)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %56)
  %57 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %58 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %pixmap32 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %58, i32 0, i32 2
  %59 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap32, align 8
  call void @gdk_cairo_set_source_pixmap(%struct._cairo* %57, %struct._GdkDrawable* %59, double 0.000000e+00, double 0.000000e+00)
  %60 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %60)
  %61 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %61)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @design_area_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  %old_current = alloca i32, align 4
  %menu = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %2)
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %4 = bitcast %struct._GdkEventButton* %3 to %union._GdkEvent*
  %call = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %5 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %ui_manager = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %5, i32 0, i32 1
  %6 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call1 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %menu, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gtk_menu_item_get_type() #6
  store i64 %call2, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool3 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.4
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.10
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_menu_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkMenuItem*
  %call15 = call %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem* %22)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %menu, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.10
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_menu_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkMenu*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call19 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %26)
  call void @gtk_menu_set_screen(%struct._GtkMenu* %25, %struct._GdkScreen* %call19)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_menu_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkMenu*
  %30 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %30, i32 0, i32 8
  %31 = load i32, i32* %button, align 4
  %32 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %time = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %32, i32 0, i32 3
  %33 = load i32, i32* %time, align 4
  call void @gtk_menu_popup(%struct._GtkMenu* %29, %struct._GtkWidget* null, %struct._GtkWidget* null, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)* null, i8* null, i32 %31, i32 %33)
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %entry
  %34 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %34, i32 0, i32 26
  %35 = load i32, i32* %current_element, align 4
  store i32 %35, i32* %old_current, align 4
  %36 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element23 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %36, i32 0, i32 26
  store i32 -1, i32* %current_element23, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp24 = icmp slt i32 %37, %38
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %40, i64 %idxprom
  %41 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %click_boundary = getelementptr inbounds %struct.AffElement, %struct.AffElement* %41, i32 0, i32 4
  %42 = load %struct.IPolygon*, %struct.IPolygon** %click_boundary, align 8
  %43 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %43, i32 0, i32 4
  %44 = load double, double* %x, align 8
  %conv = fptosi double %44 to i32
  %45 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %45, i32 0, i32 5
  %46 = load double, double* %y, align 8
  %conv25 = fptosi double %46 to i32
  %call26 = call i32 @ipolygon_contains(%struct.IPolygon* %42, i32 %conv, i32 %conv25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  %47 = load i32, i32* %i, align 4
  call void @set_current_element(i32 %47)
  br label %for.end

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %49 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element30 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %49, i32 0, i32 26
  %50 = load i32, i32* %current_element30, align 4
  %cmp31 = icmp sge i32 %50, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.end
  call void @undo_begin()
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %for.end
  %51 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %51, i32 0, i32 7
  %52 = load i32, i32* %state, align 4
  %and = and i32 %52, 1
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %if.end.54, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %if.end.34
  %53 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element37 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %53, i32 0, i32 26
  %54 = load i32, i32* %current_element37, align 4
  %cmp38 = icmp slt i32 %54, 0
  br i1 %cmp38, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.36
  %55 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element40 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %55, i32 0, i32 26
  %56 = load i32, i32* %current_element40, align 4
  %idxprom41 = sext i32 %56 to i64
  %57 = load i32*, i32** @element_selected, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %57, i64 %idxprom41
  %58 = load i32, i32* %arrayidx42, align 4
  %tobool43 = icmp ne i32 %58, 0
  br i1 %tobool43, label %if.end.54, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false, %land.lhs.true.36
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.51, %if.then.44
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp46 = icmp slt i32 %59, %60
  br i1 %cmp46, label %for.body.48, label %for.end.53

for.body.48:                                      ; preds = %for.cond.45
  %61 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %61 to i64
  %62 = load i32*, i32** @element_selected, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %62, i64 %idxprom49
  store i32 0, i32* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.48
  %63 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %63, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.45

for.end.53:                                       ; preds = %for.cond.45
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %lor.lhs.false, %if.end.34
  %64 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element55 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %64, i32 0, i32 26
  %65 = load i32, i32* %current_element55, align 4
  %cmp56 = icmp sge i32 %65, 0
  br i1 %cmp56, label %if.then.58, label %if.else.104

if.then.58:                                       ; preds = %if.end.54
  %66 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %button_state = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %66, i32 0, i32 10
  %67 = load i32, i32* %button_state, align 4
  %or = or i32 %67, 256
  store i32 %or, i32* %button_state, align 4
  %68 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element59 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %68, i32 0, i32 26
  %69 = load i32, i32* %current_element59, align 4
  %idxprom60 = sext i32 %69 to i64
  %70 = load i32*, i32** @element_selected, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %70, i64 %idxprom60
  store i32 1, i32* %arrayidx61, align 4
  %71 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %num_selected = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %71, i32 0, i32 11
  store i32 0, i32* %num_selected, align 4
  %72 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %72, i32 0, i32 6
  store double 0.000000e+00, double* %op_xcenter, align 8
  %73 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %73, i32 0, i32 7
  store double 0.000000e+00, double* %op_ycenter, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.87, %if.then.58
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp63 = icmp slt i32 %74, %75
  br i1 %cmp63, label %for.body.65, label %for.end.89

for.body.65:                                      ; preds = %for.cond.62
  %76 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %76 to i64
  %77 = load i32*, i32** @element_selected, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %77, i64 %idxprom66
  %78 = load i32, i32* %arrayidx67, align 4
  %tobool68 = icmp ne i32 %78, 0
  br i1 %tobool68, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %for.body.65
  %79 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %79 to i64
  %80 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %80, i32 0, i32 25
  %81 = load %struct.AffElement*, %struct.AffElement** %selected_orig, align 8
  %arrayidx71 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %81, i64 %idxprom70
  %82 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %82 to i64
  %83 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx73 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %83, i64 %idxprom72
  %84 = load %struct.AffElement*, %struct.AffElement** %arrayidx73, align 8
  %85 = bitcast %struct.AffElement* %arrayidx71 to i8*
  %86 = bitcast %struct.AffElement* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 416, i32 8, i1 false)
  %87 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %87 to i64
  %88 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx75 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %88, i64 %idxprom74
  %89 = load %struct.AffElement*, %struct.AffElement** %arrayidx75, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %89, i32 0, i32 0
  %x76 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 0
  %90 = load double, double* %x76, align 8
  %91 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter77 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %91, i32 0, i32 6
  %92 = load double, double* %op_xcenter77, align 8
  %add = fadd double %92, %90
  store double %add, double* %op_xcenter77, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %93 to i64
  %94 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx79 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %94, i64 %idxprom78
  %95 = load %struct.AffElement*, %struct.AffElement** %arrayidx79, align 8
  %v80 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %95, i32 0, i32 0
  %y81 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v80, i32 0, i32 1
  %96 = load double, double* %y81, align 8
  %97 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter82 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %97, i32 0, i32 7
  %98 = load double, double* %op_ycenter82, align 8
  %add83 = fadd double %98, %96
  store double %add83, double* %op_ycenter82, align 8
  %99 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %num_selected84 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %99, i32 0, i32 11
  %100 = load i32, i32* %num_selected84, align 4
  %inc85 = add nsw i32 %100, 1
  store i32 %inc85, i32* %num_selected84, align 4
  %101 = load i32, i32* %i, align 4
  call void @undo_update(i32 %101)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.69, %for.body.65
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %102 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %102, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.62

for.end.89:                                       ; preds = %for.cond.62
  %103 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %num_selected90 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %103, i32 0, i32 11
  %104 = load i32, i32* %num_selected90, align 4
  %conv91 = sitofp i32 %104 to double
  %105 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter92 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %105, i32 0, i32 6
  %106 = load double, double* %op_xcenter92, align 8
  %div = fdiv double %106, %conv91
  store double %div, double* %op_xcenter92, align 8
  %107 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %num_selected93 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %107, i32 0, i32 11
  %108 = load i32, i32* %num_selected93, align 4
  %conv94 = sitofp i32 %108 to double
  %109 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter95 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %109, i32 0, i32 7
  %110 = load double, double* %op_ycenter95, align 8
  %div96 = fdiv double %110, %conv94
  store double %div96, double* %op_ycenter95, align 8
  %111 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x97 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %111, i32 0, i32 4
  %112 = load double, double* %x97, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %113 = load i32, i32* %width, align 4
  %conv98 = sitofp i32 %113 to double
  %div99 = fdiv double %112, %conv98
  %114 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_x = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %114, i32 0, i32 4
  store double %div99, double* %op_x, align 8
  %115 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y100 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %115, i32 0, i32 5
  %116 = load double, double* %y100, align 8
  %width101 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %117 = load i32, i32* %width101, align 4
  %conv102 = sitofp i32 %117 to double
  %div103 = fdiv double %116, %conv102
  %118 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_y = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %118, i32 0, i32 5
  store double %div103, double* %op_y, align 8
  %119 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %120 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_center_x = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %120, i32 0, i32 8
  store double %119, double* %op_center_x, align 8
  %121 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  %122 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_center_y = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %122, i32 0, i32 9
  store double %121, double* %op_center_y, align 8
  br label %if.end.108

if.else.104:                                      ; preds = %if.end.54
  %123 = load i32, i32* %old_current, align 4
  %124 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element105 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %124, i32 0, i32 26
  store i32 %123, i32* %current_element105, align 4
  %125 = load i32, i32* %old_current, align 4
  %idxprom106 = sext i32 %125 to i64
  %126 = load i32*, i32** @element_selected, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %126, i64 %idxprom106
  store i32 1, i32* %arrayidx107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.104, %for.end.89
  call void @design_area_redraw()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.end.16
  %127 = load i32, i32* %retval
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define internal i32 @design_area_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %button_state = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 10
  %3 = load i32, i32* %button_state, align 4
  %and = and i32 %3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %button_state1 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %4, i32 0, i32 10
  %5 = load i32, i32* %button_state1, align 4
  %and2 = and i32 %5, -257
  store i32 %and2, i32* %button_state1, align 4
  call void @ifs_compose_preview()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @design_area_motion(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  %xo = alloca double, align 8
  %yo = alloca double, align 8
  %xn = alloca double, align 8
  %yn = alloca double, align 8
  %trans = alloca %struct.Aff2, align 8
  %t1 = alloca %struct.Aff2, align 8
  %t2 = alloca %struct.Aff2, align 8
  %t3 = alloca %struct.Aff2, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %button_state = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 10
  %1 = load i32, i32* %button_state, align 4
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_x = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %4, i32 0, i32 4
  %5 = load double, double* %op_x, align 8
  %6 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %6, i32 0, i32 6
  %7 = load double, double* %op_xcenter, align 8
  %sub = fsub double %5, %7
  store double %sub, double* %xo, align 8
  %8 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_y = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %8, i32 0, i32 5
  %9 = load double, double* %op_y, align 8
  %10 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %10, i32 0, i32 7
  %11 = load double, double* %op_ycenter, align 8
  %sub1 = fsub double %9, %11
  store double %sub1, double* %yo, align 8
  %12 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %12, i32 0, i32 4
  %13 = load double, double* %x, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %14 = load i32, i32* %width, align 4
  %conv = sitofp i32 %14 to double
  %div = fdiv double %13, %conv
  %15 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter2 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %15, i32 0, i32 6
  %16 = load double, double* %op_xcenter2, align 8
  %sub3 = fsub double %div, %16
  store double %sub3, double* %xn, align 8
  %17 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %17, i32 0, i32 5
  %18 = load double, double* %y, align 8
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %19 = load i32, i32* %width4, align 4
  %conv5 = sitofp i32 %19 to double
  %div6 = fdiv double %18, %conv5
  %20 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter7 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %20, i32 0, i32 7
  %21 = load double, double* %op_ycenter7, align 8
  %sub8 = fsub double %div6, %21
  store double %sub8, double* %yn, align 8
  %22 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %22, i32 0, i32 3
  %23 = load i32, i32* %op, align 4
  switch i32 %23, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.36
    i32 0, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %if.end
  %24 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter9 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %24, i32 0, i32 6
  %25 = load double, double* %op_xcenter9, align 8
  %sub10 = fsub double -0.000000e+00, %25
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %26 = load i32, i32* %width11, align 4
  %conv12 = sitofp i32 %26 to double
  %mul = fmul double %sub10, %conv12
  %27 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter13 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %27, i32 0, i32 7
  %28 = load double, double* %op_ycenter13, align 8
  %sub14 = fsub double -0.000000e+00, %28
  %width15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %29 = load i32, i32* %width15, align 4
  %conv16 = sitofp i32 %29 to double
  %mul17 = fmul double %sub14, %conv16
  call void @aff2_translate(%struct.Aff2* %t1, double %mul, double %mul17)
  %30 = load double, double* %xn, align 8
  %31 = load double, double* %xn, align 8
  %mul18 = fmul double %30, %31
  %32 = load double, double* %yn, align 8
  %33 = load double, double* %yn, align 8
  %mul19 = fmul double %32, %33
  %add = fadd double %mul18, %mul19
  %34 = load double, double* %xo, align 8
  %35 = load double, double* %xo, align 8
  %mul20 = fmul double %34, %35
  %36 = load double, double* %yo, align 8
  %37 = load double, double* %yo, align 8
  %mul21 = fmul double %36, %37
  %add22 = fadd double %mul20, %mul21
  %div23 = fdiv double %add, %add22
  %call = call double @sqrt(double %div23) #5
  call void @aff2_scale(%struct.Aff2* %t2, double %call, i32 0)
  call void @aff2_compose(%struct.Aff2* %t3, %struct.Aff2* %t2, %struct.Aff2* %t1)
  %38 = load double, double* %yn, align 8
  %39 = load double, double* %xn, align 8
  %call24 = call double @atan2(double %38, double %39) #5
  %sub25 = fsub double -0.000000e+00, %call24
  %40 = load double, double* %yo, align 8
  %41 = load double, double* %xo, align 8
  %call26 = call double @atan2(double %40, double %41) #5
  %add27 = fadd double %sub25, %call26
  call void @aff2_rotate(%struct.Aff2* %t1, double %add27)
  call void @aff2_compose(%struct.Aff2* %t2, %struct.Aff2* %t1, %struct.Aff2* %t3)
  %42 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter28 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %42, i32 0, i32 6
  %43 = load double, double* %op_xcenter28, align 8
  %width29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %44 = load i32, i32* %width29, align 4
  %conv30 = sitofp i32 %44 to double
  %mul31 = fmul double %43, %conv30
  %45 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter32 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %45, i32 0, i32 7
  %46 = load double, double* %op_ycenter32, align 8
  %width33 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %47 = load i32, i32* %width33, align 4
  %conv34 = sitofp i32 %47 to double
  %mul35 = fmul double %46, %conv34
  call void @aff2_translate(%struct.Aff2* %t3, double %mul31, double %mul35)
  call void @aff2_compose(%struct.Aff2* %trans, %struct.Aff2* %t3, %struct.Aff2* %t2)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end
  %48 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter37 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %48, i32 0, i32 6
  %49 = load double, double* %op_xcenter37, align 8
  %sub38 = fsub double -0.000000e+00, %49
  %width39 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %50 = load i32, i32* %width39, align 4
  %conv40 = sitofp i32 %50 to double
  %mul41 = fmul double %sub38, %conv40
  %51 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter42 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %51, i32 0, i32 7
  %52 = load double, double* %op_ycenter42, align 8
  %sub43 = fsub double -0.000000e+00, %52
  %width44 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %53 = load i32, i32* %width44, align 4
  %conv45 = sitofp i32 %53 to double
  %mul46 = fmul double %sub43, %conv45
  call void @aff2_translate(%struct.Aff2* %t1, double %mul41, double %mul46)
  %54 = load double, double* %xo, align 8
  %55 = load double, double* %yo, align 8
  %56 = load double, double* %xn, align 8
  %57 = load double, double* %yn, align 8
  call void @aff2_compute_stretch(%struct.Aff2* %t2, double %54, double %55, double %56, double %57)
  call void @aff2_compose(%struct.Aff2* %t3, %struct.Aff2* %t2, %struct.Aff2* %t1)
  %58 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_xcenter47 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %58, i32 0, i32 6
  %59 = load double, double* %op_xcenter47, align 8
  %width48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %60 = load i32, i32* %width48, align 4
  %conv49 = sitofp i32 %60 to double
  %mul50 = fmul double %59, %conv49
  %61 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_ycenter51 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %61, i32 0, i32 7
  %62 = load double, double* %op_ycenter51, align 8
  %width52 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %63 = load i32, i32* %width52, align 4
  %conv53 = sitofp i32 %63 to double
  %mul54 = fmul double %62, %conv53
  call void @aff2_translate(%struct.Aff2* %t1, double %mul50, double %mul54)
  call void @aff2_compose(%struct.Aff2* %trans, %struct.Aff2* %t1, %struct.Aff2* %t3)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end
  %64 = load double, double* %xn, align 8
  %65 = load double, double* %xo, align 8
  %sub56 = fsub double %64, %65
  %width57 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %66 = load i32, i32* %width57, align 4
  %conv58 = sitofp i32 %66 to double
  %mul59 = fmul double %sub56, %conv58
  %67 = load double, double* %yn, align 8
  %68 = load double, double* %yo, align 8
  %sub60 = fsub double %67, %68
  %width61 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %69 = load i32, i32* %width61, align 4
  %conv62 = sitofp i32 %69 to double
  %mul63 = fmul double %sub60, %conv62
  call void @aff2_translate(%struct.Aff2* %trans, double %mul59, double %mul63)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.55, %sw.bb.36, %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %70, %71
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i32, i32* %i, align 4
  %idxprom = sext i32 %72 to i64
  %73 = load i32*, i32** @element_selected, align 8
  %arrayidx = getelementptr inbounds i32, i32* %73, i64 %idxprom
  %74 = load i32, i32* %arrayidx, align 4
  %tobool65 = icmp ne i32 %74, 0
  br i1 %tobool65, label %if.then.66, label %if.end.110

if.then.66:                                       ; preds = %for.body
  %75 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %num_selected = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %75, i32 0, i32 11
  %76 = load i32, i32* %num_selected, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp67 = icmp eq i32 %76, %77
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.then.66
  call void @aff2_invert(%struct.Aff2* %t1, %struct.Aff2* %trans)
  %78 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %78 to i64
  %79 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %79, i32 0, i32 25
  %80 = load %struct.AffElement*, %struct.AffElement** %selected_orig, align 8
  %arrayidx71 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %80, i64 %idxprom70
  %trans72 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %arrayidx71, i32 0, i32 1
  call void @aff2_compose(%struct.Aff2* %t2, %struct.Aff2* %trans, %struct.Aff2* %trans72)
  %81 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %81 to i64
  %82 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx74 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %82, i64 %idxprom73
  %83 = load %struct.AffElement*, %struct.AffElement** %arrayidx74, align 8
  %trans75 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %83, i32 0, i32 1
  call void @aff2_compose(%struct.Aff2* %trans75, %struct.Aff2* %t2, %struct.Aff2* %t1)
  %84 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_center_x = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %84, i32 0, i32 8
  %85 = load double, double* %op_center_x, align 8
  %width76 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %86 = load i32, i32* %width76, align 4
  %conv77 = sitofp i32 %86 to double
  %mul78 = fmul double %85, %conv77
  store double %mul78, double* %cx, align 8
  %87 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op_center_y = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %87, i32 0, i32 9
  %88 = load double, double* %op_center_y, align 8
  %width79 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %89 = load i32, i32* %width79, align 4
  %conv80 = sitofp i32 %89 to double
  %mul81 = fmul double %88, %conv80
  store double %mul81, double* %cy, align 8
  %90 = load double, double* %cx, align 8
  %91 = load double, double* %cy, align 8
  call void @aff2_apply(%struct.Aff2* %trans, double %90, double %91, double* %cx, double* %cy)
  %92 = load double, double* %cx, align 8
  %width82 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %93 = load i32, i32* %width82, align 4
  %conv83 = sitofp i32 %93 to double
  %div84 = fdiv double %92, %conv83
  store double %div84, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %94 = load double, double* %cy, align 8
  %width85 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %95 = load i32, i32* %width85, align 4
  %conv86 = sitofp i32 %95 to double
  %div87 = fdiv double %94, %conv86
  store double %div87, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  br label %if.end.95

if.else:                                          ; preds = %if.then.66
  %96 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %96 to i64
  %97 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx89 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %97, i64 %idxprom88
  %98 = load %struct.AffElement*, %struct.AffElement** %arrayidx89, align 8
  %trans90 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %98, i32 0, i32 1
  %99 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %99 to i64
  %100 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig92 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %100, i32 0, i32 25
  %101 = load %struct.AffElement*, %struct.AffElement** %selected_orig92, align 8
  %arrayidx93 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %101, i64 %idxprom91
  %trans94 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %arrayidx93, i32 0, i32 1
  call void @aff2_compose(%struct.Aff2* %trans90, %struct.Aff2* %trans, %struct.Aff2* %trans94)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else, %if.then.69
  %102 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %102 to i64
  %103 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx97 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %103, i64 %idxprom96
  %104 = load %struct.AffElement*, %struct.AffElement** %arrayidx97, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %105 to i64
  %106 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx99 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %106, i64 %idxprom98
  %107 = load %struct.AffElement*, %struct.AffElement** %arrayidx99, align 8
  %trans100 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %107, i32 0, i32 1
  %width101 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %108 = load i32, i32* %width101, align 4
  %conv102 = sitofp i32 %108 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %109 = load i32, i32* %height, align 4
  %conv103 = sitofp i32 %109 to double
  %110 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %111 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_decompose_trans(%struct.AffElement* %104, %struct.Aff2* %trans100, double %conv102, double %conv103, double %110, double %111)
  %112 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %112 to i64
  %113 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx105 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %113, i64 %idxprom104
  %114 = load %struct.AffElement*, %struct.AffElement** %arrayidx105, align 8
  %width106 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %115 = load i32, i32* %width106, align 4
  %conv107 = sitofp i32 %115 to double
  %height108 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %116 = load i32, i32* %height108, align 4
  %conv109 = sitofp i32 %116 to double
  %117 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %118 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %114, double %conv107, double %conv109, double %117, double %118)
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.95, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.110
  %119 = load i32, i32* %i, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @update_values()
  call void @design_area_redraw()
  %120 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %120)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @design_area_configure(%struct._GtkWidget* %widget, %struct._GdkEventConfigure* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventConfigure*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventConfigure* %event, %struct._GdkEventConfigure** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %4, i64 %idxprom
  %5 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %6 = load i32, i32* %width, align 4
  %conv = sitofp i32 %6 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %7 = load i32, i32* %height, align 4
  %conv1 = sitofp i32 %7 to double
  %8 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %9 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %5, double %conv, double %conv1, double %8, double %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.10, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body.5, label %for.end.12

for.body.5:                                       ; preds = %for.cond.2
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx7 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %14, i64 %idxprom6
  %15 = load %struct.AffElement*, %struct.AffElement** %arrayidx7, align 8
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %16 = load i32, i32* %width8, align 4
  %height9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %17 = load i32, i32* %height9, align 4
  %18 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  call void @aff_element_compute_boundary(%struct.AffElement* %15, i32 %16, i32 %17, %struct.AffElement** %18, i32 %19)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.5
  %20 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.2

for.end.12:                                       ; preds = %for.cond.2
  %21 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %pixmap = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %21, i32 0, i32 2
  %22 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap, align 8
  %tobool = icmp ne %struct._GdkDrawable* %22, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.12
  %23 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %pixmap13 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %23, i32 0, i32 2
  %24 = load %struct._GdkDrawable*, %struct._GdkDrawable** %pixmap13, align 8
  %25 = bitcast %struct._GdkDrawable* %24 to i8*
  call void @g_object_unref(i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.12
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %26)
  %width14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %27 = load i32, i32* %width14, align 4
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %28 = load i32, i32* %height15, align 4
  %call16 = call %struct._GdkDrawable* @gdk_pixmap_new(%struct._GdkDrawable* %call, i32 %27, i32 %28, i32 -1)
  %29 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %pixmap17 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %29, i32 0, i32 2
  store %struct._GdkDrawable* %call16, %struct._GdkDrawable** %pixmap17, align 8
  ret i32 0
}

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkUIManager* @design_op_menu_create(%struct._GtkWidget* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWidget*, align 8
  %ui_manager = alloca %struct._GtkUIManager*, align 8
  %group = alloca %struct._GtkActionGroup*, align 8
  store %struct._GtkWidget* %window, %struct._GtkWidget** %window.addr, align 8
  %call = call %struct._GtkUIManager* @gtk_ui_manager_new()
  store %struct._GtkUIManager* %call, %struct._GtkUIManager** %ui_manager, align 8
  %call1 = call %struct._GtkActionGroup* @gtk_action_group_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0))
  store %struct._GtkActionGroup* %call1, %struct._GtkActionGroup** %group, align 8
  %0 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup* %0, i8* null)
  %1 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  call void @gtk_action_group_add_actions(%struct._GtkActionGroup* %1, %struct._GtkActionEntry* getelementptr inbounds ([8 x %struct._GtkActionEntry], [8 x %struct._GtkActionEntry]* @design_op_menu_create.actions, i32 0, i32 0), i32 8, i8* %3)
  %4 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %5 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %5, i32 0, i32 3
  %6 = load i32, i32* %op, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  call void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup* %4, %struct._GtkRadioActionEntry* getelementptr inbounds ([3 x %struct._GtkRadioActionEntry], [3 x %struct._GtkRadioActionEntry]* @design_op_menu_create.radio_actions, i32 0, i32 0), i32 3, i32 %6, void ()* bitcast (void (%struct._GtkRadioAction*, %struct._GtkRadioAction*, i8*)* @design_op_update_callback to void ()*), i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %window.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %12 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call4 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %12)
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %11, %struct._GtkAccelGroup* %call4)
  %13 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call5 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %13)
  call void @gtk_accel_group_lock(%struct._GtkAccelGroup* %call5)
  %14 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %15 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  call void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager* %14, %struct._GtkActionGroup* %15, i32 -1)
  %16 = load %struct._GtkActionGroup*, %struct._GtkActionGroup** %group, align 8
  %17 = bitcast %struct._GtkActionGroup* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call6 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %18, i8* getelementptr inbounds ([476 x i8], [476 x i8]* @.str.90, i32 0, i32 0), i64 -1, %struct._GError** null)
  %19 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  %call7 = call i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager* %19, i8* getelementptr inbounds ([411 x i8], [411 x i8]* @.str.91, i32 0, i32 0), i64 -1, %struct._GError** null)
  %20 = load %struct._GtkUIManager*, %struct._GtkUIManager** %ui_manager, align 8
  ret %struct._GtkUIManager* %20
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_set_line_join(%struct._cairo*, i32) #1

declare void @cairo_set_line_cap(%struct._cairo*, i32) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare void @aff_element_draw(%struct.AffElement*, i32, i32, i32, %struct._cairo*, %struct._GdkColor*, %struct._PangoLayout*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gdk_cairo_set_source_pixmap(%struct._cairo*, %struct._GdkDrawable*, double, double) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_item_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem*) #1

declare void @gtk_menu_set_screen(%struct._GtkMenu*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #3

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_menu_popup(%struct._GtkMenu*, %struct._GtkWidget*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, i32) #1

declare i32 @ipolygon_contains(%struct.IPolygon*, i32, i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare void @aff2_rotate(%struct.Aff2*, double) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #2

declare void @aff2_compute_stretch(%struct.Aff2*, double, double, double, double) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare %struct._GdkDrawable* @gdk_pixmap_new(%struct._GdkDrawable*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_new_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %color = alloca %struct._GimpRGB, align 8
  %i = alloca i32, align 4
  %elem = alloca %struct.AffElement*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  call void @undo_begin()
  %call = call i32 @gimp_context_get_foreground(%struct._GimpRGB* %color)
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %2 = load i32, i32* %height, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double 5.000000e-01, %conv
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  %conv1 = sitofp i32 %3 to double
  %div = fdiv double %mul, %conv1
  %4 = load i32, i32* @count_for_naming, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @count_for_naming, align 4
  %call2 = call %struct.AffElement* @aff_element_new(double 5.000000e-01, double %div, %struct._GimpRGB* %color, i32 %inc)
  store %struct.AffElement* %call2, %struct.AffElement** %elem, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %inc3 = add nsw i32 %5, 1
  store i32 %inc3, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %6 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %7 = bitcast %struct.AffElement** %6 to i8*
  %8 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 8
  %call6 = call i8* @g_realloc(i8* %7, i64 %mul5)
  %9 = bitcast i8* %call6 to %struct.AffElement**
  store %struct.AffElement** %9, %struct.AffElement*** @elements, align 8
  %10 = load i32*, i32** @element_selected, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv7 = sext i32 %12 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call i8* @g_realloc(i8* %11, i64 %mul8)
  %13 = bitcast i8* %call9 to i32*
  store i32* %13, i32** @element_selected, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub = sub nsw i32 %15, 1
  %cmp = icmp slt i32 %14, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** @element_selected, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub12 = sub nsw i32 %19, 1
  %idxprom13 = sext i32 %sub12 to i64
  %20 = load i32*, i32** @element_selected, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom13
  store i32 1, i32* %arrayidx14, align 4
  %21 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub15 = sub nsw i32 %22, 1
  %idxprom16 = sext i32 %sub15 to i64
  %23 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx17 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %23, i64 %idxprom16
  store %struct.AffElement* %21, %struct.AffElement** %arrayidx17, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub18 = sub nsw i32 %24, 1
  call void @set_current_element(i32 %sub18)
  %25 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %25, i32 0, i32 25
  %26 = load %struct.AffElement*, %struct.AffElement** %selected_orig, align 8
  %27 = bitcast %struct.AffElement* %26 to i8*
  %28 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %conv19 = sext i32 %28 to i64
  %mul20 = mul i64 %conv19, 416
  %call21 = call i8* @g_realloc(i8* %27, i64 %mul20)
  %29 = bitcast i8* %call21 to %struct.AffElement*
  %30 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %selected_orig22 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %30, i32 0, i32 25
  store %struct.AffElement* %29, %struct.AffElement** %selected_orig22, align 8
  %31 = load %struct.AffElement*, %struct.AffElement** %elem, align 8
  %width23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %32 = load i32, i32* %width23, align 4
  %conv24 = sitofp i32 %32 to double
  %height25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %33 = load i32, i32* %height25, align 4
  %conv26 = sitofp i32 %33 to double
  %34 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %35 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %31, double %conv24, double %conv26, double %34, double %35)
  call void @design_area_redraw()
  call void @ifs_compose_preview()
  call void @design_op_actions_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_delete_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %new_current = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @undo_begin()
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 26
  %1 = load i32, i32* %current_element, align 4
  call void @undo_update(i32 %1)
  %2 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element1 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %2, i32 0, i32 26
  %3 = load i32, i32* %current_element1, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %4, i64 %idxprom
  %5 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  call void @aff_element_free(%struct.AffElement* %5)
  %6 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element2 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %6, i32 0, i32 26
  %7 = load i32, i32* %current_element2, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub = sub nsw i32 %8, 1
  %cmp = icmp slt i32 %7, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub3 = sub nsw i32 %9, 1
  call void @undo_update(i32 %sub3)
  %10 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub4 = sub nsw i32 %10, 1
  %idxprom5 = sext i32 %sub4 to i64
  %11 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx6 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %11, i64 %idxprom5
  %12 = load %struct.AffElement*, %struct.AffElement** %arrayidx6, align 8
  %13 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element7 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %13, i32 0, i32 26
  %14 = load i32, i32* %current_element7, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx9 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %15, i64 %idxprom8
  store %struct.AffElement* %12, %struct.AffElement** %arrayidx9, align 8
  %16 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element10 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %16, i32 0, i32 26
  %17 = load i32, i32* %current_element10, align 4
  store i32 %17, i32* %new_current, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %sub11 = sub nsw i32 %18, 2
  store i32 %sub11, i32* %new_current, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load i32*, i32** @element_selected, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  %24 = load i32, i32* %arrayidx14, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  store i32 %25, i32* %new_current, align 4
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %27 = load i32, i32* %new_current, align 4
  %idxprom17 = sext i32 %27 to i64
  %28 = load i32*, i32** @element_selected, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %28, i64 %idxprom17
  store i32 1, i32* %arrayidx18, align 4
  %29 = load i32, i32* %new_current, align 4
  call void @set_current_element(i32 %29)
  call void @design_area_redraw()
  call void @ifs_compose_preview()
  call void @design_op_actions_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undo() #0 {
entry:
  %0 = load i32, i32* @undo_cur, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @undo_start, align 4
  %2 = load i32, i32* @undo_cur, align 4
  %add = add nsw i32 %1, %2
  %rem = srem i32 %add, 24
  call void @undo_exchange(i32 %rem)
  %3 = load i32, i32* @undo_cur, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @undo_cur, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @design_op_actions_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redo() #0 {
entry:
  %0 = load i32, i32* @undo_cur, align 4
  %1 = load i32, i32* @undo_num, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp ne i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @undo_cur, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @undo_cur, align 4
  %3 = load i32, i32* @undo_start, align 4
  %4 = load i32, i32* @undo_cur, align 4
  %add = add nsw i32 %3, %4
  %rem = srem i32 %add, 24
  call void @undo_exchange(i32 %rem)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @design_op_actions_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @design_area_select_all_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @element_selected, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @design_area_redraw()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recompute_center_cb(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @recompute_center(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ifs_compose_options_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @ifs_options_dialog(%struct._GtkWidget* %2)
  ret void
}

declare %struct._GtkUIManager* @gtk_ui_manager_new() #1

declare %struct._GtkActionGroup* @gtk_action_group_new(i8*) #1

declare void @gtk_action_group_set_translation_domain(%struct._GtkActionGroup*, i8*) #1

declare void @gtk_action_group_add_actions(%struct._GtkActionGroup*, %struct._GtkActionEntry*, i32, i8*) #1

declare void @gtk_action_group_add_radio_actions(%struct._GtkActionGroup*, %struct._GtkRadioActionEntry*, i32, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @design_op_update_callback(%struct._GtkRadioAction* %action, %struct._GtkRadioAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkRadioAction*, align 8
  %current.addr = alloca %struct._GtkRadioAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkRadioAction* %action, %struct._GtkRadioAction** %action.addr, align 8
  store %struct._GtkRadioAction* %current, %struct._GtkRadioAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkRadioAction*, %struct._GtkRadioAction** %action.addr, align 8
  %call = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %0)
  %1 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %op = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %1, i32 0, i32 3
  store i32 %call, i32* %op, align 4
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %call1 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area2 = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %area2, align 8
  call void @design_area_realize(%struct._GtkWidget* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare void @gtk_accel_group_lock(%struct._GtkAccelGroup*) #1

declare void @gtk_ui_manager_insert_action_group(%struct._GtkUIManager*, %struct._GtkActionGroup*, i32) #1

declare i32 @gtk_ui_manager_add_ui_from_string(%struct._GtkUIManager*, i8*, i64, %struct._GError**) #1

declare i32 @gimp_context_get_foreground(%struct._GimpRGB*) #1

declare %struct.AffElement* @aff_element_new(double, double, %struct._GimpRGB*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @undo_exchange(i32 %el) #0 {
entry:
  %el.addr = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  %telements = alloca %struct.AffElement**, align 8
  %tselected = alloca i32*, align 8
  %tifsvals = alloca %struct.IfsComposeVals, align 8
  %tcurrent = alloca i32, align 4
  store i32 %el, i32* %el.addr, align 4
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %2 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  store %struct.AffElement** %2, %struct.AffElement*** %telements, align 8
  %3 = load i32, i32* %el.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom
  %elements = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx, i32 0, i32 1
  %4 = load %struct.AffElement**, %struct.AffElement*** %elements, align 8
  store %struct.AffElement** %4, %struct.AffElement*** @elements, align 8
  %5 = load %struct.AffElement**, %struct.AffElement*** %telements, align 8
  %6 = load i32, i32* %el.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom1
  %elements3 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx2, i32 0, i32 1
  store %struct.AffElement** %5, %struct.AffElement*** %elements3, align 8
  %7 = bitcast %struct.IfsComposeVals* %tifsvals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.IfsComposeVals* @ifsvals to i8*), i64 48, i32 8, i1 false)
  %8 = load i32, i32* %el.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom4
  %ifsvals = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx5, i32 0, i32 0
  %9 = bitcast %struct.IfsComposeVals* %ifsvals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.IfsComposeVals* @ifsvals to i8*), i8* %9, i64 48, i32 8, i1 false)
  %10 = load i32, i32* %el.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom6
  %ifsvals8 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx7, i32 0, i32 0
  %11 = bitcast %struct.IfsComposeVals* %ifsvals8 to i8*
  %12 = bitcast %struct.IfsComposeVals* %tifsvals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 48, i32 8, i1 false)
  %13 = load i32*, i32** @element_selected, align 8
  store i32* %13, i32** %tselected, align 8
  %14 = load i32, i32* %el.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom9
  %element_selected = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx10, i32 0, i32 2
  %15 = load i32*, i32** %element_selected, align 8
  store i32* %15, i32** @element_selected, align 8
  %16 = load i32*, i32** %tselected, align 8
  %17 = load i32, i32* %el.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom11
  %element_selected13 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx12, i32 0, i32 2
  store i32* %16, i32** %element_selected13, align 8
  %18 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %18, i32 0, i32 26
  %19 = load i32, i32* %current_element, align 4
  store i32 %19, i32* %tcurrent, align 4
  %20 = load i32, i32* %el.addr, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom14
  %current_element16 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx15, i32 0, i32 3
  %21 = load i32, i32* %current_element16, align 4
  %22 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element17 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %22, i32 0, i32 26
  store i32 %21, i32* %current_element17, align 4
  %23 = load i32, i32* %tcurrent, align 4
  %24 = load i32, i32* %el.addr, align 4
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom18
  %current_element20 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx19, i32 0, i32 3
  store i32 %23, i32* %current_element20, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx22 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %28, i64 %idxprom21
  %29 = load %struct.AffElement*, %struct.AffElement** %arrayidx22, align 8
  %tobool = icmp ne %struct.AffElement* %29, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load i32, i32* %el.addr, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom24
  %elements26 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx25, i32 0, i32 1
  %32 = load %struct.AffElement**, %struct.AffElement*** %elements26, align 8
  %arrayidx27 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %32, i64 %idxprom23
  %33 = load %struct.AffElement*, %struct.AffElement** %arrayidx27, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx29 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %35, i64 %idxprom28
  store %struct.AffElement* %33, %struct.AffElement** %arrayidx29, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %36 to i64
  %37 = load i32, i32* %el.addr, align 4
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds [24 x %struct.UndoItem], [24 x %struct.UndoItem]* @undo_ring, i32 0, i64 %idxprom31
  %elements33 = getelementptr inbounds %struct.UndoItem, %struct.UndoItem* %arrayidx32, i32 0, i32 1
  %38 = load %struct.AffElement**, %struct.AffElement*** %elements33, align 8
  %arrayidx34 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %38, i64 %idxprom30
  store %struct.AffElement* null, %struct.AffElement** %arrayidx34, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx36 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %40, i64 %idxprom35
  %41 = load %struct.AffElement*, %struct.AffElement** %arrayidx36, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %42 = load i32, i32* %width, align 4
  %conv = sitofp i32 %42 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %43 = load i32, i32* %height, align 4
  %conv37 = sitofp i32 %43 to double
  %44 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %45 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %41, double %conv, double %conv37, double %44, double %45)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element38 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %47, i32 0, i32 26
  %48 = load i32, i32* %current_element38, align 4
  call void @set_current_element(i32 %48)
  call void @design_area_redraw()
  call void @ifs_compose_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ifs_options_dialog(%struct._GtkWidget* %parent) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %tobool = icmp ne %struct.IfsOptionsDialog* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 40)
  %1 = bitcast i8* %call to %struct.IfsOptionsDialog*
  store %struct.IfsOptionsDialog* %1, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.92, i32 0, i32 0)) #5
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %struct._GtkWidget* %2, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 -7, i8* null)
  %3 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %dialog = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %3, i32 0, i32 0
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %dialog3 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_hide to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call5 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %table, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 12)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %dialog12 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog12, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  %call15 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %19)
  %20 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call16)
  %21 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0)) #5
  %call19 = call %struct._GtkWidget* @gtk_label_new(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_misc_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %26, float 0.000000e+00, float 5.000000e-01)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_table_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkTable*
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %29, %struct._GtkWidget* %30, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %31)
  %call24 = call %struct.ValuePair* @value_pair_create(i8* bitcast (i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 2) to i8*), double 1.000000e+00, double 1.000000e+06, i32 0, i32 0)
  %32 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %memory_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %32, i32 0, i32 4
  store %struct.ValuePair* %call24, %struct.ValuePair** %memory_pair, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %36 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %memory_pair27 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %36, i32 0, i32 4
  %37 = load %struct.ValuePair*, %struct.ValuePair** %memory_pair27, align 8
  %spin = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %37, i32 0, i32 2
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %spin, align 8
  call void @gtk_table_attach(%struct._GtkTable* %35, %struct._GtkWidget* %38, i32 1, i32 2, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %39 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %memory_pair28 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %39, i32 0, i32 4
  %40 = load %struct.ValuePair*, %struct.ValuePair** %memory_pair28, align 8
  %spin29 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %spin29, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0)) #5
  %call31 = call %struct._GtkWidget* @gtk_label_new(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %label, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_misc_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %44, float 0.000000e+00, float 5.000000e-01)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %47, %struct._GtkWidget* %48, i32 0, i32 1, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %call36 = call %struct.ValuePair* @value_pair_create(i8* bitcast (i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 1) to i8*), double 1.000000e+00, double 1.000000e+07, i32 0, i32 0)
  %50 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %iterations_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %50, i32 0, i32 1
  store %struct.ValuePair* %call36, %struct.ValuePair** %iterations_pair, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call37)
  %53 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %54 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %iterations_pair39 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %54, i32 0, i32 1
  %55 = load %struct.ValuePair*, %struct.ValuePair** %iterations_pair39, align 8
  %spin40 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %55, i32 0, i32 2
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %spin40, align 8
  call void @gtk_table_attach(%struct._GtkTable* %53, %struct._GtkWidget* %56, i32 1, i32 2, i32 1, i32 2, i32 4, i32 4, i32 0, i32 0)
  %57 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %iterations_pair41 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %57, i32 0, i32 1
  %58 = load %struct.ValuePair*, %struct.ValuePair** %iterations_pair41, align 8
  %spin42 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %58, i32 0, i32 2
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %spin42, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0)) #5
  %call44 = call %struct._GtkWidget* @gtk_label_new(i8* %call43)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %label, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_misc_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call45)
  %63 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %63, float 0.000000e+00, float 5.000000e-01)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call47)
  %66 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %66, %struct._GtkWidget* %67, i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %call49 = call %struct.ValuePair* @value_pair_create(i8* bitcast (i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 3) to i8*), double 1.000000e+00, double 1.000000e+01, i32 0, i32 0)
  %69 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %subdivide_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %69, i32 0, i32 2
  store %struct.ValuePair* %call49, %struct.ValuePair** %subdivide_pair, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call50)
  %72 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %73 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %subdivide_pair52 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %73, i32 0, i32 2
  %74 = load %struct.ValuePair*, %struct.ValuePair** %subdivide_pair52, align 8
  %spin53 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %74, i32 0, i32 2
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %spin53, align 8
  call void @gtk_table_attach(%struct._GtkTable* %72, %struct._GtkWidget* %75, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 0, i32 0)
  %76 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %subdivide_pair54 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %76, i32 0, i32 2
  %77 = load %struct.ValuePair*, %struct.ValuePair** %subdivide_pair54, align 8
  %spin55 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %77, i32 0, i32 2
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %spin55, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i32 0, i32 0)) #5
  %call57 = call %struct._GtkWidget* @gtk_label_new(i8* %call56)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %label, align 8
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_misc_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call58)
  %81 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %81, float 0.000000e+00, float 5.000000e-01)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_table_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call60)
  %84 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkTable*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %84, %struct._GtkWidget* %85, i32 0, i32 1, i32 3, i32 4, i32 4, i32 4, i32 0, i32 0)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %call62 = call %struct.ValuePair* @value_pair_create(i8* bitcast (double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 4) to i8*), double 0.000000e+00, double 5.000000e+00, i32 1, i32 1)
  %87 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %87, i32 0, i32 3
  store %struct.ValuePair* %call62, %struct.ValuePair** %radius_pair, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_table_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call63)
  %90 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkTable*
  %91 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair65 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %91, i32 0, i32 3
  %92 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair65, align 8
  %scale = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %92, i32 0, i32 1
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %scale, align 8
  call void @gtk_table_attach(%struct._GtkTable* %90, %struct._GtkWidget* %93, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 0, i32 0)
  %94 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair66 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %94, i32 0, i32 3
  %95 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair66, align 8
  %scale67 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %95, i32 0, i32 1
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %scale67, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %96)
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call68)
  %99 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  %100 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair70 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %100, i32 0, i32 3
  %101 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair70, align 8
  %spin71 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %101, i32 0, i32 2
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %spin71, align 8
  call void @gtk_table_attach(%struct._GtkTable* %99, %struct._GtkWidget* %102, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 0, i32 0)
  %103 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair72 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %103, i32 0, i32 3
  %104 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair72, align 8
  %spin73 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %104, i32 0, i32 2
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %spin73, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %iterations_pair74 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %106, i32 0, i32 1
  %107 = load %struct.ValuePair*, %struct.ValuePair** %iterations_pair74, align 8
  call void @value_pair_update(%struct.ValuePair* %107)
  %108 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %subdivide_pair75 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %108, i32 0, i32 2
  %109 = load %struct.ValuePair*, %struct.ValuePair** %subdivide_pair75, align 8
  call void @value_pair_update(%struct.ValuePair* %109)
  %110 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %memory_pair76 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %110, i32 0, i32 4
  %111 = load %struct.ValuePair*, %struct.ValuePair** %memory_pair76, align 8
  call void @value_pair_update(%struct.ValuePair* %111)
  %112 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %radius_pair77 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %112, i32 0, i32 3
  %113 = load %struct.ValuePair*, %struct.ValuePair** %radius_pair77, align 8
  call void @value_pair_update(%struct.ValuePair* %113)
  %114 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %dialog78 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %114, i32 0, i32 0
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog78, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  br label %if.end

if.else:                                          ; preds = %entry
  %116 = load %struct.IfsOptionsDialog*, %struct.IfsOptionsDialog** @ifsOptD, align 8
  %dialog79 = getelementptr inbounds %struct.IfsOptionsDialog, %struct.IfsOptionsDialog* %116, i32 0, i32 0
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog79, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_window_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call80)
  %119 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %119)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @flip_check_button_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %i = alloca i32, align 4
  %active = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %in_update = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 28
  %1 = load i32, i32* %in_update, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %6)
  store i32 %call2, i32* %active, align 4
  call void @undo_begin()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i32*, i32** @element_selected, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  call void @undo_update(i32 %12)
  %13 = load i32, i32* %active, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %14 to i64
  %15 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx6 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %15, i64 %idxprom5
  %16 = load %struct.AffElement*, %struct.AffElement** %arrayidx6, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %16, i32 0, i32 0
  %flip = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 6
  store i32 %13, i32* %flip, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %17 to i64
  %18 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx8 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %18, i64 %idxprom7
  %19 = load %struct.AffElement*, %struct.AffElement** %arrayidx8, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %20 = load i32, i32* %width, align 4
  %conv = sitofp i32 %20 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %21 = load i32, i32* %height, align 4
  %conv9 = sitofp i32 %21 to double
  %22 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %23 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %19, double %conv, double %conv9, double %22, double %23)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @update_values()
  call void @design_area_redraw()
  call void @ifs_compose_preview()
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @simple_color_toggled(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %cur = alloca %struct.AffElement*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 26
  %1 = load i32, i32* %current_element, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %2, i64 %idxprom
  %3 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  store %struct.AffElement* %3, %struct.AffElement** %cur, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %6)
  %7 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %7, i32 0, i32 0
  %simple_color = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v, i32 0, i32 14
  store i32 %call2, i32* %simple_color, align 4
  %8 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  %v3 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %8, i32 0, i32 0
  %simple_color4 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v3, i32 0, i32 14
  %9 = load i32, i32* %simple_color4, align 4
  %10 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %10, i32 0, i32 27
  %simple_color5 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %current_vals, i32 0, i32 14
  store i32 %9, i32* %simple_color5, align 4
  %11 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  %v6 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %11, i32 0, i32 0
  %simple_color7 = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v6, i32 0, i32 14
  %12 = load i32, i32* %simple_color7, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  call void @aff_element_compute_color_trans(%struct.AffElement* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @val_changed_update()
  call void @simple_color_set_sensitive()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.ColorMap* @color_map_create(i8* %name, %struct._GimpRGB* %orig_color, %struct._GimpRGB* %data, i32 %fixed_point) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %orig_color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca %struct._GimpRGB*, align 8
  %fixed_point.addr = alloca i32, align 4
  %frame = alloca %struct._GtkWidget*, align 8
  %arrow = alloca %struct._GtkWidget*, align 8
  %color_map = alloca %struct.ColorMap*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %orig_color, %struct._GimpRGB** %orig_color.addr, align 8
  store %struct._GimpRGB* %data, %struct._GimpRGB** %data.addr, align 8
  store i32 %fixed_point, i32* %fixed_point.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 40)
  %0 = bitcast i8* %call to %struct.ColorMap*
  store %struct.ColorMap* %0, %struct.ColorMap** %color_map, align 8
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %1, double 1.000000e+00)
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %3 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %color = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %3, i32 0, i32 0
  store %struct._GimpRGB* %2, %struct._GimpRGB** %color, align 8
  %4 = load i32, i32* %fixed_point.addr, align 4
  %5 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %fixed_point1 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %5, i32 0, i32 4
  store i32 %4, i32* %fixed_point1, align 4
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  %6 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %hbox = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %6, i32 0, i32 1
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %call3 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %9, i32 1)
  %10 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %hbox6 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox6, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load i32, i32* %fixed_point.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %orig_color.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpRGB* [ %17, %cond.true ], [ %18, %cond.false ]
  %call9 = call %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB* %cond, i32 0, i32 0)
  %19 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %orig_preview = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %19, i32 0, i32 2
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %orig_preview, align 8
  %20 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %orig_preview10 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %orig_preview10, align 8
  call void @gtk_drag_dest_unset(%struct._GtkWidget* %21)
  %22 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %orig_preview11 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %22, i32 0, i32 2
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %orig_preview11, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %23, i32 30, i32 30)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call12)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %27 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %orig_preview14 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %27, i32 0, i32 2
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %orig_preview14, align 8
  call void @gtk_container_add(%struct._GtkContainer* %26, %struct._GtkWidget* %28)
  %29 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %orig_preview15 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %29, i32 0, i32 2
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %orig_preview15, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call16 = call %struct._GtkWidget* @gtk_arrow_new(i32 3, i32 1)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %arrow, align 8
  %31 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %hbox17 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %31, i32 0, i32 1
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox17, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call18)
  %34 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %arrow, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load i8*, i8** %name.addr, align 8
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %call20 = call %struct._GtkWidget* @gimp_color_button_new(i8* %37, i32 30, i32 30, %struct._GimpRGB* %38, i32 0)
  %39 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %button = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %39, i32 0, i32 3
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %button, align 8
  %40 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %hbox21 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %40, i32 0, i32 1
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox21, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call22)
  %43 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %44 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %button24 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %44, i32 0, i32 3
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %button24, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %43, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %button25 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %46, i32 0, i32 3
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button25, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %button26 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %48, i32 0, i32 3
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button26, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %51 = load %struct._GimpRGB*, %struct._GimpRGB** %data.addr, align 8
  %52 = bitcast %struct._GimpRGB* %51 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %button28 = getelementptr inbounds %struct.ColorMap, %struct.ColorMap* %53, i32 0, i32 3
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button28, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %56 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  %57 = bitcast %struct.ColorMap* %56 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ColorMap*)* @color_map_color_changed_cb to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct.ColorMap*, %struct.ColorMap** %color_map, align 8
  ret %struct.ColorMap* %58
}

declare i32 @gimp_rgb_parse_name(%struct._GimpRGB*, i8*, i32) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

; Function Attrs: nounwind uwtable
define internal void @val_changed_update() #0 {
entry:
  %allocation = alloca %struct._GdkRectangle, align 4
  %cur = alloca %struct.AffElement*, align 8
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %in_update = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 28
  %1 = load i32, i32* %in_update, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %4 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %4, i32 0, i32 26
  %5 = load i32, i32* %current_element, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %6, i64 %idxprom
  %7 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  store %struct.AffElement* %7, %struct.AffElement** %cur, align 8
  call void @undo_begin()
  %8 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element1 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %8, i32 0, i32 26
  %9 = load i32, i32* %current_element1, align 4
  call void @undo_update(i32 %9)
  %10 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %10, i32 0, i32 0
  %11 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %11, i32 0, i32 27
  %12 = bitcast %struct.AffElementVals* %v to i8*
  %13 = bitcast %struct.AffElementVals* %current_vals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 248, i32 8, i1 false)
  %14 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  %v2 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %14, i32 0, i32 0
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v2, i32 0, i32 2
  %15 = load double, double* %theta, align 8
  %mul = fmul double %15, 0x3F91DF46A2529D39
  store double %mul, double* %theta, align 8
  %16 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %conv = sitofp i32 %17 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %18 = load i32, i32* %height, align 4
  %conv3 = sitofp i32 %18 to double
  %19 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %20 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %16, double %conv, double %conv3, double %19, double %20)
  %21 = load %struct.AffElement*, %struct.AffElement** %cur, align 8
  call void @aff_element_compute_color_trans(%struct.AffElement* %21)
  call void @design_area_redraw()
  call void @ifs_compose_preview()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare %struct._GtkWidget* @gimp_color_area_new(%struct._GimpRGB*, i32, i32) #1

declare void @gtk_drag_dest_unset(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_arrow_new(i32, i32) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal void @color_map_color_changed_cb(%struct._GtkWidget* %widget, %struct.ColorMap* %color_map) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %color_map.addr = alloca %struct.ColorMap*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ColorMap* %color_map, %struct.ColorMap** %color_map.addr, align 8
  %0 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %in_update = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %0, i32 0, i32 28
  %1 = load i32, i32* %in_update, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @undo_begin()
  %2 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %2, i32 0, i32 26
  %3 = load i32, i32* %current_element, align 4
  call void @undo_update(i32 %3)
  %4 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element1 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %4, i32 0, i32 26
  %5 = load i32, i32* %current_element1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %6, i64 %idxprom
  %7 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %v = getelementptr inbounds %struct.AffElement, %struct.AffElement* %7, i32 0, i32 0
  %8 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_vals = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %8, i32 0, i32 27
  %9 = bitcast %struct.AffElementVals* %v to i8*
  %10 = bitcast %struct.AffElementVals* %current_vals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 248, i32 8, i1 false)
  %11 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element2 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %11, i32 0, i32 26
  %12 = load i32, i32* %current_element2, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx4 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %13, i64 %idxprom3
  %14 = load %struct.AffElement*, %struct.AffElement** %arrayidx4, align 8
  %v5 = getelementptr inbounds %struct.AffElement, %struct.AffElement* %14, i32 0, i32 0
  %theta = getelementptr inbounds %struct.AffElementVals, %struct.AffElementVals* %v5, i32 0, i32 2
  %15 = load double, double* %theta, align 8
  %mul = fmul double %15, 0x3F91DF46A2529D39
  store double %mul, double* %theta, align 8
  %16 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %current_element6 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %16, i32 0, i32 26
  %17 = load i32, i32* %current_element6, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx8 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %18, i64 %idxprom7
  %19 = load %struct.AffElement*, %struct.AffElement** %arrayidx8, align 8
  call void @aff_element_compute_color_trans(%struct.AffElement* %19)
  call void @update_values()
  call void @ifs_compose_preview()
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal void @value_pair_scale_callback(%struct._GtkAdjustment* %adjustment, %struct.ValuePair* %value_pair) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %value_pair.addr = alloca %struct.ValuePair*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct.ValuePair* %value_pair, %struct.ValuePair** %value_pair.addr, align 8
  %0 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %timeout_id = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %0, i32 0, i32 4
  %1 = load i32, i32* %timeout_id, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %3 = bitcast %struct.ValuePair* %2 to i8*
  %call = call i32 @g_timeout_add(i32 500, i32 (i8*)* @value_pair_scale_callback_real, i8* %3)
  %4 = load %struct.ValuePair*, %struct.ValuePair** %value_pair.addr, align 8
  %timeout_id1 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %4, i32 0, i32 4
  store i32 %call, i32* %timeout_id1, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_digits(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #3

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @value_pair_scale_callback_real(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %value_pair = alloca %struct.ValuePair*, align 8
  %changed = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ValuePair*
  store %struct.ValuePair* %1, %struct.ValuePair** %value_pair, align 8
  store i32 0, i32* %changed, align 4
  %2 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %type = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %2, i32 0, i32 3
  %3 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %data1 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %4, i32 0, i32 5
  %d = bitcast %union.anon* %data1 to double**
  %5 = load double*, double** %d, align 8
  %6 = load double, double* %5, align 8
  %7 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %7, i32 0, i32 0
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %8)
  %cmp2 = fcmp une double %6, %call
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %changed, align 4
  %9 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment4 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %9, i32 0, i32 0
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment4, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %11 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %data6 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %11, i32 0, i32 5
  %d7 = bitcast %union.anon* %data6 to double**
  %12 = load double*, double** %d7, align 8
  store double %call5, double* %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.20

if.else:                                          ; preds = %entry
  %13 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %data8 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %13, i32 0, i32 5
  %i = bitcast %union.anon* %data8 to i32**
  %14 = load i32*, i32** %i, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment9 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %16, i32 0, i32 0
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment9, align 8
  %call10 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %17)
  %conv = fptosi double %call10 to i32
  %cmp11 = icmp ne i32 %15, %conv
  br i1 %cmp11, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.else
  store i32 1, i32* %changed, align 4
  %18 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %adjustment14 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %18, i32 0, i32 0
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment14, align 8
  %call15 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %19)
  %conv16 = fptosi double %call15 to i32
  %20 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %data17 = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %20, i32 0, i32 5
  %i18 = bitcast %union.anon* %data17 to i32**
  %21 = load i32*, i32** %i18, align 8
  store i32 %conv16, i32* %21, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %22 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.20
  call void @val_changed_update()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.20
  %23 = load %struct.ValuePair*, %struct.ValuePair** %value_pair, align 8
  %timeout_id = getelementptr inbounds %struct.ValuePair, %struct.ValuePair* %23, i32 0, i32 4
  store i32 0, i32* %timeout_id, align 4
  ret i32 0
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gtk_frame_set_label(%struct._GtkFrame*, i8*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_idle_render(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %iterations = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 10000, i32* %iterations, align 4
  %0 = load %struct.IfsDesignArea*, %struct.IfsDesignArea** @ifsDesign, align 8
  %area = getelementptr inbounds %struct.IfsDesignArea, %struct.IfsDesignArea* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %1, %struct._GdkRectangle* %allocation)
  %2 = load i32, i32* %iterations, align 4
  %3 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_iterations = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %3, i32 0, i32 20
  %4 = load i32, i32* %preview_iterations, align 4
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_iterations1 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %5, i32 0, i32 20
  %6 = load i32, i32* %preview_iterations1, align 4
  store i32 %6, i32* %iterations, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %10, i64 %idxprom
  %11 = load %struct.AffElement*, %struct.AffElement** %arrayidx, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %conv = sitofp i32 %12 to double
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %13 = load i32, i32* %height, align 4
  %conv3 = sitofp i32 %13 to double
  %14 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %15 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %11, double %conv, double %conv3, double %14, double %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %width4 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %19 = load i32, i32* %width4, align 4
  %height5 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %20 = load i32, i32* %height5, align 4
  %21 = load i32, i32* %iterations, align 4
  %height6 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %22 = load i32, i32* %height6, align 4
  %23 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_data = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %23, i32 0, i32 19
  %24 = load i8*, i8** %preview_data, align 8
  call void @ifs_render(%struct.AffElement** %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.IfsComposeVals* @ifsvals, i32 0, i32 %22, i8* %24, i8* null, i8* null, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.17, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 0), align 4
  %cmp8 = icmp slt i32 %25, %26
  br i1 %cmp8, label %for.body.10, label %for.end.19

for.body.10:                                      ; preds = %for.cond.7
  %27 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %27 to i64
  %28 = load %struct.AffElement**, %struct.AffElement*** @elements, align 8
  %arrayidx12 = getelementptr inbounds %struct.AffElement*, %struct.AffElement** %28, i64 %idxprom11
  %29 = load %struct.AffElement*, %struct.AffElement** %arrayidx12, align 8
  %width13 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %30 = load i32, i32* %width13, align 4
  %conv14 = sitofp i32 %30 to double
  %height15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height15, align 4
  %conv16 = sitofp i32 %31 to double
  %32 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 6), align 8
  %33 = load double, double* getelementptr inbounds (%struct.IfsComposeVals, %struct.IfsComposeVals* @ifsvals, i32 0, i32 7), align 8
  call void @aff_element_compute_trans(%struct.AffElement* %29, double %conv14, double %conv16, double %32, double %33)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.10
  %34 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %34, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.7

for.end.19:                                       ; preds = %for.cond.7
  %35 = load i32, i32* %iterations, align 4
  %36 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_iterations20 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %36, i32 0, i32 20
  %37 = load i32, i32* %preview_iterations20, align 4
  %sub = sub nsw i32 %37, %35
  store i32 %sub, i32* %preview_iterations20, align 4
  %38 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %38, i32 0, i32 18
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call)
  %41 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpPreviewArea*
  %width22 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %42 = load i32, i32* %width22, align 4
  %height23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %43 = load i32, i32* %height23, align 4
  %44 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_data24 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %44, i32 0, i32 19
  %45 = load i8*, i8** %preview_data24, align 8
  %width25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %46 = load i32, i32* %width25, align 4
  %mul = mul nsw i32 %46, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %41, i32 0, i32 0, i32 %42, i32 %43, i32 0, i8* %45, i32 %mul)
  %47 = load %struct.IfsDialog*, %struct.IfsDialog** @ifsD, align 8
  %preview_iterations26 = getelementptr inbounds %struct.IfsDialog, %struct.IfsDialog* %47, i32 0, i32 20
  %48 = load i32, i32* %preview_iterations26, align 4
  %cmp27 = icmp ne i32 %48, 0
  %conv28 = zext i1 %cmp27 to i32
  ret i32 %conv28
}

declare void @ifs_render(%struct.AffElement**, i32, i32, i32, i32, %struct.IfsComposeVals*, i32, i32, i8*, i8*, i8*, i32) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare i32 @gimp_drawable_type(i32) #1

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
