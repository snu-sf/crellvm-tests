; ModuleID = './plug-ins/gradient-flare/gradient-flare.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.PluginValues = type { i32, i32, double, double, double, double, double, i32, i32, double, [256 x i8] }
%struct.GFlare = type { i8*, i8*, double, i32, double, i32, double, i32, [256 x i8], [256 x i8], [256 x i8], double, double, double, [256 x i8], [256 x i8], [256 x i8], double, double, double, i32, double, [256 x i8], [256 x i8], [256 x i8], double, double, double, i32, i32, i32, i32 }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.DrawableInfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GradientCacheItem = type { %struct._GradientCacheItem*, %struct._GradientCacheItem*, [256 x i8], [1440 x i8] }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GFlareDialog = type { i32, %struct.GFlare*, %struct._GtkWidget*, %struct._Preview*, %struct.anon, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkTreeSelection*, i32 }
%struct._Preview = type { %struct._GtkWidget*, i32, i32, i32 (%struct._Preview*, i8*)*, i8*, void (%struct._Preview*, i8*, i32, i8*)*, i8*, void (%struct._Preview*, i8*)*, i8*, i32, i32, i32, i32, i32, i8*, i8* }
%struct.anon = type { double, double, double, double }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
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
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct.CalcParams = type { i32, i32, %struct.GFlare*, double, double, double, double, double, double, double, i32, %struct.CalcBounds, i8*, i8*, i8*, double, double, i32, %struct.CalcBounds, i8*, i8*, i8*, double, double, double, double, i32, %struct._GList*, i8*, i8*, i8*, double, double, i32, double, double }
%struct.CalcBounds = type { double, double, double, double }
%struct.anon.1 = type { i8**, i32, i32, i32 }
%struct.anon.2 = type { i8*, void ()* }
%struct.GFlareEditor = type { i32, i32, void (i32, i8*)*, i8*, %struct.GFlare*, %struct.GFlare*, %struct._GtkWidget*, %struct._Preview*, %struct._GtkWidget*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GFlareFile = type { %struct._IO_FILE*, i32 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkCursor = type { i32, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GBinding = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct.CalcSFlare = type { double, double, double, %struct.CalcBounds }
%struct._GRand = type opaque
%struct._GradientMenu = type { %struct._GtkWidget*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, [256 x i8] }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @plugin_query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @plugin_run }, align 8
@pvals = global %struct.PluginValues { i32 128, i32 128, double 1.000000e+02, double 0.000000e+00, double 0.000000e+00, double 6.000000e+01, double 4.000000e+02, i32 0, i32 3, double 2.000000e-01, [256 x i8] c"Default\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 8
@default_gflare = global %struct.GFlare { i8* null, i8* null, double 1.000000e+02, i32 0, double 1.000000e+02, i32 0, double 1.000000e+02, i32 0, [256 x i8] c"%red_grad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"%white\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"%white\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", double 1.000000e+02, double 0.000000e+00, double 0.000000e+00, [256 x i8] c"%white_grad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"%random\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"%random\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", double 1.000000e+02, double 0.000000e+00, double 0.000000e+00, i32 40, double 2.000000e+01, [256 x i8] c"%white_grad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"%random\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [256 x i8] c"%random\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", double 4.000000e+01, double 0.000000e+00, double 0.000000e+00, i32 0, i32 6, i32 0, i32 1 }, align 8
@plugin_query.args = internal constant [14 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.23, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"gflare-name\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"The name of GFlare\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"xcenter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"X coordinate of center of GFlare\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ycenter\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Y coordinate of center of GFlare\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Radius of GFlare (pixel)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Rotation of GFlare (degree)\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Hue rotation of GFlare (degree)\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"vangle\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Vector angle for second flares (degree)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"vlength\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Vector length for second flares (percentage to Radius)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"use-asupsample\00", align 1
@.str.23 = private unnamed_addr constant [72 x i8] c"Whether it uses or not adaptive supersampling while rendering (boolean)\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"asupsample-max-depth\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Max depth for adaptive supersampling\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"asupsample-threshold\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Threshold for adaptive supersampling\00", align 1
@.str.28 = private unnamed_addr constant [368 x i8] c"This plug-in produces a lense flare effect using custom gradients. In interactive call, the user can edit his/her own favorite lense flare (GFlare) and render it. Edited gflare is saved automatically to the folder in gflare-path, if it is defined in gimprc. In non-interactive call, the user can only render one of GFlare which has been stored in gflare-path already.\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"plug-in-gflare\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"Produce a lense flare effect using gradients\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Eiichi Takamori\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Eiichi Takamori, and a lot of GIMP people\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"_Gradient Flare...\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"<Image>/Filters/Light and Shadow/Light\00", align 1
@plugin_run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.37 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@image_ID = internal global i32 0, align 4
@drawable = internal global %struct._GimpDrawable* null, align 8
@dinfo = internal global %struct.DrawableInfo zeroinitializer, align 4
@.str.39 = private unnamed_addr constant [12 x i8] c"gflare-path\00", align 1
@gflare_path = internal global i8* null, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"gimprc\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"gflare\00", align 1
@.str.42 = private unnamed_addr constant [74 x i8] c"No %s in gimprc:\0AYou need to add an entry like\0A(%s \22%s\22)\0Ato your %s file.\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Gradient Flare\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@gradient_cache_head = internal global %struct._GradientCacheItem* null, align 8
@gradient_cache_count = internal global i32 0, align 4
@gflares_list = internal global %struct._GList* null, align 8
@__func__.gflare_free = private unnamed_addr constant [12 x i8] c"gflare_free\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"gflare != NULL\00", align 1
@__func__.gflare_load = private unnamed_addr constant [12 x i8] c"gflare_load\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"Failed to open GFlare file '%s': %s\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"GIMP GFlare 0.25\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"'%s' is not a valid GFlare file.\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"invalid formatted GFlare file: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%30s\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"%1023s\00", align 1
@gflare_modes = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)], align 16
@.str.54 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"ADDITION\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"OVERLAY\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%3o\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@gflare_shapes = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0)], align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"CIRCLE\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"POLYGON\00", align 1
@num_gflares = internal global i32 0, align 4
@.str.62 = private unnamed_addr constant [15 x i8] c"gradient-flare\00", align 1
@dlg = internal global %struct.GFlareDialog* null, align 8
@.str.63 = private unnamed_addr constant [17 x i8] c"gradient-flare.c\00", align 1
@__func__.dlg_run = private unnamed_addr constant [8 x i8] c"dlg_run\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"gflares_list != NULL\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"dlg->gflare != NULL\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"dlg->gflare->name != NULL\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"gimp-gradient-flare\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"A_uto update preview\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@gradient_menus = internal global %struct._GList* null, align 8
@gradient_names = internal global i8** null, align 8
@num_gradient_names = internal global i32 0, align 4
@internal_gradients = internal global [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0)], align 16
@.str.74 = private unnamed_addr constant [7 x i8] c"%white\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"%white_grad\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"%red_grad\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"%blue_grad\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"%yellow_grad\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"%random\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"`Default' is created.\00", align 1
@calc = internal global %struct.CalcParams zeroinitializer, align 8
@calc_sample_one_gradient.table = internal global [9 x %struct.anon.1] [%struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 112) to i8**), i32 60, i32 848, i32 0 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 120) to i8**), i32 316, i32 0, i32 0 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 128) to i8**), i32 572, i32 0, i32 1 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 192) to i8**), i32 856, i32 1640, i32 0 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 200) to i8**), i32 1112, i32 0, i32 0 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 208) to i8**), i32 1368, i32 0, i32 1 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 264) to i8**), i32 1664, i32 2448, i32 0 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 272) to i8**), i32 1920, i32 0, i32 1 }, %struct.anon.1 { i8** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.CalcParams* @calc to i8*), i64 280) to i8**), i32 2176, i32 0, i32 1 }], align 16
@__func__.calc_sample_one_gradient = private unnamed_addr constant [25 x i8] c"calc_sample_one_gradient\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"0 <= hue && hue < 256\00", align 1
@gradient_get_values_internal.white = internal constant [4 x i8] c"\FF\FF\FF\FF", align 1
@gradient_get_values_internal.white_trans = internal constant [4 x i8] c"\FF\FF\FF\00", align 1
@gradient_get_values_internal.red_trans = internal constant [4 x i8] c"\FF\00\00\00", align 1
@gradient_get_values_internal.blue_trans = internal constant [4 x i8] c"\00\00\FF\00", align 1
@gradient_get_values_internal.yellow_trans = internal constant [4 x i8] c"\FF\FF\00\00", align 1
@__func__.gradient_get_values_external = private unnamed_addr constant [29 x i8] c"gradient_get_values_external\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"nvalues >= 2\00", align 1
@.str.84 = private unnamed_addr constant [43 x i8] c"0 <= pos && pos <= GRADIENT_RESOLUTION - 1\00", align 1
@__func__.gradient_cache_lookup = private unnamed_addr constant [22 x i8] c"gradient_cache_lookup\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"ci == gradient_cache_head\00", align 1
@__func__.gradient_cache_zorch = private unnamed_addr constant [21 x i8] c"gradient_cache_zorch\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"ci->next == NULL\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"calc_deinit: not initialized\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"chainbutton\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"Parameters\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"Ro_tation:\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"_Hue rotation:\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"Vector _angle:\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"Vector _length:\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"A_daptive supersampling\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"_Max depth:\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"_Threshold\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"_Settings\00", align 1
@dlg_make_page_selector.buttons = internal global [4 x %struct.anon.2] [%struct.anon.2 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_selector_new_callback to void ()*) }, %struct.anon.2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_selector_edit_callback to void ()*) }, %struct.anon.2 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_selector_copy_callback to void ()*) }, %struct.anon.2 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_selector_delete_callback to void ()*) }], align 16
@.str.107 = private unnamed_addr constant [8 x i8] c"gtk-new\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"gtk-copy\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"GFlare\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"S_elector\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"New Gradient Flare\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"Enter a name for the new GFlare\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@__func__.dlg_selector_new_ok_callback = private unnamed_addr constant [29 x i8] c"dlg_selector_new_ok_callback\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"new_name != NULL\00", align 1
@.str.120 = private unnamed_addr constant [31 x i8] c"The name '%s' is used already!\00", align 1
@ed = internal global %struct.GFlareEditor* null, align 8
@.str.121 = private unnamed_addr constant [22 x i8] c"Gradient Flare Editor\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"Rescan Gradients\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.125 = private unnamed_addr constant [31 x i8] c"ed_preview_edit_func: bad page\00", align 1
@.str.126 = private unnamed_addr constant [43 x i8] c"hmm, bad page in ed_preview_render_func ()\00", align 1
@ed_preview_render_general.src_pix = internal global [4 x i8] c"\00\00\00\FF", align 1
@ed_preview_render_sflare.src_pix = internal global [4 x i8] c"\00\00\00\FF", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"Glow Paint Options\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"Opacity:\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"Paint mode:\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"Rays Paint Options\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"Second Flares Paint Options\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"_General\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@gflare_menu_modes = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0)], align 16
@.str.134 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"Addition\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"Gradients\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"Radial gradient:\00", align 1
@.str.140 = private unnamed_addr constant [18 x i8] c"Angular gradient:\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"Angular size gradient:\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"Size (%):\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Rotation:\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"Hue rotation:\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"G_low\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"# of Spikes:\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"Spike thickness:\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"_Rays\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"Size factor gradient:\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"Probability gradient:\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"Shape of Second Flares\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"Random seed:\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"_Second Flares\00", align 1
@gflare_save.message_ok = internal global i32 0, align 4
@.str.158 = private unnamed_addr constant [19 x i8] c"${gimp_dir}/gflare\00", align 1
@.str.159 = private unnamed_addr constant [160 x i8] c"GFlare '%s' is not saved. If you add a new entry in '%s', like:\0A(gflare-path \22%s\22)\0Aand make a folder '%s', then you can save your own GFlares into that folder.\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.161 = private unnamed_addr constant [37 x i8] c"Failed to write GFlare file '%s': %s\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"%s %d %d\0A\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.169 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"%s copy\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"Copy Gradient Flare\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"Enter a name for the copied GFlare\00", align 1
@__func__.dlg_selector_copy_ok_callback = private unnamed_addr constant [30 x i8] c"dlg_selector_copy_ok_callback\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"copy_name != NULL\00", align 1
@.str.174 = private unnamed_addr constant [31 x i8] c"The name `%s' is used already!\00", align 1
@.str.175 = private unnamed_addr constant [51 x i8] c"Cannot delete!! There must be at least one GFlare.\00", align 1
@.str.176 = private unnamed_addr constant [66 x i8] c"Are you sure you want to delete \22%s\22 from the list and from disk?\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"Delete Gradient Flare\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"gtk-dialog-question\00", align 1
@.str.179 = private unnamed_addr constant [46 x i8] c"Unsynchronized lists. Bad things will happen!\00", align 1
@.str.180 = private unnamed_addr constant [29 x i8] c"not found %s in gflares_list\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"Not found %s\0A\00", align 1
@tk_read = internal global %struct._GimpPixelFetcher* null, align 8
@tk_write = internal global %struct._GimpPixelFetcher* null, align 8

; Function Attrs: nounwind uwtable
define internal void @plugin_query() #0 {
entry:
  %help_string = alloca i8*, align 8
  store i8* getelementptr inbounds ([368 x i8], [368 x i8]* @.str.28, i32 0, i32 0), i8** %help_string, align 8
  %0 = load i8*, i8** %help_string, align 8
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 14, i32 0, %struct._GimpParamDef* getelementptr inbounds ([14 x %struct._GimpParamDef], [14 x %struct._GimpParamDef]* @plugin_query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plugin_run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %path = alloca i8*, align 8
  %gimprc = alloca i8*, align 8
  %full_path = alloca i8*, align 8
  %esc_path = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @plugin_run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @plugin_run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @plugin_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_image, align 4
  store i32 %6, i32* @image_ID, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** @drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %10)
  store i32 %call9, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 0), align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call11, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 1), align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_mask_bounds(i32 %14, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 4), i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 5))
  %call14 = call i32 @gimp_tile_width() #7
  store i32 %call14, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 6), align 4
  %call15 = call i32 @gimp_tile_height() #7
  store i32 %call15, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 7), align 4
  call void @gradient_init()
  %call16 = call i8* @gimp_gimprc_query(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0))
  store i8* %call16, i8** %path, align 8
  %15 = load i8*, i8** %path, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %16 = load i8*, i8** %path, align 8
  %call17 = call noalias i8* @g_filename_from_utf8(i8* %16, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call17, i8** @gflare_path, align 8
  %17 = load i8*, i8** %path, align 8
  call void @g_free(i8* %17)
  br label %if.end

if.else:                                          ; preds = %do.end
  %call18 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call18, i8** %gimprc, align 8
  %call19 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0))
  store i8* %call19, i8** %full_path, align 8
  %18 = load i8*, i8** %full_path, align 8
  %call20 = call noalias i8* @g_strescape(i8* %18, i8* null)
  store i8* %call20, i8** %esc_path, align 8
  %19 = load i8*, i8** %full_path, align 8
  call void @g_free(i8* %19)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.42, i32 0, i32 0)) #4
  %20 = load i8*, i8** %esc_path, align 8
  %21 = load i8*, i8** %gimprc, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %21)
  call void (i8*, ...) @g_message(i8* %call21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i8* %20, i8* %call22)
  %22 = load i8*, i8** %gimprc, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** %esc_path, align 8
  call void @g_free(i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @gflares_list_load_all()
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width, align 4
  %call23 = call i32 @gimp_tile_width() #7
  %div = udiv i32 %25, %call23
  %add = add i32 %div, 2
  %conv = zext i32 %add to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %26 = load i32, i32* %run_mode, align 4
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.29
    i32 2, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %if.end
  %call24 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* bitcast (%struct.PluginValues* @pvals to i8*))
  %call25 = call i32 @dlg_run()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %27)
  br label %return

if.end.28:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end
  %28 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %28, 14
  br i1 %cmp, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %sw.bb.29
  store i32 1, i32* %status, align 4
  br label %if.end.68

if.else.32:                                       ; preds = %sw.bb.29
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 3
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data34 to i8**
  %30 = load i8*, i8** %d_string, align 8
  call void @gflare_name_copy(i8* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 10, i32 0), i8* %30)
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 4
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_int3237 = bitcast %union._GimpParamData* %data36 to i32*
  %32 = load i32, i32* %d_int3237, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 5
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_int3240 = bitcast %union._GimpParamData* %data39 to i32*
  %34 = load i32, i32* %d_int3240, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 6
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data42 to double*
  %36 = load double, double* %d_float, align 8
  store double %36, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 2), align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 7
  %data44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 1
  %d_float45 = bitcast %union._GimpParamData* %data44 to double*
  %38 = load double, double* %d_float45, align 8
  store double %38, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 3), align 8
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 8
  %data47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx46, i32 0, i32 1
  %d_float48 = bitcast %union._GimpParamData* %data47 to double*
  %40 = load double, double* %d_float48, align 8
  store double %40, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 4), align 8
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 9
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_float51 = bitcast %union._GimpParamData* %data50 to double*
  %42 = load double, double* %d_float51, align 8
  store double %42, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 5), align 8
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 10
  %data53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx52, i32 0, i32 1
  %d_float54 = bitcast %union._GimpParamData* %data53 to double*
  %44 = load double, double* %d_float54, align 8
  store double %44, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 6), align 8
  %45 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %45, i64 11
  %data56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx55, i32 0, i32 1
  %d_int3257 = bitcast %union._GimpParamData* %data56 to i32*
  %46 = load i32, i32* %d_int3257, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 7), align 4
  %47 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %47, i64 12
  %data59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx58, i32 0, i32 1
  %d_int3260 = bitcast %union._GimpParamData* %data59 to i32*
  %48 = load i32, i32* %d_int3260, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 8), align 4
  %49 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %49, i64 13
  %data62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx61, i32 0, i32 1
  %d_float63 = bitcast %union._GimpParamData* %data62 to double*
  %50 = load double, double* %d_float63, align 8
  store double %50, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 9), align 8
  %51 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 2), align 8
  %cmp64 = fcmp ole double %51, 0.000000e+00
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.else.32
  store i32 1, i32* %status, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.else.32
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.31
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end
  %call70 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* bitcast (%struct.PluginValues* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.69, %if.end.68, %if.end.28
  %52 = load i32, i32* %status, align 4
  %cmp71 = icmp eq i32 %52, 3
  br i1 %cmp71, label %if.then.73, label %if.end.96

if.then.73:                                       ; preds = %sw.epilog
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id74 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 0
  %54 = load i32, i32* %drawable_id74, align 4
  %call75 = call i32 @gimp_drawable_is_rgb(i32 %54)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.73
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id77 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 0
  %56 = load i32, i32* %drawable_id77, align 4
  %call78 = call i32 @gimp_drawable_is_gray(i32 %56)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.93

if.then.80:                                       ; preds = %lor.lhs.false, %if.then.73
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0)) #4
  %call82 = call i32 @gimp_progress_init(i8* %call81)
  call void @plugin_do()
  %57 = load i32, i32* %run_mode, align 4
  %cmp83 = icmp ne i32 %57, 1
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.80
  %call86 = call i32 @gimp_displays_flush()
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.80
  %58 = load i32, i32* %run_mode, align 4
  %cmp88 = icmp eq i32 %58, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.87
  %call91 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* bitcast (%struct.PluginValues* @pvals to i8*), i32 320)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.end.87
  br label %if.end.95

if.else.93:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  %59 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %59, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @plugin_run.values, i32 0, i64 1, i32 0), align 4
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0)) #4
  store i8* %call94, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @plugin_run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.end.92
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %sw.epilog
  %60 = load i32, i32* %status, align 4
  store i32 %60, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @plugin_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  call void @gradient_free()
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %61)
  br label %return

return:                                           ; preds = %if.end.96, %if.then.27
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

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

; Function Attrs: nounwind uwtable
define internal void @gradient_init() #0 {
entry:
  store %struct._GradientCacheItem* null, %struct._GradientCacheItem** @gradient_cache_head, align 8
  store i32 0, i32* @gradient_cache_count, align 4
  ret void
}

declare i8* @gimp_gimprc_query(i8*) #1

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare noalias i8* @gimp_personal_rc_file(i8*) #1

declare noalias i8* @gimp_config_build_data_path(i8*) #1

declare noalias i8* @g_strescape(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gflares_list_load_all() #0 {
entry:
  call void @gflares_list_free_all()
  %0 = load i8*, i8** @gflare_path, align 8
  call void @gimp_datafiles_read_directories(i8* %0, i32 16, void (%struct._GimpDatafileData*, i8*)* @gflares_list_load_one, i8* null)
  ret void
}

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dlg_run() #0 {
entry:
  %shell = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  store i32 0, i32* %run, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), i32 1)
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 120)
  %0 = bitcast i8* %call to %struct.GFlareDialog*
  store %struct.GFlareDialog* %0, %struct.GFlareDialog** @dlg, align 8
  %1 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %1, i32 0, i32 0
  store i32 1, i32* %init, align 4
  %2 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %update_preview = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %2, i32 0, i32 5
  store i32 1, i32* %update_preview, align 4
  call void @gradient_menu_init()
  call void @dlg_setup_gflare()
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  %cmp = icmp ne %struct._GList* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 2348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.dlg_run, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %4 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %4, i32 0, i32 1
  %5 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %cmp2 = icmp ne %struct.GFlare* %5, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 2349, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.dlg_run, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0)) #8
  unreachable

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %6 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare8 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %6, i32 0, i32 1
  %7 = load %struct.GFlare*, %struct.GFlare** %gflare8, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %cmp9 = icmp ne i8* %8, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %do.body.7
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 2350, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.dlg_run, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0)) #8
  unreachable

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0)) #4
  %call15 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 -5, i8* null)
  %9 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell16 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %9, i32 0, i32 2
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %shell16, align 8
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %shell, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_dialog_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call17)
  %12 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %12, i32 -5, i32 -6, i32 -1)
  %call19 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %hbox, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_container_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call20)
  %15 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %15, i32 12)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_dialog_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call22)
  %18 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkDialog*
  %call24 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %18)
  %19 = bitcast %struct._GtkWidget* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_box_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call25)
  %20 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %vbox, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call28)
  %25 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %call30 = call %struct._GtkWidget* @gtk_alignment_new(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %abox, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call31)
  %30 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 1, i32 1, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call33 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %frame, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_frame_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call34)
  %35 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %35, i32 1)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_container_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call36)
  %38 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkContainer*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %38, %struct._GtkWidget* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call38 = call %struct._Preview* @preview_new(i32 256, i32 256, i32 (%struct._Preview*, i8*)* @dlg_preview_init_func, i8* null, void (%struct._Preview*, i8*, i32, i8*)* @dlg_preview_render_func, i8* null, void (%struct._Preview*, i8*)* @dlg_preview_deinit_func, i8* null)
  %41 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %41, i32 0, i32 3
  store %struct._Preview* %call38, %struct._Preview** %preview, align 8
  %42 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview39 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %42, i32 0, i32 3
  %43 = load %struct._Preview*, %struct._Preview** %preview39, align 8
  %widget = getelementptr inbounds %struct._Preview, %struct._Preview* %43, i32 0, i32 0
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_widget_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call40)
  %46 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %46, i32 258)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call42)
  %49 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %50 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview44 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %50, i32 0, i32 3
  %51 = load %struct._Preview*, %struct._Preview** %preview44, align 8
  %widget45 = getelementptr inbounds %struct._Preview, %struct._Preview* %51, i32 0, i32 0
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget45, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %52)
  %53 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview46 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %53, i32 0, i32 3
  %54 = load %struct._Preview*, %struct._Preview** %preview46, align 8
  %widget47 = getelementptr inbounds %struct._Preview, %struct._Preview* %54, i32 0, i32 0
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget47, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @dlg_preview_realize to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %57 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview49 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %57, i32 0, i32 3
  %58 = load %struct._Preview*, %struct._Preview** %preview49, align 8
  %widget50 = getelementptr inbounds %struct._Preview, %struct._Preview* %58, i32 0, i32 0
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %widget50, align 8
  %60 = bitcast %struct._GtkWidget* %59 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @dlg_preview_handle_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  call void @dlg_preview_calc_window()
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0)) #4
  %call53 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %button, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_toggle_button_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call54)
  %63 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkToggleButton*
  %64 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %update_preview56 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %64, i32 0, i32 5
  %65 = load i32, i32* %update_preview56, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %63, i32 %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call57)
  %68 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %73 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %update_preview59 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %73, i32 0, i32 5
  %74 = bitcast i32* %update_preview59 to i8*
  %call60 = call i64 @g_signal_connect_data(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_update_preview_callback to void ()*), i8* %74, void (i8*, %struct._GClosure*)* null, i32 0)
  %call61 = call %struct._GtkWidget* @gtk_notebook_new()
  %75 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %notebook62 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %75, i32 0, i32 6
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %notebook62, align 8
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %notebook, align 8
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call63)
  %78 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %78, %struct._GtkWidget* %79, i32 1, i32 1, i32 0)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %80)
  %81 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @dlg_make_page_settings(%struct.GFlareDialog* %81, %struct._GtkWidget* %82)
  %83 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @dlg_make_page_selector(%struct.GFlareDialog* %83, %struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init65 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %86, i32 0, i32 0
  store i32 0, i32* %init65, align 4
  call void @dlg_preview_update()
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_dialog_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call66)
  %89 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpDialog*
  %call68 = call i32 @gimp_dialog_run(%struct._GimpDialog* %89)
  %cmp69 = icmp eq i32 %call68, -5
  br i1 %cmp69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %do.end.13
  %90 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare71 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %90, i32 0, i32 1
  %91 = load %struct.GFlare*, %struct.GFlare** %gflare71, align 8
  %name72 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %91, i32 0, i32 0
  %92 = load i8*, i8** %name72, align 8
  call void @gflare_name_copy(i8* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 10, i32 0), i8* %92)
  store i32 1, i32* %run, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %do.end.13
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %93)
  %94 = load i32, i32* %run, align 4
  ret i32 %94
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @gflare_name_copy(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %call = call i8* @strncpy(i8* %0, i8* %1, i64 256) #4
  %2 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 255
  store i8 0, i8* %arrayidx, align 1
  ret void
}

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @plugin_do() #0 {
entry:
  %gflare = alloca %struct.GFlare*, align 8
  %call = call %struct.GFlare* @gflares_list_lookup(i8* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 10, i32 0))
  store %struct.GFlare* %call, %struct.GFlare** %gflare, align 8
  %0 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %cmp = icmp eq %struct.GFlare* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 10, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 2), align 8
  %5 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 3), align 8
  %6 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 4), align 8
  %7 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 5), align 8
  %8 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 6), align 8
  call void @calc_init_params(%struct.GFlare* %1, i32 7, double %conv, double %conv1, double %4, double %5, double %6, double %7, double %8)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %call2 = call i32 @calc_init_progress()
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 7), align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %while.end
  call void @plugin_do_asupsample()
  br label %if.end.5

if.else:                                          ; preds = %while.end
  call void @plugin_do_non_asupsample()
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %call6 = call i32 @gimp_progress_update(double 1.000000e+00)
  call void @calc_deinit()
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %10)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_merge_shadow(i32 %12, i32 1)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 4), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), align 4
  %sub = sub nsw i32 %17, %18
  %19 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 5), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), align 4
  %sub9 = sub nsw i32 %19, %20
  %call10 = call i32 @gimp_drawable_update(i32 %14, i32 %15, i32 %16, i32 %sub, i32 %sub9)
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_free() #0 {
entry:
  call void @gradient_cache_flush()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gflares_list_free_all() #0 {
entry:
  %0 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  call void @g_list_free_full(%struct._GList* %0, void (i8*)* bitcast (void (%struct.GFlare*)* @gflare_free to void (i8*)*))
  store %struct._GList* null, %struct._GList** @gflares_list, align 8
  ret void
}

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gflares_list_load_one(%struct._GimpDatafileData* %file_data, i8* %user_data) #0 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %0, i32 0, i32 0
  %1 = load i8*, i8** %filename, align 8
  %2 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %basename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %2, i32 0, i32 2
  %3 = load i8*, i8** %basename, align 8
  %call = call %struct.GFlare* @gflare_load(i8* %1, i8* %3)
  store %struct.GFlare* %call, %struct.GFlare** %gflare, align 8
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %tobool = icmp ne %struct.GFlare* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %call1 = call i32 @gflares_list_insert(%struct.GFlare* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gflare_free(%struct.GFlare* %gflare) #0 {
entry:
  %gflare.addr = alloca %struct.GFlare*, align 8
  store %struct.GFlare* %gflare, %struct.GFlare** %gflare.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %cmp = icmp ne %struct.GFlare* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.gflare_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %filename = getelementptr inbounds %struct.GFlare, %struct.GFlare* %3, i32 0, i32 1
  %4 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %4)
  %5 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %6 = bitcast %struct.GFlare* %5 to i8*
  call void @g_free(i8* %6)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.GFlare* @gflare_load(i8* %filename, i8* %name) #0 {
entry:
  %retval = alloca %struct.GFlare*, align 8
  %filename.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gf = alloca %struct.GFlareFile*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %header = alloca [256 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.gflare_load, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0))
  store %struct.GFlare* null, %struct.GFlare** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0)) #4
  %3 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call4 = call i32* @__errno_location() #7
  %4 = load i32, i32* %call4, align 4
  %call5 = call i8* @g_strerror(i32 %4) #7
  call void (i8*, ...) @g_message(i8* %call2, i8* %call3, i8* %call5)
  store %struct.GFlare* null, %struct.GFlare** %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %header, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %5)
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %header, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0)) #9
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.6
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0)) #4
  %6 = load i8*, i8** %filename.addr, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %6)
  call void (i8*, ...) @g_warning(i8* %call13, i8* %call14)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %7)
  store %struct.GFlare* null, %struct.GFlare** %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %call17 = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %8 = bitcast i8* %call17 to %struct.GFlareFile*
  store %struct.GFlareFile* %8, %struct.GFlareFile** %gf, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  %fp18 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %10, i32 0, i32 0
  store %struct._IO_FILE* %9, %struct._IO_FILE** %fp18, align 8
  %11 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  %error = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %11, i32 0, i32 1
  store i32 0, i32* %error, align 4
  %call19 = call %struct.GFlare* @gflare_new()
  store %struct.GFlare* %call19, %struct.GFlare** %gflare, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %call20 = call noalias i8* @g_strdup(i8* %12)
  %13 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name21 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %13, i32 0, i32 0
  store i8* %call20, i8** %name21, align 8
  %14 = load i8*, i8** %filename.addr, align 8
  %call22 = call noalias i8* @g_strdup(i8* %14)
  %15 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %filename23 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %15, i32 0, i32 1
  store i8* %call22, i8** %filename23, align 8
  %16 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %16, i32 0, i32 2
  %17 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %glow_opacity, %struct.GFlareFile* %17)
  %18 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %18, i32 0, i32 3
  %19 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_mode(i32* %glow_mode, %struct.GFlareFile* %19)
  %20 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %20, i32 0, i32 4
  %21 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %rays_opacity, %struct.GFlareFile* %21)
  %22 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %22, i32 0, i32 5
  %23 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_mode(i32* %rays_mode, %struct.GFlareFile* %23)
  %24 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %24, i32 0, i32 6
  %25 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %sflare_opacity, %struct.GFlareFile* %25)
  %26 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %26, i32 0, i32 7
  %27 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_mode(i32* %sflare_mode, %struct.GFlareFile* %27)
  %28 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %28, i32 0, i32 8
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_radial, i32 0, i32 0
  %29 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay24, %struct.GFlareFile* %29)
  %30 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_angular = getelementptr inbounds %struct.GFlare, %struct.GFlare* %30, i32 0, i32 9
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular, i32 0, i32 0
  %31 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay25, %struct.GFlareFile* %31)
  %32 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_angular_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %32, i32 0, i32 10
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular_size, i32 0, i32 0
  %33 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay26, %struct.GFlareFile* %33)
  %34 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %34, i32 0, i32 11
  %35 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %glow_size, %struct.GFlareFile* %35)
  %36 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %36, i32 0, i32 12
  %37 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %glow_rotation, %struct.GFlareFile* %37)
  %38 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %38, i32 0, i32 13
  %39 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %glow_hue, %struct.GFlareFile* %39)
  %40 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %40, i32 0, i32 14
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_radial, i32 0, i32 0
  %41 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay27, %struct.GFlareFile* %41)
  %42 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_angular = getelementptr inbounds %struct.GFlare, %struct.GFlare* %42, i32 0, i32 15
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular, i32 0, i32 0
  %43 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay28, %struct.GFlareFile* %43)
  %44 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_angular_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %44, i32 0, i32 16
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular_size, i32 0, i32 0
  %45 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay29, %struct.GFlareFile* %45)
  %46 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %46, i32 0, i32 17
  %47 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %rays_size, %struct.GFlareFile* %47)
  %48 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %48, i32 0, i32 18
  %49 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %rays_rotation, %struct.GFlareFile* %49)
  %50 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %50, i32 0, i32 19
  %51 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %rays_hue, %struct.GFlareFile* %51)
  %52 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_nspikes = getelementptr inbounds %struct.GFlare, %struct.GFlare* %52, i32 0, i32 20
  %53 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_int(i32* %rays_nspikes, %struct.GFlareFile* %53)
  %54 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_thickness = getelementptr inbounds %struct.GFlare, %struct.GFlare* %54, i32 0, i32 21
  %55 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %rays_thickness, %struct.GFlareFile* %55)
  %56 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %56, i32 0, i32 22
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_radial, i32 0, i32 0
  %57 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay30, %struct.GFlareFile* %57)
  %58 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_sizefac = getelementptr inbounds %struct.GFlare, %struct.GFlare* %58, i32 0, i32 23
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_sizefac, i32 0, i32 0
  %59 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay31, %struct.GFlareFile* %59)
  %60 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_probability = getelementptr inbounds %struct.GFlare, %struct.GFlare* %60, i32 0, i32 24
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_probability, i32 0, i32 0
  %61 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_gradient_name(i8* %arraydecay32, %struct.GFlareFile* %61)
  %62 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %62, i32 0, i32 25
  %63 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %sflare_size, %struct.GFlareFile* %63)
  %64 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %64, i32 0, i32 27
  %65 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %sflare_hue, %struct.GFlareFile* %65)
  %66 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %66, i32 0, i32 26
  %67 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_double(double* %sflare_rotation, %struct.GFlareFile* %67)
  %68 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_shape = getelementptr inbounds %struct.GFlare, %struct.GFlare* %68, i32 0, i32 28
  %69 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_shape(i32* %sflare_shape, %struct.GFlareFile* %69)
  %70 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_nverts = getelementptr inbounds %struct.GFlare, %struct.GFlare* %70, i32 0, i32 29
  %71 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_int(i32* %sflare_nverts, %struct.GFlareFile* %71)
  %72 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_seed = getelementptr inbounds %struct.GFlare, %struct.GFlare* %72, i32 0, i32 30
  %73 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  call void @gflare_read_int(i32* %sflare_seed, %struct.GFlareFile* %73)
  %74 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_seed33 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %74, i32 0, i32 30
  %75 = load i32, i32* %sflare_seed33, align 4
  %cmp34 = icmp eq i32 %75, 0
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.16
  %call36 = call i32 @g_random_int()
  %76 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_seed37 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %76, i32 0, i32 30
  store i32 %call36, i32* %sflare_seed37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.16
  %77 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  %fp39 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %77, i32 0, i32 0
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp39, align 8
  %call40 = call i32 @fclose(%struct._IO_FILE* %78)
  %79 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  %error41 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %79, i32 0, i32 1
  %80 = load i32, i32* %error41, align 4
  %tobool42 = icmp ne i32 %80, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.38
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0)) #4
  %81 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @g_warning(i8* %call44, i8* %81)
  %82 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %83 = bitcast %struct.GFlare* %82 to i8*
  call void @g_free(i8* %83)
  %84 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  %85 = bitcast %struct.GFlareFile* %84 to i8*
  call void @g_free(i8* %85)
  store %struct.GFlare* null, %struct.GFlare** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.38
  %86 = load %struct.GFlareFile*, %struct.GFlareFile** %gf, align 8
  %87 = bitcast %struct.GFlareFile* %86 to i8*
  call void @g_free(i8* %87)
  %88 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  store %struct.GFlare* %88, %struct.GFlare** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.43, %if.then.12, %if.then.1, %if.else
  %89 = load %struct.GFlare*, %struct.GFlare** %retval
  ret %struct.GFlare* %89
}

; Function Attrs: nounwind uwtable
define internal i32 @gflares_list_insert(%struct.GFlare* %gflare) #0 {
entry:
  %gflare.addr = alloca %struct.GFlare*, align 8
  store %struct.GFlare* %gflare, %struct.GFlare** %gflare.addr, align 8
  %0 = load i32, i32* @num_gflares, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @num_gflares, align 4
  %1 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  %2 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %3 = bitcast %struct.GFlare* %2 to i8*
  %call = call %struct._GList* @g_list_insert_sorted(%struct._GList* %1, i8* %3, i32 (i8*, i8*)* bitcast (i32 (%struct.GFlare*, %struct.GFlare*)* @gflare_compare to i32 (i8*, i8*)*))
  store %struct._GList* %call, %struct._GList** @gflares_list, align 8
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %call1 = call i32 @gflares_list_index(%struct.GFlare* %4)
  ret i32 %call1
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.GFlare* @gflare_new() #0 {
entry:
  %gflare = alloca %struct.GFlare*, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 2472)
  %0 = bitcast i8* %call to %struct.GFlare*
  store %struct.GFlare* %0, %struct.GFlare** %gflare, align 8
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %1, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %2 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %filename = getelementptr inbounds %struct.GFlare, %struct.GFlare* %2, i32 0, i32 1
  store i8* null, i8** %filename, align 8
  %3 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  ret %struct.GFlare* %3
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gflare_read_double(double* %dblvar, %struct.GFlareFile* %gf) #0 {
entry:
  %dblvar.addr = alloca double*, align 8
  %gf.addr = alloca %struct.GFlareFile*, align 8
  %buf = alloca [31 x i8], align 16
  store double* %dblvar, double** %dblvar.addr, align 8
  store %struct.GFlareFile* %gf, %struct.GFlareFile** %gf.addr, align 8
  %0 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %0, i32 0, i32 1
  %1 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %2 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [31 x i8], [31 x i8]* %buf, i32 0, i32 0
  %call3 = call double @g_ascii_strtod(i8* %arraydecay2, i8** null)
  %4 = load double*, double** %dblvar.addr, align 8
  store double %call3, double* %4, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %5 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error4 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %5, i32 0, i32 1
  store i32 1, i32* %error4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then, %if.else, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gflare_read_mode(i32* %mode, %struct.GFlareFile* %gf) #0 {
entry:
  %mode.addr = alloca i32*, align 8
  %gf.addr = alloca %struct.GFlareFile*, align 8
  %tmp = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  store i32* %mode, i32** %mode.addr, align 8
  store %struct.GFlareFile* %gf, %struct.GFlareFile** %gf.addr, align 8
  %0 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %0, i32 0, i32 1
  %1 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @gflare_modes, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call5 = call i32 @strcmp(i8* %arraydecay4, i8* %6) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32*, i32** %mode.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %10 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error10 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %10, i32 0, i32 1
  store i32 1, i32* %error10, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gflare_read_gradient_name(i8* %name, %struct.GFlareFile* %gf) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %gf.addr = alloca %struct.GFlareFile*, align 8
  %tmp = alloca [1024 x i8], align 16
  %dec = alloca [1024 x i8], align 16
  store i8* %name, i8** %name.addr, align 8
  store %struct.GFlareFile* %gf, %struct.GFlareFile** %gf.addr, align 8
  %0 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %0, i32 0, i32 1
  %1 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.7

if.end:                                           ; preds = %entry
  %2 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dec, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i32 0, i32 0
  call void @gradient_name_decode(i8* %arraydecay3, i8* %arraydecay4)
  %4 = load i8*, i8** %name.addr, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dec, i32 0, i32 0
  call void @gradient_name_copy(i8* %4, i8* %arraydecay5)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %5 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error6 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %5, i32 0, i32 1
  store i32 1, i32* %error6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then, %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gflare_read_int(i32* %intvar, %struct.GFlareFile* %gf) #0 {
entry:
  %intvar.addr = alloca i32*, align 8
  %gf.addr = alloca %struct.GFlareFile*, align 8
  store i32* %intvar, i32** %intvar.addr, align 8
  store %struct.GFlareFile* %gf, %struct.GFlareFile** %gf.addr, align 8
  %0 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %0, i32 0, i32 1
  %1 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.3

if.end:                                           ; preds = %entry
  %2 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %4 = load i32*, i32** %intvar.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32* %4)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error2 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %5, i32 0, i32 1
  store i32 1, i32* %error2, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then, %if.then.1, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gflare_read_shape(i32* %shape, %struct.GFlareFile* %gf) #0 {
entry:
  %shape.addr = alloca i32*, align 8
  %gf.addr = alloca %struct.GFlareFile*, align 8
  %tmp = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  store i32* %shape, i32** %shape.addr, align 8
  store %struct.GFlareFile* %gf, %struct.GFlareFile** %gf.addr, align 8
  %0 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %0, i32 0, i32 1
  %1 = load i32, i32* %error, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %arraydecay)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tmp, i32 0, i32 0
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* @gflare_shapes, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call5 = call i32 @strcmp(i8* %arraydecay4, i8* %6) #9
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32*, i32** %shape.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %10 = load %struct.GFlareFile*, %struct.GFlareFile** %gf.addr, align 8
  %error10 = getelementptr inbounds %struct.GFlareFile, %struct.GFlareFile* %10, i32 0, i32 1
  store i32 1, i32* %error10, align 4
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  ret void
}

declare i32 @g_random_int() #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_name_decode(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %cnt = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 255, i32* %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %cnt, align 4
  %tobool1 = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv2, 92
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %add.ptr, align 1
  %conv4 = sext i8 %7 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %src.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %add.ptr7, align 1
  %conv8 = sext i8 %9 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %add.ptr11, align 1
  %conv12 = sext i8 %11 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.10
  %12 = load i8*, i8** %src.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %12, i64 1
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32* %tmp) #4
  %13 = load i32, i32* %tmp, align 4
  %conv15 = trunc i32 %13 to i8
  %14 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %conv15, i8* %14, align 1
  %15 = load i8*, i8** %src.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr16, i8** %src.addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true, %while.body
  %16 = load i8*, i8** %src.addr, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr17, i8** %src.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %dest.addr, align 8
  store i8 %17, i8* %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load i8*, i8** %dest.addr, align 8
  store i8 0, i8* %19, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_name_copy(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %call = call i8* @strncpy(i8* %0, i8* %1, i64 256) #4
  %2 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 255
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gflare_compare(%struct.GFlare* %flare1, %struct.GFlare* %flare2) #0 {
entry:
  %flare1.addr = alloca %struct.GFlare*, align 8
  %flare2.addr = alloca %struct.GFlare*, align 8
  store %struct.GFlare* %flare1, %struct.GFlare** %flare1.addr, align 8
  store %struct.GFlare* %flare2, %struct.GFlare** %flare2.addr, align 8
  %0 = load %struct.GFlare*, %struct.GFlare** %flare1.addr, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.GFlare*, %struct.GFlare** %flare2.addr, align 8
  %name1 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  %call = call i32 @strcmp(i8* %1, i8* %3) #9
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gflares_list_index(%struct.GFlare* %gflare) #0 {
entry:
  %gflare.addr = alloca %struct.GFlare*, align 8
  store %struct.GFlare* %gflare, %struct.GFlare** %gflare.addr, align 8
  %0 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %2 = bitcast %struct.GFlare* %1 to i8*
  %call = call i32 @g_list_index(%struct._GList* %0, i8* %2)
  ret i32 %call
}

declare i32 @g_list_index(%struct._GList*, i8*) #1

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_menu_init() #0 {
entry:
  call void @gm_gradient_get_list()
  store %struct._GList* null, %struct._GList** @gradient_menus, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_setup_gflare() #0 {
entry:
  %call = call %struct.GFlare* @gflares_list_lookup(i8* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 10, i32 0))
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 1
  store %struct.GFlare* %call, %struct.GFlare** %gflare, align 8
  %1 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare1 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %1, i32 0, i32 1
  %2 = load %struct.GFlare*, %struct.GFlare** %gflare1, align 8
  %tobool = icmp ne %struct.GFlare* %2, null
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct.GFlare* @gflares_list_lookup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0))
  %3 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare3 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %3, i32 0, i32 1
  store %struct.GFlare* %call2, %struct.GFlare** %gflare3, align 8
  %4 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare4 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %4, i32 0, i32 1
  %5 = load %struct.GFlare*, %struct.GFlare** %gflare4, align 8
  %tobool5 = icmp ne %struct.GFlare* %5, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i32 0, i32 0)) #4
  call void (i8*, ...) @g_warning(i8* %call7)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0)) #4
  %call9 = call %struct.GFlare* @gflare_new_with_default(i8* %call8)
  %6 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare10 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %6, i32 0, i32 1
  store %struct.GFlare* %call9, %struct.GFlare** %gflare10, align 8
  %7 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare11 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %7, i32 0, i32 1
  %8 = load %struct.GFlare*, %struct.GFlare** %gflare11, align 8
  %call12 = call i32 @gflares_list_insert(%struct.GFlare* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_alignment_new(float, float, float, float) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal %struct._Preview* @preview_new(i32 %width, i32 %height, i32 (%struct._Preview*, i8*)* %init_func, i8* %init_data, void (%struct._Preview*, i8*, i32, i8*)* %render_func, i8* %render_data, void (%struct._Preview*, i8*)* %deinit_func, i8* %deinit_data) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %init_func.addr = alloca i32 (%struct._Preview*, i8*)*, align 8
  %init_data.addr = alloca i8*, align 8
  %render_func.addr = alloca void (%struct._Preview*, i8*, i32, i8*)*, align 8
  %render_data.addr = alloca i8*, align 8
  %deinit_func.addr = alloca void (%struct._Preview*, i8*)*, align 8
  %deinit_data.addr = alloca i8*, align 8
  %preview = alloca %struct._Preview*, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 (%struct._Preview*, i8*)* %init_func, i32 (%struct._Preview*, i8*)** %init_func.addr, align 8
  store i8* %init_data, i8** %init_data.addr, align 8
  store void (%struct._Preview*, i8*, i32, i8*)* %render_func, void (%struct._Preview*, i8*, i32, i8*)** %render_func.addr, align 8
  store i8* %render_data, i8** %render_data.addr, align 8
  store void (%struct._Preview*, i8*)* %deinit_func, void (%struct._Preview*, i8*)** %deinit_func.addr, align 8
  store i8* %deinit_data, i8** %deinit_data.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 104)
  %0 = bitcast i8* %call to %struct._Preview*
  store %struct._Preview* %0, %struct._Preview** %preview, align 8
  %call1 = call %struct._GtkWidget* @gimp_preview_area_new()
  %1 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %widget = getelementptr inbounds %struct._Preview, %struct._Preview* %1, i32 0, i32 0
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %2 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %widget2 = getelementptr inbounds %struct._Preview, %struct._Preview* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget2, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %3, i32 %4, i32 %5)
  %6 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %widget3 = getelementptr inbounds %struct._Preview, %struct._Preview* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %width4 = getelementptr inbounds %struct._Preview, %struct._Preview* %9, i32 0, i32 1
  store i32 %8, i32* %width4, align 4
  %10 = load i32, i32* %height.addr, align 4
  %11 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %height5 = getelementptr inbounds %struct._Preview, %struct._Preview* %11, i32 0, i32 2
  store i32 %10, i32* %height5, align 4
  %12 = load i32 (%struct._Preview*, i8*)*, i32 (%struct._Preview*, i8*)** %init_func.addr, align 8
  %13 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %init_func6 = getelementptr inbounds %struct._Preview, %struct._Preview* %13, i32 0, i32 3
  store i32 (%struct._Preview*, i8*)* %12, i32 (%struct._Preview*, i8*)** %init_func6, align 8
  %14 = load i8*, i8** %init_data.addr, align 8
  %15 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %init_data7 = getelementptr inbounds %struct._Preview, %struct._Preview* %15, i32 0, i32 4
  store i8* %14, i8** %init_data7, align 8
  %16 = load void (%struct._Preview*, i8*, i32, i8*)*, void (%struct._Preview*, i8*, i32, i8*)** %render_func.addr, align 8
  %17 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %render_func8 = getelementptr inbounds %struct._Preview, %struct._Preview* %17, i32 0, i32 5
  store void (%struct._Preview*, i8*, i32, i8*)* %16, void (%struct._Preview*, i8*, i32, i8*)** %render_func8, align 8
  %18 = load i8*, i8** %render_data.addr, align 8
  %19 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %render_data9 = getelementptr inbounds %struct._Preview, %struct._Preview* %19, i32 0, i32 6
  store i8* %18, i8** %render_data9, align 8
  %20 = load void (%struct._Preview*, i8*)*, void (%struct._Preview*, i8*)** %deinit_func.addr, align 8
  %21 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %deinit_func10 = getelementptr inbounds %struct._Preview, %struct._Preview* %21, i32 0, i32 7
  store void (%struct._Preview*, i8*)* %20, void (%struct._Preview*, i8*)** %deinit_func10, align 8
  %22 = load i8*, i8** %deinit_data.addr, align 8
  %23 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %deinit_data11 = getelementptr inbounds %struct._Preview, %struct._Preview* %23, i32 0, i32 8
  store i8* %22, i8** %deinit_data11, align 8
  %24 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %idle_tag = getelementptr inbounds %struct._Preview, %struct._Preview* %24, i32 0, i32 10
  store i32 0, i32* %idle_tag, align 4
  %25 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %25, 3
  %conv = sext i32 %mul to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  %26 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %buffer = getelementptr inbounds %struct._Preview, %struct._Preview* %26, i32 0, i32 14
  store i8* %call12, i8** %buffer, align 8
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  %mul13 = mul nsw i32 %27, %28
  %mul14 = mul nsw i32 %mul13, 3
  %conv15 = sext i32 %mul14 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 1)
  %29 = load %struct._Preview*, %struct._Preview** %preview, align 8
  %full_image_buffer = getelementptr inbounds %struct._Preview, %struct._Preview* %29, i32 0, i32 15
  store i8* %call16, i8** %full_image_buffer, align 8
  %30 = load %struct._Preview*, %struct._Preview** %preview, align 8
  ret %struct._Preview* %30
}

; Function Attrs: nounwind uwtable
define internal i32 @dlg_preview_init_func(%struct._Preview* %preview, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %preview.addr = alloca %struct._Preview*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init_params_done = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 11
  %1 = load i32, i32* %init_params_done, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %2, i32 0, i32 1
  %3 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %conv1 = sitofp i32 %5 to double
  %6 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 2), align 8
  %7 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 3), align 8
  %8 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 4), align 8
  %9 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 5), align 8
  %10 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 6), align 8
  call void @calc_init_params(%struct.GFlare* %3, i32 7, double %conv, double %conv1, double %6, double %7, double %8, double %9, double %10)
  %11 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init_params_done2 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %11, i32 0, i32 11
  store i32 1, i32* %init_params_done2, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @calc_init_progress()
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @dlg_preview_render_func(%struct._Preview* %preview, i8* %dest, i32 %y, i8* %data) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  %dest.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %x = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %src_row = alloca i8*, align 8
  %src = alloca i8*, align 8
  %src_pix = alloca [4 x i8], align 1
  %dest_pix = alloca [4 x i8], align 1
  %b = alloca i32, align 4
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 4
  %y0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin, i32 0, i32 1
  %1 = load double, double* %y0, align 8
  %2 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin1 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %2, i32 0, i32 4
  %y1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin1, i32 0, i32 3
  %3 = load double, double* %y1, align 8
  %4 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin2 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %4, i32 0, i32 4
  %y03 = getelementptr inbounds %struct.anon, %struct.anon* %pwin2, i32 0, i32 1
  %5 = load double, double* %y03, align 8
  %sub = fsub double %3, %5
  %6 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double %sub, %conv
  %div = fdiv double %mul, 2.560000e+02
  %add = fadd double %1, %div
  %conv4 = fptosi double %add to i32
  store i32 %conv4, i32* %dy, align 4
  %7 = load i32, i32* %dy, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %dy, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  %cmp6 = icmp uge i32 %8, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i8*, i8** %dest.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %11, i8 -128, i64 768, i32 1, i1 false)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 3
  %13 = load i32, i32* %bpp, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 1
  %15 = load i32, i32* %width, align 4
  %mul8 = mul i32 %13, %15
  %conv9 = zext i32 %mul8 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv9, i64 1)
  store i8* %call, i8** %src_row, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width10, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height11, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %16, i32 0, i32 0, i32 %18, i32 %20, i32 0, i32 0)
  %21 = load i8*, i8** %src_row, align 8
  %22 = load i32, i32* %dy, align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 1
  %24 = load i32, i32* %width12, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %21, i32 0, i32 %22, i32 %24)
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end
  %25 = load i32, i32* %x, align 4
  %cmp13 = icmp slt i32 %25, 256
  br i1 %cmp13, label %for.body, label %for.end.72

for.body:                                         ; preds = %for.cond
  %26 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin15 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %26, i32 0, i32 4
  %x0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin15, i32 0, i32 0
  %27 = load double, double* %x0, align 8
  %28 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin16 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %28, i32 0, i32 4
  %x1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin16, i32 0, i32 2
  %29 = load double, double* %x1, align 8
  %30 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin17 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %30, i32 0, i32 4
  %x018 = getelementptr inbounds %struct.anon, %struct.anon* %pwin17, i32 0, i32 0
  %31 = load double, double* %x018, align 8
  %sub19 = fsub double %29, %31
  %32 = load i32, i32* %x, align 4
  %conv20 = sitofp i32 %32 to double
  %mul21 = fmul double %sub19, %conv20
  %div22 = fdiv double %mul21, 2.560000e+02
  %add23 = fadd double %27, %div22
  %conv24 = fptosi double %add23 to i32
  store i32 %conv24, i32* %dx, align 4
  %33 = load i32, i32* %dx, align 4
  %cmp25 = icmp slt i32 %33, 0
  br i1 %cmp25, label %if.then.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %for.body
  %34 = load i32, i32* %dx, align 4
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 1
  %36 = load i32, i32* %width28, align 4
  %cmp29 = icmp uge i32 %34, %36
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %lor.lhs.false.27, %for.body
  store i32 0, i32* %b, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.31
  %37 = load i32, i32* %b, align 4
  %cmp33 = icmp slt i32 %37, 3
  br i1 %cmp33, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %38 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 -128, i8* %38, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %39 = load i32, i32* %b, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %for.inc.70

if.end.36:                                        ; preds = %lor.lhs.false.27
  %40 = load i32, i32* %dx, align 4
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 3
  %42 = load i32, i32* %bpp37, align 4
  %mul38 = mul i32 %40, %42
  %idxprom = zext i32 %mul38 to i64
  %43 = load i8*, i8** %src_row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 %idxprom
  store i8* %arrayidx, i8** %src, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.51, %if.end.36
  %44 = load i32, i32* %b, align 4
  %cmp40 = icmp slt i32 %44, 3
  br i1 %cmp40, label %for.body.42, label %for.end.53

for.body.42:                                      ; preds = %for.cond.39
  %45 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.42
  %46 = load i32, i32* %b, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load i8*, i8** %src, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %47, i64 %idxprom43
  %48 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %48 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.42
  %49 = load i8*, i8** %src, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %50 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv45, %cond.true ], [ %conv47, %cond.false ]
  %conv48 = trunc i32 %cond to i8
  %51 = load i32, i32* %b, align 4
  %idxprom49 = sext i32 %51 to i64
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i64 %idxprom49
  store i8 %conv48, i8* %arrayidx50, align 1
  br label %for.inc.51

for.inc.51:                                       ; preds = %cond.end
  %52 = load i32, i32* %b, align 4
  %inc52 = add nsw i32 %52, 1
  store i32 %inc52, i32* %b, align 4
  br label %for.cond.39

for.end.53:                                       ; preds = %for.cond.39
  %53 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 1), align 4
  %tobool54 = icmp ne i32 %53, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.61

cond.true.55:                                     ; preds = %for.end.53
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp56 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %54, i32 0, i32 3
  %55 = load i32, i32* %bpp56, align 4
  %sub57 = sub i32 %55, 1
  %idxprom58 = zext i32 %sub57 to i64
  %56 = load i8*, i8** %src, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 %idxprom58
  %57 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %57 to i32
  br label %cond.end.62

cond.false.61:                                    ; preds = %for.end.53
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.55
  %cond63 = phi i32 [ %conv60, %cond.true.55 ], [ 255, %cond.false.61 ]
  %conv64 = trunc i32 %cond63 to i8
  %arrayidx65 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i64 3
  store i8 %conv64, i8* %arrayidx65, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i32 0
  %58 = load i32, i32* %dx, align 4
  %conv66 = sitofp i32 %58 to double
  %59 = load i32, i32* %dy, align 4
  %conv67 = sitofp i32 %59 to double
  %arraydecay68 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i32 0
  call void @calc_gflare_pix(i8* %arraydecay, double %conv66, double %conv67, i8* %arraydecay68)
  %60 = load i8*, i8** %dest.addr, align 8
  %61 = load i32, i32* %x, align 4
  %62 = load i32, i32* %y.addr, align 4
  %arraydecay69 = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i32 0
  call void @preview_rgba_to_rgb(i8* %60, i32 %61, i32 %62, i8* %arraydecay69)
  %63 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %cond.end.62, %for.end
  %64 = load i32, i32* %x, align 4
  %inc71 = add nsw i32 %64, 1
  store i32 %inc71, i32* %x, align 4
  br label %for.cond

for.end.72:                                       ; preds = %for.cond
  %65 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %65)
  br label %return

return:                                           ; preds = %for.end.72, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_preview_deinit_func(%struct._Preview* %preview, i8* %data) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init_params_done = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 11
  %1 = load i32, i32* %init_params_done, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @calc_deinit()
  %2 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init_params_done1 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %2, i32 0, i32 11
  store i32 1, i32* %init_params_done1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_preview_realize(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %1, i32 34)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %3 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call2, %struct._GdkCursor* %3)
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dlg_preview_handle_event(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %3, %struct._GdkEventButton** %bevent, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 4
  %5 = load double, double* %x1, align 8
  %conv = fptosi double %5 to i32
  store i32 %conv, i32* %bx, align 4
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y2 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 5
  %7 = load double, double* %y2, align 8
  %conv3 = fptosi double %7 to i32
  store i32 %conv3, i32* %by, align 4
  %8 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %8, i32 0, i32 4
  %x0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin, i32 0, i32 0
  %9 = load double, double* %x0, align 8
  %10 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin4 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %10, i32 0, i32 4
  %x15 = getelementptr inbounds %struct.anon, %struct.anon* %pwin4, i32 0, i32 2
  %11 = load double, double* %x15, align 8
  %12 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin6 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %12, i32 0, i32 4
  %x07 = getelementptr inbounds %struct.anon, %struct.anon* %pwin6, i32 0, i32 0
  %13 = load double, double* %x07, align 8
  %sub = fsub double %11, %13
  %14 = load i32, i32* %bx, align 4
  %conv8 = sitofp i32 %14 to double
  %mul = fmul double %sub, %conv8
  %div = fdiv double %mul, 2.560000e+02
  %add = fadd double %9, %div
  %conv9 = fptosi double %add to i32
  store i32 %conv9, i32* %x, align 4
  %15 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin10 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %15, i32 0, i32 4
  %y0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin10, i32 0, i32 1
  %16 = load double, double* %y0, align 8
  %17 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin11 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %17, i32 0, i32 4
  %y1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin11, i32 0, i32 3
  %18 = load double, double* %y1, align 8
  %19 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin12 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %19, i32 0, i32 4
  %y013 = getelementptr inbounds %struct.anon, %struct.anon* %pwin12, i32 0, i32 1
  %20 = load double, double* %y013, align 8
  %sub14 = fsub double %18, %20
  %21 = load i32, i32* %by, align 4
  %conv15 = sitofp i32 %21 to double
  %mul16 = fmul double %sub14, %conv15
  %div17 = fdiv double %mul16, 2.560000e+02
  %add18 = fadd double %16, %div17
  %conv19 = fptosi double %add18 to i32
  store i32 %conv19, i32* %y, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %cmp = icmp ne i32 %22, %23
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %cmp21 = icmp ne i32 %24, %25
  br i1 %cmp21, label %if.then, label %if.end.36

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %cmp23 = icmp ne i32 %26, %27
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then
  %28 = load i32, i32* %x, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %29 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %sizeentry = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %29, i32 0, i32 7
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpSizeEntry*
  %33 = load i32, i32* %x, align 4
  %conv27 = sitofp i32 %33 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %32, i32 0, double %conv27)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then
  %34 = load i32, i32* %y, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %cmp28 = icmp ne i32 %34, %35
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end
  %36 = load i32, i32* %y, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %37 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %sizeentry31 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %37, i32 0, i32 7
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry31, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_size_entry_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call32)
  %40 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpSizeEntry*
  %41 = load i32, i32* %y, align 4
  %conv34 = sitofp i32 %41 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %40, i32 1, double %conv34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end
  call void @dlg_preview_update()
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.36
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @dlg_preview_calc_window() #0 {
entry:
  %is_wide = alloca i32, align 4
  %offx = alloca double, align 8
  %offy = alloca double, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %conv = uitofp i32 %1 to double
  %mul = fmul double 2.560000e+02, %conv
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  %conv1 = uitofp i32 %3 to double
  %mul2 = fmul double 2.560000e+02, %conv1
  %cmp = fcmp oge double %mul, %mul2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %is_wide, align 4
  %4 = load i32, i32* %is_wide, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load i32, i32* %width4, align 4
  %conv5 = uitofp i32 %6 to double
  %mul6 = fmul double %conv5, 2.560000e+02
  %div = fdiv double %mul6, 2.560000e+02
  %div7 = fdiv double %div, 2.000000e+00
  store double %div7, double* %offy, align 8
  %7 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %7, i32 0, i32 4
  %x0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin, i32 0, i32 0
  store double 0.000000e+00, double* %x0, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width8, align 4
  %conv9 = uitofp i32 %9 to double
  %10 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin10 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %10, i32 0, i32 4
  %x1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin10, i32 0, i32 2
  store double %conv9, double* %x1, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height11, align 4
  %conv12 = uitofp i32 %12 to double
  %div13 = fdiv double %conv12, 2.000000e+00
  %13 = load double, double* %offy, align 8
  %sub = fsub double %div13, %13
  %14 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin14 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %14, i32 0, i32 4
  %y0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin14, i32 0, i32 1
  store double %sub, double* %y0, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height15, align 4
  %conv16 = uitofp i32 %16 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  %17 = load double, double* %offy, align 8
  %add = fadd double %div17, %17
  %18 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin18 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %18, i32 0, i32 4
  %y1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin18, i32 0, i32 3
  store double %add, double* %y1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height19, align 4
  %conv20 = uitofp i32 %20 to double
  %mul21 = fmul double %conv20, 2.560000e+02
  %div22 = fdiv double %mul21, 2.560000e+02
  %div23 = fdiv double %div22, 2.000000e+00
  store double %div23, double* %offx, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width24, align 4
  %conv25 = uitofp i32 %22 to double
  %div26 = fdiv double %conv25, 2.000000e+00
  %23 = load double, double* %offx, align 8
  %sub27 = fsub double %div26, %23
  %24 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin28 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %24, i32 0, i32 4
  %x029 = getelementptr inbounds %struct.anon, %struct.anon* %pwin28, i32 0, i32 0
  store double %sub27, double* %x029, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load i32, i32* %width30, align 4
  %conv31 = uitofp i32 %26 to double
  %div32 = fdiv double %conv31, 2.000000e+00
  %27 = load double, double* %offx, align 8
  %add33 = fadd double %div32, %27
  %28 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin34 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %28, i32 0, i32 4
  %x135 = getelementptr inbounds %struct.anon, %struct.anon* %pwin34, i32 0, i32 2
  store double %add33, double* %x135, align 8
  %29 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin36 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %29, i32 0, i32 4
  %y037 = getelementptr inbounds %struct.anon, %struct.anon* %pwin36, i32 0, i32 1
  store double 0.000000e+00, double* %y037, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height38, align 4
  %conv39 = uitofp i32 %31 to double
  %32 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin40 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %32, i32 0, i32 4
  %y141 = getelementptr inbounds %struct.anon, %struct.anon* %pwin40, i32 0, i32 3
  store double %conv39, double* %y141, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_update_preview_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @dlg_preview_update()
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

; Function Attrs: nounwind uwtable
define internal void @dlg_make_page_settings(%struct.GFlareDialog* %dlg, %struct._GtkWidget* %notebook) #0 {
entry:
  %dlg.addr = alloca %struct.GFlareDialog*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %center = alloca %struct._GtkWidget*, align 8
  %chain = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %asup_table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %row = alloca i32, align 4
  store %struct.GFlareDialog* %dlg, %struct.GFlareDialog** %dlg.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %main_vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %8 = load i32, i32* @image_ID, align 4
  %call7 = call i32 @gimp_image_get_resolution(i32 %8, double* %xres, double* %yres)
  %9 = load i32, i32* @image_ID, align 4
  %call8 = call i32 @gimp_image_get_unit(i32 %9)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0)) #4
  %10 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %10 to double
  %11 = load double, double* %xres, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_width(i32 %13)
  %conv11 = sitofp i32 %call10 to double
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0)) #4
  %14 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %conv13 = sitofp i32 %14 to double
  %15 = load double, double* %yres, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_height(i32 %17)
  %conv16 = sitofp i32 %call15 to double
  %call17 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %call8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i32 1, i32 1, i32 75, i32 1, i32 0, i32 0, i8* %call9, double %conv, double %11, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, double %conv11, i8* %call12, double %conv13, double %15, double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, double %conv16)
  %18 = load %struct.GFlareDialog*, %struct.GFlareDialog** %dlg.addr, align 8
  %sizeentry = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %18, i32 0, i32 7
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %sizeentry, align 8
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %center, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %center, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %call19 = call i8* @g_object_get_data(%struct._GObject* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0))
  %22 = bitcast i8* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  store %struct._GtkWidget* %23, %struct._GtkWidget** %chain, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %center, align 8
  call void @gtk_container_add(%struct._GtkContainer* %26, %struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %center, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_position_entry_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %center, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @dlg_position_entry_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %chain, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %center, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0)) #4
  %call27 = call %struct._GtkWidget* @gimp_frame_new(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %frame, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call28)
  %36 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call30 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 3, i32 0)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %table, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call31)
  %41 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %41, i32 6)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_table_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call33)
  %44 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %44, i32 6)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call35)
  %47 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  store i32 0, i32* %row, align 4
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call37)
  %52 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  %53 = load i32, i32* %row, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %row, align 4
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0)) #4
  %54 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 2), align 8
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 1
  %56 = load i32, i32* %width, align 4
  %div = udiv i32 %56, 2
  %conv40 = uitofp i32 %div to double
  %call41 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %52, i32 0, i32 %53, i8* %call39, i32 80, i32 6, double %54, double 0.000000e+00, double %conv40, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 0.000000e+00, double 2.621440e+05, i8* null, i8* null)
  store %struct._GtkObject* %call41, %struct._GtkObject** %adj, align 8
  %57 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %58 = bitcast %struct._GtkObject* %57 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = bitcast %struct._GtkObject* %59 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @dlg_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_table_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call44)
  %63 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkTable*
  %64 = load i32, i32* %row, align 4
  %inc46 = add nsw i32 %64, 1
  store i32 %inc46, i32* %row, align 4
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0)) #4
  %65 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 3), align 8
  %call48 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %63, i32 0, i32 %64, i8* %call47, i32 80, i32 6, double %65, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call48, %struct._GtkObject** %adj, align 8
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %69 = bitcast %struct._GtkObject* %68 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @dlg_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call51)
  %72 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %73 = load i32, i32* %row, align 4
  %inc53 = add nsw i32 %73, 1
  store i32 %inc53, i32* %row, align 4
  %call54 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0)) #4
  %74 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 4), align 8
  %call55 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %72, i32 0, i32 %73, i8* %call54, i32 80, i32 6, double %74, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call55, %struct._GtkObject** %adj, align 8
  %75 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %76 = bitcast %struct._GtkObject* %75 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %78 = bitcast %struct._GtkObject* %77 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @dlg_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call58)
  %81 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %82 = load i32, i32* %row, align 4
  %inc60 = add nsw i32 %82, 1
  store i32 %inc60, i32* %row, align 4
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i32 0, i32 0)) #4
  %83 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 5), align 8
  %call62 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %81, i32 0, i32 %82, i8* %call61, i32 80, i32 6, double %83, double 0.000000e+00, double 3.590000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call62, %struct._GtkObject** %adj, align 8
  %84 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %85 = bitcast %struct._GtkObject* %84 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %86 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %87 = bitcast %struct._GtkObject* %86 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @dlg_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_table_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call65)
  %90 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTable*
  %91 = load i32, i32* %row, align 4
  %inc67 = add nsw i32 %91, 1
  store i32 %inc67, i32* %row, align 4
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0)) #4
  %92 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 6), align 8
  %call69 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %90, i32 0, i32 %91, i8* %call68, i32 80, i32 6, double %92, double 1.000000e+00, double 1.000000e+03, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 1.000000e+00, double 2.621440e+05, i8* null, i8* null)
  store %struct._GtkObject* %call69, %struct._GtkObject** %adj, align 8
  %93 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %94 = bitcast %struct._GtkObject* %93 to i8*
  %call70 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %96 = bitcast %struct._GtkObject* %95 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @dlg_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call72 = call %struct._GtkWidget* @gimp_frame_new(i8* null)
  %97 = load %struct.GFlareDialog*, %struct.GFlareDialog** %dlg.addr, align 8
  %asupsample_frame = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %97, i32 0, i32 8
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %asupsample_frame, align 8
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %frame, align 8
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call73)
  %100 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %101, i32 0, i32 0, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i32 0, i32 0)) #4
  %call76 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call75)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %button, align 8
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_toggle_button_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call77)
  %105 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkToggleButton*
  %106 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 7), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %105, i32 %106)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %108 = bitcast %struct._GtkWidget* %107 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_frame_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call79)
  %109 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkFrame*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_frame_set_label_widget(%struct._GtkFrame* %109, %struct._GtkWidget* %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %call81 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %asup_table, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call82)
  %114 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %114, i32 6)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call84)
  %117 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %117, i32 6)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_container_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call86)
  %120 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkContainer*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %120, %struct._GtkWidget* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %124 = bitcast %struct._GtkWidget* %123 to i8*
  %call88 = call i64 @g_signal_connect_data(i8* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 7) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %126 = bitcast %struct._GtkWidget* %125 to i8*
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %call89 = call %struct._GBinding* @g_object_bind_property(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 2)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call90)
  %131 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0)) #4
  %132 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 8), align 4
  %conv93 = sitofp i32 %132 to double
  %call94 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %131, i32 0, i32 0, i8* %call92, i32 -1, i32 4, double %conv93, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call94, %struct._GtkObject** %adj, align 8
  %133 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %134 = bitcast %struct._GtkObject* %133 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 8) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %asup_table, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_table_get_type() #7
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call96)
  %137 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkTable*
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0)) #4
  %138 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 9), align 8
  %call99 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %137, i32 0, i32 1, i8* %call98, i32 -1, i32 4, double %138, double 0.000000e+00, double 4.000000e+00, double 1.000000e-02, double 1.000000e-02, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call99, %struct._GtkObject** %adj, align 8
  %139 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %140 = bitcast %struct._GtkObject* %139 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_notebook_get_type() #7
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call101)
  %143 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkNotebook*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0)) #4
  %call104 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call103)
  %call105 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %143, %struct._GtkWidget* %144, %struct._GtkWidget* %call104)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_make_page_selector(%struct.GFlareDialog* %dlg, %struct._GtkWidget* %notebook) #0 {
entry:
  %dlg.addr = alloca %struct.GFlareDialog*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %listbox = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GtkListStore*, align 8
  %listview = alloca %struct._GtkWidget*, align 8
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  store %struct.GFlareDialog* %dlg, %struct.GFlareDialog** %dlg.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %call3 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %listbox, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %listbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_scrolled_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %5, i32 1, i32 1)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %listbox, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %6, i32 80, i32 40)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %listbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 1, i32 1, i32 0)
  %call8 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 2, i64 64, i64 68)
  %11 = load %struct.GFlareDialog*, %struct.GFlareDialog** %dlg.addr, align 8
  %selector_list = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %11, i32 0, i32 9
  store %struct._GtkListStore* %call8, %struct._GtkListStore** %selector_list, align 8
  store %struct._GtkListStore* %call8, %struct._GtkListStore** %list, align 8
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %list, align 8
  %13 = bitcast %struct._GtkListStore* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_model_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeModel*
  %call11 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %14)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %listview, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %listview, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_tree_view_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %17, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %listbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %listview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %20, %struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %listbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %listview, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_tree_view_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTreeView*
  %call18 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %25)
  %26 = load %struct.GFlareDialog*, %struct.GFlareDialog** %dlg.addr, align 8
  %selection = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %26, i32 0, i32 10
  store %struct._GtkTreeSelection* %call18, %struct._GtkTreeSelection** %selection, align 8
  %27 = load %struct.GFlareDialog*, %struct.GFlareDialog** %dlg.addr, align 8
  %selection19 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %27, i32 0, i32 10
  %28 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection19, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %28, i32 2)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %listview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %30 = load %struct.GFlareDialog*, %struct.GFlareDialog** %dlg.addr, align 8
  %selection20 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %30, i32 0, i32 10
  %31 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection20, align 8
  %32 = bitcast %struct._GtkTreeSelection* %31 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*)* @dlg_selector_list_item_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call22 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call22, %struct._GtkCellRenderer** %renderer, align 8
  %33 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call23 = call %struct._GtkTreeViewColumn* (i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_new_with_attributes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), %struct._GtkCellRenderer* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0), i32 0, i8* null)
  store %struct._GtkTreeViewColumn* %call23, %struct._GtkTreeViewColumn** %column, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %listview, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_view_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeView*
  %37 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call26 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %36, %struct._GtkTreeViewColumn* %37)
  call void @dlg_selector_setup_listbox()
  %call27 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %hbox, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call28)
  %40 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %43 = load i32, i32* %i, align 4
  %conv = sext i32 %43 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.anon.2], [4 x %struct.anon.2]* @dlg_make_page_selector.buttons, i32 0, i64 %idxprom
  %label = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0
  %45 = load i8*, i8** %label, align 8
  %call31 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* %45)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %button, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call32)
  %48 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 1, i32 1, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %53 to i64
  %arrayidx35 = getelementptr inbounds [4 x %struct.anon.2], [4 x %struct.anon.2]* @dlg_make_page_selector.buttons, i32 0, i64 %idxprom34
  %callback = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx35, i32 0, i32 1
  %54 = load void ()*, void ()** %callback, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), void ()* %54, i8* %56, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_notebook_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call37)
  %61 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkNotebook*
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0)) #4
  %call40 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call39)
  %call41 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %61, %struct._GtkWidget* %62, %struct._GtkWidget* %call40)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_preview_update() #0 {
entry:
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 0
  %1 = load i32, i32* %init, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %update_preview = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %2, i32 0, i32 5
  %3 = load i32, i32* %update_preview, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %init_params_done = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %4, i32 0, i32 11
  store i32 0, i32* %init_params_done, align 4
  %5 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %5, i32 0, i32 3
  %6 = load %struct._Preview*, %struct._Preview** %preview, align 8
  call void @preview_render_start(%struct._Preview* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gm_gradient_get_list() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i8**, i8*** @gradient_names, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @num_gradient_names, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** @gradient_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** @gradient_names, align 8
  %8 = bitcast i8** %7 to i8*
  call void @g_free(i8* %8)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @gradient_cache_flush()
  %call = call i8** @gradient_get_list(i32* @num_gradient_names)
  store i8** %call, i8*** @gradient_names, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_cache_flush() #0 {
entry:
  %ci = alloca %struct._GradientCacheItem*, align 8
  %tmp = alloca %struct._GradientCacheItem*, align 8
  %0 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  store %struct._GradientCacheItem* %0, %struct._GradientCacheItem** %ci, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %tobool = icmp ne %struct._GradientCacheItem* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %2, i32 0, i32 0
  %3 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next, align 8
  store %struct._GradientCacheItem* %3, %struct._GradientCacheItem** %tmp, align 8
  %4 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %5 = bitcast %struct._GradientCacheItem* %4 to i8*
  call void @g_free(i8* %5)
  %6 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %tmp, align 8
  store %struct._GradientCacheItem* %6, %struct._GradientCacheItem** %ci, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct._GradientCacheItem* null, %struct._GradientCacheItem** @gradient_cache_head, align 8
  store i32 0, i32* @gradient_cache_count, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8** @gradient_get_list(i32* %num_gradients) #0 {
entry:
  %num_gradients.addr = alloca i32*, align 8
  %gradients = alloca i8**, align 8
  %external_gradients = alloca i8**, align 8
  %external_ngradients = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32* %num_gradients, i32** %num_gradients.addr, align 8
  store i8** null, i8*** %external_gradients, align 8
  store i32 0, i32* %external_ngradients, align 4
  call void @gradient_cache_flush()
  %call = call i8** @gimp_gradients_get_list(i8* null, i32* %external_ngradients)
  store i8** %call, i8*** %external_gradients, align 8
  %0 = load i32, i32* %external_ngradients, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 6, %conv
  %conv1 = trunc i64 %add to i32
  %1 = load i32*, i32** %num_gradients.addr, align 8
  store i32 %conv1, i32* %1, align 4
  %2 = load i32*, i32** %num_gradients.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv2 = sext i32 %3 to i64
  %call3 = call noalias i8* @g_malloc_n(i64 %conv2, i64 8)
  %4 = bitcast i8* %call3 to i8**
  store i8** %4, i8*** %gradients, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %conv4 = sext i32 %5 to i64
  %cmp = icmp ult i64 %conv4, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @internal_gradients, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call6 = call noalias i8* @g_strdup(i8* %7)
  %8 = load i32, i32* %n, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %n, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i8**, i8*** %gradients, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %9, i64 %idxprom7
  store i8* %call6, i8** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.20, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %external_ngradients, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body.13, label %for.end.22

for.body.13:                                      ; preds = %for.cond.10
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i8**, i8*** %external_gradients, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %14, i64 %idxprom14
  %15 = load i8*, i8** %arrayidx15, align 8
  %call16 = call noalias i8* @g_strdup(i8* %15)
  %16 = load i32, i32* %n, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %n, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i8**, i8*** %gradients, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %17, i64 %idxprom18
  store i8* %call16, i8** %arrayidx19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.13
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.10

for.end.22:                                       ; preds = %for.cond.10
  %19 = load i8**, i8*** %gradients, align 8
  ret i8** %19
}

declare i8** @gimp_gradients_get_list(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct.GFlare* @gflares_list_lookup(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %llink = alloca %struct._GList*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GList* @g_list_find_custom(%struct._GList* %0, i8* %1, i32 (i8*, i8*)* bitcast (i32 (%struct.GFlare*, i8*)* @gflare_compare_name to i32 (i8*, i8*)*))
  store %struct._GList* %call, %struct._GList** %llink, align 8
  %2 = load %struct._GList*, %struct._GList** %llink, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GList*, %struct._GList** %llink, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ null, %cond.false ]
  %5 = bitcast i8* %cond to %struct.GFlare*
  ret %struct.GFlare* %5
}

; Function Attrs: nounwind uwtable
define internal %struct.GFlare* @gflare_new_with_default(i8* %new_name) #0 {
entry:
  %new_name.addr = alloca i8*, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  %0 = load i8*, i8** %new_name.addr, align 8
  %call = call %struct.GFlare* @gflare_dup(%struct.GFlare* @default_gflare, i8* %0)
  ret %struct.GFlare* %call
}

declare %struct._GList* @g_list_find_custom(%struct._GList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gflare_compare_name(%struct.GFlare* %flare, i8* %name) #0 {
entry:
  %flare.addr = alloca %struct.GFlare*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.GFlare* %flare, %struct.GFlare** %flare.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.GFlare*, %struct.GFlare** %flare.addr, align 8
  %name1 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %0, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* %2) #9
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal %struct.GFlare* @gflare_dup(%struct.GFlare* %src, i8* %new_name) #0 {
entry:
  %src.addr = alloca %struct.GFlare*, align 8
  %new_name.addr = alloca i8*, align 8
  %dest = alloca %struct.GFlare*, align 8
  store %struct.GFlare* %src, %struct.GFlare** %src.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 2472)
  %0 = bitcast i8* %call to %struct.GFlare*
  store %struct.GFlare* %0, %struct.GFlare** %dest, align 8
  %1 = load %struct.GFlare*, %struct.GFlare** %dest, align 8
  %2 = load %struct.GFlare*, %struct.GFlare** %src.addr, align 8
  %3 = bitcast %struct.GFlare* %1 to i8*
  %4 = bitcast %struct.GFlare* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 2472, i32 8, i1 false)
  %5 = load i8*, i8** %new_name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct.GFlare*, %struct.GFlare** %dest, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %6, i32 0, i32 0
  store i8* %call1, i8** %name, align 8
  %7 = load %struct.GFlare*, %struct.GFlare** %dest, align 8
  %filename = getelementptr inbounds %struct.GFlare, %struct.GFlare* %7, i32 0, i32 1
  store i8* null, i8** %filename, align 8
  %8 = load %struct.GFlare*, %struct.GFlare** %dest, align 8
  ret %struct.GFlare* %8
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @calc_init_params(%struct.GFlare* %gflare, i32 %calc_type, double %xcenter, double %ycenter, double %radius, double %rotation, double %hue, double %vangle, double %vlength) #0 {
entry:
  %gflare.addr = alloca %struct.GFlare*, align 8
  %calc_type.addr = alloca i32, align 4
  %xcenter.addr = alloca double, align 8
  %ycenter.addr = alloca double, align 8
  %radius.addr = alloca double, align 8
  %rotation.addr = alloca double, align 8
  %hue.addr = alloca double, align 8
  %vangle.addr = alloca double, align 8
  %vlength.addr = alloca double, align 8
  store %struct.GFlare* %gflare, %struct.GFlare** %gflare.addr, align 8
  store i32 %calc_type, i32* %calc_type.addr, align 4
  store double %xcenter, double* %xcenter.addr, align 8
  store double %ycenter, double* %ycenter.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store double %rotation, double* %rotation.addr, align 8
  store double %hue, double* %hue.addr, align 8
  store double %vangle, double* %vangle.addr, align 8
  store double %vlength, double* %vlength.addr, align 8
  %0 = load i32, i32* %calc_type.addr, align 4
  store i32 %0, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  store %struct.GFlare* %1, %struct.GFlare** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 2), align 8
  %2 = load double, double* %xcenter.addr, align 8
  store double %2, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %3 = load double, double* %ycenter.addr, align 8
  store double %3, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %4 = load double, double* %radius.addr, align 8
  store double %4, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 5), align 8
  %5 = load double, double* %rotation.addr, align 8
  %mul = fmul double %5, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 6), align 8
  %6 = load double, double* %hue.addr, align 8
  store double %6, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 7), align 8
  %7 = load double, double* %vangle.addr, align 8
  %mul1 = fmul double %7, 0x400921FB54442D18
  %div2 = fdiv double %mul1, 1.800000e+02
  store double %div2, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 8), align 8
  %8 = load double, double* %radius.addr, align 8
  %9 = load double, double* %vlength.addr, align 8
  %mul3 = fmul double %8, %9
  %div4 = fdiv double %mul3, 1.000000e+02
  store double %div4, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 9), align 8
  %10 = load double, double* %radius.addr, align 8
  %11 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %11, i32 0, i32 11
  %12 = load double, double* %glow_size, align 8
  %mul5 = fmul double %10, %12
  %div6 = fdiv double %mul5, 1.000000e+02
  store double %div6, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 15), align 8
  %13 = load double, double* %radius.addr, align 8
  %14 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %14, i32 0, i32 17
  %15 = load double, double* %rays_size, align 8
  %mul7 = fmul double %13, %15
  %div8 = fdiv double %mul7, 1.000000e+02
  store double %div8, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 22), align 8
  %16 = load double, double* %radius.addr, align 8
  %17 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %17, i32 0, i32 25
  %18 = load double, double* %sflare_size, align 8
  %mul9 = fmul double %16, %18
  %div10 = fdiv double %mul9, 1.000000e+02
  store double %div10, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 31), align 8
  %19 = load double, double* %rotation.addr, align 8
  %20 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %20, i32 0, i32 12
  %21 = load double, double* %glow_rotation, align 8
  %add = fadd double %19, %21
  %mul11 = fmul double %add, 0x400921FB54442D18
  %div12 = fdiv double %mul11, 1.800000e+02
  store double %div12, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 16), align 8
  %22 = load double, double* %rotation.addr, align 8
  %23 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %23, i32 0, i32 18
  %24 = load double, double* %rays_rotation, align 8
  %add13 = fadd double %22, %24
  %mul14 = fmul double %add13, 0x400921FB54442D18
  %div15 = fdiv double %mul14, 1.800000e+02
  store double %div15, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 23), align 8
  %25 = load double, double* %rotation.addr, align 8
  %26 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %26, i32 0, i32 26
  %27 = load double, double* %sflare_rotation, align 8
  %add16 = fadd double %25, %27
  %mul17 = fmul double %add16, 0x400921FB54442D18
  %div18 = fdiv double %mul17, 1.800000e+02
  store double %div18, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 32), align 8
  %28 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %28, i32 0, i32 2
  %29 = load double, double* %glow_opacity, align 8
  %mul19 = fmul double %29, 2.550000e+02
  %div20 = fdiv double %mul19, 1.000000e+02
  %conv = fptosi double %div20 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 10), align 4
  %30 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %30, i32 0, i32 4
  %31 = load double, double* %rays_opacity, align 8
  %mul21 = fmul double %31, 2.550000e+02
  %div22 = fdiv double %mul21, 1.000000e+02
  %conv23 = fptosi double %div22 to i32
  store i32 %conv23, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 17), align 4
  %32 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %32, i32 0, i32 6
  %33 = load double, double* %sflare_opacity, align 8
  %mul24 = fmul double %33, 2.550000e+02
  %div25 = fdiv double %mul24, 1.000000e+02
  %conv26 = fptosi double %div25 to i32
  store i32 %conv26, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 26), align 4
  %34 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %35 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 15), align 8
  %sub = fsub double %34, %35
  %sub27 = fsub double %sub, 1.000000e-01
  store double %sub27, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 0), align 8
  %36 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %37 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 15), align 8
  %add28 = fadd double %36, %37
  %add29 = fadd double %add28, 1.000000e-01
  store double %add29, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 2), align 8
  %38 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %39 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 15), align 8
  %sub30 = fsub double %38, %39
  %sub31 = fsub double %sub30, 1.000000e-01
  store double %sub31, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 1), align 8
  %40 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %41 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 15), align 8
  %add32 = fadd double %40, %41
  %add33 = fadd double %add32, 1.000000e-01
  store double %add33, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 3), align 8
  %42 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %43 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 22), align 8
  %sub34 = fsub double %42, %43
  %sub35 = fsub double %sub34, 1.000000e-01
  store double %sub35, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 0), align 8
  %44 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %45 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 22), align 8
  %add36 = fadd double %44, %45
  %add37 = fadd double %add36, 1.000000e-01
  store double %add37, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 2), align 8
  %46 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %47 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 22), align 8
  %sub38 = fsub double %46, %47
  %sub39 = fsub double %sub38, 1.000000e-01
  store double %sub39, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 1), align 8
  %48 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %49 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 22), align 8
  %add40 = fadd double %48, %49
  %add41 = fadd double %add40, 1.000000e-01
  store double %add41, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 3), align 8
  %50 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_thickness = getelementptr inbounds %struct.GFlare, %struct.GFlare* %50, i32 0, i32 21
  %51 = load double, double* %rays_thickness, align 8
  %div42 = fdiv double %51, 1.000000e+02
  %call = call double @log(double %div42) #4
  %call43 = call double @log(double 8.000000e-01) #4
  %div44 = fdiv double %call, %call43
  store double %div44, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 25), align 8
  %52 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_nspikes = getelementptr inbounds %struct.GFlare, %struct.GFlare* %52, i32 0, i32 20
  %53 = load i32, i32* %rays_nspikes, align 4
  %mul45 = mul nsw i32 2, %53
  %conv46 = sitofp i32 %mul45 to double
  %div47 = fdiv double 1.000000e+00, %conv46
  store double %div47, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 24), align 8
  store %struct._GList* null, %struct._GList** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 27), align 8
  %54 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_shape = getelementptr inbounds %struct.GFlare, %struct.GFlare* %54, i32 0, i32 28
  %55 = load i32, i32* %sflare_shape, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 33), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 33), align 4
  %cmp = icmp eq i32 %56, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %57 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_nverts = getelementptr inbounds %struct.GFlare, %struct.GFlare* %57, i32 0, i32 29
  %58 = load i32, i32* %sflare_nverts, align 4
  %mul49 = mul nsw i32 2, %58
  %conv50 = sitofp i32 %mul49 to double
  %div51 = fdiv double 0x401921FB54442D18, %conv50
  store double %div51, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 34), align 8
  %59 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 34), align 8
  %call52 = call double @cos(double %59) #4
  %div53 = fdiv double 1.000000e+00, %call52
  store double %div53, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 35), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 12), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 13), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 14), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 19), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 20), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 21), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 28), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 29), align 8
  store i8* null, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 30), align 8
  store i32 1, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @calc_init_progress() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @calc_sample_one_gradient()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @calc_place_sflare()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @calc_sample_one_gradient() #0 {
entry:
  %retval = alloca i32, align 4
  %gflare = alloca %struct.GFlare*, align 8
  %grad_name = alloca [256 x i8]*, align 8
  %gradient = alloca i8*, align 8
  %hue_deg = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hue = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %0 = load %struct.GFlare*, %struct.GFlare** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 2), align 8
  store %struct.GFlare* %0, %struct.GFlare** %gflare, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.109, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 9
  br i1 %cmp, label %for.body, label %for.end.111

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.anon.1], [9 x %struct.anon.1]* @calc_sample_one_gradient.table, i32 0, i64 %idxprom
  %values = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx, i32 0, i32 0
  %3 = load i8**, i8*** %values, align 8
  %4 = load i8*, i8** %3, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then, label %if.end.108

if.then:                                          ; preds = %for.body
  %5 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %6 = bitcast %struct.GFlare* %5 to i8*
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [9 x %struct.anon.1], [9 x %struct.anon.1]* @calc_sample_one_gradient.table, i32 0, i64 %idxprom4
  %name_offset = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx5, i32 0, i32 1
  %8 = load i32, i32* %name_offset, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %9 = bitcast i8* %add.ptr to [256 x i8]*
  store [256 x i8]* %9, [256 x i8]** %grad_name, align 8
  %call = call noalias i8* @g_malloc_n(i64 1440, i64 1)
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [9 x %struct.anon.1], [9 x %struct.anon.1]* @calc_sample_one_gradient.table, i32 0, i64 %idxprom6
  %values8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx7, i32 0, i32 0
  %11 = load i8**, i8*** %values8, align 8
  store i8* %call, i8** %11, align 8
  store i8* %call, i8** %gradient, align 8
  %12 = load [256 x i8]*, [256 x i8]** %grad_name, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0
  %13 = load i8*, i8** %gradient, align 8
  call void @gradient_get_values(i8* %arraydecay, i8* %13, i32 360)
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [9 x %struct.anon.1], [9 x %struct.anon.1]* @calc_sample_one_gradient.table, i32 0, i64 %idxprom9
  %hue_offset = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx10, i32 0, i32 2
  %15 = load i32, i32* %hue_offset, align 4
  %cmp11 = icmp ne i32 %15, 0
  br i1 %cmp11, label %if.then.13, label %if.end.68

if.then.13:                                       ; preds = %if.then
  %16 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 7), align 8
  %17 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %18 = bitcast %struct.GFlare* %17 to i8*
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [9 x %struct.anon.1], [9 x %struct.anon.1]* @calc_sample_one_gradient.table, i32 0, i64 %idxprom14
  %hue_offset16 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx15, i32 0, i32 2
  %20 = load i32, i32* %hue_offset16, align 4
  %idx.ext17 = sext i32 %20 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %18, i64 %idx.ext17
  %21 = bitcast i8* %add.ptr18 to double*
  %22 = load double, double* %21, align 8
  %add = fadd double %16, %22
  store double %add, double* %hue_deg, align 8
  %23 = load double, double* %hue_deg, align 8
  %div = fdiv double %23, 3.600000e+02
  %mul = fmul double %div, 2.560000e+02
  %conv19 = fptosi double %mul to i32
  %rem = srem i32 %conv19, 256
  store i32 %rem, i32* %hue, align 4
  %24 = load i32, i32* %hue, align 4
  %cmp20 = icmp slt i32 %24, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.13
  %25 = load i32, i32* %hue, align 4
  %add23 = add nsw i32 %25, 256
  store i32 %add23, i32* %hue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.13
  br label %do.body

do.body:                                          ; preds = %if.end
  %26 = load i32, i32* %hue, align 4
  %cmp24 = icmp sle i32 0, %26
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %27 = load i32, i32* %hue, align 4
  %cmp26 = icmp slt i32 %27, 256
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %land.lhs.true
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 1853, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.calc_sample_one_gradient, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0)) #8
  unreachable

if.end.29:                                        ; preds = %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %28 = load i32, i32* %hue, align 4
  %cmp30 = icmp sgt i32 %28, 0
  br i1 %cmp30, label %if.then.32, label %if.end.67

if.then.32:                                       ; preds = %do.end
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.then.32
  %29 = load i32, i32* %j, align 4
  %cmp34 = icmp slt i32 %29, 360
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %30 = load i32, i32* %j, align 4
  %mul37 = mul nsw i32 %30, 4
  %idxprom38 = sext i32 %mul37 to i64
  %31 = load i8*, i8** %gradient, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %idxprom38
  %32 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %32 to i32
  store i32 %conv40, i32* %r, align 4
  %33 = load i32, i32* %j, align 4
  %mul41 = mul nsw i32 %33, 4
  %add42 = add nsw i32 %mul41, 1
  %idxprom43 = sext i32 %add42 to i64
  %34 = load i8*, i8** %gradient, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %34, i64 %idxprom43
  %35 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %35 to i32
  store i32 %conv45, i32* %g, align 4
  %36 = load i32, i32* %j, align 4
  %mul46 = mul nsw i32 %36, 4
  %add47 = add nsw i32 %mul46, 2
  %idxprom48 = sext i32 %add47 to i64
  %37 = load i8*, i8** %gradient, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %37, i64 %idxprom48
  %38 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %38 to i32
  store i32 %conv50, i32* %b, align 4
  call void @gimp_rgb_to_hsv_int(i32* %r, i32* %g, i32* %b)
  %39 = load i32, i32* %r, align 4
  %40 = load i32, i32* %hue, align 4
  %add51 = add nsw i32 %39, %40
  %rem52 = srem i32 %add51, 256
  store i32 %rem52, i32* %r, align 4
  call void @gimp_hsv_to_rgb_int(i32* %r, i32* %g, i32* %b)
  %41 = load i32, i32* %r, align 4
  %conv53 = trunc i32 %41 to i8
  %42 = load i32, i32* %j, align 4
  %mul54 = mul nsw i32 %42, 4
  %idxprom55 = sext i32 %mul54 to i64
  %43 = load i8*, i8** %gradient, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %43, i64 %idxprom55
  store i8 %conv53, i8* %arrayidx56, align 1
  %44 = load i32, i32* %g, align 4
  %conv57 = trunc i32 %44 to i8
  %45 = load i32, i32* %j, align 4
  %mul58 = mul nsw i32 %45, 4
  %add59 = add nsw i32 %mul58, 1
  %idxprom60 = sext i32 %add59 to i64
  %46 = load i8*, i8** %gradient, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %46, i64 %idxprom60
  store i8 %conv57, i8* %arrayidx61, align 1
  %47 = load i32, i32* %b, align 4
  %conv62 = trunc i32 %47 to i8
  %48 = load i32, i32* %j, align 4
  %mul63 = mul nsw i32 %48, 4
  %add64 = add nsw i32 %mul63, 2
  %idxprom65 = sext i32 %add64 to i64
  %49 = load i8*, i8** %gradient, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 %idxprom65
  store i8 %conv62, i8* %arrayidx66, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %50 = load i32, i32* %j, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %if.end.67

if.end.67:                                        ; preds = %for.end, %do.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then
  %51 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %51 to i64
  %arrayidx70 = getelementptr inbounds [9 x %struct.anon.1], [9 x %struct.anon.1]* @calc_sample_one_gradient.table, i32 0, i64 %idxprom69
  %gray = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx70, i32 0, i32 3
  %52 = load i32, i32* %gray, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then.71, label %if.end.107

if.then.71:                                       ; preds = %if.end.68
  store i32 0, i32* %j, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.104, %if.then.71
  %53 = load i32, i32* %j, align 4
  %cmp73 = icmp slt i32 %53, 360
  br i1 %cmp73, label %for.body.75, label %for.end.106

for.body.75:                                      ; preds = %for.cond.72
  %54 = load i8*, i8** %gradient, align 8
  %55 = load i32, i32* %j, align 4
  %mul76 = mul nsw i32 %55, 4
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %54, i64 %idx.ext77
  %arrayidx79 = getelementptr inbounds i8, i8* %add.ptr78, i64 0
  %56 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %56 to i32
  %conv81 = sitofp i32 %conv80 to double
  %mul82 = fmul double %conv81, 2.126000e-01
  %57 = load i8*, i8** %gradient, align 8
  %58 = load i32, i32* %j, align 4
  %mul83 = mul nsw i32 %58, 4
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %57, i64 %idx.ext84
  %arrayidx86 = getelementptr inbounds i8, i8* %add.ptr85, i64 1
  %59 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %59 to i32
  %conv88 = sitofp i32 %conv87 to double
  %mul89 = fmul double %conv88, 7.152000e-01
  %add90 = fadd double %mul82, %mul89
  %60 = load i8*, i8** %gradient, align 8
  %61 = load i32, i32* %j, align 4
  %mul91 = mul nsw i32 %61, 4
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %60, i64 %idx.ext92
  %arrayidx94 = getelementptr inbounds i8, i8* %add.ptr93, i64 2
  %62 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %62 to i32
  %conv96 = sitofp i32 %conv95 to double
  %mul97 = fmul double %conv96, 7.220000e-02
  %add98 = fadd double %add90, %mul97
  %add99 = fadd double %add98, 5.000000e-01
  %conv100 = fptoui double %add99 to i8
  %63 = load i32, i32* %j, align 4
  %mul101 = mul nsw i32 %63, 4
  %idxprom102 = sext i32 %mul101 to i64
  %64 = load i8*, i8** %gradient, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %64, i64 %idxprom102
  store i8 %conv100, i8* %arrayidx103, align 1
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.75
  %65 = load i32, i32* %j, align 4
  %inc105 = add nsw i32 %65, 1
  store i32 %inc105, i32* %j, align 4
  br label %for.cond.72

for.end.106:                                      ; preds = %for.cond.72
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %if.end.68
  store i32 1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %for.body
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %66 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %66, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond

for.end.111:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.111, %if.end.107
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal void @calc_place_sflare() #0 {
entry:
  %gflare = alloca %struct.GFlare*, align 8
  %sflare = alloca %struct.CalcSFlare*, align 8
  %prob = alloca [360 x double], align 16
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  %pos = alloca double, align 8
  %rnd = alloca double, align 8
  %sizefac = alloca double, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and = and i32 %0, 4
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.GFlare*, %struct.GFlare** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 2), align 8
  store %struct.GFlare* %1, %struct.GFlare** %gflare, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 360
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 4
  %idxprom = sext i32 %mul to i64
  %4 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 30), align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %5 to double
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [360 x double], [360 x double]* %prob, i32 0, i64 %idxprom2
  store double %conv, double* %arrayidx3, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [360 x double], [360 x double]* %prob, i32 0, i64 %idxprom4
  %8 = load double, double* %arrayidx5, align 8
  %9 = load double, double* %sum, align 8
  %add = fadd double %9, %8
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load double, double* %sum, align 8
  %cmp6 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  store double 1.000000e+00, double* %sum, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %for.end
  store double 0.000000e+00, double* %sum2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.19, %if.end.9
  %12 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %12, 360
  br i1 %cmp11, label %for.body.13, label %for.end.21

for.body.13:                                      ; preds = %for.cond.10
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [360 x double], [360 x double]* %prob, i32 0, i64 %idxprom14
  %14 = load double, double* %arrayidx15, align 8
  %15 = load double, double* %sum2, align 8
  %add16 = fadd double %15, %14
  store double %add16, double* %sum2, align 8
  %16 = load double, double* %sum2, align 8
  %17 = load double, double* %sum, align 8
  %div = fdiv double %16, %17
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [360 x double], [360 x double]* %prob, i32 0, i64 %idxprom17
  store double %div, double* %arrayidx18, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.13
  %19 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.10

for.end.21:                                       ; preds = %for.cond.10
  %20 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %21 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_seed = getelementptr inbounds %struct.GFlare, %struct.GFlare* %21, i32 0, i32 30
  %22 = load i32, i32* %sflare_seed, align 4
  call void @g_rand_set_seed(%struct._GRand* %20, i32 %22)
  store i32 0, i32* %n, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.83, %for.end.21
  %23 = load i32, i32* %n, align 4
  %cmp23 = icmp slt i32 %23, 30
  br i1 %cmp23, label %for.body.25, label %for.end.85

for.body.25:                                      ; preds = %for.cond.22
  %call26 = call noalias i8* @g_malloc_n(i64 1, i64 56)
  %24 = bitcast i8* %call26 to %struct.CalcSFlare*
  store %struct.CalcSFlare* %24, %struct.CalcSFlare** %sflare, align 8
  %25 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call27 = call double @g_rand_double(%struct._GRand* %25)
  store double %call27, double* %rnd, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.38, %for.body.25
  %26 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %26, 360
  br i1 %cmp29, label %for.body.31, label %for.end.40

for.body.31:                                      ; preds = %for.cond.28
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [360 x double], [360 x double]* %prob, i32 0, i64 %idxprom32
  %28 = load double, double* %arrayidx33, align 8
  %29 = load double, double* %rnd, align 8
  %cmp34 = fcmp oge double %28, %29
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.31
  br label %for.end.40

if.end.37:                                        ; preds = %for.body.31
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %30 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %30, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.28

for.end.40:                                       ; preds = %if.then.36, %for.cond.28
  %31 = load i32, i32* %i, align 4
  %cmp41 = icmp sge i32 %31, 360
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end.40
  store i32 359, i32* %i, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %for.end.40
  %32 = load i32, i32* %i, align 4
  %mul45 = mul nsw i32 %32, 4
  %idxprom46 = sext i32 %mul45 to i64
  %33 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 29), align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 %idxprom46
  %34 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %34 to i32
  %conv49 = sitofp i32 %conv48 to double
  %div50 = fdiv double %conv49, 2.550000e+02
  store double %div50, double* %sizefac, align 8
  %35 = load double, double* %sizefac, align 8
  %call51 = call double @pow(double %35, double 5.000000e+00) #4
  store double %call51, double* %sizefac, align 8
  %36 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %36, 180
  %conv52 = sitofp i32 %sub to double
  %div53 = fdiv double %conv52, 3.600000e+02
  store double %div53, double* %pos, align 8
  %37 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %38 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 8), align 8
  %call54 = call double @cos(double %38) #4
  %39 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 9), align 8
  %mul55 = fmul double %call54, %39
  %40 = load double, double* %pos, align 8
  %mul56 = fmul double %mul55, %40
  %add57 = fadd double %37, %mul56
  %41 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %xcenter = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %41, i32 0, i32 0
  store double %add57, double* %xcenter, align 8
  %42 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %43 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 8), align 8
  %call58 = call double @sin(double %43) #4
  %44 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 9), align 8
  %mul59 = fmul double %call58, %44
  %45 = load double, double* %pos, align 8
  %mul60 = fmul double %mul59, %45
  %sub61 = fsub double %42, %mul60
  %46 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %ycenter = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %46, i32 0, i32 1
  store double %sub61, double* %ycenter, align 8
  %47 = load double, double* %sizefac, align 8
  %48 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 31), align 8
  %mul62 = fmul double %47, %48
  %49 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %radius = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %49, i32 0, i32 2
  store double %mul62, double* %radius, align 8
  %50 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %xcenter63 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %50, i32 0, i32 0
  %51 = load double, double* %xcenter63, align 8
  %52 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %radius64 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %52, i32 0, i32 2
  %53 = load double, double* %radius64, align 8
  %sub65 = fsub double %51, %53
  %sub66 = fsub double %sub65, 1.000000e+00
  %54 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %54, i32 0, i32 3
  %x0 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds, i32 0, i32 0
  store double %sub66, double* %x0, align 8
  %55 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %xcenter67 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %55, i32 0, i32 0
  %56 = load double, double* %xcenter67, align 8
  %57 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %radius68 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %57, i32 0, i32 2
  %58 = load double, double* %radius68, align 8
  %add69 = fadd double %56, %58
  %add70 = fadd double %add69, 1.000000e+00
  %59 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds71 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %59, i32 0, i32 3
  %x1 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds71, i32 0, i32 2
  store double %add70, double* %x1, align 8
  %60 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %ycenter72 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %60, i32 0, i32 1
  %61 = load double, double* %ycenter72, align 8
  %62 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %radius73 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %62, i32 0, i32 2
  %63 = load double, double* %radius73, align 8
  %sub74 = fsub double %61, %63
  %sub75 = fsub double %sub74, 1.000000e+00
  %64 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds76 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %64, i32 0, i32 3
  %y0 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds76, i32 0, i32 1
  store double %sub75, double* %y0, align 8
  %65 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %ycenter77 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %65, i32 0, i32 1
  %66 = load double, double* %ycenter77, align 8
  %67 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %radius78 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %67, i32 0, i32 2
  %68 = load double, double* %radius78, align 8
  %add79 = fadd double %66, %68
  %add80 = fadd double %add79, 1.000000e+00
  %69 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds81 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %69, i32 0, i32 3
  %y1 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds81, i32 0, i32 3
  store double %add80, double* %y1, align 8
  %70 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 27), align 8
  %71 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %72 = bitcast %struct.CalcSFlare* %71 to i8*
  %call82 = call %struct._GList* @g_list_append(%struct._GList* %70, i8* %72)
  store %struct._GList* %call82, %struct._GList** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 27), align 8
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.44
  %73 = load i32, i32* %n, align 4
  %inc84 = add nsw i32 %73, 1
  store i32 %inc84, i32* %n, align 4
  br label %for.cond.22

for.end.85:                                       ; preds = %for.cond.22
  %74 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %74)
  br label %return

return:                                           ; preds = %for.end.85, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_get_values(i8* %gradient_name, i8* %values, i32 %nvalues) #0 {
entry:
  %gradient_name.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  %0 = load i8*, i8** %gradient_name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %gradient_name.addr, align 8
  %3 = load i8*, i8** %values.addr, align 8
  %4 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_values_internal(i8* %2, i8* %3, i32 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %gradient_name.addr, align 8
  %6 = load i8*, i8** %values.addr, align 8
  %7 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_values_external(i8* %5, i8* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_rgb_to_hsv_int(i32*, i32*, i32*) #1

declare void @gimp_hsv_to_rgb_int(i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gradient_get_values_internal(i8* %gradient_name, i8* %values, i32 %nvalues) #0 {
entry:
  %gradient_name.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  %0 = load i8*, i8** %gradient_name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0)) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %values.addr, align 8
  %2 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_blend(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white, i32 0, i32 0), i8* %1, i32 %2)
  br label %if.end.25

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %gradient_name.addr, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0)) #9
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %4 = load i8*, i8** %values.addr, align 8
  %5 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_blend(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white_trans, i32 0, i32 0), i8* %4, i32 %5)
  br label %if.end.24

if.else.4:                                        ; preds = %if.else
  %6 = load i8*, i8** %gradient_name.addr, align 8
  %call5 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0)) #9
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %if.else.4
  %7 = load i8*, i8** %values.addr, align 8
  %8 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_blend(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.red_trans, i32 0, i32 0), i8* %7, i32 %8)
  br label %if.end.23

if.else.8:                                        ; preds = %if.else.4
  %9 = load i8*, i8** %gradient_name.addr, align 8
  %call9 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0)) #9
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %if.else.8
  %10 = load i8*, i8** %values.addr, align 8
  %11 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_blend(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.blue_trans, i32 0, i32 0), i8* %10, i32 %11)
  br label %if.end.22

if.else.12:                                       ; preds = %if.else.8
  %12 = load i8*, i8** %gradient_name.addr, align 8
  %call13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i32 0, i32 0)) #9
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.12
  %13 = load i8*, i8** %values.addr, align 8
  %14 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_blend(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.white, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gradient_get_values_internal.yellow_trans, i32 0, i32 0), i8* %13, i32 %14)
  br label %if.end.21

if.else.16:                                       ; preds = %if.else.12
  %15 = load i8*, i8** %gradient_name.addr, align 8
  %call17 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0)) #9
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %if.else.16
  %16 = load i8*, i8** %values.addr, align 8
  %17 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_random(i8* %16, i32 %17)
  br label %if.end

if.else.20:                                       ; preds = %if.else.16
  %18 = load i8*, i8** %gradient_name.addr, align 8
  %19 = load i8*, i8** %values.addr, align 8
  %20 = load i32, i32* %nvalues.addr, align 4
  call void @gradient_get_default(i8* %18, i8* %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.19
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.7
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.3
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_get_values_external(i8* %gradient_name, i8* %values, i32 %nvalues) #0 {
entry:
  %gradient_name.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  %ci = alloca %struct._GradientCacheItem*, align 8
  %found = alloca i32, align 4
  %pos = alloca double, align 8
  %frac = alloca double, align 8
  %ipos = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %nvalues.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gradient_get_values_external, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.62

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %gradient_name.addr, align 8
  %call = call %struct._GradientCacheItem* @gradient_cache_lookup(i8* %1, i32* %found)
  store %struct._GradientCacheItem* %call, %struct._GradientCacheItem** %ci, align 8
  %2 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %do.end
  %3 = load i8*, i8** %gradient_name.addr, align 8
  %4 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %values2 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1440 x i8], [1440 x i8]* %values2, i32 0, i32 0
  call void @gradient_get_values_real_external(i8* %3, i8* %arraydecay, i32 360, i32 0)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %do.end
  %5 = load i32, i32* %nvalues.addr, align 4
  %cmp4 = icmp eq i32 %5, 360
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.end.3
  %6 = load i8*, i8** %values.addr, align 8
  %7 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %values6 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %7, i32 0, i32 3
  %8 = bitcast [1440 x i8]* %values6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %8, i64 1440, i32 1, i1 false)
  br label %if.end.62

if.else.7:                                        ; preds = %if.end.3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.else.7
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nvalues.addr, align 4
  %cmp8 = icmp slt i32 %9, %10
  br i1 %cmp8, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %nvalues.addr, align 4
  %sub = sub nsw i32 %12, 1
  %conv9 = sitofp i32 %sub to double
  %div = fdiv double %conv, %conv9
  %mul = fmul double %div, 3.590000e+02
  store double %mul, double* %pos, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %for.body
  %13 = load double, double* %pos, align 8
  %cmp11 = fcmp ole double 0.000000e+00, %13
  br i1 %cmp11, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %do.body.10
  %14 = load double, double* %pos, align 8
  %cmp13 = fcmp ole double %14, 3.590000e+02
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true, %do.body.10
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 4901, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gradient_get_values_external, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.84, i32 0, i32 0)) #8
  unreachable

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load double, double* %pos, align 8
  %conv19 = fptosi double %15 to i32
  store i32 %conv19, i32* %ipos, align 4
  %16 = load double, double* %pos, align 8
  %17 = load i32, i32* %ipos, align 4
  %conv20 = sitofp i32 %17 to double
  %sub21 = fsub double %16, %conv20
  store double %sub21, double* %frac, align 8
  %18 = load double, double* %frac, align 8
  %cmp22 = fcmp oeq double %18, 0.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %do.end.18
  %19 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 4, %19
  %idxprom = sext i32 %mul25 to i64
  %20 = load i8*, i8** %values.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %21 = load i32, i32* %ipos, align 4
  %mul26 = mul nsw i32 4, %21
  %idxprom27 = sext i32 %mul26 to i64
  %22 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %values28 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %22, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [1440 x i8], [1440 x i8]* %values28, i32 0, i64 %idxprom27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %arrayidx29, i64 4, i32 1, i1 false)
  br label %if.end.58

if.else.30:                                       ; preds = %do.end.18
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.else.30
  %23 = load i32, i32* %j, align 4
  %cmp32 = icmp slt i32 %23, 4
  br i1 %cmp32, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.31
  %24 = load i32, i32* %ipos, align 4
  %mul35 = mul nsw i32 4, %24
  %25 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul35, %25
  %idxprom36 = sext i32 %add to i64
  %26 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %values37 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %26, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [1440 x i8], [1440 x i8]* %values37, i32 0, i64 %idxprom36
  %27 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %27 to i32
  %conv40 = sitofp i32 %conv39 to double
  %28 = load double, double* %frac, align 8
  %sub41 = fsub double 1.000000e+00, %28
  %mul42 = fmul double %conv40, %sub41
  %29 = load i32, i32* %ipos, align 4
  %add43 = add nsw i32 %29, 1
  %mul44 = mul nsw i32 4, %add43
  %30 = load i32, i32* %j, align 4
  %add45 = add nsw i32 %mul44, %30
  %idxprom46 = sext i32 %add45 to i64
  %31 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %values47 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %31, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [1440 x i8], [1440 x i8]* %values47, i32 0, i64 %idxprom46
  %32 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %32 to i32
  %conv50 = sitofp i32 %conv49 to double
  %33 = load double, double* %frac, align 8
  %mul51 = fmul double %conv50, %33
  %add52 = fadd double %mul42, %mul51
  %conv53 = fptoui double %add52 to i8
  %34 = load i32, i32* %i, align 4
  %mul54 = mul nsw i32 4, %34
  %35 = load i32, i32* %j, align 4
  %add55 = add nsw i32 %mul54, %35
  %idxprom56 = sext i32 %add55 to i64
  %36 = load i8*, i8** %values.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %36, i64 %idxprom56
  store i8 %conv53, i8* %arrayidx57, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.then.24
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %38 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %38, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %for.end.61, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_get_blend(i8* %fg, i8* %bg, i8* %values, i32 %nvalues) #0 {
entry:
  %fg.addr = alloca i8*, align 8
  %bg.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  %x = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %fg, i8** %fg.addr, align 8
  store i8* %bg, i8** %bg.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  %0 = load i8*, i8** %values.addr, align 8
  store i8* %0, i8** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nvalues.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* %nvalues.addr, align 4
  %conv1 = sitofp i32 %4 to double
  %div = fdiv double %conv, %conv1
  store double %div, double* %x, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %5, 4
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %fg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %8 to i32
  %conv7 = sitofp i32 %conv6 to double
  %9 = load double, double* %x, align 8
  %sub = fsub double 1.000000e+00, %9
  %mul = fmul double %conv7, %sub
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i8*, i8** %bg.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %11, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %conv11 = sitofp i32 %conv10 to double
  %13 = load double, double* %x, align 8
  %mul12 = fmul double %conv11, %13
  %add = fadd double %mul, %mul12
  %conv13 = fptoui double %add to i8
  %14 = load i8*, i8** %v, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %v, align 8
  store i8 %conv13, i8* %14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_get_random(i8* %values, i32 %nvalues) #0 {
entry:
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %inten = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  %0 = load i8*, i8** %values.addr, align 8
  store i8* %0, i8** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nvalues.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %call = call i32 @g_random_int_range(i32 0, i32 256)
  store i32 %call, i32* %inten, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %inten, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i8*, i8** %v, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %v, align 8
  store i8 %conv, i8* %5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %7 = load i8*, i8** %v, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %v, align 8
  store i8 -1, i8* %7, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_get_default(i8* %name, i8* %values, i32 %nvalues) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  %e = alloca [3 x double], align 16
  %x = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  %0 = load i8*, i8** %values.addr, align 8
  store i8* %0, i8** %v, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %name.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  %6 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %e, i32 0, i64 %idxprom2
  store double %div, double* %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.23, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nvalues.addr, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body.7, label %for.end.25

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %i, align 4
  %conv8 = sitofp i32 %10 to double
  %11 = load i32, i32* %nvalues.addr, align 4
  %conv9 = sitofp i32 %11 to double
  %div10 = fdiv double %conv8, %conv9
  store double %div10, double* %x, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.19, %for.body.7
  %12 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %12, 3
  br i1 %cmp12, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.11
  %13 = load double, double* %x, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %e, i32 0, i64 %idxprom15
  %15 = load double, double* %arrayidx16, align 8
  %call = call double @pow(double %13, double %15) #4
  %mul = fmul double 2.550000e+02, %call
  %conv17 = fptoui double %mul to i8
  %16 = load i8*, i8** %v, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %v, align 8
  store i8 %conv17, i8* %16, align 1
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.14
  %17 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  %18 = load i8*, i8** %v, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr22, i8** %v, align 8
  store i8 -1, i8* %18, align 1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.21
  %19 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.4

for.end.25:                                       ; preds = %for.cond.4
  ret void
}

declare i32 @g_random_int_range(i32, i32) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define internal %struct._GradientCacheItem* @gradient_cache_lookup(i8* %name, i32* %found) #0 {
entry:
  %retval = alloca %struct._GradientCacheItem*, align 8
  %name.addr = alloca i8*, align 8
  %found.addr = alloca i32*, align 8
  %ci = alloca %struct._GradientCacheItem*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32* %found, i32** %found.addr, align 8
  %0 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  store %struct._GradientCacheItem* %0, %struct._GradientCacheItem** %ci, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %tobool = icmp ne %struct._GradientCacheItem* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %name1 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %name1, i32 0, i32 0
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %arraydecay, i8* %3) #9
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %4, i32 0, i32 0
  %5 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next, align 8
  store %struct._GradientCacheItem* %5, %struct._GradientCacheItem** %ci, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %tobool3 = icmp ne %struct._GradientCacheItem* %6, null
  br i1 %tobool3, label %if.then.4, label %if.else.23

if.then.4:                                        ; preds = %while.end
  %7 = load i32*, i32** %found.addr, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %8, i32 0, i32 1
  %9 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %prev, align 8
  %tobool5 = icmp ne %struct._GradientCacheItem* %9, null
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %10 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %11 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %cmp = icmp eq %struct._GradientCacheItem* %10, %11
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 4977, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gradient_cache_lookup, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i32 0, i32 0)) #8
  unreachable

if.end.8:                                         ; preds = %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %12 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  store %struct._GradientCacheItem* %12, %struct._GradientCacheItem** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.4
  %13 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next10 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %13, i32 0, i32 0
  %14 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next10, align 8
  %15 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev11 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %15, i32 0, i32 1
  %16 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %prev11, align 8
  %next12 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %16, i32 0, i32 0
  store %struct._GradientCacheItem* %14, %struct._GradientCacheItem** %next12, align 8
  %17 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next13 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %17, i32 0, i32 0
  %18 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next13, align 8
  %tobool14 = icmp ne %struct._GradientCacheItem* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.9
  %19 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev16 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %19, i32 0, i32 1
  %20 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %prev16, align 8
  %21 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next17 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %21, i32 0, i32 0
  %22 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next17, align 8
  %prev18 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %22, i32 0, i32 1
  store %struct._GradientCacheItem* %20, %struct._GradientCacheItem** %prev18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.9
  %23 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %24 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next20 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %24, i32 0, i32 0
  store %struct._GradientCacheItem* %23, %struct._GradientCacheItem** %next20, align 8
  %25 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %26 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %prev21 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %26, i32 0, i32 1
  store %struct._GradientCacheItem* %25, %struct._GradientCacheItem** %prev21, align 8
  %27 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  store %struct._GradientCacheItem* %27, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %28 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev22 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %28, i32 0, i32 1
  store %struct._GradientCacheItem* null, %struct._GradientCacheItem** %prev22, align 8
  %29 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  store %struct._GradientCacheItem* %29, %struct._GradientCacheItem** %retval
  br label %return

if.else.23:                                       ; preds = %while.end
  %30 = load i32*, i32** %found.addr, align 8
  store i32 0, i32* %30, align 4
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.26, %if.else.23
  %31 = load i32, i32* @gradient_cache_count, align 4
  %cmp25 = icmp sge i32 %31, 32
  br i1 %cmp25, label %while.body.26, label %while.end.27

while.body.26:                                    ; preds = %while.cond.24
  call void @gradient_cache_zorch()
  br label %while.cond.24

while.end.27:                                     ; preds = %while.cond.24
  %call28 = call noalias i8* @g_malloc_n(i64 1, i64 1712)
  %32 = bitcast i8* %call28 to %struct._GradientCacheItem*
  store %struct._GradientCacheItem* %32, %struct._GradientCacheItem** %ci, align 8
  %33 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %name29 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %33, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %name29, i32 0, i32 0
  %34 = load i8*, i8** %name.addr, align 8
  %call31 = call i8* @strncpy(i8* %arraydecay30, i8* %34, i64 255) #4
  %35 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %36 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next32 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %36, i32 0, i32 0
  store %struct._GradientCacheItem* %35, %struct._GradientCacheItem** %next32, align 8
  %37 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev33 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %37, i32 0, i32 1
  store %struct._GradientCacheItem* null, %struct._GradientCacheItem** %prev33, align 8
  %38 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %tobool34 = icmp ne %struct._GradientCacheItem* %38, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %while.end.27
  %39 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %40 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %prev36 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %40, i32 0, i32 1
  store %struct._GradientCacheItem* %39, %struct._GradientCacheItem** %prev36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %while.end.27
  %41 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  store %struct._GradientCacheItem* %41, %struct._GradientCacheItem** @gradient_cache_head, align 8
  %42 = load i32, i32* @gradient_cache_count, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* @gradient_cache_count, align 4
  %43 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  store %struct._GradientCacheItem* %43, %struct._GradientCacheItem** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.end.19, %do.end
  %44 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %retval
  ret %struct._GradientCacheItem* %44
}

; Function Attrs: nounwind uwtable
define internal void @gradient_get_values_real_external(i8* %gradient_name, i8* %values, i32 %nvalues, i32 %reverse) #0 {
entry:
  %gradient_name.addr = alloca i8*, align 8
  %values.addr = alloca i8*, align 8
  %nvalues.addr = alloca i32, align 4
  %reverse.addr = alloca i32, align 4
  %n_tmp_values = alloca i32, align 4
  %tmp_values = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i8* %values, i8** %values.addr, align 8
  store i32 %nvalues, i32* %nvalues.addr, align 4
  store i32 %reverse, i32* %reverse.addr, align 4
  %0 = load i8*, i8** %gradient_name.addr, align 8
  %1 = load i32, i32* %nvalues.addr, align 4
  %2 = load i32, i32* %reverse.addr, align 4
  %call = call i32 @gimp_gradient_get_uniform_samples(i8* %0, i32 %1, i32 %2, i32* %n_tmp_values, double** %tmp_values)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nvalues.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %5, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %6
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %8 = load double*, double** %tmp_values, align 8
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %mul4 = fmul double %9, 2.550000e+02
  %conv = fptoui double %mul4 to i8
  %10 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 4, %10
  %11 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %mul5, %11
  %idxprom7 = sext i32 %add6 to i64
  %12 = load i8*, i8** %values.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  store i8 %conv, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %15 = load double*, double** %tmp_values, align 8
  %16 = bitcast double* %15 to i8*
  call void @g_free(i8* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_cache_zorch() #0 {
entry:
  %ci = alloca %struct._GradientCacheItem*, align 8
  %0 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** @gradient_cache_head, align 8
  store %struct._GradientCacheItem* %0, %struct._GradientCacheItem** %ci, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %tobool = icmp ne %struct._GradientCacheItem* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %2, i32 0, i32 0
  %3 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next, align 8
  %tobool1 = icmp ne %struct._GradientCacheItem* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next2 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %5, i32 0, i32 0
  %6 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next2, align 8
  store %struct._GradientCacheItem* %6, %struct._GradientCacheItem** %ci, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %tobool3 = icmp ne %struct._GradientCacheItem* %7, null
  br i1 %tobool3, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %next4 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %8, i32 0, i32 0
  %9 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %next4, align 8
  %cmp = icmp eq %struct._GradientCacheItem* %9, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 5017, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gradient_cache_zorch, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %10, i32 0, i32 1
  %11 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %prev, align 8
  %tobool6 = icmp ne %struct._GradientCacheItem* %11, null
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %do.end
  %12 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %prev8 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %12, i32 0, i32 1
  %13 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %prev8, align 8
  %next9 = getelementptr inbounds %struct._GradientCacheItem, %struct._GradientCacheItem* %13, i32 0, i32 0
  store %struct._GradientCacheItem* null, %struct._GradientCacheItem** %next9, align 8
  br label %if.end.11

if.else.10:                                       ; preds = %do.end
  store %struct._GradientCacheItem* null, %struct._GradientCacheItem** @gradient_cache_head, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.7
  %14 = load %struct._GradientCacheItem*, %struct._GradientCacheItem** %ci, align 8
  %15 = bitcast %struct._GradientCacheItem* %14 to i8*
  call void @g_free(i8* %15)
  %16 = load i32, i32* @gradient_cache_count, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* @gradient_cache_count, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %while.end
  ret void
}

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

declare %struct._GRand* @g_rand_new() #1

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

declare double @g_rand_double(%struct._GRand*) #1

; Function Attrs: nounwind
declare double @sin(double) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @g_rand_free(%struct._GRand*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @calc_gflare_pix(i8* %dest_pix, double %x, double %y, i8* %src_pix) #0 {
entry:
  %dest_pix.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %src_pix.addr = alloca i8*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %glow_pix = alloca [4 x i8], align 1
  %rays_pix = alloca [4 x i8], align 1
  %tmp_pix = alloca [4 x i8], align 1
  store i8* %dest_pix, i8** %dest_pix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %src_pix, i8** %src_pix.addr, align 8
  %0 = load %struct.GFlare*, %struct.GFlare** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 2), align 8
  store %struct.GFlare* %0, %struct.GFlare** %gflare, align 8
  %1 = load i8*, i8** %dest_pix.addr, align 8
  %2 = load i8*, i8** %src_pix.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 4, i32 1, i1 false)
  %3 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = bitcast [4 x i8]* %tmp_pix to i8*
  %5 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 4, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %glow_pix, i32 0, i32 0
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %y.addr, align 8
  call void @calc_glow_pix(i8* %arraydecay, double %6, double %7)
  %8 = load i8*, i8** %dest_pix.addr, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_pix, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %glow_pix, i32 0, i32 0
  %9 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 10), align 4
  %10 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %10, i32 0, i32 3
  %11 = load i32, i32* %glow_mode, align 4
  call void @calc_paint_func(i8* %8, i8* %arraydecay1, i8* %arraydecay2, i32 %9, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and3 = and i32 %12, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %13 = bitcast [4 x i8]* %tmp_pix to i8*
  %14 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 4, i32 1, i1 false)
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %rays_pix, i32 0, i32 0
  %15 = load double, double* %x.addr, align 8
  %16 = load double, double* %y.addr, align 8
  call void @calc_rays_pix(i8* %arraydecay6, double %15, double %16)
  %17 = load i8*, i8** %dest_pix.addr, align 8
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_pix, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %rays_pix, i32 0, i32 0
  %18 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 17), align 4
  %19 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %19, i32 0, i32 5
  %20 = load i32, i32* %rays_mode, align 4
  call void @calc_paint_func(i8* %17, i8* %arraydecay7, i8* %arraydecay8, i32 %18, i32 %20)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %21 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and10 = and i32 %21, 4
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %22 = bitcast [4 x i8]* %tmp_pix to i8*
  %23 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 4, i32 1, i1 false)
  %24 = load i8*, i8** %dest_pix.addr, align 8
  %25 = load double, double* %x.addr, align 8
  %26 = load double, double* %y.addr, align 8
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_pix, i32 0, i32 0
  call void @calc_sflare_pix(i8* %24, double %25, double %26, i8* %arraydecay13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @preview_rgba_to_rgb(i8* %dest, i32 %x, i32 %y, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_a = alloca i32, align 4
  %check = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 3
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %src_a, align 4
  %2 = load i32, i32* %src_a, align 4
  %cmp = icmp eq i32 %2, 255
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %b, align 4
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %b, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx4, align 1
  %7 = load i32, i32* %b, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i8*, i8** %dest.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  store i8 %6, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %b, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %10, 8
  %cmp7 = icmp slt i32 %rem, 4
  %conv8 = zext i1 %cmp7 to i32
  %11 = load i32, i32* %y.addr, align 4
  %rem9 = srem i32 %11, 8
  %cmp10 = icmp slt i32 %rem9, 4
  %conv11 = zext i1 %cmp10 to i32
  %xor = xor i32 %conv8, %conv11
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i32 153, i32* %check, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  store i32 102, i32* %check, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.12
  %12 = load i32, i32* %src_a, align 4
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then.16, label %if.else.27

if.then.16:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %if.then.16
  %13 = load i32, i32* %b, align 4
  %cmp18 = icmp slt i32 %13, 3
  br i1 %cmp18, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.17
  %14 = load i32, i32* %check, align 4
  %conv21 = trunc i32 %14 to i8
  %15 = load i32, i32* %b, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %17 = load i32, i32* %b, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, i32* %b, align 4
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  br label %if.end.42

if.else.27:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.39, %if.else.27
  %18 = load i32, i32* %b, align 4
  %cmp29 = icmp slt i32 %18, 3
  br i1 %cmp29, label %for.body.31, label %for.end.41

for.body.31:                                      ; preds = %for.cond.28
  %19 = load i32, i32* %b, align 4
  %idxprom32 = sext i32 %19 to i64
  %20 = load i8*, i8** %src.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %20, i64 %idxprom32
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  %22 = load i32, i32* %src_a, align 4
  %mul = mul nsw i32 %conv34, %22
  %23 = load i32, i32* %check, align 4
  %24 = load i32, i32* %src_a, align 4
  %sub = sub nsw i32 255, %24
  %mul35 = mul nsw i32 %23, %sub
  %add = add nsw i32 %mul, %mul35
  %div = sdiv i32 %add, 255
  %conv36 = trunc i32 %div to i8
  %25 = load i32, i32* %b, align 4
  %idxprom37 = sext i32 %25 to i64
  %26 = load i8*, i8** %dest.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %26, i64 %idxprom37
  store i8 %conv36, i8* %arrayidx38, align 1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.31
  %27 = load i32, i32* %b, align 4
  %inc40 = add nsw i32 %27, 1
  store i32 %inc40, i32* %b, align 4
  br label %for.cond.28

for.end.41:                                       ; preds = %for.cond.28
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %for.end.26
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_glow_pix(i8* %dest_pix, double %x, double %y) #0 {
entry:
  %dest_pix.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %radius = alloca double, align 8
  %angle = alloca double, align 8
  %angular_size = alloca double, align 8
  %radial_pix = alloca [4 x i8], align 1
  %angular_pix = alloca [4 x i8], align 1
  %size_pix = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  store i8* %dest_pix, i8** %dest_pix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and = and i32 %0, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 0), align 8
  %cmp1 = fcmp olt double %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 2), align 8
  %cmp3 = fcmp ogt double %3, %4
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %5 = load double, double* %y.addr, align 8
  %6 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 1), align 8
  %cmp5 = fcmp olt double %5, %6
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %7 = load double, double* %y.addr, align 8
  %8 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 11, i32 3), align 8
  %cmp7 = fcmp ogt double %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %9 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 4, i32 1, i1 false)
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.6
  %10 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %11 = load double, double* %x.addr, align 8
  %sub = fsub double %11, %10
  store double %sub, double* %x.addr, align 8
  %12 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %13 = load double, double* %y.addr, align 8
  %sub8 = fsub double %13, %12
  store double %sub8, double* %y.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %x.addr, align 8
  %mul = fmul double %14, %15
  %16 = load double, double* %y.addr, align 8
  %17 = load double, double* %y.addr, align 8
  %mul9 = fmul double %16, %17
  %add = fadd double %mul, %mul9
  %call = call double @sqrt(double %add) #4
  %18 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 15), align 8
  %div = fdiv double %call, %18
  store double %div, double* %radius, align 8
  %19 = load double, double* %y.addr, align 8
  %sub10 = fsub double -0.000000e+00, %19
  %20 = load double, double* %x.addr, align 8
  %call11 = call double @atan2(double %sub10, double %20) #4
  %21 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 16), align 8
  %add12 = fadd double %call11, %21
  %div13 = fdiv double %add12, 0x401921FB54442D18
  store double %div13, double* %angle, align 8
  %22 = load double, double* %angle, align 8
  %call14 = call double @fmod_positive(double %22, double 1.000000e+00)
  store double %call14, double* %angle, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %size_pix, i32 0, i32 0
  %23 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 14), align 8
  %24 = load double, double* %angle, align 8
  call void @calc_get_gradient(i8* %arraydecay, i8* %23, double %24)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %size_pix, i32 0, i64 0
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %conv15 = sitofp i32 %conv to double
  %div16 = fdiv double %conv15, 2.550000e+02
  store double %div16, double* %angular_size, align 8
  %26 = load double, double* %angular_size, align 8
  %add17 = fadd double %26, 1.000000e-04
  %27 = load double, double* %radius, align 8
  %div18 = fdiv double %27, %add17
  store double %div18, double* %radius, align 8
  %28 = load double, double* %radius, align 8
  %cmp19 = fcmp olt double %28, 0.000000e+00
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.end
  %29 = load double, double* %radius, align 8
  %cmp22 = fcmp ogt double %29, 1.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.end
  %30 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 4, i32 1, i1 false)
  br label %for.end

if.end.25:                                        ; preds = %lor.lhs.false.21
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i32 0
  %31 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 12), align 8
  %32 = load double, double* %radius, align 8
  call void @calc_get_gradient(i8* %arraydecay26, i8* %31, double %32)
  %arraydecay27 = getelementptr inbounds [4 x i8], [4 x i8]* %angular_pix, i32 0, i32 0
  %33 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 13), align 8
  %34 = load double, double* %angle, align 8
  call void @calc_get_gradient(i8* %arraydecay27, i8* %33, double %34)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %35 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %35, 4
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i64 %idxprom
  %37 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %37 to i32
  %38 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %angular_pix, i32 0, i64 %idxprom32
  %39 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %39 to i32
  %mul35 = mul nsw i32 %conv31, %conv34
  %div36 = sdiv i32 %mul35, 255
  %conv37 = trunc i32 %div36 to i8
  %40 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = load i8*, i8** %dest_pix.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 %idxprom38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.24, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_paint_func(i8* %dest, i8* %src1, i8* %src2, i32 %opacity, i32 %mode) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %opacity.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %s = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 %opacity, i32* %opacity.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %s, align 8
  %0 = load i8*, i8** %src2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 3
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %opacity.addr, align 4
  %cmp2 = icmp sle i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %dest.addr, align 8
  %4 = load i8*, i8** %src1.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 4, i32 1, i1 false)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %mode.addr, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i8*, i8** %src2.addr, align 8
  store i8* %6, i8** %s, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %7 = load i8*, i8** %s, align 8
  %8 = load i8*, i8** %src1.addr, align 8
  %9 = load i8*, i8** %src2.addr, align 8
  call void @calc_addition(i8* %7, i8* %8, i8* %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  %10 = load i8*, i8** %s, align 8
  %11 = load i8*, i8** %src1.addr, align 8
  %12 = load i8*, i8** %src2.addr, align 8
  call void @calc_overlay(i8* %10, i8* %11, i8* %12)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %13 = load i8*, i8** %s, align 8
  %14 = load i8*, i8** %src1.addr, align 8
  %15 = load i8*, i8** %src2.addr, align 8
  call void @calc_screen(i8* %13, i8* %14, i8* %15)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %16 = load i8*, i8** %src2.addr, align 8
  store i8* %16, i8** %s, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  %17 = load i8*, i8** %dest.addr, align 8
  %18 = load i8*, i8** %src1.addr, align 8
  %19 = load i8*, i8** %s, align 8
  %20 = load i32, i32* %opacity.addr, align 4
  call void @calc_combine(i8* %17, i8* %18, i8* %19, i32 %20)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_rays_pix(i8* %dest_pix, double %x, double %y) #0 {
entry:
  %dest_pix.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %radius = alloca double, align 8
  %angle = alloca double, align 8
  %angular_size = alloca double, align 8
  %spike_frac = alloca double, align 8
  %spike_inten = alloca double, align 8
  %spike_angle = alloca double, align 8
  %radial_pix = alloca [4 x i8], align 1
  %angular_pix = alloca [4 x i8], align 1
  %size_pix = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  store i8* %dest_pix, i8** %dest_pix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and = and i32 %0, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 0), align 8
  %cmp1 = fcmp olt double %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 2), align 8
  %cmp3 = fcmp ogt double %3, %4
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %5 = load double, double* %y.addr, align 8
  %6 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 1), align 8
  %cmp5 = fcmp olt double %5, %6
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %7 = load double, double* %y.addr, align 8
  %8 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 18, i32 3), align 8
  %cmp7 = fcmp ogt double %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %9 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 4, i32 1, i1 false)
  br label %return

if.end:                                           ; preds = %lor.lhs.false.6
  %10 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 3), align 8
  %11 = load double, double* %x.addr, align 8
  %sub = fsub double %11, %10
  store double %sub, double* %x.addr, align 8
  %12 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 4), align 8
  %13 = load double, double* %y.addr, align 8
  %sub8 = fsub double %13, %12
  store double %sub8, double* %y.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %x.addr, align 8
  %mul = fmul double %14, %15
  %16 = load double, double* %y.addr, align 8
  %17 = load double, double* %y.addr, align 8
  %mul9 = fmul double %16, %17
  %add = fadd double %mul, %mul9
  %call = call double @sqrt(double %add) #4
  %18 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 22), align 8
  %div = fdiv double %call, %18
  store double %div, double* %radius, align 8
  %19 = load double, double* %y.addr, align 8
  %sub10 = fsub double -0.000000e+00, %19
  %20 = load double, double* %x.addr, align 8
  %call11 = call double @atan2(double %sub10, double %20) #4
  %21 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 23), align 8
  %add12 = fadd double %call11, %21
  %div13 = fdiv double %add12, 0x401921FB54442D18
  store double %div13, double* %angle, align 8
  %22 = load double, double* %angle, align 8
  %call14 = call double @fmod_positive(double %22, double 1.000000e+00)
  store double %call14, double* %angle, align 8
  %23 = load double, double* %angle, align 8
  %24 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 24), align 8
  %mul15 = fmul double %24, 2.000000e+00
  %call16 = call double @fmod(double %23, double %mul15) #4
  store double %call16, double* %spike_frac, align 8
  %25 = load double, double* %angle, align 8
  %26 = load double, double* %spike_frac, align 8
  %sub17 = fsub double %25, %26
  %27 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 24), align 8
  %add18 = fadd double %sub17, %27
  store double %add18, double* %spike_angle, align 8
  %28 = load double, double* %angle, align 8
  %29 = load double, double* %spike_angle, align 8
  %sub19 = fsub double %28, %29
  %30 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 24), align 8
  %div20 = fdiv double %sub19, %30
  store double %div20, double* %spike_frac, align 8
  %31 = load double, double* %spike_frac, align 8
  %call21 = call double @fabs(double %31) #7
  %sub22 = fsub double 1.000000e+00, %call21
  %32 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 25), align 8
  %call23 = call double @pow(double %sub22, double %32) #4
  store double %call23, double* %spike_inten, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %size_pix, i32 0, i32 0
  %33 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 21), align 8
  %34 = load double, double* %spike_angle, align 8
  call void @calc_get_gradient(i8* %arraydecay, i8* %33, double %34)
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %size_pix, i32 0, i64 0
  %35 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %35 to i32
  %conv24 = sitofp i32 %conv to double
  %div25 = fdiv double %conv24, 2.550000e+02
  store double %div25, double* %angular_size, align 8
  %36 = load double, double* %angular_size, align 8
  %add26 = fadd double %36, 1.000000e-04
  %37 = load double, double* %radius, align 8
  %div27 = fdiv double %37, %add26
  store double %div27, double* %radius, align 8
  %38 = load double, double* %radius, align 8
  %cmp28 = fcmp olt double %38, 0.000000e+00
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end
  %39 = load double, double* %radius, align 8
  %cmp31 = fcmp ogt double %39, 1.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.end
  %40 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 4, i32 1, i1 false)
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.30
  %arraydecay35 = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i32 0
  %41 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 19), align 8
  %42 = load double, double* %radius, align 8
  call void @calc_get_gradient(i8* %arraydecay35, i8* %41, double %42)
  %arraydecay36 = getelementptr inbounds [4 x i8], [4 x i8]* %angular_pix, i32 0, i32 0
  %43 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 20), align 8
  %44 = load double, double* %spike_angle, align 8
  call void @calc_get_gradient(i8* %arraydecay36, i8* %43, double %44)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %45 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %45, 3
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %i, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %47 to i32
  %48 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %48 to i64
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %angular_pix, i32 0, i64 %idxprom41
  %49 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %49 to i32
  %mul44 = mul nsw i32 %conv40, %conv43
  %div45 = sdiv i32 %mul44, 255
  %conv46 = trunc i32 %div45 to i8
  %50 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i8*, i8** %dest_pix.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load double, double* %spike_inten, align 8
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i64 3
  %54 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %54 to i32
  %conv51 = sitofp i32 %conv50 to double
  %mul52 = fmul double %53, %conv51
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %angular_pix, i32 0, i64 3
  %55 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %55 to i32
  %conv55 = sitofp i32 %conv54 to double
  %mul56 = fmul double %mul52, %conv55
  %div57 = fdiv double %mul56, 2.550000e+02
  %conv58 = fptoui double %div57 to i8
  %56 = load i8*, i8** %dest_pix.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %56, i64 3
  store i8 %conv58, i8* %arrayidx59, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then.33, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_sflare_pix(i8* %dest_pix, double %x, double %y, i8* %src_pix) #0 {
entry:
  %dest_pix.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %src_pix.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %sflare = alloca %struct.CalcSFlare*, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  %th = alloca double, align 8
  %radius = alloca double, align 8
  %angle = alloca double, align 8
  %radial_pix = alloca [4 x i8], align 1
  %tmp_pix = alloca [4 x i8], align 1
  store i8* %dest_pix, i8** %dest_pix.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %src_pix, i8** %src_pix.addr, align 8
  %0 = load i8*, i8** %dest_pix.addr, align 8
  %1 = load i8*, i8** %src_pix.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 1, i1 false)
  %2 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 1), align 4
  %and = and i32 %2, 4
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %3 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 27), align 8
  store %struct._GList* %3, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.then.31, %if.then.10, %if.end
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct.CalcSFlare*
  store %struct.CalcSFlare* %7, %struct.CalcSFlare** %sflare, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %9, %struct._GList** %list, align 8
  %10 = load double, double* %x.addr, align 8
  %11 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %11, i32 0, i32 3
  %x0 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds, i32 0, i32 0
  %12 = load double, double* %x0, align 8
  %cmp1 = fcmp olt double %10, %12
  br i1 %cmp1, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %13 = load double, double* %x.addr, align 8
  %14 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds2 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %14, i32 0, i32 3
  %x1 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds2, i32 0, i32 2
  %15 = load double, double* %x1, align 8
  %cmp3 = fcmp ogt double %13, %15
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %16 = load double, double* %y.addr, align 8
  %17 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds5 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %17, i32 0, i32 3
  %y0 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds5, i32 0, i32 1
  %18 = load double, double* %y0, align 8
  %cmp6 = fcmp olt double %16, %18
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %19 = load double, double* %y.addr, align 8
  %20 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %bounds8 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %20, i32 0, i32 3
  %y1 = getelementptr inbounds %struct.CalcBounds, %struct.CalcBounds* %bounds8, i32 0, i32 3
  %21 = load double, double* %y1, align 8
  %cmp9 = fcmp ogt double %19, %21
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %while.body
  br label %while.cond

if.end.11:                                        ; preds = %lor.lhs.false.7
  %22 = load double, double* %x.addr, align 8
  %23 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %xcenter = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %23, i32 0, i32 0
  %24 = load double, double* %xcenter, align 8
  %sub = fsub double %22, %24
  store double %sub, double* %sx, align 8
  %25 = load double, double* %y.addr, align 8
  %26 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %ycenter = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %26, i32 0, i32 1
  %27 = load double, double* %ycenter, align 8
  %sub12 = fsub double %25, %27
  store double %sub12, double* %sy, align 8
  %28 = load double, double* %sx, align 8
  %29 = load double, double* %sx, align 8
  %mul = fmul double %28, %29
  %30 = load double, double* %sy, align 8
  %31 = load double, double* %sy, align 8
  %mul13 = fmul double %30, %31
  %add = fadd double %mul, %mul13
  %call = call double @sqrt(double %add) #4
  %32 = load %struct.CalcSFlare*, %struct.CalcSFlare** %sflare, align 8
  %radius14 = getelementptr inbounds %struct.CalcSFlare, %struct.CalcSFlare* %32, i32 0, i32 2
  %33 = load double, double* %radius14, align 8
  %div = fdiv double %call, %33
  store double %div, double* %radius, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 33), align 4
  %cmp15 = icmp eq i32 %34, 1
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.11
  %35 = load double, double* %sy, align 8
  %sub17 = fsub double -0.000000e+00, %35
  %36 = load double, double* %sx, align 8
  %call18 = call double @atan2(double %sub17, double %36) #4
  %37 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 8), align 8
  %sub19 = fsub double %call18, %37
  %38 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 32), align 8
  %add20 = fadd double %sub19, %38
  store double %add20, double* %angle, align 8
  %39 = load double, double* %angle, align 8
  %40 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 34), align 8
  %mul21 = fmul double %40, 2.000000e+00
  %call22 = call double @fmod_positive(double %39, double %mul21)
  %41 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 34), align 8
  %sub23 = fsub double %call22, %41
  store double %sub23, double* %th, align 8
  %42 = load double, double* %th, align 8
  %call24 = call double @cos(double %42) #4
  %43 = load double, double* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 35), align 8
  %mul25 = fmul double %call24, %43
  %44 = load double, double* %radius, align 8
  %mul26 = fmul double %44, %mul25
  store double %mul26, double* %radius, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.16, %if.end.11
  %45 = load double, double* %radius, align 8
  %cmp28 = fcmp olt double %45, 0.000000e+00
  br i1 %cmp28, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.27
  %46 = load double, double* %radius, align 8
  %cmp30 = fcmp ogt double %46, 1.000000e+00
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.29, %if.end.27
  br label %while.cond

if.end.32:                                        ; preds = %lor.lhs.false.29
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i32 0
  %47 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 28), align 8
  %48 = load double, double* %radius, align 8
  call void @calc_get_gradient(i8* %arraydecay, i8* %47, double %48)
  %49 = bitcast [4 x i8]* %tmp_pix to i8*
  %50 = load i8*, i8** %dest_pix.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 4, i32 1, i1 false)
  %51 = load i8*, i8** %dest_pix.addr, align 8
  %arraydecay33 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_pix, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %radial_pix, i32 0, i32 0
  %52 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 26), align 4
  %53 = load %struct.GFlare*, %struct.GFlare** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 2), align 8
  %sflare_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %53, i32 0, i32 7
  %54 = load i32, i32* %sflare_mode, align 4
  call void @calc_paint_func(i8* %51, i8* %arraydecay33, i8* %arraydecay34, i32 %52, i32 %54)
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind uwtable
define internal double @fmod_positive(double %x, double %m) #0 {
entry:
  %x.addr = alloca double, align 8
  %m.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %m, double* %m.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %2 = load double, double* %m.addr, align 8
  %div = fdiv double %1, %2
  %call = call double @floor(double %div) #7
  %3 = load double, double* %m.addr, align 8
  %mul = fmul double %call, %3
  %sub = fsub double %0, %mul
  ret double %sub
}

; Function Attrs: nounwind uwtable
define internal void @calc_get_gradient(i8* %pix, i8* %gradient, double %pos) #0 {
entry:
  %pix.addr = alloca i8*, align 8
  %gradient.addr = alloca i8*, align 8
  %pos.addr = alloca double, align 8
  %ipos = alloca i32, align 4
  %frac = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %pix, i8** %pix.addr, align 8
  store i8* %gradient, i8** %gradient.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %pos.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %pos.addr, align 8
  %cmp1 = fcmp ogt double %1, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %pix.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 3
  store i8 0, i8* %arrayidx, align 1
  %3 = load i8*, i8** %pix.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 2
  store i8 0, i8* %arrayidx2, align 1
  %4 = load i8*, i8** %pix.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 0, i8* %arrayidx3, align 1
  %5 = load i8*, i8** %pix.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %arrayidx4, align 1
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %6 = load double, double* %pos.addr, align 8
  %mul = fmul double %6, 3.589999e+02
  store double %mul, double* %pos.addr, align 8
  %7 = load double, double* %pos.addr, align 8
  %conv = fptosi double %7 to i32
  store i32 %conv, i32* %ipos, align 4
  %8 = load double, double* %pos.addr, align 8
  %9 = load i32, i32* %ipos, align 4
  %conv5 = sitofp i32 %9 to double
  %sub = fsub double %8, %conv5
  store double %sub, double* %frac, align 8
  %10 = load i32, i32* %ipos, align 4
  %mul6 = mul nsw i32 %10, 4
  %11 = load i8*, i8** %gradient.addr, align 8
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %gradient.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %12, 4
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %gradient.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %conv11 = sitofp i32 %conv10 to double
  %16 = load double, double* %frac, align 8
  %sub12 = fsub double 1.000000e+00, %16
  %mul13 = fmul double %conv11, %sub12
  %17 = load i32, i32* %i, align 4
  %add = add nsw i32 %17, 4
  %idxprom14 = sext i32 %add to i64
  %18 = load i8*, i8** %gradient.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 %idxprom14
  %19 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %19 to i32
  %conv17 = sitofp i32 %conv16 to double
  %20 = load double, double* %frac, align 8
  %mul18 = fmul double %conv17, %20
  %add19 = fadd double %mul13, %mul18
  %conv20 = fptoui double %add19 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load i8*, i8** %pix.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 %idxprom21
  store i8 %conv20, i8* %arrayidx22, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define internal void @calc_addition(i8* %dest, i8* %src1, i8* %src2) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %src1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i8*, i8** %src2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %add = add nsw i32 %conv, %conv4
  store i32 %add, i32* %tmp, align 4
  %7 = load i32, i32* %tmp, align 4
  %cmp5 = icmp sle i32 %7, 255
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i32, i32* %tmp, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ 255, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i8*, i8** %dest.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %src1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %14 = load i8*, i8** %src2.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %cmp14 = icmp slt i32 %conv11, %conv13
  br i1 %cmp14, label %cond.true.16, label %cond.false.19

cond.true.16:                                     ; preds = %for.end
  %16 = load i8*, i8** %src1.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 3
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  br label %cond.end.22

cond.false.19:                                    ; preds = %for.end
  %18 = load i8*, i8** %src2.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %19 to i32
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.19, %cond.true.16
  %cond23 = phi i32 [ %conv18, %cond.true.16 ], [ %conv21, %cond.false.19 ]
  %conv24 = trunc i32 %cond23 to i8
  %20 = load i8*, i8** %dest.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %conv24, i8* %arrayidx25, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_overlay(i8* %dest, i8* %src1, i8* %src2) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %screen = alloca i32, align 4
  %mult = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %src1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 255, %conv
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8*, i8** %src2.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %sub4 = sub nsw i32 255, %conv3
  %mul = mul nsw i32 %sub, %sub4
  %div = sdiv i32 %mul, 255
  %sub5 = sub nsw i32 255, %div
  store i32 %sub5, i32* %screen, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** %src1.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8*, i8** %src2.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %mul12 = mul nsw i32 %conv8, %conv11
  %div13 = sdiv i32 %mul12, 255
  store i32 %div13, i32* %mult, align 4
  %13 = load i32, i32* %screen, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i8*, i8** %src1.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %idxprom14
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %mul17 = mul nsw i32 %13, %conv16
  %17 = load i32, i32* %mult, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load i8*, i8** %src1.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %idxprom18
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  %sub21 = sub nsw i32 255, %conv20
  %mul22 = mul nsw i32 %17, %sub21
  %add = add nsw i32 %mul17, %mul22
  %div23 = sdiv i32 %add, 255
  %conv24 = trunc i32 %div23 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** %dest.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %src1.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 3
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %26 = load i8*, i8** %src2.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %26, i64 3
  %27 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %27 to i32
  %cmp31 = icmp slt i32 %conv28, %conv30
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %28 = load i8*, i8** %src1.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %29 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i8*, i8** %src2.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %31 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv34, %cond.true ], [ %conv36, %cond.false ]
  %conv37 = trunc i32 %cond to i8
  %32 = load i8*, i8** %dest.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 3
  store i8 %conv37, i8* %arrayidx38, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_screen(i8* %dest, i8* %src1, i8* %src2) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %src1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 255, %conv
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8*, i8** %src2.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %sub4 = sub nsw i32 255, %conv3
  %mul = mul nsw i32 %sub, %sub4
  %div = sdiv i32 %mul, 255
  %sub5 = sub nsw i32 255, %div
  %conv6 = trunc i32 %sub5 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %dest.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %src1.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %12 = load i8*, i8** %src2.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %cmp13 = icmp slt i32 %conv10, %conv12
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %14 = load i8*, i8** %src1.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %16 = load i8*, i8** %src2.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %16, i64 3
  %17 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv16, %cond.true ], [ %conv18, %cond.false ]
  %conv19 = trunc i32 %cond to i8
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %conv19, i8* %arrayidx20, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_combine(i8* %dest, i8* %src1, i8* %src2, i32 %opacity) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %opacity.addr = alloca i32, align 4
  %s1_a = alloca double, align 8
  %s2_a = alloca double, align 8
  %new_a = alloca double, align 8
  %ratio = alloca double, align 8
  %compl_ratio = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  store i32 %opacity, i32* %opacity.addr, align 4
  %0 = load i8*, i8** %src1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 3
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 2.550000e+02
  store double %div, double* %s1_a, align 8
  %2 = load i8*, i8** %src2.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 3
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %4 = load i32, i32* %opacity.addr, align 4
  %mul = mul nsw i32 %conv3, %4
  %conv4 = sitofp i32 %mul to double
  %div5 = fdiv double %conv4, 6.502500e+04
  store double %div5, double* %s2_a, align 8
  %5 = load double, double* %s1_a, align 8
  %6 = load double, double* %s1_a, align 8
  %sub = fsub double 1.000000e+00, %6
  %7 = load double, double* %s2_a, align 8
  %mul6 = fmul double %sub, %7
  %add = fadd double %5, %mul6
  store double %add, double* %new_a, align 8
  %8 = load double, double* %new_a, align 8
  %cmp = fcmp une double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load double, double* %s2_a, align 8
  %10 = load double, double* %new_a, align 8
  %div8 = fdiv double %9, %10
  store double %div8, double* %ratio, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 0.000000e+00, double* %ratio, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load double, double* %ratio, align 8
  %sub9 = fsub double 1.000000e+00, %11
  store double %sub9, double* %compl_ratio, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %12, 3
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %src1.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %conv14 = sitofp i32 %conv13 to double
  %16 = load double, double* %compl_ratio, align 8
  %mul15 = fmul double %conv14, %16
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i8*, i8** %src2.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %18, i64 %idxprom16
  %19 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %conv19 = sitofp i32 %conv18 to double
  %20 = load double, double* %ratio, align 8
  %mul20 = fmul double %conv19, %20
  %add21 = fadd double %mul15, %mul20
  %conv22 = fptoui double %add21 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load i8*, i8** %dest.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %22, i64 %idxprom23
  store i8 %conv22, i8* %arrayidx24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load double, double* %new_a, align 8
  %mul25 = fmul double %24, 2.550000e+02
  %conv26 = fptoui double %mul25 to i8
  %25 = load i8*, i8** %dest.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 3
  store i8 %conv26, i8* %arrayidx27, align 1
  ret void
}

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal void @calc_deinit() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 27), align 8
  call void @g_list_free_full(%struct._GList* %1, void (i8*)* @g_free)
  %2 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 12), align 8
  call void @g_free(i8* %2)
  %3 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 13), align 8
  call void @g_free(i8* %3)
  %4 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 14), align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 19), align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 20), align 8
  call void @g_free(i8* %6)
  %7 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 21), align 8
  call void @g_free(i8* %7)
  %8 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 28), align 8
  call void @g_free(i8* %8)
  %9 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 29), align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 30), align 8
  call void @g_free(i8* %10)
  store i32 0, i32* getelementptr inbounds (%struct.CalcParams, %struct.CalcParams* @calc, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare i32 @gimp_image_get_unit(i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_position_entry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  %call3 = call double @rint(double %call2) #7
  %conv = fptosi double %call3 to i32
  store i32 %conv, i32* %x, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_size_entry_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpSizeEntry*
  %call6 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 1)
  %call7 = call double @rint(double %call6) #7
  %conv8 = fptosi double %call7 to i32
  store i32 %conv8, i32* %y, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %7 = load i32, i32* %x, align 4
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  %9 = load i32, i32* %y, align 4
  %cmp10 = icmp ne i32 %8, %9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %x, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 0), align 4
  %11 = load i32, i32* %y, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 1), align 4
  call void @dlg_preview_update()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gtk_frame_set_label_widget(%struct._GtkFrame*, %struct._GtkWidget*) #1

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_new_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.116, i32 0, i32 0)) #4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0)) #4
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0)) #4
  %1 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %2 = bitcast %struct.GFlareDialog* %1 to i8*
  %call4 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call, %struct._GtkWidget* %call1, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* %call2, i8* %call3, %struct._GObject* null, i8* null, void (%struct._GtkWidget*, i8*, i8*)* @dlg_selector_new_ok_callback, i8* %2)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %query_box, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %query_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_edit_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %preview = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 3
  %1 = load %struct._Preview*, %struct._Preview** %preview, align 8
  call void @preview_render_end(%struct._Preview* %1)
  %2 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %3, i32 0)
  %4 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell1 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %4, i32 0, i32 2
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %shell1, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %8 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %8, i32 0, i32 1
  %9 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void @ed_run(%struct._GtkWindow* %7, %struct.GFlare* %9, void (i32, i8*)* @dlg_selector_edit_done_callback, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_copy_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %query_box = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 1
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name1 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %1, i32 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i8* %2)
  store i8* %call, i8** %name, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.171, i32 0, i32 0)) #4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call3 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.172, i32 0, i32 0)) #4
  %4 = load i8*, i8** %name, align 8
  %5 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %6 = bitcast %struct.GFlareDialog* %5 to i8*
  %call5 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call2, %struct._GtkWidget* %call3, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* %call4, i8* %4, %struct._GObject* null, i8* null, void (%struct._GtkWidget*, i8*, i8*)* @dlg_selector_copy_ok_callback, i8* %6)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %query_box, align 8
  %7 = load i8*, i8** %name, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %query_box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_delete_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %str = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @num_gflares, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.175, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call)
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %2, i32 0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.176, i32 0, i32 0)) #4
  %3 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %3, i32 0, i32 1
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call1, i8* %5)
  store i8* %call2, i8** %str, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.177, i32 0, i32 0)) #4
  %6 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell4 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %8 = load i8*, i8** %str, align 8
  %call5 = call %struct._GtkWidget* @gimp_query_boolean_box(i8* %call3, %struct._GtkWidget* %7, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i32 0, i32 0), i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), %struct._GObject* null, i8* null, void (%struct._GtkWidget*, i32, i8*)* @dlg_selector_do_delete_callback, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %9 = load i8*, i8** %str, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #3

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #3

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_list_item_callback(%struct._GtkTreeSelection* %selection) #0 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %1, i32 0, i32 9
  %2 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list, align 8
  %3 = bitcast %struct._GtkListStore* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_tree_model_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTreeModel*
  %5 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %5, i32 0, i32 1
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 1, %struct.GFlare** %gflare, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @dlg_preview_update()
  ret void
}

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new_with_attributes(i8*, %struct._GtkCellRenderer*, ...) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_setup_listbox() #0 {
entry:
  %list = alloca %struct._GList*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %n = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %0 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.GFlare*
  store %struct.GFlare* %4, %struct.GFlare** %gflare, align 8
  %5 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %5, i32 0, i32 9
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter)
  %7 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list1 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %7, i32 0, i32 9
  %8 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list1, align 8
  %9 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %8, %struct._GtkTreeIter* %iter, i32 0, i8* %10, i32 1, %struct.GFlare* %11, i32 -1)
  %12 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %13 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare2 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %13, i32 0, i32 1
  %14 = load %struct.GFlare*, %struct.GFlare** %gflare2, align 8
  %cmp = icmp eq %struct.GFlare* %12, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selection = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %15, i32 0, i32 10
  %16 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %16, %struct._GtkTreeIter* %iter)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  %19 = load i32, i32* %n, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

declare %struct._GtkWidget* @gimp_query_string_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i8*, i8*)*, i8*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_new_ok_callback(%struct._GtkWidget* %widget, i8* %new_name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %new_name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %pos = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %new_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dlg_selector_new_ok_callback, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.119, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %new_name.addr, align 8
  %call = call %struct.GFlare* @gflares_list_lookup(i8* %1)
  %tobool = icmp ne %struct.GFlare* %call, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.120, i32 0, i32 0)) #4
  %2 = load i8*, i8** %new_name.addr, align 8
  call void (i8*, ...) @g_message(i8* %call2, i8* %2)
  br label %return

if.end.3:                                         ; preds = %do.end
  %3 = load i8*, i8** %new_name.addr, align 8
  %call4 = call %struct.GFlare* @gflare_new_with_default(i8* %3)
  store %struct.GFlare* %call4, %struct.GFlare** %gflare, align 8
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %call5 = call i32 @gflares_list_insert(%struct.GFlare* %4)
  store i32 %call5, i32* %pos, align 4
  %5 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %5, i32 0, i32 9
  %6 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list, align 8
  %7 = load i32, i32* %pos, align 4
  call void @gtk_list_store_insert(%struct._GtkListStore* %6, %struct._GtkTreeIter* %iter, i32 %7)
  %8 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list6 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %8, i32 0, i32 9
  %9 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list6, align 8
  %10 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %9, %struct._GtkTreeIter* %iter, i32 0, i8* %11, i32 1, %struct.GFlare* %12, i32 -1)
  %13 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selection = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %13, i32 0, i32 10
  %14 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %14, %struct._GtkTreeIter* %iter)
  %15 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %16 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare7 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %16, i32 0, i32 1
  store %struct.GFlare* %15, %struct.GFlare** %gflare7, align 8
  call void @dlg_preview_update()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1, %if.else
  ret void
}

declare void @gtk_list_store_insert(%struct._GtkListStore*, %struct._GtkTreeIter*, i32) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @preview_render_end(%struct._Preview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  %0 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %timeout_tag = getelementptr inbounds %struct._Preview, %struct._Preview* %0, i32 0, i32 9
  %1 = load i32, i32* %timeout_tag, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %timeout_tag1 = getelementptr inbounds %struct._Preview, %struct._Preview* %2, i32 0, i32 9
  %3 = load i32, i32* %timeout_tag1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %timeout_tag2 = getelementptr inbounds %struct._Preview, %struct._Preview* %4, i32 0, i32 9
  store i32 0, i32* %timeout_tag2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %idle_tag = getelementptr inbounds %struct._Preview, %struct._Preview* %5, i32 0, i32 10
  %6 = load i32, i32* %idle_tag, align 4
  %cmp3 = icmp ugt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %deinit_func = getelementptr inbounds %struct._Preview, %struct._Preview* %7, i32 0, i32 7
  %8 = load void (%struct._Preview*, i8*)*, void (%struct._Preview*, i8*)** %deinit_func, align 8
  %tobool = icmp ne void (%struct._Preview*, i8*)* %8, null
  br i1 %tobool, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.4
  %9 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %deinit_func6 = getelementptr inbounds %struct._Preview, %struct._Preview* %9, i32 0, i32 7
  %10 = load void (%struct._Preview*, i8*)*, void (%struct._Preview*, i8*)** %deinit_func6, align 8
  %11 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %12 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %deinit_data = getelementptr inbounds %struct._Preview, %struct._Preview* %12, i32 0, i32 8
  %13 = load i8*, i8** %deinit_data, align 8
  call void %10(%struct._Preview* %11, i8* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.4
  %14 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %idle_tag8 = getelementptr inbounds %struct._Preview, %struct._Preview* %14, i32 0, i32 10
  %15 = load i32, i32* %idle_tag8, align 4
  %call9 = call i32 @g_source_remove(i32 %15)
  %16 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %idle_tag10 = getelementptr inbounds %struct._Preview, %struct._Preview* %16, i32 0, i32 10
  store i32 0, i32* %idle_tag10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.7, %if.end
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ed_run(%struct._GtkWindow* %parent, %struct.GFlare* %target_gflare, void (i32, i8*)* %callback, i8* %calldata) #0 {
entry:
  %parent.addr = alloca %struct._GtkWindow*, align 8
  %target_gflare.addr = alloca %struct.GFlare*, align 8
  %callback.addr = alloca void (i32, i8*)*, align 8
  %calldata.addr = alloca i8*, align 8
  %shell = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWindow* %parent, %struct._GtkWindow** %parent.addr, align 8
  store %struct.GFlare* %target_gflare, %struct.GFlare** %target_gflare.addr, align 8
  store void (i32, i8*)* %callback, void (i32, i8*)** %callback.addr, align 8
  store i8* %calldata, i8** %calldata.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %tobool = icmp ne %struct.GFlareEditor* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 96)
  %1 = bitcast i8* %call to %struct.GFlareEditor*
  store %struct.GFlareEditor* %1, %struct.GFlareEditor** @ed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %2, i32 0, i32 0
  store i32 1, i32* %init, align 4
  %3 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %run = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %3, i32 0, i32 1
  store i32 0, i32* %run, align 4
  %4 = load %struct.GFlare*, %struct.GFlare** %target_gflare.addr, align 8
  %5 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %target_gflare1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %5, i32 0, i32 4
  store %struct.GFlare* %4, %struct.GFlare** %target_gflare1, align 8
  %6 = load %struct.GFlare*, %struct.GFlare** %target_gflare.addr, align 8
  %7 = load %struct.GFlare*, %struct.GFlare** %target_gflare.addr, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %call2 = call %struct.GFlare* @gflare_dup(%struct.GFlare* %6, i8* %8)
  %9 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %gflare = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %9, i32 0, i32 5
  store %struct.GFlare* %call2, %struct.GFlare** %gflare, align 8
  %10 = load void (i32, i8*)*, void (i32, i8*)** %callback.addr, align 8
  %11 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %callback3 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %11, i32 0, i32 2
  store void (i32, i8*)* %10, void (i32, i8*)** %callback3, align 8
  %12 = load i8*, i8** %calldata.addr, align 8
  %13 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %calldata4 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %13, i32 0, i32 3
  store i8* %12, i8** %calldata4, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i32 0, i32 0)) #4
  %14 = load %struct._GtkWindow*, %struct._GtkWindow** %parent.addr, align 8
  %15 = bitcast %struct._GtkWindow* %14 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call6)
  %16 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0)) #4
  %call9 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), %struct._GtkWidget* %16, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* %call8, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %shell, align 8
  %17 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %shell10 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %17, i32 0, i32 6
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %shell10, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call11)
  %20 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %20, i32 1, i32 -5, i32 -6, i32 -1)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %24 = bitcast %struct.GFlareEditor* %23 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.GFlareEditor*)* @ed_response to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %27 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %28 = bitcast %struct.GFlareEditor* %27 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GFlareEditor*)* @ed_destroy_callback to void ()*), i8* %28, void (i8*, %struct._GClosure*)* null, i32 0)
  %call15 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %hbox, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %31, i32 12)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_dialog_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call18)
  %34 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkDialog*
  %call20 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %34)
  %35 = bitcast %struct._GtkWidget* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call23 = call %struct._GtkWidget* @gtk_alignment_new(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call23, %struct._GtkWidget** %abox, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %call26 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %frame, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_frame_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call27)
  %46 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %46, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call29)
  %49 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %call31 = call %struct._Preview* @preview_new(i32 256, i32 256, i32 (%struct._Preview*, i8*)* @ed_preview_init_func, i8* null, void (%struct._Preview*, i8*, i32, i8*)* @ed_preview_render_func, i8* null, void (%struct._Preview*, i8*)* @ed_preview_deinit_func, i8* null)
  %52 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %preview = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %52, i32 0, i32 7
  store %struct._Preview* %call31, %struct._Preview** %preview, align 8
  %53 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %preview32 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %53, i32 0, i32 7
  %54 = load %struct._Preview*, %struct._Preview** %preview32, align 8
  %widget = getelementptr inbounds %struct._Preview, %struct._Preview* %54, i32 0, i32 0
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_widget_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call33)
  %57 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %57, i32 258)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_container_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call35)
  %60 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkContainer*
  %61 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %preview37 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %61, i32 0, i32 7
  %62 = load %struct._Preview*, %struct._Preview** %preview37, align 8
  %widget38 = getelementptr inbounds %struct._Preview, %struct._Preview* %62, i32 0, i32 0
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %widget38, align 8
  call void @gtk_container_add(%struct._GtkContainer* %60, %struct._GtkWidget* %63)
  %64 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %preview39 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %64, i32 0, i32 7
  %65 = load %struct._Preview*, %struct._Preview** %preview39, align 8
  %widget40 = getelementptr inbounds %struct._Preview, %struct._Preview* %65, i32 0, i32 0
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %widget40, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @dlg_preview_handle_event to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  call void @ed_preview_calc_window()
  %call42 = call %struct._GtkWidget* @gtk_notebook_new()
  %68 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %notebook43 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %68, i32 0, i32 8
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %notebook43, align 8
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %notebook, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_notebook_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call44)
  %71 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %71, i32 2)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call46)
  %74 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 1, i32 1, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @ed_make_page_general(%struct.GFlareEditor* %77, %struct._GtkWidget* %78)
  %79 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @ed_make_page_glow(%struct.GFlareEditor* %79, %struct._GtkWidget* %80)
  %81 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @ed_make_page_rays(%struct.GFlareEditor* %81, %struct._GtkWidget* %82)
  %83 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @ed_make_page_sflare(%struct.GFlareEditor* %83, %struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init48 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %86, i32 0, i32 0
  store i32 0, i32* %init48, align 4
  call void @ed_preview_update()
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_edit_done_callback(i32 %updated, i8* %data) #0 {
entry:
  %updated.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %updated, i32* %updated.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %1, i32 1)
  %2 = load i32, i32* %updated.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %3, i32 0, i32 1
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void @gflare_save(%struct.GFlare* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @dlg_preview_update()
  ret void
}

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind uwtable
define internal void @ed_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.GFlareEditor* %ed) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %ed.addr = alloca %struct.GFlareEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.GFlareEditor* %ed, %struct.GFlareEditor** %ed.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %init = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %1, i32 0, i32 0
  store i32 1, i32* %init, align 4
  call void @gradient_menu_rescan()
  %2 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %init1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %2, i32 0, i32 0
  store i32 0, i32* %init1, align 4
  call void @ed_preview_update()
  %3 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %notebook = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %3, i32 0, i32 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %4)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %run = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %5, i32 0, i32 1
  store i32 1, i32* %run, align 4
  %6 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %target_gflare = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %6, i32 0, i32 4
  %7 = load %struct.GFlare*, %struct.GFlare** %target_gflare, align 8
  %8 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %gflare = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %8, i32 0, i32 5
  %9 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void @gflare_copy(%struct.GFlare* %7, %struct.GFlare* %9)
  %10 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %shell = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %10, i32 0, i32 6
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %shell3 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %12, i32 0, i32 6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %shell3, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %13)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_destroy_callback(%struct._GtkWidget* %widget, %struct.GFlareEditor* %ed) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %ed.addr = alloca %struct.GFlareEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.GFlareEditor* %ed, %struct.GFlareEditor** %ed.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %preview = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 7
  %1 = load %struct._Preview*, %struct._Preview** %preview, align 8
  call void @preview_free(%struct._Preview* %1)
  %2 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %gflare = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %2, i32 0, i32 5
  %3 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void @gflare_free(%struct.GFlare* %3)
  %4 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %callback = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %4, i32 0, i32 2
  %5 = load void (i32, i8*)*, void (i32, i8*)** %callback, align 8
  %tobool = icmp ne void (i32, i8*)* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %callback1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %6, i32 0, i32 2
  %7 = load void (i32, i8*)*, void (i32, i8*)** %callback1, align 8
  %8 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %run = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %8, i32 0, i32 1
  %9 = load i32, i32* %run, align 4
  %10 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %calldata = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %10, i32 0, i32 3
  %11 = load i8*, i8** %calldata, align 8
  call void %7(i32 %9, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ed_preview_init_func(%struct._Preview* %preview, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %preview.addr = alloca %struct._Preview*, align 8
  %data.addr = alloca i8*, align 8
  %type = alloca i32, align 4
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %type, align 4
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init_params_done = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 12
  %1 = load i32, i32* %init_params_done, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %cur_page = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %2, i32 0, i32 9
  %3 = load i32, i32* %cur_page, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then
  store i32 7, i32* %type, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  store i32 2, i32* %type, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  store i32 4, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.125, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %4 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %gflare = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %4, i32 0, i32 5
  %5 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %6 = load i32, i32* %type, align 4
  %7 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 5), align 8
  %8 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 6), align 8
  call void @calc_init_params(%struct.GFlare* %5, i32 %6, double 1.280000e+02, double 1.280000e+02, double 1.280000e+02, double 0.000000e+00, double 0.000000e+00, double %7, double %8)
  %9 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init_params_done4 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %9, i32 0, i32 12
  store i32 1, i32* %init_params_done4, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @calc_init_progress()
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.epilog
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_render_func(%struct._Preview* %preview, i8* %buffer, i32 %y, i8* %data) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  %buffer.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %cur_page = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 9
  %1 = load i32, i32* %cur_page, align 4
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i32, i32* %y.addr, align 4
  call void @ed_preview_render_general(i8* %2, i32 %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = load i32, i32* %y.addr, align 4
  call void @ed_preview_render_glow(i8* %4, i32 %5)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load i8*, i8** %buffer.addr, align 8
  %7 = load i32, i32* %y.addr, align 4
  call void @ed_preview_render_rays(i8* %6, i32 %7)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load i8*, i8** %buffer.addr, align 8
  %9 = load i32, i32* %y.addr, align 4
  call void @ed_preview_render_sflare(i8* %8, i32 %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_deinit_func(%struct._Preview* %preview, i8* %data) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init_params_done = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 12
  %1 = load i32, i32* %init_params_done, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @calc_deinit()
  %2 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init_params_done1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %2, i32 0, i32 12
  store i32 0, i32* %init_params_done1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_calc_window() #0 {
entry:
  %is_wide = alloca i32, align 4
  %offx = alloca double, align 8
  %offy = alloca double, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %conv = uitofp i32 %1 to double
  %mul = fmul double 2.560000e+02, %conv
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  %conv1 = uitofp i32 %3 to double
  %mul2 = fmul double 2.560000e+02, %conv1
  %cmp = fcmp oge double %mul, %mul2
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, i32* %is_wide, align 4
  %4 = load i32, i32* %is_wide, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load i32, i32* %width4, align 4
  %conv5 = uitofp i32 %6 to double
  %mul6 = fmul double %conv5, 2.560000e+02
  %div = fdiv double %mul6, 2.560000e+02
  %div7 = fdiv double %div, 2.000000e+00
  store double %div7, double* %offy, align 8
  %7 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %7, i32 0, i32 4
  %x0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin, i32 0, i32 0
  store double 0.000000e+00, double* %x0, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width8, align 4
  %conv9 = uitofp i32 %9 to double
  %10 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin10 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %10, i32 0, i32 4
  %x1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin10, i32 0, i32 2
  store double %conv9, double* %x1, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height11, align 4
  %conv12 = uitofp i32 %12 to double
  %div13 = fdiv double %conv12, 2.000000e+00
  %13 = load double, double* %offy, align 8
  %sub = fsub double %div13, %13
  %14 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin14 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %14, i32 0, i32 4
  %y0 = getelementptr inbounds %struct.anon, %struct.anon* %pwin14, i32 0, i32 1
  store double %sub, double* %y0, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height15, align 4
  %conv16 = uitofp i32 %16 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  %17 = load double, double* %offy, align 8
  %add = fadd double %div17, %17
  %18 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin18 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %18, i32 0, i32 4
  %y1 = getelementptr inbounds %struct.anon, %struct.anon* %pwin18, i32 0, i32 3
  store double %add, double* %y1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height19, align 4
  %conv20 = uitofp i32 %20 to double
  %mul21 = fmul double %conv20, 2.560000e+02
  %div22 = fdiv double %mul21, 2.560000e+02
  %div23 = fdiv double %div22, 2.000000e+00
  store double %div23, double* %offx, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width24, align 4
  %conv25 = uitofp i32 %22 to double
  %div26 = fdiv double %conv25, 2.000000e+00
  %23 = load double, double* %offx, align 8
  %sub27 = fsub double %div26, %23
  %24 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin28 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %24, i32 0, i32 4
  %x029 = getelementptr inbounds %struct.anon, %struct.anon* %pwin28, i32 0, i32 0
  store double %sub27, double* %x029, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %width30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load i32, i32* %width30, align 4
  %conv31 = uitofp i32 %26 to double
  %div32 = fdiv double %conv31, 2.000000e+00
  %27 = load double, double* %offx, align 8
  %add33 = fadd double %div32, %27
  %28 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin34 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %28, i32 0, i32 4
  %x135 = getelementptr inbounds %struct.anon, %struct.anon* %pwin34, i32 0, i32 2
  store double %add33, double* %x135, align 8
  %29 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin36 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %29, i32 0, i32 4
  %y037 = getelementptr inbounds %struct.anon, %struct.anon* %pwin36, i32 0, i32 1
  store double 0.000000e+00, double* %y037, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %height38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height38, align 4
  %conv39 = uitofp i32 %31 to double
  %32 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %pwin40 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %32, i32 0, i32 4
  %y141 = getelementptr inbounds %struct.anon, %struct.anon* %pwin40, i32 0, i32 3
  store double %conv39, double* %y141, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ed_make_page_general(%struct.GFlareEditor* %ed, %struct._GtkWidget* %notebook) #0 {
entry:
  %ed.addr = alloca %struct.GFlareEditor*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  store %struct.GFlareEditor* %ed, %struct.GFlareEditor** %ed.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %gflare1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 5
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare1, align 8
  store %struct.GFlare* %1, %struct.GFlare** %gflare, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.127, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0)) #4
  %24 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %24, i32 0, i32 2
  %25 = load double, double* %glow_opacity, align 8
  %call18 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %23, i32 0, i32 0, i8* %call17, i32 80, i32 6, double %25, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call18, %struct._GtkObject** %adj, align 8
  %26 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %27 = bitcast %struct._GtkObject* %26 to i8*
  %28 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_opacity19 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %28, i32 0, i32 2
  %29 = bitcast double* %glow_opacity19 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %31 = bitcast %struct._GtkObject* %30 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %32, i32 0, i32 3
  %call22 = call %struct._GtkWidget* @ed_mode_menu_new(i32* %glow_mode)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %combo, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0)) #4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call26 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %35, i32 0, i32 1, i8* %call25, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %36, i32 1, i32 0)
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0)) #4
  %call28 = call %struct._GtkWidget* @gimp_frame_new(i8* %call27)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %frame, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call31 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %table, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_table_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %44, i32 6)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %47, i32 6)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_container_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call36)
  %50 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkContainer*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %50, %struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call38)
  %55 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0)) #4
  %56 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %56, i32 0, i32 4
  %57 = load double, double* %rays_opacity, align 8
  %call41 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %55, i32 0, i32 0, i8* %call40, i32 80, i32 6, double %57, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call41, %struct._GtkObject** %adj, align 8
  %58 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %59 = bitcast %struct._GtkObject* %58 to i8*
  %60 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_opacity42 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %60, i32 0, i32 4
  %61 = bitcast double* %rays_opacity42 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 0)
  %62 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %63 = bitcast %struct._GtkObject* %62 to i8*
  %call44 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %64, i32 0, i32 5
  %call45 = call %struct._GtkWidget* @ed_mode_menu_new(i32* %rays_mode)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %combo, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call46)
  %67 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0)) #4
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call49 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %67, i32 0, i32 1, i8* %call48, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %68, i32 1, i32 0)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i32 0, i32 0)) #4
  %call51 = call %struct._GtkWidget* @gimp_frame_new(i8* %call50)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %frame, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_box_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call52)
  %71 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 0, i32 0, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %call54 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %table, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call55)
  %76 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %76, i32 6)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_table_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call57)
  %79 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %79, i32 6)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_container_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call59)
  %82 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkContainer*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %82, %struct._GtkWidget* %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call61)
  %87 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0)) #4
  %88 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %88, i32 0, i32 6
  %89 = load double, double* %sflare_opacity, align 8
  %call64 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %87, i32 0, i32 0, i8* %call63, i32 80, i32 6, double %89, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call64, %struct._GtkObject** %adj, align 8
  %90 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %91 = bitcast %struct._GtkObject* %90 to i8*
  %92 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_opacity65 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %92, i32 0, i32 6
  %93 = bitcast double* %sflare_opacity65 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %93, void (i8*, %struct._GClosure*)* null, i32 0)
  %94 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %95 = bitcast %struct._GtkObject* %94 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %96 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %96, i32 0, i32 7
  %call68 = call %struct._GtkWidget* @ed_mode_menu_new(i32* %sflare_mode)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %combo, align 8
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_table_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call69)
  %99 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkTable*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0)) #4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call72 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %99, i32 0, i32 1, i8* %call71, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %100, i32 1, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_notebook_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call73)
  %103 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkNotebook*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0)) #4
  %call76 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call75)
  %call77 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %103, %struct._GtkWidget* %104, %struct._GtkWidget* %call76)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_page_map_callback to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %107)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_make_page_glow(%struct.GFlareEditor* %ed, %struct._GtkWidget* %notebook) #0 {
entry:
  %ed.addr = alloca %struct.GFlareEditor*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %row = alloca i32, align 4
  store %struct.GFlareEditor* %ed, %struct.GFlareEditor** %ed.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %gflare1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 5
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare1, align 8
  store %struct.GFlare* %1, %struct.GFlare** %gflare, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %20 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %20, i32 0, i32 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %glow_radial, i32 0, i32 0
  %21 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_radial15 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %21, i32 0, i32 8
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_radial15, i32 0, i32 0
  %call17 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay, i8* %arraydecay16)
  store %struct._GradientMenu* %call17, %struct._GradientMenu** %gm, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.139, i32 0, i32 0)) #4
  %23 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %22, i32 0, i32 0, i8* %call18, %struct._GradientMenu* %23)
  %24 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_angular = getelementptr inbounds %struct.GFlare, %struct.GFlare* %24, i32 0, i32 9
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular, i32 0, i32 0
  %25 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_angular20 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %25, i32 0, i32 9
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular20, i32 0, i32 0
  %call22 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay19, i8* %arraydecay21)
  store %struct._GradientMenu* %call22, %struct._GradientMenu** %gm, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.140, i32 0, i32 0)) #4
  %27 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %26, i32 0, i32 1, i8* %call23, %struct._GradientMenu* %27)
  %28 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_angular_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %28, i32 0, i32 10
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular_size, i32 0, i32 0
  %29 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_angular_size25 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %29, i32 0, i32 10
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular_size25, i32 0, i32 0
  %call27 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay24, i8* %arraydecay26)
  store %struct._GradientMenu* %call27, %struct._GradientMenu** %gm, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i32 0, i32 0)) #4
  %31 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %30, i32 0, i32 2, i8* %call28, %struct._GradientMenu* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0)) #4
  %call30 = call %struct._GtkWidget* @gimp_frame_new(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %frame, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call31)
  %35 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call33 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %table, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call34)
  %40 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %40, i32 6)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %43, i32 6)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_container_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call38)
  %46 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkContainer*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %46, %struct._GtkWidget* %47)
  store i32 0, i32* %row, align 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call40)
  %50 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  %51 = load i32, i32* %row, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %row, align 4
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0)) #4
  %52 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %52, i32 0, i32 11
  %53 = load double, double* %glow_size, align 8
  %call43 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %50, i32 0, i32 %51, i8* %call42, i32 80, i32 6, double %53, double 0.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 0.000000e+00, double 0x41DFFFFFFFC00000, i8* null, i8* null)
  store %struct._GtkObject* %call43, %struct._GtkObject** %adj, align 8
  %54 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %55 = bitcast %struct._GtkObject* %54 to i8*
  %56 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_size44 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %56, i32 0, i32 11
  %57 = bitcast double* %glow_size44 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %59 = bitcast %struct._GtkObject* %58 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call47)
  %62 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %63 = load i32, i32* %row, align 4
  %inc49 = add nsw i32 %63, 1
  store i32 %inc49, i32* %row, align 4
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0)) #4
  %64 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %64, i32 0, i32 12
  %65 = load double, double* %glow_rotation, align 8
  %call51 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %62, i32 0, i32 %63, i8* %call50, i32 80, i32 6, double %65, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call51, %struct._GtkObject** %adj, align 8
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %68 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_rotation52 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %68, i32 0, i32 12
  %69 = bitcast double* %glow_rotation52 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %71 = bitcast %struct._GtkObject* %70 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call55)
  %74 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  %75 = load i32, i32* %row, align 4
  %inc57 = add nsw i32 %75, 1
  store i32 %inc57, i32* %row, align 4
  %call58 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0)) #4
  %76 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %76, i32 0, i32 13
  %77 = load double, double* %glow_hue, align 8
  %call59 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %74, i32 0, i32 %75, i8* %call58, i32 80, i32 6, double %77, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call59, %struct._GtkObject** %adj, align 8
  %78 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %79 = bitcast %struct._GtkObject* %78 to i8*
  %80 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %glow_hue60 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %80, i32 0, i32 13
  %81 = bitcast double* %glow_hue60 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %83 = bitcast %struct._GtkObject* %82 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_notebook_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call63)
  %87 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkNotebook*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.145, i32 0, i32 0)) #4
  %call66 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call65)
  %call67 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %87, %struct._GtkWidget* %88, %struct._GtkWidget* %call66)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %90 = bitcast %struct._GtkWidget* %89 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_page_map_callback to void ()*), i8* inttoptr (i64 3 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_make_page_rays(%struct.GFlareEditor* %ed, %struct._GtkWidget* %notebook) #0 {
entry:
  %ed.addr = alloca %struct.GFlareEditor*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %row = alloca i32, align 4
  store %struct.GFlareEditor* %ed, %struct.GFlareEditor** %ed.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %gflare1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 5
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare1, align 8
  store %struct.GFlare* %1, %struct.GFlare** %gflare, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 12)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call8 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %table, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  store i32 0, i32* %row, align 4
  %20 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %20, i32 0, i32 14
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %rays_radial, i32 0, i32 0
  %21 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_radial15 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %21, i32 0, i32 14
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_radial15, i32 0, i32 0
  %call17 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay, i8* %arraydecay16)
  store %struct._GradientMenu* %call17, %struct._GradientMenu** %gm, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %23 = load i32, i32* %row, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %row, align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.139, i32 0, i32 0)) #4
  %24 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %22, i32 0, i32 %23, i8* %call18, %struct._GradientMenu* %24)
  %25 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_angular = getelementptr inbounds %struct.GFlare, %struct.GFlare* %25, i32 0, i32 15
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular, i32 0, i32 0
  %26 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_angular20 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %26, i32 0, i32 15
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular20, i32 0, i32 0
  %call22 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay19, i8* %arraydecay21)
  store %struct._GradientMenu* %call22, %struct._GradientMenu** %gm, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %28 = load i32, i32* %row, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %row, align 4
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.140, i32 0, i32 0)) #4
  %29 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %27, i32 0, i32 %28, i8* %call24, %struct._GradientMenu* %29)
  %30 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_angular_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %30, i32 0, i32 16
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular_size, i32 0, i32 0
  %31 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_angular_size26 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %31, i32 0, i32 16
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular_size26, i32 0, i32 0
  %call28 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay25, i8* %arraydecay27)
  store %struct._GradientMenu* %call28, %struct._GradientMenu** %gm, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %33 = load i32, i32* %row, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, i32* %row, align 4
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i32 0, i32 0)) #4
  %34 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %32, i32 0, i32 %33, i8* %call30, %struct._GradientMenu* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0)) #4
  %call32 = call %struct._GtkWidget* @gimp_frame_new(i8* %call31)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %frame, align 8
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call33)
  %38 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  %call35 = call %struct._GtkWidget* @gtk_table_new(i32 5, i32 3, i32 0)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %table, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call36)
  %43 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %43, i32 6)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call38)
  %46 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %46, i32 6)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_container_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call40)
  %49 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  store i32 0, i32* %row, align 4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call42)
  %53 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  %54 = load i32, i32* %row, align 4
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %row, align 4
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0)) #4
  %55 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %55, i32 0, i32 17
  %56 = load double, double* %rays_size, align 8
  %call46 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %53, i32 0, i32 %54, i8* %call45, i32 80, i32 6, double %56, double 0.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 0.000000e+00, double 0x41DFFFFFFFC00000, i8* null, i8* null)
  store %struct._GtkObject* %call46, %struct._GtkObject** %adj, align 8
  %57 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %58 = bitcast %struct._GtkObject* %57 to i8*
  %59 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_size47 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %59, i32 0, i32 17
  %60 = bitcast double* %rays_size47 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 0)
  %61 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %62 = bitcast %struct._GtkObject* %61 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_table_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call50)
  %65 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkTable*
  %66 = load i32, i32* %row, align 4
  %inc52 = add nsw i32 %66, 1
  store i32 %inc52, i32* %row, align 4
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0)) #4
  %67 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %67, i32 0, i32 18
  %68 = load double, double* %rays_rotation, align 8
  %call54 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %65, i32 0, i32 %66, i8* %call53, i32 80, i32 6, double %68, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call54, %struct._GtkObject** %adj, align 8
  %69 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %70 = bitcast %struct._GtkObject* %69 to i8*
  %71 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_rotation55 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %71, i32 0, i32 18
  %72 = bitcast double* %rays_rotation55 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %72, void (i8*, %struct._GClosure*)* null, i32 0)
  %73 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %74 = bitcast %struct._GtkObject* %73 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call58)
  %77 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %78 = load i32, i32* %row, align 4
  %inc60 = add nsw i32 %78, 1
  store i32 %inc60, i32* %row, align 4
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0)) #4
  %79 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %79, i32 0, i32 19
  %80 = load double, double* %rays_hue, align 8
  %call62 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %77, i32 0, i32 %78, i8* %call61, i32 80, i32 6, double %80, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call62, %struct._GtkObject** %adj, align 8
  %81 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %82 = bitcast %struct._GtkObject* %81 to i8*
  %83 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_hue63 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %83, i32 0, i32 19
  %84 = bitcast double* %rays_hue63 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 0)
  %85 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %86 = bitcast %struct._GtkObject* %85 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_table_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call66)
  %89 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkTable*
  %90 = load i32, i32* %row, align 4
  %inc68 = add nsw i32 %90, 1
  store i32 %inc68, i32* %row, align 4
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0)) #4
  %91 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_nspikes = getelementptr inbounds %struct.GFlare, %struct.GFlare* %91, i32 0, i32 20
  %92 = load i32, i32* %rays_nspikes, align 4
  %conv = sitofp i32 %92 to double
  %call70 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %89, i32 0, i32 %90, i8* %call69, i32 80, i32 6, double %conv, double 1.000000e+00, double 3.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 0, double 0.000000e+00, double 0x41DFFFFFFFC00000, i8* null, i8* null)
  store %struct._GtkObject* %call70, %struct._GtkObject** %adj, align 8
  %93 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %94 = bitcast %struct._GtkObject* %93 to i8*
  %95 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_nspikes71 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %95, i32 0, i32 20
  %96 = bitcast i32* %rays_nspikes71 to i8*
  %call72 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 0)
  %97 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %98 = bitcast %struct._GtkObject* %97 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call74)
  %101 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %102 = load i32, i32* %row, align 4
  %inc76 = add nsw i32 %102, 1
  store i32 %inc76, i32* %row, align 4
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.147, i32 0, i32 0)) #4
  %103 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_thickness = getelementptr inbounds %struct.GFlare, %struct.GFlare* %103, i32 0, i32 21
  %104 = load double, double* %rays_thickness, align 8
  %call78 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %101, i32 0, i32 %102, i8* %call77, i32 80, i32 6, double %104, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 0.000000e+00, double 2.621440e+05, i8* null, i8* null)
  store %struct._GtkObject* %call78, %struct._GtkObject** %adj, align 8
  %105 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %106 = bitcast %struct._GtkObject* %105 to i8*
  %107 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %rays_thickness79 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %107, i32 0, i32 21
  %108 = bitcast double* %rays_thickness79 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %110 = bitcast %struct._GtkObject* %109 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %111)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_notebook_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call82)
  %114 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkNotebook*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0)) #4
  %call85 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call84)
  %call86 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %114, %struct._GtkWidget* %115, %struct._GtkWidget* %call85)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_page_map_callback to void ()*), i8* inttoptr (i64 4 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_make_page_sflare(%struct.GFlareEditor* %ed, %struct._GtkWidget* %notebook) #0 {
entry:
  %ed.addr = alloca %struct.GFlareEditor*, align 8
  %notebook.addr = alloca %struct._GtkWidget*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %shape_vbox = alloca %struct._GtkWidget*, align 8
  %shape_group = alloca %struct._GSList*, align 8
  %polygon_hbox = alloca %struct._GtkWidget*, align 8
  %seed_hbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %seed = alloca %struct._GtkWidget*, align 8
  %entry2 = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %buf = alloca [256 x i8], align 16
  %row = alloca i32, align 4
  store %struct.GFlareEditor* %ed, %struct.GFlareEditor** %ed.addr, align 8
  store %struct._GtkWidget* %notebook, %struct._GtkWidget** %notebook.addr, align 8
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %gflare1 = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 5
  %1 = load %struct.GFlare*, %struct.GFlare** %gflare1, align 8
  store %struct.GFlare* %1, %struct.GFlare** %gflare, align 8
  store %struct._GSList* null, %struct._GSList** %shape_group, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %4, i32 12)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0)) #4
  %call6 = call %struct._GtkWidget* @gimp_frame_new(i8* %call5)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call7)
  %7 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call9 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %table, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %12, i32 6)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_table_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %18, %struct._GtkWidget* %19)
  %20 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %20, i32 0, i32 22
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_radial, i32 0, i32 0
  %21 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_radial16 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %21, i32 0, i32 22
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_radial16, i32 0, i32 0
  %call18 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay, i8* %arraydecay17)
  store %struct._GradientMenu* %call18, %struct._GradientMenu** %gm, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.139, i32 0, i32 0)) #4
  %23 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %22, i32 0, i32 0, i8* %call19, %struct._GradientMenu* %23)
  %24 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_sizefac = getelementptr inbounds %struct.GFlare, %struct.GFlare* %24, i32 0, i32 23
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_sizefac, i32 0, i32 0
  %25 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_sizefac21 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %25, i32 0, i32 23
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_sizefac21, i32 0, i32 0
  %call23 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay20, i8* %arraydecay22)
  store %struct._GradientMenu* %call23, %struct._GradientMenu** %gm, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.149, i32 0, i32 0)) #4
  %27 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %26, i32 0, i32 1, i8* %call24, %struct._GradientMenu* %27)
  %28 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_probability = getelementptr inbounds %struct.GFlare, %struct.GFlare* %28, i32 0, i32 24
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_probability, i32 0, i32 0
  %29 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_probability26 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %29, i32 0, i32 24
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_probability26, i32 0, i32 0
  %call28 = call %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* @ed_gradient_menu_callback, i8* %arraydecay25, i8* %arraydecay27)
  store %struct._GradientMenu* %call28, %struct._GradientMenu** %gm, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.150, i32 0, i32 0)) #4
  %31 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  call void @ed_put_gradient_menu(%struct._GtkWidget* %30, i32 0, i32 2, i8* %call29, %struct._GradientMenu* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0)) #4
  %call31 = call %struct._GtkWidget* @gimp_frame_new(i8* %call30)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %frame, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call32)
  %35 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %call34 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %table, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call35)
  %40 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %40, i32 6)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_table_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call37)
  %43 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %43, i32 6)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call39)
  %46 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %46, %struct._GtkWidget* %47)
  store i32 0, i32* %row, align 4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call41)
  %50 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %51 = load i32, i32* %row, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %row, align 4
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0)) #4
  %52 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %52, i32 0, i32 25
  %53 = load double, double* %sflare_size, align 8
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %50, i32 0, i32 %51, i8* %call43, i32 80, i32 6, double %53, double 0.000000e+00, double 2.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 1, i32 0, double 0.000000e+00, double 0x41DFFFFFFFC00000, i8* null, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  %54 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %55 = bitcast %struct._GtkObject* %54 to i8*
  %56 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_size45 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %56, i32 0, i32 25
  %57 = bitcast double* %sflare_size45 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %59 = bitcast %struct._GtkObject* %58 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_table_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call48)
  %62 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkTable*
  %63 = load i32, i32* %row, align 4
  %inc50 = add nsw i32 %63, 1
  store i32 %inc50, i32* %row, align 4
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0)) #4
  %64 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %64, i32 0, i32 26
  %65 = load double, double* %sflare_rotation, align 8
  %call52 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %62, i32 0, i32 %63, i8* %call51, i32 80, i32 6, double %65, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call52, %struct._GtkObject** %adj, align 8
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %68 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_rotation53 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %68, i32 0, i32 26
  %69 = bitcast double* %sflare_rotation53 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %69, void (i8*, %struct._GClosure*)* null, i32 0)
  %70 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %71 = bitcast %struct._GtkObject* %70 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call56)
  %74 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %75 = load i32, i32* %row, align 4
  %inc58 = add nsw i32 %75, 1
  store i32 %inc58, i32* %row, align 4
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0)) #4
  %76 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %76, i32 0, i32 27
  %77 = load double, double* %sflare_hue, align 8
  %call60 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %74, i32 0, i32 %75, i8* %call59, i32 80, i32 6, double %77, double -1.800000e+02, double 1.800000e+02, double 1.000000e+00, double 1.500000e+01, i32 1, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call60, %struct._GtkObject** %adj, align 8
  %78 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %79 = bitcast %struct._GtkObject* %78 to i8*
  %80 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_hue61 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %80, i32 0, i32 27
  %81 = bitcast double* %sflare_hue61 to i8*
  %call62 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %83 = bitcast %struct._GtkObject* %82 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.151, i32 0, i32 0)) #4
  %call65 = call %struct._GtkWidget* @gimp_frame_new(i8* %call64)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %frame, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call66)
  %87 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 0, i32 0, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %call68 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %shape_vbox, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_container_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call69)
  %92 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkContainer*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %92, %struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %95 = load %struct._GSList*, %struct._GSList** %shape_group, align 8
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i32 0, i32 0)) #4
  %call72 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %95, i8* %call71)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %toggle, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_radio_button_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call73)
  %98 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkRadioButton*
  %call75 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %98)
  store %struct._GSList* %call75, %struct._GSList** %shape_group, align 8
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 80)
  %101 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* null)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %103 = bitcast %struct._GtkWidget* %102 to i8*
  %104 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_shape = getelementptr inbounds %struct.GFlare, %struct.GFlare* %104, i32 0, i32 28
  %105 = bitcast i32* %sflare_shape to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_shape_radio_callback to void ()*), i8* %105, void (i8*, %struct._GClosure*)* null, i32 0)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_toggle_button_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call78)
  %108 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkToggleButton*
  %109 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_shape80 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %109, i32 0, i32 28
  %110 = load i32, i32* %sflare_shape80, align 4
  %cmp = icmp eq i32 %110, 0
  %conv = zext i1 %cmp to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %108, i32 %conv)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_vbox, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_box_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call81)
  %113 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call83 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %polygon_hbox, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %shape_vbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call84)
  %118 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %polygon_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %119, i32 0, i32 0, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %polygon_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %121 = load %struct._GSList*, %struct._GSList** %shape_group, align 8
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0)) #4
  %call87 = call %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList* %121, i8* %call86)
  %122 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %polygon_toggle = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %122, i32 0, i32 11
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %polygon_toggle, align 8
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %toggle, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_radio_button_get_type() #7
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call88)
  %125 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkRadioButton*
  %call90 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %125)
  store %struct._GSList* %call90, %struct._GSList** %shape_group, align 8
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %127 = bitcast %struct._GtkWidget* %126 to %struct._GTypeInstance*
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 80)
  %128 = bitcast %struct._GTypeInstance* %call91 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %130 = bitcast %struct._GtkWidget* %129 to i8*
  %131 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_shape92 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %131, i32 0, i32 28
  %132 = bitcast i32* %sflare_shape92 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_shape_radio_callback to void ()*), i8* %132, void (i8*, %struct._GClosure*)* null, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_toggle_button_get_type() #7
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call94)
  %135 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkToggleButton*
  %136 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_shape96 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %136, i32 0, i32 28
  %137 = load i32, i32* %sflare_shape96, align 4
  %cmp97 = icmp eq i32 %137, 1
  %conv98 = zext i1 %cmp97 to i32
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %135, i32 %conv98)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %polygon_hbox, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #7
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call99)
  %140 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %140, %struct._GtkWidget* %141, i32 0, i32 0, i32 0)
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %142)
  %call101 = call %struct._GtkWidget* @gtk_entry_new()
  %143 = load %struct.GFlareEditor*, %struct.GFlareEditor** %ed.addr, align 8
  %polygon_entry = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %143, i32 0, i32 10
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %polygon_entry, align 8
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %entry2, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %145 = bitcast %struct._GtkWidget* %144 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_entry_get_type() #7
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call102)
  %146 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkEntry*
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %146, i32 4)
  %arraydecay104 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %147 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_nverts = getelementptr inbounds %struct.GFlare, %struct.GFlare* %147, i32 0, i32 29
  %148 = load i32, i32* %sflare_nverts, align 4
  %call105 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay104, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 %148)
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_entry_get_type() #7
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call106)
  %151 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkEntry*
  %arraydecay108 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @gtk_entry_set_text(%struct._GtkEntry* %151, i8* %arraydecay108)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %153 = bitcast %struct._GtkWidget* %152 to i8*
  %154 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_nverts109 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %154, i32 0, i32 29
  %155 = bitcast i32* %sflare_nverts109 to i8*
  %call110 = call i64 @g_signal_connect_data(i8* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_ientry_callback to void ()*), i8* %155, void (i8*, %struct._GClosure*)* null, i32 0)
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %polygon_hbox, align 8
  %157 = bitcast %struct._GtkWidget* %156 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_box_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %157, i64 %call111)
  %158 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkBox*
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %158, %struct._GtkWidget* %159, i32 0, i32 0, i32 0)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %160)
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %162 = bitcast %struct._GtkWidget* %161 to i8*
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  %164 = bitcast %struct._GtkWidget* %163 to i8*
  %call113 = call %struct._GBinding* @g_object_bind_property(i8* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 2)
  %call114 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call114, %struct._GtkWidget** %seed_hbox, align 8
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_box_get_type() #7
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call115)
  %167 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkBox*
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %167, %struct._GtkWidget* %168, i32 0, i32 0, i32 0)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %169)
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.155, i32 0, i32 0)) #4
  %call118 = call %struct._GtkWidget* @gtk_label_new(i8* %call117)
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %label, align 8
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_misc_get_type() #7
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call119)
  %172 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %172, float 0.000000e+00, float 5.000000e-01)
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call121)
  %175 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %175, %struct._GtkWidget* %176, i32 0, i32 0, i32 0)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %177)
  %178 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %sflare_seed = getelementptr inbounds %struct.GFlare, %struct.GFlare* %178, i32 0, i32 30
  %179 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %random_seed = getelementptr inbounds %struct.GFlare, %struct.GFlare* %179, i32 0, i32 31
  %call123 = call %struct._GtkWidget* @gimp_random_seed_new(i32* %sflare_seed, i32* %random_seed)
  store %struct._GtkWidget* %call123, %struct._GtkWidget** %seed, align 8
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %seed_hbox, align 8
  %181 = bitcast %struct._GtkWidget* %180 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %181, i64 %call124)
  %182 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %seed, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %182, %struct._GtkWidget* %183, i32 0, i32 1, i32 0)
  %184 = load %struct._GtkWidget*, %struct._GtkWidget** %seed, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %184)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %seed, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 80)
  %187 = bitcast %struct._GTypeInstance* %call126 to %struct._GObject*
  %call127 = call i8* @g_object_get_data(%struct._GObject* %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.156, i32 0, i32 0))
  %188 = bitcast i8* %call127 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_spin_button_get_type() #7
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %188, i64 %call128)
  %189 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkSpinButton*
  %call130 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %189)
  %190 = bitcast %struct._GtkAdjustment* %call130 to i8*
  %call131 = call i64 @g_signal_connect_data(i8* %190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), void ()* @ed_preview_update, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook.addr, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_notebook_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call132)
  %193 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkNotebook*
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %call134 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0)) #4
  %call135 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call134)
  %call136 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %193, %struct._GtkWidget* %194, %struct._GtkWidget* %call135)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %196 = bitcast %struct._GtkWidget* %195 to i8*
  %call137 = call i64 @g_signal_connect_data(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_page_map_callback to void ()*), i8* inttoptr (i64 5 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %197)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_update() #0 {
entry:
  %0 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %0, i32 0, i32 0
  %1 = load i32, i32* %init, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %init_params_done = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %2, i32 0, i32 12
  store i32 0, i32* %init_params_done, align 4
  %3 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %preview = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %3, i32 0, i32 7
  %4 = load %struct._Preview*, %struct._Preview** %preview, align 8
  call void @preview_render_start(%struct._Preview* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_menu_rescan() #0 {
entry:
  %tmp = alloca %struct._GList*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %0 = load %struct._GList*, %struct._GList** @gradient_menus, align 8
  store %struct._GList* %0, %struct._GList** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GradientMenu*
  store %struct._GradientMenu* %4, %struct._GradientMenu** %gm, align 8
  %5 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %6, %struct._GList** %tmp, align 8
  %7 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %combo = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkComboBox*
  %call4 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %10)
  store %struct._GtkTreeModel* %call4, %struct._GtkTreeModel** %model, align 8
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = bitcast %struct._GtkTreeModel* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_list_store_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkListStore*
  call void @gtk_list_store_clear(%struct._GtkListStore* %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @gm_gradient_get_list()
  %14 = load %struct._GList*, %struct._GList** @gradient_menus, align 8
  store %struct._GList* %14, %struct._GList** %tmp, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.9, %while.end
  %15 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool8 = icmp ne %struct._GList* %15, null
  br i1 %tobool8, label %while.body.9, label %while.end.12

while.body.9:                                     ; preds = %while.cond.7
  %16 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data10 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data10, align 8
  %18 = bitcast i8* %17 to %struct._GradientMenu*
  store %struct._GradientMenu* %18, %struct._GradientMenu** %gm, align 8
  %19 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next11 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next11, align 8
  store %struct._GList* %20, %struct._GList** %tmp, align 8
  %21 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %22 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %gradient_name = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %22, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %gradient_name, i32 0, i32 0
  call void @gm_gradient_combo_fill(%struct._GradientMenu* %21, i8* %arraydecay)
  br label %while.cond.7

while.end.12:                                     ; preds = %while.cond.7
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gflare_copy(%struct.GFlare* %dest, %struct.GFlare* %src) #0 {
entry:
  %dest.addr = alloca %struct.GFlare*, align 8
  %src.addr = alloca %struct.GFlare*, align 8
  %name = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct.GFlare* %dest, %struct.GFlare** %dest.addr, align 8
  store %struct.GFlare* %src, %struct.GFlare** %src.addr, align 8
  %0 = load %struct.GFlare*, %struct.GFlare** %dest.addr, align 8
  %name1 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %0, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  store i8* %1, i8** %name, align 8
  %2 = load %struct.GFlare*, %struct.GFlare** %dest.addr, align 8
  %filename2 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %2, i32 0, i32 1
  %3 = load i8*, i8** %filename2, align 8
  store i8* %3, i8** %filename, align 8
  %4 = load %struct.GFlare*, %struct.GFlare** %dest.addr, align 8
  %5 = load %struct.GFlare*, %struct.GFlare** %src.addr, align 8
  %6 = bitcast %struct.GFlare* %4 to i8*
  %7 = bitcast %struct.GFlare* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 2472, i32 8, i1 false)
  %8 = load i8*, i8** %name, align 8
  %9 = load %struct.GFlare*, %struct.GFlare** %dest.addr, align 8
  %name3 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %9, i32 0, i32 0
  store i8* %8, i8** %name3, align 8
  %10 = load i8*, i8** %filename, align 8
  %11 = load %struct.GFlare*, %struct.GFlare** %dest.addr, align 8
  %filename4 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %11, i32 0, i32 1
  store i8* %10, i8** %filename4, align 8
  ret void
}

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #3

declare void @gtk_list_store_clear(%struct._GtkListStore*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gm_gradient_combo_fill(%struct._GradientMenu* %gm, i8* %default_gradient) #0 {
entry:
  %gm.addr = alloca %struct._GradientMenu*, align 8
  %default_gradient.addr = alloca i8*, align 8
  %active = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct._GradientMenu* %gm, %struct._GradientMenu** %gm.addr, align 8
  store i8* %default_gradient, i8** %default_gradient.addr, align 8
  store i32 0, i32* %active, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @num_gradient_names, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @gradient_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %name, align 8
  %5 = load i8*, i8** %name, align 8
  %6 = load i8*, i8** %default_gradient.addr, align 8
  %call = call i32 @strcmp(i8* %5, i8* %6) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct._GradientMenu*, %struct._GradientMenu** %gm.addr, align 8
  %combo = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %8, i32 0, i32 1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_int_combo_box_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call2)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpIntComboBox*
  %12 = load i32, i32* %i, align 4
  %13 = load i8*, i8** %name, align 8
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_append(%struct._GimpIntComboBox* %11, i32 0, i32 %12, i32 1, i8* %13, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GradientMenu*, %struct._GradientMenu** %gm.addr, align 8
  %combo4 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %15, i32 0, i32 1
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %combo4, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_int_combo_box_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpIntComboBox*
  %19 = load i32, i32* %active, align 4
  %call7 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %18, i32 %19)
  ret void
}

declare void @gimp_int_combo_box_append(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @preview_free(%struct._Preview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  %0 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  call void @preview_render_end(%struct._Preview* %0)
  %1 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %buffer = getelementptr inbounds %struct._Preview, %struct._Preview* %1, i32 0, i32 14
  %2 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %2)
  %3 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %full_image_buffer = getelementptr inbounds %struct._Preview, %struct._Preview* %3, i32 0, i32 15
  %4 = load i8*, i8** %full_image_buffer, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %6 = bitcast %struct._Preview* %5 to i8*
  call void @g_free(i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_render_general(i8* %buffer, i32 %y) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %gflare_pix = alloca [4 x i8], align 1
  %gflare_a = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %gflare_pix, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %2 to double
  call void @calc_gflare_pix(i8* %arraydecay, double %conv, double %conv1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ed_preview_render_general.src_pix, i32 0, i32 0))
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %gflare_pix, i32 0, i64 3
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  store i32 %conv2, i32* %gflare_a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %4, 3
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %gflare_pix, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %7 = load i32, i32* %gflare_a, align 4
  %mul = mul nsw i32 %conv8, %7
  %div = sdiv i32 %mul, 255
  %conv9 = trunc i32 %div to i8
  %8 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %conv9, i8* %8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %10 = load i32, i32* %x, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %x, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_render_glow(i8* %buffer, i32 %y) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %pix = alloca [4 x i8], align 1
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %2 to double
  call void @calc_glow_pix(i8* %arraydecay, double %conv, double %conv1)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 3
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %5 to i32
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i64 3
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %mul = mul nsw i32 %conv6, %conv8
  %div = sdiv i32 %mul, 255
  %conv9 = trunc i32 %div to i8
  %7 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %conv9, i8* %7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %9 = load i32, i32* %x, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %x, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_render_rays(i8* %buffer, i32 %y) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %pix = alloca [4 x i8], align 1
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %2 to double
  call void @calc_rays_pix(i8* %arraydecay, double %conv, double %conv1)
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 3
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %5 to i32
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i64 3
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %mul = mul nsw i32 %conv6, %conv8
  %div = sdiv i32 %mul, 255
  %conv9 = trunc i32 %div to i8
  %7 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %conv9, i8* %7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %9 = load i32, i32* %x, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %x, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_preview_render_sflare(i8* %buffer, i32 %y) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %pix = alloca [4 x i8], align 1
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %2 to double
  call void @calc_sflare_pix(i8* %arraydecay, double %conv, double %conv1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ed_preview_render_sflare.src_pix, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 3
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %5 to i32
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %pix, i32 0, i64 3
  %6 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %mul = mul nsw i32 %conv6, %conv8
  %div = sdiv i32 %mul, 255
  %conv9 = trunc i32 %div to i8
  %7 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %conv9, i8* %7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %9 = load i32, i32* %x, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %x, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @ed_mode_menu_new(i32* %mode_var) #0 {
entry:
  %mode_var.addr = alloca i32*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store i32* %mode_var, i32** %mode_var.addr, align 8
  %call = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gflare_menu_modes, i32 0, i32 0))
  store %struct._GtkWidget* %call, %struct._GtkWidget** %combo, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_int_combo_box_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %3 = load i32*, i32** %mode_var.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %mode_var.addr, align 8
  %6 = bitcast i32* %5 to i8*
  %call3 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %2, i32 %4, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @ed_mode_menu_callback to void ()*), i8* %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  ret %struct._GtkWidget* %7
}

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ed_page_map_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %page_num = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %page_num, align 4
  %2 = load i32, i32* %page_num, align 4
  %3 = load %struct.GFlareEditor*, %struct.GFlareEditor** @ed, align 8
  %cur_page = getelementptr inbounds %struct.GFlareEditor, %struct.GFlareEditor* %3, i32 0, i32 9
  store i32 %2, i32* %cur_page, align 4
  call void @ed_preview_update()
  ret void
}

declare %struct._GtkWidget* @gimp_int_combo_box_new_array(i32, i8**) #1

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ed_mode_menu_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %4)
  call void @ed_preview_update()
  ret void
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GradientMenu* @gradient_menu_new(void (i8*, i8*)* %callback, i8* %callback_data, i8* %default_gradient_name) #0 {
entry:
  %callback.addr = alloca void (i8*, i8*)*, align 8
  %callback_data.addr = alloca i8*, align 8
  %default_gradient_name.addr = alloca i8*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  store void (i8*, i8*)* %callback, void (i8*, i8*)** %callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %default_gradient_name, i8** %default_gradient_name.addr, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 288)
  %0 = bitcast i8* %call to %struct._GradientMenu*
  store %struct._GradientMenu* %0, %struct._GradientMenu** %gm, align 8
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %callback.addr, align 8
  %2 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %callback1 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %2, i32 0, i32 2
  store void (i8*, i8*)* %1, void (i8*, i8*)** %callback1, align 8
  %3 = load i8*, i8** %callback_data.addr, align 8
  %4 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %callback_data2 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %4, i32 0, i32 3
  store i8* %3, i8** %callback_data2, align 8
  %call3 = call %struct._GtkWidget* @gimp_preview_area_new()
  %5 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %preview = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %5, i32 0, i32 0
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %preview, align 8
  %6 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %preview4 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %preview4, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %7, i32 80, i32 16)
  %call5 = call i64 @gimp_int_combo_box_get_type() #7
  %call6 = call i8* (i64, i8*, ...) @g_object_new(i64 %call5, i8* null)
  %8 = bitcast i8* %call6 to %struct._GtkWidget*
  %9 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %combo = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %9, i32 0, i32 1
  store %struct._GtkWidget* %8, %struct._GtkWidget** %combo, align 8
  %10 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %combo7 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %10, i32 0, i32 1
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %combo7, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %14 = bitcast %struct._GradientMenu* %13 to i8*
  %call8 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gm_gradient_combo_callback to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %16 = load i8*, i8** %default_gradient_name.addr, align 8
  call void @gm_gradient_combo_fill(%struct._GradientMenu* %15, i8* %16)
  %17 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %preview9 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %17, i32 0, i32 0
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %preview9, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %combo10 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %19, i32 0, i32 1
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %combo10, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %21 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %combo11 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %21, i32 0, i32 1
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %combo11, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %25 = bitcast %struct._GradientMenu* %24 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gm_combo_destroy_callback to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GList*, %struct._GList** @gradient_menus, align 8
  %27 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %28 = bitcast %struct._GradientMenu* %27 to i8*
  %call13 = call %struct._GList* @g_list_append(%struct._GList* %26, i8* %28)
  store %struct._GList* %call13, %struct._GList** @gradient_menus, align 8
  %29 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  ret %struct._GradientMenu* %29
}

; Function Attrs: nounwind uwtable
define internal void @ed_gradient_menu_callback(i8* %gradient_name, i8* %data) #0 {
entry:
  %gradient_name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %dest_string = alloca i8*, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %dest_string, align 8
  %1 = load i8*, i8** %dest_string, align 8
  %2 = load i8*, i8** %gradient_name.addr, align 8
  call void @gradient_name_copy(i8* %1, i8* %2)
  call void @ed_preview_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ed_put_gradient_menu(%struct._GtkWidget* %table, i32 %x, i32 %y, i8* %caption, %struct._GradientMenu* %gm) #0 {
entry:
  %table.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %caption.addr = alloca i8*, align 8
  %gm.addr = alloca %struct._GradientMenu*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %table, %struct._GtkWidget** %table.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %caption, i8** %caption.addr, align 8
  store %struct._GradientMenu* %gm, %struct._GradientMenu** %gm.addr, align 8
  %0 = load i8*, i8** %caption.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_misc_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %3, float 1.000000e+00, float 5.000000e-01)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %4)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %10, 1
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %12, 1
  call void @gtk_table_attach(%struct._GtkTable* %7, %struct._GtkWidget* %8, i32 %9, i32 %add, i32 %11, i32 %add5, i32 4, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_table_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkTable*
  %16 = load %struct._GradientMenu*, %struct._GradientMenu** %gm.addr, align 8
  %preview = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %18 = load i32, i32* %x.addr, align 4
  %add8 = add nsw i32 %18, 1
  %19 = load i32, i32* %x.addr, align 4
  %add9 = add nsw i32 %19, 2
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %y.addr, align 4
  %add10 = add nsw i32 %21, 1
  call void @gtk_table_attach(%struct._GtkTable* %15, %struct._GtkWidget* %17, i32 %add8, i32 %add9, i32 %20, i32 %add10, i32 0, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table.addr, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_table_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTable*
  %25 = load %struct._GradientMenu*, %struct._GradientMenu** %gm.addr, align 8
  %combo = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %25, i32 0, i32 1
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %27 = load i32, i32* %x.addr, align 4
  %add13 = add nsw i32 %27, 2
  %28 = load i32, i32* %x.addr, align 4
  %add14 = add nsw i32 %28, 3
  %29 = load i32, i32* %y.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  %add15 = add nsw i32 %30, 1
  call void @gtk_table_attach(%struct._GtkTable* %24, %struct._GtkWidget* %26, i32 %add13, i32 %add14, i32 %29, i32 %add15, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gm_gradient_combo_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  %gradient_name = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GradientMenu*
  store %struct._GradientMenu* %1, %struct._GradientMenu** %gm, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %index)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %index, align 4
  %7 = load i32, i32* @num_gradient_names, align 4
  %cmp4 = icmp sge i32 %6, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  br label %if.end.9

if.end:                                           ; preds = %lor.lhs.false.3
  %8 = load i32, i32* %index, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** @gradient_names, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  store i8* %10, i8** %gradient_name, align 8
  %11 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %gradient_name5 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %gradient_name5, i32 0, i32 0
  %12 = load i8*, i8** %gradient_name, align 8
  call void @gradient_name_copy(i8* %arraydecay, i8* %12)
  %13 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %preview = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %15 = load i8*, i8** %gradient_name, align 8
  call void @gm_preview_draw(%struct._GtkWidget* %14, i8* %15)
  %16 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %callback = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %16, i32 0, i32 2
  %17 = load void (i8*, i8*)*, void (i8*, i8*)** %callback, align 8
  %tobool6 = icmp ne void (i8*, i8*)* %17, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %18 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %callback8 = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %18, i32 0, i32 2
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %callback8, align 8
  %20 = load i8*, i8** %gradient_name, align 8
  %21 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %callback_data = getelementptr inbounds %struct._GradientMenu, %struct._GradientMenu* %21, i32 0, i32 3
  %22 = load i8*, i8** %callback_data, align 8
  call void %19(i8* %20, i8* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gm_combo_destroy_callback(%struct._GtkWidget* %w, i8* %data) #0 {
entry:
  %w.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %gm = alloca %struct._GradientMenu*, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GradientMenu*
  store %struct._GradientMenu* %1, %struct._GradientMenu** %gm, align 8
  %2 = load %struct._GList*, %struct._GList** @gradient_menus, align 8
  %3 = load %struct._GradientMenu*, %struct._GradientMenu** %gm, align 8
  %4 = bitcast %struct._GradientMenu* %3 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %2, i8* %4)
  store %struct._GList* %call, %struct._GList** @gradient_menus, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gm_preview_draw(%struct._GtkWidget* %preview, i8* %gradient_name) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %gradient_name.addr = alloca i8*, align 8
  %values = alloca [80 x [4 x i8]], align 16
  %nvalues = alloca i32, align 4
  %row = alloca i32, align 4
  %irow = alloca i32, align 4
  %col = alloca i32, align 4
  %dest_row = alloca [80 x [3 x i8]], align 16
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %check = alloca i32, align 4
  %b = alloca i32, align 4
  %dest_total_preview_buffer = alloca i8*, align 8
  %alpha = alloca i32, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i8* %gradient_name, i8** %gradient_name.addr, align 8
  store i32 80, i32* %nvalues, align 4
  store i32 3, i32* %alpha, align 4
  %0 = load i8*, i8** %gradient_name.addr, align 8
  %arraydecay = getelementptr inbounds [80 x [4 x i8]], [80 x [4 x i8]]* %values, i32 0, i32 0
  %1 = bitcast [4 x i8]* %arraydecay to i8*
  %2 = load i32, i32* %nvalues, align 4
  call void @gradient_get_values(i8* %0, i8* %1, i32 %2)
  %call = call noalias i8* @g_malloc_n(i64 3840, i64 1)
  store i8* %call, i8** %dest_total_preview_buffer, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %entry
  %3 = load i32, i32* %row, align 4
  %cmp = icmp slt i32 %3, 16
  br i1 %cmp, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.62, %for.body
  %4 = load i32, i32* %col, align 4
  %cmp2 = icmp slt i32 %4, 80
  br i1 %cmp2, label %for.body.3, label %for.end.64

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %col, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [80 x [3 x i8]], [80 x [3 x i8]]* %dest_row, i32 0, i64 %idxprom
  %arraydecay4 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i32 0, i32 0
  store i8* %arraydecay4, i8** %dest, align 8
  %6 = load i32, i32* %col, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [80 x [4 x i8]], [80 x [4 x i8]]* %values, i32 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx6, i32 0, i32 0
  store i8* %arraydecay7, i8** %src, align 8
  %7 = load i8*, i8** %src, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv, 255
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  store i32 0, i32* %b, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then
  %9 = load i32, i32* %b, align 4
  %cmp12 = icmp slt i32 %9, 3
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %10 = load i32, i32* %b, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load i8*, i8** %src, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 %idxprom15
  %12 = load i8, i8* %arrayidx16, align 1
  %13 = load i32, i32* %b, align 4
  %idxprom17 = sext i32 %13 to i64
  %14 = load i8*, i8** %dest, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %idxprom17
  store i8 %12, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %15 = load i32, i32* %b, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.61

if.else:                                          ; preds = %for.body.3
  %16 = load i32, i32* %col, align 4
  %rem = srem i32 %16, 8
  %cmp19 = icmp slt i32 %rem, 4
  %conv20 = zext i1 %cmp19 to i32
  %17 = load i32, i32* %row, align 4
  %rem21 = srem i32 %17, 8
  %cmp22 = icmp slt i32 %rem21, 4
  %conv23 = zext i1 %cmp22 to i32
  %xor = xor i32 %conv20, %conv23
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.else
  store i32 153, i32* %check, align 4
  br label %if.end

if.else.25:                                       ; preds = %if.else
  store i32 102, i32* %check, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.24
  %18 = load i8*, i8** %src, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.41

if.then.30:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.38, %if.then.30
  %20 = load i32, i32* %b, align 4
  %cmp32 = icmp slt i32 %20, 3
  br i1 %cmp32, label %for.body.34, label %for.end.40

for.body.34:                                      ; preds = %for.cond.31
  %21 = load i32, i32* %check, align 4
  %conv35 = trunc i32 %21 to i8
  %22 = load i32, i32* %b, align 4
  %idxprom36 = sext i32 %22 to i64
  %23 = load i8*, i8** %dest, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %23, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.34
  %24 = load i32, i32* %b, align 4
  %inc39 = add nsw i32 %24, 1
  store i32 %inc39, i32* %b, align 4
  br label %for.cond.31

for.end.40:                                       ; preds = %for.cond.31
  br label %if.end.60

if.else.41:                                       ; preds = %if.end
  store i32 0, i32* %b, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.57, %if.else.41
  %25 = load i32, i32* %b, align 4
  %cmp43 = icmp slt i32 %25, 3
  br i1 %cmp43, label %for.body.45, label %for.end.59

for.body.45:                                      ; preds = %for.cond.42
  %26 = load i32, i32* %b, align 4
  %idxprom46 = sext i32 %26 to i64
  %27 = load i8*, i8** %src, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %27, i64 %idxprom46
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %28 to i32
  %29 = load i8*, i8** %src, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 3
  %30 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %30 to i32
  %mul = mul nsw i32 %conv48, %conv50
  %31 = load i32, i32* %check, align 4
  %32 = load i8*, i8** %src, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %32, i64 3
  %33 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %33 to i32
  %sub = sub nsw i32 255, %conv52
  %mul53 = mul nsw i32 %31, %sub
  %add = add nsw i32 %mul, %mul53
  %div = sdiv i32 %add, 255
  %conv54 = trunc i32 %div to i8
  %34 = load i32, i32* %b, align 4
  %idxprom55 = sext i32 %34 to i64
  %35 = load i8*, i8** %dest, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %35, i64 %idxprom55
  store i8 %conv54, i8* %arrayidx56, align 1
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.45
  %36 = load i32, i32* %b, align 4
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, i32* %b, align 4
  br label %for.cond.42

for.end.59:                                       ; preds = %for.cond.42
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.59, %for.end.40
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %for.end
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %37 = load i32, i32* %col, align 4
  %inc63 = add nsw i32 %37, 1
  store i32 %inc63, i32* %col, align 4
  br label %for.cond.1

for.end.64:                                       ; preds = %for.cond.1
  store i32 0, i32* %irow, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.75, %for.end.64
  %38 = load i32, i32* %irow, align 4
  %cmp66 = icmp slt i32 %38, 4
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.65
  %39 = load i32, i32* %row, align 4
  %40 = load i32, i32* %irow, align 4
  %add68 = add nsw i32 %39, %40
  %cmp69 = icmp slt i32 %add68, 16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.65
  %41 = phi i1 [ false, %for.cond.65 ], [ %cmp69, %land.rhs ]
  br i1 %41, label %for.body.71, label %for.end.77

for.body.71:                                      ; preds = %land.end
  %42 = load i8*, i8** %dest_total_preview_buffer, align 8
  %43 = load i32, i32* %row, align 4
  %44 = load i32, i32* %irow, align 4
  %add72 = add nsw i32 %43, %44
  %mul73 = mul nsw i32 %add72, 3
  %mul74 = mul nsw i32 %mul73, 80
  %idx.ext = sext i32 %mul74 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  %45 = bitcast [80 x [3 x i8]]* %dest_row to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %45, i64 240, i32 1, i1 false)
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.71
  %46 = load i32, i32* %irow, align 4
  %inc76 = add nsw i32 %46, 1
  store i32 %inc76, i32* %irow, align 4
  br label %for.cond.65

for.end.77:                                       ; preds = %land.end
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.77
  %47 = load i32, i32* %row, align 4
  %add79 = add nsw i32 %47, 4
  store i32 %add79, i32* %row, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_preview_area_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call81)
  %50 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpPreviewArea*
  %51 = load i8*, i8** %dest_total_preview_buffer, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %50, i32 0, i32 0, i32 80, i32 16, i32 0, i8* %51, i32 240)
  %52 = load i8*, i8** %dest_total_preview_buffer, align 8
  call void @g_free(i8* %52)
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_label(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ed_shape_radio_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @ed_preview_update()
  ret void
}

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ed_ientry_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %new_val = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %2)
  %call3 = call i32 @atoi(i8* %call2) #9
  store i32 %call3, i32* %new_val, align 4
  %3 = load i32, i32* %new_val, align 4
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to i32*
  store i32 %3, i32* %5, align 4
  call void @ed_preview_update()
  ret void
}

declare %struct._GtkWidget* @gimp_random_seed_new(i32*, i32*) #1

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind uwtable
define internal void @preview_render_start(%struct._Preview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  %0 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  call void @preview_render_end(%struct._Preview* %0)
  %1 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %init_done = getelementptr inbounds %struct._Preview, %struct._Preview* %1, i32 0, i32 11
  store i32 0, i32* %init_done, align 4
  %2 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %current_y = getelementptr inbounds %struct._Preview, %struct._Preview* %2, i32 0, i32 12
  store i32 0, i32* %current_y, align 4
  %3 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %drawn_y = getelementptr inbounds %struct._Preview, %struct._Preview* %3, i32 0, i32 13
  store i32 0, i32* %drawn_y, align 4
  %4 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %5 = bitcast %struct._Preview* %4 to i8*
  %call = call i32 @g_timeout_add(i32 100, i32 (i8*)* bitcast (i32 (%struct._Preview*)* @preview_render_start_2 to i32 (i8*)*), i8* %5)
  %6 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %timeout_tag = getelementptr inbounds %struct._Preview, %struct._Preview* %6, i32 0, i32 9
  store i32 %call, i32* %timeout_tag, align 4
  ret void
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_render_start_2(%struct._Preview* %preview) #0 {
entry:
  %preview.addr = alloca %struct._Preview*, align 8
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  %0 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %timeout_tag = getelementptr inbounds %struct._Preview, %struct._Preview* %0, i32 0, i32 9
  store i32 0, i32* %timeout_tag, align 4
  %1 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %2 = bitcast %struct._Preview* %1 to i8*
  %call = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._Preview*)* @preview_handle_idle to i32 (i8*)*), i8* %2)
  %3 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %idle_tag = getelementptr inbounds %struct._Preview, %struct._Preview* %3, i32 0, i32 10
  store i32 %call, i32* %idle_tag, align 4
  ret i32 0
}

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @preview_handle_idle(%struct._Preview* %preview) #0 {
entry:
  %retval = alloca i32, align 4
  %preview.addr = alloca %struct._Preview*, align 8
  %done = alloca i32, align 4
  store %struct._Preview* %preview, %struct._Preview** %preview.addr, align 8
  store i32 0, i32* %done, align 4
  %0 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %init_done = getelementptr inbounds %struct._Preview, %struct._Preview* %0, i32 0, i32 11
  %1 = load i32, i32* %init_done, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %init_func = getelementptr inbounds %struct._Preview, %struct._Preview* %2, i32 0, i32 3
  %3 = load i32 (%struct._Preview*, i8*)*, i32 (%struct._Preview*, i8*)** %init_func, align 8
  %tobool = icmp ne i32 (%struct._Preview*, i8*)* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %init_func1 = getelementptr inbounds %struct._Preview, %struct._Preview* %4, i32 0, i32 3
  %5 = load i32 (%struct._Preview*, i8*)*, i32 (%struct._Preview*, i8*)** %init_func1, align 8
  %6 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %7 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %init_data = getelementptr inbounds %struct._Preview, %struct._Preview* %7, i32 0, i32 4
  %8 = load i8*, i8** %init_data, align 8
  %call = call i32 %5(%struct._Preview* %6, i8* %8)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %9 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %init_done4 = getelementptr inbounds %struct._Preview, %struct._Preview* %9, i32 0, i32 11
  store i32 1, i32* %init_done4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %10 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %render_func = getelementptr inbounds %struct._Preview, %struct._Preview* %10, i32 0, i32 5
  %11 = load void (%struct._Preview*, i8*, i32, i8*)*, void (%struct._Preview*, i8*, i32, i8*)** %render_func, align 8
  %tobool6 = icmp ne void (%struct._Preview*, i8*, i32, i8*)* %11, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %render_func8 = getelementptr inbounds %struct._Preview, %struct._Preview* %12, i32 0, i32 5
  %13 = load void (%struct._Preview*, i8*, i32, i8*)*, void (%struct._Preview*, i8*, i32, i8*)** %render_func8, align 8
  %14 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %15 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %buffer = getelementptr inbounds %struct._Preview, %struct._Preview* %15, i32 0, i32 14
  %16 = load i8*, i8** %buffer, align 8
  %17 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %current_y = getelementptr inbounds %struct._Preview, %struct._Preview* %17, i32 0, i32 12
  %18 = load i32, i32* %current_y, align 4
  %19 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %render_data = getelementptr inbounds %struct._Preview, %struct._Preview* %19, i32 0, i32 6
  %20 = load i8*, i8** %render_data, align 8
  call void %13(%struct._Preview* %14, i8* %16, i32 %18, i8* %20)
  br label %if.end.10

if.else:                                          ; preds = %if.end.5
  %21 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %buffer9 = getelementptr inbounds %struct._Preview, %struct._Preview* %21, i32 0, i32 14
  %22 = load i8*, i8** %buffer9, align 8
  %23 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %width = getelementptr inbounds %struct._Preview, %struct._Preview* %23, i32 0, i32 1
  %24 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %24, 3
  %conv = sext i32 %mul to i64
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %25 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %full_image_buffer = getelementptr inbounds %struct._Preview, %struct._Preview* %25, i32 0, i32 15
  %26 = load i8*, i8** %full_image_buffer, align 8
  %27 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %width11 = getelementptr inbounds %struct._Preview, %struct._Preview* %27, i32 0, i32 1
  %28 = load i32, i32* %width11, align 4
  %mul12 = mul nsw i32 %28, 3
  %29 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %current_y13 = getelementptr inbounds %struct._Preview, %struct._Preview* %29, i32 0, i32 12
  %30 = load i32, i32* %current_y13, align 4
  %mul14 = mul nsw i32 %mul12, %30
  %idx.ext = sext i32 %mul14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  %31 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %buffer15 = getelementptr inbounds %struct._Preview, %struct._Preview* %31, i32 0, i32 14
  %32 = load i8*, i8** %buffer15, align 8
  %33 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %width16 = getelementptr inbounds %struct._Preview, %struct._Preview* %33, i32 0, i32 1
  %34 = load i32, i32* %width16, align 4
  %mul17 = mul nsw i32 %34, 3
  %conv18 = sext i32 %mul17 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %32, i64 %conv18, i32 1, i1 false)
  %35 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %current_y19 = getelementptr inbounds %struct._Preview, %struct._Preview* %35, i32 0, i32 12
  %36 = load i32, i32* %current_y19, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %current_y19, align 4
  %37 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %height = getelementptr inbounds %struct._Preview, %struct._Preview* %37, i32 0, i32 2
  %38 = load i32, i32* %height, align 4
  %cmp20 = icmp sge i32 %inc, %38
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.10
  store i32 1, i32* %done, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.10
  %39 = load i32, i32* %done, align 4
  %tobool24 = icmp ne i32 %39, 0
  br i1 %tobool24, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.end.23
  %40 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %widget = getelementptr inbounds %struct._Preview, %struct._Preview* %40, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_preview_area_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call26)
  %43 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPreviewArea*
  %44 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %width28 = getelementptr inbounds %struct._Preview, %struct._Preview* %44, i32 0, i32 1
  %45 = load i32, i32* %width28, align 4
  %46 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %height29 = getelementptr inbounds %struct._Preview, %struct._Preview* %46, i32 0, i32 2
  %47 = load i32, i32* %height29, align 4
  %48 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %full_image_buffer30 = getelementptr inbounds %struct._Preview, %struct._Preview* %48, i32 0, i32 15
  %49 = load i8*, i8** %full_image_buffer30, align 8
  %50 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %width31 = getelementptr inbounds %struct._Preview, %struct._Preview* %50, i32 0, i32 1
  %51 = load i32, i32* %width31, align 4
  %mul32 = mul nsw i32 %51, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %43, i32 0, i32 0, i32 %45, i32 %47, i32 0, i8* %49, i32 %mul32)
  %52 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %current_y33 = getelementptr inbounds %struct._Preview, %struct._Preview* %52, i32 0, i32 12
  %53 = load i32, i32* %current_y33, align 4
  %54 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  %drawn_y = getelementptr inbounds %struct._Preview, %struct._Preview* %54, i32 0, i32 13
  store i32 %53, i32* %drawn_y, align 4
  %55 = load %struct._Preview*, %struct._Preview** %preview.addr, align 8
  call void @preview_render_end(%struct._Preview* %55)
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.23
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.25, %if.then.3
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @gflare_save(%struct.GFlare* %gflare) #0 {
entry:
  %gflare.addr = alloca %struct.GFlare*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %path = alloca i8*, align 8
  %buf = alloca [3 x [39 x i8]], align 16
  %list = alloca %struct._GList*, align 8
  %gimprc = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %gflare_dir = alloca i8*, align 8
  store %struct.GFlare* %gflare, %struct.GFlare** %gflare.addr, align 8
  %0 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %filename = getelementptr inbounds %struct.GFlare, %struct.GFlare* %0, i32 0, i32 1
  %1 = load i8*, i8** %filename, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @gflare_path, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %3 = load i32, i32* @gflare_save.message_ok, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then.2
  %call = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call, i8** %gimprc, align 8
  %call4 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0))
  store i8* %call4, i8** %dir, align 8
  %call5 = call noalias i8* @g_strescape(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.158, i32 0, i32 0), i8* null)
  store i8* %call5, i8** %gflare_dir, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.159, i32 0, i32 0)) #4
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %6 = load i8*, i8** %gimprc, align 8
  %7 = load i8*, i8** %gflare_dir, align 8
  %8 = load i8*, i8** %dir, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %8)
  call void (i8*, ...) @g_message(i8* %call6, i8* %5, i8* %6, i8* %7, i8* %call7)
  %9 = load i8*, i8** %gimprc, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %gflare_dir, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %11)
  store i32 1, i32* @gflare_save.message_ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then.2
  br label %return

if.end.8:                                         ; preds = %if.then
  %12 = load i8*, i8** @gflare_path, align 8
  %call9 = call %struct._GList* @gimp_path_parse(i8* %12, i32 256, i32 0, %struct._GList** null)
  store %struct._GList* %call9, %struct._GList** %list, align 8
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %call10 = call noalias i8* @gimp_path_get_user_writable_dir(%struct._GList* %13)
  store i8* %call10, i8** %path, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  call void @gimp_path_free(%struct._GList* %14)
  %15 = load i8*, i8** %path, align 8
  %tobool11 = icmp ne i8* %15, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %call13 = call i8* @gimp_directory() #7
  %call14 = call noalias i8* @g_strdup(i8* %call13)
  store i8* %call14, i8** %path, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.8
  %16 = load i8*, i8** %path, align 8
  %17 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %name16 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %17, i32 0, i32 0
  %18 = load i8*, i8** %name16, align 8
  %call17 = call noalias i8* (i8*, ...) @g_build_filename(i8* %16, i8* %18, i8* null)
  %19 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %filename18 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %19, i32 0, i32 1
  store i8* %call17, i8** %filename18, align 8
  %20 = load i8*, i8** %path, align 8
  call void @g_free(i8* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.15, %entry
  %21 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %filename20 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %21, i32 0, i32 1
  %22 = load i8*, i8** %filename20, align 8
  %call21 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0))
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %fp, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool22 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool22, label %if.end.29, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.161, i32 0, i32 0)) #4
  %24 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %filename25 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %24, i32 0, i32 1
  %25 = load i8*, i8** %filename25, align 8
  %call26 = call i8* @gimp_filename_to_utf8(i8* %25)
  %call27 = call i32* @__errno_location() #7
  %26 = load i32, i32* %call27, align 4
  %call28 = call i8* @g_strerror(i32 %26) #7
  call void (i8*, ...) @g_message(i8* %call24, i8* %call26, i8* %call28)
  br label %return

if.end.29:                                        ; preds = %if.end.19
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0))
  %arrayidx = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %28 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %28, i32 0, i32 2
  %29 = load double, double* %glow_opacity, align 8
  %call31 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx32 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay33 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx32, i32 0, i32 0
  %31 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %31, i32 0, i32 3
  %32 = load i32, i32* %glow_mode, align 4
  %idxprom = zext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [4 x i8*], [4 x i8*]* @gflare_modes, i32 0, i64 %idxprom
  %33 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i8* %arraydecay33, i8* %33)
  %arrayidx36 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay37 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx36, i32 0, i32 0
  %34 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %34, i32 0, i32 4
  %35 = load double, double* %rays_opacity, align 8
  %call38 = call i8* @g_ascii_formatd(i8* %arraydecay37, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx39 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay40 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx39, i32 0, i32 0
  %37 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %37, i32 0, i32 5
  %38 = load i32, i32* %rays_mode, align 4
  %idxprom41 = zext i32 %38 to i64
  %arrayidx42 = getelementptr inbounds [4 x i8*], [4 x i8*]* @gflare_modes, i32 0, i64 %idxprom41
  %39 = load i8*, i8** %arrayidx42, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i8* %arraydecay40, i8* %39)
  %arrayidx44 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx44, i32 0, i32 0
  %40 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_opacity = getelementptr inbounds %struct.GFlare, %struct.GFlare* %40, i32 0, i32 6
  %41 = load double, double* %sflare_opacity, align 8
  %call46 = call i8* @g_ascii_formatd(i8* %arraydecay45, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx47 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay48 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx47, i32 0, i32 0
  %43 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_mode = getelementptr inbounds %struct.GFlare, %struct.GFlare* %43, i32 0, i32 7
  %44 = load i32, i32* %sflare_mode, align 4
  %idxprom49 = zext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds [4 x i8*], [4 x i8*]* @gflare_modes, i32 0, i64 %idxprom49
  %45 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i8* %arraydecay48, i8* %45)
  %46 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %46, i32 0, i32 8
  %arraydecay52 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_radial, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay52, %struct._IO_FILE* %47)
  %48 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_angular = getelementptr inbounds %struct.GFlare, %struct.GFlare* %48, i32 0, i32 9
  %arraydecay53 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular, i32 0, i32 0
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay53, %struct._IO_FILE* %49)
  %50 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_angular_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %50, i32 0, i32 10
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %glow_angular_size, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay54, %struct._IO_FILE* %51)
  %arrayidx55 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay56 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx55, i32 0, i32 0
  %52 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %52, i32 0, i32 11
  %53 = load double, double* %glow_size, align 8
  %call57 = call i8* @g_ascii_formatd(i8* %arraydecay56, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %53)
  %arrayidx58 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay59 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx58, i32 0, i32 0
  %54 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %54, i32 0, i32 12
  %55 = load double, double* %glow_rotation, align 8
  %call60 = call i8* @g_ascii_formatd(i8* %arraydecay59, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %55)
  %arrayidx61 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay62 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx61, i32 0, i32 0
  %56 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %glow_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %56, i32 0, i32 13
  %57 = load double, double* %glow_hue, align 8
  %call63 = call i8* @g_ascii_formatd(i8* %arraydecay62, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx64 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay65 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay67 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay69 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx68, i32 0, i32 0
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i8* %arraydecay65, i8* %arraydecay67, i8* %arraydecay69)
  %59 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %59, i32 0, i32 14
  %arraydecay71 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_radial, i32 0, i32 0
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay71, %struct._IO_FILE* %60)
  %61 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_angular = getelementptr inbounds %struct.GFlare, %struct.GFlare* %61, i32 0, i32 15
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular, i32 0, i32 0
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay72, %struct._IO_FILE* %62)
  %63 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_angular_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %63, i32 0, i32 16
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %rays_angular_size, i32 0, i32 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay73, %struct._IO_FILE* %64)
  %arrayidx74 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay75 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx74, i32 0, i32 0
  %65 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %65, i32 0, i32 17
  %66 = load double, double* %rays_size, align 8
  %call76 = call i8* @g_ascii_formatd(i8* %arraydecay75, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %66)
  %arrayidx77 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay78 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx77, i32 0, i32 0
  %67 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %67, i32 0, i32 18
  %68 = load double, double* %rays_rotation, align 8
  %call79 = call i8* @g_ascii_formatd(i8* %arraydecay78, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %68)
  %arrayidx80 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay81 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx80, i32 0, i32 0
  %69 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %69, i32 0, i32 19
  %70 = load double, double* %rays_hue, align 8
  %call82 = call i8* @g_ascii_formatd(i8* %arraydecay81, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx83 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay84 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx83, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay86 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx85, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay88 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx87, i32 0, i32 0
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i8* %arraydecay84, i8* %arraydecay86, i8* %arraydecay88)
  %arrayidx90 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay91 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx90, i32 0, i32 0
  %72 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_thickness = getelementptr inbounds %struct.GFlare, %struct.GFlare* %72, i32 0, i32 21
  %73 = load double, double* %rays_thickness, align 8
  %call92 = call i8* @g_ascii_formatd(i8* %arraydecay91, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %75 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %rays_nspikes = getelementptr inbounds %struct.GFlare, %struct.GFlare* %75, i32 0, i32 20
  %76 = load i32, i32* %rays_nspikes, align 4
  %arrayidx93 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay94 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx93, i32 0, i32 0
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.166, i32 0, i32 0), i32 %76, i8* %arraydecay94)
  %77 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_radial = getelementptr inbounds %struct.GFlare, %struct.GFlare* %77, i32 0, i32 22
  %arraydecay96 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_radial, i32 0, i32 0
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay96, %struct._IO_FILE* %78)
  %79 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_sizefac = getelementptr inbounds %struct.GFlare, %struct.GFlare* %79, i32 0, i32 23
  %arraydecay97 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_sizefac, i32 0, i32 0
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay97, %struct._IO_FILE* %80)
  %81 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_probability = getelementptr inbounds %struct.GFlare, %struct.GFlare* %81, i32 0, i32 24
  %arraydecay98 = getelementptr inbounds [256 x i8], [256 x i8]* %sflare_probability, i32 0, i32 0
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gflare_write_gradient_name(i8* %arraydecay98, %struct._IO_FILE* %82)
  %arrayidx99 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay100 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx99, i32 0, i32 0
  %83 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_size = getelementptr inbounds %struct.GFlare, %struct.GFlare* %83, i32 0, i32 25
  %84 = load double, double* %sflare_size, align 8
  %call101 = call i8* @g_ascii_formatd(i8* %arraydecay100, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %84)
  %arrayidx102 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay103 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx102, i32 0, i32 0
  %85 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_rotation = getelementptr inbounds %struct.GFlare, %struct.GFlare* %85, i32 0, i32 26
  %86 = load double, double* %sflare_rotation, align 8
  %call104 = call i8* @g_ascii_formatd(i8* %arraydecay103, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %86)
  %arrayidx105 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay106 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx105, i32 0, i32 0
  %87 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_hue = getelementptr inbounds %struct.GFlare, %struct.GFlare* %87, i32 0, i32 27
  %88 = load double, double* %sflare_hue, align 8
  %call107 = call i8* @g_ascii_formatd(i8* %arraydecay106, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), double %88)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arrayidx108 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay109 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay111 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x [39 x i8]], [3 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay113 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx112, i32 0, i32 0
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i8* %arraydecay109, i8* %arraydecay111, i8* %arraydecay113)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %91 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_shape = getelementptr inbounds %struct.GFlare, %struct.GFlare* %91, i32 0, i32 28
  %92 = load i32, i32* %sflare_shape, align 4
  %idxprom115 = zext i32 %92 to i64
  %arrayidx116 = getelementptr inbounds [2 x i8*], [2 x i8*]* @gflare_shapes, i32 0, i64 %idxprom115
  %93 = load i8*, i8** %arrayidx116, align 8
  %94 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_nverts = getelementptr inbounds %struct.GFlare, %struct.GFlare* %94, i32 0, i32 29
  %95 = load i32, i32* %sflare_nverts, align 4
  %96 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %sflare_seed = getelementptr inbounds %struct.GFlare, %struct.GFlare* %96, i32 0, i32 30
  %97 = load i32, i32* %sflare_seed, align 4
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i32 0, i32 0), i8* %93, i32 %95, i32 %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call118 = call i32 @fclose(%struct._IO_FILE* %98)
  br label %return

return:                                           ; preds = %if.end.29, %if.then.23, %if.end
  ret void
}

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare noalias i8* @gimp_path_get_user_writable_dir(%struct._GList*) #1

declare void @gimp_path_free(%struct._GList*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #3

declare noalias i8* @g_build_filename(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

; Function Attrs: nounwind uwtable
define internal void @gflare_write_gradient_name(i8* %name, %struct._IO_FILE* %fp) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %enc = alloca [1024 x i8], align 16
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %enc, i32 0, i32 0
  %0 = load i8*, i8** %name.addr, align 8
  call void @gradient_name_encode(i8* %arraydecay, i8* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %enc, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.168, i32 0, i32 0), i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gradient_name_encode(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %cnt = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 255, i32* %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %cnt, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %cnt, align 4
  %tobool1 = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %7 to i32
  %and = and i32 %conv2, 4
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load i8, i8* %8, align 1
  %idxprom4 = zext i8 %9 to i64
  %10 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %10, i64 %idxprom4
  %11 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %11 to i32
  %and7 = and i32 %conv6, 256
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %src.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 92
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %while.body
  %14 = load i8*, i8** %dest.addr, align 8
  %15 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv14 = sext i8 %16 to i32
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i32 0, i32 0), i32 %conv14) #4
  %17 = load i8*, i8** %dest.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %add.ptr, i8** %dest.addr, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.10
  %18 = load i8*, i8** %src.addr, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr15, i8** %src.addr, align 8
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr16, i8** %dest.addr, align 8
  store i8 %19, i8* %20, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i8*, i8** %dest.addr, align 8
  store i8 0, i8* %21, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_copy_ok_callback(%struct._GtkWidget* %widget, i8* %copy_name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %copy_name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %gflare = alloca %struct.GFlare*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %pos = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %copy_name, i8** %copy_name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %copy_name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.dlg_selector_copy_ok_callback, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.173, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %copy_name.addr, align 8
  %call = call %struct.GFlare* @gflares_list_lookup(i8* %1)
  %tobool = icmp ne %struct.GFlare* %call, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %do.end
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.174, i32 0, i32 0)) #4
  %2 = load i8*, i8** %copy_name.addr, align 8
  call void (i8*, ...) @g_warning(i8* %call2, i8* %2)
  br label %return

if.end.3:                                         ; preds = %do.end
  %3 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare4 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %3, i32 0, i32 1
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare4, align 8
  %5 = load i8*, i8** %copy_name.addr, align 8
  %call5 = call %struct.GFlare* @gflare_dup(%struct.GFlare* %4, i8* %5)
  store %struct.GFlare* %call5, %struct.GFlare** %gflare, align 8
  %6 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %call6 = call i32 @gflares_list_insert(%struct.GFlare* %6)
  store i32 %call6, i32* %pos, align 4
  %7 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %7, i32 0, i32 9
  %8 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list, align 8
  %9 = load i32, i32* %pos, align 4
  call void @gtk_list_store_insert(%struct._GtkListStore* %8, %struct._GtkTreeIter* %iter, i32 %9)
  %10 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list7 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %10, i32 0, i32 9
  %11 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list7, align 8
  %12 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %12, i32 0, i32 0
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %11, %struct._GtkTreeIter* %iter, i32 0, i8* %13, i32 1, %struct.GFlare* %14, i32 -1)
  %15 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selection = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %15, i32 0, i32 10
  %16 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %16, %struct._GtkTreeIter* %iter)
  %17 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %18 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare8 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %18, i32 0, i32 1
  store %struct.GFlare* %17, %struct.GFlare** %gflare8, align 8
  %19 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare9 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %19, i32 0, i32 1
  %20 = load %struct.GFlare*, %struct.GFlare** %gflare9, align 8
  call void @gflare_save(%struct.GFlare* %20)
  call void @dlg_preview_update()
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1, %if.else
  ret void
}

declare %struct._GtkWidget* @gimp_query_boolean_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dlg_selector_do_delete_callback(%struct._GtkWidget* %widget, i32 %delete, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %delete.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %old_gflare = alloca %struct.GFlare*, align 8
  %tmp = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %new_i = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %delete, i32* %delete.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %shell = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %1, i32 1)
  %2 = load i32, i32* %delete.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.38

if.end:                                           ; preds = %entry
  %3 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %3, i32 0, i32 1
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare, align 8
  %call = call i32 @gflares_list_index(%struct.GFlare* %4)
  store i32 %call, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare5 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %6, i32 0, i32 1
  %7 = load %struct.GFlare*, %struct.GFlare** %gflare5, align 8
  store %struct.GFlare* %7, %struct.GFlare** %old_gflare, align 8
  %8 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare6 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %8, i32 0, i32 1
  %9 = load %struct.GFlare*, %struct.GFlare** %gflare6, align 8
  %call7 = call i32 @gflares_list_remove(%struct.GFlare* %9)
  %10 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare8 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %10, i32 0, i32 1
  store %struct.GFlare* null, %struct.GFlare** %gflare8, align 8
  %11 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %11, i32 0, i32 9
  %12 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list, align 8
  %13 = bitcast %struct._GtkListStore* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_tree_model_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTreeModel*
  %15 = load i32, i32* %i, align 4
  %call11 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %14, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0))
  br label %if.end.38

if.end.14:                                        ; preds = %if.then.4
  %16 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list15 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %16, i32 0, i32 9
  %17 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list15, align 8
  %call16 = call i32 @gtk_list_store_remove(%struct._GtkListStore* %17, %struct._GtkTreeIter* %iter)
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @num_gflares, align 4
  %cmp17 = icmp slt i32 %18, %19
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %21 = load i32, i32* @num_gflares, align 4
  %sub = sub nsw i32 %21, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %new_i, align 4
  %22 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  %23 = load i32, i32* %new_i, align 4
  %call18 = call %struct._GList* @g_list_nth(%struct._GList* %22, i32 %23)
  store %struct._GList* %call18, %struct._GList** %tmp, align 8
  %tobool19 = icmp ne %struct._GList* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %cond.end
  %24 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data21 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data21, align 8
  %26 = bitcast i8* %25 to %struct.GFlare*
  %27 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare22 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %27, i32 0, i32 1
  store %struct.GFlare* %26, %struct.GFlare** %gflare22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %cond.end
  %28 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selector_list24 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %28, i32 0, i32 9
  %29 = load %struct._GtkListStore*, %struct._GtkListStore** %selector_list24, align 8
  %30 = bitcast %struct._GtkListStore* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_tree_model_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTreeModel*
  %32 = load i32, i32* %i, align 4
  %call27 = call i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* null, i32 %32)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.23
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0))
  br label %if.end.38

if.end.30:                                        ; preds = %if.end.23
  %33 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %selection = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %33, i32 0, i32 10
  %34 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %34, %struct._GtkTreeIter* %iter)
  %35 = load %struct.GFlare*, %struct.GFlare** %old_gflare, align 8
  %filename = getelementptr inbounds %struct.GFlare, %struct.GFlare* %35, i32 0, i32 1
  %36 = load i8*, i8** %filename, align 8
  %tobool31 = icmp ne i8* %36, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.30
  %37 = load %struct.GFlare*, %struct.GFlare** %old_gflare, align 8
  %filename33 = getelementptr inbounds %struct.GFlare, %struct.GFlare* %37, i32 0, i32 1
  %38 = load i8*, i8** %filename33, align 8
  %call34 = call i32 @g_unlink(i8* %38)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.30
  %39 = load %struct.GFlare*, %struct.GFlare** %old_gflare, align 8
  call void @gflare_free(%struct.GFlare* %39)
  call void @dlg_preview_update()
  br label %if.end.38

if.else:                                          ; preds = %if.end
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.180, i32 0, i32 0)) #4
  %40 = load %struct.GFlareDialog*, %struct.GFlareDialog** @dlg, align 8
  %gflare37 = getelementptr inbounds %struct.GFlareDialog, %struct.GFlareDialog* %40, i32 0, i32 1
  %41 = load %struct.GFlare*, %struct.GFlare** %gflare37, align 8
  %name = getelementptr inbounds %struct.GFlare, %struct.GFlare* %41, i32 0, i32 0
  %42 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_warning(i8* %call36, i8* %42)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then, %if.then.13, %if.then.29, %if.else, %if.end.35
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gflares_list_remove(%struct.GFlare* %gflare) #0 {
entry:
  %retval = alloca i32, align 4
  %gflare.addr = alloca %struct.GFlare*, align 8
  %tmp = alloca %struct._GList*, align 8
  %n = alloca i32, align 4
  store %struct.GFlare* %gflare, %struct.GFlare** %gflare.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  store %struct._GList* %0, %struct._GList** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %1 = load %struct._GList*, %struct._GList** %tmp, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GList*, %struct._GList** %tmp, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %5 = bitcast %struct.GFlare* %4 to i8*
  %cmp = icmp eq i8* %3, %5
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %while.body
  %6 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 1
  %7 = load %struct._GList*, %struct._GList** %next, align 8
  %cmp2 = icmp eq %struct._GList* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* @num_gflares, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* @num_gflares, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct._GList*, %struct._GList** @gflares_list, align 8
  %10 = load %struct.GFlare*, %struct.GFlare** %gflare.addr, align 8
  %11 = bitcast %struct.GFlare* %10 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %9, i8* %11)
  store %struct._GList* %call, %struct._GList** @gflares_list, align 8
  %12 = load i32, i32* %n, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.4:                                         ; preds = %while.body
  %13 = load %struct._GList*, %struct._GList** %tmp, align 8
  %next5 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next5, align 8
  store %struct._GList* %14, %struct._GList** %tmp, align 8
  %15 = load i32, i32* %n, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.end
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gtk_tree_model_iter_nth_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i32) #1

declare i32 @gtk_list_store_remove(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #1

declare i32 @g_unlink(i8*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind uwtable
define internal void @plugin_do_asupsample() #0 {
entry:
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** @tk_read, align 8
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** @tk_read, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %1, i32 3)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %call1 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %2, i32 1)
  store %struct._GimpPixelFetcher* %call1, %struct._GimpPixelFetcher** @tk_write, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 4), align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 5), align 4
  %sub2 = sub nsw i32 %6, 1
  %7 = load i32, i32* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 8), align 4
  %8 = load double, double* getelementptr inbounds (%struct.PluginValues, %struct.PluginValues* @pvals, i32 0, i32 9), align 8
  %call3 = call i64 @gimp_adaptive_supersample_area(i32 %3, i32 %4, i32 %sub, i32 %sub2, i32 %7, double %8, void (double, double, %struct._GimpRGB*, i8*)* @plugin_render_func, i8* null, void (i32, i32, %struct._GimpRGB*, i8*)* @plugin_put_pixel_func, i8* null, void (i32, i32, i32, i8*)* @plugin_progress_func, i8* null)
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** @tk_write, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %9)
  %10 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** @tk_read, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plugin_do_non_asupsample() #0 {
entry:
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %row = alloca i32, align 4
  %y = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %col = alloca i32, align 4
  %x = alloca i32, align 4
  %src_pix = alloca [4 x i8], align 1
  %dest_pix = alloca [4 x i8], align 1
  %b = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 4), align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %width, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 5), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %height, align 4
  store i32 0, i32* %progress, align 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %max_progress, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), align 4
  %9 = load i32, i32* %width, align 4
  %10 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 2), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 3), align 4
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 1, i32 1)
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %entry
  %16 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %16, null
  br i1 %cmp, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  store i8* %17, i8** %src_row, align 8
  %data2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %18 = load i8*, i8** %data2, align 8
  store i8* %18, i8** %dest_row, align 8
  store i32 0, i32* %row, align 4
  %y3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %19 = load i32, i32* %y3, align 4
  store i32 %19, i32* %y, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.82, %for.body
  %20 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %21 = load i32, i32* %h, align 4
  %cmp5 = icmp slt i32 %20, %21
  br i1 %cmp5, label %for.body.6, label %for.end.85

for.body.6:                                       ; preds = %for.cond.4
  %22 = load i8*, i8** %src_row, align 8
  store i8* %22, i8** %src, align 8
  %23 = load i8*, i8** %dest_row, align 8
  store i8* %23, i8** %dest, align 8
  store i32 0, i32* %col, align 4
  %x7 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %24 = load i32, i32* %x7, align 4
  store i32 %24, i32* %x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.73, %for.body.6
  %25 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %26 = load i32, i32* %w, align 4
  %cmp9 = icmp slt i32 %25, %26
  br i1 %cmp9, label %for.body.10, label %for.end.76

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %b, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.10
  %27 = load i32, i32* %b, align 4
  %cmp12 = icmp slt i32 %27, 3
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %28 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.13
  %29 = load i32, i32* %b, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %31 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.13
  %32 = load i8*, i8** %src, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %33 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv15, %cond.false ]
  %conv16 = trunc i32 %cond to i8
  %34 = load i32, i32* %b, align 4
  %idxprom17 = sext i32 %34 to i64
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i64 %idxprom17
  store i8 %conv16, i8* %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %35 = load i32, i32* %b, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %36 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 1), align 4
  %tobool19 = icmp ne i32 %36, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.25

cond.true.20:                                     ; preds = %for.end
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %37 = load i32, i32* %bpp, align 4
  %sub21 = sub nsw i32 %37, 1
  %idxprom22 = sext i32 %sub21 to i64
  %38 = load i8*, i8** %src, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %38, i64 %idxprom22
  %39 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %39 to i32
  br label %cond.end.26

cond.false.25:                                    ; preds = %for.end
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.20
  %cond27 = phi i32 [ %conv24, %cond.true.20 ], [ 255, %cond.false.25 ]
  %conv28 = trunc i32 %cond27 to i8
  %arrayidx29 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i64 3
  store i8 %conv28, i8* %arrayidx29, align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i32 0
  %40 = load i32, i32* %x, align 4
  %conv30 = sitofp i32 %40 to double
  %41 = load i32, i32* %y, align 4
  %conv31 = sitofp i32 %41 to double
  %arraydecay32 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i32 0
  call void @calc_gflare_pix(i8* %arraydecay, double %conv30, double %conv31, i8* %arraydecay32)
  %42 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 0), align 4
  %tobool33 = icmp ne i32 %42, 0
  br i1 %tobool33, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.26
  store i32 0, i32* %b, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.42, %if.then
  %43 = load i32, i32* %b, align 4
  %cmp35 = icmp slt i32 %43, 3
  br i1 %cmp35, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.34
  %44 = load i32, i32* %b, align 4
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i64 %idxprom38
  %45 = load i8, i8* %arrayidx39, align 1
  %46 = load i32, i32* %b, align 4
  %idxprom40 = sext i32 %46 to i64
  %47 = load i8*, i8** %dest, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %47, i64 %idxprom40
  store i8 %45, i8* %arrayidx41, align 1
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.37
  %48 = load i32, i32* %b, align 4
  %inc43 = add nsw i32 %48, 1
  store i32 %inc43, i32* %b, align 4
  br label %for.cond.34

for.end.44:                                       ; preds = %for.cond.34
  br label %if.end

if.else:                                          ; preds = %cond.end.26
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i64 0
  %49 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %49 to i32
  %conv47 = sitofp i32 %conv46 to double
  %mul48 = fmul double %conv47, 2.126000e-01
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i64 1
  %50 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %50 to i32
  %conv51 = sitofp i32 %conv50 to double
  %mul52 = fmul double %conv51, 7.152000e-01
  %add = fadd double %mul48, %mul52
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i64 2
  %51 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %51 to i32
  %conv55 = sitofp i32 %conv54 to double
  %mul56 = fmul double %conv55, 7.220000e-02
  %add57 = fadd double %add, %mul56
  %add58 = fadd double %add57, 5.000000e-01
  %conv59 = fptoui double %add58 to i8
  %52 = load i8*, i8** %dest, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %conv59, i8* %arrayidx60, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.44
  %53 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 1), align 4
  %tobool61 = icmp ne i32 %53, 0
  br i1 %tobool61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %if.end
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %dest_pix, i32 0, i64 3
  %54 = load i8, i8* %arrayidx63, align 1
  %bpp64 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %55 = load i32, i32* %bpp64, align 4
  %sub65 = sub nsw i32 %55, 1
  %idxprom66 = sext i32 %sub65 to i64
  %56 = load i8*, i8** %dest, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %56, i64 %idxprom66
  store i8 %54, i8* %arrayidx67, align 1
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.end
  %bpp69 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %57 = load i32, i32* %bpp69, align 4
  %58 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %57 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %bpp70 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %59 = load i32, i32* %bpp70, align 4
  %60 = load i8*, i8** %dest, align 8
  %idx.ext71 = sext i32 %59 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %60, i64 %idx.ext71
  store i8* %add.ptr72, i8** %dest, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.68
  %61 = load i32, i32* %col, align 4
  %inc74 = add nsw i32 %61, 1
  store i32 %inc74, i32* %col, align 4
  %62 = load i32, i32* %x, align 4
  %inc75 = add nsw i32 %62, 1
  store i32 %inc75, i32* %x, align 4
  br label %for.cond.8

for.end.76:                                       ; preds = %for.cond.8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %63 = load i32, i32* %rowstride, align 4
  %64 = load i8*, i8** %src_row, align 8
  %idx.ext77 = sext i32 %63 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %64, i64 %idx.ext77
  store i8* %add.ptr78, i8** %src_row, align 8
  %rowstride79 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %65 = load i32, i32* %rowstride79, align 4
  %66 = load i8*, i8** %dest_row, align 8
  %idx.ext80 = sext i32 %65 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %66, i64 %idx.ext80
  store i8* %add.ptr81, i8** %dest_row, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.76
  %67 = load i32, i32* %row, align 4
  %inc83 = add nsw i32 %67, 1
  store i32 %inc83, i32* %row, align 4
  %68 = load i32, i32* %y, align 4
  %inc84 = add nsw i32 %68, 1
  store i32 %inc84, i32* %y, align 4
  br label %for.cond.4

for.end.85:                                       ; preds = %for.cond.4
  %w86 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %69 = load i32, i32* %w86, align 4
  %h87 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %70 = load i32, i32* %h87, align 4
  %mul88 = mul nsw i32 %69, %70
  %71 = load i32, i32* %progress, align 4
  %add89 = add nsw i32 %71, %mul88
  store i32 %add89, i32* %progress, align 4
  %72 = load i32, i32* %progress, align 4
  %conv90 = sitofp i32 %72 to double
  %73 = load i32, i32* %max_progress, align 4
  %conv91 = sitofp i32 %73 to double
  %div = fdiv double %conv90, %conv91
  %call92 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.85
  %74 = load i8*, i8** %pr, align 8
  %call94 = call i8* @gimp_pixel_rgns_process(i8* %74)
  store i8* %call94, i8** %pr, align 8
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare i64 @gimp_adaptive_supersample_area(i32, i32, i32, i32, i32, double, void (double, double, %struct._GimpRGB*, i8*)*, i8*, void (i32, i32, %struct._GimpRGB*, i8*)*, i8*, void (i32, i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @plugin_render_func(double %x, double %y, %struct._GimpRGB* %color, i8* %data) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %src_pix = alloca [4 x i8], align 1
  %flare_pix = alloca [4 x i8], align 1
  %src = alloca [4 x i8], align 1
  %b = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %add = fadd double %0, 5.000000e-01
  %call = call double @floor(double %add) #7
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %ix, align 4
  %1 = load double, double* %y.addr, align 8
  %add1 = fadd double %1, 5.000000e-01
  %call2 = call double @floor(double %add1) #7
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* %iy, align 4
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** @tk_read, align 8
  %3 = load i32, i32* %ix, align 4
  %4 = load i32, i32* %iy, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %src, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %2, i32 %3, i32 %4, i8* %arraydecay)
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %b, align 4
  %cmp = icmp slt i32 %5, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32, i32* %b, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %src, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %src, i32 0, i64 0
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv7, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  %10 = load i32, i32* %b, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load i32, i32* %b, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 1), align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.16

cond.true.12:                                     ; preds = %for.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 3
  %14 = load i32, i32* %bpp, align 4
  %sub = sub i32 %14, 1
  %idxprom13 = zext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %src, i32 0, i64 %idxprom13
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  br label %cond.end.17

cond.false.16:                                    ; preds = %for.end
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.12
  %cond18 = phi i32 [ %conv15, %cond.true.12 ], [ 255, %cond.false.16 ]
  %conv19 = trunc i32 %cond18 to i8
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i64 3
  store i8 %conv19, i8* %arrayidx20, align 1
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %flare_pix, i32 0, i32 0
  %16 = load double, double* %x.addr, align 8
  %17 = load double, double* %y.addr, align 8
  %arraydecay22 = getelementptr inbounds [4 x i8], [4 x i8]* %src_pix, i32 0, i32 0
  call void @calc_gflare_pix(i8* %arraydecay21, double %16, double %17, i8* %arraydecay22)
  %arrayidx23 = getelementptr inbounds [4 x i8], [4 x i8]* %flare_pix, i32 0, i64 0
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %18 to i32
  %conv25 = sitofp i32 %conv24 to double
  %div = fdiv double %conv25, 2.550000e+02
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 0
  store double %div, double* %r, align 8
  %arrayidx26 = getelementptr inbounds [4 x i8], [4 x i8]* %flare_pix, i32 0, i64 1
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %20 to i32
  %conv28 = sitofp i32 %conv27 to double
  %div29 = fdiv double %conv28, 2.550000e+02
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 1
  store double %div29, double* %g, align 8
  %arrayidx30 = getelementptr inbounds [4 x i8], [4 x i8]* %flare_pix, i32 0, i64 2
  %22 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %22 to i32
  %conv32 = sitofp i32 %conv31 to double
  %div33 = fdiv double %conv32, 2.550000e+02
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 2
  store double %div33, double* %b34, align 8
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* %flare_pix, i32 0, i64 3
  %24 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %24 to i32
  %conv37 = sitofp i32 %conv36 to double
  %div38 = fdiv double %conv37, 2.550000e+02
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 3
  store double %div38, double* %a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plugin_put_pixel_func(i32 %ix, i32 %iy, %struct._GimpRGB* %color, i8* %data) #0 {
entry:
  %ix.addr = alloca i32, align 4
  %iy.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %dest = alloca [4 x i8], align 1
  store i32 %ix, i32* %ix.addr, align 4
  store i32 %iy, i32* %iy.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %mul = fmul double %2, 2.550000e+02
  %conv = fptoui double %mul to i8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %dest, i32 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %mul1 = fmul double %4, 2.550000e+02
  %conv2 = fptoui double %mul1 to i8
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %dest, i32 0, i64 1
  store i8 %conv2, i8* %arrayidx3, align 1
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8
  %mul4 = fmul double %6, 2.550000e+02
  %conv5 = fptoui double %mul4 to i8
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %dest, i32 0, i64 2
  store i8 %conv5, i8* %arrayidx6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %7)
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %dest, i32 0, i64 0
  store i8 %call, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct.DrawableInfo, %struct.DrawableInfo* @dinfo, i32 0, i32 1), align 4
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 3
  %10 = load double, double* %a, align 8
  %mul10 = fmul double %10, 2.550000e+02
  %conv11 = fptoui double %mul10 to i8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 3
  %12 = load i32, i32* %bpp, align 4
  %sub = sub i32 %12, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %dest, i32 0, i64 %idxprom
  store i8 %conv11, i8* %arrayidx12, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %13 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** @tk_write, align 8
  %14 = load i32, i32* %ix.addr, align 4
  %15 = load i32, i32* %iy.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %dest, i32 0, i32 0
  call void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher* %13, i32 %14, i32 %15, i8* %arraydecay)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @plugin_progress_func(i32 %y1, i32 %y2, i32 %curr_y, i8* %data) #0 {
entry:
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %curr_y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %curr_y, i32* %curr_y.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %curr_y.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %y2.addr, align 4
  %2 = load i32, i32* %y1.addr, align 4
  %sub = sub nsw i32 %1, %2
  %conv1 = sitofp i32 %sub to double
  %div = fdiv double %conv, %conv1
  %call = call i32 @gimp_progress_update(double %div)
  ret void
}

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

declare void @gimp_pixel_fetcher_put_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
