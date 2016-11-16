; ModuleID = './plug-ins/common/cml-explorer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.ValueType = type { %struct.CML_PARAM, %struct.CML_PARAM, %struct.CML_PARAM, i32, i32, i32, i32, [256 x i8] }
%struct.CML_PARAM = type { i32, i32, i32, i32, double, double, i32, double, i32, double, double, double, double, double, double }
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
%struct.CML_sensitive_widget_table = type { %struct._GtkWidget*, i32 }
%struct._WidgetEntry = type { %struct._GtkWidget*, i8*, void (%struct._WidgetEntry*)* }
%struct._cairo_surface = type opaque
%struct._GRand = type opaque
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkFileChooser = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"ru-_mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Input image (not used)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"parameter-filename\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"The name of parameter file. CML_explorer makes an image with its settings.\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"plug-in-cml-explorer\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Create abstract Coupled-Map Lattice patterns\00", align 1
@.str.10 = private unnamed_addr constant [239 x i8] c"Make an image of Coupled-Map Lattice (CML). CML is a kind of Cellula Automata on continuous (value) domain. In GIMP_RUN_NONINTERACTIVE, the name of a prameter file is passed as the 4th arg. You can control CML_explorer via parameter file.\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"Shuji Narazaki (narazaki@InetQ.or.jp); http://www.inetq.or.jp/~narazaki/TheGIMP/\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Shuji Narazaki\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"CML _Explorer...\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"<Image>/Filters/Render/Pattern\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@drawable_id = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@CML_explorer_vals = internal global %struct.ValueType { %struct.CML_PARAM { i32 11, i32 0, i32 0, i32 1, double 5.000000e-01, double 7.000000e-01, i32 2, double 0.000000e+00, i32 1, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e-01 }, %struct.CML_PARAM { i32 2, i32 0, i32 0, i32 0, double 6.000000e-01, double 1.000000e-01, i32 2, double 0.000000e+00, i32 1, double 1.400000e+00, double 9.000000e-01, double 0.000000e+00, double 9.000000e-01, double 0.000000e+00, double 1.000000e-01 }, %struct.CML_PARAM { i32 2, i32 0, i32 0, i32 0, double 5.000000e-01, double 2.000000e-01, i32 2, double 0.000000e+00, i32 1, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 9.000000e-01, double 0.000000e+00, double 1.000000e-01 }, i32 6, i32 1, i32 0, i32 0, [256 x i8] zeroinitializer }, align 8
@mem_chank0 = internal global double* null, align 8
@mem_chank1 = internal global i8* null, align 8
@mem_chank2 = internal global i8* null, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"cml-explorer\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Coupled-Map-Lattice Explorer\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"gimp-cml-explorer\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@CML_preview_defer = internal global i32 0, align 4
@preview = internal global %struct._GtkWidget* null, align 8
@.str.24 = private unnamed_addr constant [9 x i8] c"New Seed\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@random_sensitives = internal global [5 x %struct.CML_sensitive_widget_table] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"Fix Seed\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Random Seed\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"_Hue\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Sat_uration\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_Value\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"_Advanced\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Channel Independent Parameters\00", align 1
@initial_value_names = internal global [10 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.153, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@widget_pointers = internal global [4 x [15 x %struct._WidgetEntry]] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [15 x i8] c"Initial value:\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Zoom scale:\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Start offset:\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"Seed of Random (only for \22From Seed\22 Modes)\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"Seed:\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"Switch to \22From seed\22 With the Last Seed\00", align 1
@.str.43 = private unnamed_addr constant [225 x i8] c"\22Fix seed\22 button is an alias of me.\0AThe same seed produces the same image, if (1) the widths of images are same (this is the reason why image on drawable is different from preview), and (2) all mutation rates equal to zero.\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"O_thers\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Copy Settings\00", align 1
@channel_names = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0)], align 16
@copy_source = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [16 x i8] c"Source channel:\00", align 1
@copy_destination = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [21 x i8] c"Destination channel:\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Copy Parameters\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Selective Load Settings\00", align 1
@load_channel_names = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0)], align 16
@selective_load_source = internal global i32 0, align 4
@.str.50 = private unnamed_addr constant [24 x i8] c"Source channel in file:\00", align 1
@selective_load_destination = internal global i32 0, align 4
@.str.51 = private unnamed_addr constant [11 x i8] c"_Misc Ops.\00", align 1
@img_stride = internal global i32 0, align 4
@img = internal global i8* null, align 8
@buffer = internal global %struct._cairo_surface* null, align 8
@CML_load_from_file_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.52 = private unnamed_addr constant [29 x i8] c"Load CML Explorer Parameters\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@CML_save_to_file_callback.dialog = internal global %struct._GtkWidget* null, align 8
@.str.55 = private unnamed_addr constant [29 x i8] c"Save CML Explorer Parameters\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"; This is a parameter file for CML_explorer\0A\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"; File format version: %1.1f\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@channel_params = internal global [3 x %struct.CML_PARAM*] [%struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0), %struct.CML_PARAM* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), i64 104) to %struct.CML_PARAM*), %struct.CML_PARAM* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), i64 208) to %struct.CML_PARAM*)], align 16
@.str.61 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Function_type    : %d (%s)\0A\00", align 1
@function_names = internal global [13 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0)], align 16
@.str.63 = private unnamed_addr constant [28 x i8] c"Compostion_type  : %d (%s)\0A\00", align 1
@composition_names = internal global [15 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.112, i32 0, i32 0)], align 16
@.str.64 = private unnamed_addr constant [28 x i8] c"Arrange          : %d (%s)\0A\00", align 1
@arrange_names = internal global [10 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.122, i32 0, i32 0)], align 16
@.str.65 = private unnamed_addr constant [28 x i8] c"Cyclic_range     : %d (%s)\0A\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"Mod. rate        : %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"Env_sensitivtiy  : %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"Diffusion dist.  : %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Ch. sensitivity  : %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"Num. of Subranges: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"Power_factor     : %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"Parameter_k      : %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"Range_low        : %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"Range_high       : %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"Mutation_rate    : %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"Mutation_distance: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"Initial value  : %d (%s)\0A\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"Zoom scale     : %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"Start offset   : %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"Random seed    : %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"Parameters were saved to '%s'\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"Keep image's values\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"Keep the first value\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"Fill with parameter k\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"k{x(1-x)}^p\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"k{x(1-x)}^p stepped\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"kx^p\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"kx^p stepped\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"k(1-x^p)\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"k(1-x^p) stepped\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"Delta function\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"Delta function stepped\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"sin^p-based function\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"sin^p, stepped\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"Max (x, -)\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"Max (x+d, -)\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"Max (x-d, -)\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"Min (x, -)\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"Min (x+d, -)\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"Min (x-d, -)\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"Max (x+d, -), (x < 0.5)\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"Max (x+d, -), (0.5 < x)\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Max (x-d, -), (x < 0.5)\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"Max (x-d, -), (0.5 < x)\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"Min (x+d, -), (x < 0.5)\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"Min (x+d, -), (0.5 < x)\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"Min (x-d, -), (x < 0.5)\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"Min (x-d, -), (0.5 < x)\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"Use average value\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"Use reverse value\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"With random power (0,10)\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"With random power (0,1)\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"With gradient power (0,1)\00", align 1
@.str.119 = private unnamed_addr constant [27 x i8] c"Multiply rand. value (0,1)\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"Multiply rand. value (0,2)\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"Multiply gradient (0,1)\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"With p and random (0,1)\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"Function type:\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"Composition:\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"Misc arrange:\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Use cyclic range\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"Mod. rate:\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"Env. sensitivity:\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"Diffusion dist.:\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"# of subranges:\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"P(ower factor):\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"Parameter k:\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"Range low:\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"Range high:\00", align 1
@.str.135 = private unnamed_addr constant [29 x i8] c"Plot a Graph of the Settings\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.138 = private unnamed_addr constant [30 x i8] c"Graph of the Current Settings\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"Ch. sensitivity:\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"Mutation rate:\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"Mutation dist.:\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"All black\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"All gray\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"All white\00", align 1
@.str.147 = private unnamed_addr constant [27 x i8] c"The first row of the image\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"Continuous gradient\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"Continuous grad. w/o gap\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"Random, ch. independent\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"Random shared\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"Randoms from seed\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"Randoms from seed (shared)\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.157 = private unnamed_addr constant [62 x i8] c"Warning: the source and the destination are the same channel.\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"(None)\00", align 1
@CML_load_parameter_file.old2new_function_id = private unnamed_addr constant [10 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 9, i32 10, i32 11, i32 1, i32 2], align 16
@.str.159 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.160 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.161 = private unnamed_addr constant [36 x i8] c"Error: it's not CML parameter file.\00", align 1
@.str.162 = private unnamed_addr constant [37 x i8] c"Warning: '%s' is an old format file.\00", align 1
@.str.163 = private unnamed_addr constant [71 x i8] c"Warning: '%s' is a parameter file for a newer version of CML Explorer.\00", align 1
@.str.164 = private unnamed_addr constant [33 x i8] c"Error: failed to load parameters\00", align 1
@mem_chank0_size = internal global i32 0, align 4
@mem_chank1_size = internal global i32 0, align 4
@mem_chank2_size = internal global i32 0, align 4
@gr = internal global %struct._GRand* null, align 8
@.str.165 = private unnamed_addr constant [24 x i8] c"CML Explorer: evoluting\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data2 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  store i32 %3, i32* @drawable_id, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call3 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call) #4
  %call4 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #4
  %call5 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %5, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %do.end
  %call6 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*))
  %call7 = call i32 @CML_explorer_dialog()
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %do.end
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 3
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data10 to i8**
  %9 = load i8*, i8** %d_string, align 8
  store i8* %9, i8** %filename, align 8
  %10 = load i8*, i8** %filename, align 8
  %call11 = call i32 @CML_load_parameter_file(i8* %10, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %sw.bb.8
  br label %return

if.end.14:                                        ; preds = %sw.bb.8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %do.end
  %call16 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.15, %if.end.14, %if.end
  call void @gimp_tile_cache_ntiles(i64 32)
  %call17 = call i32 @CML_main_function(i32 0)
  store i32 %call17, i32* %status, align 4
  %11 = load i32, i32* %run_mode, align 4
  %cmp = icmp ne i32 %11, 1
  br i1 %cmp, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %sw.epilog
  %call19 = call i32 @gimp_displays_flush()
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %sw.epilog
  %12 = load i32, i32* %run_mode, align 4
  %cmp21 = icmp eq i32 %12, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.20
  %13 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %13, 3
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true
  %call24 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), i32 584)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true, %if.end.20
  %14 = load double*, double** @mem_chank0, align 8
  %15 = bitcast double* %14 to i8*
  call void @g_free(i8* %15)
  %16 = load i8*, i8** @mem_chank1, align 8
  call void @g_free(i8* %16)
  %17 = load i8*, i8** @mem_chank2, align 8
  call void @g_free(i8* %17)
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.25, %if.then.13, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @CML_explorer_dialog() #0 {
entry:
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %bbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %run = alloca i32, align 4
  %notebook = alloca %struct._GtkWidget*, align 8
  %page = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %frame87 = alloca %struct._GtkWidget*, align 8
  %vbox88 = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %group154 = alloca %struct._GtkSizeGroup*, align 8
  %table156 = alloca %struct._GtkWidget*, align 8
  %frame157 = alloca %struct._GtkWidget*, align 8
  %label158 = alloca %struct._GtkWidget*, align 8
  %combo159 = alloca %struct._GtkWidget*, align 8
  %vbox160 = alloca %struct._GtkWidget*, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  store i32 1, i32* @CML_preview_defer, align 4
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %vbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_alignment_new(float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %abox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call20 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_frame_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %28, i32 1)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call25 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** @preview, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %34, i32 64, i32 220)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %37, %struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %call28 = call %struct._GtkWidget* @gtk_button_box_new(i32 1)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %bbox, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call29)
  %42 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #4
  %call32 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call31)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %button, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call33)
  %47 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %47, %struct._GtkWidget* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_preview_update_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %52, %struct._GtkWidget** getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 0, i32 1), align 4
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #4
  %call37 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %button, align 8
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_container_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call38)
  %55 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkContainer*
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %55, %struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_set_or_randomize_seed_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %60, %struct._GtkWidget** getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 1, i32 1), align 4
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0)) #4
  %call42 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %button, align 8
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_container_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call43)
  %63 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkContainer*
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %63, %struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_set_or_randomize_seed_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %68, %struct._GtkWidget** getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 2, i32 0), align 8
  store i32 0, i32* getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 2, i32 1), align 4
  %call46 = call %struct._GtkWidget* @gtk_button_box_new(i32 1)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %bbox, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call47)
  %71 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %72, i32 0, i32 0, i32 0)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %73)
  %call49 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %button, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_container_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call50)
  %76 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkContainer*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %76, %struct._GtkWidget* %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_load_from_file_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call53 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0))
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %button, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %bbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call54)
  %83 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_container_add(%struct._GtkContainer* %83, %struct._GtkWidget* %84)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_save_to_file_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call57 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %notebook, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_notebook_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call58)
  %90 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkNotebook*
  call void @gtk_notebook_set_tab_pos(%struct._GtkNotebook* %90, i32 2)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call60)
  %93 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 1, i32 1, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %call62 = call %struct._GtkWidget* @CML_dialog_channel_panel_new(%struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0), i32 0)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %page, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_notebook_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call63)
  %98 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkNotebook*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #4
  %call66 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call65)
  %call67 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %98, %struct._GtkWidget* %99, %struct._GtkWidget* %call66)
  %call68 = call %struct._GtkWidget* @CML_dialog_channel_panel_new(%struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1), i32 1)
  store %struct._GtkWidget* %call68, %struct._GtkWidget** %page, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_notebook_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call69)
  %102 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkNotebook*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #4
  %call72 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call71)
  %call73 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %102, %struct._GtkWidget* %103, %struct._GtkWidget* %call72)
  %call74 = call %struct._GtkWidget* @CML_dialog_channel_panel_new(%struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2), i32 2)
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %page, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_notebook_get_type() #6
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call75)
  %106 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkNotebook*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call77 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #4
  %call78 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call77)
  %call79 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %106, %struct._GtkWidget* %107, %struct._GtkWidget* %call78)
  %call80 = call %struct._GtkWidget* @CML_dialog_advanced_panel_new()
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %page, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_notebook_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call81)
  %110 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkNotebook*
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %page, align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0)) #4
  %call84 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call83)
  %call85 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %110, %struct._GtkWidget* %111, %struct._GtkWidget* %call84)
  %call86 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call86, %struct._GtkSizeGroup** %group, align 8
  %call89 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %vbox88, align 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox88, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_container_get_type() #6
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call90)
  %114 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %114, i32 12)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox88, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0)) #4
  %call93 = call %struct._GtkWidget* @gimp_frame_new(i8* %call92)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %frame87, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox88, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_box_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call94)
  %118 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkBox*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %frame87, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %119, i32 0, i32 0, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %frame87, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %call96 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call96, %struct._GtkWidget** %table, align 8
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %122 = bitcast %struct._GtkWidget* %121 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_table_get_type() #6
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %122, i64 %call97)
  %123 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %123, i32 6)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_table_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call99)
  %126 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %126, i32 6)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %frame87, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_container_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call101)
  %129 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkContainer*
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %129, %struct._GtkWidget* %130)
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %131)
  %call103 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @initial_value_names, i32 0, i32 0))
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %combo, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_int_combo_box_get_type() #6
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call104)
  %134 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpIntComboBox*
  %135 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %call106 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %134, i32 %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %137 = bitcast %struct._GtkWidget* %136 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_initial_value_menu_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @CML_explorer_menu_entry_init(%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 0), %struct._GtkWidget* %138, i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3) to i8*))
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_table_get_type() #6
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call108)
  %141 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkTable*
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #4
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call111 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %141, i32 0, i32 0, i8* %call110, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %142, i32 2, i32 0)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %label, align 8
  %143 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %143, %struct._GtkWidget* %144)
  %145 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %146 = bitcast %struct._GtkSizeGroup* %145 to i8*
  call void @g_object_unref(i8* %146)
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %148 = bitcast %struct._GtkWidget* %147 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_table_get_type() #6
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %148, i64 %call112)
  %149 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkTable*
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)) #4
  %150 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %conv = sitofp i32 %150 to double
  %call115 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %149, i32 0, i32 1, i8* %call114, i32 130, i32 3, double %conv, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call115, %struct._GtkObject** %adj, align 8
  %151 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %152 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %153 = bitcast %struct._GtkObject* %152 to %struct._GTypeInstance*
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 80)
  %154 = bitcast %struct._GTypeInstance* %call116 to %struct._GObject*
  %call117 = call i8* @g_object_get_data(%struct._GObject* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %155 = bitcast i8* %call117 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %151, %struct._GtkWidget* %155)
  %156 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  call void @CML_explorer_int_entry_init(%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 1), %struct._GtkObject* %156, i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4) to i8*))
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %158 = bitcast %struct._GtkWidget* %157 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_table_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call118)
  %159 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkTable*
  %call120 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0)) #4
  %160 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 5), align 4
  %conv121 = sitofp i32 %160 to double
  %call122 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %159, i32 0, i32 2, i8* %call120, i32 130, i32 3, double %conv121, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call122, %struct._GtkObject** %adj, align 8
  %161 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %162 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %163 = bitcast %struct._GtkObject* %162 to %struct._GTypeInstance*
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 80)
  %164 = bitcast %struct._GTypeInstance* %call123 to %struct._GObject*
  %call124 = call i8* @g_object_get_data(%struct._GObject* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %165 = bitcast i8* %call124 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %161, %struct._GtkWidget* %165)
  %166 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  call void @CML_explorer_int_entry_init(%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 2), %struct._GtkObject* %166, i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 5) to i8*))
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i32 0, i32 0)) #4
  %call126 = call %struct._GtkWidget* @gimp_frame_new(i8* %call125)
  store %struct._GtkWidget* %call126, %struct._GtkWidget** %frame87, align 8
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox88, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_box_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call127)
  %169 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkBox*
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %frame87, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %169, %struct._GtkWidget* %170, i32 0, i32 0, i32 0)
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %frame87, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %171)
  %call129 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call129, %struct._GtkWidget** %table, align 8
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_table_get_type() #6
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call130)
  %174 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %174, i32 6)
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_table_get_type() #6
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call132)
  %177 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %177, i32 6)
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %frame87, align 8
  %179 = bitcast %struct._GtkWidget* %178 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_container_get_type() #6
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call134)
  %180 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkContainer*
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %180, %struct._GtkWidget* %181)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %182)
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_table_get_type() #6
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call136)
  %185 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkTable*
  %call138 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #4
  %186 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 6), align 4
  %conv139 = sitofp i32 %186 to double
  %call140 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %185, i32 0, i32 0, i8* %call138, i32 130, i32 0, double %conv139, double 0.000000e+00, double 0x41EFFFFFFFE00000, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call140, %struct._GtkObject** %adj, align 8
  %187 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %188 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %189 = bitcast %struct._GtkObject* %188 to %struct._GTypeInstance*
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 80)
  %190 = bitcast %struct._GTypeInstance* %call141 to %struct._GObject*
  %call142 = call i8* @g_object_get_data(%struct._GObject* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0))
  %191 = bitcast i8* %call142 to %struct._GtkWidget*
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %187, %struct._GtkWidget* %191)
  %192 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  call void @CML_explorer_int_entry_init(%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 3), %struct._GtkObject* %192, i8* bitcast (i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 6) to i8*))
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  store %struct._GtkWidget* %193, %struct._GtkWidget** getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 3, i32 0), align 8
  store i32 0, i32* getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 3, i32 1), align 4
  %call143 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0)) #4
  %call144 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call143)
  store %struct._GtkWidget* %call144, %struct._GtkWidget** %button, align 8
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_table_get_type() #6
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call145)
  %196 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkTable*
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %196, %struct._GtkWidget* %197, i32 0, i32 3, i32 1, i32 2)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %198)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %200 = bitcast %struct._GtkWidget* %199 to i8*
  %call147 = call i64 @g_signal_connect_data(i8* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_set_or_randomize_seed_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %201, %struct._GtkWidget** getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 4, i32 0), align 8
  store i32 1, i32* getelementptr inbounds ([5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 4, i32 1), align 4
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.43, i32 0, i32 0)) #4
  call void @gimp_help_set_help_data(%struct._GtkWidget* %202, i8* %call148, i8* null)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_notebook_get_type() #6
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call149)
  %205 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkNotebook*
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox88, align 8
  %call151 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)) #4
  %call152 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call151)
  %call153 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %205, %struct._GtkWidget* %206, %struct._GtkWidget* %call152)
  %call155 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call155, %struct._GtkSizeGroup** %group154, align 8
  %call161 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call161, %struct._GtkWidget** %vbox160, align 8
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox160, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call162 = call i64 @gtk_container_get_type() #6
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call162)
  %209 = bitcast %struct._GTypeInstance* %call163 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %209, i32 12)
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox160, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %210)
  %call164 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0)) #4
  %call165 = call %struct._GtkWidget* @gimp_frame_new(i8* %call164)
  store %struct._GtkWidget* %call165, %struct._GtkWidget** %frame157, align 8
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox160, align 8
  %212 = bitcast %struct._GtkWidget* %211 to %struct._GTypeInstance*
  %call166 = call i64 @gtk_box_get_type() #6
  %call167 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %212, i64 %call166)
  %213 = bitcast %struct._GTypeInstance* %call167 to %struct._GtkBox*
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %frame157, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %213, %struct._GtkWidget* %214, i32 0, i32 0, i32 0)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %frame157, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %215)
  %call168 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 2, i32 0)
  store %struct._GtkWidget* %call168, %struct._GtkWidget** %table156, align 8
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %217 = bitcast %struct._GtkWidget* %216 to %struct._GTypeInstance*
  %call169 = call i64 @gtk_table_get_type() #6
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %217, i64 %call169)
  %218 = bitcast %struct._GTypeInstance* %call170 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %218, i32 6)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %220 = bitcast %struct._GtkWidget* %219 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_table_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %220, i64 %call171)
  %221 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %221, i32 6)
  %222 = load %struct._GtkWidget*, %struct._GtkWidget** %frame157, align 8
  %223 = bitcast %struct._GtkWidget* %222 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_container_get_type() #6
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %223, i64 %call173)
  %224 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkContainer*
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  call void @gtk_container_add(%struct._GtkContainer* %224, %struct._GtkWidget* %225)
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %226)
  %call175 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 3, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @channel_names, i32 0, i32 0))
  store %struct._GtkWidget* %call175, %struct._GtkWidget** %combo159, align 8
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %228 = bitcast %struct._GtkWidget* %227 to %struct._GTypeInstance*
  %call176 = call i64 @gimp_int_combo_box_get_type() #6
  %call177 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %228, i64 %call176)
  %229 = bitcast %struct._GTypeInstance* %call177 to %struct._GimpIntComboBox*
  %230 = load i32, i32* @copy_source, align 4
  %call178 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %229, i32 %230)
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %232 = bitcast %struct._GtkWidget* %231 to i8*
  %call179 = call i64 @g_signal_connect_data(i8* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* @copy_source to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %234 = bitcast %struct._GtkWidget* %233 to %struct._GTypeInstance*
  %call180 = call i64 @gtk_table_get_type() #6
  %call181 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %234, i64 %call180)
  %235 = bitcast %struct._GTypeInstance* %call181 to %struct._GtkTable*
  %call182 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0)) #4
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %call183 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %235, i32 0, i32 0, i8* %call182, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %236, i32 1, i32 0)
  store %struct._GtkWidget* %call183, %struct._GtkWidget** %label158, align 8
  %237 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group154, align 8
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %label158, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %237, %struct._GtkWidget* %238)
  %239 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group154, align 8
  %240 = bitcast %struct._GtkSizeGroup* %239 to i8*
  call void @g_object_unref(i8* %240)
  %call184 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 3, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @channel_names, i32 0, i32 0))
  store %struct._GtkWidget* %call184, %struct._GtkWidget** %combo159, align 8
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %242 = bitcast %struct._GtkWidget* %241 to %struct._GTypeInstance*
  %call185 = call i64 @gimp_int_combo_box_get_type() #6
  %call186 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %242, i64 %call185)
  %243 = bitcast %struct._GTypeInstance* %call186 to %struct._GimpIntComboBox*
  %244 = load i32, i32* @copy_destination, align 4
  %call187 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %243, i32 %244)
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %246 = bitcast %struct._GtkWidget* %245 to i8*
  %call188 = call i64 @g_signal_connect_data(i8* %246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* @copy_destination to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %248 = bitcast %struct._GtkWidget* %247 to %struct._GTypeInstance*
  %call189 = call i64 @gtk_table_get_type() #6
  %call190 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %248, i64 %call189)
  %249 = bitcast %struct._GTypeInstance* %call190 to %struct._GtkTable*
  %call191 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0)) #4
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %call192 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %249, i32 0, i32 1, i8* %call191, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %250, i32 1, i32 0)
  store %struct._GtkWidget* %call192, %struct._GtkWidget** %label158, align 8
  %251 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group154, align 8
  %252 = load %struct._GtkWidget*, %struct._GtkWidget** %label158, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %251, %struct._GtkWidget* %252)
  %call193 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0)) #4
  %call194 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call193)
  store %struct._GtkWidget* %call194, %struct._GtkWidget** %button, align 8
  %253 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %254 = bitcast %struct._GtkWidget* %253 to %struct._GTypeInstance*
  %call195 = call i64 @gtk_table_get_type() #6
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %254, i64 %call195)
  %255 = bitcast %struct._GTypeInstance* %call196 to %struct._GtkTable*
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %255, %struct._GtkWidget* %256, i32 0, i32 2, i32 2, i32 3, i32 6, i32 2, i32 0, i32 0)
  %257 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %257)
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %259 = bitcast %struct._GtkWidget* %258 to i8*
  %call197 = call i64 @g_signal_connect_data(i8* %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_copy_parameters_callback to void ()*), i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call198 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0)) #4
  %call199 = call %struct._GtkWidget* @gimp_frame_new(i8* %call198)
  store %struct._GtkWidget* %call199, %struct._GtkWidget** %frame157, align 8
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox160, align 8
  %261 = bitcast %struct._GtkWidget* %260 to %struct._GTypeInstance*
  %call200 = call i64 @gtk_box_get_type() #6
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %261, i64 %call200)
  %262 = bitcast %struct._GTypeInstance* %call201 to %struct._GtkBox*
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %frame157, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %262, %struct._GtkWidget* %263, i32 0, i32 0, i32 0)
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %frame157, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %264)
  %call202 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call202, %struct._GtkWidget** %table156, align 8
  %265 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %266 = bitcast %struct._GtkWidget* %265 to %struct._GTypeInstance*
  %call203 = call i64 @gtk_table_get_type() #6
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %266, i64 %call203)
  %267 = bitcast %struct._GTypeInstance* %call204 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %267, i32 6)
  %268 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %269 = bitcast %struct._GtkWidget* %268 to %struct._GTypeInstance*
  %call205 = call i64 @gtk_table_get_type() #6
  %call206 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %269, i64 %call205)
  %270 = bitcast %struct._GTypeInstance* %call206 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %270, i32 6)
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %frame157, align 8
  %272 = bitcast %struct._GtkWidget* %271 to %struct._GTypeInstance*
  %call207 = call i64 @gtk_container_get_type() #6
  %call208 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %272, i64 %call207)
  %273 = bitcast %struct._GTypeInstance* %call208 to %struct._GtkContainer*
  %274 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  call void @gtk_container_add(%struct._GtkContainer* %273, %struct._GtkWidget* %274)
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %275)
  %call209 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @load_channel_names, i32 0, i32 0))
  store %struct._GtkWidget* %call209, %struct._GtkWidget** %combo159, align 8
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %277 = bitcast %struct._GtkWidget* %276 to %struct._GTypeInstance*
  %call210 = call i64 @gimp_int_combo_box_get_type() #6
  %call211 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %277, i64 %call210)
  %278 = bitcast %struct._GTypeInstance* %call211 to %struct._GimpIntComboBox*
  %279 = load i32, i32* @selective_load_source, align 4
  %call212 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %278, i32 %279)
  %280 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %281 = bitcast %struct._GtkWidget* %280 to i8*
  %call213 = call i64 @g_signal_connect_data(i8* %281, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* @selective_load_source to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %283 = bitcast %struct._GtkWidget* %282 to %struct._GTypeInstance*
  %call214 = call i64 @gtk_table_get_type() #6
  %call215 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %283, i64 %call214)
  %284 = bitcast %struct._GTypeInstance* %call215 to %struct._GtkTable*
  %call216 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0)) #4
  %285 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %call217 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %284, i32 0, i32 0, i8* %call216, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %285, i32 1, i32 0)
  store %struct._GtkWidget* %call217, %struct._GtkWidget** %label158, align 8
  %286 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group154, align 8
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %label158, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %286, %struct._GtkWidget* %287)
  %call218 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @load_channel_names, i32 0, i32 0))
  store %struct._GtkWidget* %call218, %struct._GtkWidget** %combo159, align 8
  %288 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %289 = bitcast %struct._GtkWidget* %288 to %struct._GTypeInstance*
  %call219 = call i64 @gimp_int_combo_box_get_type() #6
  %call220 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %289, i64 %call219)
  %290 = bitcast %struct._GTypeInstance* %call220 to %struct._GimpIntComboBox*
  %291 = load i32, i32* @selective_load_destination, align 4
  %call221 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %290, i32 %291)
  %292 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %293 = bitcast %struct._GtkWidget* %292 to i8*
  %call222 = call i64 @g_signal_connect_data(i8* %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* bitcast (i32* @selective_load_destination to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %table156, align 8
  %295 = bitcast %struct._GtkWidget* %294 to %struct._GTypeInstance*
  %call223 = call i64 @gtk_table_get_type() #6
  %call224 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %295, i64 %call223)
  %296 = bitcast %struct._GTypeInstance* %call224 to %struct._GtkTable*
  %call225 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0)) #4
  %297 = load %struct._GtkWidget*, %struct._GtkWidget** %combo159, align 8
  %call226 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %296, i32 0, i32 1, i8* %call225, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %297, i32 1, i32 0)
  store %struct._GtkWidget* %call226, %struct._GtkWidget** %label158, align 8
  %298 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group154, align 8
  %299 = load %struct._GtkWidget*, %struct._GtkWidget** %label158, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %298, %struct._GtkWidget* %299)
  %300 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %301 = bitcast %struct._GtkWidget* %300 to %struct._GTypeInstance*
  %call227 = call i64 @gtk_notebook_get_type() #6
  %call228 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %301, i64 %call227)
  %302 = bitcast %struct._GTypeInstance* %call228 to %struct._GtkNotebook*
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox160, align 8
  %call229 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0)) #4
  %call230 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call229)
  %call231 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %302, %struct._GtkWidget* %303, %struct._GtkWidget* %call230)
  call void @CML_initial_value_sensitives_update()
  %304 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %304)
  %call232 = call i32 @cairo_format_stride_for_width(i32 1, i32 256)
  store i32 %call232, i32* @img_stride, align 4
  %305 = load i32, i32* @img_stride, align 4
  %mul = mul nsw i32 %305, 256
  %conv233 = sext i32 %mul to i64
  %call234 = call noalias i8* @g_malloc0(i64 %conv233)
  store i8* %call234, i8** @img, align 8
  %306 = load i8*, i8** @img, align 8
  %307 = load i32, i32* @img_stride, align 4
  %call235 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %306, i32 1, i32 256, i32 256, i32 %307)
  store %struct._cairo_surface* %call235, %struct._cairo_surface** @buffer, align 8
  store i32 0, i32* @CML_preview_defer, align 4
  call void @preview_update()
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %309 = bitcast %struct._GtkWidget* %308 to %struct._GTypeInstance*
  %call236 = call i64 @gimp_dialog_get_type() #6
  %call237 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %309, i64 %call236)
  %310 = bitcast %struct._GTypeInstance* %call237 to %struct._GimpDialog*
  %call238 = call i32 @gimp_dialog_run(%struct._GimpDialog* %310)
  %cmp = icmp eq i32 %call238, -5
  %conv239 = zext i1 %cmp to i32
  store i32 %conv239, i32* %run, align 4
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %311)
  %312 = load i8*, i8** @img, align 8
  call void @g_free(i8* %312)
  %313 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %313)
  %314 = load i32, i32* %run, align 4
  ret i32 %314
}

; Function Attrs: nounwind uwtable
define internal i32 @CML_load_parameter_file(i8* %filename, i32 %interactive_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %interactive_mode.addr = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %channel_id = alloca i32, align 4
  %flag = alloca i32, align 4
  %ch = alloca [3 x %struct.CML_PARAM], align 16
  %initial_value = alloca i32, align 4
  %scale = alloca i32, align 4
  %start_offset = alloca i32, align 4
  %seed = alloca i32, align 4
  %old2new_function_id = alloca [10 x i32], align 16
  %line = alloca [1024 x i8], align 16
  %version = alloca double, align 8
  %dummy = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %interactive_mode, i32* %interactive_mode.addr, align 4
  store i32 1, i32* %flag, align 4
  store i32 0, i32* %initial_value, align 4
  store i32 1, i32* %scale, align 4
  store i32 0, i32* %start_offset, align 4
  store i32 0, i32* %seed, align 4
  %0 = bitcast [10 x i32]* %old2new_function_id to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([10 x i32]* @CML_load_parameter_file.old2new_function_id to i8*), i64 40, i32 16, i1 false)
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.160, i32 0, i32 0)) #4
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %3)
  %call3 = call i32* @__errno_location() #6
  %4 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %4) #6
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store double 9.900000e-01, double* %version, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call5 = call double @parse_line_to_gdouble(%struct._IO_FILE* %5, i32* %flag)
  store double %call5, double* %version, align 8
  %6 = load double, double* %version, align 8
  %cmp = fcmp oeq double %6, 1.000000e+00
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store double 9.900000e-01, double* %version, align 8
  br label %if.end.15

if.else.7:                                        ; preds = %if.else
  %7 = load i32, i32* %flag, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.end.14, label %if.then.9

if.then.9:                                        ; preds = %if.else.7
  store i32 1, i32* %flag, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call10 = call double @parse_line_to_gdouble(%struct._IO_FILE* %8, i32* %flag)
  store double %call10, double* %version, align 8
  %9 = load i32, i32* %flag, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call i8* @fgets(i8* %arraydecay, i32 1023, %struct._IO_FILE* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.else.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.6
  %11 = load double, double* %version, align 8
  %cmp16 = fcmp oeq double %11, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.15
  %12 = load i32, i32* %interactive_mode.addr, align 4
  %tobool18 = icmp ne i32 %12, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.17
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.161, i32 0, i32 0)) #4
  %call21 = call i32 @gimp_message(i8* %call20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.17
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.15
  %14 = load i32, i32* %interactive_mode.addr, align 4
  %tobool25 = icmp ne i32 %14, 0
  br i1 %tobool25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %if.end.24
  %15 = load double, double* %version, align 8
  %cmp27 = fcmp olt double %15, 1.000000e+00
  br i1 %cmp27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.then.26
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.162, i32 0, i32 0)) #4
  %16 = load i8*, i8** %filename.addr, align 8
  %call30 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (i8*, ...) @g_message(i8* %call29, i8* %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.then.26
  %17 = load double, double* %version, align 8
  %cmp32 = fcmp olt double 1.000000e+00, %17
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.31
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.163, i32 0, i32 0)) #4
  %18 = load i8*, i8** %filename.addr, align 8
  %call35 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_message(i8* %call34, i8* %call35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.24
  store i32 0, i32* %channel_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %19 = load i32, i32* %flag, align 4
  %tobool38 = icmp ne i32 %19, 0
  br i1 %tobool38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i32, i32* %channel_id, align 4
  %cmp39 = icmp slt i32 %20, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp39, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call41 = call i8* @fgets(i8* %arraydecay40, i32 1023, %struct._IO_FILE* %22)
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body
  store i32 0, i32* %flag, align 4
  br label %for.end

if.end.44:                                        ; preds = %for.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call45 = call i32 @parse_line_to_gint(%struct._IO_FILE* %23, i32* %flag)
  %24 = load i32, i32* %channel_id, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom
  %function = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx, i32 0, i32 0
  store i32 %call45, i32* %function, align 4
  %25 = load double, double* %version, align 8
  %cmp46 = fcmp olt double %25, 1.000000e+00
  br i1 %cmp46, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.44
  %26 = load i32, i32* %channel_id, align 4
  %idxprom48 = sext i32 %26 to i64
  %arrayidx49 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom48
  %function50 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx49, i32 0, i32 0
  %27 = load i32, i32* %function50, align 4
  %idxprom51 = sext i32 %27 to i64
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %old2new_function_id, i32 0, i64 %idxprom51
  %28 = load i32, i32* %arrayidx52, align 4
  %29 = load i32, i32* %channel_id, align 4
  %idxprom53 = sext i32 %29 to i64
  %arrayidx54 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom53
  %function55 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx54, i32 0, i32 0
  store i32 %28, i32* %function55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.47, %if.end.44
  %30 = load double, double* %version, align 8
  %cmp57 = fcmp ole double 1.000000e+00, %30
  br i1 %cmp57, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %if.end.56
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call59 = call i32 @parse_line_to_gint(%struct._IO_FILE* %31, i32* %flag)
  %32 = load i32, i32* %channel_id, align 4
  %idxprom60 = sext i32 %32 to i64
  %arrayidx61 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom60
  %composition = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx61, i32 0, i32 1
  store i32 %call59, i32* %composition, align 4
  br label %if.end.66

if.else.62:                                       ; preds = %if.end.56
  %33 = load i32, i32* %channel_id, align 4
  %idxprom63 = sext i32 %33 to i64
  %arrayidx64 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom63
  %composition65 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx64, i32 0, i32 1
  store i32 0, i32* %composition65, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.62, %if.then.58
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call67 = call i32 @parse_line_to_gint(%struct._IO_FILE* %34, i32* %flag)
  %35 = load i32, i32* %channel_id, align 4
  %idxprom68 = sext i32 %35 to i64
  %arrayidx69 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom68
  %arrange = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx69, i32 0, i32 2
  store i32 %call67, i32* %arrange, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call70 = call i32 @parse_line_to_gint(%struct._IO_FILE* %36, i32* %flag)
  %37 = load i32, i32* %channel_id, align 4
  %idxprom71 = sext i32 %37 to i64
  %arrayidx72 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom71
  %cyclic_range = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx72, i32 0, i32 3
  store i32 %call70, i32* %cyclic_range, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call73 = call double @parse_line_to_gdouble(%struct._IO_FILE* %38, i32* %flag)
  %39 = load i32, i32* %channel_id, align 4
  %idxprom74 = sext i32 %39 to i64
  %arrayidx75 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom74
  %mod_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx75, i32 0, i32 4
  store double %call73, double* %mod_rate, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call76 = call double @parse_line_to_gdouble(%struct._IO_FILE* %40, i32* %flag)
  %41 = load i32, i32* %channel_id, align 4
  %idxprom77 = sext i32 %41 to i64
  %arrayidx78 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom77
  %env_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx78, i32 0, i32 5
  store double %call76, double* %env_sensitivity, align 8
  %42 = load double, double* %version, align 8
  %cmp79 = fcmp ole double 1.000000e+00, %42
  br i1 %cmp79, label %if.then.80, label %if.else.84

if.then.80:                                       ; preds = %if.end.66
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call81 = call i32 @parse_line_to_gint(%struct._IO_FILE* %43, i32* %flag)
  %44 = load i32, i32* %channel_id, align 4
  %idxprom82 = sext i32 %44 to i64
  %arrayidx83 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom82
  %diffusion_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx83, i32 0, i32 6
  store i32 %call81, i32* %diffusion_dist, align 4
  br label %if.end.88

if.else.84:                                       ; preds = %if.end.66
  %45 = load i32, i32* %channel_id, align 4
  %idxprom85 = sext i32 %45 to i64
  %arrayidx86 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom85
  %diffusion_dist87 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx86, i32 0, i32 6
  store i32 2, i32* %diffusion_dist87, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.84, %if.then.80
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call89 = call double @parse_line_to_gdouble(%struct._IO_FILE* %46, i32* %flag)
  %47 = load i32, i32* %channel_id, align 4
  %idxprom90 = sext i32 %47 to i64
  %arrayidx91 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom90
  %ch_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx91, i32 0, i32 7
  store double %call89, double* %ch_sensitivity, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call92 = call i32 @parse_line_to_gint(%struct._IO_FILE* %48, i32* %flag)
  %49 = load i32, i32* %channel_id, align 4
  %idxprom93 = sext i32 %49 to i64
  %arrayidx94 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom93
  %range_num = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx94, i32 0, i32 8
  store i32 %call92, i32* %range_num, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call95 = call double @parse_line_to_gdouble(%struct._IO_FILE* %50, i32* %flag)
  %51 = load i32, i32* %channel_id, align 4
  %idxprom96 = sext i32 %51 to i64
  %arrayidx97 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom96
  %power = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx97, i32 0, i32 9
  store double %call95, double* %power, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call98 = call double @parse_line_to_gdouble(%struct._IO_FILE* %52, i32* %flag)
  %53 = load i32, i32* %channel_id, align 4
  %idxprom99 = sext i32 %53 to i64
  %arrayidx100 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom99
  %parameter_k = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx100, i32 0, i32 10
  store double %call98, double* %parameter_k, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call101 = call double @parse_line_to_gdouble(%struct._IO_FILE* %54, i32* %flag)
  %55 = load i32, i32* %channel_id, align 4
  %idxprom102 = sext i32 %55 to i64
  %arrayidx103 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom102
  %range_l = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx103, i32 0, i32 11
  store double %call101, double* %range_l, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call104 = call double @parse_line_to_gdouble(%struct._IO_FILE* %56, i32* %flag)
  %57 = load i32, i32* %channel_id, align 4
  %idxprom105 = sext i32 %57 to i64
  %arrayidx106 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom105
  %range_h = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx106, i32 0, i32 12
  store double %call104, double* %range_h, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call107 = call double @parse_line_to_gdouble(%struct._IO_FILE* %58, i32* %flag)
  %59 = load i32, i32* %channel_id, align 4
  %idxprom108 = sext i32 %59 to i64
  %arrayidx109 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom108
  %mutation_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx109, i32 0, i32 13
  store double %call107, double* %mutation_rate, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call110 = call double @parse_line_to_gdouble(%struct._IO_FILE* %60, i32* %flag)
  %61 = load i32, i32* %channel_id, align 4
  %idxprom111 = sext i32 %61 to i64
  %arrayidx112 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom111
  %mutation_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %arrayidx112, i32 0, i32 14
  store double %call110, double* %mutation_dist, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %62 = load i32, i32* %channel_id, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %channel_id, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.43, %land.end
  %63 = load i32, i32* %flag, align 4
  %tobool113 = icmp ne i32 %63, 0
  br i1 %tobool113, label %if.then.114, label %if.end.128

if.then.114:                                      ; preds = %for.end
  %arraydecay115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call116 = call i8* @fgets(i8* %arraydecay115, i32 1023, %struct._IO_FILE* %64)
  %cmp117 = icmp eq i8* %call116, null
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.then.114
  store i32 1, i32* %dummy, align 4
  br label %if.end.124

if.else.119:                                      ; preds = %if.then.114
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call120 = call i32 @parse_line_to_gint(%struct._IO_FILE* %65, i32* %dummy)
  store i32 %call120, i32* %initial_value, align 4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call121 = call i32 @parse_line_to_gint(%struct._IO_FILE* %66, i32* %dummy)
  store i32 %call121, i32* %scale, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call122 = call i32 @parse_line_to_gint(%struct._IO_FILE* %67, i32* %dummy)
  store i32 %call122, i32* %start_offset, align 4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call123 = call i32 @parse_line_to_gint(%struct._IO_FILE* %68, i32* %dummy)
  store i32 %call123, i32* %seed, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.119, %if.then.118
  %69 = load i32, i32* %dummy, align 4
  %tobool125 = icmp ne i32 %69, 0
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %if.end.124
  store i32 0, i32* %initial_value, align 4
  store i32 1, i32* %scale, align 4
  store i32 0, i32* %start_offset, align 4
  store i32 0, i32* %seed, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.124
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %for.end
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call129 = call i32 @fclose(%struct._IO_FILE* %70)
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.128
  %71 = load i32, i32* %flag, align 4
  %tobool131 = icmp ne i32 %71, 0
  br i1 %tobool131, label %if.else.138, label %if.then.132

if.then.132:                                      ; preds = %if.end.130
  %72 = load i32, i32* %interactive_mode.addr, align 4
  %tobool133 = icmp ne i32 %72, 0
  br i1 %tobool133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %if.then.132
  %call135 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.164, i32 0, i32 0)) #4
  %call136 = call i32 @gimp_message(i8* %call135)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %if.then.132
  br label %if.end.151

if.else.138:                                      ; preds = %if.end.130
  %73 = load i32, i32* @selective_load_source, align 4
  %cmp139 = icmp eq i32 %73, 0
  br i1 %cmp139, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.138
  %74 = load i32, i32* @selective_load_destination, align 4
  %cmp140 = icmp eq i32 %74, 0
  br i1 %cmp140, label %if.then.141, label %if.else.145

if.then.141:                                      ; preds = %lor.lhs.false, %if.else.138
  %arrayidx142 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 0
  %75 = bitcast %struct.CML_PARAM* %arrayidx142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.ValueType* @CML_explorer_vals to i8*), i8* %75, i64 104, i32 8, i1 false)
  %arrayidx143 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 1
  %76 = bitcast %struct.CML_PARAM* %arrayidx143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1) to i8*), i8* %76, i64 104, i32 8, i1 false)
  %arrayidx144 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 2
  %77 = bitcast %struct.CML_PARAM* %arrayidx144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2) to i8*), i8* %77, i64 104, i32 8, i1 false)
  %78 = load i32, i32* %initial_value, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %79 = load i32, i32* %scale, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %80 = load i32, i32* %start_offset, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 5), align 4
  %81 = load i32, i32* %seed, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 6), align 4
  br label %if.end.149

if.else.145:                                      ; preds = %lor.lhs.false
  %82 = load i32, i32* @selective_load_destination, align 4
  %sub = sub nsw i32 %82, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0), i64 %idx.ext
  %83 = bitcast %struct.CML_PARAM* %add.ptr to i8*
  %84 = load i32, i32* @selective_load_source, align 4
  %sub146 = sub nsw i32 %84, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds [3 x %struct.CML_PARAM], [3 x %struct.CML_PARAM]* %ch, i32 0, i64 %idxprom147
  %85 = bitcast %struct.CML_PARAM* %arrayidx148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %85, i64 104, i32 1, i1 false)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.145, %if.then.141
  %86 = load i8*, i8** %filename.addr, align 8
  %call150 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 7, i32 0), i8* %86, i64 255) #4
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.149, %if.end.137
  %87 = load i32, i32* %flag, align 4
  store i32 %87, i32* %retval
  br label %return

return:                                           ; preds = %if.end.151, %if.end.22, %if.then
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @CML_main_function(i32 %preview_p) #0 {
entry:
  %retval = alloca i32, align 4
  %preview_p.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_buffer = alloca i8*, align 8
  %src_buffer = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dest_has_alpha = alloca i32, align 4
  %dest_is_gray = alloca i32, align 4
  %src_has_alpha = alloca i32, align 4
  %src_is_gray = alloca i32, align 4
  %total = alloca i32, align 4
  %processed = alloca i32, align 4
  %keep_height = alloca i32, align 4
  %cell_num = alloca i32, align 4
  %width_by_pixel = alloca i32, align 4
  %height_by_pixel = alloca i32, align 4
  %index = alloca i32, align 4
  %src_bpp = alloca i32, align 4
  %src_bpl = alloca i32, align 4
  %dest_bpp = alloca i32, align 4
  %dest_bpl = alloca i32, align 4
  %hues = alloca double*, align 8
  %sats = alloca double*, align 8
  %vals = alloca double*, align 8
  %newh = alloca double*, align 8
  %news = alloca double*, align 8
  %newv = alloca double*, align 8
  %haux = alloca double*, align 8
  %saux = alloca double*, align 8
  %vaux = alloca double*, align 8
  %index237 = alloca i32, align 4
  %buffer = alloca [4 x i8], align 1
  %rgbi = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %h = alloca i32, align 4
  %s = alloca i32, align 4
  %v = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %dest_offset = alloca i32, align 4
  %rgbi374 = alloca [3 x i32], align 4
  %i375 = alloca i32, align 4
  store i32 %preview_p, i32* %preview_p.addr, align 4
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i8* null, i8** %dest_buffer, align 8
  store i8* null, i8** %src_buffer, align 8
  store i32 0, i32* %dest_has_alpha, align 4
  store i32 0, i32* %dest_is_gray, align 4
  store i32 0, i32* %src_has_alpha, align 4
  store i32 0, i32* %src_is_gray, align 4
  store i32 0, i32* %processed, align 4
  store i32 1, i32* %keep_height, align 4
  %0 = load i32, i32* @drawable_id, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* @drawable_id, align 4
  %call1 = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %2 = load i32, i32* @drawable_id, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %2)
  store i32 %call2, i32* %dest_has_alpha, align 4
  store i32 %call2, i32* %src_has_alpha, align 4
  %3 = load i32, i32* @drawable_id, align 4
  %call3 = call i32 @gimp_drawable_is_gray(i32 %3)
  store i32 %call3, i32* %dest_is_gray, align 4
  store i32 %call3, i32* %src_is_gray, align 4
  %4 = load i32, i32* %src_is_gray, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 1, i32 3
  %5 = load i32, i32* %src_has_alpha, align 4
  %tobool4 = icmp ne i32 %5, 0
  %cond5 = select i1 %tobool4, i32 1, i32 0
  %add = add nsw i32 %cond, %cond5
  store i32 %add, i32* %dest_bpp, align 4
  store i32 %add, i32* %src_bpp, align 4
  %6 = load i32, i32* %preview_p.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  store i32 0, i32* %dest_has_alpha, align 4
  store i32 3, i32* %dest_bpp, align 4
  %7 = load i32, i32* %x2, align 4
  %8 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %7, %8
  %cmp = icmp slt i32 64, %sub
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %9 = load i32, i32* %x1, align 4
  %add8 = add nsw i32 %9, 64
  store i32 %add8, i32* %x2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %10 = load i32, i32* %y2, align 4
  %11 = load i32, i32* %y1, align 4
  %sub9 = sub nsw i32 %10, %11
  %cmp10 = icmp slt i32 220, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %12 = load i32, i32* %y1, align 4
  %add12 = add nsw i32 %12, 220
  store i32 %add12, i32* %y2, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %13 = load i32, i32* %x2, align 4
  %14 = load i32, i32* %x1, align 4
  %sub15 = sub nsw i32 %13, %14
  store i32 %sub15, i32* %width_by_pixel, align 4
  %15 = load i32, i32* %y2, align 4
  %16 = load i32, i32* %y1, align 4
  %sub16 = sub nsw i32 %15, %16
  store i32 %sub16, i32* %height_by_pixel, align 4
  %17 = load i32, i32* %width_by_pixel, align 4
  %18 = load i32, i32* %dest_bpp, align 4
  %mul = mul nsw i32 %17, %18
  store i32 %mul, i32* %dest_bpl, align 4
  %19 = load i32, i32* %width_by_pixel, align 4
  %20 = load i32, i32* %src_bpp, align 4
  %mul17 = mul nsw i32 %19, %20
  store i32 %mul17, i32* %src_bpl, align 4
  %21 = load i32, i32* %width_by_pixel, align 4
  %sub18 = sub nsw i32 %21, 1
  %22 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %div = sdiv i32 %sub18, %22
  %add19 = add nsw i32 %div, 1
  store i32 %add19, i32* %cell_num, align 4
  %23 = load i32, i32* %height_by_pixel, align 4
  %24 = load i32, i32* %width_by_pixel, align 4
  %mul20 = mul nsw i32 %23, %24
  store i32 %mul20, i32* %total, align 4
  %25 = load i32, i32* %total, align 4
  %cmp21 = icmp slt i32 %25, 1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %26 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  store i32 %26, i32* %keep_height, align 4
  %27 = load i32, i32* @mem_chank0_size, align 4
  %conv = sext i32 %27 to i64
  %28 = load i32, i32* %cell_num, align 4
  %mul24 = mul nsw i32 9, %28
  %conv25 = sext i32 %mul24 to i64
  %mul26 = mul i64 %conv25, 8
  %cmp27 = icmp ult i64 %conv, %mul26
  br i1 %cmp27, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.end.23
  %29 = load double*, double** @mem_chank0, align 8
  %30 = bitcast double* %29 to i8*
  call void @g_free(i8* %30)
  %31 = load i32, i32* %cell_num, align 4
  %mul30 = mul nsw i32 9, %31
  %conv31 = sext i32 %mul30 to i64
  %mul32 = mul i64 %conv31, 8
  %conv33 = trunc i64 %mul32 to i32
  store i32 %conv33, i32* @mem_chank0_size, align 4
  %32 = load i32, i32* @mem_chank0_size, align 4
  %conv34 = sext i32 %32 to i64
  %call35 = call noalias i8* @g_malloc(i64 %conv34)
  %33 = bitcast i8* %call35 to double*
  store double* %33, double** @mem_chank0, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.29, %if.end.23
  %34 = load double*, double** @mem_chank0, align 8
  store double* %34, double** %hues, align 8
  %35 = load double*, double** @mem_chank0, align 8
  %36 = load i32, i32* %cell_num, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds double, double* %35, i64 %idx.ext
  store double* %add.ptr, double** %sats, align 8
  %37 = load double*, double** @mem_chank0, align 8
  %38 = load i32, i32* %cell_num, align 4
  %mul37 = mul nsw i32 2, %38
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds double, double* %37, i64 %idx.ext38
  store double* %add.ptr39, double** %vals, align 8
  %39 = load double*, double** @mem_chank0, align 8
  %40 = load i32, i32* %cell_num, align 4
  %mul40 = mul nsw i32 3, %40
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds double, double* %39, i64 %idx.ext41
  store double* %add.ptr42, double** %newh, align 8
  %41 = load double*, double** @mem_chank0, align 8
  %42 = load i32, i32* %cell_num, align 4
  %mul43 = mul nsw i32 4, %42
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds double, double* %41, i64 %idx.ext44
  store double* %add.ptr45, double** %news, align 8
  %43 = load double*, double** @mem_chank0, align 8
  %44 = load i32, i32* %cell_num, align 4
  %mul46 = mul nsw i32 5, %44
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds double, double* %43, i64 %idx.ext47
  store double* %add.ptr48, double** %newv, align 8
  %45 = load double*, double** @mem_chank0, align 8
  %46 = load i32, i32* %cell_num, align 4
  %mul49 = mul nsw i32 6, %46
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds double, double* %45, i64 %idx.ext50
  store double* %add.ptr51, double** %haux, align 8
  %47 = load double*, double** @mem_chank0, align 8
  %48 = load i32, i32* %cell_num, align 4
  %mul52 = mul nsw i32 7, %48
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds double, double* %47, i64 %idx.ext53
  store double* %add.ptr54, double** %saux, align 8
  %49 = load double*, double** @mem_chank0, align 8
  %50 = load i32, i32* %cell_num, align 4
  %mul55 = mul nsw i32 8, %50
  %idx.ext56 = sext i32 %mul55 to i64
  %add.ptr57 = getelementptr inbounds double, double* %49, i64 %idx.ext56
  store double* %add.ptr57, double** %vaux, align 8
  %51 = load i32, i32* @mem_chank1_size, align 4
  %52 = load i32, i32* %src_bpl, align 4
  %53 = load i32, i32* %keep_height, align 4
  %mul58 = mul nsw i32 %52, %53
  %cmp59 = icmp slt i32 %51, %mul58
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.end.36
  %54 = load i8*, i8** @mem_chank1, align 8
  call void @g_free(i8* %54)
  %55 = load i32, i32* %src_bpl, align 4
  %56 = load i32, i32* %keep_height, align 4
  %mul62 = mul nsw i32 %55, %56
  store i32 %mul62, i32* @mem_chank1_size, align 4
  %57 = load i32, i32* @mem_chank1_size, align 4
  %conv63 = sext i32 %57 to i64
  %call64 = call noalias i8* @g_malloc(i64 %conv63)
  store i8* %call64, i8** @mem_chank1, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %if.end.36
  %58 = load i8*, i8** @mem_chank1, align 8
  store i8* %58, i8** %src_buffer, align 8
  %59 = load i32, i32* @mem_chank2_size, align 4
  %60 = load i32, i32* %dest_bpl, align 4
  %61 = load i32, i32* %keep_height, align 4
  %mul66 = mul nsw i32 %60, %61
  %cmp67 = icmp slt i32 %59, %mul66
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.65
  %62 = load i8*, i8** @mem_chank2, align 8
  call void @g_free(i8* %62)
  %63 = load i32, i32* %dest_bpl, align 4
  %64 = load i32, i32* %keep_height, align 4
  %mul70 = mul nsw i32 %63, %64
  store i32 %mul70, i32* @mem_chank2_size, align 4
  %65 = load i32, i32* @mem_chank2_size, align 4
  %conv71 = sext i32 %65 to i64
  %call72 = call noalias i8* @g_malloc(i64 %conv71)
  store i8* %call72, i8** @mem_chank2, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.end.65
  %66 = load i8*, i8** @mem_chank2, align 8
  store i8* %66, i8** %dest_buffer, align 8
  %67 = load i32, i32* %preview_p.addr, align 4
  %tobool74 = icmp ne i32 %67, 0
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.73
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %69 = load i32, i32* %x1, align 4
  %70 = load i32, i32* %y1, align 4
  %71 = load i32, i32* %width_by_pixel, align 4
  %72 = load i32, i32* %height_by_pixel, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 1, i32 1)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  %73 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %74 = load i32, i32* %x1, align 4
  %75 = load i32, i32* %y1, align 4
  %76 = load i32, i32* %width_by_pixel, align 4
  %77 = load i32, i32* %height_by_pixel, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 0, i32 0)
  %call77 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call77, %struct._GRand** @gr, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %cmp78 = icmp eq i32 %78, 8
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.76
  %79 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 6), align 4
  call void @g_rand_set_seed(%struct._GRand* %79, i32 %80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.76
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.81
  %81 = load i32, i32* %index, align 4
  %82 = load i32, i32* %cell_num, align 4
  %cmp82 = icmp slt i32 %81, %82
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 2), align 4
  switch i32 %83, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb.85
    i32 8, label %sw.bb.85
    i32 4, label %sw.bb.92
    i32 6, label %sw.bb.92
    i32 7, label %sw.bb.96
    i32 9, label %sw.bb.100
  ]

sw.bb:                                            ; preds = %for.body
  %84 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call84 = call double @g_rand_double_range(%struct._GRand* %84, double 0.000000e+00, double 1.000000e+01)
  %85 = load i32, i32* %index, align 4
  %idxprom = sext i32 %85 to i64
  %86 = load double*, double** %haux, align 8
  %arrayidx = getelementptr inbounds double, double* %86, i64 %idxprom
  store double %call84, double* %arrayidx, align 8
  br label %sw.epilog

sw.bb.85:                                         ; preds = %for.body, %for.body
  %87 = load i32, i32* %index, align 4
  %rem = srem i32 %87, 511
  %sub86 = sub nsw i32 %rem, 255
  %call87 = call i32 @abs(i32 %sub86) #6
  %conv88 = sitofp i32 %call87 to double
  %div89 = fdiv double %conv88, 2.560000e+02
  %88 = load i32, i32* %index, align 4
  %idxprom90 = sext i32 %88 to i64
  %89 = load double*, double** %haux, align 8
  %arrayidx91 = getelementptr inbounds double, double* %89, i64 %idxprom90
  store double %div89, double* %arrayidx91, align 8
  br label %sw.epilog

sw.bb.92:                                         ; preds = %for.body, %for.body
  %90 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call93 = call double @g_rand_double(%struct._GRand* %90)
  %91 = load i32, i32* %index, align 4
  %idxprom94 = sext i32 %91 to i64
  %92 = load double*, double** %haux, align 8
  %arrayidx95 = getelementptr inbounds double, double* %92, i64 %idxprom94
  store double %call93, double* %arrayidx95, align 8
  br label %sw.epilog

sw.bb.96:                                         ; preds = %for.body
  %93 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call97 = call double @g_rand_double_range(%struct._GRand* %93, double 0.000000e+00, double 2.000000e+00)
  %94 = load i32, i32* %index, align 4
  %idxprom98 = sext i32 %94 to i64
  %95 = load double*, double** %haux, align 8
  %arrayidx99 = getelementptr inbounds double, double* %95, i64 %idxprom98
  store double %call97, double* %arrayidx99, align 8
  br label %sw.epilog

sw.bb.100:                                        ; preds = %for.body
  %96 = load i32, i32* %index, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 6), align 4
  %mul101 = mul nsw i32 2, %97
  %rem102 = srem i32 %96, %mul101
  %cmp103 = icmp eq i32 %rem102, 0
  br i1 %cmp103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.100
  %98 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call105 = call double @g_rand_double(%struct._GRand* %98)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.100
  %99 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 9), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond106 = phi double [ %call105, %cond.true ], [ %99, %cond.false ]
  %100 = load i32, i32* %index, align 4
  %idxprom107 = sext i32 %100 to i64
  %101 = load double*, double** %haux, align 8
  %arrayidx108 = getelementptr inbounds double, double* %101, i64 %idxprom107
  store double %cond106, double* %arrayidx108, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %102 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 9), align 8
  %103 = load i32, i32* %index, align 4
  %idxprom109 = sext i32 %103 to i64
  %104 = load double*, double** %haux, align 8
  %arrayidx110 = getelementptr inbounds double, double* %104, i64 %idxprom109
  store double %102, double* %arrayidx110, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end, %sw.bb.96, %sw.bb.92, %sw.bb.85, %sw.bb
  %105 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 2), align 4
  switch i32 %105, label %sw.default.143 [
    i32 3, label %sw.bb.111
    i32 5, label %sw.bb.115
    i32 8, label %sw.bb.115
    i32 4, label %sw.bb.123
    i32 6, label %sw.bb.123
    i32 7, label %sw.bb.127
    i32 9, label %sw.bb.131
  ]

sw.bb.111:                                        ; preds = %sw.epilog
  %106 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call112 = call double @g_rand_double_range(%struct._GRand* %106, double 0.000000e+00, double 1.000000e+01)
  %107 = load i32, i32* %index, align 4
  %idxprom113 = sext i32 %107 to i64
  %108 = load double*, double** %saux, align 8
  %arrayidx114 = getelementptr inbounds double, double* %108, i64 %idxprom113
  store double %call112, double* %arrayidx114, align 8
  br label %sw.epilog.146

sw.bb.115:                                        ; preds = %sw.epilog, %sw.epilog
  %109 = load i32, i32* %index, align 4
  %rem116 = srem i32 %109, 511
  %sub117 = sub nsw i32 %rem116, 255
  %call118 = call i32 @abs(i32 %sub117) #6
  %conv119 = sitofp i32 %call118 to double
  %div120 = fdiv double %conv119, 2.560000e+02
  %110 = load i32, i32* %index, align 4
  %idxprom121 = sext i32 %110 to i64
  %111 = load double*, double** %saux, align 8
  %arrayidx122 = getelementptr inbounds double, double* %111, i64 %idxprom121
  store double %div120, double* %arrayidx122, align 8
  br label %sw.epilog.146

sw.bb.123:                                        ; preds = %sw.epilog, %sw.epilog
  %112 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call124 = call double @g_rand_double(%struct._GRand* %112)
  %113 = load i32, i32* %index, align 4
  %idxprom125 = sext i32 %113 to i64
  %114 = load double*, double** %saux, align 8
  %arrayidx126 = getelementptr inbounds double, double* %114, i64 %idxprom125
  store double %call124, double* %arrayidx126, align 8
  br label %sw.epilog.146

sw.bb.127:                                        ; preds = %sw.epilog
  %115 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call128 = call double @g_rand_double_range(%struct._GRand* %115, double 0.000000e+00, double 2.000000e+00)
  %116 = load i32, i32* %index, align 4
  %idxprom129 = sext i32 %116 to i64
  %117 = load double*, double** %saux, align 8
  %arrayidx130 = getelementptr inbounds double, double* %117, i64 %idxprom129
  store double %call128, double* %arrayidx130, align 8
  br label %sw.epilog.146

sw.bb.131:                                        ; preds = %sw.epilog
  %118 = load i32, i32* %index, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 6), align 4
  %mul132 = mul nsw i32 2, %119
  %rem133 = srem i32 %118, %mul132
  %cmp134 = icmp eq i32 %rem133, 0
  br i1 %cmp134, label %cond.true.136, label %cond.false.138

cond.true.136:                                    ; preds = %sw.bb.131
  %120 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call137 = call double @g_rand_double(%struct._GRand* %120)
  br label %cond.end.139

cond.false.138:                                   ; preds = %sw.bb.131
  %121 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 9), align 8
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.136
  %cond140 = phi double [ %call137, %cond.true.136 ], [ %121, %cond.false.138 ]
  %122 = load i32, i32* %index, align 4
  %idxprom141 = sext i32 %122 to i64
  %123 = load double*, double** %saux, align 8
  %arrayidx142 = getelementptr inbounds double, double* %123, i64 %idxprom141
  store double %cond140, double* %arrayidx142, align 8
  br label %sw.epilog.146

sw.default.143:                                   ; preds = %sw.epilog
  %124 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 9), align 8
  %125 = load i32, i32* %index, align 4
  %idxprom144 = sext i32 %125 to i64
  %126 = load double*, double** %saux, align 8
  %arrayidx145 = getelementptr inbounds double, double* %126, i64 %idxprom144
  store double %124, double* %arrayidx145, align 8
  br label %sw.epilog.146

sw.epilog.146:                                    ; preds = %sw.default.143, %cond.end.139, %sw.bb.127, %sw.bb.123, %sw.bb.115, %sw.bb.111
  %127 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 2), align 4
  switch i32 %127, label %sw.default.179 [
    i32 3, label %sw.bb.147
    i32 5, label %sw.bb.151
    i32 8, label %sw.bb.151
    i32 4, label %sw.bb.159
    i32 6, label %sw.bb.159
    i32 7, label %sw.bb.163
    i32 9, label %sw.bb.167
  ]

sw.bb.147:                                        ; preds = %sw.epilog.146
  %128 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call148 = call double @g_rand_double_range(%struct._GRand* %128, double 0.000000e+00, double 1.000000e+01)
  %129 = load i32, i32* %index, align 4
  %idxprom149 = sext i32 %129 to i64
  %130 = load double*, double** %vaux, align 8
  %arrayidx150 = getelementptr inbounds double, double* %130, i64 %idxprom149
  store double %call148, double* %arrayidx150, align 8
  br label %sw.epilog.182

sw.bb.151:                                        ; preds = %sw.epilog.146, %sw.epilog.146
  %131 = load i32, i32* %index, align 4
  %rem152 = srem i32 %131, 511
  %sub153 = sub nsw i32 %rem152, 255
  %call154 = call i32 @abs(i32 %sub153) #6
  %conv155 = sitofp i32 %call154 to double
  %div156 = fdiv double %conv155, 2.560000e+02
  %132 = load i32, i32* %index, align 4
  %idxprom157 = sext i32 %132 to i64
  %133 = load double*, double** %vaux, align 8
  %arrayidx158 = getelementptr inbounds double, double* %133, i64 %idxprom157
  store double %div156, double* %arrayidx158, align 8
  br label %sw.epilog.182

sw.bb.159:                                        ; preds = %sw.epilog.146, %sw.epilog.146
  %134 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call160 = call double @g_rand_double(%struct._GRand* %134)
  %135 = load i32, i32* %index, align 4
  %idxprom161 = sext i32 %135 to i64
  %136 = load double*, double** %vaux, align 8
  %arrayidx162 = getelementptr inbounds double, double* %136, i64 %idxprom161
  store double %call160, double* %arrayidx162, align 8
  br label %sw.epilog.182

sw.bb.163:                                        ; preds = %sw.epilog.146
  %137 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call164 = call double @g_rand_double_range(%struct._GRand* %137, double 0.000000e+00, double 2.000000e+00)
  %138 = load i32, i32* %index, align 4
  %idxprom165 = sext i32 %138 to i64
  %139 = load double*, double** %vaux, align 8
  %arrayidx166 = getelementptr inbounds double, double* %139, i64 %idxprom165
  store double %call164, double* %arrayidx166, align 8
  br label %sw.epilog.182

sw.bb.167:                                        ; preds = %sw.epilog.146
  %140 = load i32, i32* %index, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 6), align 4
  %mul168 = mul nsw i32 2, %141
  %rem169 = srem i32 %140, %mul168
  %cmp170 = icmp eq i32 %rem169, 0
  br i1 %cmp170, label %cond.true.172, label %cond.false.174

cond.true.172:                                    ; preds = %sw.bb.167
  %142 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call173 = call double @g_rand_double(%struct._GRand* %142)
  br label %cond.end.175

cond.false.174:                                   ; preds = %sw.bb.167
  %143 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 9), align 8
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.172
  %cond176 = phi double [ %call173, %cond.true.172 ], [ %143, %cond.false.174 ]
  %144 = load i32, i32* %index, align 4
  %idxprom177 = sext i32 %144 to i64
  %145 = load double*, double** %vaux, align 8
  %arrayidx178 = getelementptr inbounds double, double* %145, i64 %idxprom177
  store double %cond176, double* %arrayidx178, align 8
  br label %sw.epilog.182

sw.default.179:                                   ; preds = %sw.epilog.146
  %146 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 9), align 8
  %147 = load i32, i32* %index, align 4
  %idxprom180 = sext i32 %147 to i64
  %148 = load double*, double** %vaux, align 8
  %arrayidx181 = getelementptr inbounds double, double* %148, i64 %idxprom180
  store double %146, double* %arrayidx181, align 8
  br label %sw.epilog.182

sw.epilog.182:                                    ; preds = %sw.default.179, %cond.end.175, %sw.bb.163, %sw.bb.159, %sw.bb.151, %sw.bb.147
  %149 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  switch i32 %149, label %sw.epilog.233 [
    i32 0, label %sw.bb.183
    i32 1, label %sw.bb.183
    i32 2, label %sw.bb.183
    i32 3, label %sw.bb.192
    i32 4, label %sw.bb.193
    i32 5, label %sw.bb.203
    i32 6, label %sw.bb.215
    i32 8, label %sw.bb.215
    i32 7, label %sw.bb.225
    i32 9, label %sw.bb.225
  ]

sw.bb.183:                                        ; preds = %sw.epilog.182, %sw.epilog.182, %sw.epilog.182
  %150 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %conv184 = sitofp i32 %150 to double
  %mul185 = fmul double 5.000000e-01, %conv184
  %151 = load i32, i32* %index, align 4
  %idxprom186 = sext i32 %151 to i64
  %152 = load double*, double** %vals, align 8
  %arrayidx187 = getelementptr inbounds double, double* %152, i64 %idxprom186
  store double %mul185, double* %arrayidx187, align 8
  %153 = load i32, i32* %index, align 4
  %idxprom188 = sext i32 %153 to i64
  %154 = load double*, double** %sats, align 8
  %arrayidx189 = getelementptr inbounds double, double* %154, i64 %idxprom188
  store double %mul185, double* %arrayidx189, align 8
  %155 = load i32, i32* %index, align 4
  %idxprom190 = sext i32 %155 to i64
  %156 = load double*, double** %hues, align 8
  %arrayidx191 = getelementptr inbounds double, double* %156, i64 %idxprom190
  store double %mul185, double* %arrayidx191, align 8
  br label %sw.epilog.233

sw.bb.192:                                        ; preds = %sw.epilog.182
  br label %sw.epilog.233

sw.bb.193:                                        ; preds = %sw.epilog.182
  %157 = load i32, i32* %index, align 4
  %rem194 = srem i32 %157, 256
  %conv195 = sitofp i32 %rem194 to double
  %div196 = fdiv double %conv195, 2.560000e+02
  %158 = load i32, i32* %index, align 4
  %idxprom197 = sext i32 %158 to i64
  %159 = load double*, double** %vals, align 8
  %arrayidx198 = getelementptr inbounds double, double* %159, i64 %idxprom197
  store double %div196, double* %arrayidx198, align 8
  %160 = load i32, i32* %index, align 4
  %idxprom199 = sext i32 %160 to i64
  %161 = load double*, double** %sats, align 8
  %arrayidx200 = getelementptr inbounds double, double* %161, i64 %idxprom199
  store double %div196, double* %arrayidx200, align 8
  %162 = load i32, i32* %index, align 4
  %idxprom201 = sext i32 %162 to i64
  %163 = load double*, double** %hues, align 8
  %arrayidx202 = getelementptr inbounds double, double* %163, i64 %idxprom201
  store double %div196, double* %arrayidx202, align 8
  br label %sw.epilog.233

sw.bb.203:                                        ; preds = %sw.epilog.182
  %164 = load i32, i32* %index, align 4
  %rem204 = srem i32 %164, 511
  %sub205 = sub nsw i32 %rem204, 255
  %call206 = call i32 @abs(i32 %sub205) #6
  %conv207 = sitofp i32 %call206 to double
  %div208 = fdiv double %conv207, 2.560000e+02
  %165 = load i32, i32* %index, align 4
  %idxprom209 = sext i32 %165 to i64
  %166 = load double*, double** %vals, align 8
  %arrayidx210 = getelementptr inbounds double, double* %166, i64 %idxprom209
  store double %div208, double* %arrayidx210, align 8
  %167 = load i32, i32* %index, align 4
  %idxprom211 = sext i32 %167 to i64
  %168 = load double*, double** %sats, align 8
  %arrayidx212 = getelementptr inbounds double, double* %168, i64 %idxprom211
  store double %div208, double* %arrayidx212, align 8
  %169 = load i32, i32* %index, align 4
  %idxprom213 = sext i32 %169 to i64
  %170 = load double*, double** %hues, align 8
  %arrayidx214 = getelementptr inbounds double, double* %170, i64 %idxprom213
  store double %div208, double* %arrayidx214, align 8
  br label %sw.epilog.233

sw.bb.215:                                        ; preds = %sw.epilog.182, %sw.epilog.182
  %171 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call216 = call double @g_rand_double(%struct._GRand* %171)
  %172 = load i32, i32* %index, align 4
  %idxprom217 = sext i32 %172 to i64
  %173 = load double*, double** %hues, align 8
  %arrayidx218 = getelementptr inbounds double, double* %173, i64 %idxprom217
  store double %call216, double* %arrayidx218, align 8
  %174 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call219 = call double @g_rand_double(%struct._GRand* %174)
  %175 = load i32, i32* %index, align 4
  %idxprom220 = sext i32 %175 to i64
  %176 = load double*, double** %sats, align 8
  %arrayidx221 = getelementptr inbounds double, double* %176, i64 %idxprom220
  store double %call219, double* %arrayidx221, align 8
  %177 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call222 = call double @g_rand_double(%struct._GRand* %177)
  %178 = load i32, i32* %index, align 4
  %idxprom223 = sext i32 %178 to i64
  %179 = load double*, double** %vals, align 8
  %arrayidx224 = getelementptr inbounds double, double* %179, i64 %idxprom223
  store double %call222, double* %arrayidx224, align 8
  br label %sw.epilog.233

sw.bb.225:                                        ; preds = %sw.epilog.182, %sw.epilog.182
  %180 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call226 = call double @g_rand_double(%struct._GRand* %180)
  %181 = load i32, i32* %index, align 4
  %idxprom227 = sext i32 %181 to i64
  %182 = load double*, double** %vals, align 8
  %arrayidx228 = getelementptr inbounds double, double* %182, i64 %idxprom227
  store double %call226, double* %arrayidx228, align 8
  %183 = load i32, i32* %index, align 4
  %idxprom229 = sext i32 %183 to i64
  %184 = load double*, double** %sats, align 8
  %arrayidx230 = getelementptr inbounds double, double* %184, i64 %idxprom229
  store double %call226, double* %arrayidx230, align 8
  %185 = load i32, i32* %index, align 4
  %idxprom231 = sext i32 %185 to i64
  %186 = load double*, double** %hues, align 8
  %arrayidx232 = getelementptr inbounds double, double* %186, i64 %idxprom231
  store double %call226, double* %arrayidx232, align 8
  br label %sw.epilog.233

sw.epilog.233:                                    ; preds = %sw.epilog.182, %sw.bb.225, %sw.bb.215, %sw.bb.203, %sw.bb.193, %sw.bb.192, %sw.bb.183
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.233
  %187 = load i32, i32* %index, align 4
  %inc = add nsw i32 %187, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %188 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %cmp234 = icmp eq i32 %188, 3
  br i1 %cmp234, label %if.then.236, label %if.end.287

if.then.236:                                      ; preds = %for.end
  store i32 0, i32* %index237, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.284, %if.then.236
  %189 = load i32, i32* %index237, align 4
  %190 = load i32, i32* %cell_num, align 4
  %191 = load i32, i32* %width_by_pixel, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %div239 = sdiv i32 %191, %192
  %cmp240 = icmp slt i32 %190, %div239
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %for.cond.238
  %193 = load i32, i32* %cell_num, align 4
  br label %cond.end.245

cond.false.243:                                   ; preds = %for.cond.238
  %194 = load i32, i32* %width_by_pixel, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %div244 = sdiv i32 %194, %195
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.243, %cond.true.242
  %cond246 = phi i32 [ %193, %cond.true.242 ], [ %div244, %cond.false.243 ]
  %cmp247 = icmp slt i32 %189, %cond246
  br i1 %cmp247, label %for.body.249, label %for.end.286

for.body.249:                                     ; preds = %cond.end.245
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  %196 = load i32, i32* %x1, align 4
  %197 = load i32, i32* %index237, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %mul250 = mul nsw i32 %197, %198
  %add251 = add nsw i32 %196, %mul250
  %199 = load i32, i32* %y1, align 4
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %src_rgn, i8* %arraydecay, i32 %add251, i32 %199)
  store i32 0, i32* %i, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.261, %for.body.249
  %200 = load i32, i32* %i, align 4
  %cmp253 = icmp slt i32 %200, 3
  br i1 %cmp253, label %for.body.255, label %for.end.263

for.body.255:                                     ; preds = %for.cond.252
  %201 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %201 to i64
  %arrayidx257 = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i64 %idxprom256
  %202 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %202 to i32
  %203 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %203 to i64
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 %idxprom259
  store i32 %conv258, i32* %arrayidx260, align 4
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.body.255
  %204 = load i32, i32* %i, align 4
  %inc262 = add nsw i32 %204, 1
  store i32 %inc262, i32* %i, align 4
  br label %for.cond.252

for.end.263:                                      ; preds = %for.cond.252
  %arraydecay264 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i32 0
  %arraydecay265 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i32 0
  %add.ptr266 = getelementptr inbounds i32, i32* %arraydecay265, i64 1
  %arraydecay267 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i32 0
  %add.ptr268 = getelementptr inbounds i32, i32* %arraydecay267, i64 2
  call void @gimp_rgb_to_hsv_int(i32* %arraydecay264, i32* %add.ptr266, i32* %add.ptr268)
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 0
  %205 = load i32, i32* %arrayidx269, align 4
  %conv270 = sitofp i32 %205 to double
  %div271 = fdiv double %conv270, 2.550000e+02
  %206 = load i32, i32* %index237, align 4
  %idxprom272 = sext i32 %206 to i64
  %207 = load double*, double** %hues, align 8
  %arrayidx273 = getelementptr inbounds double, double* %207, i64 %idxprom272
  store double %div271, double* %arrayidx273, align 8
  %arrayidx274 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 1
  %208 = load i32, i32* %arrayidx274, align 4
  %conv275 = sitofp i32 %208 to double
  %div276 = fdiv double %conv275, 2.550000e+02
  %209 = load i32, i32* %index237, align 4
  %idxprom277 = sext i32 %209 to i64
  %210 = load double*, double** %sats, align 8
  %arrayidx278 = getelementptr inbounds double, double* %210, i64 %idxprom277
  store double %div276, double* %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 2
  %211 = load i32, i32* %arrayidx279, align 4
  %conv280 = sitofp i32 %211 to double
  %div281 = fdiv double %conv280, 2.550000e+02
  %212 = load i32, i32* %index237, align 4
  %idxprom282 = sext i32 %212 to i64
  %213 = load double*, double** %vals, align 8
  %arrayidx283 = getelementptr inbounds double, double* %213, i64 %idxprom282
  store double %div281, double* %arrayidx283, align 8
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.end.263
  %214 = load i32, i32* %index237, align 4
  %inc285 = add nsw i32 %214, 1
  store i32 %inc285, i32* %index237, align 4
  br label %for.cond.238

for.end.286:                                      ; preds = %cond.end.245
  br label %if.end.287

if.end.287:                                       ; preds = %for.end.286, %for.end
  %215 = load i32, i32* %preview_p.addr, align 4
  %tobool288 = icmp ne i32 %215, 0
  br i1 %tobool288, label %if.end.292, label %if.then.289

if.then.289:                                      ; preds = %if.end.287
  %call290 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.165, i32 0, i32 0)) #4
  %call291 = call i32 @gimp_progress_init(i8* %call290)
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.289, %if.end.287
  store i32 0, i32* %index, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.297, %if.end.292
  %216 = load i32, i32* %index, align 4
  %217 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 5), align 4
  %cmp294 = icmp slt i32 %216, %217
  br i1 %cmp294, label %for.body.296, label %for.end.299

for.body.296:                                     ; preds = %for.cond.293
  %218 = load i32, i32* %cell_num, align 4
  call void @CML_compute_next_step(i32 %218, double** %hues, double** %sats, double** %vals, double** %newh, double** %news, double** %newv, double** %haux, double** %saux, double** %vaux)
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.body.296
  %219 = load i32, i32* %index, align 4
  %inc298 = add nsw i32 %219, 1
  store i32 %inc298, i32* %index, align 4
  br label %for.cond.293

for.end.299:                                      ; preds = %for.cond.293
  store i32 0, i32* %dy, align 4
  br label %for.cond.300

for.cond.300:                                     ; preds = %for.inc.498, %for.end.299
  %220 = load i32, i32* %dy, align 4
  %221 = load i32, i32* %height_by_pixel, align 4
  %cmp301 = icmp slt i32 %220, %221
  br i1 %cmp301, label %for.body.303, label %for.end.500

for.body.303:                                     ; preds = %for.cond.300
  %222 = load i32, i32* %height_by_pixel, align 4
  %223 = load i32, i32* %dy, align 4
  %224 = load i32, i32* %keep_height, align 4
  %add304 = add nsw i32 %223, %224
  %cmp305 = icmp slt i32 %222, %add304
  br i1 %cmp305, label %if.then.307, label %if.end.309

if.then.307:                                      ; preds = %for.body.303
  %225 = load i32, i32* %height_by_pixel, align 4
  %226 = load i32, i32* %dy, align 4
  %sub308 = sub nsw i32 %225, %226
  store i32 %sub308, i32* %keep_height, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.307, %for.body.303
  %227 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 0), align 4
  %cmp310 = icmp eq i32 %227, 0
  br i1 %cmp310, label %if.then.317, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.309
  %228 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 0), align 4
  %cmp312 = icmp eq i32 %228, 0
  br i1 %cmp312, label %if.then.317, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %lor.lhs.false
  %229 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 0), align 4
  %cmp315 = icmp eq i32 %229, 0
  br i1 %cmp315, label %if.then.317, label %if.end.319

if.then.317:                                      ; preds = %lor.lhs.false.314, %lor.lhs.false, %if.end.309
  %230 = load i8*, i8** %src_buffer, align 8
  %231 = load i32, i32* %x1, align 4
  %232 = load i32, i32* %y1, align 4
  %233 = load i32, i32* %dy, align 4
  %add318 = add nsw i32 %232, %233
  %234 = load i32, i32* %width_by_pixel, align 4
  %235 = load i32, i32* %keep_height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %230, i32 %231, i32 %add318, i32 %234, i32 %235)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.317, %lor.lhs.false.314
  %236 = load i32, i32* %cell_num, align 4
  call void @CML_compute_next_step(i32 %236, double** %hues, double** %sats, double** %vals, double** %newh, double** %news, double** %newv, double** %haux, double** %saux, double** %vaux)
  store i32 0, i32* %dx, align 4
  br label %for.cond.320

for.cond.320:                                     ; preds = %for.inc.488, %if.end.319
  %237 = load i32, i32* %dx, align 4
  %238 = load i32, i32* %cell_num, align 4
  %cmp321 = icmp slt i32 %237, %238
  br i1 %cmp321, label %for.body.323, label %for.end.490

for.body.323:                                     ; preds = %for.cond.320
  %239 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 12), align 8
  %240 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 11), align 8
  %sub324 = fsub double %239, %240
  %241 = load i32, i32* %dx, align 4
  %idxprom325 = sext i32 %241 to i64
  %242 = load double*, double** %hues, align 8
  %arrayidx326 = getelementptr inbounds double, double* %242, i64 %idxprom325
  %243 = load double, double* %arrayidx326, align 8
  %mul327 = fmul double %sub324, %243
  %244 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 11), align 8
  %add328 = fadd double %mul327, %244
  %mul329 = fmul double 2.540000e+02, %add328
  %conv330 = fptosi double %mul329 to i32
  store i32 %conv330, i32* %r, align 4
  store i32 %conv330, i32* %h, align 4
  %245 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 12), align 8
  %246 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 11), align 8
  %sub331 = fsub double %245, %246
  %247 = load i32, i32* %dx, align 4
  %idxprom332 = sext i32 %247 to i64
  %248 = load double*, double** %sats, align 8
  %arrayidx333 = getelementptr inbounds double, double* %248, i64 %idxprom332
  %249 = load double, double* %arrayidx333, align 8
  %mul334 = fmul double %sub331, %249
  %250 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 11), align 8
  %add335 = fadd double %mul334, %250
  %mul336 = fmul double 2.550000e+02, %add335
  %conv337 = fptosi double %mul336 to i32
  store i32 %conv337, i32* %g, align 4
  store i32 %conv337, i32* %s, align 4
  %251 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 12), align 8
  %252 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 11), align 8
  %sub338 = fsub double %251, %252
  %253 = load i32, i32* %dx, align 4
  %idxprom339 = sext i32 %253 to i64
  %254 = load double*, double** %vals, align 8
  %arrayidx340 = getelementptr inbounds double, double* %254, i64 %idxprom339
  %255 = load double, double* %arrayidx340, align 8
  %mul341 = fmul double %sub338, %255
  %256 = load double, double* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 11), align 8
  %add342 = fadd double %mul341, %256
  %mul343 = fmul double 2.550000e+02, %add342
  %conv344 = fptosi double %mul343 to i32
  store i32 %conv344, i32* %b, align 4
  store i32 %conv344, i32* %v, align 4
  %257 = load i32, i32* %dest_is_gray, align 4
  %tobool345 = icmp ne i32 %257, 0
  br i1 %tobool345, label %if.end.347, label %if.then.346

if.then.346:                                      ; preds = %for.body.323
  call void @gimp_hsv_to_rgb_int(i32* %r, i32* %g, i32* %b)
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.346, %for.body.323
  store i32 0, i32* %offset_y, align 4
  br label %for.cond.348

for.cond.348:                                     ; preds = %for.inc.485, %if.end.347
  %258 = load i32, i32* %offset_y, align 4
  %259 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %cmp349 = icmp slt i32 %258, %259
  br i1 %cmp349, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.348
  %260 = load i32, i32* %dy, align 4
  %261 = load i32, i32* %offset_y, align 4
  %add351 = add nsw i32 %260, %261
  %262 = load i32, i32* %height_by_pixel, align 4
  %cmp352 = icmp slt i32 %add351, %262
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.348
  %263 = phi i1 [ false, %for.cond.348 ], [ %cmp352, %land.rhs ]
  br i1 %263, label %for.body.354, label %for.end.487

for.body.354:                                     ; preds = %land.end
  store i32 0, i32* %offset_x, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.482, %for.body.354
  %264 = load i32, i32* %offset_x, align 4
  %265 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %cmp356 = icmp slt i32 %264, %265
  br i1 %cmp356, label %land.rhs.358, label %land.end.363

land.rhs.358:                                     ; preds = %for.cond.355
  %266 = load i32, i32* %dx, align 4
  %267 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %mul359 = mul nsw i32 %266, %267
  %268 = load i32, i32* %offset_x, align 4
  %add360 = add nsw i32 %mul359, %268
  %269 = load i32, i32* %width_by_pixel, align 4
  %cmp361 = icmp slt i32 %add360, %269
  br label %land.end.363

land.end.363:                                     ; preds = %land.rhs.358, %for.cond.355
  %270 = phi i1 [ false, %for.cond.355 ], [ %cmp361, %land.rhs.358 ]
  br i1 %270, label %for.body.364, label %for.end.484

for.body.364:                                     ; preds = %land.end.363
  %271 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 0), align 4
  %cmp365 = icmp eq i32 %271, 0
  br i1 %cmp365, label %if.then.373, label %lor.lhs.false.367

lor.lhs.false.367:                                ; preds = %for.body.364
  %272 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 0), align 4
  %cmp368 = icmp eq i32 %272, 0
  br i1 %cmp368, label %if.then.373, label %lor.lhs.false.370

lor.lhs.false.370:                                ; preds = %lor.lhs.false.367
  %273 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 0), align 4
  %cmp371 = icmp eq i32 %273, 0
  br i1 %cmp371, label %if.then.373, label %if.end.426

if.then.373:                                      ; preds = %lor.lhs.false.370, %lor.lhs.false.367, %for.body.364
  store i32 0, i32* %i375, align 4
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.inc.391, %if.then.373
  %274 = load i32, i32* %i375, align 4
  %275 = load i32, i32* %src_bpp, align 4
  %cmp377 = icmp slt i32 %274, %275
  br i1 %cmp377, label %for.body.379, label %for.end.393

for.body.379:                                     ; preds = %for.cond.376
  %276 = load i32, i32* %offset_y, align 4
  %277 = load i32, i32* %src_bpl, align 4
  %mul380 = mul nsw i32 %276, %277
  %278 = load i32, i32* %dx, align 4
  %279 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %mul381 = mul nsw i32 %278, %279
  %280 = load i32, i32* %offset_x, align 4
  %add382 = add nsw i32 %mul381, %280
  %281 = load i32, i32* %src_bpp, align 4
  %mul383 = mul nsw i32 %add382, %281
  %add384 = add nsw i32 %mul380, %mul383
  %282 = load i32, i32* %i375, align 4
  %add385 = add nsw i32 %add384, %282
  %idxprom386 = sext i32 %add385 to i64
  %283 = load i8*, i8** %src_buffer, align 8
  %arrayidx387 = getelementptr inbounds i8, i8* %283, i64 %idxprom386
  %284 = load i8, i8* %arrayidx387, align 1
  %conv388 = zext i8 %284 to i32
  %285 = load i32, i32* %i375, align 4
  %idxprom389 = sext i32 %285 to i64
  %arrayidx390 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i64 %idxprom389
  store i32 %conv388, i32* %arrayidx390, align 4
  br label %for.inc.391

for.inc.391:                                      ; preds = %for.body.379
  %286 = load i32, i32* %i375, align 4
  %inc392 = add nsw i32 %286, 1
  store i32 %inc392, i32* %i375, align 4
  br label %for.cond.376

for.end.393:                                      ; preds = %for.cond.376
  %287 = load i32, i32* %src_is_gray, align 4
  %tobool394 = icmp ne i32 %287, 0
  br i1 %tobool394, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end.393
  %288 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 0), align 4
  %cmp395 = icmp eq i32 %288, 0
  br i1 %cmp395, label %if.then.397, label %if.else

if.then.397:                                      ; preds = %land.lhs.true
  %arrayidx398 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i64 0
  %289 = load i32, i32* %arrayidx398, align 4
  store i32 %289, i32* %b, align 4
  br label %if.end.425

if.else:                                          ; preds = %land.lhs.true, %for.end.393
  %arraydecay399 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i32 0
  %arraydecay400 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i32 0
  %add.ptr401 = getelementptr inbounds i32, i32* %arraydecay400, i64 1
  %arraydecay402 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i32 0
  %add.ptr403 = getelementptr inbounds i32, i32* %arraydecay402, i64 2
  call void @gimp_rgb_to_hsv_int(i32* %arraydecay399, i32* %add.ptr401, i32* %add.ptr403)
  %290 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0, i32 0), align 4
  %cmp404 = icmp eq i32 %290, 0
  br i1 %cmp404, label %cond.true.406, label %cond.false.408

cond.true.406:                                    ; preds = %if.else
  %arrayidx407 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i64 0
  %291 = load i32, i32* %arrayidx407, align 4
  br label %cond.end.409

cond.false.408:                                   ; preds = %if.else
  %292 = load i32, i32* %h, align 4
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.408, %cond.true.406
  %cond410 = phi i32 [ %291, %cond.true.406 ], [ %292, %cond.false.408 ]
  store i32 %cond410, i32* %r, align 4
  %293 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1, i32 0), align 4
  %cmp411 = icmp eq i32 %293, 0
  br i1 %cmp411, label %cond.true.413, label %cond.false.415

cond.true.413:                                    ; preds = %cond.end.409
  %arrayidx414 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i64 1
  %294 = load i32, i32* %arrayidx414, align 4
  br label %cond.end.416

cond.false.415:                                   ; preds = %cond.end.409
  %295 = load i32, i32* %s, align 4
  br label %cond.end.416

cond.end.416:                                     ; preds = %cond.false.415, %cond.true.413
  %cond417 = phi i32 [ %294, %cond.true.413 ], [ %295, %cond.false.415 ]
  store i32 %cond417, i32* %g, align 4
  %296 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2, i32 0), align 4
  %cmp418 = icmp eq i32 %296, 0
  br i1 %cmp418, label %cond.true.420, label %cond.false.422

cond.true.420:                                    ; preds = %cond.end.416
  %arrayidx421 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi374, i32 0, i64 2
  %297 = load i32, i32* %arrayidx421, align 4
  br label %cond.end.423

cond.false.422:                                   ; preds = %cond.end.416
  %298 = load i32, i32* %v, align 4
  br label %cond.end.423

cond.end.423:                                     ; preds = %cond.false.422, %cond.true.420
  %cond424 = phi i32 [ %297, %cond.true.420 ], [ %298, %cond.false.422 ]
  store i32 %cond424, i32* %b, align 4
  call void @gimp_hsv_to_rgb_int(i32* %r, i32* %g, i32* %b)
  br label %if.end.425

if.end.425:                                       ; preds = %cond.end.423, %if.then.397
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %lor.lhs.false.370
  %299 = load i32, i32* %offset_y, align 4
  %300 = load i32, i32* %dest_bpl, align 4
  %mul427 = mul nsw i32 %299, %300
  %301 = load i32, i32* %dx, align 4
  %302 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %mul428 = mul nsw i32 %301, %302
  %303 = load i32, i32* %offset_x, align 4
  %add429 = add nsw i32 %mul428, %303
  %304 = load i32, i32* %dest_bpp, align 4
  %mul430 = mul nsw i32 %add429, %304
  %add431 = add nsw i32 %mul427, %mul430
  store i32 %add431, i32* %dest_offset, align 4
  %305 = load i32, i32* %dest_is_gray, align 4
  %tobool432 = icmp ne i32 %305, 0
  br i1 %tobool432, label %if.then.433, label %if.else.449

if.then.433:                                      ; preds = %if.end.426
  %306 = load i32, i32* %b, align 4
  %conv434 = trunc i32 %306 to i8
  %307 = load i32, i32* %dest_offset, align 4
  %inc435 = add nsw i32 %307, 1
  store i32 %inc435, i32* %dest_offset, align 4
  %idxprom436 = sext i32 %307 to i64
  %308 = load i8*, i8** %dest_buffer, align 8
  %arrayidx437 = getelementptr inbounds i8, i8* %308, i64 %idxprom436
  store i8 %conv434, i8* %arrayidx437, align 1
  %309 = load i32, i32* %preview_p.addr, align 4
  %tobool438 = icmp ne i32 %309, 0
  br i1 %tobool438, label %if.then.439, label %if.end.448

if.then.439:                                      ; preds = %if.then.433
  %310 = load i32, i32* %b, align 4
  %conv440 = trunc i32 %310 to i8
  %311 = load i32, i32* %dest_offset, align 4
  %inc441 = add nsw i32 %311, 1
  store i32 %inc441, i32* %dest_offset, align 4
  %idxprom442 = sext i32 %311 to i64
  %312 = load i8*, i8** %dest_buffer, align 8
  %arrayidx443 = getelementptr inbounds i8, i8* %312, i64 %idxprom442
  store i8 %conv440, i8* %arrayidx443, align 1
  %313 = load i32, i32* %b, align 4
  %conv444 = trunc i32 %313 to i8
  %314 = load i32, i32* %dest_offset, align 4
  %inc445 = add nsw i32 %314, 1
  store i32 %inc445, i32* %dest_offset, align 4
  %idxprom446 = sext i32 %314 to i64
  %315 = load i8*, i8** %dest_buffer, align 8
  %arrayidx447 = getelementptr inbounds i8, i8* %315, i64 %idxprom446
  store i8 %conv444, i8* %arrayidx447, align 1
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.439, %if.then.433
  br label %if.end.462

if.else.449:                                      ; preds = %if.end.426
  %316 = load i32, i32* %r, align 4
  %conv450 = trunc i32 %316 to i8
  %317 = load i32, i32* %dest_offset, align 4
  %inc451 = add nsw i32 %317, 1
  store i32 %inc451, i32* %dest_offset, align 4
  %idxprom452 = sext i32 %317 to i64
  %318 = load i8*, i8** %dest_buffer, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %318, i64 %idxprom452
  store i8 %conv450, i8* %arrayidx453, align 1
  %319 = load i32, i32* %g, align 4
  %conv454 = trunc i32 %319 to i8
  %320 = load i32, i32* %dest_offset, align 4
  %inc455 = add nsw i32 %320, 1
  store i32 %inc455, i32* %dest_offset, align 4
  %idxprom456 = sext i32 %320 to i64
  %321 = load i8*, i8** %dest_buffer, align 8
  %arrayidx457 = getelementptr inbounds i8, i8* %321, i64 %idxprom456
  store i8 %conv454, i8* %arrayidx457, align 1
  %322 = load i32, i32* %b, align 4
  %conv458 = trunc i32 %322 to i8
  %323 = load i32, i32* %dest_offset, align 4
  %inc459 = add nsw i32 %323, 1
  store i32 %inc459, i32* %dest_offset, align 4
  %idxprom460 = sext i32 %323 to i64
  %324 = load i8*, i8** %dest_buffer, align 8
  %arrayidx461 = getelementptr inbounds i8, i8* %324, i64 %idxprom460
  store i8 %conv458, i8* %arrayidx461, align 1
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.449, %if.end.448
  %325 = load i32, i32* %dest_has_alpha, align 4
  %tobool463 = icmp ne i32 %325, 0
  br i1 %tobool463, label %if.then.464, label %if.end.467

if.then.464:                                      ; preds = %if.end.462
  %326 = load i32, i32* %dest_offset, align 4
  %idxprom465 = sext i32 %326 to i64
  %327 = load i8*, i8** %dest_buffer, align 8
  %arrayidx466 = getelementptr inbounds i8, i8* %327, i64 %idxprom465
  store i8 -1, i8* %arrayidx466, align 1
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.464, %if.end.462
  %328 = load i32, i32* %preview_p.addr, align 4
  %tobool468 = icmp ne i32 %328, 0
  br i1 %tobool468, label %if.end.481, label %land.lhs.true.469

land.lhs.true.469:                                ; preds = %if.end.467
  %329 = load i32, i32* %processed, align 4
  %inc470 = add nsw i32 %329, 1
  store i32 %inc470, i32* %processed, align 4
  %330 = load i32, i32* %total, align 4
  %div471 = sdiv i32 %330, 100
  %add472 = add nsw i32 %div471, 1
  %rem473 = srem i32 %inc470, %add472
  %cmp474 = icmp eq i32 %rem473, 0
  br i1 %cmp474, label %if.then.476, label %if.end.481

if.then.476:                                      ; preds = %land.lhs.true.469
  %331 = load i32, i32* %processed, align 4
  %conv477 = sitofp i32 %331 to double
  %332 = load i32, i32* %total, align 4
  %conv478 = sitofp i32 %332 to double
  %div479 = fdiv double %conv477, %conv478
  %call480 = call i32 @gimp_progress_update(double %div479)
  br label %if.end.481

if.end.481:                                       ; preds = %if.then.476, %land.lhs.true.469, %if.end.467
  br label %for.inc.482

for.inc.482:                                      ; preds = %if.end.481
  %333 = load i32, i32* %offset_x, align 4
  %inc483 = add nsw i32 %333, 1
  store i32 %inc483, i32* %offset_x, align 4
  br label %for.cond.355

for.end.484:                                      ; preds = %land.end.363
  br label %for.inc.485

for.inc.485:                                      ; preds = %for.end.484
  %334 = load i32, i32* %offset_y, align 4
  %inc486 = add nsw i32 %334, 1
  store i32 %inc486, i32* %offset_y, align 4
  br label %for.cond.348

for.end.487:                                      ; preds = %land.end
  br label %for.inc.488

for.inc.488:                                      ; preds = %for.end.487
  %335 = load i32, i32* %dx, align 4
  %inc489 = add nsw i32 %335, 1
  store i32 %inc489, i32* %dx, align 4
  br label %for.cond.320

for.end.490:                                      ; preds = %for.cond.320
  %336 = load i32, i32* %preview_p.addr, align 4
  %tobool491 = icmp ne i32 %336, 0
  br i1 %tobool491, label %if.then.492, label %if.else.495

if.then.492:                                      ; preds = %for.end.490
  %337 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %338 = bitcast %struct._GtkWidget* %337 to %struct._GTypeInstance*
  %call493 = call i64 @gimp_preview_area_get_type() #6
  %call494 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %338, i64 %call493)
  %339 = bitcast %struct._GTypeInstance* %call494 to %struct._GimpPreviewArea*
  %340 = load i32, i32* %dy, align 4
  %341 = load i32, i32* %width_by_pixel, align 4
  %342 = load i32, i32* %keep_height, align 4
  %343 = load i8*, i8** %dest_buffer, align 8
  %344 = load i32, i32* %dest_bpl, align 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %339, i32 0, i32 %340, i32 %341, i32 %342, i32 0, i8* %343, i32 %344)
  br label %if.end.497

if.else.495:                                      ; preds = %for.end.490
  %345 = load i8*, i8** %dest_buffer, align 8
  %346 = load i32, i32* %x1, align 4
  %347 = load i32, i32* %y1, align 4
  %348 = load i32, i32* %dy, align 4
  %add496 = add nsw i32 %347, %348
  %349 = load i32, i32* %width_by_pixel, align 4
  %350 = load i32, i32* %keep_height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dest_rgn, i8* %345, i32 %346, i32 %add496, i32 %349, i32 %350)
  br label %if.end.497

if.end.497:                                       ; preds = %if.else.495, %if.then.492
  br label %for.inc.498

for.inc.498:                                      ; preds = %if.end.497
  %351 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %352 = load i32, i32* %dy, align 4
  %add499 = add nsw i32 %352, %351
  store i32 %add499, i32* %dy, align 4
  br label %for.cond.300

for.end.500:                                      ; preds = %for.cond.300
  %353 = load i32, i32* %preview_p.addr, align 4
  %tobool501 = icmp ne i32 %353, 0
  br i1 %tobool501, label %if.then.502, label %if.else.503

if.then.502:                                      ; preds = %for.end.500
  %354 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %354)
  br label %if.end.510

if.else.503:                                      ; preds = %for.end.500
  %call504 = call i32 @gimp_progress_update(double 1.000000e+00)
  %355 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %355)
  %356 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %356, i32 0, i32 0
  %357 = load i32, i32* %drawable_id, align 4
  %call505 = call i32 @gimp_drawable_merge_shadow(i32 %357, i32 1)
  %358 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id506 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %358, i32 0, i32 0
  %359 = load i32, i32* %drawable_id506, align 4
  %360 = load i32, i32* %x1, align 4
  %361 = load i32, i32* %y1, align 4
  %362 = load i32, i32* %x2, align 4
  %363 = load i32, i32* %x1, align 4
  %sub507 = sub nsw i32 %362, %363
  %364 = load i32, i32* %y2, align 4
  %365 = load i32, i32* %y1, align 4
  %sub508 = sub nsw i32 %364, %365
  %call509 = call i32 @gimp_drawable_update(i32 %359, i32 %360, i32 %361, i32 %sub507, i32 %sub508)
  %366 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %366)
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.503, %if.then.502
  %367 = load %struct._GRand*, %struct._GRand** @gr, align 8
  call void @g_rand_free(%struct._GRand* %367)
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.510, %if.then.22
  %368 = load i32, i32* %retval
  ret i32 %368
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @g_free(i8*) #1

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

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare %struct._GtkWidget* @gtk_button_new_with_label(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @CML_preview_update_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %seed_widget = alloca %struct._WidgetEntry, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = bitcast %struct._WidgetEntry* %seed_widget to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 3) to i8*), i64 24, i32 8, i1 false)
  call void @preview_update()
  store i32 1, i32* @CML_preview_defer, align 4
  %widget1 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %seed_widget, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget1, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %seed_widget, i32 0, i32 2
  %2 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater, align 8
  %tobool2 = icmp ne void (%struct._WidgetEntry*)* %2, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %updater3 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %seed_widget, i32 0, i32 2
  %3 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater3, align 8
  call void %3(%struct._WidgetEntry* %seed_widget)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* @CML_preview_defer, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_set_or_randomize_seed_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 1, i32* @CML_preview_defer, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 7, label %sw.bb.1
    i32 8, label %sw.bb.2
    i32 9, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i32 8, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 9, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 6, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 7, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 3, i32 0), align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %2 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 3, i32 2), align 8
  %tobool4 = icmp ne void (%struct._WidgetEntry*)* %2, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 3, i32 2), align 8
  call void %3(%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 3))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.epilog
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 0, i32 0), align 8
  %tobool5 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %if.end
  %5 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 0, i32 2), align 8
  %tobool7 = icmp ne void (%struct._WidgetEntry*)* %5, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  %6 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i64 0, i32 2), align 8
  call void %6(%struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true.6, %if.end
  call void @CML_initial_value_sensitives_update()
  store i32 0, i32* @CML_preview_defer, align 4
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @CML_load_from_file_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  %2 = bitcast %struct._GtkWidget* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @CML_load_from_file_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call i64 @strlen(i8* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 7, i32 0)) #7
  %cmp = icmp ugt i64 %call11, 0
  br i1 %cmp, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_file_chooser_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkFileChooser*
  %call15 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %16, i8* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 7, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_load_from_file_callback.dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_save_to_file_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  %2 = bitcast %struct._GtkWidget* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call5)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %6, i32 -5, i32 -6, i32 -1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %9, i32 -5)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_file_chooser_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @CML_save_to_file_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call13 = call i64 @strlen(i8* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 7, i32 0)) #7
  %tobool14 = icmp ne i64 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_file_chooser_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkFileChooser*
  %call18 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %19, i8* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 7, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @CML_save_to_file_callback.dialog, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call20)
  %22 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %22)
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_tab_pos(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @CML_dialog_channel_panel_new(%struct.CML_PARAM* %param, i32 %channel_id) #0 {
entry:
  %param.addr = alloca %struct.CML_PARAM*, align 8
  %channel_id.addr = alloca i32, align 4
  %table = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %chank = alloca i8**, align 8
  %index = alloca i32, align 4
  store %struct.CML_PARAM* %param, %struct.CML_PARAM** %param.addr, align 8
  store i32 %channel_id, i32* %channel_id.addr, align 4
  store i32 0, i32* %index, align 4
  %call = call %struct._GtkWidget* @gtk_table_new(i32 13, i32 3, i32 0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %table, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_table_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %2, i32 6)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_table_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %5, i32 6)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_container_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call7 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 13, i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @function_names, i32 0, i32 0))
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %combo, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_int_combo_box_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpIntComboBox*
  %13 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %function = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %13, i32 0, i32 0
  %14 = load i32, i32* %function, align 4
  %call10 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %12, i32 %14)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  %17 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %function11 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %17, i32 0, i32 0
  %18 = bitcast i32* %function11 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_explorer_menu_update to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  %19 = load i32, i32* %index, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32, i32* %channel_id.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom13
  %arrayidx14 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx, i32 0, i64 %idxprom
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %22 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %function15 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %22, i32 0, i32 0
  %23 = bitcast i32* %function15 to i8*
  call void @CML_explorer_menu_entry_init(%struct._WidgetEntry* %arrayidx14, %struct._GtkWidget* %21, i8* %23)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_table_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTable*
  %27 = load i32, i32* %index, align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0)) #4
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call19 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %26, i32 0, i32 %27, i8* %call18, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %28, i32 2, i32 0)
  %29 = load i32, i32* %index, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %index, align 4
  %call20 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 15, i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @composition_names, i32 0, i32 0))
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %combo, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_int_combo_box_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call21)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpIntComboBox*
  %33 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %composition = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %33, i32 0, i32 1
  %34 = load i32, i32* %composition, align 4
  %call23 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %32, i32 %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %composition24 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %37, i32 0, i32 1
  %38 = bitcast i32* %composition24 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_explorer_menu_update to void ()*), i8* %38, void (i8*, %struct._GClosure*)* null, i32 0)
  %39 = load i32, i32* %index, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load i32, i32* %channel_id.addr, align 4
  %idxprom27 = sext i32 %40 to i64
  %arrayidx28 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx28, i32 0, i64 %idxprom26
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %42 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %composition30 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %42, i32 0, i32 1
  %43 = bitcast i32* %composition30 to i8*
  call void @CML_explorer_menu_entry_init(%struct._WidgetEntry* %arrayidx29, %struct._GtkWidget* %41, i8* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %47 = load i32, i32* %index, align 4
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0)) #4
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call34 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %46, i32 0, i32 %47, i8* %call33, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %48, i32 2, i32 0)
  %49 = load i32, i32* %index, align 4
  %inc35 = add nsw i32 %49, 1
  store i32 %inc35, i32* %index, align 4
  %call36 = call %struct._GtkWidget* @gimp_int_combo_box_new_array(i32 10, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @arrange_names, i32 0, i32 0))
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %combo, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_int_combo_box_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call37)
  %52 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpIntComboBox*
  %53 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %arrange = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %53, i32 0, i32 2
  %54 = load i32, i32* %arrange, align 4
  %call39 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %52, i32 %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %arrange40 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %57, i32 0, i32 2
  %58 = bitcast i32* %arrange40 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_explorer_menu_update to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load i32, i32* %index, align 4
  %idxprom42 = sext i32 %59 to i64
  %60 = load i32, i32* %channel_id.addr, align 4
  %idxprom43 = sext i32 %60 to i64
  %arrayidx44 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx44, i32 0, i64 %idxprom42
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %62 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %arrange46 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %62, i32 0, i32 2
  %63 = bitcast i32* %arrange46 to i8*
  call void @CML_explorer_menu_entry_init(%struct._WidgetEntry* %arrayidx45, %struct._GtkWidget* %61, i8* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call47)
  %66 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %67 = load i32, i32* %index, align 4
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.125, i32 0, i32 0)) #4
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %call50 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %66, i32 0, i32 %67, i8* %call49, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %68, i32 2, i32 0)
  %69 = load i32, i32* %index, align 4
  %inc51 = add nsw i32 %69, 1
  store i32 %inc51, i32* %index, align 4
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i32 0, i32 0)) #4
  %call53 = call %struct._GtkWidget* @gtk_check_button_new_with_label(i8* %call52)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %toggle, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_toggle_button_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call54)
  %72 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkToggleButton*
  %73 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %cyclic_range = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %73, i32 0, i32 3
  %74 = load i32, i32* %cyclic_range, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %72, i32 %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_table_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call56)
  %77 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkTable*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %79 = load i32, i32* %index, align 4
  %80 = load i32, i32* %index, align 4
  %add = add nsw i32 %80, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %77, %struct._GtkWidget* %78, i32 0, i32 3, i32 %79, i32 %add)
  %81 = load i32, i32* %index, align 4
  %idxprom58 = sext i32 %81 to i64
  %82 = load i32, i32* %channel_id.addr, align 4
  %idxprom59 = sext i32 %82 to i64
  %arrayidx60 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx60, i32 0, i64 %idxprom58
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %84 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %cyclic_range62 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %84, i32 0, i32 3
  %85 = bitcast i32* %cyclic_range62 to i8*
  call void @CML_explorer_toggle_entry_init(%struct._WidgetEntry* %arrayidx61, %struct._GtkWidget* %83, i8* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %86)
  %87 = load i32, i32* %index, align 4
  %inc63 = add nsw i32 %87, 1
  store i32 %inc63, i32* %index, align 4
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call64)
  %90 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %91 = load i32, i32* %index, align 4
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0)) #4
  %92 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %92, i32 0, i32 4
  %93 = load double, double* %mod_rate, align 8
  %call67 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %90, i32 0, i32 %91, i8* %call66, i32 130, i32 5, double %93, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call67, %struct._GtkObject** %adj, align 8
  %94 = load i32, i32* %index, align 4
  %idxprom68 = sext i32 %94 to i64
  %95 = load i32, i32* %channel_id.addr, align 4
  %idxprom69 = sext i32 %95 to i64
  %arrayidx70 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx70, i32 0, i64 %idxprom68
  %96 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %97 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate72 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %97, i32 0, i32 4
  %98 = bitcast double* %mod_rate72 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx71, %struct._GtkObject* %96, i8* %98)
  %99 = load i32, i32* %index, align 4
  %inc73 = add nsw i32 %99, 1
  store i32 %inc73, i32* %index, align 4
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_table_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call74)
  %102 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkTable*
  %103 = load i32, i32* %index, align 4
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0)) #4
  %104 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %104, i32 0, i32 5
  %105 = load double, double* %env_sensitivity, align 8
  %call77 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %102, i32 0, i32 %103, i8* %call76, i32 130, i32 5, double %105, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call77, %struct._GtkObject** %adj, align 8
  %106 = load i32, i32* %index, align 4
  %idxprom78 = sext i32 %106 to i64
  %107 = load i32, i32* %channel_id.addr, align 4
  %idxprom79 = sext i32 %107 to i64
  %arrayidx80 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx80, i32 0, i64 %idxprom78
  %108 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %109 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity82 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %109, i32 0, i32 5
  %110 = bitcast double* %env_sensitivity82 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx81, %struct._GtkObject* %108, i8* %110)
  %111 = load i32, i32* %index, align 4
  %inc83 = add nsw i32 %111, 1
  store i32 %inc83, i32* %index, align 4
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call84)
  %114 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  %115 = load i32, i32* %index, align 4
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0)) #4
  %116 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %116, i32 0, i32 6
  %117 = load i32, i32* %diffusion_dist, align 4
  %conv = sitofp i32 %117 to double
  %call87 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %114, i32 0, i32 %115, i8* %call86, i32 130, i32 5, double %conv, double 2.000000e+00, double 1.000000e+01, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call87, %struct._GtkObject** %adj, align 8
  %118 = load i32, i32* %index, align 4
  %idxprom88 = sext i32 %118 to i64
  %119 = load i32, i32* %channel_id.addr, align 4
  %idxprom89 = sext i32 %119 to i64
  %arrayidx90 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx90, i32 0, i64 %idxprom88
  %120 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %121 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist92 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %121, i32 0, i32 6
  %122 = bitcast i32* %diffusion_dist92 to i8*
  call void @CML_explorer_int_entry_init(%struct._WidgetEntry* %arrayidx91, %struct._GtkObject* %120, i8* %122)
  %123 = load i32, i32* %index, align 4
  %inc93 = add nsw i32 %123, 1
  store i32 %inc93, i32* %index, align 4
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_table_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call94)
  %126 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkTable*
  %127 = load i32, i32* %index, align 4
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i32 0, i32 0)) #4
  %128 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_num = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %128, i32 0, i32 8
  %129 = load i32, i32* %range_num, align 4
  %conv97 = sitofp i32 %129 to double
  %call98 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %126, i32 0, i32 %127, i8* %call96, i32 130, i32 5, double %conv97, double 1.000000e+00, double 1.000000e+01, double 1.000000e+00, double 2.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call98, %struct._GtkObject** %adj, align 8
  %130 = load i32, i32* %index, align 4
  %idxprom99 = sext i32 %130 to i64
  %131 = load i32, i32* %channel_id.addr, align 4
  %idxprom100 = sext i32 %131 to i64
  %arrayidx101 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx101, i32 0, i64 %idxprom99
  %132 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %133 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_num103 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %133, i32 0, i32 8
  %134 = bitcast i32* %range_num103 to i8*
  call void @CML_explorer_int_entry_init(%struct._WidgetEntry* %arrayidx102, %struct._GtkObject* %132, i8* %134)
  %135 = load i32, i32* %index, align 4
  %inc104 = add nsw i32 %135, 1
  store i32 %inc104, i32* %index, align 4
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_table_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call105)
  %138 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkTable*
  %139 = load i32, i32* %index, align 4
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0)) #4
  %140 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %power = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %140, i32 0, i32 9
  %141 = load double, double* %power, align 8
  %call108 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %138, i32 0, i32 %139, i8* %call107, i32 130, i32 5, double %141, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call108, %struct._GtkObject** %adj, align 8
  %142 = load i32, i32* %index, align 4
  %idxprom109 = sext i32 %142 to i64
  %143 = load i32, i32* %channel_id.addr, align 4
  %idxprom110 = sext i32 %143 to i64
  %arrayidx111 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx111, i32 0, i64 %idxprom109
  %144 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %145 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %power113 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %145, i32 0, i32 9
  %146 = bitcast double* %power113 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx112, %struct._GtkObject* %144, i8* %146)
  %147 = load i32, i32* %index, align 4
  %inc114 = add nsw i32 %147, 1
  store i32 %inc114, i32* %index, align 4
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_table_get_type() #6
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call115)
  %150 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkTable*
  %151 = load i32, i32* %index, align 4
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0)) #4
  %152 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %152, i32 0, i32 10
  %153 = load double, double* %parameter_k, align 8
  %call118 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %150, i32 0, i32 %151, i8* %call117, i32 130, i32 5, double %153, double 0.000000e+00, double 1.000000e+01, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call118, %struct._GtkObject** %adj, align 8
  %154 = load i32, i32* %index, align 4
  %idxprom119 = sext i32 %154 to i64
  %155 = load i32, i32* %channel_id.addr, align 4
  %idxprom120 = sext i32 %155 to i64
  %arrayidx121 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx121, i32 0, i64 %idxprom119
  %156 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %157 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k123 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %157, i32 0, i32 10
  %158 = bitcast double* %parameter_k123 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx122, %struct._GtkObject* %156, i8* %158)
  %159 = load i32, i32* %index, align 4
  %inc124 = add nsw i32 %159, 1
  store i32 %inc124, i32* %index, align 4
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %161 = bitcast %struct._GtkWidget* %160 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_table_get_type() #6
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call125)
  %162 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkTable*
  %163 = load i32, i32* %index, align 4
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0)) #4
  %164 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_l = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %164, i32 0, i32 11
  %165 = load double, double* %range_l, align 8
  %call128 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %162, i32 0, i32 %163, i8* %call127, i32 130, i32 5, double %165, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call128, %struct._GtkObject** %adj, align 8
  %166 = load i32, i32* %index, align 4
  %idxprom129 = sext i32 %166 to i64
  %167 = load i32, i32* %channel_id.addr, align 4
  %idxprom130 = sext i32 %167 to i64
  %arrayidx131 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx131, i32 0, i64 %idxprom129
  %168 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %169 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_l133 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %169, i32 0, i32 11
  %170 = bitcast double* %range_l133 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx132, %struct._GtkObject* %168, i8* %170)
  %171 = load i32, i32* %index, align 4
  %inc134 = add nsw i32 %171, 1
  store i32 %inc134, i32* %index, align 4
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_table_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call135)
  %174 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkTable*
  %175 = load i32, i32* %index, align 4
  %call137 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.134, i32 0, i32 0)) #4
  %176 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_h = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %176, i32 0, i32 12
  %177 = load double, double* %range_h, align 8
  %call138 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %174, i32 0, i32 %175, i8* %call137, i32 130, i32 5, double %177, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call138, %struct._GtkObject** %adj, align 8
  %178 = load i32, i32* %index, align 4
  %idxprom139 = sext i32 %178 to i64
  %179 = load i32, i32* %channel_id.addr, align 4
  %idxprom140 = sext i32 %179 to i64
  %arrayidx141 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx141, i32 0, i64 %idxprom139
  %180 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %181 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_h143 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %181, i32 0, i32 12
  %182 = bitcast double* %range_h143 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx142, %struct._GtkObject* %180, i8* %182)
  %183 = load i32, i32* %index, align 4
  %inc144 = add nsw i32 %183, 1
  store i32 %inc144, i32* %index, align 4
  %call145 = call noalias i8* @g_malloc_n(i64 2, i64 8)
  %184 = bitcast i8* %call145 to i8**
  store i8** %184, i8*** %chank, align 8
  %185 = load i32, i32* %channel_id.addr, align 4
  %conv146 = sext i32 %185 to i64
  %186 = inttoptr i64 %conv146 to i8*
  %187 = load i8**, i8*** %chank, align 8
  %arrayidx147 = getelementptr inbounds i8*, i8** %187, i64 0
  store i8* %186, i8** %arrayidx147, align 8
  %188 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %189 = bitcast %struct.CML_PARAM* %188 to i8*
  %190 = load i8**, i8*** %chank, align 8
  %arrayidx148 = getelementptr inbounds i8*, i8** %190, i64 1
  store i8* %189, i8** %arrayidx148, align 8
  %call149 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.135, i32 0, i32 0)) #4
  %call150 = call %struct._GtkWidget* @gtk_button_new_with_label(i8* %call149)
  store %struct._GtkWidget* %call150, %struct._GtkWidget** %button, align 8
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %192 = bitcast %struct._GtkWidget* %191 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #6
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %192, i64 %call151)
  %193 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %195 = load i32, i32* %index, align 4
  %196 = load i32, i32* %index, align 4
  %add153 = add nsw i32 %196, 1
  call void @gtk_table_attach_defaults(%struct._GtkTable* %193, %struct._GtkWidget* %194, i32 0, i32 3, i32 %195, i32 %add153)
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %197)
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %199 = bitcast %struct._GtkWidget* %198 to i8*
  %200 = load i8**, i8*** %chank, align 8
  %201 = bitcast i8** %200 to i8*
  %call154 = call i64 @g_signal_connect_data(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8**)* @function_graph_new to void ()*), i8* %201, void (i8*, %struct._GClosure*)* null, i32 0)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  ret %struct._GtkWidget* %202
}

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @CML_dialog_advanced_panel_new() #0 {
entry:
  %vbox = alloca %struct._GtkWidget*, align 8
  %subframe = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %index = alloca i32, align 4
  %widget_offset = alloca i32, align 4
  %channel_id = alloca i32, align 4
  %param = alloca %struct.CML_PARAM*, align 8
  store i32 0, i32* %index, align 4
  store i32 12, i32* %widget_offset, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_container_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %2, i32 12)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %3)
  store i32 0, i32* %channel_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %channel_id, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %channel_id, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0), i64 %idx.ext
  store %struct.CML_PARAM* %add.ptr, %struct.CML_PARAM** %param, align 8
  %6 = load i32, i32* %channel_id, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @channel_names, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call3 = call i8* @gettext(i8* %7) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %subframe, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %subframe, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %10, %struct._GtkWidget* %11, i32 0, i32 0, i32 0)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %subframe, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %12)
  %call7 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %table, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_table_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %15, i32 6)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_table_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %18, i32 6)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %subframe, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_container_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkContainer*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %21, %struct._GtkWidget* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  store i32 0, i32* %index, align 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_table_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTable*
  %27 = load i32, i32* %index, align 4
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0)) #4
  %28 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %ch_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %28, i32 0, i32 7
  %29 = load double, double* %ch_sensitivity, align 8
  %call17 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %26, i32 0, i32 %27, i8* %call16, i32 130, i32 0, double %29, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call17, %struct._GtkObject** %adj, align 8
  %30 = load i32, i32* %index, align 4
  %31 = load i32, i32* %widget_offset, align 4
  %add = add nsw i32 %30, %31
  %idxprom18 = sext i32 %add to i64
  %32 = load i32, i32* %channel_id, align 4
  %idxprom19 = sext i32 %32 to i64
  %arrayidx20 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx20, i32 0, i64 %idxprom18
  %33 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %34 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %ch_sensitivity22 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %34, i32 0, i32 7
  %35 = bitcast double* %ch_sensitivity22 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx21, %struct._GtkObject* %33, i8* %35)
  %36 = load i32, i32* %index, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %index, align 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_table_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call23)
  %39 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkTable*
  %40 = load i32, i32* %index, align 4
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0)) #4
  %41 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %mutation_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %41, i32 0, i32 13
  %42 = load double, double* %mutation_rate, align 8
  %call26 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 %40, i8* %call25, i32 130, i32 0, double %42, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call26, %struct._GtkObject** %adj, align 8
  %43 = load i32, i32* %index, align 4
  %44 = load i32, i32* %widget_offset, align 4
  %add27 = add nsw i32 %43, %44
  %idxprom28 = sext i32 %add27 to i64
  %45 = load i32, i32* %channel_id, align 4
  %idxprom29 = sext i32 %45 to i64
  %arrayidx30 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx30, i32 0, i64 %idxprom28
  %46 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %47 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %mutation_rate32 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %47, i32 0, i32 13
  %48 = bitcast double* %mutation_rate32 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx31, %struct._GtkObject* %46, i8* %48)
  %49 = load i32, i32* %index, align 4
  %inc33 = add nsw i32 %49, 1
  store i32 %inc33, i32* %index, align 4
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_table_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call34)
  %52 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkTable*
  %53 = load i32, i32* %index, align 4
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0)) #4
  %54 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %mutation_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %54, i32 0, i32 14
  %55 = load double, double* %mutation_dist, align 8
  %call37 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %52, i32 0, i32 %53, i8* %call36, i32 130, i32 0, double %55, double 0.000000e+00, double 1.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call37, %struct._GtkObject** %adj, align 8
  %56 = load i32, i32* %index, align 4
  %57 = load i32, i32* %widget_offset, align 4
  %add38 = add nsw i32 %56, %57
  %idxprom39 = sext i32 %add38 to i64
  %58 = load i32, i32* %channel_id, align 4
  %idxprom40 = sext i32 %58 to i64
  %arrayidx41 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx41, i32 0, i64 %idxprom39
  %59 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %60 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %mutation_dist43 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %60, i32 0, i32 14
  %61 = bitcast double* %mutation_dist43 to i8*
  call void @CML_explorer_double_entry_init(%struct._WidgetEntry* %arrayidx42, %struct._GtkObject* %59, i8* %61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %channel_id, align 4
  %inc44 = add nsw i32 %62, 1
  store i32 %inc44, i32* %channel_id, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %63
}

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_int_combo_box_new_array(i32, i8**) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @CML_initial_value_menu_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %4)
  call void @CML_initial_value_sensitives_update()
  call void @preview_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_menu_entry_init(%struct._WidgetEntry* %widget_entry, %struct._GtkWidget* %widget, i8* %value_ptr) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %value_ptr.addr = alloca i8*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %value_ptr, i8** %value_ptr.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget1 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %1, i32 0, i32 0
  store %struct._GtkWidget* %0, %struct._GtkWidget** %widget1, align 8
  %2 = load i8*, i8** %value_ptr.addr, align 8
  %3 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %3, i32 0, i32 1
  store i8* %2, i8** %value, align 8
  %4 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %4, i32 0, i32 2
  store void (%struct._WidgetEntry*)* @CML_explorer_menu_entry_change_value, void (%struct._WidgetEntry*)** %updater, align 8
  ret void
}

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_int_entry_init(%struct._WidgetEntry* %widget_entry, %struct._GtkObject* %adjustment, i8* %value_ptr) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  %adjustment.addr = alloca %struct._GtkObject*, align 8
  %value_ptr.addr = alloca i8*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  store %struct._GtkObject* %adjustment, %struct._GtkObject** %adjustment.addr, align 8
  store i8* %value_ptr, i8** %value_ptr.addr, align 8
  %0 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkObject* %0 to i8*
  %2 = load i8*, i8** %value_ptr.addr, align 8
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @CML_explorer_int_adjustment_update to void ()*), i8* %2, void (i8*, %struct._GClosure*)* null, i32 0)
  %3 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %4 = bitcast %struct._GtkObject* %3 to %struct._GtkWidget*
  %5 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %5, i32 0, i32 0
  store %struct._GtkWidget* %4, %struct._GtkWidget** %widget, align 8
  %6 = load i8*, i8** %value_ptr.addr, align 8
  %7 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %7, i32 0, i32 1
  store i8* %6, i8** %value, align 8
  %8 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %8, i32 0, i32 2
  store void (%struct._WidgetEntry*)* @CML_explorer_int_entry_change_value, void (%struct._WidgetEntry*)** %updater, align 8
  ret void
}

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @CML_copy_parameters_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  %widgets = alloca %struct._WidgetEntry*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @copy_source, align 4
  %1 = load i32, i32* @copy_destination, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.157, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @copy_destination, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.CML_PARAM*], [3 x %struct.CML_PARAM*]* @channel_params, i32 0, i64 %idxprom
  %3 = load %struct.CML_PARAM*, %struct.CML_PARAM** %arrayidx, align 8
  %4 = load i32, i32* @copy_source, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [3 x %struct.CML_PARAM*], [3 x %struct.CML_PARAM*]* @channel_params, i32 0, i64 %idxprom1
  %5 = load %struct.CML_PARAM*, %struct.CML_PARAM** %arrayidx2, align 8
  %6 = bitcast %struct.CML_PARAM* %3 to i8*
  %7 = bitcast %struct.CML_PARAM* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 104, i32 8, i1 false)
  store i32 1, i32* @CML_preview_defer, align 4
  %8 = load i32, i32* @copy_destination, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom3
  %arraydecay = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx4, i32 0, i32 0
  store %struct._WidgetEntry* %arraydecay, %struct._WidgetEntry** %widgets, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %index, align 4
  %cmp5 = icmp slt i32 %9, 15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %index, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx7 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %11, i64 %idxprom6
  %widget8 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx7, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget8, align 8
  %tobool = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx10 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %14, i64 %idxprom9
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx10, i32 0, i32 2
  %15 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater, align 8
  %tobool11 = icmp ne void (%struct._WidgetEntry*)* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %index, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx14 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %17, i64 %idxprom13
  %updater15 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx14, i32 0, i32 2
  %18 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater15, align 8
  %19 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %20 = load i32, i32* %index, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %19, i64 %idx.ext
  call void %18(%struct._WidgetEntry* %add.ptr)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %21 = load i32, i32* %index, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @CML_preview_defer, align 4
  call void @preview_update()
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_initial_value_sensitives_update() #0 {
entry:
  %i = alloca i32, align 4
  %flag1 = alloca i32, align 4
  %flag2 = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %cmp = icmp sle i32 6, %0
  %conv = zext i1 %cmp to i32
  %1 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %cmp1 = icmp sle i32 %1, 9
  %conv2 = zext i1 %cmp1 to i32
  %and = and i32 %conv, %conv2
  store i32 %and, i32* %flag1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %cmp3 = icmp sle i32 6, %2
  %conv4 = zext i1 %cmp3 to i32
  %3 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %cmp5 = icmp sle i32 %3, 7
  %conv6 = zext i1 %cmp5 to i32
  %and7 = and i32 %conv4, %conv6
  store i32 %and7, i32* %flag2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %conv8 = sext i32 %4 to i64
  %cmp9 = icmp ult i64 %conv8, 5
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 %idxprom
  %widget = getelementptr inbounds %struct.CML_sensitive_widget_table, %struct.CML_sensitive_widget_table* %arrayidx, i32 0, i32 0
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 %idxprom11
  %widget13 = getelementptr inbounds %struct.CML_sensitive_widget_table, %struct.CML_sensitive_widget_table* %arrayidx12, i32 0, i32 0
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget13, align 8
  %9 = load i32, i32* %flag1, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x %struct.CML_sensitive_widget_table], [5 x %struct.CML_sensitive_widget_table]* @random_sensitives, i32 0, i64 %idxprom14
  %logic = getelementptr inbounds %struct.CML_sensitive_widget_table, %struct.CML_sensitive_widget_table* %arrayidx15, i32 0, i32 1
  %11 = load i32, i32* %logic, align 4
  %12 = load i32, i32* %flag2, align 4
  %cmp16 = icmp eq i32 %11, %12
  %conv17 = zext i1 %cmp16 to i32
  %and18 = and i32 %9, %conv17
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %8, i32 %and18)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @cairo_format_stride_for_width(i32, i32) #1

declare noalias i8* @g_malloc0(i64) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @preview_update() #0 {
entry:
  %0 = load i32, i32* @CML_preview_defer, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @CML_main_function(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @CML_load_from_file_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %channel_id = alloca i32, align 4
  %flag = alloca i32, align 4
  %widgets = alloca %struct._WidgetEntry*, align 8
  %index = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.45

if.then:                                          ; preds = %entry
  store i32 1, i32* %flag, align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %4, i32 0)
  %5 = load i8*, i8** %filename, align 8
  %call3 = call i32 @CML_load_parameter_file(i8* %5, i32 1)
  store i32 %call3, i32* %flag, align 4
  %6 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %6)
  %7 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.4, label %if.end.44

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* @CML_preview_defer, align 4
  store i32 0, i32* %channel_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.then.4
  %8 = load i32, i32* %channel_id, align 4
  %cmp5 = icmp slt i32 %8, 3
  br i1 %cmp5, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %channel_id, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [15 x %struct._WidgetEntry], [15 x %struct._WidgetEntry]* %arrayidx, i32 0, i32 0
  store %struct._WidgetEntry* %arraydecay, %struct._WidgetEntry** %widgets, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %index, align 4
  %cmp7 = icmp slt i32 %10, 15
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx10 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %12, i64 %idxprom9
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx10, i32 0, i32 0
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.8
  %14 = load i32, i32* %index, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx13 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %15, i64 %idxprom12
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx13, i32 0, i32 2
  %16 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater, align 8
  %tobool14 = icmp ne void (%struct._WidgetEntry*)* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %index, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx17 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %18, i64 %idxprom16
  %updater18 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx17, i32 0, i32 2
  %19 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater18, align 8
  %20 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %21 = load i32, i32* %index, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %20, i64 %idx.ext
  call void %19(%struct._WidgetEntry* %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %index, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %23 = load i32, i32* %channel_id, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %channel_id, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  store %struct._WidgetEntry* getelementptr inbounds ([4 x [15 x %struct._WidgetEntry]], [4 x [15 x %struct._WidgetEntry]]* @widget_pointers, i32 0, i64 3, i32 0), %struct._WidgetEntry** %widgets, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.41, %for.end.21
  %24 = load i32, i32* %index, align 4
  %cmp23 = icmp slt i32 %24, 4
  br i1 %cmp23, label %for.body.24, label %for.end.43

for.body.24:                                      ; preds = %for.cond.22
  %25 = load i32, i32* %index, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx26 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %26, i64 %idxprom25
  %widget27 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx26, i32 0, i32 0
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget27, align 8
  %tobool28 = icmp ne %struct._GtkWidget* %27, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.40

land.lhs.true.29:                                 ; preds = %for.body.24
  %28 = load i32, i32* %index, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx31 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %29, i64 %idxprom30
  %updater32 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx31, i32 0, i32 2
  %30 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater32, align 8
  %tobool33 = icmp ne void (%struct._WidgetEntry*)* %30, null
  br i1 %tobool33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %land.lhs.true.29
  %31 = load i32, i32* %index, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %arrayidx36 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %32, i64 %idxprom35
  %updater37 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %arrayidx36, i32 0, i32 2
  %33 = load void (%struct._WidgetEntry*)*, void (%struct._WidgetEntry*)** %updater37, align 8
  %34 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widgets, align 8
  %35 = load i32, i32* %index, align 4
  %idx.ext38 = sext i32 %35 to i64
  %add.ptr39 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %34, i64 %idx.ext38
  call void %33(%struct._WidgetEntry* %add.ptr39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %land.lhs.true.29, %for.body.24
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %36 = load i32, i32* %index, align 4
  %inc42 = add nsw i32 %36, 1
  store i32 %inc42, i32* %index, align 4
  br label %for.cond.22

for.end.43:                                       ; preds = %for.cond.22
  store i32 0, i32* @CML_preview_defer, align 4
  call void @preview_update()
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.43, %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %entry
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_widget_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call46)
  %39 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %39)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @CML_save_to_file_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %channel_id = alloca i32, align 4
  %buf = alloca [39 x i8], align 16
  %param = alloca %struct.CML_PARAM, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %1)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %4)
  store i8* %call2, i8** %filename, align 8
  %5 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %filename, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %file, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0)) #4
  %8 = load i8*, i8** %filename, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call10 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %9) #6
  call void (i8*, ...) @g_message(i8* %call8, i8* %call9, i8* %call11)
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  br label %return

if.end.12:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i32 0, i32 0), double 1.000000e+00)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0))
  store i32 0, i32* %channel_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %14 = load i32, i32* %channel_id, align 4
  %cmp16 = icmp slt i32 %14, 3
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %channel_id, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.CML_PARAM*], [3 x %struct.CML_PARAM*]* @channel_params, i32 0, i64 %idxprom
  %16 = load %struct.CML_PARAM*, %struct.CML_PARAM** %arrayidx, align 8
  %17 = bitcast %struct.CML_PARAM* %param to i8*
  %18 = bitcast %struct.CML_PARAM* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 104, i32 8, i1 false)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %20 = load i32, i32* %channel_id, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [3 x i8*], [3 x i8*]* @channel_names, i32 0, i64 %idxprom17
  %21 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %function = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 0
  %23 = load i32, i32* %function, align 4
  %function20 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 0
  %24 = load i32, i32* %function20, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [13 x i8*], [13 x i8*]* @function_names, i32 0, i64 %idxprom21
  %25 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i32 %23, i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %composition = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 1
  %27 = load i32, i32* %composition, align 4
  %composition24 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 1
  %28 = load i32, i32* %composition24, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [15 x i8*], [15 x i8*]* @composition_names, i32 0, i64 %idxprom25
  %29 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0), i32 %27, i8* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arrange = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 2
  %31 = load i32, i32* %arrange, align 4
  %arrange28 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 2
  %32 = load i32, i32* %arrange28, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds [10 x i8*], [10 x i8*]* @arrange_names, i32 0, i64 %idxprom29
  %33 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0), i32 %31, i8* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cyclic_range = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 3
  %35 = load i32, i32* %cyclic_range, align 4
  %cyclic_range32 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 3
  %36 = load i32, i32* %cyclic_range32, align 4
  %tobool33 = icmp ne i32 %36, 0
  %cond = select i1 %tobool33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0)
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0), i32 %35, i8* %cond)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %mod_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 4
  %38 = load double, double* %mod_rate, align 8
  %call35 = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 39, double %38)
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.68, i32 0, i32 0), i8* %call35)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay37 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %env_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 5
  %40 = load double, double* %env_sensitivity, align 8
  %call38 = call i8* @g_ascii_dtostr(i8* %arraydecay37, i32 39, double %40)
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i32 0, i32 0), i8* %call38)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %diffusion_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 6
  %42 = load i32, i32* %diffusion_dist, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0), i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay41 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %ch_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 7
  %44 = load double, double* %ch_sensitivity, align 8
  %call42 = call i8* @g_ascii_dtostr(i8* %arraydecay41, i32 39, double %44)
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* %call42)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %range_num = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 8
  %46 = load i32, i32* %range_num, align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i32 %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %power = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 9
  %48 = load double, double* %power, align 8
  %call46 = call i8* @g_ascii_dtostr(i8* %arraydecay45, i32 39, double %48)
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0), i8* %call46)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay48 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %parameter_k = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 10
  %50 = load double, double* %parameter_k, align 8
  %call49 = call i8* @g_ascii_dtostr(i8* %arraydecay48, i32 39, double %50)
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i8* %call49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay51 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %range_l = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 11
  %52 = load double, double* %range_l, align 8
  %call52 = call i8* @g_ascii_dtostr(i8* %arraydecay51, i32 39, double %52)
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i8* %call52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay54 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %range_h = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 12
  %54 = load double, double* %range_h, align 8
  %call55 = call i8* @g_ascii_dtostr(i8* %arraydecay54, i32 39, double %54)
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.76, i32 0, i32 0), i8* %call55)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay57 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %mutation_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 13
  %56 = load double, double* %mutation_rate, align 8
  %call58 = call i8* @g_ascii_dtostr(i8* %arraydecay57, i32 39, double %56)
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i32 0, i32 0), i8* %call58)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %arraydecay60 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %mutation_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %param, i32 0, i32 14
  %58 = load double, double* %mutation_dist, align 8
  %call61 = call i8* @g_ascii_dtostr(i8* %arraydecay60, i32 39, double %58)
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), i8* %call61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %59 = load i32, i32* %channel_id, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %channel_id, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 3), align 4
  %idxprom64 = sext i32 %63 to i64
  %arrayidx65 = getelementptr inbounds [10 x i8*], [10 x i8*]* @initial_value_names, i32 0, i64 %idxprom64
  %64 = load i8*, i8** %arrayidx65, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0), i32 %62, i8* %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 4), align 4
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i32 0, i32 0), i32 %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 5), align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i32 %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 6), align 4
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i32 %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call70 = call i32 @fclose(%struct._IO_FILE* %71)
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i32 0, i32 0)) #4
  %72 = load i8*, i8** %filename, align 8
  %call72 = call i8* @gimp_filename_to_utf8(i8* %72)
  call void (i8*, ...) @g_message(i8* %call71, i8* %call72)
  %73 = load i8*, i8** %filename, align 8
  %call73 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 7, i32 0), i8* %73, i64 255) #4
  %74 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %74)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %75)
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_ascii_dtostr(i8*, i32, double) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_menu_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %4)
  call void @preview_update()
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_label(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_toggle_entry_init(%struct._WidgetEntry* %widget_entry, %struct._GtkWidget* %widget, i8* %value_ptr) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %value_ptr.addr = alloca i8*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %value_ptr, i8** %value_ptr.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  %2 = load i8*, i8** %value_ptr.addr, align 8
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @CML_explorer_toggle_update to void ()*), i8* %2, void (i8*, %struct._GClosure*)* null, i32 0)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget1 = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %4, i32 0, i32 0
  store %struct._GtkWidget* %3, %struct._GtkWidget** %widget1, align 8
  %5 = load i8*, i8** %value_ptr.addr, align 8
  %6 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %6, i32 0, i32 1
  store i8* %5, i8** %value, align 8
  %7 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %7, i32 0, i32 2
  store void (%struct._WidgetEntry*)* @CML_explorer_toggle_entry_change_value, void (%struct._WidgetEntry*)** %updater, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_double_entry_init(%struct._WidgetEntry* %widget_entry, %struct._GtkObject* %adjustment, i8* %value_ptr) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  %adjustment.addr = alloca %struct._GtkObject*, align 8
  %value_ptr.addr = alloca i8*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  store %struct._GtkObject* %adjustment, %struct._GtkObject** %adjustment.addr, align 8
  store i8* %value_ptr, i8** %value_ptr.addr, align 8
  %0 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %1 = bitcast %struct._GtkObject* %0 to i8*
  %2 = load i8*, i8** %value_ptr.addr, align 8
  %call = call i64 @g_signal_connect_data(i8* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @CML_explorer_double_adjustment_update to void ()*), i8* %2, void (i8*, %struct._GClosure*)* null, i32 0)
  %3 = load %struct._GtkObject*, %struct._GtkObject** %adjustment.addr, align 8
  %4 = bitcast %struct._GtkObject* %3 to %struct._GtkWidget*
  %5 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %5, i32 0, i32 0
  store %struct._GtkWidget* %4, %struct._GtkWidget** %widget, align 8
  %6 = load i8*, i8** %value_ptr.addr, align 8
  %7 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %7, i32 0, i32 1
  store i8* %6, i8** %value, align 8
  %8 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %updater = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %8, i32 0, i32 2
  store void (%struct._WidgetEntry*)* @CML_explorer_double_entry_change_value, void (%struct._WidgetEntry*)** %updater, align 8
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @function_graph_new(%struct._GtkWidget* %widget, i8** %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8**, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.138, i32 0, i32 0)) #4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %0)
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct._GtkWidget* %call1, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %call3 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %frame, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_frame_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call4)
  %3 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %3, i32 1)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %6, i32 12)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %9)
  %10 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call13 = call %struct._GtkWidget* @gtk_drawing_area_new()
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %preview, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %14, i32 256, i32 256)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %17, %struct._GtkWidget* %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load i8**, i8*** %data.addr, align 8
  %23 = bitcast i8** %22 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, i8**)* @function_graph_expose to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dialog_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call17)
  %27 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDialog*
  %call19 = call i32 @gimp_dialog_run(%struct._GimpDialog* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_toggle_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @preview_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_toggle_entry_change_value(%struct._WidgetEntry* %widget_entry) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  %0 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %4 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 %7)
  ret void
}

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_double_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @preview_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_double_entry_change_value(%struct._WidgetEntry* %widget_entry) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  %0 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %2, %struct._GtkAdjustment** %adjustment, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %4 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %6 = bitcast i8* %5 to double*
  %7 = load double, double* %6, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %7)
  ret void
}

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare %struct._GtkWidget* @gtk_drawing_area_new() #1

; Function Attrs: nounwind uwtable
define internal i32 @function_graph_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, i8** %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %data.addr = alloca i8**, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rgbi = alloca [3 x i32], align 4
  %channel_id = alloca i32, align 4
  %param = alloca %struct.CML_PARAM*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  %1 = load i8**, i8*** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = ptrtoint i8* %2 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %channel_id, align 4
  %4 = load i8**, i8*** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8
  %6 = bitcast i8* %5 to %struct.CML_PARAM*
  store %struct.CML_PARAM* %6, %struct.CML_PARAM** %param, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  %call3 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call2)
  store %struct._cairo* %call3, %struct._cairo** %cr, align 8
  %8 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %9 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %9, i32 0, i32 4
  %10 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %8, %struct._GdkRegion* %10)
  %11 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %11)
  %12 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %12, double 1.000000e+00)
  %13 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %13)
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %14 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %14, 256
  br i1 %cmp, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 2
  store i32 127, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 1
  store i32 127, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 0
  store i32 127, i32* %arrayidx7, align 4
  %15 = load i32, i32* %channel_id, align 4
  %cmp8 = icmp sle i32 0, %15
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %16 = load i32, i32* %channel_id, align 4
  %cmp10 = icmp sle i32 %16, 2
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %range_h = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %17, i32 0, i32 12
  %18 = load double, double* %range_h, align 8
  %19 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %range_l = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %19, i32 0, i32 11
  %20 = load double, double* %range_l, align 8
  %sub = fsub double %18, %20
  %21 = load i32, i32* %x, align 4
  %conv12 = sitofp i32 %21 to double
  %div = fdiv double %conv12, 2.550000e+02
  %mul = fmul double %sub, %div
  %22 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %range_l13 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %22, i32 0, i32 11
  %23 = load double, double* %range_l13, align 8
  %add = fadd double %mul, %23
  %mul14 = fmul double 2.550000e+02, %add
  %conv15 = fptosi double %mul14 to i32
  %24 = load i32, i32* %channel_id, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 %idxprom
  store i32 %conv15, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay17, i64 1
  %arraydecay18 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i32 0
  %add.ptr19 = getelementptr inbounds i32, i32* %arraydecay18, i64 2
  call void @gimp_hsv_to_rgb_int(i32* %arraydecay, i32* %add.ptr, i32* %add.ptr19)
  store i32 0, i32* %y, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end
  %25 = load i32, i32* %y, align 4
  %cmp21 = icmp slt i32 %25, 256
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  br label %do.body

do.body:                                          ; preds = %for.body.23
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 2
  %26 = load i32, i32* %arrayidx24, align 4
  %conv25 = trunc i32 %26 to i8
  %27 = load i8*, i8** @img, align 8
  %28 = load i32, i32* %y, align 4
  %29 = load i32, i32* @img_stride, align 4
  %mul26 = mul nsw i32 %28, %29
  %30 = load i32, i32* %x, align 4
  %mul27 = mul nsw i32 %30, 4
  %add28 = add nsw i32 %mul26, %mul27
  %idx.ext = sext i32 %add28 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 0
  store i8 %conv25, i8* %arrayidx30, align 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 1
  %31 = load i32, i32* %arrayidx31, align 4
  %conv32 = trunc i32 %31 to i8
  %32 = load i8*, i8** @img, align 8
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* @img_stride, align 4
  %mul33 = mul nsw i32 %33, %34
  %35 = load i32, i32* %x, align 4
  %mul34 = mul nsw i32 %35, 4
  %add35 = add nsw i32 %mul33, %mul34
  %idx.ext36 = sext i32 %add35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %32, i64 %idx.ext36
  %arrayidx38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  store i8 %conv32, i8* %arrayidx38, align 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %rgbi, i32 0, i64 0
  %36 = load i32, i32* %arrayidx39, align 4
  %conv40 = trunc i32 %36 to i8
  %37 = load i8*, i8** @img, align 8
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* @img_stride, align 4
  %mul41 = mul nsw i32 %38, %39
  %40 = load i32, i32* %x, align 4
  %mul42 = mul nsw i32 %40, 4
  %add43 = add nsw i32 %mul41, %mul42
  %idx.ext44 = sext i32 %add43 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %37, i64 %idx.ext44
  %arrayidx46 = getelementptr inbounds i8, i8* %add.ptr45, i64 2
  store i8 %conv40, i8* %arrayidx46, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %41 = load i32, i32* %y, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %42 = load i32, i32* %x, align 4
  %inc48 = add nsw i32 %42, 1
  store i32 %inc48, i32* %x, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  %43 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %43)
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %45 = load %struct._cairo_surface*, %struct._cairo_surface** @buffer, align 8
  call void @cairo_set_source_surface(%struct._cairo* %44, %struct._cairo_surface* %45, double 0.000000e+00, double 0.000000e+00)
  %46 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %46)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %47, double 5.000000e-01, double 5.000000e-01)
  %48 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_move_to(%struct._cairo* %48, double 0.000000e+00, double 2.550000e+02)
  %49 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_line_to(%struct._cairo* %49, double 2.550000e+02, double 0.000000e+00)
  %50 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %51 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %white = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %51, i32 0, i32 10
  call void @gdk_cairo_set_source_color(%struct._cairo* %50, %struct._GdkColor* %white)
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %52)
  %53 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %54 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %power = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %54, i32 0, i32 9
  %55 = load double, double* %power, align 8
  %call50 = call double @logistic_function(%struct.CML_PARAM* %53, double 0.000000e+00, double %55)
  %cmp51 = fcmp ogt double %call50, 1.000000e+00
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.49
  br label %cond.end.61

cond.false:                                       ; preds = %for.end.49
  %56 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %57 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %power53 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %57, i32 0, i32 9
  %58 = load double, double* %power53, align 8
  %call54 = call double @logistic_function(%struct.CML_PARAM* %56, double 0.000000e+00, double %58)
  %cmp55 = fcmp olt double %call54, 0.000000e+00
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false
  br label %cond.end

cond.false.58:                                    ; preds = %cond.false
  %59 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %60 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %power59 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %60, i32 0, i32 9
  %61 = load double, double* %power59, align 8
  %call60 = call double @logistic_function(%struct.CML_PARAM* %59, double 0.000000e+00, double %61)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.58, %cond.true.57
  %cond = phi double [ 0.000000e+00, %cond.true.57 ], [ %call60, %cond.false.58 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end, %cond.true
  %cond62 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul63 = fmul double 2.550000e+02, %cond62
  %conv64 = fptosi double %mul63 to i32
  store i32 %conv64, i32* %y, align 4
  %62 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %63 = load i32, i32* %y, align 4
  %sub65 = sub nsw i32 255, %63
  %conv66 = sitofp i32 %sub65 to double
  call void @cairo_move_to(%struct._cairo* %62, double 0.000000e+00, double %conv66)
  store i32 0, i32* %x, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.100, %cond.end.61
  %64 = load i32, i32* %x, align 4
  %cmp68 = icmp slt i32 %64, 256
  br i1 %cmp68, label %for.body.70, label %for.end.102

for.body.70:                                      ; preds = %for.cond.67
  %65 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %66 = load i32, i32* %x, align 4
  %conv71 = sitofp i32 %66 to double
  %div72 = fdiv double %conv71, 2.550000e+02
  %67 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %power73 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %67, i32 0, i32 9
  %68 = load double, double* %power73, align 8
  %call74 = call double @logistic_function(%struct.CML_PARAM* %65, double %div72, double %68)
  %cmp75 = fcmp ogt double %call74, 1.000000e+00
  br i1 %cmp75, label %cond.true.77, label %cond.false.78

cond.true.77:                                     ; preds = %for.body.70
  br label %cond.end.93

cond.false.78:                                    ; preds = %for.body.70
  %69 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %70 = load i32, i32* %x, align 4
  %conv79 = sitofp i32 %70 to double
  %div80 = fdiv double %conv79, 2.550000e+02
  %71 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %power81 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %71, i32 0, i32 9
  %72 = load double, double* %power81, align 8
  %call82 = call double @logistic_function(%struct.CML_PARAM* %69, double %div80, double %72)
  %cmp83 = fcmp olt double %call82, 0.000000e+00
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.false.78
  br label %cond.end.91

cond.false.86:                                    ; preds = %cond.false.78
  %73 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %74 = load i32, i32* %x, align 4
  %conv87 = sitofp i32 %74 to double
  %div88 = fdiv double %conv87, 2.550000e+02
  %75 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param, align 8
  %power89 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %75, i32 0, i32 9
  %76 = load double, double* %power89, align 8
  %call90 = call double @logistic_function(%struct.CML_PARAM* %73, double %div88, double %76)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.86, %cond.true.85
  %cond92 = phi double [ 0.000000e+00, %cond.true.85 ], [ %call90, %cond.false.86 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.77
  %cond94 = phi double [ 1.000000e+00, %cond.true.77 ], [ %cond92, %cond.end.91 ]
  %mul95 = fmul double 2.550000e+02, %cond94
  %conv96 = fptosi double %mul95 to i32
  store i32 %conv96, i32* %y, align 4
  %77 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %78 = load i32, i32* %x, align 4
  %conv97 = sitofp i32 %78 to double
  %79 = load i32, i32* %y, align 4
  %sub98 = sub nsw i32 255, %79
  %conv99 = sitofp i32 %sub98 to double
  call void @cairo_line_to(%struct._cairo* %77, double %conv97, double %conv99)
  br label %for.inc.100

for.inc.100:                                      ; preds = %cond.end.93
  %80 = load i32, i32* %x, align 4
  %inc101 = add nsw i32 %80, 1
  store i32 %inc101, i32* %x, align 4
  br label %for.cond.67

for.end.102:                                      ; preds = %for.cond.67
  %81 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %82 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %black = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %82, i32 0, i32 9
  call void @gdk_cairo_set_source_color(%struct._cairo* %81, %struct._GdkColor* %black)
  %83 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %83)
  %84 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %84)
  ret i32 1
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare void @gimp_hsv_to_rgb_int(i32*, i32*, i32*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #1

declare void @cairo_stroke(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal double @logistic_function(%struct.CML_PARAM* %param, double %x, double %power) #0 {
entry:
  %retval = alloca double, align 8
  %param.addr = alloca %struct.CML_PARAM*, align 8
  %x.addr = alloca double, align 8
  %power.addr = alloca double, align 8
  %x1 = alloca double, align 8
  %result = alloca double, align 8
  %n = alloca i32, align 4
  %step = alloca i32, align 4
  store %struct.CML_PARAM* %param, %struct.CML_PARAM** %param.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %power, double* %power.addr, align 8
  %0 = load double, double* %x.addr, align 8
  store double %0, double* %x1, align 8
  store double 0.000000e+00, double* %result, align 8
  %1 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %range_num = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %1, i32 0, i32 8
  %2 = load i32, i32* %range_num, align 4
  store i32 %2, i32* %n, align 4
  %3 = load double, double* %x.addr, align 8
  %4 = load i32, i32* %n, align 4
  %conv = sitofp i32 %4 to double
  %mul = fmul double %3, %conv
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, i32* %step, align 4
  %5 = load double, double* %x.addr, align 8
  %6 = load i32, i32* %step, align 4
  %conv2 = sitofp i32 %6 to double
  %7 = load i32, i32* %n, align 4
  %conv3 = sitofp i32 %7 to double
  %div = fdiv double %conv2, %conv3
  %sub = fsub double %5, %div
  %8 = load i32, i32* %n, align 4
  %conv4 = sitofp i32 %8 to double
  %mul5 = fmul double %sub, %conv4
  store double %mul5, double* %x1, align 8
  %9 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %function = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %9, i32 0, i32 0
  %10 = load i32, i32* %function, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.16
    i32 4, label %sw.bb.22
    i32 5, label %sw.bb.32
    i32 6, label %sw.bb.36
    i32 7, label %sw.bb.44
    i32 8, label %sw.bb.49
    i32 9, label %sw.bb.58
    i32 10, label %sw.bb.69
    i32 11, label %sw.bb.84
    i32 12, label %sw.bb.125
  ]

sw.bb:                                            ; preds = %entry, %entry
  %11 = load double, double* %x.addr, align 8
  store double %11, double* %result, align 8
  %12 = load double, double* %result, align 8
  store double %12, double* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %13, i32 0, i32 10
  %14 = load double, double* %parameter_k, align 8
  %cmp = fcmp ogt double %14, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.6
  br label %cond.end.14

cond.false:                                       ; preds = %sw.bb.6
  %15 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k8 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %15, i32 0, i32 10
  %16 = load double, double* %parameter_k8, align 8
  %cmp9 = fcmp olt double %16, 0.000000e+00
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false
  %17 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k13 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %17, i32 0, i32 10
  %18 = load double, double* %parameter_k13, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond = phi double [ 0.000000e+00, %cond.true.11 ], [ %18, %cond.false.12 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end, %cond.true
  %cond15 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond15, double* %result, align 8
  %19 = load double, double* %result, align 8
  store double %19, double* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  %20 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k17 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %20, i32 0, i32 10
  %21 = load double, double* %parameter_k17, align 8
  %22 = load double, double* %x1, align 8
  %mul18 = fmul double 4.000000e+00, %22
  %23 = load double, double* %x1, align 8
  %sub19 = fsub double 1.000000e+00, %23
  %mul20 = fmul double %mul18, %sub19
  %24 = load double, double* %power.addr, align 8
  %call = call double @pow(double %mul20, double %24) #4
  %mul21 = fmul double %21, %call
  store double %mul21, double* %result, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %25 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k23 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %25, i32 0, i32 10
  %26 = load double, double* %parameter_k23, align 8
  %27 = load double, double* %x1, align 8
  %mul24 = fmul double 4.000000e+00, %27
  %28 = load double, double* %x1, align 8
  %sub25 = fsub double 1.000000e+00, %28
  %mul26 = fmul double %mul24, %sub25
  %29 = load double, double* %power.addr, align 8
  %call27 = call double @pow(double %mul26, double %29) #4
  %mul28 = fmul double %26, %call27
  store double %mul28, double* %result, align 8
  %30 = load double, double* %result, align 8
  %31 = load i32, i32* %step, align 4
  %conv29 = sitofp i32 %31 to double
  %add = fadd double %30, %conv29
  %32 = load i32, i32* %n, align 4
  %conv30 = sitofp i32 %32 to double
  %div31 = fdiv double %add, %conv30
  store double %div31, double* %result, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %33 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k33 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %33, i32 0, i32 10
  %34 = load double, double* %parameter_k33, align 8
  %35 = load double, double* %x1, align 8
  %36 = load double, double* %power.addr, align 8
  %call34 = call double @pow(double %35, double %36) #4
  %mul35 = fmul double %34, %call34
  store double %mul35, double* %result, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %37 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k37 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %37, i32 0, i32 10
  %38 = load double, double* %parameter_k37, align 8
  %39 = load double, double* %x1, align 8
  %40 = load double, double* %power.addr, align 8
  %call38 = call double @pow(double %39, double %40) #4
  %mul39 = fmul double %38, %call38
  store double %mul39, double* %result, align 8
  %41 = load double, double* %result, align 8
  %42 = load i32, i32* %step, align 4
  %conv40 = sitofp i32 %42 to double
  %add41 = fadd double %41, %conv40
  %43 = load i32, i32* %n, align 4
  %conv42 = sitofp i32 %43 to double
  %div43 = fdiv double %add41, %conv42
  store double %div43, double* %result, align 8
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %44 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k45 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %44, i32 0, i32 10
  %45 = load double, double* %parameter_k45, align 8
  %46 = load double, double* %x1, align 8
  %47 = load double, double* %power.addr, align 8
  %call46 = call double @pow(double %46, double %47) #4
  %sub47 = fsub double 1.000000e+00, %call46
  %mul48 = fmul double %45, %sub47
  store double %mul48, double* %result, align 8
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %48 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k50 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %48, i32 0, i32 10
  %49 = load double, double* %parameter_k50, align 8
  %50 = load double, double* %x1, align 8
  %51 = load double, double* %power.addr, align 8
  %call51 = call double @pow(double %50, double %51) #4
  %sub52 = fsub double 1.000000e+00, %call51
  %mul53 = fmul double %49, %sub52
  store double %mul53, double* %result, align 8
  %52 = load double, double* %result, align 8
  %53 = load i32, i32* %step, align 4
  %conv54 = sitofp i32 %53 to double
  %add55 = fadd double %52, %conv54
  %54 = load i32, i32* %n, align 4
  %conv56 = sitofp i32 %54 to double
  %div57 = fdiv double %add55, %conv56
  store double %div57, double* %result, align 8
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  %55 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k59 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %55, i32 0, i32 10
  %56 = load double, double* %parameter_k59, align 8
  %mul60 = fmul double %56, 2.000000e+00
  %57 = load double, double* %x1, align 8
  %cmp61 = fcmp olt double %57, 5.000000e-01
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %sw.bb.58
  %58 = load double, double* %x1, align 8
  br label %cond.end.66

cond.false.64:                                    ; preds = %sw.bb.58
  %59 = load double, double* %x1, align 8
  %sub65 = fsub double 1.000000e+00, %59
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi double [ %58, %cond.true.63 ], [ %sub65, %cond.false.64 ]
  %mul68 = fmul double %mul60, %cond67
  store double %mul68, double* %result, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %entry
  %60 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %parameter_k70 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %60, i32 0, i32 10
  %61 = load double, double* %parameter_k70, align 8
  %mul71 = fmul double %61, 2.000000e+00
  %62 = load double, double* %x1, align 8
  %cmp72 = fcmp olt double %62, 5.000000e-01
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %sw.bb.69
  %63 = load double, double* %x1, align 8
  br label %cond.end.77

cond.false.75:                                    ; preds = %sw.bb.69
  %64 = load double, double* %x1, align 8
  %sub76 = fsub double 1.000000e+00, %64
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond78 = phi double [ %63, %cond.true.74 ], [ %sub76, %cond.false.75 ]
  %mul79 = fmul double %mul71, %cond78
  store double %mul79, double* %result, align 8
  %65 = load double, double* %result, align 8
  %66 = load i32, i32* %step, align 4
  %conv80 = sitofp i32 %66 to double
  %add81 = fadd double %65, %conv80
  %67 = load i32, i32* %n, align 4
  %conv82 = sitofp i32 %67 to double
  %div83 = fdiv double %add81, %conv82
  store double %div83, double* %result, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %entry
  %68 = load double, double* %power.addr, align 8
  %cmp85 = fcmp olt double 1.000000e+00, %68
  br i1 %cmp85, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.84
  %69 = load double, double* %x1, align 8
  %sub87 = fsub double %69, 5.000000e-01
  %cmp88 = fcmp olt double %sub87, 0.000000e+00
  br i1 %cmp88, label %cond.true.90, label %cond.false.93

cond.true.90:                                     ; preds = %if.then
  %70 = load double, double* %x1, align 8
  %sub91 = fsub double %70, 5.000000e-01
  %sub92 = fsub double -0.000000e+00, %sub91
  br label %cond.end.95

cond.false.93:                                    ; preds = %if.then
  %71 = load double, double* %x1, align 8
  %sub94 = fsub double %71, 5.000000e-01
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.93, %cond.true.90
  %cond96 = phi double [ %sub92, %cond.true.90 ], [ %sub94, %cond.false.93 ]
  %mul97 = fmul double 0x400921FB54442D18, %cond96
  %72 = load double, double* %power.addr, align 8
  %div98 = fdiv double %mul97, %72
  %call99 = call double @sin(double %div98) #4
  %73 = load double, double* %power.addr, align 8
  %div100 = fdiv double 0x3FF921FB54442D18, %73
  %call101 = call double @sin(double %div100) #4
  %div102 = fdiv double %call99, %call101
  %add103 = fadd double %div102, 1.000000e+00
  %mul104 = fmul double 5.000000e-01, %add103
  store double %mul104, double* %result, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.84
  %74 = load double, double* %x1, align 8
  %sub105 = fsub double %74, 5.000000e-01
  %cmp106 = fcmp olt double %sub105, 0.000000e+00
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %if.else
  %75 = load double, double* %x1, align 8
  %sub109 = fsub double %75, 5.000000e-01
  %sub110 = fsub double -0.000000e+00, %sub109
  br label %cond.end.113

cond.false.111:                                   ; preds = %if.else
  %76 = load double, double* %x1, align 8
  %sub112 = fsub double %76, 5.000000e-01
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.108
  %cond114 = phi double [ %sub110, %cond.true.108 ], [ %sub112, %cond.false.111 ]
  %mul115 = fmul double 0x400921FB54442D18, %cond114
  %call116 = call double @sin(double %mul115) #4
  %77 = load double, double* %power.addr, align 8
  %call117 = call double @pow(double %call116, double %77) #4
  %add118 = fadd double %call117, 1.000000e+00
  %mul119 = fmul double 5.000000e-01, %add118
  store double %mul119, double* %result, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.113, %cond.end.95
  %78 = load double, double* %x1, align 8
  %cmp120 = fcmp olt double %78, 5.000000e-01
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end
  %79 = load double, double* %result, align 8
  %sub123 = fsub double 1.000000e+00, %79
  store double %sub123, double* %result, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end
  br label %sw.epilog

sw.bb.125:                                        ; preds = %entry
  %80 = load double, double* %power.addr, align 8
  %cmp126 = fcmp olt double 1.000000e+00, %80
  br i1 %cmp126, label %if.then.128, label %if.else.147

if.then.128:                                      ; preds = %sw.bb.125
  %81 = load double, double* %x1, align 8
  %sub129 = fsub double %81, 5.000000e-01
  %cmp130 = fcmp olt double %sub129, 0.000000e+00
  br i1 %cmp130, label %cond.true.132, label %cond.false.135

cond.true.132:                                    ; preds = %if.then.128
  %82 = load double, double* %x1, align 8
  %sub133 = fsub double %82, 5.000000e-01
  %sub134 = fsub double -0.000000e+00, %sub133
  br label %cond.end.137

cond.false.135:                                   ; preds = %if.then.128
  %83 = load double, double* %x1, align 8
  %sub136 = fsub double %83, 5.000000e-01
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.135, %cond.true.132
  %cond138 = phi double [ %sub134, %cond.true.132 ], [ %sub136, %cond.false.135 ]
  %mul139 = fmul double 0x400921FB54442D18, %cond138
  %84 = load double, double* %power.addr, align 8
  %div140 = fdiv double %mul139, %84
  %call141 = call double @sin(double %div140) #4
  %85 = load double, double* %power.addr, align 8
  %div142 = fdiv double 0x3FF921FB54442D18, %85
  %call143 = call double @sin(double %div142) #4
  %div144 = fdiv double %call141, %call143
  %add145 = fadd double %div144, 1.000000e+00
  %mul146 = fmul double 5.000000e-01, %add145
  store double %mul146, double* %result, align 8
  br label %if.end.163

if.else.147:                                      ; preds = %sw.bb.125
  %86 = load double, double* %x1, align 8
  %sub148 = fsub double %86, 5.000000e-01
  %cmp149 = fcmp olt double %sub148, 0.000000e+00
  br i1 %cmp149, label %cond.true.151, label %cond.false.154

cond.true.151:                                    ; preds = %if.else.147
  %87 = load double, double* %x1, align 8
  %sub152 = fsub double %87, 5.000000e-01
  %sub153 = fsub double -0.000000e+00, %sub152
  br label %cond.end.156

cond.false.154:                                   ; preds = %if.else.147
  %88 = load double, double* %x1, align 8
  %sub155 = fsub double %88, 5.000000e-01
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.151
  %cond157 = phi double [ %sub153, %cond.true.151 ], [ %sub155, %cond.false.154 ]
  %mul158 = fmul double 0x400921FB54442D18, %cond157
  %call159 = call double @sin(double %mul158) #4
  %89 = load double, double* %power.addr, align 8
  %call160 = call double @pow(double %call159, double %89) #4
  %add161 = fadd double %call160, 1.000000e+00
  %mul162 = fmul double 5.000000e-01, %add161
  store double %mul162, double* %result, align 8
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end.156, %cond.end.137
  %90 = load double, double* %x1, align 8
  %cmp164 = fcmp olt double %90, 5.000000e-01
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.end.163
  %91 = load double, double* %result, align 8
  %sub167 = fsub double 1.000000e+00, %91
  store double %sub167, double* %result, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %if.end.163
  %92 = load double, double* %result, align 8
  %93 = load i32, i32* %step, align 4
  %conv169 = sitofp i32 %93 to double
  %add170 = fadd double %92, %conv169
  %94 = load i32, i32* %n, align 4
  %conv171 = sitofp i32 %94 to double
  %div172 = fdiv double %add170, %conv171
  store double %div172, double* %result, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.168, %if.end.124, %cond.end.77, %cond.end.66, %sw.bb.49, %sw.bb.44, %sw.bb.36, %sw.bb.32, %sw.bb.22, %sw.bb.16
  %95 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %composition = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %95, i32 0, i32 1
  %96 = load i32, i32* %composition, align 4
  switch i32 %96, label %sw.epilog.328 [
    i32 0, label %sw.bb.173
    i32 1, label %sw.bb.174
    i32 2, label %sw.bb.181
    i32 7, label %sw.bb.190
    i32 8, label %sw.bb.203
    i32 3, label %sw.bb.216
    i32 9, label %sw.bb.225
    i32 10, label %sw.bb.238
    i32 4, label %sw.bb.251
    i32 5, label %sw.bb.258
    i32 11, label %sw.bb.267
    i32 12, label %sw.bb.280
    i32 6, label %sw.bb.293
    i32 13, label %sw.bb.302
    i32 14, label %sw.bb.315
  ]

sw.bb.173:                                        ; preds = %sw.epilog
  br label %sw.epilog.328

sw.bb.174:                                        ; preds = %sw.epilog
  %97 = load double, double* %x.addr, align 8
  %98 = load double, double* %result, align 8
  %cmp175 = fcmp ogt double %97, %98
  br i1 %cmp175, label %cond.true.177, label %cond.false.178

cond.true.177:                                    ; preds = %sw.bb.174
  %99 = load double, double* %x.addr, align 8
  br label %cond.end.179

cond.false.178:                                   ; preds = %sw.bb.174
  %100 = load double, double* %result, align 8
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.178, %cond.true.177
  %cond180 = phi double [ %99, %cond.true.177 ], [ %100, %cond.false.178 ]
  store double %cond180, double* %result, align 8
  br label %sw.epilog.328

sw.bb.181:                                        ; preds = %sw.epilog
  %101 = load double, double* %x.addr, align 8
  %add182 = fadd double %101, 3.906250e-03
  %102 = load double, double* %result, align 8
  %cmp183 = fcmp ogt double %add182, %102
  br i1 %cmp183, label %cond.true.185, label %cond.false.187

cond.true.185:                                    ; preds = %sw.bb.181
  %103 = load double, double* %x.addr, align 8
  %add186 = fadd double %103, 3.906250e-03
  br label %cond.end.188

cond.false.187:                                   ; preds = %sw.bb.181
  %104 = load double, double* %result, align 8
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.185
  %cond189 = phi double [ %add186, %cond.true.185 ], [ %104, %cond.false.187 ]
  store double %cond189, double* %result, align 8
  br label %sw.epilog.328

sw.bb.190:                                        ; preds = %sw.epilog
  %105 = load double, double* %x.addr, align 8
  %cmp191 = fcmp olt double %105, 5.000000e-01
  br i1 %cmp191, label %if.then.193, label %if.end.202

if.then.193:                                      ; preds = %sw.bb.190
  %106 = load double, double* %x.addr, align 8
  %add194 = fadd double %106, 3.906250e-03
  %107 = load double, double* %result, align 8
  %cmp195 = fcmp ogt double %add194, %107
  br i1 %cmp195, label %cond.true.197, label %cond.false.199

cond.true.197:                                    ; preds = %if.then.193
  %108 = load double, double* %x.addr, align 8
  %add198 = fadd double %108, 3.906250e-03
  br label %cond.end.200

cond.false.199:                                   ; preds = %if.then.193
  %109 = load double, double* %result, align 8
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.197
  %cond201 = phi double [ %add198, %cond.true.197 ], [ %109, %cond.false.199 ]
  store double %cond201, double* %result, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %cond.end.200, %sw.bb.190
  br label %sw.epilog.328

sw.bb.203:                                        ; preds = %sw.epilog
  %110 = load double, double* %x.addr, align 8
  %cmp204 = fcmp olt double 5.000000e-01, %110
  br i1 %cmp204, label %if.then.206, label %if.end.215

if.then.206:                                      ; preds = %sw.bb.203
  %111 = load double, double* %x.addr, align 8
  %add207 = fadd double %111, 3.906250e-03
  %112 = load double, double* %result, align 8
  %cmp208 = fcmp ogt double %add207, %112
  br i1 %cmp208, label %cond.true.210, label %cond.false.212

cond.true.210:                                    ; preds = %if.then.206
  %113 = load double, double* %x.addr, align 8
  %add211 = fadd double %113, 3.906250e-03
  br label %cond.end.213

cond.false.212:                                   ; preds = %if.then.206
  %114 = load double, double* %result, align 8
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.210
  %cond214 = phi double [ %add211, %cond.true.210 ], [ %114, %cond.false.212 ]
  store double %cond214, double* %result, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %cond.end.213, %sw.bb.203
  br label %sw.epilog.328

sw.bb.216:                                        ; preds = %sw.epilog
  %115 = load double, double* %x.addr, align 8
  %sub217 = fsub double %115, 3.906250e-03
  %116 = load double, double* %result, align 8
  %cmp218 = fcmp ogt double %sub217, %116
  br i1 %cmp218, label %cond.true.220, label %cond.false.222

cond.true.220:                                    ; preds = %sw.bb.216
  %117 = load double, double* %x.addr, align 8
  %sub221 = fsub double %117, 3.906250e-03
  br label %cond.end.223

cond.false.222:                                   ; preds = %sw.bb.216
  %118 = load double, double* %result, align 8
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.222, %cond.true.220
  %cond224 = phi double [ %sub221, %cond.true.220 ], [ %118, %cond.false.222 ]
  store double %cond224, double* %result, align 8
  br label %sw.epilog.328

sw.bb.225:                                        ; preds = %sw.epilog
  %119 = load double, double* %x.addr, align 8
  %cmp226 = fcmp olt double %119, 5.000000e-01
  br i1 %cmp226, label %if.then.228, label %if.end.237

if.then.228:                                      ; preds = %sw.bb.225
  %120 = load double, double* %x.addr, align 8
  %sub229 = fsub double %120, 3.906250e-03
  %121 = load double, double* %result, align 8
  %cmp230 = fcmp ogt double %sub229, %121
  br i1 %cmp230, label %cond.true.232, label %cond.false.234

cond.true.232:                                    ; preds = %if.then.228
  %122 = load double, double* %x.addr, align 8
  %sub233 = fsub double %122, 3.906250e-03
  br label %cond.end.235

cond.false.234:                                   ; preds = %if.then.228
  %123 = load double, double* %result, align 8
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.false.234, %cond.true.232
  %cond236 = phi double [ %sub233, %cond.true.232 ], [ %123, %cond.false.234 ]
  store double %cond236, double* %result, align 8
  br label %if.end.237

if.end.237:                                       ; preds = %cond.end.235, %sw.bb.225
  br label %sw.epilog.328

sw.bb.238:                                        ; preds = %sw.epilog
  %124 = load double, double* %x.addr, align 8
  %cmp239 = fcmp olt double 5.000000e-01, %124
  br i1 %cmp239, label %if.then.241, label %if.end.250

if.then.241:                                      ; preds = %sw.bb.238
  %125 = load double, double* %x.addr, align 8
  %sub242 = fsub double %125, 3.906250e-03
  %126 = load double, double* %result, align 8
  %cmp243 = fcmp ogt double %sub242, %126
  br i1 %cmp243, label %cond.true.245, label %cond.false.247

cond.true.245:                                    ; preds = %if.then.241
  %127 = load double, double* %x.addr, align 8
  %sub246 = fsub double %127, 3.906250e-03
  br label %cond.end.248

cond.false.247:                                   ; preds = %if.then.241
  %128 = load double, double* %result, align 8
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.247, %cond.true.245
  %cond249 = phi double [ %sub246, %cond.true.245 ], [ %128, %cond.false.247 ]
  store double %cond249, double* %result, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %cond.end.248, %sw.bb.238
  br label %sw.epilog.328

sw.bb.251:                                        ; preds = %sw.epilog
  %129 = load double, double* %x.addr, align 8
  %130 = load double, double* %result, align 8
  %cmp252 = fcmp olt double %129, %130
  br i1 %cmp252, label %cond.true.254, label %cond.false.255

cond.true.254:                                    ; preds = %sw.bb.251
  %131 = load double, double* %x.addr, align 8
  br label %cond.end.256

cond.false.255:                                   ; preds = %sw.bb.251
  %132 = load double, double* %result, align 8
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.255, %cond.true.254
  %cond257 = phi double [ %131, %cond.true.254 ], [ %132, %cond.false.255 ]
  store double %cond257, double* %result, align 8
  br label %sw.epilog.328

sw.bb.258:                                        ; preds = %sw.epilog
  %133 = load double, double* %x.addr, align 8
  %add259 = fadd double %133, 3.906250e-03
  %134 = load double, double* %result, align 8
  %cmp260 = fcmp olt double %add259, %134
  br i1 %cmp260, label %cond.true.262, label %cond.false.264

cond.true.262:                                    ; preds = %sw.bb.258
  %135 = load double, double* %x.addr, align 8
  %add263 = fadd double %135, 3.906250e-03
  br label %cond.end.265

cond.false.264:                                   ; preds = %sw.bb.258
  %136 = load double, double* %result, align 8
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.262
  %cond266 = phi double [ %add263, %cond.true.262 ], [ %136, %cond.false.264 ]
  store double %cond266, double* %result, align 8
  br label %sw.epilog.328

sw.bb.267:                                        ; preds = %sw.epilog
  %137 = load double, double* %x.addr, align 8
  %cmp268 = fcmp olt double %137, 5.000000e-01
  br i1 %cmp268, label %if.then.270, label %if.end.279

if.then.270:                                      ; preds = %sw.bb.267
  %138 = load double, double* %x.addr, align 8
  %add271 = fadd double %138, 3.906250e-03
  %139 = load double, double* %result, align 8
  %cmp272 = fcmp olt double %add271, %139
  br i1 %cmp272, label %cond.true.274, label %cond.false.276

cond.true.274:                                    ; preds = %if.then.270
  %140 = load double, double* %x.addr, align 8
  %add275 = fadd double %140, 3.906250e-03
  br label %cond.end.277

cond.false.276:                                   ; preds = %if.then.270
  %141 = load double, double* %result, align 8
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.274
  %cond278 = phi double [ %add275, %cond.true.274 ], [ %141, %cond.false.276 ]
  store double %cond278, double* %result, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %cond.end.277, %sw.bb.267
  br label %sw.epilog.328

sw.bb.280:                                        ; preds = %sw.epilog
  %142 = load double, double* %x.addr, align 8
  %cmp281 = fcmp olt double 5.000000e-01, %142
  br i1 %cmp281, label %if.then.283, label %if.end.292

if.then.283:                                      ; preds = %sw.bb.280
  %143 = load double, double* %x.addr, align 8
  %add284 = fadd double %143, 3.906250e-03
  %144 = load double, double* %result, align 8
  %cmp285 = fcmp olt double %add284, %144
  br i1 %cmp285, label %cond.true.287, label %cond.false.289

cond.true.287:                                    ; preds = %if.then.283
  %145 = load double, double* %x.addr, align 8
  %add288 = fadd double %145, 3.906250e-03
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.then.283
  %146 = load double, double* %result, align 8
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.287
  %cond291 = phi double [ %add288, %cond.true.287 ], [ %146, %cond.false.289 ]
  store double %cond291, double* %result, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %cond.end.290, %sw.bb.280
  br label %sw.epilog.328

sw.bb.293:                                        ; preds = %sw.epilog
  %147 = load double, double* %x.addr, align 8
  %sub294 = fsub double %147, 3.906250e-03
  %148 = load double, double* %result, align 8
  %cmp295 = fcmp olt double %sub294, %148
  br i1 %cmp295, label %cond.true.297, label %cond.false.299

cond.true.297:                                    ; preds = %sw.bb.293
  %149 = load double, double* %x.addr, align 8
  %sub298 = fsub double %149, 3.906250e-03
  br label %cond.end.300

cond.false.299:                                   ; preds = %sw.bb.293
  %150 = load double, double* %result, align 8
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.299, %cond.true.297
  %cond301 = phi double [ %sub298, %cond.true.297 ], [ %150, %cond.false.299 ]
  store double %cond301, double* %result, align 8
  br label %sw.epilog.328

sw.bb.302:                                        ; preds = %sw.epilog
  %151 = load double, double* %x.addr, align 8
  %cmp303 = fcmp olt double %151, 5.000000e-01
  br i1 %cmp303, label %if.then.305, label %if.end.314

if.then.305:                                      ; preds = %sw.bb.302
  %152 = load double, double* %x.addr, align 8
  %sub306 = fsub double %152, 3.906250e-03
  %153 = load double, double* %result, align 8
  %cmp307 = fcmp olt double %sub306, %153
  br i1 %cmp307, label %cond.true.309, label %cond.false.311

cond.true.309:                                    ; preds = %if.then.305
  %154 = load double, double* %x.addr, align 8
  %sub310 = fsub double %154, 3.906250e-03
  br label %cond.end.312

cond.false.311:                                   ; preds = %if.then.305
  %155 = load double, double* %result, align 8
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.311, %cond.true.309
  %cond313 = phi double [ %sub310, %cond.true.309 ], [ %155, %cond.false.311 ]
  store double %cond313, double* %result, align 8
  br label %if.end.314

if.end.314:                                       ; preds = %cond.end.312, %sw.bb.302
  br label %sw.epilog.328

sw.bb.315:                                        ; preds = %sw.epilog
  %156 = load double, double* %x.addr, align 8
  %cmp316 = fcmp olt double 5.000000e-01, %156
  br i1 %cmp316, label %if.then.318, label %if.end.327

if.then.318:                                      ; preds = %sw.bb.315
  %157 = load double, double* %x.addr, align 8
  %sub319 = fsub double %157, 3.906250e-03
  %158 = load double, double* %result, align 8
  %cmp320 = fcmp olt double %sub319, %158
  br i1 %cmp320, label %cond.true.322, label %cond.false.324

cond.true.322:                                    ; preds = %if.then.318
  %159 = load double, double* %x.addr, align 8
  %sub323 = fsub double %159, 3.906250e-03
  br label %cond.end.325

cond.false.324:                                   ; preds = %if.then.318
  %160 = load double, double* %result, align 8
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.false.324, %cond.true.322
  %cond326 = phi double [ %sub323, %cond.true.322 ], [ %160, %cond.false.324 ]
  store double %cond326, double* %result, align 8
  br label %if.end.327

if.end.327:                                       ; preds = %cond.end.325, %sw.bb.315
  br label %sw.epilog.328

sw.epilog.328:                                    ; preds = %sw.epilog, %if.end.327, %if.end.314, %cond.end.300, %if.end.292, %if.end.279, %cond.end.265, %cond.end.256, %if.end.250, %if.end.237, %cond.end.223, %if.end.215, %if.end.202, %cond.end.188, %cond.end.179, %sw.bb.173
  %161 = load double, double* %result, align 8
  store double %161, double* %retval
  br label %return

return:                                           ; preds = %sw.epilog.328, %cond.end.14, %sw.bb
  %162 = load double, double* %retval
  ret double %162
}

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_menu_entry_change_value(%struct._WidgetEntry* %widget_entry) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  %0 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %4 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %call2 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %3, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_int_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @preview_update()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CML_explorer_int_entry_change_value(%struct._WidgetEntry* %widget_entry) #0 {
entry:
  %widget_entry.addr = alloca %struct._WidgetEntry*, align 8
  %adjustment = alloca %struct._GtkAdjustment*, align 8
  store %struct._WidgetEntry* %widget_entry, %struct._WidgetEntry** %widget_entry.addr, align 8
  %0 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %widget = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GtkAdjustment*
  store %struct._GtkAdjustment* %2, %struct._GtkAdjustment** %adjustment, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment, align 8
  %4 = load %struct._WidgetEntry*, %struct._WidgetEntry** %widget_entry.addr, align 8
  %value = getelementptr inbounds %struct._WidgetEntry, %struct._WidgetEntry* %4, i32 0, i32 1
  %5 = load i8*, i8** %value, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %conv = sitofp i32 %7 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %3, double %conv)
  ret void
}

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal double @parse_line_to_gdouble(%struct._IO_FILE* %file, i32* %flag) #0 {
entry:
  %retval = alloca double, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %flag.addr = alloca i32*, align 8
  %line = alloca [1024 x i8], align 16
  %str = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32* %flag, i32** %flag.addr, align 8
  %0 = load i32*, i32** %flag.addr, align 8
  %1 = load i32, i32* %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 1023, %struct._IO_FILE* %2)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i32*, i32** %flag.addr, align 8
  store i32 0, i32* %3, align 4
  store double 0.000000e+00, double* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  store i8* %arrayidx, i8** %str, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end.2
  %4 = load i8*, i8** %str, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 58
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %str, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %8 = load i32*, i32** %flag.addr, align 8
  store i32 0, i32* %8, align 4
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %9 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %str, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %call10 = call double @g_ascii_strtod(i8* %add.ptr, i8** null)
  store double %call10, double* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8, %if.then.1, %if.then
  %11 = load double, double* %retval
  ret double %11
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @gimp_message(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_line_to_gint(%struct._IO_FILE* %file, i32* %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %flag.addr = alloca i32*, align 8
  %line = alloca [1024 x i8], align 16
  %str = alloca i8*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32* %flag, i32** %flag.addr, align 8
  %0 = load i32*, i32** %flag.addr, align 8
  %1 = load i32, i32* %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 1023, %struct._IO_FILE* %2)
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %3 = load i32*, i32** %flag.addr, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i64 0
  store i8* %arrayidx, i8** %str, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end.2
  %4 = load i8*, i8** %str, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 58
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %str, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %8 = load i32*, i32** %flag.addr, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body
  %9 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i8*, i8** %str, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  %call10 = call i32 @atoi(i8* %add.ptr) #7
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8, %if.then.1, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare %struct._GRand* @g_rand_new() #1

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare double @g_rand_double(%struct._GRand*) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

declare void @gimp_rgb_to_hsv_int(i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @CML_compute_next_step(i32 %size, double** %h, double** %s, double** %v, double** %hn, double** %sn, double** %vn, double** %haux, double** %saux, double** %vaux) #0 {
entry:
  %size.addr = alloca i32, align 4
  %h.addr = alloca double**, align 8
  %s.addr = alloca double**, align 8
  %v.addr = alloca double**, align 8
  %hn.addr = alloca double**, align 8
  %sn.addr = alloca double**, align 8
  %vn.addr = alloca double**, align 8
  %haux.addr = alloca double**, align 8
  %saux.addr = alloca double**, align 8
  %vaux.addr = alloca double**, align 8
  %index = alloca i32, align 4
  %tmp = alloca double*, align 8
  %tmp140 = alloca double*, align 8
  %tmp142 = alloca double*, align 8
  store i32 %size, i32* %size.addr, align 4
  store double** %h, double*** %h.addr, align 8
  store double** %s, double*** %s.addr, align 8
  store double** %v, double*** %v.addr, align 8
  store double** %hn, double*** %hn.addr, align 8
  store double** %sn, double*** %sn.addr, align 8
  store double** %vn, double*** %vn.addr, align 8
  store double** %haux, double*** %haux.addr, align 8
  store double** %saux, double*** %saux.addr, align 8
  store double** %vaux, double*** %vaux.addr, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double**, double*** %h.addr, align 8
  %3 = load double*, double** %2, align 8
  %4 = load i32, i32* %index, align 4
  %5 = load i32, i32* %size.addr, align 4
  %6 = load i32, i32* %index, align 4
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32, i32* %size.addr, align 4
  %8 = load i32, i32* %index, align 4
  %add = add nsw i32 %7, %8
  br label %cond.end.5

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %size.addr, align 4
  %10 = load i32, i32* %index, align 4
  %cmp2 = icmp sle i32 %9, %10
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  %11 = load i32, i32* %index, align 4
  %12 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %11, %12
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %13 = load i32, i32* %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ %sub, %cond.true.3 ], [ %13, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ %add, %cond.true ], [ %cond, %cond.end ]
  %idxprom = sext i32 %cond6 to i64
  %14 = load double**, double*** %s.addr, align 8
  %15 = load double*, double** %14, align 8
  %arrayidx = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx, align 8
  %17 = load i32, i32* %index, align 4
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end.5
  %18 = load i32, i32* %size.addr, align 4
  %19 = load i32, i32* %index, align 4
  %add9 = add nsw i32 %18, %19
  br label %cond.end.17

cond.false.10:                                    ; preds = %cond.end.5
  %20 = load i32, i32* %size.addr, align 4
  %21 = load i32, i32* %index, align 4
  %cmp11 = icmp sle i32 %20, %21
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.false.10
  %22 = load i32, i32* %index, align 4
  %23 = load i32, i32* %size.addr, align 4
  %sub13 = sub nsw i32 %22, %23
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.false.10
  %24 = load i32, i32* %index, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi i32 [ %sub13, %cond.true.12 ], [ %24, %cond.false.14 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end.15, %cond.true.8
  %cond18 = phi i32 [ %add9, %cond.true.8 ], [ %cond16, %cond.end.15 ]
  %idxprom19 = sext i32 %cond18 to i64
  %25 = load double**, double*** %v.addr, align 8
  %26 = load double*, double** %25, align 8
  %arrayidx20 = getelementptr inbounds double, double* %26, i64 %idxprom19
  %27 = load double, double* %arrayidx20, align 8
  %28 = load i32, i32* %index, align 4
  %cmp21 = icmp slt i32 %28, 0
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.17
  %29 = load i32, i32* %size.addr, align 4
  %30 = load i32, i32* %index, align 4
  %add23 = add nsw i32 %29, %30
  br label %cond.end.31

cond.false.24:                                    ; preds = %cond.end.17
  %31 = load i32, i32* %size.addr, align 4
  %32 = load i32, i32* %index, align 4
  %cmp25 = icmp sle i32 %31, %32
  br i1 %cmp25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.false.24
  %33 = load i32, i32* %index, align 4
  %34 = load i32, i32* %size.addr, align 4
  %sub27 = sub nsw i32 %33, %34
  br label %cond.end.29

cond.false.28:                                    ; preds = %cond.false.24
  %35 = load i32, i32* %index, align 4
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond30 = phi i32 [ %sub27, %cond.true.26 ], [ %35, %cond.false.28 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.22
  %cond32 = phi i32 [ %add23, %cond.true.22 ], [ %cond30, %cond.end.29 ]
  %idxprom33 = sext i32 %cond32 to i64
  %36 = load double**, double*** %haux.addr, align 8
  %37 = load double*, double** %36, align 8
  %arrayidx34 = getelementptr inbounds double, double* %37, i64 %idxprom33
  %38 = load double, double* %arrayidx34, align 8
  %call = call double @CML_next_value(double* %3, i32 %4, i32 %5, double %16, double %27, %struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 0), double %38)
  %39 = load i32, i32* %index, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load double**, double*** %hn.addr, align 8
  %41 = load double*, double** %40, align 8
  %arrayidx36 = getelementptr inbounds double, double* %41, i64 %idxprom35
  store double %call, double* %arrayidx36, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.31
  %42 = load i32, i32* %index, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %index, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.85, %for.end
  %43 = load i32, i32* %index, align 4
  %44 = load i32, i32* %size.addr, align 4
  %cmp38 = icmp slt i32 %43, %44
  br i1 %cmp38, label %for.body.39, label %for.end.87

for.body.39:                                      ; preds = %for.cond.37
  %45 = load double**, double*** %s.addr, align 8
  %46 = load double*, double** %45, align 8
  %47 = load i32, i32* %index, align 4
  %48 = load i32, i32* %size.addr, align 4
  %49 = load i32, i32* %index, align 4
  %cmp40 = icmp slt i32 %49, 0
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %for.body.39
  %50 = load i32, i32* %size.addr, align 4
  %51 = load i32, i32* %index, align 4
  %add42 = add nsw i32 %50, %51
  br label %cond.end.50

cond.false.43:                                    ; preds = %for.body.39
  %52 = load i32, i32* %size.addr, align 4
  %53 = load i32, i32* %index, align 4
  %cmp44 = icmp sle i32 %52, %53
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.false.43
  %54 = load i32, i32* %index, align 4
  %55 = load i32, i32* %size.addr, align 4
  %sub46 = sub nsw i32 %54, %55
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.false.43
  %56 = load i32, i32* %index, align 4
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi i32 [ %sub46, %cond.true.45 ], [ %56, %cond.false.47 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.41
  %cond51 = phi i32 [ %add42, %cond.true.41 ], [ %cond49, %cond.end.48 ]
  %idxprom52 = sext i32 %cond51 to i64
  %57 = load double**, double*** %v.addr, align 8
  %58 = load double*, double** %57, align 8
  %arrayidx53 = getelementptr inbounds double, double* %58, i64 %idxprom52
  %59 = load double, double* %arrayidx53, align 8
  %60 = load i32, i32* %index, align 4
  %cmp54 = icmp slt i32 %60, 0
  br i1 %cmp54, label %cond.true.55, label %cond.false.57

cond.true.55:                                     ; preds = %cond.end.50
  %61 = load i32, i32* %size.addr, align 4
  %62 = load i32, i32* %index, align 4
  %add56 = add nsw i32 %61, %62
  br label %cond.end.64

cond.false.57:                                    ; preds = %cond.end.50
  %63 = load i32, i32* %size.addr, align 4
  %64 = load i32, i32* %index, align 4
  %cmp58 = icmp sle i32 %63, %64
  br i1 %cmp58, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %cond.false.57
  %65 = load i32, i32* %index, align 4
  %66 = load i32, i32* %size.addr, align 4
  %sub60 = sub nsw i32 %65, %66
  br label %cond.end.62

cond.false.61:                                    ; preds = %cond.false.57
  %67 = load i32, i32* %index, align 4
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.59
  %cond63 = phi i32 [ %sub60, %cond.true.59 ], [ %67, %cond.false.61 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true.55
  %cond65 = phi i32 [ %add56, %cond.true.55 ], [ %cond63, %cond.end.62 ]
  %idxprom66 = sext i32 %cond65 to i64
  %68 = load double**, double*** %h.addr, align 8
  %69 = load double*, double** %68, align 8
  %arrayidx67 = getelementptr inbounds double, double* %69, i64 %idxprom66
  %70 = load double, double* %arrayidx67, align 8
  %71 = load i32, i32* %index, align 4
  %cmp68 = icmp slt i32 %71, 0
  br i1 %cmp68, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.end.64
  %72 = load i32, i32* %size.addr, align 4
  %73 = load i32, i32* %index, align 4
  %add70 = add nsw i32 %72, %73
  br label %cond.end.78

cond.false.71:                                    ; preds = %cond.end.64
  %74 = load i32, i32* %size.addr, align 4
  %75 = load i32, i32* %index, align 4
  %cmp72 = icmp sle i32 %74, %75
  br i1 %cmp72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.false.71
  %76 = load i32, i32* %index, align 4
  %77 = load i32, i32* %size.addr, align 4
  %sub74 = sub nsw i32 %76, %77
  br label %cond.end.76

cond.false.75:                                    ; preds = %cond.false.71
  %78 = load i32, i32* %index, align 4
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.73
  %cond77 = phi i32 [ %sub74, %cond.true.73 ], [ %78, %cond.false.75 ]
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.end.76, %cond.true.69
  %cond79 = phi i32 [ %add70, %cond.true.69 ], [ %cond77, %cond.end.76 ]
  %idxprom80 = sext i32 %cond79 to i64
  %79 = load double**, double*** %saux.addr, align 8
  %80 = load double*, double** %79, align 8
  %arrayidx81 = getelementptr inbounds double, double* %80, i64 %idxprom80
  %81 = load double, double* %arrayidx81, align 8
  %call82 = call double @CML_next_value(double* %46, i32 %47, i32 %48, double %59, double %70, %struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 1), double %81)
  %82 = load i32, i32* %index, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load double**, double*** %sn.addr, align 8
  %84 = load double*, double** %83, align 8
  %arrayidx84 = getelementptr inbounds double, double* %84, i64 %idxprom83
  store double %call82, double* %arrayidx84, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %cond.end.78
  %85 = load i32, i32* %index, align 4
  %inc86 = add nsw i32 %85, 1
  store i32 %inc86, i32* %index, align 4
  br label %for.cond.37

for.end.87:                                       ; preds = %for.cond.37
  store i32 0, i32* %index, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.136, %for.end.87
  %86 = load i32, i32* %index, align 4
  %87 = load i32, i32* %size.addr, align 4
  %cmp89 = icmp slt i32 %86, %87
  br i1 %cmp89, label %for.body.90, label %for.end.138

for.body.90:                                      ; preds = %for.cond.88
  %88 = load double**, double*** %v.addr, align 8
  %89 = load double*, double** %88, align 8
  %90 = load i32, i32* %index, align 4
  %91 = load i32, i32* %size.addr, align 4
  %92 = load i32, i32* %index, align 4
  %cmp91 = icmp slt i32 %92, 0
  br i1 %cmp91, label %cond.true.92, label %cond.false.94

cond.true.92:                                     ; preds = %for.body.90
  %93 = load i32, i32* %size.addr, align 4
  %94 = load i32, i32* %index, align 4
  %add93 = add nsw i32 %93, %94
  br label %cond.end.101

cond.false.94:                                    ; preds = %for.body.90
  %95 = load i32, i32* %size.addr, align 4
  %96 = load i32, i32* %index, align 4
  %cmp95 = icmp sle i32 %95, %96
  br i1 %cmp95, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %cond.false.94
  %97 = load i32, i32* %index, align 4
  %98 = load i32, i32* %size.addr, align 4
  %sub97 = sub nsw i32 %97, %98
  br label %cond.end.99

cond.false.98:                                    ; preds = %cond.false.94
  %99 = load i32, i32* %index, align 4
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.96
  %cond100 = phi i32 [ %sub97, %cond.true.96 ], [ %99, %cond.false.98 ]
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.end.99, %cond.true.92
  %cond102 = phi i32 [ %add93, %cond.true.92 ], [ %cond100, %cond.end.99 ]
  %idxprom103 = sext i32 %cond102 to i64
  %100 = load double**, double*** %h.addr, align 8
  %101 = load double*, double** %100, align 8
  %arrayidx104 = getelementptr inbounds double, double* %101, i64 %idxprom103
  %102 = load double, double* %arrayidx104, align 8
  %103 = load i32, i32* %index, align 4
  %cmp105 = icmp slt i32 %103, 0
  br i1 %cmp105, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %cond.end.101
  %104 = load i32, i32* %size.addr, align 4
  %105 = load i32, i32* %index, align 4
  %add107 = add nsw i32 %104, %105
  br label %cond.end.115

cond.false.108:                                   ; preds = %cond.end.101
  %106 = load i32, i32* %size.addr, align 4
  %107 = load i32, i32* %index, align 4
  %cmp109 = icmp sle i32 %106, %107
  br i1 %cmp109, label %cond.true.110, label %cond.false.112

cond.true.110:                                    ; preds = %cond.false.108
  %108 = load i32, i32* %index, align 4
  %109 = load i32, i32* %size.addr, align 4
  %sub111 = sub nsw i32 %108, %109
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.false.108
  %110 = load i32, i32* %index, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.110
  %cond114 = phi i32 [ %sub111, %cond.true.110 ], [ %110, %cond.false.112 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.106
  %cond116 = phi i32 [ %add107, %cond.true.106 ], [ %cond114, %cond.end.113 ]
  %idxprom117 = sext i32 %cond116 to i64
  %111 = load double**, double*** %s.addr, align 8
  %112 = load double*, double** %111, align 8
  %arrayidx118 = getelementptr inbounds double, double* %112, i64 %idxprom117
  %113 = load double, double* %arrayidx118, align 8
  %114 = load i32, i32* %index, align 4
  %cmp119 = icmp slt i32 %114, 0
  br i1 %cmp119, label %cond.true.120, label %cond.false.122

cond.true.120:                                    ; preds = %cond.end.115
  %115 = load i32, i32* %size.addr, align 4
  %116 = load i32, i32* %index, align 4
  %add121 = add nsw i32 %115, %116
  br label %cond.end.129

cond.false.122:                                   ; preds = %cond.end.115
  %117 = load i32, i32* %size.addr, align 4
  %118 = load i32, i32* %index, align 4
  %cmp123 = icmp sle i32 %117, %118
  br i1 %cmp123, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %cond.false.122
  %119 = load i32, i32* %index, align 4
  %120 = load i32, i32* %size.addr, align 4
  %sub125 = sub nsw i32 %119, %120
  br label %cond.end.127

cond.false.126:                                   ; preds = %cond.false.122
  %121 = load i32, i32* %index, align 4
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.124
  %cond128 = phi i32 [ %sub125, %cond.true.124 ], [ %121, %cond.false.126 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.120
  %cond130 = phi i32 [ %add121, %cond.true.120 ], [ %cond128, %cond.end.127 ]
  %idxprom131 = sext i32 %cond130 to i64
  %122 = load double**, double*** %vaux.addr, align 8
  %123 = load double*, double** %122, align 8
  %arrayidx132 = getelementptr inbounds double, double* %123, i64 %idxprom131
  %124 = load double, double* %arrayidx132, align 8
  %call133 = call double @CML_next_value(double* %89, i32 %90, i32 %91, double %102, double %113, %struct.CML_PARAM* getelementptr inbounds (%struct.ValueType, %struct.ValueType* @CML_explorer_vals, i32 0, i32 2), double %124)
  %125 = load i32, i32* %index, align 4
  %idxprom134 = sext i32 %125 to i64
  %126 = load double**, double*** %vn.addr, align 8
  %127 = load double*, double** %126, align 8
  %arrayidx135 = getelementptr inbounds double, double* %127, i64 %idxprom134
  store double %call133, double* %arrayidx135, align 8
  br label %for.inc.136

for.inc.136:                                      ; preds = %cond.end.129
  %128 = load i32, i32* %index, align 4
  %inc137 = add nsw i32 %128, 1
  store i32 %inc137, i32* %index, align 4
  br label %for.cond.88

for.end.138:                                      ; preds = %for.cond.88
  %129 = load double**, double*** %h.addr, align 8
  %130 = load double*, double** %129, align 8
  store double* %130, double** %tmp, align 8
  %131 = load double**, double*** %hn.addr, align 8
  %132 = load double*, double** %131, align 8
  %133 = load double**, double*** %h.addr, align 8
  store double* %132, double** %133, align 8
  %134 = load double*, double** %tmp, align 8
  %135 = load double**, double*** %hn.addr, align 8
  store double* %134, double** %135, align 8
  %136 = load double**, double*** %s.addr, align 8
  %137 = load double*, double** %136, align 8
  store double* %137, double** %tmp140, align 8
  %138 = load double**, double*** %sn.addr, align 8
  %139 = load double*, double** %138, align 8
  %140 = load double**, double*** %s.addr, align 8
  store double* %139, double** %140, align 8
  %141 = load double*, double** %tmp140, align 8
  %142 = load double**, double*** %sn.addr, align 8
  store double* %141, double** %142, align 8
  %143 = load double**, double*** %v.addr, align 8
  %144 = load double*, double** %143, align 8
  store double* %144, double** %tmp142, align 8
  %145 = load double**, double*** %vn.addr, align 8
  %146 = load double*, double** %145, align 8
  %147 = load double**, double*** %v.addr, align 8
  store double* %146, double** %147, align 8
  %148 = load double*, double** %tmp142, align 8
  %149 = load double**, double*** %vn.addr, align 8
  store double* %148, double** %149, align 8
  ret void
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_rand_free(%struct._GRand*) #1

; Function Attrs: nounwind uwtable
define internal double @CML_next_value(double* %vec, i32 %pos, i32 %size, double %c1, double %c2, %struct.CML_PARAM* %param, double %power) #0 {
entry:
  %vec.addr = alloca double*, align 8
  %pos.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %c1.addr = alloca double, align 8
  %c2.addr = alloca double, align 8
  %param.addr = alloca %struct.CML_PARAM*, align 8
  %power.addr = alloca double, align 8
  %val = alloca double, align 8
  %diff = alloca double, align 8
  %self_diff = alloca double, align 8
  %by_env = alloca double, align 8
  %self_mod_rate = alloca double, align 8
  %hold_rate = alloca double, align 8
  %env_factor = alloca double, align 8
  %index = alloca i32, align 4
  %tmp = alloca double, align 8
  store double* %vec, double** %vec.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store double %c1, double* %c1.addr, align 8
  store double %c2, double* %c2.addr, align 8
  store %struct.CML_PARAM* %param, %struct.CML_PARAM** %param.addr, align 8
  store double %power, double* %power.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load double*, double** %vec.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  store double %2, double* %val, align 8
  store double 0.000000e+00, double* %diff, align 8
  store double 0.000000e+00, double* %self_diff, align 8
  store double 0.000000e+00, double* %by_env, align 8
  store double 0.000000e+00, double* %self_mod_rate, align 8
  %3 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %3, i32 0, i32 4
  %4 = load double, double* %mod_rate, align 8
  %sub = fsub double 1.000000e+00, %4
  store double %sub, double* %hold_rate, align 8
  store double 0.000000e+00, double* %env_factor, align 8
  %5 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %5, i32 0, i32 5
  %6 = load double, double* %env_sensitivity, align 8
  %sub1 = fsub double 1.000000e+00, %6
  %7 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %7, i32 0, i32 7
  %8 = load double, double* %ch_sensitivity, align 8
  %sub2 = fsub double %sub1, %8
  store double %sub2, double* %self_mod_rate, align 8
  %9 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %arrange = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %9, i32 0, i32 2
  %10 = load i32, i32* %arrange, align 4
  switch i32 %10, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.120
    i32 6, label %sw.bb.251
    i32 7, label %sw.bb.251
    i32 8, label %sw.bb.251
    i32 0, label %sw.bb.393
    i32 3, label %sw.bb.393
    i32 4, label %sw.bb.393
    i32 5, label %sw.bb.393
    i32 9, label %sw.bb.393
  ]

sw.bb:                                            ; preds = %entry
  %11 = load double, double* %self_mod_rate, align 8
  %12 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load double*, double** %vec.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %14, i64 %idxprom3
  %15 = load double, double* %arrayidx4, align 8
  %sub5 = fsub double 1.000000e+00, %15
  %16 = load double, double* %power.addr, align 8
  %call = call double @logistic_function(%struct.CML_PARAM* %12, double %sub5, double %16)
  %mul = fmul double %11, %call
  store double %mul, double* %self_diff, align 8
  store i32 1, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %17 = load i32, i32* %index, align 4
  %18 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %18, i32 0, i32 6
  %19 = load i32, i32* %diffusion_dist, align 4
  %div = sdiv i32 %19, 2
  %cmp = icmp sle i32 %17, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity6 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %20, i32 0, i32 5
  %21 = load double, double* %env_sensitivity6, align 8
  %22 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %23 = load i32, i32* %pos.addr, align 4
  %24 = load i32, i32* %index, align 4
  %add = add nsw i32 %23, %24
  %cmp7 = icmp slt i32 %add, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %25 = load i32, i32* %size.addr, align 4
  %26 = load i32, i32* %pos.addr, align 4
  %add8 = add nsw i32 %25, %26
  %27 = load i32, i32* %index, align 4
  %add9 = add nsw i32 %add8, %27
  br label %cond.end.17

cond.false:                                       ; preds = %for.body
  %28 = load i32, i32* %size.addr, align 4
  %29 = load i32, i32* %pos.addr, align 4
  %30 = load i32, i32* %index, align 4
  %add10 = add nsw i32 %29, %30
  %cmp11 = icmp sle i32 %28, %add10
  br i1 %cmp11, label %cond.true.12, label %cond.false.15

cond.true.12:                                     ; preds = %cond.false
  %31 = load i32, i32* %pos.addr, align 4
  %32 = load i32, i32* %index, align 4
  %add13 = add nsw i32 %31, %32
  %33 = load i32, i32* %size.addr, align 4
  %sub14 = sub nsw i32 %add13, %33
  br label %cond.end

cond.false.15:                                    ; preds = %cond.false
  %34 = load i32, i32* %pos.addr, align 4
  %35 = load i32, i32* %index, align 4
  %add16 = add nsw i32 %34, %35
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.12
  %cond = phi i32 [ %sub14, %cond.true.12 ], [ %add16, %cond.false.15 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi i32 [ %add9, %cond.true ], [ %cond, %cond.end ]
  %idxprom19 = sext i32 %cond18 to i64
  %36 = load double*, double** %vec.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %36, i64 %idxprom19
  %37 = load double, double* %arrayidx20, align 8
  %sub21 = fsub double 1.000000e+00, %37
  %38 = load double, double* %power.addr, align 8
  %call22 = call double @logistic_function(%struct.CML_PARAM* %22, double %sub21, double %38)
  %mul23 = fmul double %21, %call22
  %39 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity24 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %39, i32 0, i32 5
  %40 = load double, double* %env_sensitivity24, align 8
  %41 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %42 = load i32, i32* %pos.addr, align 4
  %43 = load i32, i32* %index, align 4
  %sub25 = sub nsw i32 %42, %43
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end.17
  %44 = load i32, i32* %size.addr, align 4
  %45 = load i32, i32* %pos.addr, align 4
  %add28 = add nsw i32 %44, %45
  %46 = load i32, i32* %index, align 4
  %sub29 = sub nsw i32 %add28, %46
  br label %cond.end.40

cond.false.30:                                    ; preds = %cond.end.17
  %47 = load i32, i32* %size.addr, align 4
  %48 = load i32, i32* %pos.addr, align 4
  %49 = load i32, i32* %index, align 4
  %sub31 = sub nsw i32 %48, %49
  %cmp32 = icmp sle i32 %47, %sub31
  br i1 %cmp32, label %cond.true.33, label %cond.false.36

cond.true.33:                                     ; preds = %cond.false.30
  %50 = load i32, i32* %pos.addr, align 4
  %51 = load i32, i32* %index, align 4
  %sub34 = sub nsw i32 %50, %51
  %52 = load i32, i32* %size.addr, align 4
  %sub35 = sub nsw i32 %sub34, %52
  br label %cond.end.38

cond.false.36:                                    ; preds = %cond.false.30
  %53 = load i32, i32* %pos.addr, align 4
  %54 = load i32, i32* %index, align 4
  %sub37 = sub nsw i32 %53, %54
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.36, %cond.true.33
  %cond39 = phi i32 [ %sub35, %cond.true.33 ], [ %sub37, %cond.false.36 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.27
  %cond41 = phi i32 [ %sub29, %cond.true.27 ], [ %cond39, %cond.end.38 ]
  %idxprom42 = sext i32 %cond41 to i64
  %55 = load double*, double** %vec.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %55, i64 %idxprom42
  %56 = load double, double* %arrayidx43, align 8
  %sub44 = fsub double 1.000000e+00, %56
  %57 = load double, double* %power.addr, align 8
  %call45 = call double @logistic_function(%struct.CML_PARAM* %41, double %sub44, double %57)
  %mul46 = fmul double %40, %call45
  %add47 = fadd double %mul23, %mul46
  %58 = load double, double* %env_factor, align 8
  %add48 = fadd double %58, %add47
  store double %add48, double* %env_factor, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.40
  %59 = load i32, i32* %index, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist49 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %60, i32 0, i32 6
  %61 = load i32, i32* %diffusion_dist49, align 4
  %rem = srem i32 %61, 2
  %cmp50 = icmp eq i32 %rem, 1
  br i1 %cmp50, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %62 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity51 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %62, i32 0, i32 5
  %63 = load double, double* %env_sensitivity51, align 8
  %64 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %65 = load i32, i32* %pos.addr, align 4
  %66 = load i32, i32* %index, align 4
  %add52 = add nsw i32 %65, %66
  %cmp53 = icmp slt i32 %add52, 0
  br i1 %cmp53, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %if.then
  %67 = load i32, i32* %size.addr, align 4
  %68 = load i32, i32* %pos.addr, align 4
  %add55 = add nsw i32 %67, %68
  %69 = load i32, i32* %index, align 4
  %add56 = add nsw i32 %add55, %69
  br label %cond.end.67

cond.false.57:                                    ; preds = %if.then
  %70 = load i32, i32* %size.addr, align 4
  %71 = load i32, i32* %pos.addr, align 4
  %72 = load i32, i32* %index, align 4
  %add58 = add nsw i32 %71, %72
  %cmp59 = icmp sle i32 %70, %add58
  br i1 %cmp59, label %cond.true.60, label %cond.false.63

cond.true.60:                                     ; preds = %cond.false.57
  %73 = load i32, i32* %pos.addr, align 4
  %74 = load i32, i32* %index, align 4
  %add61 = add nsw i32 %73, %74
  %75 = load i32, i32* %size.addr, align 4
  %sub62 = sub nsw i32 %add61, %75
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.false.57
  %76 = load i32, i32* %pos.addr, align 4
  %77 = load i32, i32* %index, align 4
  %add64 = add nsw i32 %76, %77
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.60
  %cond66 = phi i32 [ %sub62, %cond.true.60 ], [ %add64, %cond.false.63 ]
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.end.65, %cond.true.54
  %cond68 = phi i32 [ %add56, %cond.true.54 ], [ %cond66, %cond.end.65 ]
  %idxprom69 = sext i32 %cond68 to i64
  %78 = load double*, double** %vec.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %78, i64 %idxprom69
  %79 = load double, double* %arrayidx70, align 8
  %sub71 = fsub double 1.000000e+00, %79
  %80 = load double, double* %power.addr, align 8
  %call72 = call double @logistic_function(%struct.CML_PARAM* %64, double %sub71, double %80)
  %mul73 = fmul double %63, %call72
  %81 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity74 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %81, i32 0, i32 5
  %82 = load double, double* %env_sensitivity74, align 8
  %83 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %84 = load i32, i32* %pos.addr, align 4
  %85 = load i32, i32* %index, align 4
  %sub75 = sub nsw i32 %84, %85
  %cmp76 = icmp slt i32 %sub75, 0
  br i1 %cmp76, label %cond.true.77, label %cond.false.80

cond.true.77:                                     ; preds = %cond.end.67
  %86 = load i32, i32* %size.addr, align 4
  %87 = load i32, i32* %pos.addr, align 4
  %add78 = add nsw i32 %86, %87
  %88 = load i32, i32* %index, align 4
  %sub79 = sub nsw i32 %add78, %88
  br label %cond.end.90

cond.false.80:                                    ; preds = %cond.end.67
  %89 = load i32, i32* %size.addr, align 4
  %90 = load i32, i32* %pos.addr, align 4
  %91 = load i32, i32* %index, align 4
  %sub81 = sub nsw i32 %90, %91
  %cmp82 = icmp sle i32 %89, %sub81
  br i1 %cmp82, label %cond.true.83, label %cond.false.86

cond.true.83:                                     ; preds = %cond.false.80
  %92 = load i32, i32* %pos.addr, align 4
  %93 = load i32, i32* %index, align 4
  %sub84 = sub nsw i32 %92, %93
  %94 = load i32, i32* %size.addr, align 4
  %sub85 = sub nsw i32 %sub84, %94
  br label %cond.end.88

cond.false.86:                                    ; preds = %cond.false.80
  %95 = load i32, i32* %pos.addr, align 4
  %96 = load i32, i32* %index, align 4
  %sub87 = sub nsw i32 %95, %96
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.86, %cond.true.83
  %cond89 = phi i32 [ %sub85, %cond.true.83 ], [ %sub87, %cond.false.86 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.77
  %cond91 = phi i32 [ %sub79, %cond.true.77 ], [ %cond89, %cond.end.88 ]
  %idxprom92 = sext i32 %cond91 to i64
  %97 = load double*, double** %vec.addr, align 8
  %arrayidx93 = getelementptr inbounds double, double* %97, i64 %idxprom92
  %98 = load double, double* %arrayidx93, align 8
  %sub94 = fsub double 1.000000e+00, %98
  %99 = load double, double* %power.addr, align 8
  %call95 = call double @logistic_function(%struct.CML_PARAM* %83, double %sub94, double %99)
  %mul96 = fmul double %82, %call95
  %add97 = fadd double %mul73, %mul96
  %div98 = fdiv double %add97, 2.000000e+00
  %100 = load double, double* %env_factor, align 8
  %add99 = fadd double %100, %div98
  store double %add99, double* %env_factor, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.90, %for.end
  %101 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist100 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %101, i32 0, i32 6
  %102 = load i32, i32* %diffusion_dist100, align 4
  %conv = sitofp i32 %102 to double
  %103 = load double, double* %env_factor, align 8
  %div101 = fdiv double %103, %conv
  store double %div101, double* %env_factor, align 8
  %104 = load double, double* %env_factor, align 8
  %105 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity102 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %105, i32 0, i32 7
  %106 = load double, double* %ch_sensitivity102, align 8
  %107 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %108 = load double, double* %c1.addr, align 8
  %sub103 = fsub double 1.000000e+00, %108
  %109 = load double, double* %power.addr, align 8
  %call104 = call double @logistic_function(%struct.CML_PARAM* %107, double %sub103, double %109)
  %mul105 = fmul double %106, %call104
  %110 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity106 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %110, i32 0, i32 7
  %111 = load double, double* %ch_sensitivity106, align 8
  %112 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %113 = load double, double* %c2.addr, align 8
  %sub107 = fsub double 1.000000e+00, %113
  %114 = load double, double* %power.addr, align 8
  %call108 = call double @logistic_function(%struct.CML_PARAM* %112, double %sub107, double %114)
  %mul109 = fmul double %111, %call108
  %add110 = fadd double %mul105, %mul109
  %div111 = fdiv double %add110, 2.000000e+00
  %add112 = fadd double %104, %div111
  store double %add112, double* %by_env, align 8
  %115 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate113 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %115, i32 0, i32 4
  %116 = load double, double* %mod_rate113, align 8
  %117 = load double, double* %self_diff, align 8
  %118 = load double, double* %by_env, align 8
  %add114 = fadd double %117, %118
  %mul115 = fmul double %116, %add114
  store double %mul115, double* %diff, align 8
  %119 = load double, double* %hold_rate, align 8
  %120 = load i32, i32* %pos.addr, align 4
  %idxprom116 = sext i32 %120 to i64
  %121 = load double*, double** %vec.addr, align 8
  %arrayidx117 = getelementptr inbounds double, double* %121, i64 %idxprom116
  %122 = load double, double* %arrayidx117, align 8
  %mul118 = fmul double %119, %122
  %123 = load double, double* %diff, align 8
  %add119 = fadd double %mul118, %123
  store double %add119, double* %val, align 8
  br label %sw.epilog

sw.bb.120:                                        ; preds = %entry
  %124 = load double, double* %self_mod_rate, align 8
  %125 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %126 = load i32, i32* %pos.addr, align 4
  %idxprom121 = sext i32 %126 to i64
  %127 = load double*, double** %vec.addr, align 8
  %arrayidx122 = getelementptr inbounds double, double* %127, i64 %idxprom121
  %128 = load double, double* %arrayidx122, align 8
  %129 = load double, double* %power.addr, align 8
  %call123 = call double @logistic_function(%struct.CML_PARAM* %125, double %128, double %129)
  %mul124 = fmul double %124, %call123
  store double %mul124, double* %self_diff, align 8
  store i32 1, i32* %index, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.175, %sw.bb.120
  %130 = load i32, i32* %index, align 4
  %131 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist126 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %131, i32 0, i32 6
  %132 = load i32, i32* %diffusion_dist126, align 4
  %div127 = sdiv i32 %132, 2
  %cmp128 = icmp sle i32 %130, %div127
  br i1 %cmp128, label %for.body.130, label %for.end.177

for.body.130:                                     ; preds = %for.cond.125
  %133 = load i32, i32* %pos.addr, align 4
  %134 = load i32, i32* %index, align 4
  %add131 = add nsw i32 %133, %134
  %cmp132 = icmp slt i32 %add131, 0
  br i1 %cmp132, label %cond.true.134, label %cond.false.137

cond.true.134:                                    ; preds = %for.body.130
  %135 = load i32, i32* %size.addr, align 4
  %136 = load i32, i32* %pos.addr, align 4
  %add135 = add nsw i32 %135, %136
  %137 = load i32, i32* %index, align 4
  %add136 = add nsw i32 %add135, %137
  br label %cond.end.148

cond.false.137:                                   ; preds = %for.body.130
  %138 = load i32, i32* %size.addr, align 4
  %139 = load i32, i32* %pos.addr, align 4
  %140 = load i32, i32* %index, align 4
  %add138 = add nsw i32 %139, %140
  %cmp139 = icmp sle i32 %138, %add138
  br i1 %cmp139, label %cond.true.141, label %cond.false.144

cond.true.141:                                    ; preds = %cond.false.137
  %141 = load i32, i32* %pos.addr, align 4
  %142 = load i32, i32* %index, align 4
  %add142 = add nsw i32 %141, %142
  %143 = load i32, i32* %size.addr, align 4
  %sub143 = sub nsw i32 %add142, %143
  br label %cond.end.146

cond.false.144:                                   ; preds = %cond.false.137
  %144 = load i32, i32* %pos.addr, align 4
  %145 = load i32, i32* %index, align 4
  %add145 = add nsw i32 %144, %145
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.144, %cond.true.141
  %cond147 = phi i32 [ %sub143, %cond.true.141 ], [ %add145, %cond.false.144 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end.146, %cond.true.134
  %cond149 = phi i32 [ %add136, %cond.true.134 ], [ %cond147, %cond.end.146 ]
  %idxprom150 = sext i32 %cond149 to i64
  %146 = load double*, double** %vec.addr, align 8
  %arrayidx151 = getelementptr inbounds double, double* %146, i64 %idxprom150
  %147 = load double, double* %arrayidx151, align 8
  %148 = load i32, i32* %pos.addr, align 4
  %149 = load i32, i32* %index, align 4
  %sub152 = sub nsw i32 %148, %149
  %cmp153 = icmp slt i32 %sub152, 0
  br i1 %cmp153, label %cond.true.155, label %cond.false.158

cond.true.155:                                    ; preds = %cond.end.148
  %150 = load i32, i32* %size.addr, align 4
  %151 = load i32, i32* %pos.addr, align 4
  %add156 = add nsw i32 %150, %151
  %152 = load i32, i32* %index, align 4
  %sub157 = sub nsw i32 %add156, %152
  br label %cond.end.169

cond.false.158:                                   ; preds = %cond.end.148
  %153 = load i32, i32* %size.addr, align 4
  %154 = load i32, i32* %pos.addr, align 4
  %155 = load i32, i32* %index, align 4
  %sub159 = sub nsw i32 %154, %155
  %cmp160 = icmp sle i32 %153, %sub159
  br i1 %cmp160, label %cond.true.162, label %cond.false.165

cond.true.162:                                    ; preds = %cond.false.158
  %156 = load i32, i32* %pos.addr, align 4
  %157 = load i32, i32* %index, align 4
  %sub163 = sub nsw i32 %156, %157
  %158 = load i32, i32* %size.addr, align 4
  %sub164 = sub nsw i32 %sub163, %158
  br label %cond.end.167

cond.false.165:                                   ; preds = %cond.false.158
  %159 = load i32, i32* %pos.addr, align 4
  %160 = load i32, i32* %index, align 4
  %sub166 = sub nsw i32 %159, %160
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.165, %cond.true.162
  %cond168 = phi i32 [ %sub164, %cond.true.162 ], [ %sub166, %cond.false.165 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.155
  %cond170 = phi i32 [ %sub157, %cond.true.155 ], [ %cond168, %cond.end.167 ]
  %idxprom171 = sext i32 %cond170 to i64
  %161 = load double*, double** %vec.addr, align 8
  %arrayidx172 = getelementptr inbounds double, double* %161, i64 %idxprom171
  %162 = load double, double* %arrayidx172, align 8
  %add173 = fadd double %147, %162
  %163 = load double, double* %env_factor, align 8
  %add174 = fadd double %163, %add173
  store double %add174, double* %env_factor, align 8
  br label %for.inc.175

for.inc.175:                                      ; preds = %cond.end.169
  %164 = load i32, i32* %index, align 4
  %inc176 = add nsw i32 %164, 1
  store i32 %inc176, i32* %index, align 4
  br label %for.cond.125

for.end.177:                                      ; preds = %for.cond.125
  %165 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist178 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %165, i32 0, i32 6
  %166 = load i32, i32* %diffusion_dist178, align 4
  %rem179 = srem i32 %166, 2
  %cmp180 = icmp eq i32 %rem179, 1
  br i1 %cmp180, label %if.then.182, label %if.end.228

if.then.182:                                      ; preds = %for.end.177
  %167 = load i32, i32* %pos.addr, align 4
  %168 = load i32, i32* %index, align 4
  %add183 = add nsw i32 %167, %168
  %cmp184 = icmp slt i32 %add183, 0
  br i1 %cmp184, label %cond.true.186, label %cond.false.189

cond.true.186:                                    ; preds = %if.then.182
  %169 = load i32, i32* %size.addr, align 4
  %170 = load i32, i32* %pos.addr, align 4
  %add187 = add nsw i32 %169, %170
  %171 = load i32, i32* %index, align 4
  %add188 = add nsw i32 %add187, %171
  br label %cond.end.200

cond.false.189:                                   ; preds = %if.then.182
  %172 = load i32, i32* %size.addr, align 4
  %173 = load i32, i32* %pos.addr, align 4
  %174 = load i32, i32* %index, align 4
  %add190 = add nsw i32 %173, %174
  %cmp191 = icmp sle i32 %172, %add190
  br i1 %cmp191, label %cond.true.193, label %cond.false.196

cond.true.193:                                    ; preds = %cond.false.189
  %175 = load i32, i32* %pos.addr, align 4
  %176 = load i32, i32* %index, align 4
  %add194 = add nsw i32 %175, %176
  %177 = load i32, i32* %size.addr, align 4
  %sub195 = sub nsw i32 %add194, %177
  br label %cond.end.198

cond.false.196:                                   ; preds = %cond.false.189
  %178 = load i32, i32* %pos.addr, align 4
  %179 = load i32, i32* %index, align 4
  %add197 = add nsw i32 %178, %179
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.196, %cond.true.193
  %cond199 = phi i32 [ %sub195, %cond.true.193 ], [ %add197, %cond.false.196 ]
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.end.198, %cond.true.186
  %cond201 = phi i32 [ %add188, %cond.true.186 ], [ %cond199, %cond.end.198 ]
  %idxprom202 = sext i32 %cond201 to i64
  %180 = load double*, double** %vec.addr, align 8
  %arrayidx203 = getelementptr inbounds double, double* %180, i64 %idxprom202
  %181 = load double, double* %arrayidx203, align 8
  %182 = load i32, i32* %pos.addr, align 4
  %183 = load i32, i32* %index, align 4
  %sub204 = sub nsw i32 %182, %183
  %cmp205 = icmp slt i32 %sub204, 0
  br i1 %cmp205, label %cond.true.207, label %cond.false.210

cond.true.207:                                    ; preds = %cond.end.200
  %184 = load i32, i32* %size.addr, align 4
  %185 = load i32, i32* %pos.addr, align 4
  %add208 = add nsw i32 %184, %185
  %186 = load i32, i32* %index, align 4
  %sub209 = sub nsw i32 %add208, %186
  br label %cond.end.221

cond.false.210:                                   ; preds = %cond.end.200
  %187 = load i32, i32* %size.addr, align 4
  %188 = load i32, i32* %pos.addr, align 4
  %189 = load i32, i32* %index, align 4
  %sub211 = sub nsw i32 %188, %189
  %cmp212 = icmp sle i32 %187, %sub211
  br i1 %cmp212, label %cond.true.214, label %cond.false.217

cond.true.214:                                    ; preds = %cond.false.210
  %190 = load i32, i32* %pos.addr, align 4
  %191 = load i32, i32* %index, align 4
  %sub215 = sub nsw i32 %190, %191
  %192 = load i32, i32* %size.addr, align 4
  %sub216 = sub nsw i32 %sub215, %192
  br label %cond.end.219

cond.false.217:                                   ; preds = %cond.false.210
  %193 = load i32, i32* %pos.addr, align 4
  %194 = load i32, i32* %index, align 4
  %sub218 = sub nsw i32 %193, %194
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.217, %cond.true.214
  %cond220 = phi i32 [ %sub216, %cond.true.214 ], [ %sub218, %cond.false.217 ]
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.end.219, %cond.true.207
  %cond222 = phi i32 [ %sub209, %cond.true.207 ], [ %cond220, %cond.end.219 ]
  %idxprom223 = sext i32 %cond222 to i64
  %195 = load double*, double** %vec.addr, align 8
  %arrayidx224 = getelementptr inbounds double, double* %195, i64 %idxprom223
  %196 = load double, double* %arrayidx224, align 8
  %add225 = fadd double %181, %196
  %div226 = fdiv double %add225, 2.000000e+00
  %197 = load double, double* %env_factor, align 8
  %add227 = fadd double %197, %div226
  store double %add227, double* %env_factor, align 8
  br label %if.end.228

if.end.228:                                       ; preds = %cond.end.221, %for.end.177
  %198 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist229 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %198, i32 0, i32 6
  %199 = load i32, i32* %diffusion_dist229, align 4
  %conv230 = sitofp i32 %199 to double
  %200 = load double, double* %env_factor, align 8
  %div231 = fdiv double %200, %conv230
  store double %div231, double* %env_factor, align 8
  %201 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity232 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %201, i32 0, i32 5
  %202 = load double, double* %env_sensitivity232, align 8
  %203 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %204 = load double, double* %env_factor, align 8
  %205 = load double, double* %power.addr, align 8
  %call233 = call double @logistic_function(%struct.CML_PARAM* %203, double %204, double %205)
  %mul234 = fmul double %202, %call233
  %206 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity235 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %206, i32 0, i32 7
  %207 = load double, double* %ch_sensitivity235, align 8
  %208 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %209 = load double, double* %c1.addr, align 8
  %210 = load double, double* %power.addr, align 8
  %call236 = call double @logistic_function(%struct.CML_PARAM* %208, double %209, double %210)
  %mul237 = fmul double %207, %call236
  %211 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity238 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %211, i32 0, i32 7
  %212 = load double, double* %ch_sensitivity238, align 8
  %213 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %214 = load double, double* %c2.addr, align 8
  %215 = load double, double* %power.addr, align 8
  %call239 = call double @logistic_function(%struct.CML_PARAM* %213, double %214, double %215)
  %mul240 = fmul double %212, %call239
  %add241 = fadd double %mul237, %mul240
  %div242 = fdiv double %add241, 2.000000e+00
  %add243 = fadd double %mul234, %div242
  store double %add243, double* %by_env, align 8
  %216 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate244 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %216, i32 0, i32 4
  %217 = load double, double* %mod_rate244, align 8
  %218 = load double, double* %self_diff, align 8
  %219 = load double, double* %by_env, align 8
  %add245 = fadd double %218, %219
  %mul246 = fmul double %217, %add245
  store double %mul246, double* %diff, align 8
  %220 = load double, double* %hold_rate, align 8
  %221 = load i32, i32* %pos.addr, align 4
  %idxprom247 = sext i32 %221 to i64
  %222 = load double*, double** %vec.addr, align 8
  %arrayidx248 = getelementptr inbounds double, double* %222, i64 %idxprom247
  %223 = load double, double* %arrayidx248, align 8
  %mul249 = fmul double %220, %223
  %224 = load double, double* %diff, align 8
  %add250 = fadd double %mul249, %224
  store double %add250, double* %val, align 8
  br label %sw.epilog

sw.bb.251:                                        ; preds = %entry, %entry, %entry
  %225 = load double, double* %power.addr, align 8
  store double %225, double* %tmp, align 8
  %226 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %power252 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %226, i32 0, i32 9
  %227 = load double, double* %power252, align 8
  store double %227, double* %power.addr, align 8
  %228 = load double, double* %self_mod_rate, align 8
  %229 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %230 = load i32, i32* %pos.addr, align 4
  %idxprom253 = sext i32 %230 to i64
  %231 = load double*, double** %vec.addr, align 8
  %arrayidx254 = getelementptr inbounds double, double* %231, i64 %idxprom253
  %232 = load double, double* %arrayidx254, align 8
  %233 = load double, double* %power.addr, align 8
  %call255 = call double @logistic_function(%struct.CML_PARAM* %229, double %232, double %233)
  %mul256 = fmul double %228, %call255
  store double %mul256, double* %self_diff, align 8
  store i32 1, i32* %index, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.313, %sw.bb.251
  %234 = load i32, i32* %index, align 4
  %235 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist258 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %235, i32 0, i32 6
  %236 = load i32, i32* %diffusion_dist258, align 4
  %div259 = sdiv i32 %236, 2
  %cmp260 = icmp sle i32 %234, %div259
  br i1 %cmp260, label %for.body.262, label %for.end.315

for.body.262:                                     ; preds = %for.cond.257
  %237 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity263 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %237, i32 0, i32 5
  %238 = load double, double* %env_sensitivity263, align 8
  %239 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %240 = load i32, i32* %pos.addr, align 4
  %241 = load i32, i32* %index, align 4
  %add264 = add nsw i32 %240, %241
  %cmp265 = icmp slt i32 %add264, 0
  br i1 %cmp265, label %cond.true.267, label %cond.false.270

cond.true.267:                                    ; preds = %for.body.262
  %242 = load i32, i32* %size.addr, align 4
  %243 = load i32, i32* %pos.addr, align 4
  %add268 = add nsw i32 %242, %243
  %244 = load i32, i32* %index, align 4
  %add269 = add nsw i32 %add268, %244
  br label %cond.end.281

cond.false.270:                                   ; preds = %for.body.262
  %245 = load i32, i32* %size.addr, align 4
  %246 = load i32, i32* %pos.addr, align 4
  %247 = load i32, i32* %index, align 4
  %add271 = add nsw i32 %246, %247
  %cmp272 = icmp sle i32 %245, %add271
  br i1 %cmp272, label %cond.true.274, label %cond.false.277

cond.true.274:                                    ; preds = %cond.false.270
  %248 = load i32, i32* %pos.addr, align 4
  %249 = load i32, i32* %index, align 4
  %add275 = add nsw i32 %248, %249
  %250 = load i32, i32* %size.addr, align 4
  %sub276 = sub nsw i32 %add275, %250
  br label %cond.end.279

cond.false.277:                                   ; preds = %cond.false.270
  %251 = load i32, i32* %pos.addr, align 4
  %252 = load i32, i32* %index, align 4
  %add278 = add nsw i32 %251, %252
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.277, %cond.true.274
  %cond280 = phi i32 [ %sub276, %cond.true.274 ], [ %add278, %cond.false.277 ]
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.end.279, %cond.true.267
  %cond282 = phi i32 [ %add269, %cond.true.267 ], [ %cond280, %cond.end.279 ]
  %idxprom283 = sext i32 %cond282 to i64
  %253 = load double*, double** %vec.addr, align 8
  %arrayidx284 = getelementptr inbounds double, double* %253, i64 %idxprom283
  %254 = load double, double* %arrayidx284, align 8
  %255 = load double, double* %power.addr, align 8
  %call285 = call double @logistic_function(%struct.CML_PARAM* %239, double %254, double %255)
  %mul286 = fmul double %238, %call285
  %256 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity287 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %256, i32 0, i32 5
  %257 = load double, double* %env_sensitivity287, align 8
  %258 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %259 = load i32, i32* %pos.addr, align 4
  %260 = load i32, i32* %index, align 4
  %sub288 = sub nsw i32 %259, %260
  %cmp289 = icmp slt i32 %sub288, 0
  br i1 %cmp289, label %cond.true.291, label %cond.false.294

cond.true.291:                                    ; preds = %cond.end.281
  %261 = load i32, i32* %size.addr, align 4
  %262 = load i32, i32* %pos.addr, align 4
  %add292 = add nsw i32 %261, %262
  %263 = load i32, i32* %index, align 4
  %sub293 = sub nsw i32 %add292, %263
  br label %cond.end.305

cond.false.294:                                   ; preds = %cond.end.281
  %264 = load i32, i32* %size.addr, align 4
  %265 = load i32, i32* %pos.addr, align 4
  %266 = load i32, i32* %index, align 4
  %sub295 = sub nsw i32 %265, %266
  %cmp296 = icmp sle i32 %264, %sub295
  br i1 %cmp296, label %cond.true.298, label %cond.false.301

cond.true.298:                                    ; preds = %cond.false.294
  %267 = load i32, i32* %pos.addr, align 4
  %268 = load i32, i32* %index, align 4
  %sub299 = sub nsw i32 %267, %268
  %269 = load i32, i32* %size.addr, align 4
  %sub300 = sub nsw i32 %sub299, %269
  br label %cond.end.303

cond.false.301:                                   ; preds = %cond.false.294
  %270 = load i32, i32* %pos.addr, align 4
  %271 = load i32, i32* %index, align 4
  %sub302 = sub nsw i32 %270, %271
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.301, %cond.true.298
  %cond304 = phi i32 [ %sub300, %cond.true.298 ], [ %sub302, %cond.false.301 ]
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.end.303, %cond.true.291
  %cond306 = phi i32 [ %sub293, %cond.true.291 ], [ %cond304, %cond.end.303 ]
  %idxprom307 = sext i32 %cond306 to i64
  %272 = load double*, double** %vec.addr, align 8
  %arrayidx308 = getelementptr inbounds double, double* %272, i64 %idxprom307
  %273 = load double, double* %arrayidx308, align 8
  %274 = load double, double* %power.addr, align 8
  %call309 = call double @logistic_function(%struct.CML_PARAM* %258, double %273, double %274)
  %mul310 = fmul double %257, %call309
  %add311 = fadd double %mul286, %mul310
  %275 = load double, double* %env_factor, align 8
  %add312 = fadd double %275, %add311
  store double %add312, double* %env_factor, align 8
  br label %for.inc.313

for.inc.313:                                      ; preds = %cond.end.305
  %276 = load i32, i32* %index, align 4
  %inc314 = add nsw i32 %276, 1
  store i32 %inc314, i32* %index, align 4
  br label %for.cond.257

for.end.315:                                      ; preds = %for.cond.257
  %277 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist316 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %277, i32 0, i32 6
  %278 = load i32, i32* %diffusion_dist316, align 4
  %rem317 = srem i32 %278, 2
  %cmp318 = icmp eq i32 %rem317, 1
  br i1 %cmp318, label %if.then.320, label %if.end.372

if.then.320:                                      ; preds = %for.end.315
  %279 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity321 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %279, i32 0, i32 5
  %280 = load double, double* %env_sensitivity321, align 8
  %281 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %282 = load i32, i32* %pos.addr, align 4
  %283 = load i32, i32* %index, align 4
  %add322 = add nsw i32 %282, %283
  %cmp323 = icmp slt i32 %add322, 0
  br i1 %cmp323, label %cond.true.325, label %cond.false.328

cond.true.325:                                    ; preds = %if.then.320
  %284 = load i32, i32* %size.addr, align 4
  %285 = load i32, i32* %pos.addr, align 4
  %add326 = add nsw i32 %284, %285
  %286 = load i32, i32* %index, align 4
  %add327 = add nsw i32 %add326, %286
  br label %cond.end.339

cond.false.328:                                   ; preds = %if.then.320
  %287 = load i32, i32* %size.addr, align 4
  %288 = load i32, i32* %pos.addr, align 4
  %289 = load i32, i32* %index, align 4
  %add329 = add nsw i32 %288, %289
  %cmp330 = icmp sle i32 %287, %add329
  br i1 %cmp330, label %cond.true.332, label %cond.false.335

cond.true.332:                                    ; preds = %cond.false.328
  %290 = load i32, i32* %pos.addr, align 4
  %291 = load i32, i32* %index, align 4
  %add333 = add nsw i32 %290, %291
  %292 = load i32, i32* %size.addr, align 4
  %sub334 = sub nsw i32 %add333, %292
  br label %cond.end.337

cond.false.335:                                   ; preds = %cond.false.328
  %293 = load i32, i32* %pos.addr, align 4
  %294 = load i32, i32* %index, align 4
  %add336 = add nsw i32 %293, %294
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.false.335, %cond.true.332
  %cond338 = phi i32 [ %sub334, %cond.true.332 ], [ %add336, %cond.false.335 ]
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.end.337, %cond.true.325
  %cond340 = phi i32 [ %add327, %cond.true.325 ], [ %cond338, %cond.end.337 ]
  %idxprom341 = sext i32 %cond340 to i64
  %295 = load double*, double** %vec.addr, align 8
  %arrayidx342 = getelementptr inbounds double, double* %295, i64 %idxprom341
  %296 = load double, double* %arrayidx342, align 8
  %297 = load double, double* %power.addr, align 8
  %call343 = call double @logistic_function(%struct.CML_PARAM* %281, double %296, double %297)
  %mul344 = fmul double %280, %call343
  %298 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity345 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %298, i32 0, i32 5
  %299 = load double, double* %env_sensitivity345, align 8
  %300 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %301 = load i32, i32* %pos.addr, align 4
  %302 = load i32, i32* %index, align 4
  %sub346 = sub nsw i32 %301, %302
  %cmp347 = icmp slt i32 %sub346, 0
  br i1 %cmp347, label %cond.true.349, label %cond.false.352

cond.true.349:                                    ; preds = %cond.end.339
  %303 = load i32, i32* %size.addr, align 4
  %304 = load i32, i32* %pos.addr, align 4
  %add350 = add nsw i32 %303, %304
  %305 = load i32, i32* %index, align 4
  %sub351 = sub nsw i32 %add350, %305
  br label %cond.end.363

cond.false.352:                                   ; preds = %cond.end.339
  %306 = load i32, i32* %size.addr, align 4
  %307 = load i32, i32* %pos.addr, align 4
  %308 = load i32, i32* %index, align 4
  %sub353 = sub nsw i32 %307, %308
  %cmp354 = icmp sle i32 %306, %sub353
  br i1 %cmp354, label %cond.true.356, label %cond.false.359

cond.true.356:                                    ; preds = %cond.false.352
  %309 = load i32, i32* %pos.addr, align 4
  %310 = load i32, i32* %index, align 4
  %sub357 = sub nsw i32 %309, %310
  %311 = load i32, i32* %size.addr, align 4
  %sub358 = sub nsw i32 %sub357, %311
  br label %cond.end.361

cond.false.359:                                   ; preds = %cond.false.352
  %312 = load i32, i32* %pos.addr, align 4
  %313 = load i32, i32* %index, align 4
  %sub360 = sub nsw i32 %312, %313
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.359, %cond.true.356
  %cond362 = phi i32 [ %sub358, %cond.true.356 ], [ %sub360, %cond.false.359 ]
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.end.361, %cond.true.349
  %cond364 = phi i32 [ %sub351, %cond.true.349 ], [ %cond362, %cond.end.361 ]
  %idxprom365 = sext i32 %cond364 to i64
  %314 = load double*, double** %vec.addr, align 8
  %arrayidx366 = getelementptr inbounds double, double* %314, i64 %idxprom365
  %315 = load double, double* %arrayidx366, align 8
  %316 = load double, double* %power.addr, align 8
  %call367 = call double @logistic_function(%struct.CML_PARAM* %300, double %315, double %316)
  %mul368 = fmul double %299, %call367
  %add369 = fadd double %mul344, %mul368
  %div370 = fdiv double %add369, 2.000000e+00
  %317 = load double, double* %env_factor, align 8
  %add371 = fadd double %317, %div370
  store double %add371, double* %env_factor, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %cond.end.363, %for.end.315
  %318 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist373 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %318, i32 0, i32 6
  %319 = load i32, i32* %diffusion_dist373, align 4
  %conv374 = sitofp i32 %319 to double
  %320 = load double, double* %env_factor, align 8
  %div375 = fdiv double %320, %conv374
  store double %div375, double* %env_factor, align 8
  %321 = load double, double* %env_factor, align 8
  %322 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity376 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %322, i32 0, i32 7
  %323 = load double, double* %ch_sensitivity376, align 8
  %324 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %325 = load double, double* %c1.addr, align 8
  %326 = load double, double* %power.addr, align 8
  %call377 = call double @logistic_function(%struct.CML_PARAM* %324, double %325, double %326)
  %mul378 = fmul double %323, %call377
  %add379 = fadd double %321, %mul378
  %327 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity380 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %327, i32 0, i32 7
  %328 = load double, double* %ch_sensitivity380, align 8
  %329 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %330 = load double, double* %c2.addr, align 8
  %331 = load double, double* %power.addr, align 8
  %call381 = call double @logistic_function(%struct.CML_PARAM* %329, double %330, double %331)
  %mul382 = fmul double %328, %call381
  %add383 = fadd double %add379, %mul382
  %div384 = fdiv double %add383, 2.000000e+00
  store double %div384, double* %by_env, align 8
  %332 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate385 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %332, i32 0, i32 4
  %333 = load double, double* %mod_rate385, align 8
  %334 = load double, double* %self_diff, align 8
  %335 = load double, double* %by_env, align 8
  %add386 = fadd double %334, %335
  %mul387 = fmul double %333, %add386
  %336 = load double, double* %tmp, align 8
  %call388 = call double @pow(double %mul387, double %336) #4
  store double %call388, double* %diff, align 8
  %337 = load double, double* %hold_rate, align 8
  %338 = load i32, i32* %pos.addr, align 4
  %idxprom389 = sext i32 %338 to i64
  %339 = load double*, double** %vec.addr, align 8
  %arrayidx390 = getelementptr inbounds double, double* %339, i64 %idxprom389
  %340 = load double, double* %arrayidx390, align 8
  %mul391 = fmul double %337, %340
  %341 = load double, double* %diff, align 8
  %add392 = fadd double %mul391, %341
  store double %add392, double* %val, align 8
  br label %sw.epilog

sw.bb.393:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.393
  %342 = load double, double* %self_mod_rate, align 8
  %343 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %344 = load i32, i32* %pos.addr, align 4
  %idxprom394 = sext i32 %344 to i64
  %345 = load double*, double** %vec.addr, align 8
  %arrayidx395 = getelementptr inbounds double, double* %345, i64 %idxprom394
  %346 = load double, double* %arrayidx395, align 8
  %347 = load double, double* %power.addr, align 8
  %call396 = call double @logistic_function(%struct.CML_PARAM* %343, double %346, double %347)
  %mul397 = fmul double %342, %call396
  store double %mul397, double* %self_diff, align 8
  store i32 1, i32* %index, align 4
  br label %for.cond.398

for.cond.398:                                     ; preds = %for.inc.454, %sw.default
  %348 = load i32, i32* %index, align 4
  %349 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist399 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %349, i32 0, i32 6
  %350 = load i32, i32* %diffusion_dist399, align 4
  %div400 = sdiv i32 %350, 2
  %cmp401 = icmp sle i32 %348, %div400
  br i1 %cmp401, label %for.body.403, label %for.end.456

for.body.403:                                     ; preds = %for.cond.398
  %351 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity404 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %351, i32 0, i32 5
  %352 = load double, double* %env_sensitivity404, align 8
  %353 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %354 = load i32, i32* %pos.addr, align 4
  %355 = load i32, i32* %index, align 4
  %add405 = add nsw i32 %354, %355
  %cmp406 = icmp slt i32 %add405, 0
  br i1 %cmp406, label %cond.true.408, label %cond.false.411

cond.true.408:                                    ; preds = %for.body.403
  %356 = load i32, i32* %size.addr, align 4
  %357 = load i32, i32* %pos.addr, align 4
  %add409 = add nsw i32 %356, %357
  %358 = load i32, i32* %index, align 4
  %add410 = add nsw i32 %add409, %358
  br label %cond.end.422

cond.false.411:                                   ; preds = %for.body.403
  %359 = load i32, i32* %size.addr, align 4
  %360 = load i32, i32* %pos.addr, align 4
  %361 = load i32, i32* %index, align 4
  %add412 = add nsw i32 %360, %361
  %cmp413 = icmp sle i32 %359, %add412
  br i1 %cmp413, label %cond.true.415, label %cond.false.418

cond.true.415:                                    ; preds = %cond.false.411
  %362 = load i32, i32* %pos.addr, align 4
  %363 = load i32, i32* %index, align 4
  %add416 = add nsw i32 %362, %363
  %364 = load i32, i32* %size.addr, align 4
  %sub417 = sub nsw i32 %add416, %364
  br label %cond.end.420

cond.false.418:                                   ; preds = %cond.false.411
  %365 = load i32, i32* %pos.addr, align 4
  %366 = load i32, i32* %index, align 4
  %add419 = add nsw i32 %365, %366
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.418, %cond.true.415
  %cond421 = phi i32 [ %sub417, %cond.true.415 ], [ %add419, %cond.false.418 ]
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.end.420, %cond.true.408
  %cond423 = phi i32 [ %add410, %cond.true.408 ], [ %cond421, %cond.end.420 ]
  %idxprom424 = sext i32 %cond423 to i64
  %367 = load double*, double** %vec.addr, align 8
  %arrayidx425 = getelementptr inbounds double, double* %367, i64 %idxprom424
  %368 = load double, double* %arrayidx425, align 8
  %369 = load double, double* %power.addr, align 8
  %call426 = call double @logistic_function(%struct.CML_PARAM* %353, double %368, double %369)
  %mul427 = fmul double %352, %call426
  %370 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity428 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %370, i32 0, i32 5
  %371 = load double, double* %env_sensitivity428, align 8
  %372 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %373 = load i32, i32* %pos.addr, align 4
  %374 = load i32, i32* %index, align 4
  %sub429 = sub nsw i32 %373, %374
  %cmp430 = icmp slt i32 %sub429, 0
  br i1 %cmp430, label %cond.true.432, label %cond.false.435

cond.true.432:                                    ; preds = %cond.end.422
  %375 = load i32, i32* %size.addr, align 4
  %376 = load i32, i32* %pos.addr, align 4
  %add433 = add nsw i32 %375, %376
  %377 = load i32, i32* %index, align 4
  %sub434 = sub nsw i32 %add433, %377
  br label %cond.end.446

cond.false.435:                                   ; preds = %cond.end.422
  %378 = load i32, i32* %size.addr, align 4
  %379 = load i32, i32* %pos.addr, align 4
  %380 = load i32, i32* %index, align 4
  %sub436 = sub nsw i32 %379, %380
  %cmp437 = icmp sle i32 %378, %sub436
  br i1 %cmp437, label %cond.true.439, label %cond.false.442

cond.true.439:                                    ; preds = %cond.false.435
  %381 = load i32, i32* %pos.addr, align 4
  %382 = load i32, i32* %index, align 4
  %sub440 = sub nsw i32 %381, %382
  %383 = load i32, i32* %size.addr, align 4
  %sub441 = sub nsw i32 %sub440, %383
  br label %cond.end.444

cond.false.442:                                   ; preds = %cond.false.435
  %384 = load i32, i32* %pos.addr, align 4
  %385 = load i32, i32* %index, align 4
  %sub443 = sub nsw i32 %384, %385
  br label %cond.end.444

cond.end.444:                                     ; preds = %cond.false.442, %cond.true.439
  %cond445 = phi i32 [ %sub441, %cond.true.439 ], [ %sub443, %cond.false.442 ]
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.end.444, %cond.true.432
  %cond447 = phi i32 [ %sub434, %cond.true.432 ], [ %cond445, %cond.end.444 ]
  %idxprom448 = sext i32 %cond447 to i64
  %386 = load double*, double** %vec.addr, align 8
  %arrayidx449 = getelementptr inbounds double, double* %386, i64 %idxprom448
  %387 = load double, double* %arrayidx449, align 8
  %388 = load double, double* %power.addr, align 8
  %call450 = call double @logistic_function(%struct.CML_PARAM* %372, double %387, double %388)
  %mul451 = fmul double %371, %call450
  %add452 = fadd double %mul427, %mul451
  %389 = load double, double* %env_factor, align 8
  %add453 = fadd double %389, %add452
  store double %add453, double* %env_factor, align 8
  br label %for.inc.454

for.inc.454:                                      ; preds = %cond.end.446
  %390 = load i32, i32* %index, align 4
  %inc455 = add nsw i32 %390, 1
  store i32 %inc455, i32* %index, align 4
  br label %for.cond.398

for.end.456:                                      ; preds = %for.cond.398
  %391 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist457 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %391, i32 0, i32 6
  %392 = load i32, i32* %diffusion_dist457, align 4
  %rem458 = srem i32 %392, 2
  %cmp459 = icmp eq i32 %rem458, 1
  br i1 %cmp459, label %if.then.461, label %if.end.513

if.then.461:                                      ; preds = %for.end.456
  %393 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity462 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %393, i32 0, i32 5
  %394 = load double, double* %env_sensitivity462, align 8
  %395 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %396 = load i32, i32* %pos.addr, align 4
  %397 = load i32, i32* %index, align 4
  %add463 = add nsw i32 %396, %397
  %cmp464 = icmp slt i32 %add463, 0
  br i1 %cmp464, label %cond.true.466, label %cond.false.469

cond.true.466:                                    ; preds = %if.then.461
  %398 = load i32, i32* %size.addr, align 4
  %399 = load i32, i32* %pos.addr, align 4
  %add467 = add nsw i32 %398, %399
  %400 = load i32, i32* %index, align 4
  %add468 = add nsw i32 %add467, %400
  br label %cond.end.480

cond.false.469:                                   ; preds = %if.then.461
  %401 = load i32, i32* %size.addr, align 4
  %402 = load i32, i32* %pos.addr, align 4
  %403 = load i32, i32* %index, align 4
  %add470 = add nsw i32 %402, %403
  %cmp471 = icmp sle i32 %401, %add470
  br i1 %cmp471, label %cond.true.473, label %cond.false.476

cond.true.473:                                    ; preds = %cond.false.469
  %404 = load i32, i32* %pos.addr, align 4
  %405 = load i32, i32* %index, align 4
  %add474 = add nsw i32 %404, %405
  %406 = load i32, i32* %size.addr, align 4
  %sub475 = sub nsw i32 %add474, %406
  br label %cond.end.478

cond.false.476:                                   ; preds = %cond.false.469
  %407 = load i32, i32* %pos.addr, align 4
  %408 = load i32, i32* %index, align 4
  %add477 = add nsw i32 %407, %408
  br label %cond.end.478

cond.end.478:                                     ; preds = %cond.false.476, %cond.true.473
  %cond479 = phi i32 [ %sub475, %cond.true.473 ], [ %add477, %cond.false.476 ]
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.end.478, %cond.true.466
  %cond481 = phi i32 [ %add468, %cond.true.466 ], [ %cond479, %cond.end.478 ]
  %idxprom482 = sext i32 %cond481 to i64
  %409 = load double*, double** %vec.addr, align 8
  %arrayidx483 = getelementptr inbounds double, double* %409, i64 %idxprom482
  %410 = load double, double* %arrayidx483, align 8
  %411 = load double, double* %power.addr, align 8
  %call484 = call double @logistic_function(%struct.CML_PARAM* %395, double %410, double %411)
  %mul485 = fmul double %394, %call484
  %412 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %env_sensitivity486 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %412, i32 0, i32 5
  %413 = load double, double* %env_sensitivity486, align 8
  %414 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %415 = load i32, i32* %pos.addr, align 4
  %416 = load i32, i32* %index, align 4
  %sub487 = sub nsw i32 %415, %416
  %cmp488 = icmp slt i32 %sub487, 0
  br i1 %cmp488, label %cond.true.490, label %cond.false.493

cond.true.490:                                    ; preds = %cond.end.480
  %417 = load i32, i32* %size.addr, align 4
  %418 = load i32, i32* %pos.addr, align 4
  %add491 = add nsw i32 %417, %418
  %419 = load i32, i32* %index, align 4
  %sub492 = sub nsw i32 %add491, %419
  br label %cond.end.504

cond.false.493:                                   ; preds = %cond.end.480
  %420 = load i32, i32* %size.addr, align 4
  %421 = load i32, i32* %pos.addr, align 4
  %422 = load i32, i32* %index, align 4
  %sub494 = sub nsw i32 %421, %422
  %cmp495 = icmp sle i32 %420, %sub494
  br i1 %cmp495, label %cond.true.497, label %cond.false.500

cond.true.497:                                    ; preds = %cond.false.493
  %423 = load i32, i32* %pos.addr, align 4
  %424 = load i32, i32* %index, align 4
  %sub498 = sub nsw i32 %423, %424
  %425 = load i32, i32* %size.addr, align 4
  %sub499 = sub nsw i32 %sub498, %425
  br label %cond.end.502

cond.false.500:                                   ; preds = %cond.false.493
  %426 = load i32, i32* %pos.addr, align 4
  %427 = load i32, i32* %index, align 4
  %sub501 = sub nsw i32 %426, %427
  br label %cond.end.502

cond.end.502:                                     ; preds = %cond.false.500, %cond.true.497
  %cond503 = phi i32 [ %sub499, %cond.true.497 ], [ %sub501, %cond.false.500 ]
  br label %cond.end.504

cond.end.504:                                     ; preds = %cond.end.502, %cond.true.490
  %cond505 = phi i32 [ %sub492, %cond.true.490 ], [ %cond503, %cond.end.502 ]
  %idxprom506 = sext i32 %cond505 to i64
  %428 = load double*, double** %vec.addr, align 8
  %arrayidx507 = getelementptr inbounds double, double* %428, i64 %idxprom506
  %429 = load double, double* %arrayidx507, align 8
  %430 = load double, double* %power.addr, align 8
  %call508 = call double @logistic_function(%struct.CML_PARAM* %414, double %429, double %430)
  %mul509 = fmul double %413, %call508
  %add510 = fadd double %mul485, %mul509
  %div511 = fdiv double %add510, 2.000000e+00
  %431 = load double, double* %env_factor, align 8
  %add512 = fadd double %431, %div511
  store double %add512, double* %env_factor, align 8
  br label %if.end.513

if.end.513:                                       ; preds = %cond.end.504, %for.end.456
  %432 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %diffusion_dist514 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %432, i32 0, i32 6
  %433 = load i32, i32* %diffusion_dist514, align 4
  %conv515 = sitofp i32 %433 to double
  %434 = load double, double* %env_factor, align 8
  %div516 = fdiv double %434, %conv515
  store double %div516, double* %env_factor, align 8
  %435 = load double, double* %env_factor, align 8
  %436 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity517 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %436, i32 0, i32 7
  %437 = load double, double* %ch_sensitivity517, align 8
  %438 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %439 = load double, double* %c1.addr, align 8
  %440 = load double, double* %power.addr, align 8
  %call518 = call double @logistic_function(%struct.CML_PARAM* %438, double %439, double %440)
  %mul519 = fmul double %437, %call518
  %441 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %ch_sensitivity520 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %441, i32 0, i32 7
  %442 = load double, double* %ch_sensitivity520, align 8
  %443 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %444 = load double, double* %c2.addr, align 8
  %445 = load double, double* %power.addr, align 8
  %call521 = call double @logistic_function(%struct.CML_PARAM* %443, double %444, double %445)
  %mul522 = fmul double %442, %call521
  %add523 = fadd double %mul519, %mul522
  %div524 = fdiv double %add523, 2.000000e+00
  %add525 = fadd double %435, %div524
  store double %add525, double* %by_env, align 8
  %446 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mod_rate526 = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %446, i32 0, i32 4
  %447 = load double, double* %mod_rate526, align 8
  %448 = load double, double* %self_diff, align 8
  %449 = load double, double* %by_env, align 8
  %add527 = fadd double %448, %449
  %mul528 = fmul double %447, %add527
  store double %mul528, double* %diff, align 8
  %450 = load double, double* %hold_rate, align 8
  %451 = load i32, i32* %pos.addr, align 4
  %idxprom529 = sext i32 %451 to i64
  %452 = load double*, double** %vec.addr, align 8
  %arrayidx530 = getelementptr inbounds double, double* %452, i64 %idxprom529
  %453 = load double, double* %arrayidx530, align 8
  %mul531 = fmul double %450, %453
  %454 = load double, double* %diff, align 8
  %add532 = fadd double %mul531, %454
  store double %add532, double* %val, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.513, %if.end.372, %if.end.228, %if.end
  %455 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call533 = call double @g_rand_double(%struct._GRand* %455)
  %456 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mutation_rate = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %456, i32 0, i32 13
  %457 = load double, double* %mutation_rate, align 8
  %cmp534 = fcmp olt double %call533, %457
  br i1 %cmp534, label %if.then.536, label %if.end.545

if.then.536:                                      ; preds = %sw.epilog
  %458 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call537 = call double @g_rand_double(%struct._GRand* %458)
  %cmp538 = fcmp olt double %call537, 5.000000e-01
  %cond540 = select i1 %cmp538, double -1.000000e+00, double 1.000000e+00
  %459 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %mutation_dist = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %459, i32 0, i32 14
  %460 = load double, double* %mutation_dist, align 8
  %mul541 = fmul double %cond540, %460
  %461 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %call542 = call double @g_rand_double(%struct._GRand* %461)
  %mul543 = fmul double %mul541, %call542
  %462 = load double, double* %val, align 8
  %add544 = fadd double %462, %mul543
  store double %add544, double* %val, align 8
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.536, %sw.epilog
  %463 = load %struct.CML_PARAM*, %struct.CML_PARAM** %param.addr, align 8
  %cyclic_range = getelementptr inbounds %struct.CML_PARAM, %struct.CML_PARAM* %463, i32 0, i32 3
  %464 = load i32, i32* %cyclic_range, align 4
  %tobool = icmp ne i32 %464, 0
  br i1 %tobool, label %if.then.546, label %if.else.560

if.then.546:                                      ; preds = %if.end.545
  %465 = load double, double* %val, align 8
  %cmp547 = fcmp olt double 1.000000e+00, %465
  br i1 %cmp547, label %if.then.549, label %if.else

if.then.549:                                      ; preds = %if.then.546
  %466 = load double, double* %val, align 8
  %467 = load double, double* %val, align 8
  %conv550 = fptosi double %467 to i32
  %conv551 = sitofp i32 %conv550 to double
  %sub552 = fsub double %466, %conv551
  store double %sub552, double* %val, align 8
  br label %if.end.559

if.else:                                          ; preds = %if.then.546
  %468 = load double, double* %val, align 8
  %cmp553 = fcmp olt double %468, 0.000000e+00
  br i1 %cmp553, label %if.then.555, label %if.end.558

if.then.555:                                      ; preds = %if.else
  %469 = load double, double* %val, align 8
  %470 = load double, double* %val, align 8
  %call556 = call double @floor(double %470) #6
  %sub557 = fsub double %469, %call556
  store double %sub557, double* %val, align 8
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.555, %if.else
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %if.then.549
  br label %if.end.573

if.else.560:                                      ; preds = %if.end.545
  %471 = load double, double* %val, align 8
  %cmp561 = fcmp ogt double %471, 1.000000e+00
  br i1 %cmp561, label %cond.true.563, label %cond.false.564

cond.true.563:                                    ; preds = %if.else.560
  br label %cond.end.571

cond.false.564:                                   ; preds = %if.else.560
  %472 = load double, double* %val, align 8
  %cmp565 = fcmp olt double %472, 0.000000e+00
  br i1 %cmp565, label %cond.true.567, label %cond.false.568

cond.true.567:                                    ; preds = %cond.false.564
  br label %cond.end.569

cond.false.568:                                   ; preds = %cond.false.564
  %473 = load double, double* %val, align 8
  br label %cond.end.569

cond.end.569:                                     ; preds = %cond.false.568, %cond.true.567
  %cond570 = phi double [ 0.000000e+00, %cond.true.567 ], [ %473, %cond.false.568 ]
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.end.569, %cond.true.563
  %cond572 = phi double [ 1.000000e+00, %cond.true.563 ], [ %cond570, %cond.end.569 ]
  store double %cond572, double* %val, align 8
  br label %if.end.573

if.end.573:                                       ; preds = %cond.end.571, %if.end.559
  %474 = load double, double* %val, align 8
  ret double %474
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
