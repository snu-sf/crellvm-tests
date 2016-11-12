; ModuleID = './plug-ins/common/tile-small.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.data = type { i32 }
%struct.TileItInterface = type { %struct._GtkWidget*, [512 x i8], i32, i8* }
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
%struct.Reset_Call = type { %struct._GtkWidget*, %struct._GtkWidget* }
%struct.Exp_Call = type { i32, i32, i32, %struct._GtkObject*, %struct._GtkObject*, %struct._GtkWidget* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GBinding = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPixelFetcher = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"num-tiles\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Number of tiles to make\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"plug-in-small-tiles\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Tile image into smaller versions of the original\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"More here later\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Andy Thomas\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"_Small Tiles...\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@tileitdrawable = internal global %struct._GimpDrawable* null, align 8
@has_alpha = internal global i32 0, align 4
@sel_x1 = internal global i32 0, align 4
@sel_y1 = internal global i32 0, align 4
@sel_width = internal global i32 0, align 4
@sel_height = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"Region selected for filter is empty.\00", align 1
@sel_x2 = internal global i32 0, align 4
@sel_y2 = internal global i32 0, align 4
@preview_width = internal global i32 0, align 4
@preview_height = internal global i32 0, align 4
@itvals = internal global %struct.data { i32 2 }, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"Tiling\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"tile-small\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Small Tiles\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"gimp-tile-small\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@tint = internal global %struct.TileItInterface { %struct._GtkWidget* null, [512 x i8] c"4u\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i8* null }, align 8
@.str.25 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Flip\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"_Horizontal\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@do_horz = internal global i32 0, align 4
@res_call = internal global %struct.Reset_Call zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"_Vertical\00", align 1
@do_vert = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"A_ll tiles\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@exp_call = internal global %struct.Exp_Call { i32 0, i32 -1, i32 -1, %struct._GtkObject* null, %struct._GtkObject* null, %struct._GtkWidget* null }, align 8
@.str.35 = private unnamed_addr constant [17 x i8] c"Al_ternate tiles\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"_Explicit tile\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Ro_w:\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Col_umn:\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"O_pacity:\00", align 1
@opacity = internal global i32 100, align 4
@.str.44 = private unnamed_addr constant [19 x i8] c"Number of Segments\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"_n\C2\B2\00", align 1
@tileactions = internal global [6 x [6 x i32]] zeroinitializer, align 16
@img_bpp = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
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
  %pwidth = alloca i32, align 4
  %pheight = alloca i32, align 4
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
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
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
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** @tileitdrawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %ntile_cols = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 5
  %8 = load i32, i32* %ntile_cols, align 4
  %add = add i32 %8, 1
  %conv = zext i32 %add to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_has_alpha(i32 %10)
  store i32 %call7, i32* @has_alpha, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_mask_intersect(i32 %12, i32* @sel_x1, i32* @sel_y1, i32* @sel_width, i32* @sel_height)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call10)
  br label %return

if.end:                                           ; preds = %do.end
  %13 = load i32, i32* @sel_x1, align 4
  %14 = load i32, i32* @sel_width, align 4
  %add11 = add nsw i32 %13, %14
  store i32 %add11, i32* @sel_x2, align 4
  %15 = load i32, i32* @sel_y1, align 4
  %16 = load i32, i32* @sel_height, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* @sel_y2, align 4
  %17 = load i32, i32* @sel_width, align 4
  %18 = load i32, i32* @sel_height, align 4
  %cmp = icmp sgt i32 %17, %18
  br i1 %cmp, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  %19 = load i32, i32* @sel_width, align 4
  %cmp15 = icmp slt i32 %19, 128
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %20 = load i32, i32* @sel_width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ 128, %cond.false ]
  store i32 %cond, i32* %pwidth, align 4
  %21 = load i32, i32* @sel_height, align 4
  %22 = load i32, i32* %pwidth, align 4
  %mul = mul nsw i32 %21, %22
  %23 = load i32, i32* @sel_width, align 4
  %div = sdiv i32 %mul, %23
  store i32 %div, i32* %pheight, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %24 = load i32, i32* @sel_height, align 4
  %cmp17 = icmp slt i32 %24, 128
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %if.else
  %25 = load i32, i32* @sel_height, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %if.else
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i32 [ %25, %cond.true.19 ], [ 128, %cond.false.20 ]
  store i32 %cond22, i32* %pheight, align 4
  %26 = load i32, i32* @sel_width, align 4
  %27 = load i32, i32* %pheight, align 4
  %mul23 = mul nsw i32 %26, %27
  %28 = load i32, i32* @sel_height, align 4
  %div24 = sdiv i32 %mul23, %28
  store i32 %div24, i32* %pwidth, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.21, %cond.end
  %29 = load i32, i32* %pwidth, align 4
  %cmp26 = icmp sgt i32 %29, 2
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.end.25
  %30 = load i32, i32* %pwidth, align 4
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.end.25
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i32 [ %30, %cond.true.28 ], [ 2, %cond.false.29 ]
  store i32 %cond31, i32* @preview_width, align 4
  %31 = load i32, i32* %pheight, align 4
  %cmp32 = icmp sgt i32 %31, 2
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.end.30
  %32 = load i32, i32* %pheight, align 4
  br label %cond.end.36

cond.false.35:                                    ; preds = %cond.end.30
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.34
  %cond37 = phi i32 [ %32, %cond.true.34 ], [ 2, %cond.false.35 ]
  store i32 %cond37, i32* @preview_height, align 4
  %33 = load i32, i32* %run_mode, align 4
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.43
    i32 2, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %cond.end.36
  %call38 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.data* @itvals to i8*))
  %call39 = call i32 @tileit_dialog()
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %sw.bb
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  br label %return

if.end.42:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.43:                                         ; preds = %cond.end.36
  %35 = load i32, i32* %nparams.addr, align 4
  %cmp44 = icmp ne i32 %35, 4
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %sw.bb.43
  store i32 1, i32* %status, align 4
  br label %if.end.51

if.else.47:                                       ; preds = %sw.bb.43
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 3
  %data49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx48, i32 0, i32 1
  %d_int3250 = bitcast %union._GimpParamData* %data49 to i32*
  %37 = load i32, i32* %d_int3250, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.47, %if.then.46
  br label %sw.epilog

sw.bb.52:                                         ; preds = %cond.end.36
  %call53 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.data* @itvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.36
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.52, %if.end.51, %if.end.42
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 0
  %39 = load i32, i32* %drawable_id54, align 4
  %call55 = call i32 @gimp_drawable_is_rgb(i32 %39)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id57, align 4
  %call58 = call i32 @gimp_drawable_is_gray(i32 %41)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.73

if.then.60:                                       ; preds = %lor.lhs.false, %sw.epilog
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #4
  %call62 = call i32 @gimp_progress_init(i8* %call61)
  call void @do_tiles()
  %42 = load i32, i32* %run_mode, align 4
  %cmp63 = icmp ne i32 %42, 1
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.then.60
  %call66 = call i32 @gimp_displays_flush()
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.then.60
  %43 = load i32, i32* %run_mode, align 4
  %cmp68 = icmp eq i32 %43, 0
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  %call71 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.data* @itvals to i8*), i32 4)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  br label %if.end.74

if.else.73:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.end.72
  %44 = load i32, i32* %status, align 4
  store i32 %44, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %45)
  br label %return

return:                                           ; preds = %if.end.74, %if.then.41, %if.then
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

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

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

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @tileit_dialog() #0 {
entry:
  %dlg = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %table2 = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %scale = alloca %struct._GtkObject*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %orientation_group = alloca %struct._GSList*, align 8
  %run = alloca i32, align 4
  store %struct._GSList* null, %struct._GSList** %orientation_group, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 1)
  call void @cache_preview()
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #4
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dlg, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %2, i32 -5, i32 -6, i32 -1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
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
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
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
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %vbox, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call18)
  %23 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %23, %struct._GtkWidget* %24, i32 0, i32 0, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  %call20 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %frame, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_frame_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %28, i32 1)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call23)
  %31 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %31, %struct._GtkWidget* %32, i32 0, i32 0, i32 0)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  %call25 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call25, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %35 = load i32, i32* @preview_width, align 4
  %36 = load i32, i32* @preview_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %34, i32 %35, i32 %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call26)
  %39 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %39, i32 274)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  call void @gtk_container_add(%struct._GtkContainer* %42, %struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %46 = bitcast %struct._GtkWidget* %45 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @tileit_preview_expose to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 1)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %call31 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*)* @tileit_preview_events to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #4
  %call33 = call %struct._GtkWidget* @gimp_frame_new(i8* %call32)
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %frame, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_box_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call34)
  %51 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 1, i32 1, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %call36 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call36, %struct._GtkWidget** %vbox, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_container_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call37)
  %56 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkContainer*
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %56, %struct._GtkWidget* %57)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  %call39 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %hbox, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call40)
  %61 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %61, i32 1)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_box_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call42)
  %64 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0)) #4
  %call45 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call44)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %toggle, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call46)
  %69 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 1, i32 1, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %73 = bitcast %struct._GtkWidget* %72 to i8*
  %call48 = call i64 @g_signal_connect_data(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_hvtoggle_update to void ()*), i8* bitcast (i32* @do_horz to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %74, %struct._GtkWidget** getelementptr inbounds (%struct.Reset_Call, %struct.Reset_Call* @res_call, i32 0, i32 0), align 8
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)) #4
  %call50 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call49)
  store %struct._GtkWidget* %call50, %struct._GtkWidget** %toggle, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call51)
  %77 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %77, %struct._GtkWidget* %78, i32 1, i32 1, i32 0)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %81 = bitcast %struct._GtkWidget* %80 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_hvtoggle_update to void ()*), i8* bitcast (i32* @do_vert to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  store %struct._GtkWidget* %82, %struct._GtkWidget** getelementptr inbounds (%struct.Reset_Call, %struct.Reset_Call* @res_call, i32 0, i32 1), align 8
  %call54 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %button, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_box_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call55)
  %85 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 1, i32 1, i32 0)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_reset to void ()*), i8* bitcast (%struct.Reset_Call* @res_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call58 = call %struct._GtkWidget* @gtk_table_new(i32 4, i32 4, i32 0)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %table, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_table_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call59)
  %92 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %92, i32 6)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_table_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call61)
  %95 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %95, i32 6)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call63)
  %98 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %98, %struct._GtkWidget* %99, i32 0, i32 0, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %101 = load %struct._GSList*, %struct._GSList** %orientation_group, align 8
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)) #4
  %call66 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %101, i8* %call65)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %toggle, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_radio_button_get_type() #5
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call67)
  %104 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkRadioButton*
  %call69 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %104)
  store %struct._GSList* %call69, %struct._GSList** %orientation_group, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #5
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call70)
  %107 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %107, %struct._GtkWidget* %108, i32 0, i32 4, i32 0, i32 1, i32 5, i32 4, i32 0, i32 0)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 80)
  %112 = bitcast %struct._GTypeInstance* %call72 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* null)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %114 = bitcast %struct._GtkWidget* %113 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_radio_update to void ()*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %115 = load %struct._GSList*, %struct._GSList** %orientation_group, align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0)) #4
  %call75 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %115, i8* %call74)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %toggle, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_radio_button_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call76)
  %118 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkRadioButton*
  %call78 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %118)
  store %struct._GSList* %call78, %struct._GSList** %orientation_group, align 8
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_table_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call79)
  %121 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkTable*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %121, %struct._GtkWidget* %122, i32 0, i32 4, i32 1, i32 2, i32 5, i32 4, i32 0, i32 0)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %123)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 80)
  %126 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %128 = bitcast %struct._GtkWidget* %127 to i8*
  %call82 = call i64 @g_signal_connect_data(i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_radio_update to void ()*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %129 = load %struct._GSList*, %struct._GSList** %orientation_group, align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #4
  %call84 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %129, i8* %call83)
  store %struct._GtkWidget* %call84, %struct._GtkWidget** %toggle, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_radio_button_get_type() #5
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call85)
  %132 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkRadioButton*
  %call87 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %132)
  store %struct._GSList* %call87, %struct._GSList** %orientation_group, align 8
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_table_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call88)
  %135 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkTable*
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_table_attach(%struct._GtkTable* %135, %struct._GtkWidget* %136, i32 0, i32 1, i32 2, i32 4, i32 6, i32 4, i32 0, i32 0)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %137)
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #4
  %call91 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call90)
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %label, align 8
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call92 = call i64 @gtk_misc_get_type() #5
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call92)
  %140 = bitcast %struct._GTypeInstance* %call93 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %140, float 1.000000e+00, float 5.000000e-01)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_table_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call94)
  %143 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkTable*
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %143, %struct._GtkWidget* %144, i32 1, i32 2, i32 2, i32 3, i32 6, i32 4, i32 0, i32 0)
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %145)
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %147 = bitcast %struct._GtkWidget* %146 to i8*
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %149 = bitcast %struct._GtkWidget* %148 to i8*
  %call96 = call %struct._GBinding* @g_object_bind_property(i8* %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 2)
  %call97 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 2.000000e+00, double 1.000000e+00, double 6.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %spinbutton, align 8
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_label_get_type() #5
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call98)
  %152 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkLabel*
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %152, %struct._GtkWidget* %153)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_table_get_type() #5
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call100)
  %156 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkTable*
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %156, %struct._GtkWidget* %157, i32 2, i32 3, i32 2, i32 3, i32 6, i32 4, i32 0, i32 0)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %159 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %160 = bitcast %struct._GtkObject* %159 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update_f to void ()*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %161 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %161, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 3), align 8
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %163 = bitcast %struct._GtkWidget* %162 to i8*
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %165 = bitcast %struct._GtkWidget* %164 to i8*
  %call103 = call %struct._GBinding* @g_object_bind_property(i8* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 2)
  %call104 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)) #4
  %call105 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call104)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %label, align 8
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %167 = bitcast %struct._GtkWidget* %166 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_misc_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %167, i64 %call106)
  %168 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %168, float 1.000000e+00, float 5.000000e-01)
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %169)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_table_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call108)
  %172 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkTable*
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_table_attach(%struct._GtkTable* %172, %struct._GtkWidget* %173, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 0, i32 0)
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %175 = bitcast %struct._GtkWidget* %174 to i8*
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %177 = bitcast %struct._GtkWidget* %176 to i8*
  %call110 = call %struct._GBinding* @g_object_bind_property(i8* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 2)
  %call111 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double 2.000000e+00, double 1.000000e+00, double 6.000000e+00, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call111, %struct._GtkWidget** %spinbutton, align 8
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %179 = bitcast %struct._GtkWidget* %178 to %struct._GTypeInstance*
  %call112 = call i64 @gtk_label_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %179, i64 %call112)
  %180 = bitcast %struct._GTypeInstance* %call113 to %struct._GtkLabel*
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %180, %struct._GtkWidget* %181)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call114 = call i64 @gtk_table_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call114)
  %184 = bitcast %struct._GTypeInstance* %call115 to %struct._GtkTable*
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %184, %struct._GtkWidget* %185, i32 2, i32 3, i32 3, i32 4, i32 5, i32 4, i32 0, i32 0)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %186)
  %187 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %188 = bitcast %struct._GtkObject* %187 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update_f to void ()*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %189 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  store %struct._GtkObject* %189, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 4), align 8
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %191 = bitcast %struct._GtkWidget* %190 to i8*
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %193 = bitcast %struct._GtkWidget* %192 to i8*
  %call117 = call %struct._GBinding* @g_object_bind_property(i8* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 2)
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 80)
  %196 = bitcast %struct._GTypeInstance* %call118 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %198 = bitcast %struct._GtkWidget* %197 to i8*
  %call119 = call i64 @g_signal_connect_data(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_radio_update to void ()*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call120 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0))
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %button, align 8
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %200 = bitcast %struct._GtkWidget* %199 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_table_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %200, i64 %call121)
  %201 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkTable*
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_table_attach(%struct._GtkTable* %201, %struct._GtkWidget* %202, i32 3, i32 4, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0)
  %203 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %203)
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %205 = bitcast %struct._GtkWidget* %204 to i8*
  %call123 = call i64 @g_signal_connect_data(i8* %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update to void ()*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %206, %struct._GtkWidget** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 5), align 8
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %208 = bitcast %struct._GtkWidget* %207 to i8*
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %210 = bitcast %struct._GtkWidget* %209 to i8*
  %call124 = call %struct._GBinding* @g_object_bind_property(i8* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 2)
  %call125 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call125, %struct._GtkWidget** %table2, align 8
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %212 = bitcast %struct._GtkWidget* %211 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_table_get_type() #5
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %212, i64 %call126)
  %213 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %213, i32 6)
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_box_get_type() #5
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %215, i64 %call128)
  %216 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkBox*
  %217 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %216, %struct._GtkWidget* %217, i32 0, i32 0, i32 0)
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %218)
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %220 = bitcast %struct._GtkWidget* %219 to %struct._GTypeInstance*
  %call130 = call i64 @gtk_table_get_type() #5
  %call131 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %220, i64 %call130)
  %221 = bitcast %struct._GTypeInstance* %call131 to %struct._GtkTable*
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0)) #4
  %222 = load i32, i32* @opacity, align 4
  %conv = sitofp i32 %222 to double
  %call133 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %221, i32 0, i32 0, i8* %call132, i32 80, i32 -1, double %conv, double 0.000000e+00, double 1.000000e+02, double 1.000000e+00, double 1.000000e+01, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call133, %struct._GtkObject** %scale, align 8
  %223 = load %struct._GtkObject*, %struct._GtkObject** %scale, align 8
  %224 = bitcast %struct._GtkObject* %223 to i8*
  %call134 = call i64 @g_signal_connect_data(i8* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @tileit_scale_update to void ()*), i8* bitcast (i32* @opacity to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %call135 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0)) #4
  %call136 = call %struct._GtkWidget* @gimp_frame_new(i8* %call135)
  store %struct._GtkWidget* %call136, %struct._GtkWidget** %frame, align 8
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %226 = bitcast %struct._GtkWidget* %225 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_box_get_type() #5
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %226, i64 %call137)
  %227 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkBox*
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %227, %struct._GtkWidget* %228, i32 0, i32 0, i32 0)
  %229 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %229)
  %call139 = call %struct._GtkWidget* @gtk_table_new(i32 1, i32 3, i32 0)
  store %struct._GtkWidget* %call139, %struct._GtkWidget** %table, align 8
  %230 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %231 = bitcast %struct._GtkWidget* %230 to %struct._GTypeInstance*
  %call140 = call i64 @gtk_table_get_type() #5
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %231, i64 %call140)
  %232 = bitcast %struct._GTypeInstance* %call141 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %232, i32 6)
  %233 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %234 = bitcast %struct._GtkWidget* %233 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_container_get_type() #5
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %234, i64 %call142)
  %235 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkContainer*
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_container_add(%struct._GtkContainer* %235, %struct._GtkWidget* %236)
  %237 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %237)
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %table2, align 8
  %239 = load i32, i32* @has_alpha, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %238, i32 %239)
  %240 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %241 = bitcast %struct._GtkWidget* %240 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_table_get_type() #5
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %241, i64 %call144)
  %242 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkTable*
  %243 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv146 = sitofp i32 %243 to double
  %call147 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %242, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 80, i32 -1, double %conv146, double 2.000000e+00, double 6.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 0, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  store %struct._GtkObject* %call147, %struct._GtkObject** %scale, align 8
  %244 = load %struct._GtkObject*, %struct._GtkObject** %scale, align 8
  %245 = bitcast %struct._GtkObject* %244 to i8*
  %call148 = call i64 @g_signal_connect_data(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @tileit_scale_update to void ()*), i8* bitcast (%struct.data* @itvals to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %246)
  call void @dialog_update_preview()
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %248 = bitcast %struct._GtkWidget* %247 to %struct._GTypeInstance*
  %call149 = call i64 @gimp_dialog_get_type() #5
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %248, i64 %call149)
  %249 = bitcast %struct._GTypeInstance* %call150 to %struct._GimpDialog*
  %call151 = call i32 @gimp_dialog_run(%struct._GimpDialog* %249)
  %cmp = icmp eq i32 %call151, -5
  %conv152 = zext i1 %cmp to i32
  store i32 %conv152, i32* %run, align 4
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %250)
  %251 = load i32, i32* %run, align 4
  ret i32 %251
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @do_tiles() #0 {
entry:
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %dest_row = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %bpp = alloca i32, align 4
  %pixel = alloca [4 x i8], align 1
  %nc = alloca i32, align 4
  %nr = alloca i32, align 4
  %i = alloca i32, align 4
  %pft = alloca %struct._GimpPixelFetcher*, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %call = call %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable* %0, i32 0)
  store %struct._GimpPixelFetcher* %call, %struct._GimpPixelFetcher** %pft, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %2 = load i32, i32* @sel_x1, align 4
  %3 = load i32, i32* @sel_y1, align 4
  %4 = load i32, i32* @sel_width, align 4
  %5 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 1, i32 1)
  store i32 0, i32* %progress, align 4
  %6 = load i32, i32* @sel_width, align 4
  %7 = load i32, i32* @sel_height, align 4
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %max_progress, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_bpp(i32 %9)
  store i32 %call1, i32* @img_bpp, align 4
  %10 = load i32, i32* @has_alpha, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, i32* @img_bpp, align 4
  %sub = sub nsw i32 %11, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* @img_bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %bpp, align 4
  %call2 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call2, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %cond.end
  %13 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  store i8* %14, i8** %dest_row, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %15 = load i32, i32* %y, align 4
  store i32 %15, i32* %row, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.29, %for.body
  %16 = load i32, i32* %row, align 4
  %y4 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %17 = load i32, i32* %y4, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %18 = load i32, i32* %h, align 4
  %add = add nsw i32 %17, %18
  %cmp5 = icmp slt i32 %16, %add
  br i1 %cmp5, label %for.body.6, label %for.end.31

for.body.6:                                       ; preds = %for.cond.3
  %19 = load i8*, i8** %dest_row, align 8
  store i8* %19, i8** %dest, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %20 = load i32, i32* %x, align 4
  store i32 %20, i32* %col, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.26, %for.body.6
  %21 = load i32, i32* %col, align 4
  %x8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %22 = load i32, i32* %x8, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %23 = load i32, i32* %w, align 4
  %add9 = add nsw i32 %22, %23
  %cmp10 = icmp slt i32 %21, %add9
  br i1 %cmp10, label %for.body.11, label %for.end.28

for.body.11:                                      ; preds = %for.cond.7
  %24 = load i32, i32* @sel_width, align 4
  %25 = load i32, i32* @sel_height, align 4
  %26 = load i32, i32* %col, align 4
  %27 = load i32, i32* @sel_x1, align 4
  %sub12 = sub nsw i32 %26, %27
  %28 = load i32, i32* %row, align 4
  %29 = load i32, i32* @sel_y1, align 4
  %sub13 = sub nsw i32 %28, %29
  %call14 = call i32 @tiles_xy(i32 %24, i32 %25, i32 %sub12, i32 %sub13, i32* %nc, i32* %nr)
  %30 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  %31 = load i32, i32* %nc, align 4
  %32 = load i32, i32* @sel_x1, align 4
  %add15 = add nsw i32 %31, %32
  %33 = load i32, i32* %nr, align 4
  %34 = load i32, i32* @sel_y1, align 4
  %add16 = add nsw i32 %33, %34
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  call void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher* %30, i32 %add15, i32 %add16, i8* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.11
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %bpp, align 4
  %cmp18 = icmp slt i32 %35, %36
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom
  %38 = load i8, i8* %arrayidx, align 1
  %39 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %38, i8* %39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %41 = load i32, i32* @has_alpha, align 4
  %tobool20 = icmp ne i32 %41, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %42 = load i32, i32* %bpp, align 4
  %idxprom21 = sext i32 %42 to i64
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i64 %idxprom21
  %43 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %43 to i32
  %44 = load i32, i32* @opacity, align 4
  %mul23 = mul nsw i32 %conv, %44
  %div = sdiv i32 %mul23, 100
  %conv24 = trunc i32 %div to i8
  %45 = load i8*, i8** %dest, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr25, i8** %dest, align 8
  store i8 %conv24, i8* %45, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end
  %46 = load i32, i32* %col, align 4
  %inc27 = add nsw i32 %46, 1
  store i32 %inc27, i32* %col, align 4
  br label %for.cond.7

for.end.28:                                       ; preds = %for.cond.7
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %47 = load i32, i32* %rowstride, align 4
  %48 = load i8*, i8** %dest_row, align 8
  %idx.ext = sext i32 %47 to i64
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  store i8* %add.ptr, i8** %dest_row, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %49 = load i32, i32* %row, align 4
  %inc30 = add nsw i32 %49, 1
  store i32 %inc30, i32* %row, align 4
  br label %for.cond.3

for.end.31:                                       ; preds = %for.cond.3
  %w32 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %50 = load i32, i32* %w32, align 4
  %h33 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %51 = load i32, i32* %h33, align 4
  %mul34 = mul nsw i32 %50, %51
  %52 = load i32, i32* %progress, align 4
  %add35 = add nsw i32 %52, %mul34
  store i32 %add35, i32* %progress, align 4
  %53 = load i32, i32* %progress, align 4
  %conv36 = sitofp i32 %53 to double
  %54 = load i32, i32* %max_progress, align 4
  %conv37 = sitofp i32 %54 to double
  %div38 = fdiv double %conv36, %conv37
  %call39 = call i32 @gimp_progress_update(double %div38)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.31
  %55 = load i8*, i8** %pr, align 8
  %call41 = call i8* @gimp_pixel_rgns_process(i8* %55)
  store i8* %call41, i8** %pr, align 8
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %call43 = call i32 @gimp_progress_update(double 1.000000e+00)
  %56 = load %struct._GimpPixelFetcher*, %struct._GimpPixelFetcher** %pft, align 8
  call void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher* %56)
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %57)
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %drawable_id44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 0
  %59 = load i32, i32* %drawable_id44, align 4
  %call45 = call i32 @gimp_drawable_merge_shadow(i32 %59, i32 1)
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %drawable_id46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %60, i32 0, i32 0
  %61 = load i32, i32* %drawable_id46, align 4
  %62 = load i32, i32* @sel_x1, align 4
  %63 = load i32, i32* @sel_y1, align 4
  %64 = load i32, i32* @sel_width, align 4
  %65 = load i32, i32* @sel_height, align 4
  %call47 = call i32 @gimp_drawable_update(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @gimp_ui_init(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cache_preview() #0 {
entry:
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %src_rows = alloca i8*, align 8
  %p = alloca i8*, align 8
  %isgrey = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %isgrey, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %1 = load i32, i32* @sel_x1, align 4
  %2 = load i32, i32* @sel_y1, align 4
  %3 = load i32, i32* @sel_width, align 4
  %4 = load i32, i32* @sel_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 0, i32 0)
  %5 = load i32, i32* @sel_width, align 4
  %mul = mul nsw i32 %5, 4
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %src_rows, align 8
  %6 = load i32, i32* @preview_width, align 4
  %7 = load i32, i32* @preview_height, align 4
  %mul1 = mul nsw i32 %6, %7
  %mul2 = mul nsw i32 %mul1, 4
  %conv3 = sext i32 %mul2 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 1)
  store i8* %call4, i8** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 3), align 8
  store i8* %call4, i8** %p, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id, align 4
  %call5 = call i32 @gimp_drawable_bpp(i32 %9)
  store i32 %call5, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %cmp = icmp slt i32 %10, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* @has_alpha, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %add = add nsw i32 3, %cond
  store i32 %add, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** @tileitdrawable, align 8
  %drawable_id7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id7, align 4
  %call8 = call i32 @gimp_drawable_is_gray(i32 %13)
  store i32 %call8, i32* %isgrey, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* @preview_height, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %src_rows, align 8
  %17 = load i32, i32* @sel_x1, align 4
  %18 = load i32, i32* @sel_y1, align 4
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* @sel_height, align 4
  %mul11 = mul nsw i32 %19, %20
  %21 = load i32, i32* @preview_height, align 4
  %div = sdiv i32 %mul11, %21
  %add12 = add nsw i32 %18, %div
  %22 = load i32, i32* @sel_width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %src_rgn, i8* %16, i32 %17, i32 %add12, i32 %22)
  store i32 0, i32* %x, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.47, %for.body
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* @preview_width, align 4
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body.16, label %for.end.49

for.body.16:                                      ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body.16
  %25 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %25, 3
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* @sel_width, align 4
  %mul21 = mul nsw i32 %26, %27
  %28 = load i32, i32* @preview_width, align 4
  %div22 = sdiv i32 %mul21, %28
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %29 = load i32, i32* %bpp, align 4
  %mul23 = mul nsw i32 %div22, %29
  %30 = load i32, i32* %isgrey, align 4
  %tobool24 = icmp ne i32 %30, 0
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.20
  br label %cond.end

cond.false:                                       ; preds = %for.body.20
  %31 = load i32, i32* %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond25 = phi i32 [ 0, %cond.true ], [ %31, %cond.false ]
  %add26 = add nsw i32 %mul23, %cond25
  %idxprom = sext i32 %add26 to i64
  %32 = load i8*, i8** %src_rows, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 %idxprom
  %33 = load i8, i8* %arrayidx, align 1
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul27 = mul nsw i32 %34, %35
  %36 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %mul27, %36
  %idxprom29 = sext i32 %add28 to i64
  %37 = load i8*, i8** %p, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %37, i64 %idxprom29
  store i8 %33, i8* %arrayidx30, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %39 = load i32, i32* @has_alpha, align 4
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.then.32, label %if.end.46

if.then.32:                                       ; preds = %for.end
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* @sel_width, align 4
  %mul33 = mul nsw i32 %40, %41
  %42 = load i32, i32* @preview_width, align 4
  %div34 = sdiv i32 %mul33, %42
  %bpp35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %43 = load i32, i32* %bpp35, align 4
  %mul36 = mul nsw i32 %div34, %43
  %44 = load i32, i32* %isgrey, align 4
  %tobool37 = icmp ne i32 %44, 0
  %cond38 = select i1 %tobool37, i32 1, i32 3
  %add39 = add nsw i32 %mul36, %cond38
  %idxprom40 = sext i32 %add39 to i64
  %45 = load i8*, i8** %src_rows, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %45, i64 %idxprom40
  %46 = load i8, i8* %arrayidx41, align 1
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul42 = mul nsw i32 %47, %48
  %add43 = add nsw i32 %mul42, 3
  %idxprom44 = sext i32 %add43 to i64
  %49 = load i8*, i8** %p, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %49, i64 %idxprom44
  store i8 %46, i8* %arrayidx45, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.32, %for.end
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %50 = load i32, i32* %x, align 4
  %inc48 = add nsw i32 %50, 1
  store i32 %inc48, i32* %x, align 4
  br label %for.cond.13

for.end.49:                                       ; preds = %for.cond.13
  %51 = load i32, i32* @preview_width, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul50 = mul nsw i32 %51, %52
  %53 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %mul50 to i64
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.49
  %54 = load i32, i32* %y, align 4
  %inc52 = add nsw i32 %54, 1
  store i32 %inc52, i32* %y, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %55 = load i8*, i8** %src_rows, align 8
  call void @g_free(i8* %55)
  ret void
}

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

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #3

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @tileit_preview_expose(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %cr = alloca %struct._cairo*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %1)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %2 = load i32, i32* @preview_width, align 4
  %conv = sitofp i32 %2 to double
  %3 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv2
  store double %div, double* %width, align 8
  %4 = load i32, i32* @preview_height, align 4
  %conv3 = sitofp i32 %4 to double
  %5 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv4 = sitofp i32 %5 to double
  %div5 = fdiv double %conv3, %conv4
  store double %div5, double* %height, align 8
  %6 = load double, double* %width, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 1), align 4
  %sub = sub nsw i32 %7, 1
  %conv6 = sitofp i32 %sub to double
  %mul = fmul double %6, %conv6
  store double %mul, double* %x, align 8
  %8 = load double, double* %height, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 2), align 4
  %sub7 = sub nsw i32 %9, 1
  %conv8 = sitofp i32 %sub7 to double
  %mul9 = fmul double %8, %conv8
  store double %mul9, double* %y, align 8
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load double, double* %x, align 8
  %add = fadd double %11, 1.500000e+00
  %12 = load double, double* %y, align 8
  %add10 = fadd double %12, 1.500000e+00
  %13 = load double, double* %width, align 8
  %sub11 = fsub double %13, 2.000000e+00
  %14 = load double, double* %height, align 8
  %sub12 = fsub double %14, 2.000000e+00
  call void @cairo_rectangle(%struct._cairo* %10, double %add, double %add10, double %sub11, double %sub12)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %15, double 3.000000e+00)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %16, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 6.000000e-01)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %17)
  %18 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %18, double 1.000000e+00)
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgba(%struct._cairo* %19, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 8.000000e-01)
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tileit_preview_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %bevent = alloca %struct._GdkEventButton*, align 8
  %mevent = alloca %struct._GdkEventMotion*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %twidth = alloca i32, align 4
  %theight = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load i32, i32* @preview_width, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %div = sdiv i32 %0, %1
  store i32 %div, i32* %twidth, align 4
  %2 = load i32, i32* @preview_height, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %div1 = sdiv i32 %2, %3
  store i32 %div1, i32* %theight, align 4
  %4 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %4 to i32*
  %5 = load i32, i32* %type, align 4
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.2
    i32 3, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %7 = bitcast %union._GdkEvent* %6 to %struct._GdkEventButton*
  store %struct._GdkEventButton* %7, %struct._GdkEventButton** %bevent, align 8
  %8 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %8, i32 0, i32 4
  %9 = load double, double* %x, align 8
  %10 = load i32, i32* %twidth, align 4
  %conv = sitofp i32 %10 to double
  %div3 = fdiv double %9, %conv
  %add = fadd double %div3, 1.000000e+00
  %conv4 = fptosi double %add to i32
  store i32 %conv4, i32* %nx, align 4
  %11 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %11, i32 0, i32 5
  %12 = load double, double* %y, align 8
  %13 = load i32, i32* %theight, align 4
  %conv5 = sitofp i32 %13 to double
  %div6 = fdiv double %12, %conv5
  %add7 = fadd double %div6, 1.000000e+00
  %conv8 = fptosi double %add7 to i32
  store i32 %conv8, i32* %ny, align 4
  %14 = load i32, i32* %nx, align 4
  %15 = load i32, i32* %ny, align 4
  call void @exp_need_update(i32 %14, i32 %15)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %16 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %17 = bitcast %union._GdkEvent* %16 to %struct._GdkEventMotion*
  store %struct._GdkEventMotion* %17, %struct._GdkEventMotion** %mevent, align 8
  %18 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %state = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %18, i32 0, i32 7
  %19 = load i32, i32* %state, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.9
  %20 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x10 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %20, i32 0, i32 4
  %21 = load double, double* %x10, align 8
  %cmp = fcmp olt double %21, 0.000000e+00
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y12 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %22, i32 0, i32 5
  %23 = load double, double* %y12, align 8
  %cmp13 = fcmp olt double %23, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  br label %sw.epilog

if.end.16:                                        ; preds = %lor.lhs.false
  %24 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %x17 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %24, i32 0, i32 4
  %25 = load double, double* %x17, align 8
  %26 = load i32, i32* %twidth, align 4
  %conv18 = sitofp i32 %26 to double
  %div19 = fdiv double %25, %conv18
  %add20 = fadd double %div19, 1.000000e+00
  %conv21 = fptosi double %add20 to i32
  store i32 %conv21, i32* %nx, align 4
  %27 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %mevent, align 8
  %y22 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %27, i32 0, i32 5
  %28 = load double, double* %y22, align 8
  %29 = load i32, i32* %theight, align 4
  %conv23 = sitofp i32 %29 to double
  %div24 = fdiv double %28, %conv23
  %add25 = fadd double %div24, 1.000000e+00
  %conv26 = fptosi double %add25 to i32
  store i32 %conv26, i32* %ny, align 4
  %30 = load i32, i32* %nx, align 4
  %31 = load i32, i32* %ny, align 4
  call void @exp_need_update(i32 %30, i32 %31)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.16, %if.then.15, %if.then, %sw.bb.2, %sw.bb
  ret i32 0
}

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tileit_hvtoggle_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_toggle_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 0), align 4
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x [6 x i32]]* @tileactions to i8*), i8 0, i64 144, i32 16, i1 false)
  call void @all_update()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x [6 x i32]]* @tileactions to i8*), i8 0, i64 144, i32 16, i1 false)
  call void @alt_update()
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  call void @dialog_update_preview()
  ret void
}

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tileit_reset(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %r = alloca %struct.Reset_Call*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.Reset_Call*
  store %struct.Reset_Call* %1, %struct.Reset_Call** %r, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x [6 x i32]]* @tileactions to i8*), i8 0, i64 144, i32 16, i1 false)
  %2 = load %struct.Reset_Call*, %struct.Reset_Call** %r, align 8
  %htoggle = getelementptr inbounds %struct.Reset_Call, %struct.Reset_Call* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %htoggle, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %4, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_hvtoggle_update to i8*), i8* bitcast (i32* @do_horz to i8*))
  %5 = load %struct.Reset_Call*, %struct.Reset_Call** %r, align 8
  %vtoggle = getelementptr inbounds %struct.Reset_Call, %struct.Reset_Call* %5, i32 0, i32 1
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %vtoggle, align 8
  %7 = bitcast %struct._GtkWidget* %6 to i8*
  %call1 = call i32 @g_signal_handlers_block_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_hvtoggle_update to i8*), i8* bitcast (i32* @do_vert to i8*))
  %8 = load %struct.Reset_Call*, %struct.Reset_Call** %r, align 8
  %htoggle2 = getelementptr inbounds %struct.Reset_Call, %struct.Reset_Call* %8, i32 0, i32 0
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %htoggle2, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %11, i32 0)
  %12 = load %struct.Reset_Call*, %struct.Reset_Call** %r, align 8
  %vtoggle5 = getelementptr inbounds %struct.Reset_Call, %struct.Reset_Call* %12, i32 0, i32 1
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vtoggle5, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_toggle_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %15, i32 0)
  %16 = load %struct.Reset_Call*, %struct.Reset_Call** %r, align 8
  %htoggle8 = getelementptr inbounds %struct.Reset_Call, %struct.Reset_Call* %16, i32 0, i32 0
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %htoggle8, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call9 = call i32 @g_signal_handlers_unblock_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_hvtoggle_update to i8*), i8* bitcast (i32* @do_horz to i8*))
  %19 = load %struct.Reset_Call*, %struct.Reset_Call** %r, align 8
  %vtoggle10 = getelementptr inbounds %struct.Reset_Call, %struct.Reset_Call* %19, i32 0, i32 1
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vtoggle10, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %call11 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_hvtoggle_update to i8*), i8* bitcast (i32* @do_vert to i8*))
  store i32 0, i32* @do_vert, align 4
  store i32 0, i32* @do_horz, align 4
  call void @dialog_update_preview()
  ret void
}

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tileit_radio_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_radio_button_update(%struct._GtkWidget* %0, i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 0), align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x [6 x i32]]* @tileactions to i8*), i8 0, i64 144, i32 16, i1 false)
  call void @all_update()
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x [6 x i32]]* @tileactions to i8*), i8 0, i64 144, i32 16, i1 false)
  call void @alt_update()
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  call void @explicit_update(i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.4, %sw.bb.3, %sw.bb
  call void @dialog_update_preview()
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @tileit_exp_update_f(%struct._GtkWidget* %widget, i8* %applied) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %applied.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %applied, i8** %applied.addr, align 8
  call void @explicit_update(i32 0)
  call void @dialog_update_preview()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tileit_exp_update(%struct._GtkWidget* %widget, i8* %applied) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %applied.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %applied, i8** %applied.addr, align 8
  call void @explicit_update(i32 1)
  call void @dialog_update_preview()
  ret void
}

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tileit_scale_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  call void @gimp_int_adjustment_update(%struct._GtkAdjustment* %0, i8* %1)
  call void @dialog_update_preview()
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @dialog_update_preview() #0 {
entry:
  %y = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %0 = load i32, i32* @preview_width, align 4
  %1 = load i32, i32* @preview_height, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul1 = mul nsw i32 %mul, %2
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %buffer, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* @preview_height, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 3), align 8
  %6 = load i32, i32* @preview_width, align 4
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* @preview_height, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  call void @do_tiles_preview(i8* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 1, i32 0), i8* %5, i32 %6, i32 %7, i32 %8, i32 %9)
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* @preview_width, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul3 = mul nsw i32 %12, %13
  %mul4 = mul nsw i32 %11, %mul3
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %14 = load i32, i32* @preview_width, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul5 = mul nsw i32 %14, %15
  %conv6 = sext i32 %mul5 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 1, i32 0), i64 %conv6, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %y, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_preview_area_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call7)
  %19 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpPreviewArea*
  %20 = load i32, i32* @preview_width, align 4
  %21 = load i32, i32* @preview_height, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %cmp9 = icmp sgt i32 %22, 3
  %cond = select i1 %cmp9, i32 1, i32 0
  %23 = load i8*, i8** %buffer, align 8
  %24 = load i32, i32* @preview_width, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul11 = mul nsw i32 %24, %25
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %19, i32 0, i32 0, i32 %20, i32 %21, i32 %cond, i8* %23, i32 %mul11)
  %26 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %27)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_stroke_preserve(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @exp_need_update(i32 %nx, i32 %ny) #0 {
entry:
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  %0 = load i32, i32* %nx.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %nx.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %cmp1 = icmp sgt i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %ny.addr, align 4
  %cmp3 = icmp sle i32 %3, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %4 = load i32, i32* %ny.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %cmp5 = icmp sgt i32 %4, %5
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %if.end.18

if.end:                                           ; preds = %lor.lhs.false.4
  %6 = load i32, i32* %nx.addr, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 1), align 4
  %cmp6 = icmp ne i32 %6, %7
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %8 = load i32, i32* %ny.addr, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 2), align 4
  %cmp8 = icmp ne i32 %8, %9
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %lor.lhs.false.7, %if.end
  %10 = load i32, i32* %nx.addr, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 1), align 4
  %11 = load i32, i32* %ny.addr, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 2), align 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 0), align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %12)
  %13 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 4), align 8
  %14 = bitcast %struct._GtkObject* %13 to i8*
  %call = call i32 @g_signal_handlers_block_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update_f to i8*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*))
  %15 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 3), align 8
  %16 = bitcast %struct._GtkObject* %15 to i8*
  %call10 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update_f to i8*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*))
  %17 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 4), align 8
  %18 = bitcast %struct._GtkObject* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_adjustment_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkAdjustment*
  %20 = load i32, i32* %nx.addr, align 4
  %conv = sitofp i32 %20 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %19, double %conv)
  %21 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 3), align 8
  %22 = bitcast %struct._GtkObject* %21 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_adjustment_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call13)
  %23 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkAdjustment*
  %24 = load i32, i32* %ny.addr, align 4
  %conv15 = sitofp i32 %24 to double
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %23, double %conv15)
  %25 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 4), align 8
  %26 = bitcast %struct._GtkObject* %25 to i8*
  %call16 = call i32 @g_signal_handlers_unblock_matched(i8* %26, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update_f to i8*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*))
  %27 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 3), align 8
  %28 = bitcast %struct._GtkObject* %27 to i8*
  %call17 = call i32 @g_signal_handlers_unblock_matched(i8* %28, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, i8*)* @tileit_exp_update_f to i8*), i8* bitcast (%struct.Exp_Call* @exp_call to i8*))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.then.9, %lor.lhs.false.7
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @all_update() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* @do_horz, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %3 = load i32, i32* @do_vert, align 4
  %tobool4 = icmp ne i32 %3, 0
  %cond5 = select i1 %tobool4, i32 2, i32 0
  %or = or i32 %cond, %cond5
  %4 = load i32, i32* %y, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tileactions, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx7, align 4
  %or8 = or i32 %6, %or
  store i32 %or8, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* %y, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %8 = load i32, i32* %x, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %x, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alt_update() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %add = add nsw i32 %2, %3
  %rem = srem i32 %add, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.3
  %4 = load i32, i32* @do_horz, align 4
  %tobool4 = icmp ne i32 %4, 0
  %cond = select i1 %tobool4, i32 1, i32 0
  %5 = load i32, i32* @do_vert, align 4
  %tobool5 = icmp ne i32 %5, 0
  %cond6 = select i1 %tobool5, i32 2, i32 0
  %or = or i32 %cond, %cond6
  %6 = load i32, i32* %y, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tileactions, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx8, align 4
  %or9 = or i32 %8, %or
  store i32 %or9, i32* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %y, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %10 = load i32, i32* %x, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %x, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_radio_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind uwtable
define internal void @explicit_update(i32 %settile) #0 {
entry:
  %settile.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %settile, i32* %settile.addr, align 4
  %0 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 3), align 8
  %1 = bitcast %struct._GtkObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_adjustment_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkAdjustment*
  %call2 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %add = fadd double %call2, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %y, align 4
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %y, align 4
  %cmp4 = icmp sle i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  store i32 %6, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct._GtkObject*, %struct._GtkObject** getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 4), align 8
  %8 = bitcast %struct._GtkObject* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_adjustment_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkAdjustment*
  %call8 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %9)
  %add9 = fadd double %call8, 5.000000e-01
  %conv10 = fptosi double %add9 to i32
  store i32 %conv10, i32* %x, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %cmp11 = icmp sgt i32 %10, %11
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end
  %12 = load i32, i32* %x, align 4
  %cmp14 = icmp sle i32 %12, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.end
  %13 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  store i32 %13, i32* %x, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %lor.lhs.false.13
  %14 = load i32, i32* %settile.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end.17
  %15 = load i32, i32* @do_horz, align 4
  %tobool19 = icmp ne i32 %15, 0
  %cond = select i1 %tobool19, i32 1, i32 0
  %16 = load i32, i32* @do_vert, align 4
  %tobool20 = icmp ne i32 %16, 0
  %cond21 = select i1 %tobool20, i32 2, i32 0
  %or = or i32 %cond, %cond21
  %17 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub to i64
  %18 = load i32, i32* %x, align 4
  %sub22 = sub nsw i32 %18, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tileactions, i32 0, i64 %idxprom23
  %arrayidx24 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %or, i32* %arrayidx24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %if.end.17
  %19 = load i32, i32* %x, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 1), align 4
  %20 = load i32, i32* %y, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.Exp_Call, %struct.Exp_Call* @exp_call, i32 0, i32 2), align 4
  ret void
}

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_int_adjustment_update(%struct._GtkAdjustment*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @do_tiles_preview(i8* %dest_row, i8* %src_rows, i32 %width, i32 %dh, i32 %height, i32 %bpp) #0 {
entry:
  %dest_row.addr = alloca i8*, align 8
  %src_rows.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %dh.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %rnum = alloca i32, align 4
  %cnum = alloca i32, align 4
  %actiontype = alloca i32, align 4
  %rnd = alloca double, align 8
  %pyr = alloca double, align 8
  %pxr = alloca double, align 8
  store i8* %dest_row, i8** %dest_row.addr, align 8
  store i8* %src_rows, i8** %src_rows.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %dh, i32* %dh.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  %sub = fsub double 1.000000e+00, %div
  %add = fadd double %sub, 1.000000e-02
  store double %add, double* %rnd, align 8
  %1 = load i32, i32* %dh.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %height.addr, align 4
  %div1 = sdiv i32 %mul, %3
  store i32 %div1, i32* %rnum, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %dh.addr, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul3 = mul nsw i32 %6, %7
  %8 = load i32, i32* %height.addr, align 4
  %rem = srem i32 %mul3, %8
  store i32 %rem, i32* %py, align 4
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul4 = mul nsw i32 %9, %10
  %11 = load i32, i32* %width.addr, align 4
  %rem5 = srem i32 %mul4, %11
  store i32 %rem5, i32* %px, align 4
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul6 = mul nsw i32 %12, %13
  %14 = load i32, i32* %width.addr, align 4
  %div7 = sdiv i32 %mul6, %14
  store i32 %div7, i32* %cnum, align 4
  %15 = load i32, i32* %rnum, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %cnum, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tileactions, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx9, align 4
  store i32 %17, i32* %actiontype, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %actiontype, align 4
  %and = and i32 %18, 2
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %19 = load i32, i32* %height.addr, align 4
  %20 = load i32, i32* %dh.addr, align 4
  %sub12 = sub nsw i32 %19, %20
  %sub13 = sub nsw i32 %sub12, 1
  %conv14 = sitofp i32 %sub13 to double
  %21 = load double, double* %rnd, align 8
  %add15 = fadd double %conv14, %21
  store double %add15, double* %pyr, align 8
  %22 = load double, double* %pyr, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv16 = sitofp i32 %23 to double
  %mul17 = fmul double %22, %conv16
  %conv18 = fptosi double %mul17 to i32
  %24 = load i32, i32* %height.addr, align 4
  %rem19 = srem i32 %conv18, %24
  store i32 %rem19, i32* %py, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %25 = load i32, i32* %actiontype, align 4
  %and20 = and i32 %25, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.31

if.then.22:                                       ; preds = %if.end
  %26 = load i32, i32* %width.addr, align 4
  %27 = load i32, i32* %x, align 4
  %sub23 = sub nsw i32 %26, %27
  %sub24 = sub nsw i32 %sub23, 1
  %conv25 = sitofp i32 %sub24 to double
  %28 = load double, double* %rnd, align 8
  %add26 = fadd double %conv25, %28
  store double %add26, double* %pxr, align 8
  %29 = load double, double* %pxr, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv27 = sitofp i32 %30 to double
  %mul28 = fmul double %29, %conv27
  %conv29 = fptosi double %mul28 to i32
  %31 = load i32, i32* %width.addr, align 4
  %rem30 = srem i32 %conv29, %31
  store i32 %rem30, i32* %px, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.22, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.32
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %bpp.addr, align 4
  %cmp34 = icmp slt i32 %32, %33
  br i1 %cmp34, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %34 = load i32, i32* %px, align 4
  %35 = load i32, i32* %py, align 4
  %36 = load i32, i32* %width.addr, align 4
  %mul37 = mul nsw i32 %35, %36
  %add38 = add nsw i32 %34, %mul37
  %37 = load i32, i32* %bpp.addr, align 4
  %mul39 = mul nsw i32 %add38, %37
  %38 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %mul39, %38
  %idxprom41 = sext i32 %add40 to i64
  %39 = load i8*, i8** %src_rows.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 %idxprom41
  %40 = load i8, i8* %arrayidx42, align 1
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul43 = mul nsw i32 %41, %42
  %43 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %mul43, %43
  %idxprom45 = sext i32 %add44 to i64
  %44 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %44, i64 %idxprom45
  store i8 %40, i8* %arrayidx46, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %46 = load i32, i32* @has_alpha, align 4
  %tobool47 = icmp ne i32 %46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.63

if.then.48:                                       ; preds = %for.end
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul49 = mul nsw i32 %47, %48
  %49 = load i32, i32* %bpp.addr, align 4
  %sub50 = sub nsw i32 %49, 1
  %add51 = add nsw i32 %mul49, %sub50
  %idxprom52 = sext i32 %add51 to i64
  %50 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %50, i64 %idxprom52
  %51 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %51 to i32
  %52 = load i32, i32* @opacity, align 4
  %mul55 = mul nsw i32 %conv54, %52
  %div56 = sdiv i32 %mul55, 100
  %conv57 = trunc i32 %div56 to i8
  %53 = load i32, i32* %x, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TileItInterface, %struct.TileItInterface* @tint, i32 0, i32 2), align 4
  %mul58 = mul nsw i32 %53, %54
  %55 = load i32, i32* %bpp.addr, align 4
  %sub59 = sub nsw i32 %55, 1
  %add60 = add nsw i32 %mul58, %sub59
  %idxprom61 = sext i32 %add60 to i64
  %56 = load i8*, i8** %dest_row.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %56, i64 %idxprom61
  store i8 %conv57, i8* %arrayidx62, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.48, %for.end
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %57 = load i32, i32* %x, align 4
  %inc65 = add nsw i32 %57, 1
  store i32 %inc65, i32* %x, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare %struct._GimpPixelFetcher* @gimp_pixel_fetcher_new(%struct._GimpDrawable*, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @tiles_xy(i32 %width, i32 %height, i32 %x, i32 %y, i32* %nx, i32* %ny) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %nx.addr = alloca i32*, align 8
  %ny.addr = alloca i32*, align 8
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %rnum = alloca i32, align 4
  %cnum = alloca i32, align 4
  %actiontype = alloca i32, align 4
  %rnd = alloca double, align 8
  %pyr = alloca double, align 8
  %pxr = alloca double, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %nx, i32** %nx.addr, align 8
  store i32* %ny, i32** %ny.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  %sub = fsub double 1.000000e+00, %div
  %add = fadd double %sub, 1.000000e-02
  store double %add, double* %rnd, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %height.addr, align 4
  %div1 = sdiv i32 %mul, %3
  store i32 %div1, i32* %rnum, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul2 = mul nsw i32 %4, %5
  %6 = load i32, i32* %height.addr, align 4
  %rem = srem i32 %mul2, %6
  store i32 %rem, i32* %py, align 4
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul3 = mul nsw i32 %7, %8
  %9 = load i32, i32* %width.addr, align 4
  %rem4 = srem i32 %mul3, %9
  store i32 %rem4, i32* %px, align 4
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %mul5 = mul nsw i32 %10, %11
  %12 = load i32, i32* %width.addr, align 4
  %div6 = sdiv i32 %mul5, %12
  store i32 %div6, i32* %cnum, align 4
  %13 = load i32, i32* %rnum, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* %cnum, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @tileactions, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx8, align 4
  store i32 %15, i32* %actiontype, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %actiontype, align 4
  %and = and i32 %16, 2
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %17 = load i32, i32* %height.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %sub11 = sub nsw i32 %17, %18
  %sub12 = sub nsw i32 %sub11, 1
  %conv13 = sitofp i32 %sub12 to double
  %19 = load double, double* %rnd, align 8
  %add14 = fadd double %conv13, %19
  store double %add14, double* %pyr, align 8
  %20 = load double, double* %pyr, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv15 = sitofp i32 %21 to double
  %mul16 = fmul double %20, %conv15
  %conv17 = fptosi double %mul16 to i32
  %22 = load i32, i32* %height.addr, align 4
  %rem18 = srem i32 %conv17, %22
  store i32 %rem18, i32* %py, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %23 = load i32, i32* %actiontype, align 4
  %and19 = and i32 %23, 1
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %if.end
  %24 = load i32, i32* %width.addr, align 4
  %25 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %24, %25
  %sub23 = sub nsw i32 %sub22, 1
  %conv24 = sitofp i32 %sub23 to double
  %26 = load double, double* %rnd, align 8
  %add25 = fadd double %conv24, %26
  store double %add25, double* %pxr, align 8
  %27 = load double, double* %pxr, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.data, %struct.data* @itvals, i32 0, i32 0), align 4
  %conv26 = sitofp i32 %28 to double
  %mul27 = fmul double %27, %conv26
  %conv28 = fptosi double %mul27 to i32
  %29 = load i32, i32* %width.addr, align 4
  %rem29 = srem i32 %conv28, %29
  store i32 %rem29, i32* %px, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.21, %if.end
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %entry
  %30 = load i32, i32* %px, align 4
  %31 = load i32*, i32** %nx.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %py, align 4
  %33 = load i32*, i32** %ny.addr, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %actiontype, align 4
  ret i32 %34
}

declare void @gimp_pixel_fetcher_get_pixel(%struct._GimpPixelFetcher*, i32, i32, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_pixel_fetcher_destroy(%struct._GimpPixelFetcher*) #1

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
