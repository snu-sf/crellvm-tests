; ModuleID = './plug-ins/common/polar-coords.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.polarize_vals_t = type { double, double, i32, i32, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
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
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpRgnIterator = type opaque
%struct._GimpPixelFetcher = type opaque
%struct._GimpPreview = type { %struct._GtkBox, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, %struct._GdkCursor*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkCursor = type { i32, i32 }
%struct._GimpZoomPreview = type { %struct._GimpScrolledPreview, i8* }
%struct._GimpScrolledPreview = type { %struct._GimpPreview, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkCursor*, i8*, i8* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [8 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"circle\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Circle depth in %\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Offset angle\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"backwards\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Map backwards { TRUE, FALSE }\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Map from top { TRUE, FALSE }\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"polrec\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Polar to rectangular { TRUE, FALSE }\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"plug-in-polar-coords\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Convert image to or from polar coordinates\00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"Remaps and image from rectangular coordinates to polar coordinates or vice versa\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Daniel Dunbar and Federico Mena Quintero\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"July 1997, 0.5\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"P_olar Coordinates...\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Distorts\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@img_width = internal global i32 0, align 4
@img_height = internal global i32 0, align 4
@img_has_alpha = internal global i32 0, align 4
@sel_x1 = internal global i32 0, align 4
@sel_y1 = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@sel_x2 = internal global i32 0, align 4
@sel_y2 = internal global i32 0, align 4
@cen_x = internal global double 0.000000e+00, align 8
@cen_y = internal global double 0.000000e+00, align 8
@scale_x = internal global double 0.000000e+00, align 8
@scale_y = internal global double 0.000000e+00, align 8
@back_color = internal global [4 x i8] zeroinitializer, align 1
@pcvals = internal global %struct.polarize_vals_t { double 1.000000e+02, double 0.000000e+00, i32 0, i32 1, i32 1 }, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"polar-coords\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Polar Coordinates\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"gimp-polar-coords\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Circle _depth in percent:\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Offset _angle:\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"_Map backwards\00", align 1
@.str.36 = private unnamed_addr constant [90 x i8] c"If checked the mapping will begin at the right side, as opposed to beginning at the left.\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Map from _top\00", align 1
@.str.39 = private unnamed_addr constant [132 x i8] c"If unchecked the mapping will put the bottom row in the middle and the top row on the outside.  If checked it will be the opposite.\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"To _polar\00", align 1
@.str.41 = private unnamed_addr constant [119 x i8] c"If unchecked the image will be circularly mapped onto a rectangle.  If checked the image will be mapped onto a circle.\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Polar coordinates\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 8, i32 0, %struct._GimpParamDef* getelementptr inbounds ([8 x %struct._GimpParamDef], [8 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %xhsiz = alloca double, align 8
  %yhsiz = alloca double, align 8
  %background = alloca %struct._GimpRGB, align 8
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
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
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
  %call11 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call11, i32* @img_has_alpha, align 4
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_mask_intersect(i32 %14, i32* @sel_x1, i32* @sel_y1, i32* @sel_width, i32* @sel_height)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  br label %return

if.end:                                           ; preds = %do.end
  %15 = load i32, i32* @sel_x1, align 4
  %16 = load i32, i32* @sel_width, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* @sel_x2, align 4
  %17 = load i32, i32* @sel_y1, align 4
  %18 = load i32, i32* @sel_height, align 4
  %add14 = add nsw i32 %17, %18
  store i32 %add14, i32* @sel_y2, align 4
  %19 = load i32, i32* @sel_x1, align 4
  %20 = load i32, i32* @sel_x2, align 4
  %add15 = add nsw i32 %19, %20
  %sub = sub nsw i32 %add15, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* @cen_x, align 8
  %21 = load i32, i32* @sel_y1, align 4
  %22 = load i32, i32* @sel_y2, align 4
  %add16 = add nsw i32 %21, %22
  %sub17 = sub nsw i32 %add16, 1
  %conv18 = sitofp i32 %sub17 to double
  %div19 = fdiv double %conv18, 2.000000e+00
  store double %div19, double* @cen_y, align 8
  %23 = load i32, i32* @sel_width, align 4
  %sub20 = sub nsw i32 %23, 1
  %conv21 = sitofp i32 %sub20 to double
  %div22 = fdiv double %conv21, 2.000000e+00
  store double %div22, double* %xhsiz, align 8
  %24 = load i32, i32* @sel_height, align 4
  %sub23 = sub nsw i32 %24, 1
  %conv24 = sitofp i32 %sub23 to double
  %div25 = fdiv double %conv24, 2.000000e+00
  store double %div25, double* %yhsiz, align 8
  %25 = load double, double* %xhsiz, align 8
  %26 = load double, double* %yhsiz, align 8
  %cmp = fcmp olt double %25, %26
  br i1 %cmp, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  %27 = load double, double* %yhsiz, align 8
  %28 = load double, double* %xhsiz, align 8
  %div28 = fdiv double %27, %28
  store double %div28, double* @scale_x, align 8
  store double 1.000000e+00, double* @scale_y, align 8
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %29 = load double, double* %xhsiz, align 8
  %30 = load double, double* %yhsiz, align 8
  %cmp29 = fcmp ogt double %29, %30
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else
  store double 1.000000e+00, double* @scale_x, align 8
  %31 = load double, double* %xhsiz, align 8
  %32 = load double, double* %yhsiz, align 8
  %div32 = fdiv double %31, %32
  store double %div32, double* @scale_y, align 8
  br label %if.end.34

if.else.33:                                       ; preds = %if.else
  store double 1.000000e+00, double* @scale_x, align 8
  store double 1.000000e+00, double* @scale_y, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.27
  %call36 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id37, align 4
  call void @gimp_drawable_get_color_uchar(i32 %34, %struct._GimpRGB* %background, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @back_color, i32 0, i32 0))
  %35 = load i32, i32* %run_mode, align 4
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.35
  %call38 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.polarize_vals_t* @pcvals to i8*))
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call39 = call i32 @polarize_dialog(%struct._GimpDrawable* %36)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb
  br label %return

if.end.42:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.35
  %37 = load i32, i32* %nparams.addr, align 4
  %cmp44 = icmp ne i32 %37, 8
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %sw.bb.43
  store i32 1, i32* %status, align 4
  br label %if.end.62

if.else.47:                                       ; preds = %sw.bb.43
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 3
  %data49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx48, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data49 to double*
  %39 = load double, double* %d_float, align 8
  store double %39, double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 0), align 8
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 4
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_float52 = bitcast %union._GimpParamData* %data51 to double*
  %41 = load double, double* %d_float52, align 8
  store double %41, double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 1), align 8
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 5
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_int3255 = bitcast %union._GimpParamData* %data54 to i32*
  %43 = load i32, i32* %d_int3255, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 2), align 4
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 6
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_int3258 = bitcast %union._GimpParamData* %data57 to i32*
  %45 = load i32, i32* %d_int3258, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 3), align 4
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 7
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_int3261 = bitcast %union._GimpParamData* %data60 to i32*
  %47 = load i32, i32* %d_int3261, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 4), align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.47, %if.then.46
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.35
  %call64 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.polarize_vals_t* @pcvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.63, %if.end.62, %if.end.42
  %48 = load i32, i32* %status, align 4
  %cmp65 = icmp eq i32 %48, 3
  br i1 %cmp65, label %land.lhs.true, label %if.else.90

land.lhs.true:                                    ; preds = %sw.epilog
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id67, align 4
  %call68 = call i32 @gimp_drawable_is_rgb(i32 %50)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id70 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 0
  %52 = load i32, i32* %drawable_id70, align 4
  %call71 = call i32 @gimp_drawable_is_gray(i32 %52)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.90

if.then.73:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %53, i32 0, i32 1
  %54 = load i32, i32* %width, align 4
  %call74 = call i32 @gimp_tile_width() #4
  %add75 = add i32 %54, %call74
  %sub76 = sub i32 %add75, 1
  %mul = mul i32 2, %sub76
  %call77 = call i32 @gimp_tile_width() #4
  %div78 = udiv i32 %mul, %call77
  %conv79 = zext i32 %div78 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv79)
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @polarize(%struct._GimpDrawable* %55)
  %56 = load i32, i32* %run_mode, align 4
  %cmp80 = icmp ne i32 %56, 1
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.then.73
  %call83 = call i32 @gimp_displays_flush()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.then.73
  %57 = load i32, i32* %run_mode, align 4
  %cmp85 = icmp eq i32 %57, 0
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.84
  %call88 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* bitcast (%struct.polarize_vals_t* @pcvals to i8*), i32 32)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.end.84
  br label %if.end.95

if.else.90:                                       ; preds = %lor.lhs.false, %sw.epilog
  %58 = load i32, i32* %status, align 4
  %cmp91 = icmp eq i32 %58, 3
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.90
  store i32 0, i32* %status, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.else.90
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.89
  %59 = load i32, i32* %status, align 4
  store i32 %59, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %60)
  br label %return

return:                                           ; preds = %if.end.95, %if.then.41, %if.then
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

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_drawable_get_color_uchar(i32, %struct._GimpRGB*, i8*) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @polarize_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 1)
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0)) #5
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %5)
  %call6 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %main_vbox, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call7)
  %8 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %8, i32 12)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  %call11 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %11)
  %12 = bitcast %struct._GtkWidget* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call12)
  %13 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call14 = call %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable* %16)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @dialog_update_preview to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %call18 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 3, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %table, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_table_get_type() #4
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call19)
  %28 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %28, i32 6)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_table_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %31, i32 6)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call23)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %34, %struct._GtkWidget* %35, i32 0, i32 0, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_table_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call25)
  %39 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkTable*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0)) #5
  %40 = load double, double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 0), align 8
  %call28 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %39, i32 0, i32 0, i8* %call27, i32 200, i32 0, double %40, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call28, %struct._GtkObject** %adj, align 8
  %41 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %42 = bitcast %struct._GtkObject* %41 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (%struct.polarize_vals_t* @pcvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %44 = bitcast %struct._GtkObject* %43 to i8*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_table_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkTable*
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)) #5
  %50 = load double, double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 1), align 8
  %call34 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %49, i32 0, i32 1, i8* %call33, i32 200, i32 0, double %50, double 0.000000e+00, double 3.590000e+02, double 1.000000e+00, double 1.500000e+01, i32 2, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call34, %struct._GtkObject** %adj, align 8
  %51 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %52 = bitcast %struct._GtkObject* %51 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* bitcast (double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 1) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %54 = bitcast %struct._GtkObject* %53 to i8*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %56, void (i8*, %struct._GClosure*)* null, i32 2)
  %call37 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %hbox, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #4
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call38)
  %59 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %59, i32 1)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call40)
  %62 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %63, i32 0, i32 0, i32 0)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)) #5
  %call43 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call42)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %toggle, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_toggle_button_get_type() #4
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call44)
  %66 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkToggleButton*
  %67 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 2), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %66, i32 %67)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call46)
  %70 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %70, %struct._GtkWidget* %71, i32 1, i32 1, i32 0)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %72)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.36, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %73, i8* %call48, i8* null)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %75 = bitcast %struct._GtkWidget* %74 to i8*
  %call49 = call i64 @g_signal_connect_data(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 2) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %77 = bitcast %struct._GtkWidget* %76 to i8*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 2)
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0)) #5
  %call52 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call51)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %toggle, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_toggle_button_get_type() #4
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call53)
  %82 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkToggleButton*
  %83 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %82, i32 %83)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %85 = bitcast %struct._GtkWidget* %84 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #4
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call55)
  %86 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %86, %struct._GtkWidget* %87, i32 1, i32 1, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.39, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %89, i8* %call57, i8* null)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %95 = bitcast %struct._GtkWidget* %94 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %95, void (i8*, %struct._GClosure*)* null, i32 2)
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)) #5
  %call61 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call60)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %toggle, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_toggle_button_get_type() #4
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call62)
  %98 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkToggleButton*
  %99 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 4), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %98, i32 %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_box_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call64)
  %102 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkBox*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %103, i32 1, i32 1, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %call66 = call i8* @gettext(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.41, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %105, i8* %call66, i8* null)
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %107 = bitcast %struct._GtkWidget* %106 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 4) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %111 = bitcast %struct._GtkWidget* %110 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPreview*)* @gimp_preview_invalidate to void ()*), i8* %111, void (i8*, %struct._GClosure*)* null, i32 2)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %112)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_dialog_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call69)
  %116 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpDialog*
  %call71 = call i32 @gimp_dialog_run(%struct._GimpDialog* %116)
  %cmp = icmp eq i32 %call71, -5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %run, align 4
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %117)
  %118 = load i32, i32* %run, align 4
  ret i32 %118
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @polarize(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %iter = alloca %struct._GimpRgnIterator*, align 8
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %background = alloca %struct._GimpRGB, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call1 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %1 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %1, %struct._GimpRGB* %background)
  %2 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %2, i32 2)
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0)) #5
  %call3 = call i32 @gimp_progress_init(i8* %call2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call4 = call %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable* %3, i32 0)
  store %struct._GimpRgnIterator* %call4, %struct._GimpRgnIterator** %iter, align 8
  %4 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  %5 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %6 = bitcast %struct._GimpPixelFetcher* %5 to i8*
  call void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator* %4, void (i32, i32, i8*, i32, i8*)* @polarize_func, i8* %6)
  %7 = load %struct._GimpRgnIterator*, %struct._GimpRgnIterator** %iter, align 8
  call void @gimp_rgn_iterator_free(%struct._GimpRgnIterator* %7)
  %8 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %8)
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

declare %struct._GtkWidget* @gimp_zoom_preview_new(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pixel = alloca i8*, align 8
  %outside = alloca [4 x i8], align 1
  %background = alloca %struct._GimpRGB, align 8
  %dest = alloca i8*, align 8
  %j = alloca i32, align 4
  %bpp = alloca i32, align 4
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %in_pixels = alloca [4 x [4 x i8]], align 16
  %in_values = alloca [4 x i8*], align 16
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8*], [4 x i8*]* %in_values, i32 0, i64 %idxprom1
  store i8* %arraydecay, i8** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %4, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %call3 = call i32 @gimp_context_get_background(%struct._GimpRGB* %background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background, double 0.000000e+00)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id, align 4
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %outside, i32 0, i32 0
  call void @gimp_drawable_get_color_uchar(i32 %6, %struct._GimpRGB* %background, i8* %arraydecay4)
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher* %7, %struct._GimpRGB* %background)
  %8 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher* %8, i32 2)
  %9 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %10 = bitcast %struct._GimpPreview* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_zoom_preview_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpZoomPreview*
  %call7 = call i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview* %11, i32* %width, i32* %height, i32* %bpp)
  store i8* %call7, i8** %dest, align 8
  %12 = load i8*, i8** %dest, align 8
  store i8* %12, i8** %pixel, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.50, %for.end
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %height, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body.10, label %for.end.52

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %x, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.47, %for.body.10
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %width, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body.13, label %for.end.49

for.body.13:                                      ; preds = %for.cond.11
  %17 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  call void @gimp_preview_untransform(%struct._GimpPreview* %17, i32 %18, i32 %19, i32* %sx, i32* %sy)
  %20 = load i32, i32* %sx, align 4
  %conv = sitofp i32 %20 to double
  %21 = load i32, i32* %sy, align 4
  %conv14 = sitofp i32 %21 to double
  %call15 = call i32 @calc_undistorted_coords(double %conv, double %conv14, double* %cx, double* %cy)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.13
  %22 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %23 = load double, double* %cx, align 8
  %conv16 = fptosi double %23 to i32
  %24 = load double, double* %cy, align 8
  %conv17 = fptosi double %24 to i32
  %arrayidx18 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 0
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx18, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %22, i32 %conv16, i32 %conv17, i8* %arraydecay19)
  %25 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %26 = load double, double* %cx, align 8
  %add = fadd double %26, 1.000000e+00
  %conv20 = fptosi double %add to i32
  %27 = load double, double* %cy, align 8
  %conv21 = fptosi double %27 to i32
  %arrayidx22 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 1
  %arraydecay23 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx22, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %25, i32 %conv20, i32 %conv21, i8* %arraydecay23)
  %28 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %29 = load double, double* %cx, align 8
  %conv24 = fptosi double %29 to i32
  %30 = load double, double* %cy, align 8
  %add25 = fadd double %30, 1.000000e+00
  %conv26 = fptosi double %add25 to i32
  %arrayidx27 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 2
  %arraydecay28 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx27, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %28, i32 %conv24, i32 %conv26, i8* %arraydecay28)
  %31 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %32 = load double, double* %cx, align 8
  %add29 = fadd double %32, 1.000000e+00
  %conv30 = fptosi double %add29 to i32
  %33 = load double, double* %cy, align 8
  %add31 = fadd double %33, 1.000000e+00
  %conv32 = fptosi double %add31 to i32
  %arrayidx33 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %in_pixels, i32 0, i64 3
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx33, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %31, i32 %conv30, i32 %conv32, i8* %arraydecay34)
  %34 = load i8*, i8** %pixel, align 8
  %35 = load double, double* %cx, align 8
  %36 = load double, double* %cy, align 8
  %37 = load i32, i32* %bpp, align 4
  %38 = load i32, i32* @img_has_alpha, align 4
  %arraydecay35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %in_values, i32 0, i32 0
  call void @gimp_bilinear_pixels_8(i8* %34, double %35, double %36, i32 %37, i32 %38, i8** %arraydecay35)
  br label %if.end

if.else:                                          ; preds = %for.body.13
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.44, %if.else
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %bpp, align 4
  %cmp37 = icmp slt i32 %39, %40
  br i1 %cmp37, label %for.body.39, label %for.end.46

for.body.39:                                      ; preds = %for.cond.36
  %41 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [4 x i8], [4 x i8]* %outside, i32 0, i64 %idxprom40
  %42 = load i8, i8* %arrayidx41, align 1
  %43 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load i8*, i8** %pixel, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %44, i64 %idxprom42
  store i8 %42, i8* %arrayidx43, align 1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.39
  %45 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %45, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond.36

for.end.46:                                       ; preds = %for.cond.36
  br label %if.end

if.end:                                           ; preds = %for.end.46, %if.then
  %46 = load i32, i32* %bpp, align 4
  %47 = load i8*, i8** %pixel, align 8
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  store i8* %add.ptr, i8** %pixel, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end
  %48 = load i32, i32* %x, align 4
  %inc48 = add nsw i32 %48, 1
  store i32 %inc48, i32* %x, align 4
  br label %for.cond.11

for.end.49:                                       ; preds = %for.cond.11
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %49 = load i32, i32* %y, align 4
  %inc51 = add nsw i32 %49, 1
  store i32 %inc51, i32* %y, align 4
  br label %for.cond.8

for.end.52:                                       ; preds = %for.cond.8
  %50 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %50)
  %51 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %52 = load i8*, i8** %dest, align 8
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %53, %54
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %51, i8* %52, i32 %mul)
  %55 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %55)
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #1

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_pixel_fetcher_set_bg_color(%struct._GimpPixelFetcher*, %struct._GimpRGB*) #1

declare void @gimp_pixel_fetcher_set_edge_mode(%struct._GimpPixelFetcher*, i32) #1

declare i8* @gimp_zoom_preview_get_source(%struct._GimpZoomPreview*, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_preview_get_type() #3

declare void @gimp_preview_untransform(%struct._GimpPreview*, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @calc_undistorted_coords(double %wx, double %wy, double* %x, double* %y) #0 {
entry:
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %inside = alloca i32, align 4
  %phi = alloca double, align 8
  %phi2 = alloca double, align 8
  %xx = alloca double, align 8
  %xm = alloca double, align 8
  %ym = alloca double, align 8
  %yy = alloca double, align 8
  %xdiff = alloca i32, align 4
  %ydiff = alloca i32, align 4
  %r = alloca double, align 8
  %m = alloca double, align 8
  %xmax = alloca double, align 8
  %ymax = alloca double, align 8
  %rmax = alloca double, align 8
  %x_calc = alloca double, align 8
  %y_calc = alloca double, align 8
  %xi = alloca double, align 8
  %yi = alloca double, align 8
  %circle = alloca double, align 8
  %angl = alloca double, align 8
  %t = alloca double, align 8
  %angle = alloca double, align 8
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store double %wx, double* %wx.addr, align 8
  store double %wy, double* %wy.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double 0.000000e+00, double* %phi, align 8
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %0 = load i32, i32* @img_width, align 4
  store i32 %0, i32* %x2, align 4
  %1 = load i32, i32* @img_height, align 4
  store i32 %1, i32* %y2, align 4
  %2 = load i32, i32* %x2, align 4
  %3 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %xdiff, align 4
  %4 = load i32, i32* %y2, align 4
  %5 = load i32, i32* %y1, align 4
  %sub1 = sub nsw i32 %4, %5
  store i32 %sub1, i32* %ydiff, align 4
  %6 = load i32, i32* %xdiff, align 4
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %xm, align 8
  %7 = load i32, i32* %ydiff, align 4
  %conv2 = sitofp i32 %7 to double
  %div3 = fdiv double %conv2, 2.000000e+00
  store double %div3, double* %ym, align 8
  %8 = load double, double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 0), align 8
  store double %8, double* %circle, align 8
  %9 = load double, double* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 1), align 8
  store double %9, double* %angle, align 8
  %10 = load double, double* %angle, align 8
  %div4 = fdiv double %10, 1.800000e+02
  %mul = fmul double %div4, 0x400921FB54442D18
  store double %mul, double* %angl, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 4), align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else.144

if.then:                                          ; preds = %entry
  %12 = load double, double* %wx.addr, align 8
  %13 = load double, double* @cen_x, align 8
  %cmp = fcmp oge double %12, %13
  br i1 %cmp, label %if.then.6, label %if.else.23

if.then.6:                                        ; preds = %if.then
  %14 = load double, double* %wy.addr, align 8
  %15 = load double, double* @cen_y, align 8
  %cmp7 = fcmp ogt double %14, %15
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  %16 = load double, double* %wx.addr, align 8
  %17 = load double, double* @cen_x, align 8
  %sub10 = fsub double %16, %17
  %18 = load double, double* %wy.addr, align 8
  %19 = load double, double* @cen_y, align 8
  %sub11 = fsub double %18, %19
  %div12 = fdiv double %sub10, %sub11
  %call = call double @atan(double %div12) #5
  %sub13 = fsub double 0x400921FB54442D18, %call
  store double %sub13, double* %phi, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.6
  %20 = load double, double* %wy.addr, align 8
  %21 = load double, double* @cen_y, align 8
  %cmp14 = fcmp olt double %20, %21
  br i1 %cmp14, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.else
  %22 = load double, double* %wx.addr, align 8
  %23 = load double, double* @cen_x, align 8
  %sub17 = fsub double %22, %23
  %24 = load double, double* @cen_y, align 8
  %25 = load double, double* %wy.addr, align 8
  %sub18 = fsub double %24, %25
  %div19 = fdiv double %sub17, %sub18
  %call20 = call double @atan(double %div19) #5
  store double %call20, double* %phi, align 8
  br label %if.end

if.else.21:                                       ; preds = %if.else
  store double 0x3FF921FB54442D18, double* %phi, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.9
  br label %if.end.47

if.else.23:                                       ; preds = %if.then
  %26 = load double, double* %wx.addr, align 8
  %27 = load double, double* @cen_x, align 8
  %cmp24 = fcmp olt double %26, %27
  br i1 %cmp24, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %if.else.23
  %28 = load double, double* %wy.addr, align 8
  %29 = load double, double* @cen_y, align 8
  %cmp27 = fcmp olt double %28, %29
  br i1 %cmp27, label %if.then.29, label %if.else.35

if.then.29:                                       ; preds = %if.then.26
  %30 = load double, double* @cen_x, align 8
  %31 = load double, double* %wx.addr, align 8
  %sub30 = fsub double %30, %31
  %32 = load double, double* @cen_y, align 8
  %33 = load double, double* %wy.addr, align 8
  %sub31 = fsub double %32, %33
  %div32 = fdiv double %sub30, %sub31
  %call33 = call double @atan(double %div32) #5
  %sub34 = fsub double 0x401921FB54442D18, %call33
  store double %sub34, double* %phi, align 8
  br label %if.end.45

if.else.35:                                       ; preds = %if.then.26
  %34 = load double, double* %wy.addr, align 8
  %35 = load double, double* @cen_y, align 8
  %cmp36 = fcmp ogt double %34, %35
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %if.else.35
  %36 = load double, double* @cen_x, align 8
  %37 = load double, double* %wx.addr, align 8
  %sub39 = fsub double %36, %37
  %38 = load double, double* %wy.addr, align 8
  %39 = load double, double* @cen_y, align 8
  %sub40 = fsub double %38, %39
  %div41 = fdiv double %sub39, %sub40
  %call42 = call double @atan(double %div41) #5
  %add = fadd double 0x400921FB54442D18, %call42
  store double %add, double* %phi, align 8
  br label %if.end.44

if.else.43:                                       ; preds = %if.else.35
  store double 0x4012D97C7F3321D2, double* %phi, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.29
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else.23
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.22
  %40 = load double, double* %wx.addr, align 8
  %41 = load double, double* @cen_x, align 8
  %sub48 = fsub double %40, %41
  %42 = load double, double* %wx.addr, align 8
  %43 = load double, double* @cen_x, align 8
  %sub49 = fsub double %42, %43
  %mul50 = fmul double %sub48, %sub49
  %44 = load double, double* %wy.addr, align 8
  %45 = load double, double* @cen_y, align 8
  %sub51 = fsub double %44, %45
  %46 = load double, double* %wy.addr, align 8
  %47 = load double, double* @cen_y, align 8
  %sub52 = fsub double %46, %47
  %mul53 = fmul double %sub51, %sub52
  %add54 = fadd double %mul50, %mul53
  %call55 = call double @sqrt(double %add54) #5
  store double %call55, double* %r, align 8
  %48 = load double, double* %wx.addr, align 8
  %49 = load double, double* @cen_x, align 8
  %cmp56 = fcmp une double %48, %49
  br i1 %cmp56, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %if.end.47
  %50 = load double, double* %wy.addr, align 8
  %51 = load double, double* @cen_y, align 8
  %sub59 = fsub double %50, %51
  %52 = load double, double* %wx.addr, align 8
  %53 = load double, double* @cen_x, align 8
  %sub60 = fsub double %52, %53
  %div61 = fdiv double %sub59, %sub60
  %call62 = call double @fabs(double %div61) #4
  store double %call62, double* %m, align 8
  br label %if.end.64

if.else.63:                                       ; preds = %if.end.47
  store double 0.000000e+00, double* %m, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %if.then.58
  %54 = load double, double* %m, align 8
  %55 = load i32, i32* %y2, align 4
  %56 = load i32, i32* %y1, align 4
  %sub65 = sub nsw i32 %55, %56
  %conv66 = sitofp i32 %sub65 to double
  %57 = load i32, i32* %x2, align 4
  %58 = load i32, i32* %x1, align 4
  %sub67 = sub nsw i32 %57, %58
  %conv68 = sitofp i32 %sub67 to double
  %div69 = fdiv double %conv66, %conv68
  %cmp70 = fcmp ole double %54, %div69
  br i1 %cmp70, label %if.then.72, label %if.else.83

if.then.72:                                       ; preds = %if.end.64
  %59 = load double, double* %wx.addr, align 8
  %60 = load double, double* @cen_x, align 8
  %cmp73 = fcmp oeq double %59, %60
  br i1 %cmp73, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %if.then.72
  store double 0.000000e+00, double* %xmax, align 8
  %61 = load double, double* @cen_y, align 8
  %62 = load i32, i32* %y1, align 4
  %conv76 = sitofp i32 %62 to double
  %sub77 = fsub double %61, %conv76
  store double %sub77, double* %ymax, align 8
  br label %if.end.82

if.else.78:                                       ; preds = %if.then.72
  %63 = load double, double* @cen_x, align 8
  %64 = load i32, i32* %x1, align 4
  %conv79 = sitofp i32 %64 to double
  %sub80 = fsub double %63, %conv79
  store double %sub80, double* %xmax, align 8
  %65 = load double, double* %m, align 8
  %66 = load double, double* %xmax, align 8
  %mul81 = fmul double %65, %66
  store double %mul81, double* %ymax, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.78, %if.then.75
  br label %if.end.87

if.else.83:                                       ; preds = %if.end.64
  %67 = load double, double* @cen_y, align 8
  %68 = load i32, i32* %y1, align 4
  %conv84 = sitofp i32 %68 to double
  %sub85 = fsub double %67, %conv84
  store double %sub85, double* %ymax, align 8
  %69 = load double, double* %ymax, align 8
  %70 = load double, double* %m, align 8
  %div86 = fdiv double %69, %70
  store double %div86, double* %xmax, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.end.82
  %71 = load double, double* %xmax, align 8
  %72 = load double, double* %xmax, align 8
  %mul88 = fmul double %71, %72
  %73 = load double, double* %ymax, align 8
  %74 = load double, double* %ymax, align 8
  %mul89 = fmul double %73, %74
  %add90 = fadd double %mul88, %mul89
  %call91 = call double @sqrt(double %add90) #5
  store double %call91, double* %rmax, align 8
  %75 = load double, double* @cen_y, align 8
  %76 = load i32, i32* %y1, align 4
  %conv92 = sitofp i32 %76 to double
  %sub93 = fsub double %75, %conv92
  %77 = load double, double* @cen_x, align 8
  %78 = load i32, i32* %x1, align 4
  %conv94 = sitofp i32 %78 to double
  %sub95 = fsub double %77, %conv94
  %cmp96 = fcmp olt double %sub93, %sub95
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.87
  %79 = load double, double* @cen_y, align 8
  %80 = load i32, i32* %y1, align 4
  %conv98 = sitofp i32 %80 to double
  %sub99 = fsub double %79, %conv98
  br label %cond.end

cond.false:                                       ; preds = %if.end.87
  %81 = load double, double* @cen_x, align 8
  %82 = load i32, i32* %x1, align 4
  %conv100 = sitofp i32 %82 to double
  %sub101 = fsub double %81, %conv100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub99, %cond.true ], [ %sub101, %cond.false ]
  store double %cond, double* %t, align 8
  %83 = load double, double* %rmax, align 8
  %84 = load double, double* %t, align 8
  %sub102 = fsub double %83, %84
  %div103 = fdiv double %sub102, 1.000000e+02
  %85 = load double, double* %circle, align 8
  %sub104 = fsub double 1.000000e+02, %85
  %mul105 = fmul double %div103, %sub104
  %86 = load double, double* %t, align 8
  %add106 = fadd double %mul105, %86
  store double %add106, double* %rmax, align 8
  %87 = load double, double* %phi, align 8
  %88 = load double, double* %angl, align 8
  %add107 = fadd double %87, %88
  %call108 = call double @fmod(double %add107, double 0x401921FB54442D18) #5
  store double %call108, double* %phi, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 2), align 4
  %tobool109 = icmp ne i32 %89, 0
  br i1 %tobool109, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %cond.end
  %90 = load i32, i32* %x2, align 4
  %sub111 = sub nsw i32 %90, 1
  %conv112 = sitofp i32 %sub111 to double
  %91 = load i32, i32* %x2, align 4
  %92 = load i32, i32* %x1, align 4
  %sub113 = sub nsw i32 %91, %92
  %sub114 = sub nsw i32 %sub113, 1
  %conv115 = sitofp i32 %sub114 to double
  %div116 = fdiv double %conv115, 0x401921FB54442D18
  %93 = load double, double* %phi, align 8
  %mul117 = fmul double %div116, %93
  %sub118 = fsub double %conv112, %mul117
  store double %sub118, double* %x_calc, align 8
  br label %if.end.127

if.else.119:                                      ; preds = %cond.end
  %94 = load i32, i32* %x2, align 4
  %95 = load i32, i32* %x1, align 4
  %sub120 = sub nsw i32 %94, %95
  %sub121 = sub nsw i32 %sub120, 1
  %conv122 = sitofp i32 %sub121 to double
  %div123 = fdiv double %conv122, 0x401921FB54442D18
  %96 = load double, double* %phi, align 8
  %mul124 = fmul double %div123, %96
  %97 = load i32, i32* %x1, align 4
  %conv125 = sitofp i32 %97 to double
  %add126 = fadd double %mul124, %conv125
  store double %add126, double* %x_calc, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.119, %if.then.110
  %98 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 3), align 4
  %tobool128 = icmp ne i32 %98, 0
  br i1 %tobool128, label %if.then.129, label %if.else.136

if.then.129:                                      ; preds = %if.end.127
  %99 = load i32, i32* %y2, align 4
  %100 = load i32, i32* %y1, align 4
  %sub130 = sub nsw i32 %99, %100
  %conv131 = sitofp i32 %sub130 to double
  %101 = load double, double* %rmax, align 8
  %div132 = fdiv double %conv131, %101
  %102 = load double, double* %r, align 8
  %mul133 = fmul double %div132, %102
  %103 = load i32, i32* %y1, align 4
  %conv134 = sitofp i32 %103 to double
  %add135 = fadd double %mul133, %conv134
  store double %add135, double* %y_calc, align 8
  br label %if.end.143

if.else.136:                                      ; preds = %if.end.127
  %104 = load i32, i32* %y2, align 4
  %conv137 = sitofp i32 %104 to double
  %105 = load i32, i32* %y2, align 4
  %106 = load i32, i32* %y1, align 4
  %sub138 = sub nsw i32 %105, %106
  %conv139 = sitofp i32 %sub138 to double
  %107 = load double, double* %rmax, align 8
  %div140 = fdiv double %conv139, %107
  %108 = load double, double* %r, align 8
  %mul141 = fmul double %div140, %108
  %sub142 = fsub double %conv137, %mul141
  store double %sub142, double* %y_calc, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.136, %if.then.129
  br label %if.end.271

if.else.144:                                      ; preds = %entry
  %109 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 2), align 4
  %tobool145 = icmp ne i32 %109, 0
  br i1 %tobool145, label %if.then.146, label %if.else.152

if.then.146:                                      ; preds = %if.else.144
  %110 = load i32, i32* %x2, align 4
  %conv147 = sitofp i32 %110 to double
  %111 = load double, double* %wx.addr, align 8
  %sub148 = fsub double %conv147, %111
  %mul149 = fmul double 0x401921FB54442D18, %sub148
  %112 = load i32, i32* %xdiff, align 4
  %conv150 = sitofp i32 %112 to double
  %div151 = fdiv double %mul149, %conv150
  store double %div151, double* %phi, align 8
  br label %if.end.158

if.else.152:                                      ; preds = %if.else.144
  %113 = load double, double* %wx.addr, align 8
  %114 = load i32, i32* %x1, align 4
  %conv153 = sitofp i32 %114 to double
  %sub154 = fsub double %113, %conv153
  %mul155 = fmul double 0x401921FB54442D18, %sub154
  %115 = load i32, i32* %xdiff, align 4
  %conv156 = sitofp i32 %115 to double
  %div157 = fdiv double %mul155, %conv156
  store double %div157, double* %phi, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.152, %if.then.146
  %116 = load double, double* %phi, align 8
  %117 = load double, double* %angl, align 8
  %add159 = fadd double %116, %117
  %call160 = call double @fmod(double %add159, double 0x401921FB54442D18) #5
  store double %call160, double* %phi, align 8
  %118 = load double, double* %phi, align 8
  %cmp161 = fcmp oge double %118, 0x4012D97C7F3321D2
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.end.158
  %119 = load double, double* %phi, align 8
  %sub164 = fsub double 0x401921FB54442D18, %119
  store double %sub164, double* %phi2, align 8
  br label %if.end.178

if.else.165:                                      ; preds = %if.end.158
  %120 = load double, double* %phi, align 8
  %cmp166 = fcmp oge double %120, 0x400921FB54442D18
  br i1 %cmp166, label %if.then.168, label %if.else.170

if.then.168:                                      ; preds = %if.else.165
  %121 = load double, double* %phi, align 8
  %sub169 = fsub double %121, 0x400921FB54442D18
  store double %sub169, double* %phi2, align 8
  br label %if.end.177

if.else.170:                                      ; preds = %if.else.165
  %122 = load double, double* %phi, align 8
  %cmp171 = fcmp oge double %122, 0x3FF921FB54442D18
  br i1 %cmp171, label %if.then.173, label %if.else.175

if.then.173:                                      ; preds = %if.else.170
  %123 = load double, double* %phi, align 8
  %sub174 = fsub double 0x400921FB54442D18, %123
  store double %sub174, double* %phi2, align 8
  br label %if.end.176

if.else.175:                                      ; preds = %if.else.170
  %124 = load double, double* %phi, align 8
  store double %124, double* %phi2, align 8
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.175, %if.then.173
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.168
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.163
  %125 = load double, double* %phi2, align 8
  %call179 = call double @tan(double %125) #5
  store double %call179, double* %xx, align 8
  %126 = load double, double* %xx, align 8
  %cmp180 = fcmp une double %126, 0.000000e+00
  br i1 %cmp180, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %if.end.178
  %127 = load double, double* %xx, align 8
  %div183 = fdiv double 1.000000e+00, %127
  store double %div183, double* %m, align 8
  br label %if.end.185

if.else.184:                                      ; preds = %if.end.178
  store double 0.000000e+00, double* %m, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.182
  %128 = load double, double* %m, align 8
  %129 = load i32, i32* %ydiff, align 4
  %conv186 = sitofp i32 %129 to double
  %130 = load i32, i32* %xdiff, align 4
  %conv187 = sitofp i32 %130 to double
  %div188 = fdiv double %conv186, %conv187
  %cmp189 = fcmp ole double %128, %div188
  br i1 %cmp189, label %if.then.191, label %if.else.202

if.then.191:                                      ; preds = %if.end.185
  %131 = load double, double* %phi2, align 8
  %cmp192 = fcmp oeq double %131, 0.000000e+00
  br i1 %cmp192, label %if.then.194, label %if.else.197

if.then.194:                                      ; preds = %if.then.191
  store double 0.000000e+00, double* %xmax, align 8
  %132 = load double, double* %ym, align 8
  %133 = load i32, i32* %y1, align 4
  %conv195 = sitofp i32 %133 to double
  %sub196 = fsub double %132, %conv195
  store double %sub196, double* %ymax, align 8
  br label %if.end.201

if.else.197:                                      ; preds = %if.then.191
  %134 = load double, double* %xm, align 8
  %135 = load i32, i32* %x1, align 4
  %conv198 = sitofp i32 %135 to double
  %sub199 = fsub double %134, %conv198
  store double %sub199, double* %xmax, align 8
  %136 = load double, double* %m, align 8
  %137 = load double, double* %xmax, align 8
  %mul200 = fmul double %136, %137
  store double %mul200, double* %ymax, align 8
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.197, %if.then.194
  br label %if.end.206

if.else.202:                                      ; preds = %if.end.185
  %138 = load double, double* %ym, align 8
  %139 = load i32, i32* %y1, align 4
  %conv203 = sitofp i32 %139 to double
  %sub204 = fsub double %138, %conv203
  store double %sub204, double* %ymax, align 8
  %140 = load double, double* %ymax, align 8
  %141 = load double, double* %m, align 8
  %div205 = fdiv double %140, %141
  store double %div205, double* %xmax, align 8
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.202, %if.end.201
  %142 = load double, double* %xmax, align 8
  %143 = load double, double* %xmax, align 8
  %mul207 = fmul double %142, %143
  %144 = load double, double* %ymax, align 8
  %145 = load double, double* %ymax, align 8
  %mul208 = fmul double %144, %145
  %add209 = fadd double %mul207, %mul208
  %call210 = call double @sqrt(double %add209) #5
  store double %call210, double* %rmax, align 8
  %146 = load double, double* %ym, align 8
  %147 = load i32, i32* %y1, align 4
  %conv211 = sitofp i32 %147 to double
  %sub212 = fsub double %146, %conv211
  %148 = load double, double* %xm, align 8
  %149 = load i32, i32* %x1, align 4
  %conv213 = sitofp i32 %149 to double
  %sub214 = fsub double %148, %conv213
  %cmp215 = fcmp olt double %sub212, %sub214
  br i1 %cmp215, label %cond.true.217, label %cond.false.220

cond.true.217:                                    ; preds = %if.end.206
  %150 = load double, double* %ym, align 8
  %151 = load i32, i32* %y1, align 4
  %conv218 = sitofp i32 %151 to double
  %sub219 = fsub double %150, %conv218
  br label %cond.end.223

cond.false.220:                                   ; preds = %if.end.206
  %152 = load double, double* %xm, align 8
  %153 = load i32, i32* %x1, align 4
  %conv221 = sitofp i32 %153 to double
  %sub222 = fsub double %152, %conv221
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.220, %cond.true.217
  %cond224 = phi double [ %sub219, %cond.true.217 ], [ %sub222, %cond.false.220 ]
  store double %cond224, double* %t, align 8
  %154 = load double, double* %rmax, align 8
  %155 = load double, double* %t, align 8
  %sub225 = fsub double %154, %155
  %div226 = fdiv double %sub225, 1.000000e+02
  %156 = load double, double* %circle, align 8
  %sub227 = fsub double 1.000000e+02, %156
  %mul228 = fmul double %div226, %sub227
  %157 = load double, double* %t, align 8
  %add229 = fadd double %mul228, %157
  store double %add229, double* %rmax, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.polarize_vals_t, %struct.polarize_vals_t* @pcvals, i32 0, i32 3), align 4
  %tobool230 = icmp ne i32 %158, 0
  br i1 %tobool230, label %if.then.231, label %if.else.237

if.then.231:                                      ; preds = %cond.end.223
  %159 = load double, double* %rmax, align 8
  %160 = load double, double* %wy.addr, align 8
  %161 = load i32, i32* %y1, align 4
  %conv232 = sitofp i32 %161 to double
  %sub233 = fsub double %160, %conv232
  %162 = load i32, i32* %ydiff, align 4
  %conv234 = sitofp i32 %162 to double
  %div235 = fdiv double %sub233, %conv234
  %mul236 = fmul double %159, %div235
  store double %mul236, double* %r, align 8
  br label %if.end.243

if.else.237:                                      ; preds = %cond.end.223
  %163 = load double, double* %rmax, align 8
  %164 = load i32, i32* %y2, align 4
  %conv238 = sitofp i32 %164 to double
  %165 = load double, double* %wy.addr, align 8
  %sub239 = fsub double %conv238, %165
  %166 = load i32, i32* %ydiff, align 4
  %conv240 = sitofp i32 %166 to double
  %div241 = fdiv double %sub239, %conv240
  %mul242 = fmul double %163, %div241
  store double %mul242, double* %r, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.237, %if.then.231
  %167 = load double, double* %r, align 8
  %168 = load double, double* %phi2, align 8
  %call244 = call double @sin(double %168) #5
  %mul245 = fmul double %167, %call244
  store double %mul245, double* %xx, align 8
  %169 = load double, double* %r, align 8
  %170 = load double, double* %phi2, align 8
  %call246 = call double @cos(double %170) #5
  %mul247 = fmul double %169, %call246
  store double %mul247, double* %yy, align 8
  %171 = load double, double* %phi, align 8
  %cmp248 = fcmp oge double %171, 0x4012D97C7F3321D2
  br i1 %cmp248, label %if.then.250, label %if.else.253

if.then.250:                                      ; preds = %if.end.243
  %172 = load double, double* %xm, align 8
  %173 = load double, double* %xx, align 8
  %sub251 = fsub double %172, %173
  store double %sub251, double* %x_calc, align 8
  %174 = load double, double* %ym, align 8
  %175 = load double, double* %yy, align 8
  %sub252 = fsub double %174, %175
  store double %sub252, double* %y_calc, align 8
  br label %if.end.270

if.else.253:                                      ; preds = %if.end.243
  %176 = load double, double* %phi, align 8
  %cmp254 = fcmp oge double %176, 0x400921FB54442D18
  br i1 %cmp254, label %if.then.256, label %if.else.259

if.then.256:                                      ; preds = %if.else.253
  %177 = load double, double* %xm, align 8
  %178 = load double, double* %xx, align 8
  %sub257 = fsub double %177, %178
  store double %sub257, double* %x_calc, align 8
  %179 = load double, double* %ym, align 8
  %180 = load double, double* %yy, align 8
  %add258 = fadd double %179, %180
  store double %add258, double* %y_calc, align 8
  br label %if.end.269

if.else.259:                                      ; preds = %if.else.253
  %181 = load double, double* %phi, align 8
  %cmp260 = fcmp oge double %181, 0x3FF921FB54442D18
  br i1 %cmp260, label %if.then.262, label %if.else.265

if.then.262:                                      ; preds = %if.else.259
  %182 = load double, double* %xm, align 8
  %183 = load double, double* %xx, align 8
  %add263 = fadd double %182, %183
  store double %add263, double* %x_calc, align 8
  %184 = load double, double* %ym, align 8
  %185 = load double, double* %yy, align 8
  %add264 = fadd double %184, %185
  store double %add264, double* %y_calc, align 8
  br label %if.end.268

if.else.265:                                      ; preds = %if.else.259
  %186 = load double, double* %xm, align 8
  %187 = load double, double* %xx, align 8
  %add266 = fadd double %186, %187
  store double %add266, double* %x_calc, align 8
  %188 = load double, double* %ym, align 8
  %189 = load double, double* %yy, align 8
  %sub267 = fsub double %188, %189
  store double %sub267, double* %y_calc, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.265, %if.then.262
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.then.256
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.then.250
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.143
  %190 = load double, double* %x_calc, align 8
  %add272 = fadd double %190, 5.000000e-01
  %conv273 = fptosi double %add272 to i32
  %conv274 = sitofp i32 %conv273 to double
  store double %conv274, double* %xi, align 8
  %191 = load double, double* %y_calc, align 8
  %add275 = fadd double %191, 5.000000e-01
  %conv276 = fptosi double %add275 to i32
  %conv277 = sitofp i32 %conv276 to double
  store double %conv277, double* %yi, align 8
  %192 = load double, double* %xi, align 8
  %cmp278 = fcmp ole double 0.000000e+00, %192
  br i1 %cmp278, label %land.lhs.true, label %cond.false.285

land.lhs.true:                                    ; preds = %if.end.271
  %193 = load double, double* %xi, align 8
  %194 = load i32, i32* @img_width, align 4
  %sub280 = sub nsw i32 %194, 1
  %conv281 = sitofp i32 %sub280 to double
  %cmp282 = fcmp ole double %193, %conv281
  br i1 %cmp282, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %land.lhs.true
  br i1 true, label %land.rhs, label %land.end.295

cond.false.285:                                   ; preds = %land.lhs.true, %if.end.271
  br i1 false, label %land.rhs, label %land.end.295

land.rhs:                                         ; preds = %cond.false.285, %cond.true.284
  %195 = load double, double* %yi, align 8
  %cmp286 = fcmp ole double 0.000000e+00, %195
  br i1 %cmp286, label %land.rhs.288, label %land.end

land.rhs.288:                                     ; preds = %land.rhs
  %196 = load double, double* %yi, align 8
  %197 = load i32, i32* @img_height, align 4
  %sub289 = sub nsw i32 %197, 1
  %conv290 = sitofp i32 %sub289 to double
  %cmp291 = fcmp ole double %196, %conv290
  br label %land.end

land.end:                                         ; preds = %land.rhs.288, %land.rhs
  %198 = phi i1 [ false, %land.rhs ], [ %cmp291, %land.rhs.288 ]
  %cond293 = select i1 %198, i32 1, i32 0
  %tobool294 = icmp ne i32 %cond293, 0
  br label %land.end.295

land.end.295:                                     ; preds = %land.end, %cond.false.285, %cond.true.284
  %199 = phi i1 [ false, %cond.false.285 ], [ false, %cond.true.284 ], [ %tobool294, %land.end ]
  %land.ext = zext i1 %199 to i32
  store i32 %land.ext, i32* %inside, align 4
  %200 = load i32, i32* %inside, align 4
  %tobool296 = icmp ne i32 %200, 0
  br i1 %tobool296, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %land.end.295
  %201 = load double, double* %x_calc, align 8
  %202 = load double*, double** %x.addr, align 8
  store double %201, double* %202, align 8
  %203 = load double, double* %y_calc, align 8
  %204 = load double*, double** %y.addr, align 8
  store double %203, double* %204, align 8
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %land.end.295
  %205 = load i32, i32* %inside, align 4
  ret i32 %205
}

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare void @gimp_bilinear_pixels_8(i8*, double, double, i32, i32, i8**) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @atan(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

declare i32 @gimp_progress_init(i8*) #1

declare %struct._GimpRgnIterator* @gimp_rgn_iterator_new(%struct._GimpDrawable*, i32) #1

declare void @gimp_rgn_iterator_dest(%struct._GimpRgnIterator*, void (i32, i32, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @polarize_func(i32 %x, i32 %y, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %pixel1 = alloca [4 x i8], align 1
  %pixel2 = alloca [4 x i8], align 1
  %pixel3 = alloca [4 x i8], align 1
  %pixel4 = alloca [4 x i8], align 1
  %values = alloca [4 x i8*], align 16
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %b = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %y.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %call = call i32 @calc_undistorted_coords(double %conv, double %conv1, double* %cx, double* %cy)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GimpPixelFetcher*
  store %struct._GimpPixelFetcher* %3, %struct._GimpPixelFetcher** %pft, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 0
  store i8* %arraydecay, i8** %arrayidx, align 8
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 1
  store i8* %arraydecay2, i8** %arrayidx3, align 8
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 2
  store i8* %arraydecay4, i8** %arrayidx5, align 8
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel4, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i64 3
  store i8* %arraydecay6, i8** %arrayidx7, align 8
  %4 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %5 = load double, double* %cx, align 8
  %conv8 = fptosi double %5 to i32
  %6 = load double, double* %cy, align 8
  %conv9 = fptosi double %6 to i32
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel1, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %4, i32 %conv8, i32 %conv9, i8* %arraydecay10)
  %7 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %8 = load double, double* %cx, align 8
  %add = fadd double %8, 1.000000e+00
  %conv11 = fptosi double %add to i32
  %9 = load double, double* %cy, align 8
  %conv12 = fptosi double %9 to i32
  %arraydecay13 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel2, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %7, i32 %conv11, i32 %conv12, i8* %arraydecay13)
  %10 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %11 = load double, double* %cx, align 8
  %conv14 = fptosi double %11 to i32
  %12 = load double, double* %cy, align 8
  %add15 = fadd double %12, 1.000000e+00
  %conv16 = fptosi double %add15 to i32
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel3, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %10, i32 %conv14, i32 %conv16, i8* %arraydecay17)
  %13 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %14 = load double, double* %cx, align 8
  %add18 = fadd double %14, 1.000000e+00
  %conv19 = fptosi double %add18 to i32
  %15 = load double, double* %cy, align 8
  %add20 = fadd double %15, 1.000000e+00
  %conv21 = fptosi double %add20 to i32
  %arraydecay22 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel4, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %13, i32 %conv19, i32 %conv21, i8* %arraydecay22)
  %16 = load i8*, i8** %dest.addr, align 8
  %17 = load double, double* %cx, align 8
  %18 = load double, double* %cy, align 8
  %19 = load i32, i32* %bpp.addr, align 4
  %20 = load i32, i32* @img_has_alpha, align 4
  %arraydecay23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %values, i32 0, i32 0
  call void @gimp_bilinear_pixels_8(i8* %16, double %17, double %18, i32 %19, i32 %20, i8** %arraydecay23)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %bpp.addr, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %b, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* @back_color, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx25, align 1
  %25 = load i32, i32* %b, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i8*, i8** %dest.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %26, i64 %idxprom26
  store i8 %24, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %b, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @gimp_rgn_iterator_free(%struct._GimpRgnIterator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
