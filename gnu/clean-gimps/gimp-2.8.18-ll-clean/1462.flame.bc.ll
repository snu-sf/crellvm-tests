; ModuleID = './plug-ins/flame/flame.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.anon = type { i32, i32, i32, %struct.control_point }
%struct.control_point = type { [6 x %struct.xform], [256 x [3 x double]], double, i32, double, double, double, i32, i32, i32, [2 x double], double, double, double, double, i32, i32, i32, [2 x [2 x double]], [2 x [2 x double]] }
%struct.xform = type { [29 x double], [3 x [2 x double]], double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
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
%struct.frame_spec = type { double, %struct.control_point*, i32, double }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkFileChooser = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@config = global %struct.anon zeroinitializer, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"plug-in-flame\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Create cosmic recursive fractal flames\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Scott Draves\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"_Flame...\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"<Image>/Filters/Render/Nature\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Drawing flame\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"flame\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Flame\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gimp-flame\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@dialog = internal global %struct._GtkWidget* null, align 8
@flame_preview = internal global %struct._GtkWidget* null, align 8
@preview_width = internal global i32 0, align 4
@preview_height = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@load_button = internal global %struct._GtkWidget* null, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@save_button = internal global %struct._GtkWidget* null, align 8
@.str.26 = private unnamed_addr constant [11 x i8] c"_Rendering\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"_Brightness:\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Co_ntrast:\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"_Gamma:\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Sample _density:\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Spa_tial oversample:\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Spatial _filter radius:\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Color_map:\00", align 1
@flame_dialog.names = internal global [6 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [14 x i8] c"sunny harvest\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"rose\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"calcoast09\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"klee insula-dulcamara\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"ernst anti-pope\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"gris josette\00", align 1
@flame_dialog.good = internal constant [6 x i32] [i32 10, i32 20, i32 68, i32 79, i32 70, i32 75], align 16
@.str.41 = private unnamed_addr constant [16 x i8] c"Custom gradient\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"gimp-tool-blend\00", align 1
@cmap_preview = internal global %struct._GtkWidget* null, align 8
@.str.43 = private unnamed_addr constant [8 x i8] c"C_amera\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"_Zoom:\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@edit_cp = internal global %struct.control_point zeroinitializer, align 8
@edit_dialog = internal global %struct._GtkWidget* null, align 8
@.str.47 = private unnamed_addr constant [11 x i8] c"Edit Flame\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Directions\00", align 1
@edit_previews = internal global [9 x %struct._GtkWidget*] zeroinitializer, align 16
@.str.50 = private unnamed_addr constant [9 x i8] c"Controls\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"_Speed:\00", align 1
@pick_speed = internal global double 2.000000e-01, align 8
@.str.52 = private unnamed_addr constant [11 x i8] c"_Randomize\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"Same\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Sinusoidal\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Spherical\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Swirl\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"Horseshoe\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Polar\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Bent\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Handkerchief\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"Heart\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Disc\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Spiral\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"Hyperbolic\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"Ex\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"Julia\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"Waves\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"Fisheye\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Popcorn\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Exponential\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Cosine\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Rings\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"Fan\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"Eyefish\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Bubble\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Gaussian\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"_Variation:\00", align 1
@mutants = internal global [9 x %struct.control_point] zeroinitializer, align 16
@set_edit_preview.pf = internal global %struct.frame_spec { double 0.000000e+00, %struct.control_point* null, i32 1, double 0.000000e+00 }, align 8
@file_dialog = internal global %struct._GtkWidget* null, align 8
@load_save = internal global i32 0, align 4
@.str.86 = private unnamed_addr constant [11 x i8] c"Load Flame\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"'%s' is not a regular file\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@buffer = internal global [10000 x i8] zeroinitializer, align 16
@.str.91 = private unnamed_addr constant [14 x i8] c"plug_in_flame\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Save Flame\00", align 1
@set_flame_preview.pf = internal global %struct.frame_spec { double 0.000000e+00, %struct.control_point* null, i32 1, double 0.000000e+00 }, align 8
@.str.95 = private unnamed_addr constant [35 x i8] c"Flame works only on RGB drawables.\00", align 1
@f = internal global %struct.frame_spec { double 0.000000e+00, %struct.control_point* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.anon* @config to i8*), i64 16) to %struct.control_point*), i32 1, double 0.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %n_params, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n_params.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.17

if.else:                                          ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.anon* @config to i8*))
  call void @maybe_init_cp()
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 7), align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 8), align 4
  %11 = load i32, i32* %run_mode, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %call10 = call i32 @flame_dialog()
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %12)
  store i32 4, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.9
  br label %if.end.16

if.else.12:                                       ; preds = %if.else
  %13 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %cmp13 = icmp sge i32 %13, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else.12
  store i32 -3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %14 = load i32, i32* %status, align 4
  %cmp18 = icmp eq i32 %14, 3
  br i1 %cmp18, label %if.then.19, label %if.end.35

if.then.19:                                       ; preds = %if.end.17
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id, align 4
  %call20 = call i32 @gimp_drawable_is_rgb(i32 %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.33

if.then.22:                                       ; preds = %if.then.19
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0)) #4
  %call24 = call i32 @gimp_progress_init(i8* %call23)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width25, align 4
  %call26 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %18, %call26
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @flame(%struct._GimpDrawable* %19)
  %20 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp ne i32 %20, 1
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.22
  %call30 = call i32 @gimp_displays_flush()
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.22
  %call32 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (%struct.anon* @config to i8*), i32 8120)
  br label %if.end.34

if.else.33:                                       ; preds = %if.then.19
  store i32 0, i32* %status, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.end.31
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %21)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.17
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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
define internal void @maybe_init_cp() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 9), align 4
  %cmp = icmp eq i32 0, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  store i32 -2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  store i32 -3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  call void @random_control_point(%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3), i32 -1)
  store double 0.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 10, i64 0), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 10, i64 1), align 8
  store double 1.000000e+02, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 12), align 8
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 9), align 4
  store double 2.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 6), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 5), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 4), align 8
  store double 7.500000e-01, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 13), align 8
  store double 5.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 14), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 11), align 8
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 15), align 4
  store i32 200, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 16), align 4
  store i32 72, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 3), align 4
  store i32 256, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 7), align 4
  store i32 256, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 8), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @flame_dialog() #0 {
entry:
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %notebook = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %abox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  %aspect = alloca double, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label110 = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %box, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_alignment_new(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %abox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
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
  %call21 = call i64 @gtk_frame_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %28, i32 1)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %abox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_container_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call25 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** @flame_preview, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 7), align 4
  %conv = sitofp i32 %34 to double
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 8), align 4
  %conv26 = sitofp i32 %35 to double
  %div = fdiv double %conv, %conv26
  store double %div, double* %aspect, align 8
  %36 = load double, double* %aspect, align 8
  %cmp = fcmp ogt double %36, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 150, i32* @preview_width, align 4
  %37 = load double, double* %aspect, align 8
  %div28 = fdiv double 1.500000e+02, %37
  %conv29 = fptosi double %div28 to i32
  store i32 %conv29, i32* @preview_height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %38 = load double, double* %aspect, align 8
  %mul = fmul double 1.500000e+02, %38
  %conv30 = fptosi double %mul to i32
  store i32 %conv30, i32* @preview_width, align 4
  store i32 150, i32* @preview_height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** @flame_preview, align 8
  %40 = load i32, i32* @preview_width, align 4
  %41 = load i32, i32* @preview_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %39, i32 %40, i32 %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_container_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call31)
  %44 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkContainer*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @flame_preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %44, %struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** @flame_preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** @flame_preview, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @flame_preview_size_allocate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call34 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %vbox, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call35)
  %51 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call37 = call %struct._GtkWidget* @gtk_button_box_new(i32 1)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %vbbox, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call38)
  %56 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %56, i32 0)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call40)
  %59 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %59, i32 6)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call42)
  %62 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %63, i32 0, i32 0, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %call44 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0))
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %button, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_box_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call45)
  %67 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*)* @edit_callback to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %call48 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %call48, %struct._GtkWidget** @load_button, align 8
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call49)
  %76 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %76, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %80 = bitcast %struct._GtkWidget* %79 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @load_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call52 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %call52, %struct._GtkWidget** @save_button, align 8
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call53)
  %83 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %call55 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @save_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call56 = call %struct._GtkWidget* @gtk_notebook_new()
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %notebook, align 8
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call57)
  %90 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %90, %struct._GtkWidget* %91, i32 0, i32 0, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %92)
  %call59 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %box, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_container_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call60)
  %95 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %95, i32 12)
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #4
  %call63 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call62)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %label, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_notebook_get_type() #5
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call64)
  %98 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkNotebook*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call66 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %98, %struct._GtkWidget* %99, %struct._GtkWidget* %100)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  %call67 = call %struct._GtkWidget* @gtk_table_new(i32 6, i32 3, i32 0)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %table, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_table_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call68)
  %104 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %104, i32 6)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call70)
  %107 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %107, i32 2, i32 12)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call72 = call i64 @gtk_table_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call72)
  %110 = bitcast %struct._GTypeInstance* %call73 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %110, i32 6)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_box_get_type() #5
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call74)
  %113 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call76)
  %118 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)) #4
  %119 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 4), align 8
  %call79 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %118, i32 0, i32 0, i8* %call78, i32 150, i32 5, double %119, double 0.000000e+00, double 5.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call79, %struct._GtkObject** %adj, align 8
  %120 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %121 = bitcast %struct._GtkObject* %120 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %122 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %123 = bitcast %struct._GtkObject* %122 to i8*
  %call81 = call i64 @g_signal_connect_data(i8* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_flame_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_table_get_type() #5
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call82)
  %126 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkTable*
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #4
  %127 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 5), align 8
  %call85 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %126, i32 0, i32 1, i8* %call84, i32 150, i32 5, double %127, double 0.000000e+00, double 5.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call85, %struct._GtkObject** %adj, align 8
  %128 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %129 = bitcast %struct._GtkObject* %128 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %130 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %131 = bitcast %struct._GtkObject* %130 to i8*
  %call87 = call i64 @g_signal_connect_data(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_flame_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call88)
  %134 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #4
  %135 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 6), align 8
  %call91 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %134, i32 0, i32 2, i8* %call90, i32 150, i32 5, double %135, double 1.000000e+00, double 5.000000e+00, double 1.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call91, %struct._GtkObject** %adj, align 8
  %136 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %137 = bitcast %struct._GtkObject* %136 to i8*
  %call92 = call i64 @g_signal_connect_data(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 6) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %138 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %139 = bitcast %struct._GtkObject* %138 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_flame_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_table_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call94)
  %142 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkTable*
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0)) #4
  %143 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 14), align 8
  %call97 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %142, i32 0, i32 3, i8* %call96, i32 150, i32 5, double %143, double 1.000000e-01, double 2.000000e+01, double 1.000000e+00, double 5.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call97, %struct._GtkObject** %adj, align 8
  %144 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %145 = bitcast %struct._GtkObject* %144 to i8*
  %call98 = call i64 @g_signal_connect_data(i8* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 14) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_table_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call99)
  %148 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkTable*
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0)) #4
  %149 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 9), align 4
  %conv102 = sitofp i32 %149 to double
  %call103 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %148, i32 0, i32 4, i8* %call101, i32 150, i32 5, double %conv102, double 1.000000e+00, double 4.000000e+00, double 1.000000e-02, double 1.000000e-01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call103, %struct._GtkObject** %adj, align 8
  %150 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %151 = bitcast %struct._GtkObject* %150 to i8*
  %call104 = call i64 @g_signal_connect_data(i8* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 9) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_table_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call105)
  %154 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkTable*
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0)) #4
  %155 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 13), align 8
  %call108 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %154, i32 0, i32 5, i8* %call107, i32 150, i32 5, double %155, double 0.000000e+00, double 4.000000e+00, double 2.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call108, %struct._GtkObject** %adj, align 8
  %156 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %157 = bitcast %struct._GtkObject* %156 to i8*
  %call109 = call i64 @g_signal_connect_data(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 13) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call111 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %hbox, align 8
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %159 = bitcast %struct._GtkWidget* %158 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_box_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call112)
  %160 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkBox*
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %160, %struct._GtkWidget* %161, i32 0, i32 0, i32 0)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %162)
  %call114 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)) #4
  %call115 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call114)
  store %struct._GtkWidget* %call115, %struct._GtkWidget** %label110, align 8
  %163 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %164 = bitcast %struct._GtkWidget* %163 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_box_get_type() #5
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %164, i64 %call116)
  %165 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkBox*
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %label110, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %165, %struct._GtkWidget* %166, i32 0, i32 0, i32 0)
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %label110, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %167)
  %call118 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* @cmap_constrain, i8* null)
  store %struct._GtkWidget* %call118, %struct._GtkWidget** %combo, align 8
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %label110, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call119 = call i64 @gtk_label_get_type() #5
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call119)
  %170 = bitcast %struct._GTypeInstance* %call120 to %struct._GtkLabel*
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %170, %struct._GtkWidget* %171)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %172 = load i32, i32* %i, align 4
  %conv121 = sext i32 %172 to i64
  %cmp122 = icmp ult i64 %conv121, 6
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %173 = load i32, i32* %i, align 4
  %idxprom = sext i32 %173 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @flame_dialog.good, i32 0, i64 %idxprom
  %174 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 -4, %174
  store i32 %sub, i32* %value, align 4
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_int_combo_box_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call124)
  %177 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpIntComboBox*
  %178 = load i32, i32* %value, align 4
  %179 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %179 to i64
  %arrayidx127 = getelementptr inbounds [6 x i8*], [6 x i8*]* @flame_dialog.names, i32 0, i64 %idxprom126
  %180 = load i8*, i8** %arrayidx127, align 8
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %177, i32 0, i32 %178, i32 1, i8* %180, i32 -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %181 = load i32, i32* %i, align 4
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call128 = call i64 @gimp_int_combo_box_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call128)
  %184 = bitcast %struct._GTypeInstance* %call129 to %struct._GimpIntComboBox*
  %call130 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0)) #4
  call void (%struct._GimpIntComboBox*, ...) @gimp_int_combo_box_prepend(%struct._GimpIntComboBox* %184, i32 0, i32 -3, i32 1, i8* %call130, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 -1)
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %186 = bitcast %struct._GtkWidget* %185 to %struct._GTypeInstance*
  %call131 = call i64 @gimp_int_combo_box_get_type() #5
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call131)
  %187 = bitcast %struct._GTypeInstance* %call132 to %struct._GimpIntComboBox*
  %188 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %call133 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %187, i32 %188, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @cmap_callback to void ()*), i8* null)
  %189 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %190 = bitcast %struct._GtkWidget* %189 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_box_get_type() #5
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call134)
  %191 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkBox*
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %191, %struct._GtkWidget* %192, i32 1, i32 1, i32 0)
  %193 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %193)
  %call136 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call136, %struct._GtkWidget** @cmap_preview, align 8
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %194, i32 32, i32 32)
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_box_get_type() #5
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call137)
  %197 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkBox*
  %198 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %197, %struct._GtkWidget* %198, i32 0, i32 0, i32 0)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %199)
  call void @set_cmap_preview()
  %call139 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %table, align 8
  %200 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %201 = bitcast %struct._GtkWidget* %200 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %201, i64 %call140)
  %202 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %202, i32 6)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %204 = bitcast %struct._GtkWidget* %203 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_table_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %204, i64 %call142)
  %205 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %205, i32 6)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %207 = bitcast %struct._GtkWidget* %206 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_container_get_type() #5
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %207, i64 %call144)
  %208 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %208, i32 12)
  %call146 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0)) #4
  %call147 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call146)
  store %struct._GtkWidget* %call147, %struct._GtkWidget** %label, align 8
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %210 = bitcast %struct._GtkWidget* %209 to %struct._GTypeInstance*
  %call148 = call i64 @gtk_notebook_get_type() #5
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call148)
  %211 = bitcast %struct._GTypeInstance* %call149 to %struct._GtkNotebook*
  %212 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %call150 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %211, %struct._GtkWidget* %212, %struct._GtkWidget* %213)
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %214)
  %215 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %216 = bitcast %struct._GtkWidget* %215 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_table_get_type() #5
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call151)
  %217 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkTable*
  %call153 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0)) #4
  %218 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 11), align 8
  %call154 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %217, i32 0, i32 0, i8* %call153, i32 150, i32 0, double %218, double -4.000000e+00, double 4.000000e+00, double 5.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call154, %struct._GtkObject** %adj, align 8
  %219 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %220 = bitcast %struct._GtkObject* %219 to i8*
  %call155 = call i64 @g_signal_connect_data(i8* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 11) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %221 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %222 = bitcast %struct._GtkObject* %221 to i8*
  %call156 = call i64 @g_signal_connect_data(i8* %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_flame_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_table_get_type() #5
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call157)
  %225 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkTable*
  %call159 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #4
  %226 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 10, i64 0), align 8
  %call160 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %225, i32 0, i32 1, i8* %call159, i32 150, i32 0, double %226, double -2.000000e+00, double 2.000000e+00, double 5.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call160, %struct._GtkObject** %adj, align 8
  %227 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %228 = bitcast %struct._GtkObject* %227 to i8*
  %call161 = call i64 @g_signal_connect_data(i8* %228, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 10, i64 0) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %229 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %230 = bitcast %struct._GtkObject* %229 to i8*
  %call162 = call i64 @g_signal_connect_data(i8* %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_flame_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %232 = bitcast %struct._GtkWidget* %231 to %struct._GTypeInstance*
  %call163 = call i64 @gtk_table_get_type() #5
  %call164 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %232, i64 %call163)
  %233 = bitcast %struct._GTypeInstance* %call164 to %struct._GtkTable*
  %call165 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0)) #4
  %234 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 10, i64 1), align 8
  %call166 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %233, i32 0, i32 2, i8* %call165, i32 150, i32 0, double %234, double -2.000000e+00, double 2.000000e+00, double 5.000000e-01, double 1.000000e+00, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call166, %struct._GtkObject** %adj, align 8
  %235 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %236 = bitcast %struct._GtkObject* %235 to i8*
  %call167 = call i64 @g_signal_connect_data(i8* %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 10, i64 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %237 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %238 = bitcast %struct._GtkObject* %237 to i8*
  %call168 = call i64 @g_signal_connect_data(i8* %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_flame_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  call void @set_flame_preview()
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %239)
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  %241 = bitcast %struct._GtkWidget* %240 to %struct._GTypeInstance*
  %call169 = call i64 @gimp_dialog_get_type() #5
  %call170 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %241, i64 %call169)
  %242 = bitcast %struct._GTypeInstance* %call170 to %struct._GimpDialog*
  %call171 = call i32 @gimp_dialog_run(%struct._GimpDialog* %242)
  %cmp172 = icmp eq i32 %call171, -5
  %conv173 = zext i1 %cmp172 to i32
  store i32 %conv173, i32* %run, align 4
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** @dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %243)
  %244 = load i32, i32* %run, align 4
  ret i32 %244
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @flame(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %bytes = alloca i32, align 4
  %pr = alloca %struct._GimpPixelRgn, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %src_pr = alloca %struct._GimpPixelRgn, align 8
  %dst_pr = alloca %struct._GimpPixelRgn, align 8
  %sl = alloca i8*, align 8
  %rr = alloca i8*, align 8
  %sld = alloca i8*, align 8
  %k = alloca i32, align 4
  %alpha = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width2, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height3, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 3
  %5 = load i32, i32* %bpp, align 4
  store i32 %5, i32* %bytes, align 4
  %6 = load i32, i32* %bytes, align 4
  %cmp = icmp ne i32 3, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %bytes, align 4
  %cmp4 = icmp ne i32 4, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.95, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %8, %9
  %mul5 = mul nsw i32 %mul, 4
  %conv = sext i32 %mul5 to i64
  %call6 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call6, i8** %tmp, align 8
  %10 = load i32, i32* %width, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 7), align 4
  %11 = load i32, i32* %height, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 8), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 0), align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  call void @random_control_point(%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3), i32 %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  call void @drawable_to_cmap(%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3))
  %14 = load i8*, i8** %tmp, align 8
  %15 = load i32, i32* %width, align 4
  call void @render_rectangle(%struct.frame_spec* @f, i8* %14, i32 %15, i32 0, i32 4, i32 (double)* @gimp_progress_update)
  %call9 = call i32 @gimp_progress_update(double 1.000000e+00)
  %16 = load i32, i32* %bytes, align 4
  %cmp10 = icmp eq i32 4, %16
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pr, %struct._GimpDrawable* %17, i32 0, i32 0, i32 %18, i32 %19, i32 1, i32 1)
  %20 = load i8*, i8** %tmp, align 8
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pr, i8* %20, i32 0, i32 0, i32 %21, i32 %22)
  br label %if.end.65

if.else:                                          ; preds = %if.end.8
  %23 = load i32, i32* %bytes, align 4
  %cmp14 = icmp eq i32 3, %23
  br i1 %cmp14, label %if.then.16, label %if.end.64

if.then.16:                                       ; preds = %if.else
  %24 = load i32, i32* %width, align 4
  %mul22 = mul nsw i32 3, %24
  %conv23 = sext i32 %mul22 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 1)
  store i8* %call24, i8** %sl, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_pr, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %26, i32 %27, i32 0, i32 0)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dst_pr, %struct._GimpDrawable* %28, i32 0, i32 0, i32 %29, i32 %30, i32 1, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %if.then.16
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %height, align 4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %33 = load i8*, i8** %tmp, align 8
  %34 = load i32, i32* %i, align 4
  %mul28 = mul nsw i32 4, %34
  %35 = load i32, i32* %width, align 4
  %mul29 = mul nsw i32 %mul28, %35
  %idx.ext = sext i32 %mul29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %rr, align 8
  %36 = load i8*, i8** %sl, align 8
  store i8* %36, i8** %sld, align 8
  %37 = load i8*, i8** %sl, align 8
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_pr, i8* %37, i32 0, i32 %38, i32 %39, i32 1)
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.58, %for.body
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %width, align 4
  %cmp32 = icmp slt i32 %40, %41
  br i1 %cmp32, label %for.body.34, label %for.end.60

for.body.34:                                      ; preds = %for.cond.31
  %42 = load i8*, i8** %rr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 3
  %43 = load i8, i8* %arrayidx, align 1
  %conv37 = zext i8 %43 to i32
  store i32 %conv37, i32* %alpha, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %for.body.34
  %44 = load i32, i32* %k, align 4
  %cmp39 = icmp slt i32 %44, 3
  br i1 %cmp39, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.38
  %45 = load i32, i32* %k, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load i8*, i8** %rr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %46, i64 %idxprom
  %47 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %47 to i32
  %48 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %48 to i64
  %49 = load i8*, i8** %sld, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %49, i64 %idxprom45
  %50 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %50 to i32
  %51 = load i32, i32* %alpha, align 4
  %sub = sub nsw i32 256, %51
  %mul48 = mul nsw i32 %conv47, %sub
  %shr = ashr i32 %mul48, 8
  %add = add nsw i32 %conv44, %shr
  store i32 %add, i32* %t, align 4
  %52 = load i32, i32* %t, align 4
  %cmp49 = icmp sgt i32 %52, 255
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.41
  store i32 255, i32* %t, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.body.41
  %53 = load i32, i32* %t, align 4
  %conv53 = trunc i32 %53 to i8
  %54 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load i8*, i8** %sld, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %55, i64 %idxprom54
  store i8 %conv53, i8* %arrayidx55, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %56 = load i32, i32* %k, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.38

for.end:                                          ; preds = %for.cond.38
  %57 = load i8*, i8** %rr, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %add.ptr56, i8** %rr, align 8
  %58 = load i8*, i8** %sld, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %58, i64 3
  store i8* %add.ptr57, i8** %sld, align 8
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end
  %59 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %59, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.31

for.end.60:                                       ; preds = %for.cond.31
  %60 = load i8*, i8** %sl, align 8
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dst_pr, i8* %60, i32 0, i32 %61, i32 %62, i32 1)
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.60
  %63 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %63, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %64 = load i8*, i8** %sl, align 8
  call void @g_free(i8* %64)
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %if.else
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.12
  %65 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %65)
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %66)
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %67, i32 0, i32 0
  %68 = load i32, i32* %drawable_id, align 4
  %call66 = call i32 @gimp_drawable_merge_shadow(i32 %68, i32 1)
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %69, i32 0, i32 0
  %70 = load i32, i32* %drawable_id67, align 4
  %71 = load i32, i32* %width, align 4
  %72 = load i32, i32* %height, align 4
  %call68 = call i32 @gimp_drawable_update(i32 %70, i32 0, i32 0, i32 %71, i32 %72)
  br label %return

return:                                           ; preds = %if.end.65, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @random_control_point(%struct.control_point*, i32) #1

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

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

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @flame_preview_size_allocate(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  call void @set_flame_preview()
  ret void
}

declare %struct._GtkWidget* @gtk_button_box_new(i32) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @edit_callback(%struct._GtkWidget* %widget, %struct._GtkWidget* %parent) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mut = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.control_point* @edit_cp to i8*), i8* bitcast (%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3) to i8*), i64 8104, i32 8, i1 false)
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @edit_dialog, align 8
  %cmp = icmp eq %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %struct._GtkWidget* %1, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** @edit_dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @edit_dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call2)
  %4 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %4, i32 -5, i32 -6, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** @edit_dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @edit_dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @edit_response to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 0)
  %call5 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %main_vbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_container_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %11, i32 12)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @edit_dialog, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  %call10 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %14)
  %15 = bitcast %struct._GtkWidget* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0)) #4
  %call14 = call %struct._GtkWidget* @gimp_frame_new(i8* %call13)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %frame, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %20, %struct._GtkWidget* %21, i32 0, i32 0, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %22)
  %call17 = call %struct._GtkWidget* @gtk_table_new(i32 3, i32 3, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %table, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_table_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call18)
  %25 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %25, i32 6)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_table_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_container_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call22)
  %31 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkContainer*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %31, %struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.then
  %34 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %34, 3
  br i1 %cmp24, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %35 = load i32, i32* %j, align 4
  %cmp26 = icmp slt i32 %35, 3
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %36, 3
  %37 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %37
  store i32 %add, i32* %mut, align 4
  %call28 = call %struct._GtkWidget* @gimp_preview_area_new()
  %38 = load i32, i32* %mut, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 %idxprom
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %arrayidx, align 8
  %39 = load i32, i32* %mut, align 4
  %idxprom29 = sext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 %idxprom29
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx30, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %40, i32 85, i32 85)
  %call31 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %button, align 8
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call32)
  %43 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  %44 = load i32, i32* %mut, align 4
  %idxprom34 = sext i32 %44 to i64
  %arrayidx35 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 %idxprom34
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx35, align 8
  call void @gtk_container_add(%struct._GtkContainer* %43, %struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_table_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call36)
  %48 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTable*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %51, 1
  %52 = load i32, i32* %j, align 4
  %53 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %53, 1
  call void @gtk_table_attach(%struct._GtkTable* %48, %struct._GtkWidget* %49, i32 %50, i32 %add38, i32 %52, i32 %add39, i32 1, i32 1, i32 0, i32 0)
  %54 = load i32, i32* %mut, align 4
  %idxprom40 = sext i32 %54 to i64
  %arrayidx41 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 %idxprom40
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx41, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %55)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load i32, i32* %mut, align 4
  %conv = sext i32 %59 to i64
  %60 = inttoptr i64 %conv to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @preview_clicked to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body.27
  %61 = load i32, i32* %j, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end
  %62 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %62, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 0), align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @edit_preview_size_allocate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0)) #4
  %call48 = call %struct._GtkWidget* @gimp_frame_new(i8* %call47)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %frame, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call49)
  %67 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %67, %struct._GtkWidget* %68, i32 0, i32 0, i32 0)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %call51 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %vbox, align 8
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_container_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call52)
  %72 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkContainer*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %72, %struct._GtkWidget* %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %call54 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %table, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_table_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call55)
  %77 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %77, i32 6)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call57)
  %80 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %80, %struct._GtkWidget* %81, i32 0, i32 0, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %82)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_table_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call59)
  %85 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTable*
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0)) #4
  %86 = load double, double* @pick_speed, align 8
  %call62 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %85, i32 0, i32 0, i8* %call61, i32 150, i32 0, double %86, double 5.000000e-02, double 5.000000e-01, double 1.000000e-02, double 1.000000e-01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call62, %struct._GtkObject** %adj, align 8
  %87 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %88 = bitcast %struct._GtkObject* %87 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* @pick_speed to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %89 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %90 = bitcast %struct._GtkObject* %89 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void ()* @set_edit_preview, i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call65 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %hbox, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call66)
  %93 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0)) #4
  %call69 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call68)
  store %struct._GtkWidget* %call69, %struct._GtkWidget** %button, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_bin_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call70)
  %98 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkBin*
  %call72 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %98)
  %99 = bitcast %struct._GtkWidget* %call72 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_misc_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call73)
  %100 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %100, i32 2, i32 0)
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call75)
  %103 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %103, %struct._GtkWidget* %104, i32 0, i32 0, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @randomize_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 2)
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0)) #4
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)) #4
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)) #4
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0)) #4
  %call82 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0)) #4
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #4
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0)) #4
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0)) #4
  %call86 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0)) #4
  %call87 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0)) #4
  %call88 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0)) #4
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0)) #4
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0)) #4
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0)) #4
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0)) #4
  %call93 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)) #4
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0)) #4
  %call95 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #4
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)) #4
  %call97 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0)) #4
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0)) #4
  %call99 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0)) #4
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0)) #4
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)) #4
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0)) #4
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0)) #4
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0)) #4
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0)) #4
  %call106 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0)) #4
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0)) #4
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0)) #4
  %call109 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call78, i32 -2, i8* %call79, i32 -1, i8* %call80, i32 0, i8* %call81, i32 1, i8* %call82, i32 2, i8* %call83, i32 3, i8* %call84, i32 4, i8* %call85, i32 5, i8* %call86, i32 6, i8* %call87, i32 7, i8* %call88, i32 8, i8* %call89, i32 9, i8* %call90, i32 10, i8* %call91, i32 11, i8* %call92, i32 12, i8* %call93, i32 13, i8* %call94, i32 14, i8* %call95, i32 15, i8* %call96, i32 16, i8* %call97, i32 17, i8* %call98, i32 18, i8* %call99, i32 19, i8* %call100, i32 20, i8* %call101, i32 21, i8* %call102, i32 22, i8* %call103, i32 23, i8* %call104, i32 24, i8* %call105, i32 25, i8* %call106, i32 26, i8* %call107, i32 27, i8* %call108, i32 28, i8* null)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %combo, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %109 = bitcast %struct._GtkWidget* %108 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_int_combo_box_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call110)
  %110 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpIntComboBox*
  %call112 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %110, i32 -2)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %call113 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @combo_callback to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_box_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call114)
  %115 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkBox*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %115, %struct._GtkWidget* %116, i32 1, i32 1, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %call116 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0)) #4
  %call117 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call116)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %label, align 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_box_get_type() #5
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call118)
  %120 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkBox*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %120, %struct._GtkWidget* %121, i32 0, i32 0, i32 0)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_label_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call120)
  %124 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkLabel*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %124, %struct._GtkWidget* %125)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  call void @init_mutants()
  br label %if.end

if.end:                                           ; preds = %for.end.45, %entry
  call void @set_edit_preview()
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** @edit_dialog, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call122 = call i64 @gtk_window_get_type() #5
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call122)
  %130 = bitcast %struct._GTypeInstance* %call123 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %130)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @load_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* @load_save, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  call void @make_file_dialog(i8* %call, %struct._GtkWidget* %call1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @save_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @save_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @load_save, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0)) #4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call1 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %1)
  call void @make_file_dialog(i8* %call, %struct._GtkWidget* %call1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @load_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %5)
  ret void
}

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #3

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @set_flame_preview() #0 {
entry:
  %b = alloca i8*, align 8
  %pcp = alloca %struct.control_point, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @flame_preview, align 8
  %cmp = icmp eq %struct._GtkWidget* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @preview_width, align 4
  %2 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %1, %2
  %mul1 = mul nsw i32 %mul, 3
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %b, align 8
  call void @maybe_init_cp()
  call void @drawable_to_cmap(%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3))
  store %struct.control_point* %pcp, %struct.control_point** getelementptr inbounds (%struct.frame_spec, %struct.frame_spec* @set_flame_preview.pf, i32 0, i32 1), align 8
  %3 = bitcast %struct.control_point* %pcp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3) to i8*), i64 8104, i32 8, i1 false)
  %pixels_per_unit = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 12
  %4 = load double, double* %pixels_per_unit, align 8
  %5 = load i32, i32* @preview_width, align 4
  %conv2 = sitofp i32 %5 to double
  %mul3 = fmul double %4, %conv2
  %width = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 7
  %6 = load i32, i32* %width, align 4
  %conv4 = sitofp i32 %6 to double
  %div = fdiv double %mul3, %conv4
  %pixels_per_unit5 = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 12
  store double %div, double* %pixels_per_unit5, align 8
  %7 = load i32, i32* @preview_width, align 4
  %width6 = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 7
  store i32 %7, i32* %width6, align 4
  %8 = load i32, i32* @preview_height, align 4
  %height = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 8
  store i32 %8, i32* %height, align 4
  %sample_density = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 14
  store double 1.000000e+00, double* %sample_density, align 8
  %spatial_oversample = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 9
  store i32 1, i32* %spatial_oversample, align 4
  %spatial_filter_radius = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 13
  store double 1.000000e-01, double* %spatial_filter_radius, align 8
  %9 = load i8*, i8** %b, align 8
  %10 = load i32, i32* @preview_width, align 4
  call void @render_rectangle(%struct.frame_spec* @set_flame_preview.pf, i8* %9, i32 %10, i32 0, i32 3, i32 (double)* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @flame_preview, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_area_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreviewArea*
  %14 = load i32, i32* @preview_width, align 4
  %15 = load i8*, i8** %b, align 8
  %16 = load i32, i32* @preview_width, align 4
  %mul9 = mul nsw i32 %16, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %13, i32 0, i32 0, i32 %14, i32 150, i32 0, i8* %15, i32 %mul9)
  %17 = load i8*, i8** %b, align 8
  call void @g_free(i8* %17)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmap_constrain(i32 %image_id, i32 %drawable_id, i8* %data) #0 {
entry:
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_is_indexed(i32 %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @gimp_int_combo_box_prepend(%struct._GimpIntComboBox*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmap_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2))
  call void @set_cmap_preview()
  call void @set_flame_preview()
  ret void
}

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @set_cmap_preview() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %b = alloca [96 x i8], align 16
  %cmap_buffer = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %j = alloca i32, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  %cmp = icmp eq %struct._GtkWidget* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @drawable_to_cmap(%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3))
  %call = call noalias i8* @g_malloc_n(i64 3072, i64 1)
  store i8* %call, i8** %cmap_buffer, align 8
  %1 = load i8*, i8** %cmap_buffer, align 8
  store i8* %1, i8** %ptr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %if.end
  %2 = load i32, i32* %y, align 4
  %cmp1 = icmp slt i32 %2, 32
  br i1 %cmp1, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.15, %for.body
  %3 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %3, 32
  br i1 %cmp3, label %for.body.4, label %for.end.17

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  %div = sdiv i32 %5, 4
  %mul = mul nsw i32 %div, 32
  %add = add nsw i32 %4, %mul
  store i32 %add, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %6 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %6, 3
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3, i32 1), i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx9, align 8
  %mul10 = fmul double %9, 2.550000e+02
  %conv = fptoui double %mul10 to i8
  %10 = load i32, i32* %x, align 4
  %mul11 = mul nsw i32 %10, 3
  %11 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %mul11, %11
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [96 x i8], [96 x i8]* %b, i32 0, i64 %idxprom13
  store i8 %conv, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %13 = load i32, i32* %x, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %x, align 4
  br label %for.cond.2

for.end.17:                                       ; preds = %for.cond.2
  %14 = load i8*, i8** %ptr, align 8
  %15 = bitcast [96 x i8]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 96, i32 1, i1 false)
  %16 = load i8*, i8** %ptr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 96
  store i8* %add.ptr, i8** %ptr, align 8
  %17 = load i8*, i8** %ptr, align 8
  %18 = bitcast [96 x i8]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 96, i32 1, i1 false)
  %19 = load i8*, i8** %ptr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %19, i64 96
  store i8* %add.ptr18, i8** %ptr, align 8
  %20 = load i8*, i8** %ptr, align 8
  %21 = bitcast [96 x i8]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 96, i32 1, i1 false)
  %22 = load i8*, i8** %ptr, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %22, i64 96
  store i8* %add.ptr19, i8** %ptr, align 8
  %23 = load i8*, i8** %ptr, align 8
  %24 = bitcast [96 x i8]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 96, i32 1, i1 false)
  %25 = load i8*, i8** %ptr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %25, i64 96
  store i8* %add.ptr20, i8** %ptr, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.17
  %26 = load i32, i32* %y, align 4
  %add22 = add nsw i32 %26, 4
  store i32 %add22, i32* %y, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** @cmap_preview, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_preview_area_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpPreviewArea*
  %30 = load i8*, i8** %cmap_buffer, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %29, i32 0, i32 0, i32 32, i32 32, i32 0, i8* %30, i32 96)
  %31 = load i8*, i8** %cmap_buffer, align 8
  call void @g_free(i8* %31)
  br label %return

return:                                           ; preds = %for.end.23, %if.then
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @edit_response(%struct._GtkWidget* %widget, i32 %response_id, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3) to i8*), i8* bitcast (%struct.control_point* @edit_cp to i8*), i64 8104, i32 8, i1 false)
  call void @set_flame_preview()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @preview_clicked(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %mut = alloca i32, align 4
  %t = alloca %struct.control_point, align 8
  %ends = alloca [2 x %struct.control_point], align 16
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %mut, align 4
  %2 = load i32, i32* %mut, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.control_point* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.control_point* @edit_cp to i8*), i64 8104, i32 8, i1 false)
  call void @init_mutants()
  %4 = bitcast %struct.control_point* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.control_point* @edit_cp to i8*), i8* %4, i64 8104, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 0
  %5 = bitcast %struct.control_point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.control_point* @edit_cp to i8*), i64 8104, i32 8, i1 false)
  %arrayidx2 = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 1
  %6 = load i32, i32* %mut, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [9 x %struct.control_point], [9 x %struct.control_point]* @mutants, i32 0, i64 %idxprom
  %7 = bitcast %struct.control_point* %arrayidx2 to i8*
  %8 = bitcast %struct.control_point* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8104, i32 8, i1 false)
  %arrayidx4 = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 0
  %time = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx4, i32 0, i32 2
  store double 0.000000e+00, double* %time, align 8
  %arrayidx5 = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 1
  %time6 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx5, i32 0, i32 2
  store double 1.000000e+00, double* %time6, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i32 0
  %9 = load double, double* @pick_speed, align 8
  call void @interpolate(%struct.control_point* %arraydecay, i32 2, double %9, %struct.control_point* @edit_cp)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @set_edit_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @edit_preview_size_allocate(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  call void @set_edit_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_edit_preview() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca i8*, align 8
  %pcp = alloca %struct.control_point, align 8
  %nbytes = alloca i32, align 4
  %mut = alloca i32, align 4
  %ends = alloca [2 x %struct.control_point], align 16
  store i32 21675, i32* %nbytes, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds ([9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 0), align 8
  %cmp = icmp eq %struct._GtkWidget* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %nbytes, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %b, align 8
  call void @maybe_init_cp()
  call void @drawable_to_cmap(%struct.control_point* @edit_cp)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 3
  br i1 %cmp1, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %3, 3
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 3
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %5
  store i32 %add, i32* %mut, align 4
  store %struct.control_point* %pcp, %struct.control_point** getelementptr inbounds (%struct.frame_spec, %struct.frame_spec* @set_edit_preview.pf, i32 0, i32 1), align 8
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp eq i32 1, %6
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.6
  %7 = load i32, i32* %j, align 4
  %cmp9 = icmp eq i32 1, %7
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %8 = bitcast %struct.control_point* %pcp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct.control_point* @edit_cp to i8*), i64 8104, i32 8, i1 false)
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %for.body.6
  %arrayidx = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 0
  %9 = bitcast %struct.control_point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%struct.control_point* @edit_cp to i8*), i64 8104, i32 8, i1 false)
  %arrayidx12 = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 1
  %10 = load i32, i32* %mut, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [9 x %struct.control_point], [9 x %struct.control_point]* @mutants, i32 0, i64 %idxprom
  %11 = bitcast %struct.control_point* %arrayidx12 to i8*
  %12 = bitcast %struct.control_point* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8104, i32 8, i1 false)
  %arrayidx14 = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 0
  %time = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx14, i32 0, i32 2
  store double 0.000000e+00, double* %time, align 8
  %arrayidx15 = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i64 1
  %time16 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx15, i32 0, i32 2
  store double 1.000000e+00, double* %time16, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.control_point], [2 x %struct.control_point]* %ends, i32 0, i32 0
  %13 = load double, double* @pick_speed, align 8
  call void @interpolate(%struct.control_point* %arraydecay, i32 2, double %13, %struct.control_point* %pcp)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.11
  %pixels_per_unit = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 12
  %14 = load double, double* %pixels_per_unit, align 8
  %mul18 = fmul double %14, 8.500000e+01
  %width = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 7
  %15 = load i32, i32* %width, align 4
  %conv19 = sitofp i32 %15 to double
  %div = fdiv double %mul18, %conv19
  %pixels_per_unit20 = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 12
  store double %div, double* %pixels_per_unit20, align 8
  %width21 = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 7
  store i32 85, i32* %width21, align 4
  %height = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 8
  store i32 85, i32* %height, align 4
  %sample_density = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 14
  store double 1.000000e+00, double* %sample_density, align 8
  %spatial_oversample = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 9
  store i32 1, i32* %spatial_oversample, align 4
  %spatial_filter_radius = getelementptr inbounds %struct.control_point, %struct.control_point* %pcp, i32 0, i32 13
  store double 5.000000e-01, double* %spatial_filter_radius, align 8
  call void @drawable_to_cmap(%struct.control_point* %pcp)
  %16 = load i8*, i8** %b, align 8
  call void @render_rectangle(%struct.frame_spec* @set_edit_preview.pf, i8* %16, i32 85, i32 0, i32 3, i32 (double)* null)
  %17 = load i32, i32* %mut, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [9 x %struct._GtkWidget*], [9 x %struct._GtkWidget*]* @edit_previews, i32 0, i64 %idxprom22
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx23, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_preview_area_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call24)
  %20 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpPreviewArea*
  %21 = load i8*, i8** %b, align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %20, i32 0, i32 0, i32 85, i32 85, i32 0, i8* %21, i32 255)
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %24 = load i8*, i8** %b, align 8
  call void @g_free(i8* %24)
  br label %return

return:                                           ; preds = %for.end.28, %if.then
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @randomize_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  call void @random_control_point(%struct.control_point* @edit_cp, i32 %0)
  call void @init_mutants()
  call void @set_edit_preview()
  ret void
}

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #1

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @combo_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %cmp = icmp ne i32 -2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  call void @random_control_point(%struct.control_point* @edit_cp, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @init_mutants()
  call void @set_edit_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_mutants() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.control_point], [9 x %struct.control_point]* @mutants, i32 0, i64 %idxprom
  %2 = bitcast %struct.control_point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.control_point* @edit_cp to i8*), i64 8104, i32 8, i1 false)
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.control_point, %struct.control_point* getelementptr inbounds ([9 x %struct.control_point], [9 x %struct.control_point]* @mutants, i32 0, i32 0), i64 %idx.ext
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  call void @random_control_point(%struct.control_point* %add.ptr, i32 %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 1), align 4
  %cmp1 = icmp eq i32 -2, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %6 to i64
  %add.ptr3 = getelementptr inbounds %struct.control_point, %struct.control_point* getelementptr inbounds ([9 x %struct.control_point], [9 x %struct.control_point]* @mutants, i32 0, i32 0), i64 %idx.ext2
  call void @copy_variation(%struct.control_point* %add.ptr3, %struct.control_point* @edit_cp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @interpolate(%struct.control_point*, i32, double, %struct.control_point*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @drawable_to_cmap(%struct.control_point* %cp) #0 {
entry:
  %cp.addr = alloca %struct.control_point*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pr = alloca %struct._GimpPixelRgn, align 8
  %d = alloca %struct._GimpDrawable*, align 8
  %p = alloca i8*, align 8
  %name = alloca i8*, align 8
  %num = alloca i32, align 4
  %g = alloca double*, align 8
  store %struct.control_point* %cp, %struct.control_point** %cp.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %cmp = icmp sge i32 -4, %0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %sub = sub nsw i32 -4, %1
  store i32 %sub, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap = getelementptr inbounds %struct.control_point, %struct.control_point* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap, i32 0, i32 0
  %call = call i32 @get_cmap(i32 %2, [3 x double]* %arraydecay, i32 256)
  br label %if.end.76

if.else:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %cmp1 = icmp eq i32 -2, %4
  br i1 %cmp1, label %if.then.2, label %if.else.13

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.then.2
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 256
  br i1 %cmp3, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %6, 3
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap8 = getelementptr inbounds %struct.control_point, %struct.control_point* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap8, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  br label %if.end.75

if.else.13:                                       ; preds = %if.else
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %cmp14 = icmp eq i32 -3, %12
  br i1 %cmp14, label %if.then.15, label %if.else.37

if.then.15:                                       ; preds = %if.else.13
  %call16 = call i8* @gimp_context_get_gradient()
  store i8* %call16, i8** %name, align 8
  %13 = load i8*, i8** %name, align 8
  %call17 = call i32 @gimp_gradient_get_uniform_samples(i8* %13, i32 256, i32 0, i32* %num, double** %g)
  %14 = load i8*, i8** %name, align 8
  call void @g_free(i8* %14)
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.34, %if.then.15
  %15 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %15, 256
  br i1 %cmp19, label %for.body.20, label %for.end.36

for.body.20:                                      ; preds = %for.cond.18
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %for.body.20
  %16 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %16, 3
  br i1 %cmp22, label %for.body.23, label %for.end.33

for.body.23:                                      ; preds = %for.cond.21
  %17 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %17, 4
  %18 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %18
  %idxprom24 = sext i32 %add to i64
  %19 = load double*, double** %g, align 8
  %arrayidx25 = getelementptr inbounds double, double* %19, i64 %idxprom24
  %20 = load double, double* %arrayidx25, align 8
  %21 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap28 = getelementptr inbounds %struct.control_point, %struct.control_point* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap28, i32 0, i64 %idxprom27
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i32 0, i64 %idxprom26
  store double %20, double* %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.23
  %24 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond.21

for.end.33:                                       ; preds = %for.cond.21
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %25 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.18

for.end.36:                                       ; preds = %for.cond.18
  %26 = load double*, double** %g, align 8
  %27 = bitcast double* %26 to i8*
  call void @g_free(i8* %27)
  br label %if.end

if.else.37:                                       ; preds = %if.else.13
  %28 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 2), align 4
  %call38 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %28)
  store %struct._GimpDrawable* %call38, %struct._GimpDrawable** %d, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 3
  %30 = load i32, i32* %bpp, align 4
  %conv = zext i32 %30 to i64
  %call39 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call39, i8** %p, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 1
  %33 = load i32, i32* %width, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %34, i32 0, i32 2
  %35 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pr, %struct._GimpDrawable* %31, i32 0, i32 0, i32 %33, i32 %35, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.72, %if.else.37
  %36 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %36, 256
  br i1 %cmp41, label %for.body.43, label %for.end.74

for.body.43:                                      ; preds = %for.cond.40
  %37 = load i8*, i8** %p, align 8
  %38 = load i32, i32* %i, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %width44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load i32, i32* %width44, align 4
  %rem = urem i32 %38, %40
  %41 = load i32, i32* %i, align 4
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %width45 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 1
  %43 = load i32, i32* %width45, align 4
  %div = udiv i32 %41, %43
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %height46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 2
  %45 = load i32, i32* %height46, align 4
  %rem47 = urem i32 %div, %45
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pr, i8* %37, i32 %rem, i32 %rem47)
  store i32 0, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.69, %for.body.43
  %46 = load i32, i32* %j, align 4
  %cmp49 = icmp slt i32 %46, 3
  br i1 %cmp49, label %for.body.51, label %for.end.71

for.body.51:                                      ; preds = %for.cond.48
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %d, align 8
  %bpp52 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 3
  %48 = load i32, i32* %bpp52, align 4
  %cmp53 = icmp uge i32 %48, 3
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.51
  %49 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load i8*, i8** %p, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %50, i64 %idxprom55
  %51 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %51 to i32
  %conv58 = sitofp i32 %conv57 to double
  %div59 = fdiv double %conv58, 2.550000e+02
  br label %cond.end

cond.false:                                       ; preds = %for.body.51
  %52 = load i8*, i8** %p, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %53 to i32
  %conv62 = sitofp i32 %conv61 to double
  %div63 = fdiv double %conv62, 2.550000e+02
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div59, %cond.true ], [ %div63, %cond.false ]
  %54 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %55 to i64
  %56 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap66 = getelementptr inbounds %struct.control_point, %struct.control_point* %56, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap66, i32 0, i64 %idxprom65
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx67, i32 0, i64 %idxprom64
  store double %cond, double* %arrayidx68, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %cond.end
  %57 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %57, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond.48

for.end.71:                                       ; preds = %for.cond.48
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %58 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %58, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.40

for.end.74:                                       ; preds = %for.cond.40
  %59 = load i8*, i8** %p, align 8
  call void @g_free(i8* %59)
  br label %if.end

if.end:                                           ; preds = %for.end.74, %for.end.36
  br label %if.end.75

if.end.75:                                        ; preds = %if.end, %for.end.12
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then
  ret void
}

declare void @render_rectangle(%struct.frame_spec*, i8*, i32, i32, i32, i32 (double)*) #1

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @g_free(i8*) #1

declare i32 @get_cmap(i32, [3 x double]*, i32) #1

declare i8* @gimp_context_get_gradient() #1

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @copy_variation(%struct.control_point*, %struct.control_point*) #1

; Function Attrs: nounwind uwtable
define internal void @make_file_dialog(i8* %title, %struct._GtkWidget* %parent) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  %4 = load i32, i32* @load_save, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %5 = load i32, i32* @load_save, align 4
  %tobool2 = icmp ne i32 %5, 0
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)
  %call4 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %0, %struct._GtkWindow* %3, i32 %cond, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* %cond3, i32 -5, i8* null)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** @file_dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_dialog_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %8, i32 -5, i32 -6, i32 -1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %11, i32 -5)
  %12 = load i32, i32* @load_save, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_file_chooser_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %15, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %18, i8** bitcast (%struct._GtkWidget** @file_dialog to i8**))
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_window_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWindow*
  call void @gtk_window_set_destroy_with_parent(%struct._GtkWindow* %21, i32 1)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** @file_dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (void (%struct._GtkFileChooser*, i32, i8*)* @file_response_callback to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare void @gtk_window_set_destroy_with_parent(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #3

; Function Attrs: nounwind uwtable
define internal void @file_response_callback(%struct._GtkFileChooser* %chooser, i32 %response_id, i8* %data) #0 {
entry:
  %chooser.addr = alloca %struct._GtkFileChooser*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %ss = alloca i8*, align 8
  %f25 = alloca %struct._IO_FILE*, align 8
  store %struct._GtkFileChooser* %chooser, %struct._GtkFileChooser** %chooser.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %call = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %1)
  store i8* %call, i8** %filename, align 8
  %2 = load i32, i32* @load_save, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %3 = load i8*, i8** %filename, align 8
  %call2 = call i32 @g_file_test(i8* %3, i32 1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0)) #4
  %4 = load i8*, i8** %filename, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %4)
  call void (i8*, ...) @g_message(i8* %call5, i8* %call6)
  %5 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %5)
  br label %if.end.47

if.end:                                           ; preds = %if.then.1
  %6 = load i8*, i8** %filename, align 8
  %call7 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %cmp8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0)) #4
  %8 = load i8*, i8** %filename, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %8)
  %call12 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call12, align 4
  %call13 = call i8* @g_strerror(i32 %9) #5
  call void (i8*, ...) @g_message(i8* %call10, i8* %call11, i8* %call13)
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  br label %if.end.47

if.end.14:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  store i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @buffer, i32 0, i32 0), i8** %ss, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.14
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call15 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call15, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 -1, %12
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body
  br label %do.end

if.end.18:                                        ; preds = %do.body
  %13 = load i32, i32* %c, align 4
  %conv = trunc i32 %13 to i8
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %ss, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  %16 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %16, 10000
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %17 = load i32, i32* %c, align 4
  %cmp21 = icmp ne i32 59, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %cmp21, %land.rhs ]
  br i1 %18, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.then.17
  call void @parse_control_point(i8** %ss, %struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %19)
  %call24 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i8* bitcast (%struct.anon* @config to i8*), i32 8120)
  call void @set_flame_preview()
  call void @set_edit_preview()
  br label %if.end.36

if.else:                                          ; preds = %if.then
  %20 = load i8*, i8** %filename, align 8
  %call26 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0))
  store %struct._IO_FILE* %call26, %struct._IO_FILE** %f25, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %f25, align 8
  %cmp27 = icmp eq %struct._IO_FILE* null, %21
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.else
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.93, i32 0, i32 0)) #4
  %22 = load i8*, i8** %filename, align 8
  %call31 = call i8* @gimp_filename_to_utf8(i8* %22)
  %call32 = call i32* @__errno_location() #5
  %23 = load i32, i32* %call32, align 4
  %call33 = call i8* @g_strerror(i32 %23) #5
  call void (i8*, ...) @g_message(i8* %call30, i8* %call31, i8* %call33)
  %24 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %24)
  br label %if.end.47

if.end.34:                                        ; preds = %if.else
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %f25, align 8
  call void @print_control_point(%struct._IO_FILE* %25, %struct.control_point* getelementptr inbounds (%struct.anon, %struct.anon* @config, i32 0, i32 3), i32 0)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %f25, align 8
  %call35 = call i32 @fclose(%struct._IO_FILE* %26)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.34, %do.end
  %27 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %27)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %entry
  %28 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser.addr, align 8
  %29 = bitcast %struct._GtkFileChooser* %28 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_widget_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call38)
  %30 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** @load_button, align 8
  %call40 = call i32 @gtk_widget_get_sensitive(%struct._GtkWidget* %31)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.37
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** @load_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %32, i32 1)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.37
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** @save_button, align 8
  %call44 = call i32 @gtk_widget_get_sensitive(%struct._GtkWidget* %33)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** @save_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %34, i32 1)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.4, %if.then.9, %if.then.29, %if.then.46, %if.end.43
  ret void
}

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @g_file_test(i8*, i32) #1

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

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare void @parse_control_point(i8**, %struct.control_point*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @print_control_point(%struct._IO_FILE*, %struct.control_point*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare i32 @gtk_widget_get_sensitive(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
