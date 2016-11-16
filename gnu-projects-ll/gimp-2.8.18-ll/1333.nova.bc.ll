; ModuleID = './plug-ins/common/nova.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.NovaValues = type { i32, i32, %struct._GimpRGB, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GdkCursor = type { i32, i32 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpHSV = type { double, double, double, double }
%struct._GRand = type opaque
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct.NovaCenter = type { %struct._GimpDrawable*, %struct._GimpPreview*, %struct._GtkWidget* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._cairo = type opaque
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [9 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"xcenter\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"X coordinates of the center of supernova\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ycenter\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Y coordinates of the center of supernova\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Color of supernova\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Radius of supernova\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"nspoke\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Number of spokes\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"randomhue\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Random hue\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"plug-in-nova\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Add a starburst to the image\00", align 1
@.str.20 = private unnamed_addr constant [212 x i8] c"This plug-in produces an effect like a supernova burst. The amount of the light effect is approximately in proportion to 1/r, where r is the distance from the center of the star. It works with RGB*, GRAY* image.\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Eiichi Takamori\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"May 2000\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Super_nova...\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"<Image>/Filters/Light and Shadow/Light\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.NovaValues { i32 128, i32 128, %struct._GimpRGB { double 3.500000e-01, double 3.900000e-01, double 1.000000e+00, double 1.000000e+00 }, i32 20, i32 100, i32 0 }, align 8
@.str.28 = private unnamed_addr constant [20 x i8] c"Rendering supernova\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"nova\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Supernova\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"gimp-nova\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Supernova Color Picker\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"Co_lor:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"_Radius:\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"_Spokes:\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"R_andom hue:\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"Center of Nova\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Show _position\00", align 1
@show_cursor = internal global i32 1, align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"event\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 9, i32 0, %struct._GimpParamDef* getelementptr inbounds ([9 x %struct._GimpParamDef], [9 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0))
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
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.NovaValues* @pvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @nova_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %9)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %10, 9
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.9
  store i32 1, i32* %status, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %sw.bb.9
  %11 = load i32, i32* %status, align 4
  %cmp12 = icmp eq i32 %11, 3
  br i1 %cmp12, label %if.then.13, label %if.end.31

if.then.13:                                       ; preds = %if.end.11
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %13 = load i32, i32* %d_int3216, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 0), align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %14, i64 4
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %15 = load i32, i32* %d_int3219, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 1), align 4
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 5
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data21 to %struct._GimpRGB*
  %17 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 2) to i8*), i8* %17, i64 32, i32 8, i1 false)
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 6
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_int3224 = bitcast %union._GimpParamData* %data23 to i32*
  %19 = load i32, i32* %d_int3224, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 7
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_int3227 = bitcast %union._GimpParamData* %data26 to i32*
  %21 = load i32, i32* %d_int3227, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 8
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int3230 = bitcast %union._GimpParamData* %data29 to i32*
  %23 = load i32, i32* %d_int3230, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 5), align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.13, %if.end.11
  %24 = load i32, i32* %status, align 4
  %cmp32 = icmp eq i32 %24, 3
  br i1 %cmp32, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.31
  %25 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %cmp33 = icmp sle i32 %25, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true, %if.end.31
  br label %sw.epilog

sw.bb.36:                                         ; preds = %do.end
  %call37 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.NovaValues* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.36, %if.end.35, %if.end
  %26 = load i32, i32* %status, align 4
  %cmp38 = icmp eq i32 %26, 3
  br i1 %cmp38, label %if.then.39, label %if.end.60

if.then.39:                                       ; preds = %sw.epilog
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id, align 4
  %call40 = call i32 @gimp_drawable_is_rgb(i32 %28)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.39
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id42, align 4
  %call43 = call i32 @gimp_drawable_is_gray(i32 %30)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false, %if.then.39
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0)) #4
  %call47 = call i32 @gimp_progress_init(i8* %call46)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 1
  %32 = load i32, i32* %width, align 4
  %call48 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %32, %call48
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @nova(%struct._GimpDrawable* %33, %struct._GimpPreview* null)
  %34 = load i32, i32* %run_mode, align 4
  %cmp49 = icmp ne i32 %34, 1
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.45
  %call52 = call i32 @gimp_displays_flush()
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.45
  %35 = load i32, i32* %run_mode, align 4
  %cmp54 = icmp eq i32 %35, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.53
  %call57 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* bitcast (%struct.NovaValues* @pvals to i8*), i32 56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.53
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %sw.epilog
  %36 = load i32, i32* %status, align 4
  store i32 %36, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %37)
  br label %return

return:                                           ; preds = %if.end.60, %if.then
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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @nova_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
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
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
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
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %16)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_preview_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPreview*
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %19, i32 0, i32 2
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  call void @gtk_widget_add_events(%struct._GtkWidget* %20, i32 288)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 1, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @nova to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 2)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_preview_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call20)
  %33 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpPreview*
  %call22 = call %struct._GtkWidget* @nova_center_create(%struct._GimpDrawable* %30, %struct._GimpPreview* %33)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %frame, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call25 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 3, i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %table, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_table_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call26)
  %41 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %41, i32 6)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call28)
  %44 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %44, i32 6)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call30)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %47, %struct._GtkWidget* %48, i32 0, i32 0, i32 0)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 0
  %51 = load i32, i32* %drawable_id, align 4
  %call32 = call i32 @gimp_drawable_is_rgb(i32 %51)
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #4
  %call34 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call33, i32 117, i32 16, %struct._GimpRGB* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 2), i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %button, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_table_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call35)
  %54 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkTable*
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)) #4
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call38 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %54, i32 0, i32 0, i8* %call37, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %55, i32 1, i32 1)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %57 = bitcast %struct._GtkWidget* %56 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %61 = bitcast %struct._GtkWidget* %60 to i8*
  %call40 = call i64 @g_signal_connect_data(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %61, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call41)
  %64 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)) #4
  %65 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %conv = sitofp i32 %65 to double
  %call44 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %64, i32 0, i32 1, i8* %call43, i32 125, i32 8, double %conv, double 1.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 0, double 1.000000e+00, double 2.621440e+05, i8* null, i8* null)
  store %struct._GtkObject* %call44, %struct._GtkObject** %adj, align 8
  %66 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %67 = bitcast %struct._GtkObject* %66 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %69 = bitcast %struct._GtkObject* %68 to i8*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 2)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call47)
  %74 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)) #4
  %75 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %conv50 = sitofp i32 %75 to double
  %call51 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %74, i32 0, i32 2, i8* %call49, i32 125, i32 8, double %conv50, double 1.000000e+00, double 1.024000e+03, double 1.000000e+00, double 1.600000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call51, %struct._GtkObject** %adj, align 8
  %76 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %77 = bitcast %struct._GtkObject* %76 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %78 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %79 = bitcast %struct._GtkObject* %78 to i8*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 2)
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 0
  %83 = load i32, i32* %drawable_id54, align 4
  %call55 = call i32 @gimp_drawable_is_rgb(i32 %83)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.65

if.then.57:                                       ; preds = %if.end
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #5
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call58)
  %86 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0)) #4
  %87 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 5), align 4
  %conv61 = sitofp i32 %87 to double
  %call62 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %86, i32 0, i32 3, i8* %call60, i32 125, i32 8, double %conv61, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call62, %struct._GtkObject** %adj, align 8
  %88 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %89 = bitcast %struct._GtkObject* %88 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %91 = bitcast %struct._GtkObject* %90 to i8*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %93, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.57, %if.end
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_dialog_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call66)
  %97 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpDialog*
  %call68 = call i32 @gimp_dialog_run(%struct._GimpDialog* %97)
  %cmp = icmp eq i32 %call68, -5
  %conv69 = zext i1 %cmp to i32
  store i32 %conv69, i32* %run, align 4
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %98)
  %99 = load i32, i32* %run, align 4
  ret i32 %99
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @nova(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %save_src = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %alpha = alloca i32, align 4
  %bpp = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %u = alloca double, align 8
  %v = alloca double, align 8
  %l = alloca double, align 8
  %w = alloca double, align 8
  %w1 = alloca double, align 8
  %c = alloca double, align 8
  %t = alloca double, align 8
  %spoke = alloca double*, align 8
  %nova_alpha = alloca double, align 8
  %src_alpha = alloca double, align 8
  %new_alpha = alloca double, align 8
  %compl_ratio = alloca double, align 8
  %ratio = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  %spokecolor = alloca %struct._GimpRGB*, align 8
  %hsv = alloca %struct._GimpHSV, align 8
  %spokecol = alloca double, align 8
  %i = alloca i32, align 4
  %gr = alloca %struct._GRand*, align 8
  %cache = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %zoom = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store double 0.000000e+00, double* %new_alpha, align 8
  store i8* null, i8** %cache, align 8
  store double 0.000000e+00, double* %zoom, align 8
  %call = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call, %struct._GRand** %gr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_has_alpha(i32 %1)
  store i32 %call1, i32* %has_alpha, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %conv = sext i32 %2 to i64
  %call2 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %3 = bitcast i8* %call2 to double*
  store double* %3, double** %spoke, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %conv3 = sext i32 %4 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 32)
  %5 = bitcast i8* %call4 to %struct._GimpRGB*
  store %struct._GimpRGB* %5, %struct._GimpRGB** %spokecolor, align 8
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 2), double 1.000000e+00)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 2), %struct._GimpHSV* %hsv)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call6 = call double @gauss(%struct._GRand* %8)
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double*, double** %spoke, align 8
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  store double %call6, double* %arrayidx, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 5), align 4
  %conv7 = sitofp i32 %11 to double
  %div = fdiv double %conv7, 3.600000e+02
  %12 = load %struct._GRand*, %struct._GRand** %gr, align 8
  %call8 = call double @g_rand_double_range(%struct._GRand* %12, double -5.000000e-01, double 5.000000e-01)
  %mul = fmul double %div, %call8
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %13 = load double, double* %h, align 8
  %add = fadd double %13, %mul
  store double %add, double* %h, align 8
  %h9 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %14 = load double, double* %h9, align 8
  %cmp10 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %h12 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %15 = load double, double* %h12, align 8
  %add13 = fadd double %15, 1.000000e+00
  store double %add13, double* %h12, align 8
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %h14 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %16 = load double, double* %h14, align 8
  %cmp15 = fcmp oge double %16, 1.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %h18 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %hsv, i32 0, i32 0
  %17 = load double, double* %h18, align 8
  %sub = fsub double %17, 1.000000e+00
  store double %sub, double* %h18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %19 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %18, i64 %idx.ext
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %hsv, %struct._GimpRGB* %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %21, null
  br i1 %tobool, label %if.then.20, label %if.else.27

if.then.20:                                       ; preds = %for.end
  %22 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %23 = bitcast %struct._GimpPreview* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_zoom_preview_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpZoomPreview*
  %call23 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %24, i32* %width, i32* %height, i32* %bpp)
  store i8* %call23, i8** %cache, align 8
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %26 = bitcast %struct._GimpPreview* %25 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_zoom_preview_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call24)
  %27 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpZoomPreview*
  %call26 = call double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview* %27)
  store double %call26, double* %zoom, align 8
  %28 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 0), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 1), align 4
  call void @gimp_preview_transform(%struct._GimpPreview* %28, i32 %29, i32 %30, i32* %xc, i32* %yc)
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %31 = load i32, i32* %width, align 4
  store i32 %31, i32* %x2, align 4
  %32 = load i32, i32* %height, align 4
  store i32 %32, i32* %y2, align 4
  br label %if.end.36

if.else.27:                                       ; preds = %for.end
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id28, align 4
  %call29 = call i32 @gimp_drawable_mask_bounds(i32 %34, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id30, align 4
  %call31 = call i32 @gimp_drawable_bpp(i32 %36)
  store i32 %call31, i32* %bpp, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 0), align 4
  store i32 %37, i32* %xc, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 1), align 4
  store i32 %38, i32* %yc, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %y1, align 4
  %42 = load i32, i32* %x2, align 4
  %43 = load i32, i32* %x1, align 4
  %sub32 = sub nsw i32 %42, %43
  %44 = load i32, i32* %y2, align 4
  %45 = load i32, i32* %y1, align 4
  %sub33 = sub nsw i32 %44, %45
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %39, i32 %40, i32 %41, i32 %sub32, i32 %sub33, i32 0, i32 0)
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = load i32, i32* %x1, align 4
  %48 = load i32, i32* %y1, align 4
  %49 = load i32, i32* %x2, align 4
  %50 = load i32, i32* %x1, align 4
  %sub34 = sub nsw i32 %49, %50
  %51 = load i32, i32* %y2, align 4
  %52 = load i32, i32* %y1, align 4
  %sub35 = sub nsw i32 %51, %52
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %46, i32 %47, i32 %48, i32 %sub34, i32 %sub35, i32 1, i32 1)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.27, %if.then.20
  %53 = load i32, i32* %has_alpha, align 4
  %tobool37 = icmp ne i32 %53, 0
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.36
  %54 = load i32, i32* %bpp, align 4
  %sub38 = sub nsw i32 %54, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.36
  %55 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub38, %cond.true ], [ %55, %cond.false ]
  store i32 %cond, i32* %alpha, align 4
  store i32 0, i32* %progress, align 4
  %56 = load i32, i32* %x2, align 4
  %57 = load i32, i32* %x1, align 4
  %sub39 = sub nsw i32 %56, %57
  %58 = load i32, i32* %y2, align 4
  %59 = load i32, i32* %y1, align 4
  %sub40 = sub nsw i32 %58, %59
  %mul41 = mul nsw i32 %sub39, %sub40
  store i32 %mul41, i32* %max_progress, align 4
  %60 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool42 = icmp ne %struct._GimpPreview* %60, null
  br i1 %tobool42, label %if.then.43, label %if.else.395

if.then.43:                                       ; preds = %cond.end
  %61 = load i32, i32* %y2, align 4
  %62 = load i32, i32* %width, align 4
  %mul44 = mul nsw i32 %61, %62
  %63 = load i32, i32* %bpp, align 4
  %mul45 = mul nsw i32 %mul44, %63
  %conv46 = sext i32 %mul45 to i64
  %call47 = call noalias i8* @g_malloc_n(i64 %conv46, i64 1)
  store i8* %call47, i8** %src_row, align 8
  store i8* %call47, i8** %save_src, align 8
  %64 = load i8*, i8** %src_row, align 8
  %65 = load i8*, i8** %cache, align 8
  %66 = load i32, i32* %y2, align 4
  %67 = load i32, i32* %width, align 4
  %mul48 = mul nsw i32 %66, %67
  %68 = load i32, i32* %bpp, align 4
  %mul49 = mul nsw i32 %mul48, %68
  %conv50 = sext i32 %mul49 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 %conv50, i32 1, i1 false)
  %69 = load i32, i32* %y2, align 4
  %70 = load i32, i32* %width, align 4
  %mul51 = mul nsw i32 %69, %70
  %71 = load i32, i32* %bpp, align 4
  %mul52 = mul nsw i32 %mul51, %71
  %conv53 = sext i32 %mul52 to i64
  %call54 = call noalias i8* @g_malloc_n(i64 %conv53, i64 1)
  store i8* %call54, i8** %dest_row, align 8
  %72 = load i8*, i8** %dest_row, align 8
  store i8* %72, i8** %dest, align 8
  %73 = load i8*, i8** %src_row, align 8
  store i8* %73, i8** %src, align 8
  store i32 0, i32* %row, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.390, %if.then.43
  %74 = load i32, i32* %row, align 4
  %75 = load i32, i32* %y2, align 4
  %cmp56 = icmp slt i32 %74, %75
  br i1 %cmp56, label %for.body.58, label %for.end.393

for.body.58:                                      ; preds = %for.cond.55
  store i32 0, i32* %col, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.386, %for.body.58
  %76 = load i32, i32* %col, align 4
  %77 = load i32, i32* %x2, align 4
  %cmp60 = icmp slt i32 %76, %77
  br i1 %cmp60, label %for.body.62, label %for.end.389

for.body.62:                                      ; preds = %for.cond.59
  %78 = load i32, i32* %x, align 4
  %79 = load i32, i32* %xc, align 4
  %sub63 = sub nsw i32 %78, %79
  %conv64 = sitofp i32 %sub63 to double
  %80 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %conv65 = sitofp i32 %80 to double
  %81 = load i32, i32* %width, align 4
  %conv66 = sitofp i32 %81 to double
  %mul67 = fmul double %conv65, %conv66
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 1
  %83 = load i32, i32* %width68, align 4
  %conv69 = uitofp i32 %83 to double
  %div70 = fdiv double %mul67, %conv69
  %84 = load double, double* %zoom, align 8
  %mul71 = fmul double %div70, %84
  %div72 = fdiv double %conv64, %mul71
  store double %div72, double* %u, align 8
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* %yc, align 4
  %sub73 = sub nsw i32 %85, %86
  %conv74 = sitofp i32 %sub73 to double
  %87 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %conv75 = sitofp i32 %87 to double
  %88 = load i32, i32* %height, align 4
  %conv76 = sitofp i32 %88 to double
  %mul77 = fmul double %conv75, %conv76
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height78 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %89, i32 0, i32 2
  %90 = load i32, i32* %height78, align 4
  %conv79 = uitofp i32 %90 to double
  %div80 = fdiv double %mul77, %conv79
  %91 = load double, double* %zoom, align 8
  %mul81 = fmul double %div80, %91
  %div82 = fdiv double %conv74, %mul81
  store double %div82, double* %v, align 8
  %92 = load double, double* %u, align 8
  %93 = load double, double* %u, align 8
  %mul83 = fmul double %92, %93
  %94 = load double, double* %v, align 8
  %95 = load double, double* %v, align 8
  %mul84 = fmul double %94, %95
  %add85 = fadd double %mul83, %mul84
  %call86 = call double @sqrt(double %add85) #4
  store double %call86, double* %l, align 8
  %96 = load double, double* %u, align 8
  %97 = load double, double* %v, align 8
  %call87 = call double @atan2(double %96, double %97) #4
  %div88 = fdiv double %call87, 0x401921FB54442D18
  %add89 = fadd double %div88, 5.100000e-01
  %98 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %conv90 = sitofp i32 %98 to double
  %mul91 = fmul double %add89, %conv90
  store double %mul91, double* %t, align 8
  %99 = load double, double* %t, align 8
  %call92 = call double @floor(double %99) #5
  %conv93 = fptosi double %call92 to i32
  store i32 %conv93, i32* %i, align 4
  %100 = load i32, i32* %i, align 4
  %conv94 = sitofp i32 %100 to double
  %101 = load double, double* %t, align 8
  %sub95 = fsub double %101, %conv94
  store double %sub95, double* %t, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %103 = load i32, i32* %i, align 4
  %rem = srem i32 %103, %102
  store i32 %rem, i32* %i, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %104 to i64
  %105 = load double*, double** %spoke, align 8
  %arrayidx97 = getelementptr inbounds double, double* %105, i64 %idxprom96
  %106 = load double, double* %arrayidx97, align 8
  %107 = load double, double* %t, align 8
  %sub98 = fsub double 1.000000e+00, %107
  %mul99 = fmul double %106, %sub98
  %108 = load i32, i32* %i, align 4
  %add100 = add nsw i32 %108, 1
  %109 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem101 = srem i32 %add100, %109
  %idxprom102 = sext i32 %rem101 to i64
  %110 = load double*, double** %spoke, align 8
  %arrayidx103 = getelementptr inbounds double, double* %110, i64 %idxprom102
  %111 = load double, double* %arrayidx103, align 8
  %112 = load double, double* %t, align 8
  %mul104 = fmul double %111, %112
  %add105 = fadd double %mul99, %mul104
  store double %add105, double* %w1, align 8
  %113 = load double, double* %w1, align 8
  %114 = load double, double* %w1, align 8
  %mul106 = fmul double %113, %114
  store double %mul106, double* %w1, align 8
  %115 = load double, double* %l, align 8
  %add107 = fadd double %115, 1.000000e-03
  %div108 = fdiv double 1.000000e+00, %add107
  %mul109 = fmul double %div108, 9.000000e-01
  store double %mul109, double* %w, align 8
  %116 = load double, double* %w, align 8
  %cmp110 = fcmp ogt double %116, 1.000000e+00
  br i1 %cmp110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %for.body.62
  br label %cond.end.120

cond.false.113:                                   ; preds = %for.body.62
  %117 = load double, double* %w, align 8
  %cmp114 = fcmp olt double %117, 0.000000e+00
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.113
  br label %cond.end.118

cond.false.117:                                   ; preds = %cond.false.113
  %118 = load double, double* %w, align 8
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.116
  %cond119 = phi double [ 0.000000e+00, %cond.true.116 ], [ %118, %cond.false.117 ]
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.end.118, %cond.true.112
  %cond121 = phi double [ 1.000000e+00, %cond.true.112 ], [ %cond119, %cond.end.118 ]
  store double %cond121, double* %nova_alpha, align 8
  %119 = load i32, i32* %has_alpha, align 4
  %tobool122 = icmp ne i32 %119, 0
  br i1 %tobool122, label %if.then.123, label %if.else.137

if.then.123:                                      ; preds = %cond.end.120
  %120 = load i32, i32* %alpha, align 4
  %idxprom124 = sext i32 %120 to i64
  %121 = load i8*, i8** %src, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %121, i64 %idxprom124
  %122 = load i8, i8* %arrayidx125, align 1
  %conv126 = uitofp i8 %122 to double
  %div127 = fdiv double %conv126, 2.550000e+02
  store double %div127, double* %src_alpha, align 8
  %123 = load double, double* %src_alpha, align 8
  %124 = load double, double* %src_alpha, align 8
  %sub128 = fsub double 1.000000e+00, %124
  %125 = load double, double* %nova_alpha, align 8
  %mul129 = fmul double %sub128, %125
  %add130 = fadd double %123, %mul129
  store double %add130, double* %new_alpha, align 8
  %126 = load double, double* %new_alpha, align 8
  %cmp131 = fcmp une double %126, 0.000000e+00
  br i1 %cmp131, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %if.then.123
  %127 = load double, double* %nova_alpha, align 8
  %128 = load double, double* %new_alpha, align 8
  %div134 = fdiv double %127, %128
  store double %div134, double* %ratio, align 8
  br label %if.end.136

if.else.135:                                      ; preds = %if.then.123
  store double 0.000000e+00, double* %ratio, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.133
  br label %if.end.138

if.else.137:                                      ; preds = %cond.end.120
  %129 = load double, double* %nova_alpha, align 8
  store double %129, double* %ratio, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.137, %if.end.136
  %130 = load double, double* %ratio, align 8
  %sub139 = fsub double 1.000000e+00, %130
  store double %sub139, double* %compl_ratio, align 8
  %131 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %131 to i64
  %132 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx141 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %132, i64 %idxprom140
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx141, i32 0, i32 0
  %133 = load double, double* %r, align 8
  %134 = load double, double* %t, align 8
  %sub142 = fsub double 1.000000e+00, %134
  %mul143 = fmul double %133, %sub142
  %135 = load i32, i32* %i, align 4
  %add144 = add nsw i32 %135, 1
  %136 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem145 = srem i32 %add144, %136
  %idxprom146 = sext i32 %rem145 to i64
  %137 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx147 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %137, i64 %idxprom146
  %r148 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx147, i32 0, i32 0
  %138 = load double, double* %r148, align 8
  %139 = load double, double* %t, align 8
  %mul149 = fmul double %138, %139
  %add150 = fadd double %mul143, %mul149
  store double %add150, double* %spokecol, align 8
  %140 = load double, double* %w, align 8
  %cmp151 = fcmp ogt double %140, 1.000000e+00
  br i1 %cmp151, label %if.then.153, label %if.else.170

if.then.153:                                      ; preds = %if.end.138
  %141 = load double, double* %spokecol, align 8
  %142 = load double, double* %w, align 8
  %mul154 = fmul double %141, %142
  %cmp155 = fcmp ogt double %mul154, 1.000000e+00
  br i1 %cmp155, label %cond.true.157, label %cond.false.158

cond.true.157:                                    ; preds = %if.then.153
  br label %cond.end.167

cond.false.158:                                   ; preds = %if.then.153
  %143 = load double, double* %spokecol, align 8
  %144 = load double, double* %w, align 8
  %mul159 = fmul double %143, %144
  %cmp160 = fcmp olt double %mul159, 0.000000e+00
  br i1 %cmp160, label %cond.true.162, label %cond.false.163

cond.true.162:                                    ; preds = %cond.false.158
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.false.158
  %145 = load double, double* %spokecol, align 8
  %146 = load double, double* %w, align 8
  %mul164 = fmul double %145, %146
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.162
  %cond166 = phi double [ 0.000000e+00, %cond.true.162 ], [ %mul164, %cond.false.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.157
  %cond168 = phi double [ 1.000000e+00, %cond.true.157 ], [ %cond166, %cond.end.165 ]
  %r169 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %cond168, double* %r169, align 8
  br label %if.end.179

if.else.170:                                      ; preds = %if.end.138
  %147 = load i8*, i8** %src, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %147, i64 0
  %148 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %148 to i32
  %conv173 = sitofp i32 %conv172 to double
  %div174 = fdiv double %conv173, 2.550000e+02
  %149 = load double, double* %compl_ratio, align 8
  %mul175 = fmul double %div174, %149
  %150 = load double, double* %spokecol, align 8
  %151 = load double, double* %ratio, align 8
  %mul176 = fmul double %150, %151
  %add177 = fadd double %mul175, %mul176
  %r178 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %add177, double* %r178, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.170, %cond.end.167
  %152 = load double, double* %w1, align 8
  %153 = load double, double* %w, align 8
  %mul180 = fmul double %152, %153
  %cmp181 = fcmp ogt double %mul180, 1.000000e+00
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %if.end.179
  br label %cond.end.193

cond.false.184:                                   ; preds = %if.end.179
  %154 = load double, double* %w1, align 8
  %155 = load double, double* %w, align 8
  %mul185 = fmul double %154, %155
  %cmp186 = fcmp olt double %mul185, 0.000000e+00
  br i1 %cmp186, label %cond.true.188, label %cond.false.189

cond.true.188:                                    ; preds = %cond.false.184
  br label %cond.end.191

cond.false.189:                                   ; preds = %cond.false.184
  %156 = load double, double* %w1, align 8
  %157 = load double, double* %w, align 8
  %mul190 = fmul double %156, %157
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.188
  %cond192 = phi double [ 0.000000e+00, %cond.true.188 ], [ %mul190, %cond.false.189 ]
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.end.191, %cond.true.183
  %cond194 = phi double [ 1.000000e+00, %cond.true.183 ], [ %cond192, %cond.end.191 ]
  store double %cond194, double* %c, align 8
  %158 = load double, double* %c, align 8
  %r195 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %159 = load double, double* %r195, align 8
  %add196 = fadd double %159, %158
  store double %add196, double* %r195, align 8
  %r197 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %160 = load double, double* %r197, align 8
  %mul198 = fmul double %160, 2.550000e+02
  %cmp199 = fcmp ogt double %mul198, 2.550000e+02
  br i1 %cmp199, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %cond.end.193
  br label %cond.end.213

cond.false.202:                                   ; preds = %cond.end.193
  %r203 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %161 = load double, double* %r203, align 8
  %mul204 = fmul double %161, 2.550000e+02
  %cmp205 = fcmp olt double %mul204, 0.000000e+00
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %cond.false.202
  br label %cond.end.211

cond.false.208:                                   ; preds = %cond.false.202
  %r209 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %162 = load double, double* %r209, align 8
  %mul210 = fmul double %162, 2.550000e+02
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.208, %cond.true.207
  %cond212 = phi double [ 0.000000e+00, %cond.true.207 ], [ %mul210, %cond.false.208 ]
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.end.211, %cond.true.201
  %cond214 = phi double [ 2.550000e+02, %cond.true.201 ], [ %cond212, %cond.end.211 ]
  %conv215 = fptoui double %cond214 to i8
  %163 = load i8*, i8** %dest, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %163, i64 0
  store i8 %conv215, i8* %arrayidx216, align 1
  %164 = load i32, i32* %bpp, align 4
  %cmp217 = icmp sgt i32 %164, 2
  br i1 %cmp217, label %if.then.219, label %if.end.374

if.then.219:                                      ; preds = %cond.end.213
  %165 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %165 to i64
  %166 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx221 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %166, i64 %idxprom220
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx221, i32 0, i32 1
  %167 = load double, double* %g, align 8
  %168 = load double, double* %t, align 8
  %sub222 = fsub double 1.000000e+00, %168
  %mul223 = fmul double %167, %sub222
  %169 = load i32, i32* %i, align 4
  %add224 = add nsw i32 %169, 1
  %170 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem225 = srem i32 %add224, %170
  %idxprom226 = sext i32 %rem225 to i64
  %171 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx227 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %171, i64 %idxprom226
  %g228 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx227, i32 0, i32 1
  %172 = load double, double* %g228, align 8
  %173 = load double, double* %t, align 8
  %mul229 = fmul double %172, %173
  %add230 = fadd double %mul223, %mul229
  store double %add230, double* %spokecol, align 8
  %174 = load double, double* %w, align 8
  %cmp231 = fcmp ogt double %174, 1.000000e+00
  br i1 %cmp231, label %if.then.233, label %if.else.250

if.then.233:                                      ; preds = %if.then.219
  %175 = load double, double* %spokecol, align 8
  %176 = load double, double* %w, align 8
  %mul234 = fmul double %175, %176
  %cmp235 = fcmp ogt double %mul234, 1.000000e+00
  br i1 %cmp235, label %cond.true.237, label %cond.false.238

cond.true.237:                                    ; preds = %if.then.233
  br label %cond.end.247

cond.false.238:                                   ; preds = %if.then.233
  %177 = load double, double* %spokecol, align 8
  %178 = load double, double* %w, align 8
  %mul239 = fmul double %177, %178
  %cmp240 = fcmp olt double %mul239, 0.000000e+00
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %cond.false.238
  br label %cond.end.245

cond.false.243:                                   ; preds = %cond.false.238
  %179 = load double, double* %spokecol, align 8
  %180 = load double, double* %w, align 8
  %mul244 = fmul double %179, %180
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.243, %cond.true.242
  %cond246 = phi double [ 0.000000e+00, %cond.true.242 ], [ %mul244, %cond.false.243 ]
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.245, %cond.true.237
  %cond248 = phi double [ 1.000000e+00, %cond.true.237 ], [ %cond246, %cond.end.245 ]
  %g249 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %cond248, double* %g249, align 8
  br label %if.end.259

if.else.250:                                      ; preds = %if.then.219
  %181 = load i8*, i8** %src, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %181, i64 1
  %182 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %182 to i32
  %conv253 = sitofp i32 %conv252 to double
  %div254 = fdiv double %conv253, 2.550000e+02
  %183 = load double, double* %compl_ratio, align 8
  %mul255 = fmul double %div254, %183
  %184 = load double, double* %spokecol, align 8
  %185 = load double, double* %ratio, align 8
  %mul256 = fmul double %184, %185
  %add257 = fadd double %mul255, %mul256
  %g258 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %add257, double* %g258, align 8
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.250, %cond.end.247
  %186 = load double, double* %w1, align 8
  %187 = load double, double* %w, align 8
  %mul260 = fmul double %186, %187
  %cmp261 = fcmp ogt double %mul260, 1.000000e+00
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %if.end.259
  br label %cond.end.273

cond.false.264:                                   ; preds = %if.end.259
  %188 = load double, double* %w1, align 8
  %189 = load double, double* %w, align 8
  %mul265 = fmul double %188, %189
  %cmp266 = fcmp olt double %mul265, 0.000000e+00
  br i1 %cmp266, label %cond.true.268, label %cond.false.269

cond.true.268:                                    ; preds = %cond.false.264
  br label %cond.end.271

cond.false.269:                                   ; preds = %cond.false.264
  %190 = load double, double* %w1, align 8
  %191 = load double, double* %w, align 8
  %mul270 = fmul double %190, %191
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.269, %cond.true.268
  %cond272 = phi double [ 0.000000e+00, %cond.true.268 ], [ %mul270, %cond.false.269 ]
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.end.271, %cond.true.263
  %cond274 = phi double [ 1.000000e+00, %cond.true.263 ], [ %cond272, %cond.end.271 ]
  store double %cond274, double* %c, align 8
  %192 = load double, double* %c, align 8
  %g275 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %193 = load double, double* %g275, align 8
  %add276 = fadd double %193, %192
  store double %add276, double* %g275, align 8
  %g277 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %194 = load double, double* %g277, align 8
  %mul278 = fmul double %194, 2.550000e+02
  %cmp279 = fcmp ogt double %mul278, 2.550000e+02
  br i1 %cmp279, label %cond.true.281, label %cond.false.282

cond.true.281:                                    ; preds = %cond.end.273
  br label %cond.end.293

cond.false.282:                                   ; preds = %cond.end.273
  %g283 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %195 = load double, double* %g283, align 8
  %mul284 = fmul double %195, 2.550000e+02
  %cmp285 = fcmp olt double %mul284, 0.000000e+00
  br i1 %cmp285, label %cond.true.287, label %cond.false.288

cond.true.287:                                    ; preds = %cond.false.282
  br label %cond.end.291

cond.false.288:                                   ; preds = %cond.false.282
  %g289 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %196 = load double, double* %g289, align 8
  %mul290 = fmul double %196, 2.550000e+02
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.288, %cond.true.287
  %cond292 = phi double [ 0.000000e+00, %cond.true.287 ], [ %mul290, %cond.false.288 ]
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.end.291, %cond.true.281
  %cond294 = phi double [ 2.550000e+02, %cond.true.281 ], [ %cond292, %cond.end.291 ]
  %conv295 = fptoui double %cond294 to i8
  %197 = load i8*, i8** %dest, align 8
  %arrayidx296 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 %conv295, i8* %arrayidx296, align 1
  %198 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %198 to i64
  %199 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx298 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %199, i64 %idxprom297
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx298, i32 0, i32 2
  %200 = load double, double* %b, align 8
  %201 = load double, double* %t, align 8
  %sub299 = fsub double 1.000000e+00, %201
  %mul300 = fmul double %200, %sub299
  %202 = load i32, i32* %i, align 4
  %add301 = add nsw i32 %202, 1
  %203 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem302 = srem i32 %add301, %203
  %idxprom303 = sext i32 %rem302 to i64
  %204 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx304 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %204, i64 %idxprom303
  %b305 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx304, i32 0, i32 2
  %205 = load double, double* %b305, align 8
  %206 = load double, double* %t, align 8
  %mul306 = fmul double %205, %206
  %add307 = fadd double %mul300, %mul306
  store double %add307, double* %spokecol, align 8
  %207 = load double, double* %w, align 8
  %cmp308 = fcmp ogt double %207, 1.000000e+00
  br i1 %cmp308, label %if.then.310, label %if.else.327

if.then.310:                                      ; preds = %cond.end.293
  %208 = load double, double* %spokecol, align 8
  %209 = load double, double* %w, align 8
  %mul311 = fmul double %208, %209
  %cmp312 = fcmp ogt double %mul311, 1.000000e+00
  br i1 %cmp312, label %cond.true.314, label %cond.false.315

cond.true.314:                                    ; preds = %if.then.310
  br label %cond.end.324

cond.false.315:                                   ; preds = %if.then.310
  %210 = load double, double* %spokecol, align 8
  %211 = load double, double* %w, align 8
  %mul316 = fmul double %210, %211
  %cmp317 = fcmp olt double %mul316, 0.000000e+00
  br i1 %cmp317, label %cond.true.319, label %cond.false.320

cond.true.319:                                    ; preds = %cond.false.315
  br label %cond.end.322

cond.false.320:                                   ; preds = %cond.false.315
  %212 = load double, double* %spokecol, align 8
  %213 = load double, double* %w, align 8
  %mul321 = fmul double %212, %213
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.320, %cond.true.319
  %cond323 = phi double [ 0.000000e+00, %cond.true.319 ], [ %mul321, %cond.false.320 ]
  br label %cond.end.324

cond.end.324:                                     ; preds = %cond.end.322, %cond.true.314
  %cond325 = phi double [ 1.000000e+00, %cond.true.314 ], [ %cond323, %cond.end.322 ]
  %b326 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %cond325, double* %b326, align 8
  br label %if.end.336

if.else.327:                                      ; preds = %cond.end.293
  %214 = load i8*, i8** %src, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %214, i64 2
  %215 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %215 to i32
  %conv330 = sitofp i32 %conv329 to double
  %div331 = fdiv double %conv330, 2.550000e+02
  %216 = load double, double* %compl_ratio, align 8
  %mul332 = fmul double %div331, %216
  %217 = load double, double* %spokecol, align 8
  %218 = load double, double* %ratio, align 8
  %mul333 = fmul double %217, %218
  %add334 = fadd double %mul332, %mul333
  %b335 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %add334, double* %b335, align 8
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.327, %cond.end.324
  %219 = load double, double* %w1, align 8
  %220 = load double, double* %w, align 8
  %mul337 = fmul double %219, %220
  %cmp338 = fcmp ogt double %mul337, 1.000000e+00
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %if.end.336
  br label %cond.end.350

cond.false.341:                                   ; preds = %if.end.336
  %221 = load double, double* %w1, align 8
  %222 = load double, double* %w, align 8
  %mul342 = fmul double %221, %222
  %cmp343 = fcmp olt double %mul342, 0.000000e+00
  br i1 %cmp343, label %cond.true.345, label %cond.false.346

cond.true.345:                                    ; preds = %cond.false.341
  br label %cond.end.348

cond.false.346:                                   ; preds = %cond.false.341
  %223 = load double, double* %w1, align 8
  %224 = load double, double* %w, align 8
  %mul347 = fmul double %223, %224
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.346, %cond.true.345
  %cond349 = phi double [ 0.000000e+00, %cond.true.345 ], [ %mul347, %cond.false.346 ]
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.end.348, %cond.true.340
  %cond351 = phi double [ 1.000000e+00, %cond.true.340 ], [ %cond349, %cond.end.348 ]
  store double %cond351, double* %c, align 8
  %225 = load double, double* %c, align 8
  %b352 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %226 = load double, double* %b352, align 8
  %add353 = fadd double %226, %225
  store double %add353, double* %b352, align 8
  %b354 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %227 = load double, double* %b354, align 8
  %mul355 = fmul double %227, 2.550000e+02
  %cmp356 = fcmp ogt double %mul355, 2.550000e+02
  br i1 %cmp356, label %cond.true.358, label %cond.false.359

cond.true.358:                                    ; preds = %cond.end.350
  br label %cond.end.370

cond.false.359:                                   ; preds = %cond.end.350
  %b360 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %228 = load double, double* %b360, align 8
  %mul361 = fmul double %228, 2.550000e+02
  %cmp362 = fcmp olt double %mul361, 0.000000e+00
  br i1 %cmp362, label %cond.true.364, label %cond.false.365

cond.true.364:                                    ; preds = %cond.false.359
  br label %cond.end.368

cond.false.365:                                   ; preds = %cond.false.359
  %b366 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %229 = load double, double* %b366, align 8
  %mul367 = fmul double %229, 2.550000e+02
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.365, %cond.true.364
  %cond369 = phi double [ 0.000000e+00, %cond.true.364 ], [ %mul367, %cond.false.365 ]
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.end.368, %cond.true.358
  %cond371 = phi double [ 2.550000e+02, %cond.true.358 ], [ %cond369, %cond.end.368 ]
  %conv372 = fptoui double %cond371 to i8
  %230 = load i8*, i8** %dest, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %230, i64 2
  store i8 %conv372, i8* %arrayidx373, align 1
  br label %if.end.374

if.end.374:                                       ; preds = %cond.end.370, %cond.end.213
  %231 = load i32, i32* %has_alpha, align 4
  %tobool375 = icmp ne i32 %231, 0
  br i1 %tobool375, label %if.then.376, label %if.end.381

if.then.376:                                      ; preds = %if.end.374
  %232 = load double, double* %new_alpha, align 8
  %mul377 = fmul double %232, 2.550000e+02
  %conv378 = fptoui double %mul377 to i8
  %233 = load i32, i32* %alpha, align 4
  %idxprom379 = sext i32 %233 to i64
  %234 = load i8*, i8** %dest, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %234, i64 %idxprom379
  store i8 %conv378, i8* %arrayidx380, align 1
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.376, %if.end.374
  %235 = load i32, i32* %bpp, align 4
  %236 = load i8*, i8** %src, align 8
  %idx.ext382 = sext i32 %235 to i64
  %add.ptr383 = getelementptr inbounds i8, i8* %236, i64 %idx.ext382
  store i8* %add.ptr383, i8** %src, align 8
  %237 = load i32, i32* %bpp, align 4
  %238 = load i8*, i8** %dest, align 8
  %idx.ext384 = sext i32 %237 to i64
  %add.ptr385 = getelementptr inbounds i8, i8* %238, i64 %idx.ext384
  store i8* %add.ptr385, i8** %dest, align 8
  br label %for.inc.386

for.inc.386:                                      ; preds = %if.end.381
  %239 = load i32, i32* %col, align 4
  %inc387 = add nsw i32 %239, 1
  store i32 %inc387, i32* %col, align 4
  %240 = load i32, i32* %x, align 4
  %inc388 = add nsw i32 %240, 1
  store i32 %inc388, i32* %x, align 4
  br label %for.cond.59

for.end.389:                                      ; preds = %for.cond.59
  br label %for.inc.390

for.inc.390:                                      ; preds = %for.end.389
  %241 = load i32, i32* %row, align 4
  %inc391 = add nsw i32 %241, 1
  store i32 %inc391, i32* %row, align 4
  %242 = load i32, i32* %y, align 4
  %inc392 = add nsw i32 %242, 1
  store i32 %inc392, i32* %y, align 4
  br label %for.cond.55

for.end.393:                                      ; preds = %for.cond.55
  %243 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %244 = load i8*, i8** %dest_row, align 8
  %245 = load i32, i32* %bpp, align 4
  %246 = load i32, i32* %width, align 4
  %mul394 = mul nsw i32 %245, %246
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %243, i8* %244, i32 %mul394)
  %247 = load i8*, i8** %cache, align 8
  call void @g_free(i8* %247)
  %248 = load i8*, i8** %save_src, align 8
  call void @g_free(i8* %248)
  %249 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %249)
  br label %if.end.837

if.else.395:                                      ; preds = %cond.end
  %call396 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call396, i8** %pr, align 8
  br label %for.cond.397

for.cond.397:                                     ; preds = %for.inc.827, %if.else.395
  %250 = load i8*, i8** %pr, align 8
  %cmp398 = icmp ne i8* %250, null
  br i1 %cmp398, label %for.body.400, label %for.end.829

for.body.400:                                     ; preds = %for.cond.397
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %251 = load i8*, i8** %data, align 8
  store i8* %251, i8** %src_row, align 8
  %data401 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %252 = load i8*, i8** %data401, align 8
  store i8* %252, i8** %dest_row, align 8
  store i32 0, i32* %row, align 4
  %y402 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %253 = load i32, i32* %y402, align 4
  store i32 %253, i32* %y, align 4
  br label %for.cond.403

for.cond.403:                                     ; preds = %for.inc.815, %for.body.400
  %254 = load i32, i32* %row, align 4
  %h404 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %255 = load i32, i32* %h404, align 4
  %cmp405 = icmp slt i32 %254, %255
  br i1 %cmp405, label %for.body.407, label %for.end.818

for.body.407:                                     ; preds = %for.cond.403
  %256 = load i8*, i8** %src_row, align 8
  store i8* %256, i8** %src, align 8
  %257 = load i8*, i8** %dest_row, align 8
  store i8* %257, i8** %dest, align 8
  store i32 0, i32* %col, align 4
  %x408 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %258 = load i32, i32* %x408, align 4
  store i32 %258, i32* %x, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.806, %for.body.407
  %259 = load i32, i32* %col, align 4
  %w410 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %260 = load i32, i32* %w410, align 4
  %cmp411 = icmp slt i32 %259, %260
  br i1 %cmp411, label %for.body.413, label %for.end.809

for.body.413:                                     ; preds = %for.cond.409
  %261 = load i32, i32* %x, align 4
  %262 = load i32, i32* %xc, align 4
  %sub414 = sub nsw i32 %261, %262
  %conv415 = sitofp i32 %sub414 to double
  %263 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %conv416 = sitofp i32 %263 to double
  %div417 = fdiv double %conv415, %conv416
  store double %div417, double* %u, align 8
  %264 = load i32, i32* %y, align 4
  %265 = load i32, i32* %yc, align 4
  %sub418 = sub nsw i32 %264, %265
  %conv419 = sitofp i32 %sub418 to double
  %266 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 3), align 4
  %conv420 = sitofp i32 %266 to double
  %div421 = fdiv double %conv419, %conv420
  store double %div421, double* %v, align 8
  %267 = load double, double* %u, align 8
  %268 = load double, double* %u, align 8
  %mul422 = fmul double %267, %268
  %269 = load double, double* %v, align 8
  %270 = load double, double* %v, align 8
  %mul423 = fmul double %269, %270
  %add424 = fadd double %mul422, %mul423
  %call425 = call double @sqrt(double %add424) #4
  store double %call425, double* %l, align 8
  %271 = load double, double* %u, align 8
  %272 = load double, double* %v, align 8
  %call426 = call double @atan2(double %271, double %272) #4
  %div427 = fdiv double %call426, 0x401921FB54442D18
  %add428 = fadd double %div427, 5.100000e-01
  %273 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %conv429 = sitofp i32 %273 to double
  %mul430 = fmul double %add428, %conv429
  store double %mul430, double* %t, align 8
  %274 = load double, double* %t, align 8
  %call431 = call double @floor(double %274) #5
  %conv432 = fptosi double %call431 to i32
  store i32 %conv432, i32* %i, align 4
  %275 = load i32, i32* %i, align 4
  %conv433 = sitofp i32 %275 to double
  %276 = load double, double* %t, align 8
  %sub434 = fsub double %276, %conv433
  store double %sub434, double* %t, align 8
  %277 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %278 = load i32, i32* %i, align 4
  %rem435 = srem i32 %278, %277
  store i32 %rem435, i32* %i, align 4
  %279 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %279 to i64
  %280 = load double*, double** %spoke, align 8
  %arrayidx437 = getelementptr inbounds double, double* %280, i64 %idxprom436
  %281 = load double, double* %arrayidx437, align 8
  %282 = load double, double* %t, align 8
  %sub438 = fsub double 1.000000e+00, %282
  %mul439 = fmul double %281, %sub438
  %283 = load i32, i32* %i, align 4
  %add440 = add nsw i32 %283, 1
  %284 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem441 = srem i32 %add440, %284
  %idxprom442 = sext i32 %rem441 to i64
  %285 = load double*, double** %spoke, align 8
  %arrayidx443 = getelementptr inbounds double, double* %285, i64 %idxprom442
  %286 = load double, double* %arrayidx443, align 8
  %287 = load double, double* %t, align 8
  %mul444 = fmul double %286, %287
  %add445 = fadd double %mul439, %mul444
  store double %add445, double* %w1, align 8
  %288 = load double, double* %w1, align 8
  %289 = load double, double* %w1, align 8
  %mul446 = fmul double %288, %289
  store double %mul446, double* %w1, align 8
  %290 = load double, double* %l, align 8
  %add447 = fadd double %290, 1.000000e-03
  %div448 = fdiv double 1.000000e+00, %add447
  %mul449 = fmul double %div448, 9.000000e-01
  store double %mul449, double* %w, align 8
  %291 = load double, double* %w, align 8
  %cmp450 = fcmp ogt double %291, 1.000000e+00
  br i1 %cmp450, label %cond.true.452, label %cond.false.453

cond.true.452:                                    ; preds = %for.body.413
  br label %cond.end.460

cond.false.453:                                   ; preds = %for.body.413
  %292 = load double, double* %w, align 8
  %cmp454 = fcmp olt double %292, 0.000000e+00
  br i1 %cmp454, label %cond.true.456, label %cond.false.457

cond.true.456:                                    ; preds = %cond.false.453
  br label %cond.end.458

cond.false.457:                                   ; preds = %cond.false.453
  %293 = load double, double* %w, align 8
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.false.457, %cond.true.456
  %cond459 = phi double [ 0.000000e+00, %cond.true.456 ], [ %293, %cond.false.457 ]
  br label %cond.end.460

cond.end.460:                                     ; preds = %cond.end.458, %cond.true.452
  %cond461 = phi double [ 1.000000e+00, %cond.true.452 ], [ %cond459, %cond.end.458 ]
  store double %cond461, double* %nova_alpha, align 8
  %294 = load i32, i32* %has_alpha, align 4
  %tobool462 = icmp ne i32 %294, 0
  br i1 %tobool462, label %if.then.463, label %if.else.477

if.then.463:                                      ; preds = %cond.end.460
  %295 = load i32, i32* %alpha, align 4
  %idxprom464 = sext i32 %295 to i64
  %296 = load i8*, i8** %src, align 8
  %arrayidx465 = getelementptr inbounds i8, i8* %296, i64 %idxprom464
  %297 = load i8, i8* %arrayidx465, align 1
  %conv466 = uitofp i8 %297 to double
  %div467 = fdiv double %conv466, 2.550000e+02
  store double %div467, double* %src_alpha, align 8
  %298 = load double, double* %src_alpha, align 8
  %299 = load double, double* %src_alpha, align 8
  %sub468 = fsub double 1.000000e+00, %299
  %300 = load double, double* %nova_alpha, align 8
  %mul469 = fmul double %sub468, %300
  %add470 = fadd double %298, %mul469
  store double %add470, double* %new_alpha, align 8
  %301 = load double, double* %new_alpha, align 8
  %cmp471 = fcmp une double %301, 0.000000e+00
  br i1 %cmp471, label %if.then.473, label %if.else.475

if.then.473:                                      ; preds = %if.then.463
  %302 = load double, double* %nova_alpha, align 8
  %303 = load double, double* %new_alpha, align 8
  %div474 = fdiv double %302, %303
  store double %div474, double* %ratio, align 8
  br label %if.end.476

if.else.475:                                      ; preds = %if.then.463
  store double 0.000000e+00, double* %ratio, align 8
  br label %if.end.476

if.end.476:                                       ; preds = %if.else.475, %if.then.473
  br label %if.end.478

if.else.477:                                      ; preds = %cond.end.460
  %304 = load double, double* %nova_alpha, align 8
  store double %304, double* %ratio, align 8
  br label %if.end.478

if.end.478:                                       ; preds = %if.else.477, %if.end.476
  %305 = load double, double* %ratio, align 8
  %sub479 = fsub double 1.000000e+00, %305
  store double %sub479, double* %compl_ratio, align 8
  %306 = load i32, i32* %bpp, align 4
  switch i32 %306, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.558
    i32 4, label %sw.bb.558
  ]

sw.bb:                                            ; preds = %if.end.478, %if.end.478
  %307 = load i32, i32* %i, align 4
  %idxprom480 = sext i32 %307 to i64
  %308 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx481 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %308, i64 %idxprom480
  %r482 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx481, i32 0, i32 0
  %309 = load double, double* %r482, align 8
  %310 = load double, double* %t, align 8
  %sub483 = fsub double 1.000000e+00, %310
  %mul484 = fmul double %309, %sub483
  %311 = load i32, i32* %i, align 4
  %add485 = add nsw i32 %311, 1
  %312 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem486 = srem i32 %add485, %312
  %idxprom487 = sext i32 %rem486 to i64
  %313 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx488 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %313, i64 %idxprom487
  %r489 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx488, i32 0, i32 0
  %314 = load double, double* %r489, align 8
  %315 = load double, double* %t, align 8
  %mul490 = fmul double %314, %315
  %add491 = fadd double %mul484, %mul490
  store double %add491, double* %spokecol, align 8
  %316 = load double, double* %w, align 8
  %cmp492 = fcmp ogt double %316, 1.000000e+00
  br i1 %cmp492, label %if.then.494, label %if.else.511

if.then.494:                                      ; preds = %sw.bb
  %317 = load double, double* %spokecol, align 8
  %318 = load double, double* %w, align 8
  %mul495 = fmul double %317, %318
  %cmp496 = fcmp ogt double %mul495, 1.000000e+00
  br i1 %cmp496, label %cond.true.498, label %cond.false.499

cond.true.498:                                    ; preds = %if.then.494
  br label %cond.end.508

cond.false.499:                                   ; preds = %if.then.494
  %319 = load double, double* %spokecol, align 8
  %320 = load double, double* %w, align 8
  %mul500 = fmul double %319, %320
  %cmp501 = fcmp olt double %mul500, 0.000000e+00
  br i1 %cmp501, label %cond.true.503, label %cond.false.504

cond.true.503:                                    ; preds = %cond.false.499
  br label %cond.end.506

cond.false.504:                                   ; preds = %cond.false.499
  %321 = load double, double* %spokecol, align 8
  %322 = load double, double* %w, align 8
  %mul505 = fmul double %321, %322
  br label %cond.end.506

cond.end.506:                                     ; preds = %cond.false.504, %cond.true.503
  %cond507 = phi double [ 0.000000e+00, %cond.true.503 ], [ %mul505, %cond.false.504 ]
  br label %cond.end.508

cond.end.508:                                     ; preds = %cond.end.506, %cond.true.498
  %cond509 = phi double [ 1.000000e+00, %cond.true.498 ], [ %cond507, %cond.end.506 ]
  %r510 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %cond509, double* %r510, align 8
  br label %if.end.520

if.else.511:                                      ; preds = %sw.bb
  %323 = load i8*, i8** %src, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %323, i64 0
  %324 = load i8, i8* %arrayidx512, align 1
  %conv513 = zext i8 %324 to i32
  %conv514 = sitofp i32 %conv513 to double
  %div515 = fdiv double %conv514, 2.550000e+02
  %325 = load double, double* %compl_ratio, align 8
  %mul516 = fmul double %div515, %325
  %326 = load double, double* %spokecol, align 8
  %327 = load double, double* %ratio, align 8
  %mul517 = fmul double %326, %327
  %add518 = fadd double %mul516, %mul517
  %r519 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %add518, double* %r519, align 8
  br label %if.end.520

if.end.520:                                       ; preds = %if.else.511, %cond.end.508
  %328 = load double, double* %w1, align 8
  %329 = load double, double* %w, align 8
  %mul521 = fmul double %328, %329
  %cmp522 = fcmp ogt double %mul521, 1.000000e+00
  br i1 %cmp522, label %cond.true.524, label %cond.false.525

cond.true.524:                                    ; preds = %if.end.520
  br label %cond.end.534

cond.false.525:                                   ; preds = %if.end.520
  %330 = load double, double* %w1, align 8
  %331 = load double, double* %w, align 8
  %mul526 = fmul double %330, %331
  %cmp527 = fcmp olt double %mul526, 0.000000e+00
  br i1 %cmp527, label %cond.true.529, label %cond.false.530

cond.true.529:                                    ; preds = %cond.false.525
  br label %cond.end.532

cond.false.530:                                   ; preds = %cond.false.525
  %332 = load double, double* %w1, align 8
  %333 = load double, double* %w, align 8
  %mul531 = fmul double %332, %333
  br label %cond.end.532

cond.end.532:                                     ; preds = %cond.false.530, %cond.true.529
  %cond533 = phi double [ 0.000000e+00, %cond.true.529 ], [ %mul531, %cond.false.530 ]
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.end.532, %cond.true.524
  %cond535 = phi double [ 1.000000e+00, %cond.true.524 ], [ %cond533, %cond.end.532 ]
  store double %cond535, double* %c, align 8
  %334 = load double, double* %c, align 8
  %r536 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %335 = load double, double* %r536, align 8
  %add537 = fadd double %335, %334
  store double %add537, double* %r536, align 8
  %r538 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %336 = load double, double* %r538, align 8
  %mul539 = fmul double %336, 2.550000e+02
  %cmp540 = fcmp ogt double %mul539, 2.550000e+02
  br i1 %cmp540, label %cond.true.542, label %cond.false.543

cond.true.542:                                    ; preds = %cond.end.534
  br label %cond.end.554

cond.false.543:                                   ; preds = %cond.end.534
  %r544 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %337 = load double, double* %r544, align 8
  %mul545 = fmul double %337, 2.550000e+02
  %cmp546 = fcmp olt double %mul545, 0.000000e+00
  br i1 %cmp546, label %cond.true.548, label %cond.false.549

cond.true.548:                                    ; preds = %cond.false.543
  br label %cond.end.552

cond.false.549:                                   ; preds = %cond.false.543
  %r550 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %338 = load double, double* %r550, align 8
  %mul551 = fmul double %338, 2.550000e+02
  br label %cond.end.552

cond.end.552:                                     ; preds = %cond.false.549, %cond.true.548
  %cond553 = phi double [ 0.000000e+00, %cond.true.548 ], [ %mul551, %cond.false.549 ]
  br label %cond.end.554

cond.end.554:                                     ; preds = %cond.end.552, %cond.true.542
  %cond555 = phi double [ 2.550000e+02, %cond.true.542 ], [ %cond553, %cond.end.552 ]
  %conv556 = fptoui double %cond555 to i8
  %339 = load i8*, i8** %dest, align 8
  %arrayidx557 = getelementptr inbounds i8, i8* %339, i64 0
  store i8 %conv556, i8* %arrayidx557, align 1
  br label %sw.epilog

sw.bb.558:                                        ; preds = %if.end.478, %if.end.478
  %340 = load i32, i32* %i, align 4
  %idxprom559 = sext i32 %340 to i64
  %341 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx560 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %341, i64 %idxprom559
  %r561 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx560, i32 0, i32 0
  %342 = load double, double* %r561, align 8
  %343 = load double, double* %t, align 8
  %sub562 = fsub double 1.000000e+00, %343
  %mul563 = fmul double %342, %sub562
  %344 = load i32, i32* %i, align 4
  %add564 = add nsw i32 %344, 1
  %345 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem565 = srem i32 %add564, %345
  %idxprom566 = sext i32 %rem565 to i64
  %346 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx567 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %346, i64 %idxprom566
  %r568 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx567, i32 0, i32 0
  %347 = load double, double* %r568, align 8
  %348 = load double, double* %t, align 8
  %mul569 = fmul double %347, %348
  %add570 = fadd double %mul563, %mul569
  store double %add570, double* %spokecol, align 8
  %349 = load double, double* %w, align 8
  %cmp571 = fcmp ogt double %349, 1.000000e+00
  br i1 %cmp571, label %if.then.573, label %if.else.590

if.then.573:                                      ; preds = %sw.bb.558
  %350 = load double, double* %spokecol, align 8
  %351 = load double, double* %w, align 8
  %mul574 = fmul double %350, %351
  %cmp575 = fcmp ogt double %mul574, 1.000000e+00
  br i1 %cmp575, label %cond.true.577, label %cond.false.578

cond.true.577:                                    ; preds = %if.then.573
  br label %cond.end.587

cond.false.578:                                   ; preds = %if.then.573
  %352 = load double, double* %spokecol, align 8
  %353 = load double, double* %w, align 8
  %mul579 = fmul double %352, %353
  %cmp580 = fcmp olt double %mul579, 0.000000e+00
  br i1 %cmp580, label %cond.true.582, label %cond.false.583

cond.true.582:                                    ; preds = %cond.false.578
  br label %cond.end.585

cond.false.583:                                   ; preds = %cond.false.578
  %354 = load double, double* %spokecol, align 8
  %355 = load double, double* %w, align 8
  %mul584 = fmul double %354, %355
  br label %cond.end.585

cond.end.585:                                     ; preds = %cond.false.583, %cond.true.582
  %cond586 = phi double [ 0.000000e+00, %cond.true.582 ], [ %mul584, %cond.false.583 ]
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.end.585, %cond.true.577
  %cond588 = phi double [ 1.000000e+00, %cond.true.577 ], [ %cond586, %cond.end.585 ]
  %r589 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %cond588, double* %r589, align 8
  br label %if.end.599

if.else.590:                                      ; preds = %sw.bb.558
  %356 = load i8*, i8** %src, align 8
  %arrayidx591 = getelementptr inbounds i8, i8* %356, i64 0
  %357 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %357 to i32
  %conv593 = sitofp i32 %conv592 to double
  %div594 = fdiv double %conv593, 2.550000e+02
  %358 = load double, double* %compl_ratio, align 8
  %mul595 = fmul double %div594, %358
  %359 = load double, double* %spokecol, align 8
  %360 = load double, double* %ratio, align 8
  %mul596 = fmul double %359, %360
  %add597 = fadd double %mul595, %mul596
  %r598 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  store double %add597, double* %r598, align 8
  br label %if.end.599

if.end.599:                                       ; preds = %if.else.590, %cond.end.587
  %361 = load double, double* %w1, align 8
  %362 = load double, double* %w, align 8
  %mul600 = fmul double %361, %362
  %cmp601 = fcmp ogt double %mul600, 1.000000e+00
  br i1 %cmp601, label %cond.true.603, label %cond.false.604

cond.true.603:                                    ; preds = %if.end.599
  br label %cond.end.613

cond.false.604:                                   ; preds = %if.end.599
  %363 = load double, double* %w1, align 8
  %364 = load double, double* %w, align 8
  %mul605 = fmul double %363, %364
  %cmp606 = fcmp olt double %mul605, 0.000000e+00
  br i1 %cmp606, label %cond.true.608, label %cond.false.609

cond.true.608:                                    ; preds = %cond.false.604
  br label %cond.end.611

cond.false.609:                                   ; preds = %cond.false.604
  %365 = load double, double* %w1, align 8
  %366 = load double, double* %w, align 8
  %mul610 = fmul double %365, %366
  br label %cond.end.611

cond.end.611:                                     ; preds = %cond.false.609, %cond.true.608
  %cond612 = phi double [ 0.000000e+00, %cond.true.608 ], [ %mul610, %cond.false.609 ]
  br label %cond.end.613

cond.end.613:                                     ; preds = %cond.end.611, %cond.true.603
  %cond614 = phi double [ 1.000000e+00, %cond.true.603 ], [ %cond612, %cond.end.611 ]
  store double %cond614, double* %c, align 8
  %367 = load double, double* %c, align 8
  %r615 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %368 = load double, double* %r615, align 8
  %add616 = fadd double %368, %367
  store double %add616, double* %r615, align 8
  %r617 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %369 = load double, double* %r617, align 8
  %mul618 = fmul double %369, 2.550000e+02
  %cmp619 = fcmp ogt double %mul618, 2.550000e+02
  br i1 %cmp619, label %cond.true.621, label %cond.false.622

cond.true.621:                                    ; preds = %cond.end.613
  br label %cond.end.633

cond.false.622:                                   ; preds = %cond.end.613
  %r623 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %370 = load double, double* %r623, align 8
  %mul624 = fmul double %370, 2.550000e+02
  %cmp625 = fcmp olt double %mul624, 0.000000e+00
  br i1 %cmp625, label %cond.true.627, label %cond.false.628

cond.true.627:                                    ; preds = %cond.false.622
  br label %cond.end.631

cond.false.628:                                   ; preds = %cond.false.622
  %r629 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %371 = load double, double* %r629, align 8
  %mul630 = fmul double %371, 2.550000e+02
  br label %cond.end.631

cond.end.631:                                     ; preds = %cond.false.628, %cond.true.627
  %cond632 = phi double [ 0.000000e+00, %cond.true.627 ], [ %mul630, %cond.false.628 ]
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.end.631, %cond.true.621
  %cond634 = phi double [ 2.550000e+02, %cond.true.621 ], [ %cond632, %cond.end.631 ]
  %conv635 = fptoui double %cond634 to i8
  %372 = load i8*, i8** %dest, align 8
  %arrayidx636 = getelementptr inbounds i8, i8* %372, i64 0
  store i8 %conv635, i8* %arrayidx636, align 1
  %373 = load i32, i32* %i, align 4
  %idxprom637 = sext i32 %373 to i64
  %374 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx638 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %374, i64 %idxprom637
  %g639 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx638, i32 0, i32 1
  %375 = load double, double* %g639, align 8
  %376 = load double, double* %t, align 8
  %sub640 = fsub double 1.000000e+00, %376
  %mul641 = fmul double %375, %sub640
  %377 = load i32, i32* %i, align 4
  %add642 = add nsw i32 %377, 1
  %378 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem643 = srem i32 %add642, %378
  %idxprom644 = sext i32 %rem643 to i64
  %379 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx645 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %379, i64 %idxprom644
  %g646 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx645, i32 0, i32 1
  %380 = load double, double* %g646, align 8
  %381 = load double, double* %t, align 8
  %mul647 = fmul double %380, %381
  %add648 = fadd double %mul641, %mul647
  store double %add648, double* %spokecol, align 8
  %382 = load double, double* %w, align 8
  %cmp649 = fcmp ogt double %382, 1.000000e+00
  br i1 %cmp649, label %if.then.651, label %if.else.668

if.then.651:                                      ; preds = %cond.end.633
  %383 = load double, double* %spokecol, align 8
  %384 = load double, double* %w, align 8
  %mul652 = fmul double %383, %384
  %cmp653 = fcmp ogt double %mul652, 1.000000e+00
  br i1 %cmp653, label %cond.true.655, label %cond.false.656

cond.true.655:                                    ; preds = %if.then.651
  br label %cond.end.665

cond.false.656:                                   ; preds = %if.then.651
  %385 = load double, double* %spokecol, align 8
  %386 = load double, double* %w, align 8
  %mul657 = fmul double %385, %386
  %cmp658 = fcmp olt double %mul657, 0.000000e+00
  br i1 %cmp658, label %cond.true.660, label %cond.false.661

cond.true.660:                                    ; preds = %cond.false.656
  br label %cond.end.663

cond.false.661:                                   ; preds = %cond.false.656
  %387 = load double, double* %spokecol, align 8
  %388 = load double, double* %w, align 8
  %mul662 = fmul double %387, %388
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.false.661, %cond.true.660
  %cond664 = phi double [ 0.000000e+00, %cond.true.660 ], [ %mul662, %cond.false.661 ]
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.end.663, %cond.true.655
  %cond666 = phi double [ 1.000000e+00, %cond.true.655 ], [ %cond664, %cond.end.663 ]
  %g667 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %cond666, double* %g667, align 8
  br label %if.end.677

if.else.668:                                      ; preds = %cond.end.633
  %389 = load i8*, i8** %src, align 8
  %arrayidx669 = getelementptr inbounds i8, i8* %389, i64 1
  %390 = load i8, i8* %arrayidx669, align 1
  %conv670 = zext i8 %390 to i32
  %conv671 = sitofp i32 %conv670 to double
  %div672 = fdiv double %conv671, 2.550000e+02
  %391 = load double, double* %compl_ratio, align 8
  %mul673 = fmul double %div672, %391
  %392 = load double, double* %spokecol, align 8
  %393 = load double, double* %ratio, align 8
  %mul674 = fmul double %392, %393
  %add675 = fadd double %mul673, %mul674
  %g676 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  store double %add675, double* %g676, align 8
  br label %if.end.677

if.end.677:                                       ; preds = %if.else.668, %cond.end.665
  %394 = load double, double* %w1, align 8
  %395 = load double, double* %w, align 8
  %mul678 = fmul double %394, %395
  %cmp679 = fcmp ogt double %mul678, 1.000000e+00
  br i1 %cmp679, label %cond.true.681, label %cond.false.682

cond.true.681:                                    ; preds = %if.end.677
  br label %cond.end.691

cond.false.682:                                   ; preds = %if.end.677
  %396 = load double, double* %w1, align 8
  %397 = load double, double* %w, align 8
  %mul683 = fmul double %396, %397
  %cmp684 = fcmp olt double %mul683, 0.000000e+00
  br i1 %cmp684, label %cond.true.686, label %cond.false.687

cond.true.686:                                    ; preds = %cond.false.682
  br label %cond.end.689

cond.false.687:                                   ; preds = %cond.false.682
  %398 = load double, double* %w1, align 8
  %399 = load double, double* %w, align 8
  %mul688 = fmul double %398, %399
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.false.687, %cond.true.686
  %cond690 = phi double [ 0.000000e+00, %cond.true.686 ], [ %mul688, %cond.false.687 ]
  br label %cond.end.691

cond.end.691:                                     ; preds = %cond.end.689, %cond.true.681
  %cond692 = phi double [ 1.000000e+00, %cond.true.681 ], [ %cond690, %cond.end.689 ]
  store double %cond692, double* %c, align 8
  %400 = load double, double* %c, align 8
  %g693 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %401 = load double, double* %g693, align 8
  %add694 = fadd double %401, %400
  store double %add694, double* %g693, align 8
  %g695 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %402 = load double, double* %g695, align 8
  %mul696 = fmul double %402, 2.550000e+02
  %cmp697 = fcmp ogt double %mul696, 2.550000e+02
  br i1 %cmp697, label %cond.true.699, label %cond.false.700

cond.true.699:                                    ; preds = %cond.end.691
  br label %cond.end.711

cond.false.700:                                   ; preds = %cond.end.691
  %g701 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %403 = load double, double* %g701, align 8
  %mul702 = fmul double %403, 2.550000e+02
  %cmp703 = fcmp olt double %mul702, 0.000000e+00
  br i1 %cmp703, label %cond.true.705, label %cond.false.706

cond.true.705:                                    ; preds = %cond.false.700
  br label %cond.end.709

cond.false.706:                                   ; preds = %cond.false.700
  %g707 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %404 = load double, double* %g707, align 8
  %mul708 = fmul double %404, 2.550000e+02
  br label %cond.end.709

cond.end.709:                                     ; preds = %cond.false.706, %cond.true.705
  %cond710 = phi double [ 0.000000e+00, %cond.true.705 ], [ %mul708, %cond.false.706 ]
  br label %cond.end.711

cond.end.711:                                     ; preds = %cond.end.709, %cond.true.699
  %cond712 = phi double [ 2.550000e+02, %cond.true.699 ], [ %cond710, %cond.end.709 ]
  %conv713 = fptoui double %cond712 to i8
  %405 = load i8*, i8** %dest, align 8
  %arrayidx714 = getelementptr inbounds i8, i8* %405, i64 1
  store i8 %conv713, i8* %arrayidx714, align 1
  %406 = load i32, i32* %i, align 4
  %idxprom715 = sext i32 %406 to i64
  %407 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx716 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %407, i64 %idxprom715
  %b717 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx716, i32 0, i32 2
  %408 = load double, double* %b717, align 8
  %409 = load double, double* %t, align 8
  %sub718 = fsub double 1.000000e+00, %409
  %mul719 = fmul double %408, %sub718
  %410 = load i32, i32* %i, align 4
  %add720 = add nsw i32 %410, 1
  %411 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 4), align 4
  %rem721 = srem i32 %add720, %411
  %idxprom722 = sext i32 %rem721 to i64
  %412 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %arrayidx723 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %412, i64 %idxprom722
  %b724 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx723, i32 0, i32 2
  %413 = load double, double* %b724, align 8
  %414 = load double, double* %t, align 8
  %mul725 = fmul double %413, %414
  %add726 = fadd double %mul719, %mul725
  store double %add726, double* %spokecol, align 8
  %415 = load double, double* %w, align 8
  %cmp727 = fcmp ogt double %415, 1.000000e+00
  br i1 %cmp727, label %if.then.729, label %if.else.746

if.then.729:                                      ; preds = %cond.end.711
  %416 = load double, double* %spokecol, align 8
  %417 = load double, double* %w, align 8
  %mul730 = fmul double %416, %417
  %cmp731 = fcmp ogt double %mul730, 1.000000e+00
  br i1 %cmp731, label %cond.true.733, label %cond.false.734

cond.true.733:                                    ; preds = %if.then.729
  br label %cond.end.743

cond.false.734:                                   ; preds = %if.then.729
  %418 = load double, double* %spokecol, align 8
  %419 = load double, double* %w, align 8
  %mul735 = fmul double %418, %419
  %cmp736 = fcmp olt double %mul735, 0.000000e+00
  br i1 %cmp736, label %cond.true.738, label %cond.false.739

cond.true.738:                                    ; preds = %cond.false.734
  br label %cond.end.741

cond.false.739:                                   ; preds = %cond.false.734
  %420 = load double, double* %spokecol, align 8
  %421 = load double, double* %w, align 8
  %mul740 = fmul double %420, %421
  br label %cond.end.741

cond.end.741:                                     ; preds = %cond.false.739, %cond.true.738
  %cond742 = phi double [ 0.000000e+00, %cond.true.738 ], [ %mul740, %cond.false.739 ]
  br label %cond.end.743

cond.end.743:                                     ; preds = %cond.end.741, %cond.true.733
  %cond744 = phi double [ 1.000000e+00, %cond.true.733 ], [ %cond742, %cond.end.741 ]
  %b745 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %cond744, double* %b745, align 8
  br label %if.end.755

if.else.746:                                      ; preds = %cond.end.711
  %422 = load i8*, i8** %src, align 8
  %arrayidx747 = getelementptr inbounds i8, i8* %422, i64 2
  %423 = load i8, i8* %arrayidx747, align 1
  %conv748 = zext i8 %423 to i32
  %conv749 = sitofp i32 %conv748 to double
  %div750 = fdiv double %conv749, 2.550000e+02
  %424 = load double, double* %compl_ratio, align 8
  %mul751 = fmul double %div750, %424
  %425 = load double, double* %spokecol, align 8
  %426 = load double, double* %ratio, align 8
  %mul752 = fmul double %425, %426
  %add753 = fadd double %mul751, %mul752
  %b754 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  store double %add753, double* %b754, align 8
  br label %if.end.755

if.end.755:                                       ; preds = %if.else.746, %cond.end.743
  %427 = load double, double* %w1, align 8
  %428 = load double, double* %w, align 8
  %mul756 = fmul double %427, %428
  %cmp757 = fcmp ogt double %mul756, 1.000000e+00
  br i1 %cmp757, label %cond.true.759, label %cond.false.760

cond.true.759:                                    ; preds = %if.end.755
  br label %cond.end.769

cond.false.760:                                   ; preds = %if.end.755
  %429 = load double, double* %w1, align 8
  %430 = load double, double* %w, align 8
  %mul761 = fmul double %429, %430
  %cmp762 = fcmp olt double %mul761, 0.000000e+00
  br i1 %cmp762, label %cond.true.764, label %cond.false.765

cond.true.764:                                    ; preds = %cond.false.760
  br label %cond.end.767

cond.false.765:                                   ; preds = %cond.false.760
  %431 = load double, double* %w1, align 8
  %432 = load double, double* %w, align 8
  %mul766 = fmul double %431, %432
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.false.765, %cond.true.764
  %cond768 = phi double [ 0.000000e+00, %cond.true.764 ], [ %mul766, %cond.false.765 ]
  br label %cond.end.769

cond.end.769:                                     ; preds = %cond.end.767, %cond.true.759
  %cond770 = phi double [ 1.000000e+00, %cond.true.759 ], [ %cond768, %cond.end.767 ]
  store double %cond770, double* %c, align 8
  %433 = load double, double* %c, align 8
  %b771 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %434 = load double, double* %b771, align 8
  %add772 = fadd double %434, %433
  store double %add772, double* %b771, align 8
  %b773 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %435 = load double, double* %b773, align 8
  %mul774 = fmul double %435, 2.550000e+02
  %cmp775 = fcmp ogt double %mul774, 2.550000e+02
  br i1 %cmp775, label %cond.true.777, label %cond.false.778

cond.true.777:                                    ; preds = %cond.end.769
  br label %cond.end.789

cond.false.778:                                   ; preds = %cond.end.769
  %b779 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %436 = load double, double* %b779, align 8
  %mul780 = fmul double %436, 2.550000e+02
  %cmp781 = fcmp olt double %mul780, 0.000000e+00
  br i1 %cmp781, label %cond.true.783, label %cond.false.784

cond.true.783:                                    ; preds = %cond.false.778
  br label %cond.end.787

cond.false.784:                                   ; preds = %cond.false.778
  %b785 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %437 = load double, double* %b785, align 8
  %mul786 = fmul double %437, 2.550000e+02
  br label %cond.end.787

cond.end.787:                                     ; preds = %cond.false.784, %cond.true.783
  %cond788 = phi double [ 0.000000e+00, %cond.true.783 ], [ %mul786, %cond.false.784 ]
  br label %cond.end.789

cond.end.789:                                     ; preds = %cond.end.787, %cond.true.777
  %cond790 = phi double [ 2.550000e+02, %cond.true.777 ], [ %cond788, %cond.end.787 ]
  %conv791 = fptoui double %cond790 to i8
  %438 = load i8*, i8** %dest, align 8
  %arrayidx792 = getelementptr inbounds i8, i8* %438, i64 2
  store i8 %conv791, i8* %arrayidx792, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.478, %cond.end.789, %cond.end.554
  %439 = load i32, i32* %has_alpha, align 4
  %tobool793 = icmp ne i32 %439, 0
  br i1 %tobool793, label %if.then.794, label %if.end.799

if.then.794:                                      ; preds = %sw.epilog
  %440 = load double, double* %new_alpha, align 8
  %mul795 = fmul double %440, 2.550000e+02
  %conv796 = fptoui double %mul795 to i8
  %441 = load i32, i32* %alpha, align 4
  %idxprom797 = sext i32 %441 to i64
  %442 = load i8*, i8** %dest, align 8
  %arrayidx798 = getelementptr inbounds i8, i8* %442, i64 %idxprom797
  store i8 %conv796, i8* %arrayidx798, align 1
  br label %if.end.799

if.end.799:                                       ; preds = %if.then.794, %sw.epilog
  %bpp800 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %443 = load i32, i32* %bpp800, align 4
  %444 = load i8*, i8** %src, align 8
  %idx.ext801 = sext i32 %443 to i64
  %add.ptr802 = getelementptr inbounds i8, i8* %444, i64 %idx.ext801
  store i8* %add.ptr802, i8** %src, align 8
  %bpp803 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %445 = load i32, i32* %bpp803, align 4
  %446 = load i8*, i8** %dest, align 8
  %idx.ext804 = sext i32 %445 to i64
  %add.ptr805 = getelementptr inbounds i8, i8* %446, i64 %idx.ext804
  store i8* %add.ptr805, i8** %dest, align 8
  br label %for.inc.806

for.inc.806:                                      ; preds = %if.end.799
  %447 = load i32, i32* %col, align 4
  %inc807 = add nsw i32 %447, 1
  store i32 %inc807, i32* %col, align 4
  %448 = load i32, i32* %x, align 4
  %inc808 = add nsw i32 %448, 1
  store i32 %inc808, i32* %x, align 4
  br label %for.cond.409

for.end.809:                                      ; preds = %for.cond.409
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %449 = load i32, i32* %rowstride, align 4
  %450 = load i8*, i8** %src_row, align 8
  %idx.ext810 = sext i32 %449 to i64
  %add.ptr811 = getelementptr inbounds i8, i8* %450, i64 %idx.ext810
  store i8* %add.ptr811, i8** %src_row, align 8
  %rowstride812 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %451 = load i32, i32* %rowstride812, align 4
  %452 = load i8*, i8** %dest_row, align 8
  %idx.ext813 = sext i32 %451 to i64
  %add.ptr814 = getelementptr inbounds i8, i8* %452, i64 %idx.ext813
  store i8* %add.ptr814, i8** %dest_row, align 8
  br label %for.inc.815

for.inc.815:                                      ; preds = %for.end.809
  %453 = load i32, i32* %row, align 4
  %inc816 = add nsw i32 %453, 1
  store i32 %inc816, i32* %row, align 4
  %454 = load i32, i32* %y, align 4
  %inc817 = add nsw i32 %454, 1
  store i32 %inc817, i32* %y, align 4
  br label %for.cond.403

for.end.818:                                      ; preds = %for.cond.403
  %w819 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %455 = load i32, i32* %w819, align 4
  %h820 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %456 = load i32, i32* %h820, align 4
  %mul821 = mul nsw i32 %455, %456
  %457 = load i32, i32* %progress, align 4
  %add822 = add nsw i32 %457, %mul821
  store i32 %add822, i32* %progress, align 4
  %458 = load i32, i32* %progress, align 4
  %conv823 = sitofp i32 %458 to double
  %459 = load i32, i32* %max_progress, align 4
  %conv824 = sitofp i32 %459 to double
  %div825 = fdiv double %conv823, %conv824
  %call826 = call i32 @gimp_progress_update(double %div825)
  br label %for.inc.827

for.inc.827:                                      ; preds = %for.end.818
  %460 = load i8*, i8** %pr, align 8
  %call828 = call i8* @gimp_pixel_rgns_process(i8* %460)
  store i8* %call828, i8** %pr, align 8
  br label %for.cond.397

for.end.829:                                      ; preds = %for.cond.397
  %call830 = call i32 @gimp_progress_update(double 1.000000e+00)
  %461 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %461)
  %462 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id831 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %462, i32 0, i32 0
  %463 = load i32, i32* %drawable_id831, align 4
  %call832 = call i32 @gimp_drawable_merge_shadow(i32 %463, i32 1)
  %464 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id833 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %464, i32 0, i32 0
  %465 = load i32, i32* %drawable_id833, align 4
  %466 = load i32, i32* %x1, align 4
  %467 = load i32, i32* %y1, align 4
  %468 = load i32, i32* %x2, align 4
  %469 = load i32, i32* %x1, align 4
  %sub834 = sub nsw i32 %468, %469
  %470 = load i32, i32* %y2, align 4
  %471 = load i32, i32* %y1, align 4
  %sub835 = sub nsw i32 %470, %471
  %call836 = call i32 @gimp_drawable_update(i32 %465, i32 %466, i32 %467, i32 %sub834, i32 %sub835)
  br label %if.end.837

if.end.837:                                       ; preds = %for.end.829, %for.end.393
  %472 = load double*, double** %spoke, align 8
  %473 = bitcast double* %472 to i8*
  call void @g_free(i8* %473)
  %474 = load %struct._GimpRGB*, %struct._GimpRGB** %spokecolor, align 8
  %475 = bitcast %struct._GimpRGB* %474 to i8*
  call void @g_free(i8* %475)
  %476 = load %struct._GRand*, %struct._GRand** %gr, align 8
  call void @g_rand_free(%struct._GRand* %476)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare void @gtk_widget_add_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @nova_center_create(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %center = alloca %struct.NovaCenter*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %check = alloca %struct._GtkWidget*, align 8
  %image_ID = alloca i32, align 4
  %res_x = alloca double, align 8
  %res_y = alloca double, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.NovaCenter*
  store %struct.NovaCenter* %0, %struct.NovaCenter** %center, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %drawable1 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %2, i32 0, i32 0
  store %struct._GimpDrawable* %1, %struct._GimpDrawable** %drawable1, align 8
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %4 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %preview2 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %4, i32 0, i32 1
  store %struct._GimpPreview* %3, %struct._GimpPreview** %preview2, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gimp_frame_new(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %frame, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %6 = bitcast %struct._GtkWidget* %5 to i8*
  %7 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %8 = bitcast %struct.NovaCenter* %7 to i8*
  %call5 = call i64 @g_signal_connect_data(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (i8*)* @g_free to void ()*), i8* %8, void (i8*, %struct._GClosure*)* null, i32 2)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_item_get_image(i32 %15)
  store i32 %call9, i32* %image_ID, align 4
  %16 = load i32, i32* %image_ID, align 4
  %call10 = call i32 @gimp_image_get_resolution(i32 %16, double* %res_x, double* %res_y)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0)) #4
  %17 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %17 to double
  %18 = load double, double* %res_x, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load i32, i32* %width, align 4
  %conv12 = uitofp i32 %20 to double
  %sub = fsub double -0.000000e+00, %conv12
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width13, align 4
  %mul = mul i32 2, %22
  %conv14 = uitofp i32 %mul to double
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 1
  %24 = load i32, i32* %width15, align 4
  %conv16 = uitofp i32 %24 to double
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0)) #4
  %25 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 1), align 4
  %conv18 = sitofp i32 %25 to double
  %26 = load double, double* %res_y, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 2
  %28 = load i32, i32* %height, align 4
  %conv19 = uitofp i32 %28 to double
  %sub20 = fsub double -0.000000e+00, %conv19
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 2
  %30 = load i32, i32* %height21, align 4
  %mul22 = mul i32 2, %30
  %conv23 = uitofp i32 %mul22 to double
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 2
  %32 = load i32, i32* %height24, align 4
  %conv25 = uitofp i32 %32 to double
  %call26 = call %struct._GtkWidget* @gimp_coordinates_new(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 1, i32 -1, i32 1, i32 0, i32 0, i8* %call11, double %conv, double %18, double %sub, double %conv14, double 0.000000e+00, double %conv16, i8* %call17, double %conv18, double %26, double %sub20, double %conv23, double 0.000000e+00, double %conv25)
  %33 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %33, i32 0, i32 2
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %coords, align 8
  %34 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords27 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %34, i32 0, i32 2
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %coords27, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_table_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %37, i32 1, i32 6)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call30)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %41 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords32 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %41, i32 0, i32 2
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %coords32, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords33 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %43, i32 0, i32 2
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %coords33, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords34 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %45, i32 0, i32 2
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %coords34, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %49 = bitcast %struct.NovaCenter* %48 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct.NovaCenter*)* @nova_center_coords_update to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords36 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %50, i32 0, i32 2
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %coords36, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %54 = bitcast %struct.NovaCenter* %53 to i8*
  %call37 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct.NovaCenter*)* @nova_center_coords_update to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)) #4
  %call39 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call38)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %check, align 8
  %55 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %coords40 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %55, i32 0, i32 2
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %coords40, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_table_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call41)
  %58 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkTable*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  call void @gtk_table_attach(%struct._GtkTable* %58, %struct._GtkWidget* %59, i32 0, i32 5, i32 2, i32 3, i32 5, i32 4, i32 0, i32 0)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_toggle_button_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call43)
  %62 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkToggleButton*
  %63 = load i32, i32* @show_cursor, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %62, i32 %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* @show_cursor to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %check, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %69, i32 0, i32 2
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %area, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_queue_draw to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 2)
  %72 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area47 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %72, i32 0, i32 2
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %area47, align 8
  %74 = bitcast %struct._GtkWidget* %73 to i8*
  %75 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %76 = bitcast %struct.NovaCenter* %75 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.NovaCenter*)* @nova_center_preview_realize to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area49 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %77, i32 0, i32 2
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %area49, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %81 = bitcast %struct.NovaCenter* %80 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct.NovaCenter*)* @nova_center_preview_expose to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 1)
  %82 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %area51 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %82, i32 0, i32 2
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %area51, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %85 = load %struct.NovaCenter*, %struct.NovaCenter** %center, align 8
  %86 = bitcast %struct.NovaCenter* %85 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct.NovaCenter*)* @nova_center_preview_events to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  ret %struct._GtkWidget* %87
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @nova_center_coords_update(%struct._GimpSizeEntry* %coords, %struct.NovaCenter* %center) #0 {
entry:
  %coords.addr = alloca %struct._GimpSizeEntry*, align 8
  %center.addr = alloca %struct.NovaCenter*, align 8
  store %struct._GimpSizeEntry* %coords, %struct._GimpSizeEntry** %coords.addr, align 8
  store %struct.NovaCenter* %center, %struct.NovaCenter** %center.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %coords.addr, align 8
  %call = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %0, i32 0)
  %conv = fptosi double %call to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 0), align 4
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %coords.addr, align 8
  %call1 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %1, i32 1)
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 1), align 4
  %2 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %2, i32 0, i32 1
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %3)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @nova_center_preview_realize(%struct._GtkWidget* %widget, %struct.NovaCenter* %center) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %center.addr = alloca %struct.NovaCenter*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.NovaCenter* %center, %struct.NovaCenter** %center.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %1, i32 34)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor, align 8
  %2 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %2, i32 0, i32 1
  %3 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gimp_preview_set_default_cursor(%struct._GimpPreview* %3, %struct._GdkCursor* %4)
  %5 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @nova_center_preview_expose(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct.NovaCenter* %center) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %center.addr = alloca %struct.NovaCenter*, align 8
  %cr = alloca %struct._cairo*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %area = alloca %struct._GimpPreviewArea*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct.NovaCenter* %center, %struct.NovaCenter** %center.addr, align 8
  %0 = load i32, i32* @show_cursor, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %1, i32 0, i32 1
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area1 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %2, i32 0, i32 2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %area1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %5, %struct._GimpPreviewArea** %area, align 8
  %6 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview3 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %6, i32 0, i32 1
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview3, align 8
  %area4 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %area4, align 8
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %8)
  %call6 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call5)
  store %struct._cairo* %call6, %struct._cairo** %cr, align 8
  %9 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview7 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %9, i32 0, i32 1
  %10 = load %struct._GimpPreview*, %struct._GimpPreview** %preview7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 0), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.NovaValues, %struct.NovaValues* @pvals, i32 0, i32 1), align 4
  call void @gimp_preview_transform(%struct._GimpPreview* %10, i32 %11, i32 %12, i32* %x, i32* %y)
  %13 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %14 = bitcast %struct._GimpPreviewArea* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %15, %struct._GdkRectangle* %allocation)
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %16 = load i32, i32* %width10, align 4
  %17 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width11 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %17, i32 0, i32 3
  %18 = load i32, i32* %width11, align 4
  %sub = sub nsw i32 %16, %18
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %offx, align 4
  %height12 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %19 = load i32, i32* %height12, align 4
  %20 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %height13 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %20, i32 0, i32 4
  %21 = load i32, i32* %height13, align 4
  %sub14 = sub nsw i32 %19, %21
  %div15 = sdiv i32 %sub14, 2
  store i32 %div15, i32* %offy, align 4
  %22 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview16 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %22, i32 0, i32 1
  %23 = load %struct._GimpPreview*, %struct._GimpPreview** %preview16, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %23, i32* %width, i32* %height)
  %24 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %25 = load i32, i32* %offx, align 4
  %26 = load i32, i32* %x, align 4
  %add = add nsw i32 %25, %26
  %conv = sitofp i32 %add to double
  %add17 = fadd double %conv, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %24, double %add17, double 0.000000e+00)
  %27 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %28 = load i32, i32* %offx, align 4
  %29 = load i32, i32* %x, align 4
  %add18 = add nsw i32 %28, %29
  %conv19 = sitofp i32 %add18 to double
  %add20 = fadd double %conv19, 5.000000e-01
  %height21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %30 = load i32, i32* %height21, align 4
  %conv22 = sitofp i32 %30 to double
  call void @cairo_line_to(%struct._cairo* %27, double %add20, double %conv22)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %32 = load i32, i32* %offy, align 4
  %33 = load i32, i32* %y, align 4
  %add23 = add nsw i32 %32, %33
  %conv24 = sitofp i32 %add23 to double
  %add25 = fadd double %conv24, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %31, double 0.000000e+00, double %add25)
  %34 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %width26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %35 = load i32, i32* %width26, align 4
  %conv27 = sitofp i32 %35 to double
  %36 = load i32, i32* %offy, align 4
  %37 = load i32, i32* %y, align 4
  %add28 = add nsw i32 %36, %37
  %conv29 = sitofp i32 %add28 to double
  %add30 = fadd double %conv29, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %34, double %conv27, double %add30)
  %38 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %38, double 3.000000e+00)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %39, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %40)
  %41 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %41, double 1.000000e+00)
  %42 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %42, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %43)
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %44)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @nova_center_preview_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct.NovaCenter* %center) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %center.addr = alloca %struct.NovaCenter*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct.NovaCenter* %center, %struct.NovaCenter** %center.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %3 = bitcast %union._GdkEvent* %2 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %3, %struct._GdkEventMotion** %mevent, align 8
  %4 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %4, i32 0, i32 7
  %5 = load i32, i32* %state, align 4
  %and = and i32 %5, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %8 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %8, i32 0, i32 4
  %9 = load double, double* %x, align 8
  %conv = fptosi double %9 to i32
  %10 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %10, i32 0, i32 5
  %11 = load double, double* %y, align 8
  %conv1 = fptosi double %11 to i32
  call void @nova_center_update(%struct._GtkWidget* %6, %struct.NovaCenter* %7, i32 %conv, i32 %conv1)
  %12 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %12)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %13 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %14 = bitcast %union._GdkEvent* %13 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %14, %struct._GdkEventButton** %bevent, align 8
  %15 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %15, i32 0, i32 8
  %16 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %sw.bb.2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %19 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x5 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %19, i32 0, i32 4
  %20 = load double, double* %x5, align 8
  %conv6 = fptosi double %20 to i32
  %21 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y7 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %21, i32 0, i32 5
  %22 = load double, double* %y7, align 8
  %conv8 = fptosi double %22 to i32
  call void @nova_center_update(%struct._GtkWidget* %17, %struct.NovaCenter* %18, i32 %conv6, i32 %conv8)
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %sw.bb.2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.9, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.4, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #1

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #1

declare void @gimp_preview_set_default_cursor(%struct._GimpPreview*, %struct._GdkCursor*) #1

declare void @gdk_cursor_unref(%struct._GdkCursor*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gimp_preview_transform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_stroke(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @nova_center_update(%struct._GtkWidget* %widget, %struct.NovaCenter* %center, i32 %x, i32 %y) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %center.addr = alloca %struct.NovaCenter*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %area = alloca %struct._GimpPreviewArea*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.NovaCenter* %center, %struct.NovaCenter** %center.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %0, i32 0, i32 1
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview, align 8
  %area1 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %1, i32 0, i32 2
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %area1, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPreviewArea*
  store %struct._GimpPreviewArea* %4, %struct._GimpPreviewArea** %area, align 8
  %5 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %6 = bitcast %struct._GimpPreviewArea* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %8 = load i32, i32* %width, align 4
  %9 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %width5 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %9, i32 0, i32 3
  %10 = load i32, i32* %width5, align 4
  %sub = sub nsw i32 %8, %10
  %div = sdiv i32 %sub, 2
  %11 = load i32, i32* %x.addr, align 4
  %sub6 = sub nsw i32 %11, %div
  store i32 %sub6, i32* %x.addr, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %12 = load i32, i32* %height, align 4
  %13 = load %struct._GimpPreviewArea*, %struct._GimpPreviewArea** %area, align 8
  %height7 = getelementptr inbounds %struct._GimpPreviewArea, %struct._GimpPreviewArea* %13, i32 0, i32 4
  %14 = load i32, i32* %height7, align 4
  %sub8 = sub nsw i32 %12, %14
  %div9 = sdiv i32 %sub8, 2
  %15 = load i32, i32* %y.addr, align 4
  %sub10 = sub nsw i32 %15, %div9
  store i32 %sub10, i32* %y.addr, align 4
  %16 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview11 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %16, i32 0, i32 1
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview11, align 8
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  call void @gimp_preview_untransform(%struct._GimpPreview* %17, i32 %18, i32 %19, i32* %tx, i32* %ty)
  %20 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %coords = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %20, i32 0, i32 2
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %coords, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %24 = bitcast %struct.NovaCenter* %23 to i8*
  %call12 = call i32 @g_signal_handlers_block_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct.NovaCenter*)* @nova_center_coords_update to i8*), i8* %24)
  %25 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %coords13 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %coords13, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_size_entry_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpSizeEntry*
  %29 = load i32, i32* %tx, align 4
  %conv = sitofp i32 %29 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %28, i32 0, double %conv)
  %30 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %coords16 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %30, i32 0, i32 2
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %coords16, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_size_entry_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpSizeEntry*
  %34 = load i32, i32* %ty, align 4
  %conv19 = sitofp i32 %34 to double
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %33, i32 1, double %conv19)
  %35 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %coords20 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %35, i32 0, i32 2
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %coords20, align 8
  %37 = bitcast %struct._GtkWidget* %36 to i8*
  %38 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %39 = bitcast %struct.NovaCenter* %38 to i8*
  %call21 = call i32 @g_signal_handlers_unblock_matched(i8* %37, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpSizeEntry*, %struct.NovaCenter*)* @nova_center_coords_update to i8*), i8* %39)
  %40 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %coords22 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %coords22, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_size_entry_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call23)
  %43 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpSizeEntry*
  %44 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  call void @nova_center_coords_update(%struct._GimpSizeEntry* %43, %struct.NovaCenter* %44)
  %45 = load %struct.NovaCenter*, %struct.NovaCenter** %center.addr, align 8
  %preview25 = getelementptr inbounds %struct.NovaCenter, %struct.NovaCenter* %45, i32 0, i32 1
  %46 = load %struct._GimpPreview*, %struct._GimpPreview** %preview25, align 8
  %area26 = getelementptr inbounds %struct._GimpPreview, %struct._GimpPreview* %46, i32 0, i32 2
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %area26, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %47)
  ret void
}

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

declare void @gimp_preview_untransform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GRand* @g_rand_new() #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

; Function Attrs: nounwind uwtable
define internal double @gauss(%struct._GRand* %gr) #0 {
entry:
  %gr.addr = alloca %struct._GRand*, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GRand* %gr, %struct._GRand** %gr.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._GRand*, %struct._GRand** %gr.addr, align 8
  %call = call double @g_rand_double(%struct._GRand* %1)
  %2 = load double, double* %sum, align 8
  %add = fadd double %2, %call
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load double, double* %sum, align 8
  %div = fdiv double %4, 6.000000e+00
  ret double %div
}

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare double @gimp_zoom_preview_get_factor(%struct._GimpZoomPreview*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare double @g_rand_double(%struct._GRand*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
