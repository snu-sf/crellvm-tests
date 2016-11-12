; ModuleID = './plug-ins/common/blur-motion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.mblur_vals_t = type { i32, i32, i32, double, double, i32 }
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
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixelFetcher = type opaque
%struct._GimpDrawablePreview = type { %struct._GimpScrolledPreview, %struct._GimpDrawable* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Type of motion blur { LINEAR (0), RADIAL (1), ZOOM (2) }\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"center-x\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Center X (optional)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"center-y\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Center Y (optional)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"plug-in-mblur\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Simulate movement using directional blur\00", align 1
@.str.18 = private unnamed_addr constant [141 x i8] c"This plug-in simulates the effect seen when photographing a moving object at a slow shutter speed. Done by adding multiple displaced copies.\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"Torsten Martinsen, Federico Mena Quintero, Daniel Skarda, Joerg Gittinger\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"May 2007, 1.3\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"_Motion Blur...\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"plug-in-mblur-inward\00", align 1
@.str.24 = private unnamed_addr constant [100 x i8] c"This procedure is equivalent to plug-in-mblur but performs the zoom blur inward instead of outward.\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"<Image>/Filters/Blur\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@img_width = internal global i32 0, align 4
@img_height = internal global i32 0, align 4
@img_bpp = internal global i32 0, align 4
@mbvals = internal global %struct.mblur_vals_t { i32 0, i32 5, i32 10, double 1.000000e+05, double 1.000000e+05, i32 1 }, align 8
@has_alpha = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"blur-motion\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Motion Blur\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"gimp-blur-motion\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@preview = internal global %struct._GtkWidget* null, align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Blur Type\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"blur-type\04_Linear\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"blur-type\04_Radial\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"blur-type\04_Zoom\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Blur Center\00", align 1
@center = internal global %struct._GtkWidget* null, align 8
@.str.39 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"_X:\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"_Y:\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Blur _outward\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@dir_button = internal global %struct._GtkWidget* null, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"Blur Parameters\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"L_ength:\00", align 1
@length = internal global %struct._GtkObject* null, align 8
@.str.47 = private unnamed_addr constant [8 x i8] c"_Angle:\00", align 1
@angle = internal global %struct._GtkObject* null, align 8
@.str.48 = private unnamed_addr constant [16 x i8] c"Motion blurring\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 3, i32* %status, align 4
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
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_width(i32 %8)
  store i32 %call7, i32* @img_width, align 4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_height(i32 %10)
  store i32 %call9, i32* @img_height, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_bpp(i32 %12)
  store i32 %call11, i32* @img_bpp, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_mask_bounds(i32 %14, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %15 = load i32, i32* %x1, align 4
  %16 = load i32, i32* %x2, align 4
  %add = add nsw i32 %15, %16
  %sub = sub nsw i32 %add, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 3), align 8
  %17 = load i32, i32* %y1, align 4
  %18 = load i32, i32* %y2, align 4
  %add14 = add nsw i32 %17, %18
  %sub15 = sub nsw i32 %add14, 1
  %conv16 = sitofp i32 %sub15 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  store double %div17, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 4), align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 5
  %20 = load i32, i32* %ntile_cols, align 4
  %mul = mul i32 2, %20
  %conv18 = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv18)
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %do.end
  %call19 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.mblur_vals_t* @mbvals to i8*))
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 1
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data21 to i32*
  %23 = load i32, i32* %d_image, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call22 = call i32 @mblur_dialog(i32 %23, %struct._GimpDrawable* %24)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.23:                                         ; preds = %do.end
  %25 = load i8*, i8** %name.addr, align 8
  %call24 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call24, 0
  br i1 %cmp, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.23
  store i32 0, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 5), align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %sw.bb.23
  %26 = load i32, i32* %nparams.addr, align 4
  %cmp28 = icmp eq i32 %26, 8
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end.27
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 6
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data32 to double*
  %28 = load double, double* %d_float, align 8
  store double %28, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 3), align 8
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 7
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_float35 = bitcast %union._GimpParamData* %data34 to double*
  %30 = load double, double* %d_float35, align 8
  store double %30, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 4), align 8
  br label %if.end.40

if.else:                                          ; preds = %if.end.27
  %31 = load i32, i32* %nparams.addr, align 4
  %cmp36 = icmp ne i32 %31, 6
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.30
  %32 = load i32, i32* %status, align 4
  %cmp41 = icmp eq i32 %32, 3
  br i1 %cmp41, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %if.end.40
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 3
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_int3246 = bitcast %union._GimpParamData* %data45 to i32*
  %34 = load i32, i32* %d_int3246, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 0), align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 4
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_int3249 = bitcast %union._GimpParamData* %data48 to i32*
  %36 = load i32, i32* %d_int3249, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 1), align 4
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 5
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_int3252 = bitcast %union._GimpParamData* %data51 to i32*
  %38 = load i32, i32* %d_int3252, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 2), align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.43, %if.end.40
  %39 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 0), align 4
  %cmp54 = icmp slt i32 %39, 0
  br i1 %cmp54, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.53
  %40 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 0), align 4
  %cmp56 = icmp sgt i32 %40, 2
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false, %if.end.53
  store i32 1, i32* %status, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %lor.lhs.false
  br label %sw.epilog

sw.bb.60:                                         ; preds = %do.end
  %call61 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.mblur_vals_t* @mbvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.60, %if.end.59, %if.end
  %41 = load i32, i32* %status, align 4
  %cmp62 = icmp eq i32 %41, 3
  br i1 %cmp62, label %land.lhs.true, label %if.else.84

land.lhs.true:                                    ; preds = %sw.epilog
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id64, align 4
  %call65 = call i32 @gimp_drawable_is_rgb(i32 %43)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.71, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id68 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 0
  %45 = load i32, i32* %drawable_id68, align 4
  %call69 = call i32 @gimp_drawable_is_gray(i32 %45)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.84

if.then.71:                                       ; preds = %lor.lhs.false.67, %land.lhs.true
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id72 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %46, i32 0, i32 0
  %47 = load i32, i32* %drawable_id72, align 4
  %call73 = call i32 @gimp_drawable_has_alpha(i32 %47)
  store i32 %call73, i32* @has_alpha, align 4
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @mblur(%struct._GimpDrawable* %48, %struct._GimpPreview* null)
  %49 = load i32, i32* %run_mode, align 4
  %cmp74 = icmp ne i32 %49, 1
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.then.71
  %call77 = call i32 @gimp_displays_flush()
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.then.71
  %50 = load i32, i32* %run_mode, align 4
  %cmp79 = icmp eq i32 %50, 0
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.78
  %call82 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.mblur_vals_t* @mbvals to i8*), i32 40)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.89

if.else.84:                                       ; preds = %lor.lhs.false.67, %sw.epilog
  %51 = load i32, i32* %status, align 4
  %cmp85 = icmp eq i32 %51, 3
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.else.84
  store i32 0, i32* %status, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.else.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.83
  %52 = load i32, i32* %status, align 4
  store i32 %52, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %53)
  br label %return

return:                                           ; preds = %if.end.89, %if.then
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

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mblur_dialog(i32 %image_ID, %struct._GimpDrawable* %drawable) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)) #6
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call7 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call8)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_dialog_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkDialog*
  %call12 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** @preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @mblur to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call19 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %hbox, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #6
  %31 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 0), align 4
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i64 10)
  %call24 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i64 10)
  %call25 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i64 10)
  %call26 = call %struct._GtkWidget* (i32, i8*, void ()*, i8*, i32, ...) @gimp_int_radio_group_new(i32 1, i8* %call22, void ()* bitcast (void (%struct._GtkWidget*, i8*)* @mblur_radio_button_update to void ()*), i8* bitcast (%struct.mblur_vals_t* @mbvals to i8*), i32 %31, i8* %call23, i32 0, i8* null, i8* %call24, i32 1, i8* null, i8* %call25, i32 2, i8* null, i8* null)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %frame, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_box_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call27)
  %34 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)) #6
  %call30 = call %struct._GtkWidget* @gimp_frame_new(i8* %call29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** @center, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %call33 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %vbox, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call34)
  %44 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %44, %struct._GtkWidget* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %46)
  %47 = load i32, i32* %image_ID.addr, align 4
  %call36 = call i32 @gimp_image_get_resolution(i32 %47, double* %xres, double* %yres)
  %call37 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i32 1, i32 0, i32 0, i32 5, i32 1)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %entry1, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_table_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %50, i32 2)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_table_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call40)
  %53 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %53, i32 0, i32 6)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_table_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call42)
  %56 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %56, i32 2, i32 6)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call44)
  %59 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %59, %struct._GtkWidget* %60, i32 0, i32 0, i32 0)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %call46 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*)* @mblur_center_update to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call47 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %67, void (i8*, %struct._GClosure*)* null, i32 2)
  %call48 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %spinbutton, align 8
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_size_entry_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call49)
  %70 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpSizeEntry*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_spin_button_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call51)
  %73 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %70, %struct._GtkSpinButton* %73, %struct._GtkSpinButton* null)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_table_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call53)
  %76 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkTable*
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %76, %struct._GtkWidget* %77, i32 1, i32 2, i32 0, i32 1)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %80 = bitcast %struct._GtkWidget* %79 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_size_entry_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call55)
  %81 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpSizeEntry*
  %82 = load double, double* %xres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %81, i32 0, double %82, i32 1)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_size_entry_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call57)
  %85 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpSizeEntry*
  %86 = load double, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 3), align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %85, i32 0, double %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_size_entry_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call59)
  %89 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpSizeEntry*
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0)) #6
  %call62 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %89, i8* %call61, i32 0, i32 0, float 0.000000e+00)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_size_entry_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call63)
  %92 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpSizeEntry*
  %93 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %92, i32 1, double %93, i32 1)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_size_entry_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call65)
  %96 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpSizeEntry*
  %97 = load double, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 4), align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %96, i32 1, double %97)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_size_entry_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call67)
  %100 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpSizeEntry*
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)) #6
  %call70 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %100, i8* %call69, i32 1, i32 0, float 0.000000e+00)
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0)) #6
  %call72 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call71)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %button, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_toggle_button_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call73)
  %103 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkToggleButton*
  %104 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 5), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %103, i32 %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_box_get_type() #5
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call75)
  %107 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkBox*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %108, i32 0, i32 0, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 5) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %115 = bitcast %struct._GtkWidget* %114 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %115, void (i8*, %struct._GClosure*)* null, i32 2)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %116, %struct._GtkWidget** @dir_button, align 8
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0)) #6
  %call80 = call %struct._GtkWidget* @gimp_frame_new(i8* %call79)
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %frame, align 8
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %118 = bitcast %struct._GtkWidget* %117 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_box_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %118, i64 %call81)
  %119 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkBox*
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %119, %struct._GtkWidget* %120, i32 0, i32 0, i32 0)
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %121)
  %call83 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %table, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_table_get_type() #5
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call84)
  %124 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %124, i32 6)
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_table_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call86)
  %127 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %127, i32 6)
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %129 = bitcast %struct._GtkWidget* %128 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_container_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 %call88)
  %130 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkContainer*
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %130, %struct._GtkWidget* %131)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %132)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_table_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call90)
  %135 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkTable*
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0)) #6
  %136 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 1), align 4
  %conv = sitofp i32 %136 to double
  %call93 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %135, i32 0, i32 0, i8* %call92, i32 150, i32 3, double %conv, double 1.000000e+00, double 2.560000e+02, double 1.000000e+00, double 8.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call93, %struct._GtkObject** @length, align 8
  %137 = load %struct._GtkObject*, %struct._GtkObject** @length, align 8
  %138 = bitcast %struct._GtkObject* %137 to i8*
  %call94 = call i64 @g_signal_connect_data(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %139 = load %struct._GtkObject*, %struct._GtkObject** @length, align 8
  %140 = bitcast %struct._GtkObject* %139 to i8*
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %142 = bitcast %struct._GtkWidget* %141 to i8*
  %call95 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 2)
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_table_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call96)
  %145 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkTable*
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0)) #6
  %146 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 2), align 4
  %conv99 = sitofp i32 %146 to double
  %call100 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %145, i32 0, i32 1, i8* %call98, i32 150, i32 3, double %conv99, double 0.000000e+00, double 3.600000e+02, double 1.000000e+00, double 1.500000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call100, %struct._GtkObject** @angle, align 8
  %147 = load %struct._GtkObject*, %struct._GtkObject** @angle, align 8
  %148 = bitcast %struct._GtkObject* %147 to i8*
  %call101 = call i64 @g_signal_connect_data(i8* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_int_adjustment_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %149 = load %struct._GtkObject*, %struct._GtkObject** @angle, align 8
  %150 = bitcast %struct._GtkObject* %149 to i8*
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %152 = bitcast %struct._GtkWidget* %151 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %152, void (i8*, %struct._GClosure*)* null, i32 2)
  call void @mblur_set_sensitivity()
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %153)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_dialog_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call103)
  %156 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpDialog*
  %call105 = call i32 @gimp_dialog_run(%struct._GimpDialog* %156)
  %cmp = icmp eq i32 %call105, -5
  %conv106 = zext i1 %cmp to i32
  store i32 %conv106, i32* %run, align 4
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %157)
  %158 = load i32, i32* %run, align 4
  ret i32 %158
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @mblur(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %1, i32* %x, i32* %y)
  %2 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %2, i32* %width, i32* %height)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %4, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  br label %if.end.18

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool4 = icmp ne %struct._GimpPreview* %5, null
  br i1 %tobool4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0)) #6
  %call7 = call i32 @gimp_progress_init(i8* %call6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  %6 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 0), align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end.8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  call void @mblur_linear(%struct._GimpDrawable* %7, %struct._GimpPreview* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end.8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  call void @mblur_radial(%struct._GimpDrawable* %13, %struct._GimpPreview* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @mblur_zoom(%struct._GimpDrawable* %19, %struct._GimpPreview* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.9, %sw.bb
  %25 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool11 = icmp ne %struct._GimpPreview* %25, null
  br i1 %tobool11, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %sw.epilog
  %call13 = call i32 @gimp_progress_update(double 1.000000e+00)
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %26)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_merge_shadow(i32 %28, i32 1)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id16, align 4
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  %call17 = call i32 @gimp_drawable_update(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.2, %if.then.12, %sw.epilog
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GtkWidget* @gimp_int_radio_group_new(i32, i8*, void ()*, i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @mblur_radio_button_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  call void @mblur_set_sensitivity()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPreview*
  call void @gimp_preview_invalidate(%struct._GimpPreview* %4)
  ret void
}

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mblur_center_update(%struct._GimpSizeEntry* %entry1) #0 {
entry:
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %0, i32 0)
  store double %call, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 3), align 8
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %1, i32 1)
  store double %call2, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 4), align 8
  ret void
}

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mblur_set_sensitivity() #0 {
entry:
  %0 = load %struct._GtkObject*, %struct._GtkObject** @length, align 8
  %tobool = icmp ne %struct._GtkObject* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GtkObject*, %struct._GtkObject** @angle, align 8
  %tobool1 = icmp ne %struct._GtkObject* %1, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  %tobool3 = icmp ne %struct._GtkWidget* %2, null
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** @dir_button, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false.4
  %4 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 0), align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct._GtkObject*, %struct._GtkObject** @length, align 8
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %5, i32 1)
  %6 = load %struct._GtkObject*, %struct._GtkObject** @angle, align 8
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %6, i32 1)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 0)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @dir_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %8, i32 0)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %9 = load %struct._GtkObject*, %struct._GtkObject** @length, align 8
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %9, i32 0)
  %10 = load %struct._GtkObject*, %struct._GtkObject** @angle, align 8
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %10, i32 1)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %11, i32 1)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @dir_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %12, i32 0)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %13 = load %struct._GtkObject*, %struct._GtkObject** @length, align 8
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %13, i32 1)
  %14 = load %struct._GtkObject*, %struct._GtkObject** @angle, align 8
  call void @gimp_scale_entry_set_sensitive(%struct._GtkObject* %14, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** @center, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %15, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @dir_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %16, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_get_type() #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare void @gimp_scale_entry_set_sensitive(%struct._GtkObject*, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mblur_linear(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview, i32 %x1, i32 %y1, i32 %width, i32 %height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %pr = alloca i8*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %pixel = alloca [4 x i8], align 1
  %sum = alloca [4 x i32], align 16
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %swapdir = alloca i32, align 4
  %err = alloca i32, align 4
  %e = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %alpha = alloca i32, align 4
  %alpha143 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load i32, i32* %x1.addr, align 4
  %2 = load i32, i32* %y1.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %5, null
  %conv = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %conv, i32 1)
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %6, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %7, %struct._GimpRGB* %background)
  store i32 0, i32* %progress, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %8, %9
  store i32 %mul, i32* %max_progress, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 1), align 4
  store i32 %10, i32* %n, align 4
  %11 = load i32, i32* %n, align 4
  %conv2 = sitofp i32 %11 to double
  %12 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 2), align 4
  %conv3 = sitofp i32 %12 to double
  %div = fdiv double %conv3, 1.800000e+02
  %mul4 = fmul double %div, 0x400921FB54442D18
  %call5 = call double @cos(double %mul4) #6
  %mul6 = fmul double %conv2, %call5
  %conv7 = fptosi double %mul6 to i32
  store i32 %conv7, i32* %px, align 4
  %13 = load i32, i32* %n, align 4
  %conv8 = sitofp i32 %13 to double
  %14 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 2), align 4
  %conv9 = sitofp i32 %14 to double
  %div10 = fdiv double %conv9, 1.800000e+02
  %mul11 = fmul double %div10, 0x400921FB54442D18
  %call12 = call double @sin(double %mul11) #6
  %mul13 = fmul double %conv8, %call12
  %conv14 = fptosi double %mul13 to i32
  store i32 %conv14, i32* %py, align 4
  %15 = load i32, i32* %px, align 4
  store i32 %15, i32* %dx, align 4
  %cmp15 = icmp ne i32 %15, 0
  br i1 %cmp15, label %if.then, label %if.else.20

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %dx, align 4
  %cmp17 = icmp slt i32 %16, 0
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then
  %17 = load i32, i32* %dx, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, i32* %dx, align 4
  store i32 -1, i32* %s1, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 1, i32* %s1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  br label %if.end.21

if.else.20:                                       ; preds = %entry
  store i32 0, i32* %s1, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.end
  %18 = load i32, i32* %py, align 4
  store i32 %18, i32* %dy, align 4
  %cmp22 = icmp ne i32 %18, 0
  br i1 %cmp22, label %if.then.24, label %if.else.31

if.then.24:                                       ; preds = %if.end.21
  %19 = load i32, i32* %dy, align 4
  %cmp25 = icmp slt i32 %19, 0
  br i1 %cmp25, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.then.24
  %20 = load i32, i32* %dy, align 4
  %sub28 = sub nsw i32 0, %20
  store i32 %sub28, i32* %dy, align 4
  store i32 -1, i32* %s2, align 4
  br label %if.end.30

if.else.29:                                       ; preds = %if.then.24
  store i32 1, i32* %s2, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.27
  br label %if.end.32

if.else.31:                                       ; preds = %if.end.21
  store i32 0, i32* %s2, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.end.30
  %21 = load i32, i32* %dy, align 4
  %22 = load i32, i32* %dx, align 4
  %cmp33 = icmp sgt i32 %21, %22
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  %23 = load i32, i32* %dx, align 4
  store i32 %23, i32* %swapdir, align 4
  %24 = load i32, i32* %dy, align 4
  store i32 %24, i32* %dx, align 4
  %25 = load i32, i32* %swapdir, align 4
  store i32 %25, i32* %dy, align 4
  store i32 1, i32* %swapdir, align 4
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  store i32 0, i32* %swapdir, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  %26 = load i32, i32* %dy, align 4
  %mul38 = mul nsw i32 %26, 2
  store i32 %mul38, i32* %dy, align 4
  %27 = load i32, i32* %dy, align 4
  %28 = load i32, i32* %dx, align 4
  %sub39 = sub nsw i32 %27, %28
  store i32 %sub39, i32* %err, align 4
  %29 = load i32, i32* %dx, align 4
  %mul40 = mul nsw i32 %29, 2
  store i32 %mul40, i32* %dx, align 4
  %call41 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call41, i8** %pr, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.213, %if.end.37
  %30 = load i8*, i8** %pr, align 8
  %cmp42 = icmp ne i8* %30, null
  br i1 %cmp42, label %for.body, label %for.end.216

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %31 = load i8*, i8** %data, align 8
  store i8* %31, i8** %dest, align 8
  %y44 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %32 = load i32, i32* %y44, align 4
  store i32 %32, i32* %y, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.192, %for.body
  %33 = load i32, i32* %y, align 4
  %y46 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %34 = load i32, i32* %y46, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %35 = load i32, i32* %h, align 4
  %add = add nsw i32 %34, %35
  %cmp47 = icmp slt i32 %33, %add
  br i1 %cmp47, label %for.body.49, label %for.end.194

for.body.49:                                      ; preds = %for.cond.45
  %36 = load i8*, i8** %dest, align 8
  store i8* %36, i8** %d, align 8
  %x50 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %37 = load i32, i32* %x50, align 4
  store i32 %37, i32* %x, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.187, %for.body.49
  %38 = load i32, i32* %x, align 4
  %x52 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %39 = load i32, i32* %x52, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %40 = load i32, i32* %w, align 4
  %add53 = add nsw i32 %39, %40
  %cmp54 = icmp slt i32 %38, %add53
  br i1 %cmp54, label %for.body.56, label %for.end.189

for.body.56:                                      ; preds = %for.cond.51
  %41 = load i32, i32* %x, align 4
  store i32 %41, i32* %xx, align 4
  %42 = load i32, i32* %y, align 4
  store i32 %42, i32* %yy, align 4
  %43 = load i32, i32* %err, align 4
  store i32 %43, i32* %e, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc, %for.body.56
  %44 = load i32, i32* %c, align 4
  %45 = load i32, i32* @img_bpp, align 4
  %cmp58 = icmp slt i32 %44, %45
  br i1 %cmp58, label %for.body.60, label %for.end

for.body.60:                                      ; preds = %for.cond.57
  %46 = load i32, i32* %c, align 4
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.60
  %47 = load i32, i32* %c, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.57

for.end:                                          ; preds = %for.cond.57
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %if.end.135, %for.end
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %n, align 4
  %cmp62 = icmp slt i32 %48, %49
  br i1 %cmp62, label %for.body.64, label %for.end.136

for.body.64:                                      ; preds = %for.cond.61
  %50 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %51 = load i32, i32* %xx, align 4
  %52 = load i32, i32* %yy, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %50, i32 %51, i32 %52, i8* %arraydecay)
  %53 = load i32, i32* @has_alpha, align 4
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.then.65, label %if.else.89

if.then.65:                                       ; preds = %for.body.64
  %54 = load i32, i32* @img_bpp, align 4
  %sub66 = sub nsw i32 %54, 1
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom67
  %55 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %55 to i32
  store i32 %conv69, i32* %alpha, align 4
  %56 = load i32, i32* %alpha, align 4
  %57 = load i32, i32* @img_bpp, align 4
  %sub70 = sub nsw i32 %57, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom71
  %58 = load i32, i32* %arrayidx72, align 4
  %add73 = add nsw i32 %58, %56
  store i32 %add73, i32* %arrayidx72, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.86, %if.then.65
  %59 = load i32, i32* %c, align 4
  %60 = load i32, i32* @img_bpp, align 4
  %sub75 = sub nsw i32 %60, 1
  %cmp76 = icmp slt i32 %59, %sub75
  br i1 %cmp76, label %for.body.78, label %for.end.88

for.body.78:                                      ; preds = %for.cond.74
  %61 = load i32, i32* %c, align 4
  %idxprom79 = sext i32 %61 to i64
  %arrayidx80 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom79
  %62 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %62 to i32
  %63 = load i32, i32* %alpha, align 4
  %mul82 = mul nsw i32 %conv81, %63
  %64 = load i32, i32* %c, align 4
  %idxprom83 = sext i32 %64 to i64
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom83
  %65 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %65, %mul82
  store i32 %add85, i32* %arrayidx84, align 4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.78
  %66 = load i32, i32* %c, align 4
  %inc87 = add nsw i32 %66, 1
  store i32 %inc87, i32* %c, align 4
  br label %for.cond.74

for.end.88:                                       ; preds = %for.cond.74
  br label %if.end.103

if.else.89:                                       ; preds = %for.body.64
  store i32 0, i32* %c, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.100, %if.else.89
  %67 = load i32, i32* %c, align 4
  %68 = load i32, i32* @img_bpp, align 4
  %cmp91 = icmp slt i32 %67, %68
  br i1 %cmp91, label %for.body.93, label %for.end.102

for.body.93:                                      ; preds = %for.cond.90
  %69 = load i32, i32* %c, align 4
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom94
  %70 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %70 to i32
  %71 = load i32, i32* %c, align 4
  %idxprom97 = sext i32 %71 to i64
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom97
  %72 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %72, %conv96
  store i32 %add99, i32* %arrayidx98, align 4
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.93
  %73 = load i32, i32* %c, align 4
  %inc101 = add nsw i32 %73, 1
  store i32 %inc101, i32* %c, align 4
  br label %for.cond.90

for.end.102:                                      ; preds = %for.cond.90
  br label %if.end.103

if.end.103:                                       ; preds = %for.end.102, %for.end.88
  %74 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %74, 1
  store i32 %inc104, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %if.end.103
  %75 = load i32, i32* %e, align 4
  %cmp105 = icmp sge i32 %75, 0
  br i1 %cmp105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %76 = load i32, i32* %dx, align 4
  %tobool107 = icmp ne i32 %76, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %77 = phi i1 [ false, %while.cond ], [ %tobool107, %land.rhs ]
  br i1 %77, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %78 = load i32, i32* %swapdir, align 4
  %tobool108 = icmp ne i32 %78, 0
  br i1 %tobool108, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %while.body
  %79 = load i32, i32* %s1, align 4
  %80 = load i32, i32* %xx, align 4
  %add110 = add nsw i32 %80, %79
  store i32 %add110, i32* %xx, align 4
  br label %if.end.113

if.else.111:                                      ; preds = %while.body
  %81 = load i32, i32* %s2, align 4
  %82 = load i32, i32* %yy, align 4
  %add112 = add nsw i32 %82, %81
  store i32 %add112, i32* %yy, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.then.109
  %83 = load i32, i32* %dx, align 4
  %84 = load i32, i32* %e, align 4
  %sub114 = sub nsw i32 %84, %83
  store i32 %sub114, i32* %e, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %85 = load i32, i32* %swapdir, align 4
  %tobool115 = icmp ne i32 %85, 0
  br i1 %tobool115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %while.end
  %86 = load i32, i32* %s2, align 4
  %87 = load i32, i32* %yy, align 4
  %add117 = add nsw i32 %87, %86
  store i32 %add117, i32* %yy, align 4
  br label %if.end.120

if.else.118:                                      ; preds = %while.end
  %88 = load i32, i32* %s1, align 4
  %89 = load i32, i32* %xx, align 4
  %add119 = add nsw i32 %89, %88
  store i32 %add119, i32* %xx, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.116
  %90 = load i32, i32* %dy, align 4
  %91 = load i32, i32* %e, align 4
  %add121 = add nsw i32 %91, %90
  store i32 %add121, i32* %e, align 4
  %92 = load i32, i32* %xx, align 4
  %93 = load i32, i32* %x1.addr, align 4
  %cmp122 = icmp slt i32 %92, %93
  br i1 %cmp122, label %if.then.134, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.120
  %94 = load i32, i32* %xx, align 4
  %95 = load i32, i32* %x1.addr, align 4
  %96 = load i32, i32* %width.addr, align 4
  %add124 = add nsw i32 %95, %96
  %cmp125 = icmp sge i32 %94, %add124
  br i1 %cmp125, label %if.then.134, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false
  %97 = load i32, i32* %yy, align 4
  %98 = load i32, i32* %y1.addr, align 4
  %cmp128 = icmp slt i32 %97, %98
  br i1 %cmp128, label %if.then.134, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.127
  %99 = load i32, i32* %yy, align 4
  %100 = load i32, i32* %y1.addr, align 4
  %101 = load i32, i32* %height.addr, align 4
  %add131 = add nsw i32 %100, %101
  %cmp132 = icmp sge i32 %99, %add131
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %lor.lhs.false.130, %lor.lhs.false.127, %lor.lhs.false, %if.end.120
  br label %for.end.136

if.end.135:                                       ; preds = %lor.lhs.false.130
  br label %for.cond.61

for.end.136:                                      ; preds = %if.then.134, %for.cond.61
  %102 = load i32, i32* %i, align 4
  %cmp137 = icmp eq i32 %102, 0
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %for.end.136
  %103 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %104 = load i32, i32* %xx, align 4
  %105 = load i32, i32* %yy, align 4
  %106 = load i8*, i8** %d, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %103, i32 %104, i32 %105, i8* %106)
  br label %if.end.186

if.else.140:                                      ; preds = %for.end.136
  %107 = load i32, i32* @has_alpha, align 4
  %tobool141 = icmp ne i32 %107, 0
  br i1 %tobool141, label %if.then.142, label %if.else.171

if.then.142:                                      ; preds = %if.else.140
  %108 = load i32, i32* @img_bpp, align 4
  %sub144 = sub nsw i32 %108, 1
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom145
  %109 = load i32, i32* %arrayidx146, align 4
  store i32 %109, i32* %alpha143, align 4
  %110 = load i32, i32* %alpha143, align 4
  %111 = load i32, i32* %i, align 4
  %div147 = sdiv i32 %110, %111
  %conv148 = trunc i32 %div147 to i8
  %112 = load i32, i32* @img_bpp, align 4
  %sub149 = sub nsw i32 %112, 1
  %idxprom150 = sext i32 %sub149 to i64
  %113 = load i8*, i8** %d, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %113, i64 %idxprom150
  store i8 %conv148, i8* %arrayidx151, align 1
  %conv152 = zext i8 %conv148 to i32
  %cmp153 = icmp ne i32 %conv152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.170

if.then.155:                                      ; preds = %if.then.142
  store i32 0, i32* %c, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.167, %if.then.155
  %114 = load i32, i32* %c, align 4
  %115 = load i32, i32* @img_bpp, align 4
  %sub157 = sub nsw i32 %115, 1
  %cmp158 = icmp slt i32 %114, %sub157
  br i1 %cmp158, label %for.body.160, label %for.end.169

for.body.160:                                     ; preds = %for.cond.156
  %116 = load i32, i32* %c, align 4
  %idxprom161 = sext i32 %116 to i64
  %arrayidx162 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom161
  %117 = load i32, i32* %arrayidx162, align 4
  %118 = load i32, i32* %alpha143, align 4
  %div163 = sdiv i32 %117, %118
  %conv164 = trunc i32 %div163 to i8
  %119 = load i32, i32* %c, align 4
  %idxprom165 = sext i32 %119 to i64
  %120 = load i8*, i8** %d, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %120, i64 %idxprom165
  store i8 %conv164, i8* %arrayidx166, align 1
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.160
  %121 = load i32, i32* %c, align 4
  %inc168 = add nsw i32 %121, 1
  store i32 %inc168, i32* %c, align 4
  br label %for.cond.156

for.end.169:                                      ; preds = %for.cond.156
  br label %if.end.170

if.end.170:                                       ; preds = %for.end.169, %if.then.142
  br label %if.end.185

if.else.171:                                      ; preds = %if.else.140
  store i32 0, i32* %c, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.182, %if.else.171
  %122 = load i32, i32* %c, align 4
  %123 = load i32, i32* @img_bpp, align 4
  %cmp173 = icmp slt i32 %122, %123
  br i1 %cmp173, label %for.body.175, label %for.end.184

for.body.175:                                     ; preds = %for.cond.172
  %124 = load i32, i32* %c, align 4
  %idxprom176 = sext i32 %124 to i64
  %arrayidx177 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom176
  %125 = load i32, i32* %arrayidx177, align 4
  %126 = load i32, i32* %i, align 4
  %div178 = sdiv i32 %125, %126
  %conv179 = trunc i32 %div178 to i8
  %127 = load i32, i32* %c, align 4
  %idxprom180 = sext i32 %127 to i64
  %128 = load i8*, i8** %d, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %128, i64 %idxprom180
  store i8 %conv179, i8* %arrayidx181, align 1
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.175
  %129 = load i32, i32* %c, align 4
  %inc183 = add nsw i32 %129, 1
  store i32 %inc183, i32* %c, align 4
  br label %for.cond.172

for.end.184:                                      ; preds = %for.cond.172
  br label %if.end.185

if.end.185:                                       ; preds = %for.end.184, %if.end.170
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.139
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %130 = load i32, i32* %bpp, align 4
  %131 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %130 to i64
  %add.ptr = getelementptr inbounds i8, i8* %131, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc.187

for.inc.187:                                      ; preds = %if.end.186
  %132 = load i32, i32* %x, align 4
  %inc188 = add nsw i32 %132, 1
  store i32 %inc188, i32* %x, align 4
  br label %for.cond.51

for.end.189:                                      ; preds = %for.cond.51
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %133 = load i32, i32* %rowstride, align 4
  %134 = load i8*, i8** %dest, align 8
  %idx.ext190 = sext i32 %133 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %134, i64 %idx.ext190
  store i8* %add.ptr191, i8** %dest, align 8
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.end.189
  %135 = load i32, i32* %y, align 4
  %inc193 = add nsw i32 %135, 1
  store i32 %inc193, i32* %y, align 4
  br label %for.cond.45

for.end.194:                                      ; preds = %for.cond.45
  %136 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool195 = icmp ne %struct._GimpPreview* %136, null
  br i1 %tobool195, label %if.then.196, label %if.else.199

if.then.196:                                      ; preds = %for.end.194
  %137 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %138 = bitcast %struct._GimpPreview* %137 to %struct._GTypeInstance*
  %call197 = call i64 @gimp_drawable_preview_get_type() #5
  %call198 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call197)
  %139 = bitcast %struct._GTypeInstance* %call198 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %139, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.212

if.else.199:                                      ; preds = %for.end.194
  %w200 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %140 = load i32, i32* %w200, align 4
  %h201 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %141 = load i32, i32* %h201, align 4
  %mul202 = mul nsw i32 %140, %141
  %142 = load i32, i32* %progress, align 4
  %add203 = add nsw i32 %142, %mul202
  store i32 %add203, i32* %progress, align 4
  %143 = load i32, i32* %p, align 4
  %rem = srem i32 %143, 8
  %cmp204 = icmp eq i32 %rem, 0
  br i1 %cmp204, label %if.then.206, label %if.end.211

if.then.206:                                      ; preds = %if.else.199
  %144 = load i32, i32* %progress, align 4
  %conv207 = sitofp i32 %144 to double
  %145 = load i32, i32* %max_progress, align 4
  %conv208 = sitofp i32 %145 to double
  %div209 = fdiv double %conv207, %conv208
  %call210 = call i32 @gimp_progress_update(double %div209)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.206, %if.else.199
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.196
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.212
  %146 = load i8*, i8** %pr, align 8
  %call214 = call i8* @gimp_pixel_rgns_process(i8* %146)
  store i8* %call214, i8** %pr, align 8
  %147 = load i32, i32* %p, align 4
  %inc215 = add nsw i32 %147, 1
  store i32 %inc215, i32* %p, align 4
  br label %for.cond

for.end.216:                                      ; preds = %for.cond
  %148 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %148)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mblur_radial(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview, i32 %x1, i32 %y1, i32 %width, i32 %height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %pr = alloca i8*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %pixel = alloca [4 x i8], align 1
  %p1 = alloca [4 x i8], align 1
  %p2 = alloca [4 x i8], align 1
  %p3 = alloca [4 x i8], align 1
  %p4 = alloca [4 x i8], align 1
  %sum = alloca [4 x i32], align 16
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %n = alloca i32, align 4
  %count = alloca i32, align 4
  %angle = alloca double, align 8
  %theta = alloca double, align 8
  %r = alloca double, align 8
  %xr = alloca double, align 8
  %yr = alloca double, align 8
  %phi = alloca double, align 8
  %phi_start = alloca double, align 8
  %s_val = alloca double, align 8
  %c_val = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %alpha = alloca i32, align 4
  %alpha229 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load double, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 3), align 8
  store double %0, double* %center_x, align 8
  %1 = load double, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 4), align 8
  store double %1, double* %center_y, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load i32, i32* %x1.addr, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %7 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %7, null
  %conv = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %conv, i32 1)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %8, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %9 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %9, %struct._GimpRGB* %background)
  store i32 0, i32* %progress, align 4
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %10, %11
  store i32 %mul, i32* %max_progress, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 2), align 4
  %conv2 = sitofp i32 %12 to double
  %mul3 = fmul double %conv2, 0x401921FB54442D18
  %div = fdiv double %mul3, 3.600000e+02
  store double %div, double* %angle, align 8
  %call4 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call4, i8** %pr, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.302, %entry
  %13 = load i8*, i8** %pr, align 8
  %cmp5 = icmp ne i8* %13, null
  br i1 %cmp5, label %for.body, label %for.end.305

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  store i8* %14, i8** %dest, align 8
  %y7 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %15 = load i32, i32* %y7, align 4
  store i32 %15, i32* %y, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.281, %for.body
  %16 = load i32, i32* %y, align 4
  %y9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %17 = load i32, i32* %y9, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %18 = load i32, i32* %h, align 4
  %add = add nsw i32 %17, %18
  %cmp10 = icmp slt i32 %16, %add
  br i1 %cmp10, label %for.body.12, label %for.end.283

for.body.12:                                      ; preds = %for.cond.8
  %19 = load i8*, i8** %dest, align 8
  store i8* %19, i8** %d, align 8
  %x13 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %20 = load i32, i32* %x13, align 4
  store i32 %20, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.276, %for.body.12
  %21 = load i32, i32* %x, align 4
  %x15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %22 = load i32, i32* %x15, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %23 = load i32, i32* %w, align 4
  %add16 = add nsw i32 %22, %23
  %cmp17 = icmp slt i32 %21, %add16
  br i1 %cmp17, label %for.body.19, label %for.end.278

for.body.19:                                      ; preds = %for.cond.14
  store double 0.000000e+00, double* %xx, align 8
  store double 0.000000e+00, double* %yy, align 8
  %24 = load i32, i32* %x, align 4
  %conv20 = sitofp i32 %24 to double
  %25 = load double, double* %center_x, align 8
  %sub = fsub double %conv20, %25
  store double %sub, double* %xr, align 8
  %26 = load i32, i32* %y, align 4
  %conv21 = sitofp i32 %26 to double
  %27 = load double, double* %center_y, align 8
  %sub22 = fsub double %conv21, %27
  store double %sub22, double* %yr, align 8
  %28 = load double, double* %xr, align 8
  %29 = load double, double* %xr, align 8
  %mul23 = fmul double %28, %29
  %30 = load double, double* %yr, align 8
  %31 = load double, double* %yr, align 8
  %mul24 = fmul double %30, %31
  %add25 = fadd double %mul23, %mul24
  %call26 = call double @sqrt(double %add25) #6
  store double %call26, double* %r, align 8
  %32 = load double, double* %r, align 8
  %33 = load double, double* %angle, align 8
  %mul27 = fmul double %32, %33
  %conv28 = fptosi double %mul27 to i32
  store i32 %conv28, i32* %n, align 4
  %34 = load double, double* %angle, align 8
  %cmp29 = fcmp oeq double %34, 0.000000e+00
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.19
  %35 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load i8*, i8** %d, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %35, i32 %36, i32 %37, i8* %38)
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %39 = load i32, i32* %bpp, align 4
  %40 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc.276

if.end:                                           ; preds = %for.body.19
  %41 = load i32, i32* %n, align 4
  %cmp31 = icmp slt i32 %41, 3
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end
  store i32 3, i32* %n, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end
  %42 = load i32, i32* %n, align 4
  %cmp35 = icmp sgt i32 %42, 100
  br i1 %cmp35, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %if.end.34
  %43 = load i32, i32* %n, align 4
  %sub38 = sub nsw i32 %43, 100
  %conv39 = sitofp i32 %sub38 to double
  %call40 = call double @sqrt(double %conv39) #6
  %add41 = fadd double 1.000000e+02, %call40
  %conv42 = fptosi double %add41 to i32
  store i32 %conv42, i32* %n, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %if.end.34
  %44 = load double, double* %xr, align 8
  %cmp44 = fcmp une double %44, 0.000000e+00
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.end.43
  %45 = load double, double* %yr, align 8
  %46 = load double, double* %xr, align 8
  %div47 = fdiv double %45, %46
  %call48 = call double @atan(double %div47) #6
  store double %call48, double* %phi, align 8
  %47 = load double, double* %xr, align 8
  %cmp49 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.46
  %48 = load double, double* %phi, align 8
  %add52 = fadd double 0x400921FB54442D18, %48
  store double %add52, double* %phi, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.46
  br label %if.end.59

if.else:                                          ; preds = %if.end.43
  %49 = load double, double* %yr, align 8
  %cmp54 = fcmp oge double %49, 0.000000e+00
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else
  store double 0x3FF921FB54442D18, double* %phi, align 8
  br label %if.end.58

if.else.57:                                       ; preds = %if.else
  store double 0xBFF921FB54442D18, double* %phi, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.53
  store i32 0, i32* %c, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %if.end.59
  %50 = load i32, i32* %c, align 4
  %51 = load i32, i32* @img_bpp, align 4
  %cmp61 = icmp slt i32 %50, %51
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.60
  %52 = load i32, i32* %c, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.63
  %53 = load i32, i32* %c, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  %54 = load i32, i32* %n, align 4
  %cmp64 = icmp eq i32 %54, 1
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %for.end
  %55 = load double, double* %phi, align 8
  store double %55, double* %phi_start, align 8
  br label %if.end.70

if.else.67:                                       ; preds = %for.end
  %56 = load double, double* %phi, align 8
  %57 = load double, double* %angle, align 8
  %div68 = fdiv double %57, 2.000000e+00
  %add69 = fadd double %56, %div68
  store double %add69, double* %phi_start, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  %58 = load double, double* %angle, align 8
  %59 = load i32, i32* %n, align 4
  %conv71 = sitofp i32 %59 to double
  %div72 = fdiv double %58, %conv71
  store double %div72, double* %theta, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.218, %if.end.70
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %n, align 4
  %cmp74 = icmp slt i32 %60, %61
  br i1 %cmp74, label %for.body.76, label %for.end.220

for.body.76:                                      ; preds = %for.cond.73
  %62 = load double, double* %phi_start, align 8
  %63 = load i32, i32* %i, align 4
  %conv77 = sitofp i32 %63 to double
  %64 = load double, double* %theta, align 8
  %mul78 = fmul double %conv77, %64
  %sub79 = fsub double %62, %mul78
  %call80 = call double @sin(double %sub79) #6
  store double %call80, double* %s_val, align 8
  %65 = load double, double* %phi_start, align 8
  %66 = load i32, i32* %i, align 4
  %conv81 = sitofp i32 %66 to double
  %67 = load double, double* %theta, align 8
  %mul82 = fmul double %conv81, %67
  %sub83 = fsub double %65, %mul82
  %call84 = call double @cos(double %sub83) #6
  store double %call84, double* %c_val, align 8
  %68 = load double, double* %center_x, align 8
  %69 = load double, double* %r, align 8
  %70 = load double, double* %c_val, align 8
  %mul85 = fmul double %69, %70
  %add86 = fadd double %68, %mul85
  store double %add86, double* %xx, align 8
  %71 = load double, double* %center_y, align 8
  %72 = load double, double* %r, align 8
  %73 = load double, double* %s_val, align 8
  %mul87 = fmul double %72, %73
  %add88 = fadd double %71, %mul87
  store double %add88, double* %yy, align 8
  %74 = load double, double* %yy, align 8
  %75 = load i32, i32* %y1.addr, align 4
  %conv89 = sitofp i32 %75 to double
  %cmp90 = fcmp olt double %74, %conv89
  br i1 %cmp90, label %if.then.105, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.76
  %76 = load double, double* %yy, align 8
  %77 = load i32, i32* %y1.addr, align 4
  %78 = load i32, i32* %height.addr, align 4
  %add92 = add nsw i32 %77, %78
  %conv93 = sitofp i32 %add92 to double
  %cmp94 = fcmp oge double %76, %conv93
  br i1 %cmp94, label %if.then.105, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false
  %79 = load double, double* %xx, align 8
  %80 = load i32, i32* %x1.addr, align 4
  %conv97 = sitofp i32 %80 to double
  %cmp98 = fcmp olt double %79, %conv97
  br i1 %cmp98, label %if.then.105, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.96
  %81 = load double, double* %xx, align 8
  %82 = load i32, i32* %x1.addr, align 4
  %83 = load i32, i32* %width.addr, align 4
  %add101 = add nsw i32 %82, %83
  %conv102 = sitofp i32 %add101 to double
  %cmp103 = fcmp oge double %81, %conv102
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false.100, %lor.lhs.false.96, %lor.lhs.false, %for.body.76
  br label %for.inc.218

if.end.106:                                       ; preds = %lor.lhs.false.100
  %84 = load i32, i32* %count, align 4
  %inc107 = add nsw i32 %84, 1
  store i32 %inc107, i32* %count, align 4
  %85 = load double, double* %xx, align 8
  %add108 = fadd double %85, 1.000000e+00
  %86 = load i32, i32* %x1.addr, align 4
  %87 = load i32, i32* %width.addr, align 4
  %add109 = add nsw i32 %86, %87
  %conv110 = sitofp i32 %add109 to double
  %cmp111 = fcmp olt double %add108, %conv110
  br i1 %cmp111, label %land.lhs.true, label %if.else.172

land.lhs.true:                                    ; preds = %if.end.106
  %88 = load double, double* %yy, align 8
  %add113 = fadd double %88, 1.000000e+00
  %89 = load i32, i32* %y1.addr, align 4
  %90 = load i32, i32* %height.addr, align 4
  %add114 = add nsw i32 %89, %90
  %conv115 = sitofp i32 %add114 to double
  %cmp116 = fcmp olt double %add113, %conv115
  br i1 %cmp116, label %if.then.118, label %if.else.172

if.then.118:                                      ; preds = %land.lhs.true
  %91 = load double, double* %xx, align 8
  %92 = load double, double* %xx, align 8
  %call119 = call double @floor(double %92) #5
  %sub120 = fsub double %91, %call119
  store double %sub120, double* %dx, align 8
  %93 = load double, double* %yy, align 8
  %94 = load double, double* %yy, align 8
  %call121 = call double @floor(double %94) #5
  %sub122 = fsub double %93, %call121
  store double %sub122, double* %dy, align 8
  %95 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %96 = load double, double* %xx, align 8
  %conv123 = fptosi double %96 to i32
  %97 = load double, double* %yy, align 8
  %conv124 = fptosi double %97 to i32
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %95, i32 %conv123, i32 %conv124, i8* %arraydecay)
  %98 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %99 = load double, double* %xx, align 8
  %add125 = fadd double %99, 1.000000e+00
  %conv126 = fptosi double %add125 to i32
  %100 = load double, double* %yy, align 8
  %conv127 = fptosi double %100 to i32
  %arraydecay128 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %98, i32 %conv126, i32 %conv127, i8* %arraydecay128)
  %101 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %102 = load double, double* %xx, align 8
  %conv129 = fptosi double %102 to i32
  %103 = load double, double* %yy, align 8
  %add130 = fadd double %103, 1.000000e+00
  %conv131 = fptosi double %add130 to i32
  %arraydecay132 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %101, i32 %conv129, i32 %conv131, i8* %arraydecay132)
  %104 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %105 = load double, double* %xx, align 8
  %add133 = fadd double %105, 1.000000e+00
  %conv134 = fptosi double %add133 to i32
  %106 = load double, double* %yy, align 8
  %add135 = fadd double %106, 1.000000e+00
  %conv136 = fptosi double %add135 to i32
  %arraydecay137 = getelementptr inbounds [4 x i8], [4 x i8]* %p4, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %104, i32 %conv134, i32 %conv136, i8* %arraydecay137)
  store i32 0, i32* %c, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.169, %if.then.118
  %107 = load i32, i32* %c, align 4
  %108 = load i32, i32* @img_bpp, align 4
  %cmp139 = icmp slt i32 %107, %108
  br i1 %cmp139, label %for.body.141, label %for.end.171

for.body.141:                                     ; preds = %for.cond.138
  %109 = load i32, i32* %c, align 4
  %idxprom142 = sext i32 %109 to i64
  %arrayidx143 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i64 %idxprom142
  %110 = load i8, i8* %arrayidx143, align 1
  %conv144 = uitofp i8 %110 to double
  %111 = load double, double* %dx, align 8
  %sub145 = fsub double 1.000000e+00, %111
  %mul146 = fmul double %conv144, %sub145
  %112 = load i32, i32* %c, align 4
  %idxprom147 = sext i32 %112 to i64
  %arrayidx148 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom147
  %113 = load i8, i8* %arrayidx148, align 1
  %conv149 = uitofp i8 %113 to double
  %114 = load double, double* %dx, align 8
  %mul150 = fmul double %conv149, %114
  %add151 = fadd double %mul146, %mul150
  %115 = load double, double* %dy, align 8
  %sub152 = fsub double 1.000000e+00, %115
  %mul153 = fmul double %add151, %sub152
  %116 = load i32, i32* %c, align 4
  %idxprom154 = sext i32 %116 to i64
  %arrayidx155 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i64 %idxprom154
  %117 = load i8, i8* %arrayidx155, align 1
  %conv156 = uitofp i8 %117 to double
  %118 = load double, double* %dx, align 8
  %sub157 = fsub double 1.000000e+00, %118
  %mul158 = fmul double %conv156, %sub157
  %119 = load i32, i32* %c, align 4
  %idxprom159 = sext i32 %119 to i64
  %arrayidx160 = getelementptr inbounds [4 x i8], [4 x i8]* %p4, i32 0, i64 %idxprom159
  %120 = load i8, i8* %arrayidx160, align 1
  %conv161 = uitofp i8 %120 to double
  %121 = load double, double* %dx, align 8
  %mul162 = fmul double %conv161, %121
  %add163 = fadd double %mul158, %mul162
  %122 = load double, double* %dy, align 8
  %mul164 = fmul double %add163, %122
  %add165 = fadd double %mul153, %mul164
  %conv166 = fptoui double %add165 to i8
  %123 = load i32, i32* %c, align 4
  %idxprom167 = sext i32 %123 to i64
  %arrayidx168 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom167
  store i8 %conv166, i8* %arrayidx168, align 1
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.141
  %124 = load i32, i32* %c, align 4
  %inc170 = add nsw i32 %124, 1
  store i32 %inc170, i32* %c, align 4
  br label %for.cond.138

for.end.171:                                      ; preds = %for.cond.138
  br label %if.end.178

if.else.172:                                      ; preds = %land.lhs.true, %if.end.106
  %125 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %126 = load double, double* %xx, align 8
  %add173 = fadd double %126, 5.000000e-01
  %conv174 = fptosi double %add173 to i32
  %127 = load double, double* %yy, align 8
  %add175 = fadd double %127, 5.000000e-01
  %conv176 = fptosi double %add175 to i32
  %arraydecay177 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %125, i32 %conv174, i32 %conv176, i8* %arraydecay177)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.172, %for.end.171
  %128 = load i32, i32* @has_alpha, align 4
  %tobool = icmp ne i32 %128, 0
  br i1 %tobool, label %if.then.179, label %if.else.203

if.then.179:                                      ; preds = %if.end.178
  %129 = load i32, i32* @img_bpp, align 4
  %sub180 = sub nsw i32 %129, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom181
  %130 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %130 to i32
  store i32 %conv183, i32* %alpha, align 4
  %131 = load i32, i32* %alpha, align 4
  %132 = load i32, i32* @img_bpp, align 4
  %sub184 = sub nsw i32 %132, 1
  %idxprom185 = sext i32 %sub184 to i64
  %arrayidx186 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom185
  %133 = load i32, i32* %arrayidx186, align 4
  %add187 = add nsw i32 %133, %131
  store i32 %add187, i32* %arrayidx186, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.200, %if.then.179
  %134 = load i32, i32* %c, align 4
  %135 = load i32, i32* @img_bpp, align 4
  %sub189 = sub nsw i32 %135, 1
  %cmp190 = icmp slt i32 %134, %sub189
  br i1 %cmp190, label %for.body.192, label %for.end.202

for.body.192:                                     ; preds = %for.cond.188
  %136 = load i32, i32* %c, align 4
  %idxprom193 = sext i32 %136 to i64
  %arrayidx194 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom193
  %137 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %137 to i32
  %138 = load i32, i32* %alpha, align 4
  %mul196 = mul nsw i32 %conv195, %138
  %139 = load i32, i32* %c, align 4
  %idxprom197 = sext i32 %139 to i64
  %arrayidx198 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom197
  %140 = load i32, i32* %arrayidx198, align 4
  %add199 = add nsw i32 %140, %mul196
  store i32 %add199, i32* %arrayidx198, align 4
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.body.192
  %141 = load i32, i32* %c, align 4
  %inc201 = add nsw i32 %141, 1
  store i32 %inc201, i32* %c, align 4
  br label %for.cond.188

for.end.202:                                      ; preds = %for.cond.188
  br label %if.end.217

if.else.203:                                      ; preds = %if.end.178
  store i32 0, i32* %c, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.214, %if.else.203
  %142 = load i32, i32* %c, align 4
  %143 = load i32, i32* @img_bpp, align 4
  %cmp205 = icmp slt i32 %142, %143
  br i1 %cmp205, label %for.body.207, label %for.end.216

for.body.207:                                     ; preds = %for.cond.204
  %144 = load i32, i32* %c, align 4
  %idxprom208 = sext i32 %144 to i64
  %arrayidx209 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom208
  %145 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %145 to i32
  %146 = load i32, i32* %c, align 4
  %idxprom211 = sext i32 %146 to i64
  %arrayidx212 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom211
  %147 = load i32, i32* %arrayidx212, align 4
  %add213 = add nsw i32 %147, %conv210
  store i32 %add213, i32* %arrayidx212, align 4
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.207
  %148 = load i32, i32* %c, align 4
  %inc215 = add nsw i32 %148, 1
  store i32 %inc215, i32* %c, align 4
  br label %for.cond.204

for.end.216:                                      ; preds = %for.cond.204
  br label %if.end.217

if.end.217:                                       ; preds = %for.end.216, %for.end.202
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217, %if.then.105
  %149 = load i32, i32* %i, align 4
  %inc219 = add nsw i32 %149, 1
  store i32 %inc219, i32* %i, align 4
  br label %for.cond.73

for.end.220:                                      ; preds = %for.cond.73
  %150 = load i32, i32* %count, align 4
  %cmp221 = icmp eq i32 %150, 0
  br i1 %cmp221, label %if.then.223, label %if.else.226

if.then.223:                                      ; preds = %for.end.220
  %151 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %152 = load double, double* %xx, align 8
  %conv224 = fptosi double %152 to i32
  %153 = load double, double* %yy, align 8
  %conv225 = fptosi double %153 to i32
  %154 = load i8*, i8** %d, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %151, i32 %conv224, i32 %conv225, i8* %154)
  br label %if.end.272

if.else.226:                                      ; preds = %for.end.220
  %155 = load i32, i32* @has_alpha, align 4
  %tobool227 = icmp ne i32 %155, 0
  br i1 %tobool227, label %if.then.228, label %if.else.257

if.then.228:                                      ; preds = %if.else.226
  %156 = load i32, i32* @img_bpp, align 4
  %sub230 = sub nsw i32 %156, 1
  %idxprom231 = sext i32 %sub230 to i64
  %arrayidx232 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom231
  %157 = load i32, i32* %arrayidx232, align 4
  store i32 %157, i32* %alpha229, align 4
  %158 = load i32, i32* %alpha229, align 4
  %159 = load i32, i32* %count, align 4
  %div233 = sdiv i32 %158, %159
  %conv234 = trunc i32 %div233 to i8
  %160 = load i32, i32* @img_bpp, align 4
  %sub235 = sub nsw i32 %160, 1
  %idxprom236 = sext i32 %sub235 to i64
  %161 = load i8*, i8** %d, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %161, i64 %idxprom236
  store i8 %conv234, i8* %arrayidx237, align 1
  %conv238 = zext i8 %conv234 to i32
  %cmp239 = icmp ne i32 %conv238, 0
  br i1 %cmp239, label %if.then.241, label %if.end.256

if.then.241:                                      ; preds = %if.then.228
  store i32 0, i32* %c, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.253, %if.then.241
  %162 = load i32, i32* %c, align 4
  %163 = load i32, i32* @img_bpp, align 4
  %sub243 = sub nsw i32 %163, 1
  %cmp244 = icmp slt i32 %162, %sub243
  br i1 %cmp244, label %for.body.246, label %for.end.255

for.body.246:                                     ; preds = %for.cond.242
  %164 = load i32, i32* %c, align 4
  %idxprom247 = sext i32 %164 to i64
  %arrayidx248 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom247
  %165 = load i32, i32* %arrayidx248, align 4
  %166 = load i32, i32* %alpha229, align 4
  %div249 = sdiv i32 %165, %166
  %conv250 = trunc i32 %div249 to i8
  %167 = load i32, i32* %c, align 4
  %idxprom251 = sext i32 %167 to i64
  %168 = load i8*, i8** %d, align 8
  %arrayidx252 = getelementptr inbounds i8, i8* %168, i64 %idxprom251
  store i8 %conv250, i8* %arrayidx252, align 1
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.246
  %169 = load i32, i32* %c, align 4
  %inc254 = add nsw i32 %169, 1
  store i32 %inc254, i32* %c, align 4
  br label %for.cond.242

for.end.255:                                      ; preds = %for.cond.242
  br label %if.end.256

if.end.256:                                       ; preds = %for.end.255, %if.then.228
  br label %if.end.271

if.else.257:                                      ; preds = %if.else.226
  store i32 0, i32* %c, align 4
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.268, %if.else.257
  %170 = load i32, i32* %c, align 4
  %171 = load i32, i32* @img_bpp, align 4
  %cmp259 = icmp slt i32 %170, %171
  br i1 %cmp259, label %for.body.261, label %for.end.270

for.body.261:                                     ; preds = %for.cond.258
  %172 = load i32, i32* %c, align 4
  %idxprom262 = sext i32 %172 to i64
  %arrayidx263 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom262
  %173 = load i32, i32* %arrayidx263, align 4
  %174 = load i32, i32* %count, align 4
  %div264 = sdiv i32 %173, %174
  %conv265 = trunc i32 %div264 to i8
  %175 = load i32, i32* %c, align 4
  %idxprom266 = sext i32 %175 to i64
  %176 = load i8*, i8** %d, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %176, i64 %idxprom266
  store i8 %conv265, i8* %arrayidx267, align 1
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.body.261
  %177 = load i32, i32* %c, align 4
  %inc269 = add nsw i32 %177, 1
  store i32 %inc269, i32* %c, align 4
  br label %for.cond.258

for.end.270:                                      ; preds = %for.cond.258
  br label %if.end.271

if.end.271:                                       ; preds = %for.end.270, %if.end.256
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.then.223
  %bpp273 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %178 = load i32, i32* %bpp273, align 4
  %179 = load i8*, i8** %d, align 8
  %idx.ext274 = sext i32 %178 to i64
  %add.ptr275 = getelementptr inbounds i8, i8* %179, i64 %idx.ext274
  store i8* %add.ptr275, i8** %d, align 8
  br label %for.inc.276

for.inc.276:                                      ; preds = %if.end.272, %if.then
  %180 = load i32, i32* %x, align 4
  %inc277 = add nsw i32 %180, 1
  store i32 %inc277, i32* %x, align 4
  br label %for.cond.14

for.end.278:                                      ; preds = %for.cond.14
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %181 = load i32, i32* %rowstride, align 4
  %182 = load i8*, i8** %dest, align 8
  %idx.ext279 = sext i32 %181 to i64
  %add.ptr280 = getelementptr inbounds i8, i8* %182, i64 %idx.ext279
  store i8* %add.ptr280, i8** %dest, align 8
  br label %for.inc.281

for.inc.281:                                      ; preds = %for.end.278
  %183 = load i32, i32* %y, align 4
  %inc282 = add nsw i32 %183, 1
  store i32 %inc282, i32* %y, align 4
  br label %for.cond.8

for.end.283:                                      ; preds = %for.cond.8
  %184 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool284 = icmp ne %struct._GimpPreview* %184, null
  br i1 %tobool284, label %if.then.285, label %if.else.288

if.then.285:                                      ; preds = %for.end.283
  %185 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %186 = bitcast %struct._GimpPreview* %185 to %struct._GTypeInstance*
  %call286 = call i64 @gimp_drawable_preview_get_type() #5
  %call287 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %186, i64 %call286)
  %187 = bitcast %struct._GTypeInstance* %call287 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %187, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.301

if.else.288:                                      ; preds = %for.end.283
  %w289 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %188 = load i32, i32* %w289, align 4
  %h290 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %189 = load i32, i32* %h290, align 4
  %mul291 = mul nsw i32 %188, %189
  %190 = load i32, i32* %progress, align 4
  %add292 = add nsw i32 %190, %mul291
  store i32 %add292, i32* %progress, align 4
  %191 = load i32, i32* %p, align 4
  %rem = srem i32 %191, 8
  %cmp293 = icmp eq i32 %rem, 0
  br i1 %cmp293, label %if.then.295, label %if.end.300

if.then.295:                                      ; preds = %if.else.288
  %192 = load i32, i32* %progress, align 4
  %conv296 = sitofp i32 %192 to double
  %193 = load i32, i32* %max_progress, align 4
  %conv297 = sitofp i32 %193 to double
  %div298 = fdiv double %conv296, %conv297
  %call299 = call i32 @gimp_progress_update(double %div298)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.295, %if.else.288
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.285
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.301
  %194 = load i8*, i8** %pr, align 8
  %call303 = call i8* @gimp_pixel_rgns_process(i8* %194)
  store i8* %call303, i8** %pr, align 8
  %195 = load i32, i32* %p, align 4
  %inc304 = add nsw i32 %195, 1
  store i32 %inc304, i32* %p, align 4
  br label %for.cond

for.end.305:                                      ; preds = %for.cond
  %196 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %196)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mblur_zoom(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview, i32 %x1, i32 %y1, i32 %width, i32 %height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %pr = alloca i8*, align 8
  %background = alloca %struct._GimpRGB, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %pixel = alloca [4 x i8], align 1
  %p1 = alloca [4 x i8], align 1
  %p2 = alloca [4 x i8], align 1
  %p3 = alloca [4 x i8], align 1
  %p4 = alloca [4 x i8], align 1
  %sum = alloca [4 x i32], align 16
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  %xx_start = alloca double, align 8
  %xx_end = alloca double, align 8
  %yy_start = alloca double, align 8
  %yy_end = alloca double, align 8
  %dxx = alloca double, align 8
  %dyy = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %xy_len = alloca i32, align 4
  %f = alloca double, align 8
  %r = alloca double, align 8
  %drawable_x1 = alloca i32, align 4
  %drawable_y1 = alloca i32, align 4
  %drawable_x2 = alloca i32, align 4
  %drawable_y2 = alloca i32, align 4
  %xx = alloca double, align 8
  %yy = alloca double, align 8
  %alpha = alloca i32, align 4
  %alpha227 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load double, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 3), align 8
  store double %0, double* %center_x, align 8
  %1 = load double, double* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 4), align 8
  store double %1, double* %center_y, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %3, i32* %drawable_x1, i32* %drawable_y1, i32* %drawable_x2, i32* %drawable_y2)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load i32, i32* %x1.addr, align 4
  %6 = load i32, i32* %y1.addr, align 4
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %cmp = icmp eq %struct._GimpPreview* %9, null
  %conv = zext i1 %cmp to i32
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %conv, i32 1)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call1 = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %10, i32 0)
  store %struct._GimpPixelFetcher* %call1, %struct._GimpPixelFetcher** %pft, align 8
  %call2 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  %11 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %11, %struct._GimpRGB* %background)
  store i32 0, i32* %progress, align 4
  %12 = load i32, i32* %width.addr, align 4
  %13 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %12, %13
  store i32 %mul, i32* %max_progress, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 1), align 4
  store i32 %14, i32* %n, align 4
  %15 = load i32, i32* %n, align 4
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load i32, i32* %width5, align 4
  %div = udiv i32 %17, 2
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load i32, i32* %width6, align 4
  %div7 = udiv i32 %19, 2
  %mul8 = mul i32 %div, %div7
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 2
  %21 = load i32, i32* %height9, align 4
  %div10 = udiv i32 %21, 2
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 2
  %23 = load i32, i32* %height11, align 4
  %div12 = udiv i32 %23, 2
  %mul13 = mul i32 %div10, %div12
  %add = add i32 %mul8, %mul13
  %conv14 = uitofp i32 %add to double
  %call15 = call double @sqrt(double %conv14) #6
  store double %call15, double* %r, align 8
  %24 = load i32, i32* %n, align 4
  %conv16 = sitofp i32 %24 to double
  %25 = load double, double* %r, align 8
  %mul17 = fmul double %conv16, %25
  %div18 = fdiv double %mul17, 2.560000e+02
  %conv19 = fptosi double %div18 to i32
  store i32 %conv19, i32* %n, align 4
  %26 = load double, double* %r, align 8
  %27 = load i32, i32* %n, align 4
  %conv20 = sitofp i32 %27 to double
  %sub = fsub double %26, %conv20
  %28 = load double, double* %r, align 8
  %div21 = fdiv double %sub, %28
  store double %div21, double* %f, align 8
  %call22 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call22, i8** %pr, align 8
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.297, %if.end
  %29 = load i8*, i8** %pr, align 8
  %cmp23 = icmp ne i8* %29, null
  br i1 %cmp23, label %for.body, label %for.end.300

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  store i8* %30, i8** %dest, align 8
  %y25 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %31 = load i32, i32* %y25, align 4
  store i32 %31, i32* %y, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.276, %for.body
  %32 = load i32, i32* %y, align 4
  %y27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %33 = load i32, i32* %y27, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %34 = load i32, i32* %h, align 4
  %add28 = add nsw i32 %33, %34
  %cmp29 = icmp slt i32 %32, %add28
  br i1 %cmp29, label %for.body.31, label %for.end.278

for.body.31:                                      ; preds = %for.cond.26
  %35 = load i8*, i8** %dest, align 8
  store i8* %35, i8** %d, align 8
  %x32 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %36 = load i32, i32* %x32, align 4
  store i32 %36, i32* %x, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.271, %for.body.31
  %37 = load i32, i32* %x, align 4
  %x34 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %38 = load i32, i32* %x34, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %39 = load i32, i32* %w, align 4
  %add35 = add nsw i32 %38, %39
  %cmp36 = icmp slt i32 %37, %add35
  br i1 %cmp36, label %for.body.38, label %for.end.273

for.body.38:                                      ; preds = %for.cond.33
  store i32 0, i32* %c, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %for.body.38
  %40 = load i32, i32* %c, align 4
  %41 = load i32, i32* @img_bpp, align 4
  %cmp40 = icmp slt i32 %40, %41
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %42 = load i32, i32* %c, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.42
  %43 = load i32, i32* %c, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  %44 = load i32, i32* %x, align 4
  %conv43 = sitofp i32 %44 to double
  store double %conv43, double* %xx_start, align 8
  %45 = load i32, i32* %y, align 4
  %conv44 = sitofp i32 %45 to double
  store double %conv44, double* %yy_start, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.mblur_vals_t, %struct.mblur_vals_t* @mbvals, i32 0, i32 5), align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %for.end
  %47 = load double, double* %center_x, align 8
  %48 = load i32, i32* %x, align 4
  %conv46 = sitofp i32 %48 to double
  %49 = load double, double* %center_x, align 8
  %sub47 = fsub double %conv46, %49
  %50 = load double, double* %f, align 8
  %mul48 = fmul double %sub47, %50
  %add49 = fadd double %47, %mul48
  store double %add49, double* %xx_end, align 8
  %51 = load double, double* %center_y, align 8
  %52 = load i32, i32* %y, align 4
  %conv50 = sitofp i32 %52 to double
  %53 = load double, double* %center_y, align 8
  %sub51 = fsub double %conv50, %53
  %54 = load double, double* %f, align 8
  %mul52 = fmul double %sub51, %54
  %add53 = fadd double %51, %mul52
  store double %add53, double* %yy_end, align 8
  br label %if.end.64

if.else:                                          ; preds = %for.end
  %55 = load double, double* %center_x, align 8
  %56 = load i32, i32* %x, align 4
  %conv54 = sitofp i32 %56 to double
  %57 = load double, double* %center_x, align 8
  %sub55 = fsub double %conv54, %57
  %58 = load double, double* %f, align 8
  %div56 = fdiv double 1.000000e+00, %58
  %mul57 = fmul double %sub55, %div56
  %add58 = fadd double %55, %mul57
  store double %add58, double* %xx_end, align 8
  %59 = load double, double* %center_y, align 8
  %60 = load i32, i32* %y, align 4
  %conv59 = sitofp i32 %60 to double
  %61 = load double, double* %center_y, align 8
  %sub60 = fsub double %conv59, %61
  %62 = load double, double* %f, align 8
  %div61 = fdiv double 1.000000e+00, %62
  %mul62 = fmul double %sub60, %div61
  %add63 = fadd double %59, %mul62
  store double %add63, double* %yy_end, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.45
  %63 = load double, double* %xx_end, align 8
  %64 = load double, double* %xx_start, align 8
  %sub65 = fsub double %63, %64
  %65 = load double, double* %xx_end, align 8
  %66 = load double, double* %xx_start, align 8
  %sub66 = fsub double %65, %66
  %mul67 = fmul double %sub65, %sub66
  %67 = load double, double* %yy_end, align 8
  %68 = load double, double* %yy_start, align 8
  %sub68 = fsub double %67, %68
  %69 = load double, double* %yy_end, align 8
  %70 = load double, double* %yy_start, align 8
  %sub69 = fsub double %69, %70
  %mul70 = fmul double %sub68, %sub69
  %add71 = fadd double %mul67, %mul70
  %call72 = call double @sqrt(double %add71) #6
  %add73 = fadd double %call72, 1.000000e+00
  %conv74 = fptosi double %add73 to i32
  store i32 %conv74, i32* %xy_len, align 4
  %71 = load i32, i32* %xy_len, align 4
  %cmp75 = icmp slt i32 %71, 3
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.64
  store i32 3, i32* %xy_len, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.64
  %72 = load double, double* %xx_end, align 8
  %73 = load double, double* %xx_start, align 8
  %sub79 = fsub double %72, %73
  %74 = load i32, i32* %xy_len, align 4
  %conv80 = sitofp i32 %74 to double
  %div81 = fdiv double %sub79, %conv80
  store double %div81, double* %dxx, align 8
  %75 = load double, double* %yy_end, align 8
  %76 = load double, double* %yy_start, align 8
  %sub82 = fsub double %75, %76
  %77 = load i32, i32* %xy_len, align 4
  %conv83 = sitofp i32 %77 to double
  %div84 = fdiv double %sub82, %conv83
  store double %div84, double* %dyy, align 8
  %78 = load double, double* %xx_start, align 8
  store double %78, double* %xx, align 8
  %79 = load double, double* %yy_start, align 8
  store double %79, double* %yy, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.216, %if.end.78
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %xy_len, align 4
  %cmp86 = icmp slt i32 %80, %81
  br i1 %cmp86, label %for.body.88, label %for.end.218

for.body.88:                                      ; preds = %for.cond.85
  %82 = load double, double* %yy, align 8
  %83 = load i32, i32* %drawable_y1, align 4
  %conv89 = sitofp i32 %83 to double
  %cmp90 = fcmp olt double %82, %conv89
  br i1 %cmp90, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.88
  %84 = load double, double* %yy, align 8
  %85 = load i32, i32* %drawable_y2, align 4
  %conv92 = sitofp i32 %85 to double
  %cmp93 = fcmp oge double %84, %conv92
  br i1 %cmp93, label %if.then.103, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false
  %86 = load double, double* %xx, align 8
  %87 = load i32, i32* %drawable_x1, align 4
  %conv96 = sitofp i32 %87 to double
  %cmp97 = fcmp olt double %86, %conv96
  br i1 %cmp97, label %if.then.103, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.95
  %88 = load double, double* %xx, align 8
  %89 = load i32, i32* %drawable_x2, align 4
  %conv100 = sitofp i32 %89 to double
  %cmp101 = fcmp oge double %88, %conv100
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.99, %lor.lhs.false.95, %lor.lhs.false, %for.body.88
  br label %for.end.218

if.end.104:                                       ; preds = %lor.lhs.false.99
  %90 = load double, double* %xx, align 8
  %add105 = fadd double %90, 1.000000e+00
  %91 = load i32, i32* %drawable_x2, align 4
  %conv106 = sitofp i32 %91 to double
  %cmp107 = fcmp olt double %add105, %conv106
  br i1 %cmp107, label %land.lhs.true, label %if.else.167

land.lhs.true:                                    ; preds = %if.end.104
  %92 = load double, double* %yy, align 8
  %add109 = fadd double %92, 1.000000e+00
  %93 = load i32, i32* %drawable_y2, align 4
  %conv110 = sitofp i32 %93 to double
  %cmp111 = fcmp olt double %add109, %conv110
  br i1 %cmp111, label %if.then.113, label %if.else.167

if.then.113:                                      ; preds = %land.lhs.true
  %94 = load double, double* %xx, align 8
  %95 = load double, double* %xx, align 8
  %call114 = call double @floor(double %95) #5
  %sub115 = fsub double %94, %call114
  store double %sub115, double* %dx, align 8
  %96 = load double, double* %yy, align 8
  %97 = load double, double* %yy, align 8
  %call116 = call double @floor(double %97) #5
  %sub117 = fsub double %96, %call116
  store double %sub117, double* %dy, align 8
  %98 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %99 = load double, double* %xx, align 8
  %conv118 = fptosi double %99 to i32
  %100 = load double, double* %yy, align 8
  %conv119 = fptosi double %100 to i32
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %98, i32 %conv118, i32 %conv119, i8* %arraydecay)
  %101 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %102 = load double, double* %xx, align 8
  %add120 = fadd double %102, 1.000000e+00
  %conv121 = fptosi double %add120 to i32
  %103 = load double, double* %yy, align 8
  %conv122 = fptosi double %103 to i32
  %arraydecay123 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %101, i32 %conv121, i32 %conv122, i8* %arraydecay123)
  %104 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %105 = load double, double* %xx, align 8
  %conv124 = fptosi double %105 to i32
  %106 = load double, double* %yy, align 8
  %add125 = fadd double %106, 1.000000e+00
  %conv126 = fptosi double %add125 to i32
  %arraydecay127 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %104, i32 %conv124, i32 %conv126, i8* %arraydecay127)
  %107 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %108 = load double, double* %xx, align 8
  %add128 = fadd double %108, 1.000000e+00
  %conv129 = fptosi double %add128 to i32
  %109 = load double, double* %yy, align 8
  %add130 = fadd double %109, 1.000000e+00
  %conv131 = fptosi double %add130 to i32
  %arraydecay132 = getelementptr inbounds [4 x i8], [4 x i8]* %p4, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %107, i32 %conv129, i32 %conv131, i8* %arraydecay132)
  store i32 0, i32* %c, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.164, %if.then.113
  %110 = load i32, i32* %c, align 4
  %111 = load i32, i32* @img_bpp, align 4
  %cmp134 = icmp slt i32 %110, %111
  br i1 %cmp134, label %for.body.136, label %for.end.166

for.body.136:                                     ; preds = %for.cond.133
  %112 = load i32, i32* %c, align 4
  %idxprom137 = sext i32 %112 to i64
  %arrayidx138 = getelementptr inbounds [4 x i8], [4 x i8]* %p1, i32 0, i64 %idxprom137
  %113 = load i8, i8* %arrayidx138, align 1
  %conv139 = uitofp i8 %113 to double
  %114 = load double, double* %dx, align 8
  %sub140 = fsub double 1.000000e+00, %114
  %mul141 = fmul double %conv139, %sub140
  %115 = load i32, i32* %c, align 4
  %idxprom142 = sext i32 %115 to i64
  %arrayidx143 = getelementptr inbounds [4 x i8], [4 x i8]* %p2, i32 0, i64 %idxprom142
  %116 = load i8, i8* %arrayidx143, align 1
  %conv144 = uitofp i8 %116 to double
  %117 = load double, double* %dx, align 8
  %mul145 = fmul double %conv144, %117
  %add146 = fadd double %mul141, %mul145
  %118 = load double, double* %dy, align 8
  %sub147 = fsub double 1.000000e+00, %118
  %mul148 = fmul double %add146, %sub147
  %119 = load i32, i32* %c, align 4
  %idxprom149 = sext i32 %119 to i64
  %arrayidx150 = getelementptr inbounds [4 x i8], [4 x i8]* %p3, i32 0, i64 %idxprom149
  %120 = load i8, i8* %arrayidx150, align 1
  %conv151 = uitofp i8 %120 to double
  %121 = load double, double* %dx, align 8
  %sub152 = fsub double 1.000000e+00, %121
  %mul153 = fmul double %conv151, %sub152
  %122 = load i32, i32* %c, align 4
  %idxprom154 = sext i32 %122 to i64
  %arrayidx155 = getelementptr inbounds [4 x i8], [4 x i8]* %p4, i32 0, i64 %idxprom154
  %123 = load i8, i8* %arrayidx155, align 1
  %conv156 = uitofp i8 %123 to double
  %124 = load double, double* %dx, align 8
  %mul157 = fmul double %conv156, %124
  %add158 = fadd double %mul153, %mul157
  %125 = load double, double* %dy, align 8
  %mul159 = fmul double %add158, %125
  %add160 = fadd double %mul148, %mul159
  %conv161 = fptoui double %add160 to i8
  %126 = load i32, i32* %c, align 4
  %idxprom162 = sext i32 %126 to i64
  %arrayidx163 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom162
  store i8 %conv161, i8* %arrayidx163, align 1
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.136
  %127 = load i32, i32* %c, align 4
  %inc165 = add nsw i32 %127, 1
  store i32 %inc165, i32* %c, align 4
  br label %for.cond.133

for.end.166:                                      ; preds = %for.cond.133
  br label %if.end.173

if.else.167:                                      ; preds = %land.lhs.true, %if.end.104
  %128 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %129 = load double, double* %xx, align 8
  %add168 = fadd double %129, 5.000000e-01
  %conv169 = fptosi double %add168 to i32
  %130 = load double, double* %yy, align 8
  %add170 = fadd double %130, 5.000000e-01
  %conv171 = fptosi double %add170 to i32
  %arraydecay172 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %128, i32 %conv169, i32 %conv171, i8* %arraydecay172)
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.167, %for.end.166
  %131 = load i32, i32* @has_alpha, align 4
  %tobool174 = icmp ne i32 %131, 0
  br i1 %tobool174, label %if.then.175, label %if.else.199

if.then.175:                                      ; preds = %if.end.173
  %132 = load i32, i32* @img_bpp, align 4
  %sub176 = sub nsw i32 %132, 1
  %idxprom177 = sext i32 %sub176 to i64
  %arrayidx178 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom177
  %133 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %133 to i32
  store i32 %conv179, i32* %alpha, align 4
  %134 = load i32, i32* %alpha, align 4
  %135 = load i32, i32* @img_bpp, align 4
  %sub180 = sub nsw i32 %135, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom181
  %136 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %136, %134
  store i32 %add183, i32* %arrayidx182, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.196, %if.then.175
  %137 = load i32, i32* %c, align 4
  %138 = load i32, i32* @img_bpp, align 4
  %sub185 = sub nsw i32 %138, 1
  %cmp186 = icmp slt i32 %137, %sub185
  br i1 %cmp186, label %for.body.188, label %for.end.198

for.body.188:                                     ; preds = %for.cond.184
  %139 = load i32, i32* %c, align 4
  %idxprom189 = sext i32 %139 to i64
  %arrayidx190 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom189
  %140 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %140 to i32
  %141 = load i32, i32* %alpha, align 4
  %mul192 = mul nsw i32 %conv191, %141
  %142 = load i32, i32* %c, align 4
  %idxprom193 = sext i32 %142 to i64
  %arrayidx194 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom193
  %143 = load i32, i32* %arrayidx194, align 4
  %add195 = add nsw i32 %143, %mul192
  store i32 %add195, i32* %arrayidx194, align 4
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.body.188
  %144 = load i32, i32* %c, align 4
  %inc197 = add nsw i32 %144, 1
  store i32 %inc197, i32* %c, align 4
  br label %for.cond.184

for.end.198:                                      ; preds = %for.cond.184
  br label %if.end.213

if.else.199:                                      ; preds = %if.end.173
  store i32 0, i32* %c, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.210, %if.else.199
  %145 = load i32, i32* %c, align 4
  %146 = load i32, i32* @img_bpp, align 4
  %cmp201 = icmp slt i32 %145, %146
  br i1 %cmp201, label %for.body.203, label %for.end.212

for.body.203:                                     ; preds = %for.cond.200
  %147 = load i32, i32* %c, align 4
  %idxprom204 = sext i32 %147 to i64
  %arrayidx205 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom204
  %148 = load i8, i8* %arrayidx205, align 1
  %conv206 = zext i8 %148 to i32
  %149 = load i32, i32* %c, align 4
  %idxprom207 = sext i32 %149 to i64
  %arrayidx208 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom207
  %150 = load i32, i32* %arrayidx208, align 4
  %add209 = add nsw i32 %150, %conv206
  store i32 %add209, i32* %arrayidx208, align 4
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.203
  %151 = load i32, i32* %c, align 4
  %inc211 = add nsw i32 %151, 1
  store i32 %inc211, i32* %c, align 4
  br label %for.cond.200

for.end.212:                                      ; preds = %for.cond.200
  br label %if.end.213

if.end.213:                                       ; preds = %for.end.212, %for.end.198
  %152 = load double, double* %dxx, align 8
  %153 = load double, double* %xx, align 8
  %add214 = fadd double %153, %152
  store double %add214, double* %xx, align 8
  %154 = load double, double* %dyy, align 8
  %155 = load double, double* %yy, align 8
  %add215 = fadd double %155, %154
  store double %add215, double* %yy, align 8
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.213
  %156 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %156, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.85

for.end.218:                                      ; preds = %if.then.103, %for.cond.85
  %157 = load i32, i32* %i, align 4
  %cmp219 = icmp eq i32 %157, 0
  br i1 %cmp219, label %if.then.221, label %if.else.224

if.then.221:                                      ; preds = %for.end.218
  %158 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %159 = load double, double* %xx, align 8
  %conv222 = fptosi double %159 to i32
  %160 = load double, double* %yy, align 8
  %conv223 = fptosi double %160 to i32
  %161 = load i8*, i8** %d, align 8
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %158, i32 %conv222, i32 %conv223, i8* %161)
  br label %if.end.270

if.else.224:                                      ; preds = %for.end.218
  %162 = load i32, i32* @has_alpha, align 4
  %tobool225 = icmp ne i32 %162, 0
  br i1 %tobool225, label %if.then.226, label %if.else.255

if.then.226:                                      ; preds = %if.else.224
  %163 = load i32, i32* @img_bpp, align 4
  %sub228 = sub nsw i32 %163, 1
  %idxprom229 = sext i32 %sub228 to i64
  %arrayidx230 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom229
  %164 = load i32, i32* %arrayidx230, align 4
  store i32 %164, i32* %alpha227, align 4
  %165 = load i32, i32* %alpha227, align 4
  %166 = load i32, i32* %i, align 4
  %div231 = sdiv i32 %165, %166
  %conv232 = trunc i32 %div231 to i8
  %167 = load i32, i32* @img_bpp, align 4
  %sub233 = sub nsw i32 %167, 1
  %idxprom234 = sext i32 %sub233 to i64
  %168 = load i8*, i8** %d, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %168, i64 %idxprom234
  store i8 %conv232, i8* %arrayidx235, align 1
  %conv236 = zext i8 %conv232 to i32
  %cmp237 = icmp ne i32 %conv236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.254

if.then.239:                                      ; preds = %if.then.226
  store i32 0, i32* %c, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.251, %if.then.239
  %169 = load i32, i32* %c, align 4
  %170 = load i32, i32* @img_bpp, align 4
  %sub241 = sub nsw i32 %170, 1
  %cmp242 = icmp slt i32 %169, %sub241
  br i1 %cmp242, label %for.body.244, label %for.end.253

for.body.244:                                     ; preds = %for.cond.240
  %171 = load i32, i32* %c, align 4
  %idxprom245 = sext i32 %171 to i64
  %arrayidx246 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom245
  %172 = load i32, i32* %arrayidx246, align 4
  %173 = load i32, i32* %alpha227, align 4
  %div247 = sdiv i32 %172, %173
  %conv248 = trunc i32 %div247 to i8
  %174 = load i32, i32* %c, align 4
  %idxprom249 = sext i32 %174 to i64
  %175 = load i8*, i8** %d, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %175, i64 %idxprom249
  store i8 %conv248, i8* %arrayidx250, align 1
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.body.244
  %176 = load i32, i32* %c, align 4
  %inc252 = add nsw i32 %176, 1
  store i32 %inc252, i32* %c, align 4
  br label %for.cond.240

for.end.253:                                      ; preds = %for.cond.240
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.253, %if.then.226
  br label %if.end.269

if.else.255:                                      ; preds = %if.else.224
  store i32 0, i32* %c, align 4
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.266, %if.else.255
  %177 = load i32, i32* %c, align 4
  %178 = load i32, i32* @img_bpp, align 4
  %cmp257 = icmp slt i32 %177, %178
  br i1 %cmp257, label %for.body.259, label %for.end.268

for.body.259:                                     ; preds = %for.cond.256
  %179 = load i32, i32* %c, align 4
  %idxprom260 = sext i32 %179 to i64
  %arrayidx261 = getelementptr inbounds [4 x i32], [4 x i32]* %sum, i32 0, i64 %idxprom260
  %180 = load i32, i32* %arrayidx261, align 4
  %181 = load i32, i32* %i, align 4
  %div262 = sdiv i32 %180, %181
  %conv263 = trunc i32 %div262 to i8
  %182 = load i32, i32* %c, align 4
  %idxprom264 = sext i32 %182 to i64
  %183 = load i8*, i8** %d, align 8
  %arrayidx265 = getelementptr inbounds i8, i8* %183, i64 %idxprom264
  store i8 %conv263, i8* %arrayidx265, align 1
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.body.259
  %184 = load i32, i32* %c, align 4
  %inc267 = add nsw i32 %184, 1
  store i32 %inc267, i32* %c, align 4
  br label %for.cond.256

for.end.268:                                      ; preds = %for.cond.256
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.268, %if.end.254
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.then.221
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %185 = load i32, i32* %bpp, align 4
  %186 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %185 to i64
  %add.ptr = getelementptr inbounds i8, i8* %186, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.270
  %187 = load i32, i32* %x, align 4
  %inc272 = add nsw i32 %187, 1
  store i32 %inc272, i32* %x, align 4
  br label %for.cond.33

for.end.273:                                      ; preds = %for.cond.33
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %188 = load i32, i32* %rowstride, align 4
  %189 = load i8*, i8** %dest, align 8
  %idx.ext274 = sext i32 %188 to i64
  %add.ptr275 = getelementptr inbounds i8, i8* %189, i64 %idx.ext274
  store i8* %add.ptr275, i8** %dest, align 8
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.end.273
  %190 = load i32, i32* %y, align 4
  %inc277 = add nsw i32 %190, 1
  store i32 %inc277, i32* %y, align 4
  br label %for.cond.26

for.end.278:                                      ; preds = %for.cond.26
  %191 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool279 = icmp ne %struct._GimpPreview* %191, null
  br i1 %tobool279, label %if.then.280, label %if.else.283

if.then.280:                                      ; preds = %for.end.278
  %192 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %193 = bitcast %struct._GimpPreview* %192 to %struct._GTypeInstance*
  %call281 = call i64 @gimp_drawable_preview_get_type() #5
  %call282 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call281)
  %194 = bitcast %struct._GTypeInstance* %call282 to %struct._GimpDrawablePreview*
  call void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview* %194, %struct._GimpPixelRgn* %dest_rgn)
  br label %if.end.296

if.else.283:                                      ; preds = %for.end.278
  %w284 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %195 = load i32, i32* %w284, align 4
  %h285 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %196 = load i32, i32* %h285, align 4
  %mul286 = mul nsw i32 %195, %196
  %197 = load i32, i32* %progress, align 4
  %add287 = add nsw i32 %197, %mul286
  store i32 %add287, i32* %progress, align 4
  %198 = load i32, i32* %p, align 4
  %rem = srem i32 %198, 8
  %cmp288 = icmp eq i32 %rem, 0
  br i1 %cmp288, label %if.then.290, label %if.end.295

if.then.290:                                      ; preds = %if.else.283
  %199 = load i32, i32* %progress, align 4
  %conv291 = sitofp i32 %199 to double
  %200 = load i32, i32* %max_progress, align 4
  %conv292 = sitofp i32 %200 to double
  %div293 = fdiv double %conv291, %conv292
  %call294 = call i32 @gimp_progress_update(double %div293)
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.290, %if.else.283
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.280
  br label %for.inc.297

for.inc.297:                                      ; preds = %if.end.296
  %201 = load i8*, i8** %pr, align 8
  %call298 = call i8* @gimp_pixel_rgns_process(i8* %201)
  store i8* %call298, i8** %pr, align 8
  %202 = load i32, i32* %p, align 4
  %inc299 = add nsw i32 %202, 1
  store i32 %inc299, i32* %p, align 4
  br label %for.cond

for.end.300:                                      ; preds = %for.cond
  %203 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %203)
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher*, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_drawable_preview_draw_region(%struct._GimpDrawablePreview*, %struct._GimpPixelRgn*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_preview_get_type() #3

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
