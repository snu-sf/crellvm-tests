; ModuleID = './plug-ins/common/tile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.TileVals = type { i32, i32, i32, i32 }
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
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [6 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"new-width\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"New (tiled) image width\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"new-height\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"New (tiled) image height\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"new-image\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Create a new image?\00", align 1
@query.return_vals = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0) }], align 16
@.str.12 = private unnamed_addr constant [40 x i8] c"Output image (-1 if new-image == FALSE)\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"new-layer\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Output layer (-1 if new-image == FALSE)\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"plug-in-tile\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Create an array of copies of the image\00", align 1
@.str.17 = private unnamed_addr constant [288 x i8] c"This function creates a new image with a single layer sized to the specified 'new_width' and 'new_height' parameters.  The specified drawable is tiled into this layer.  The new layer will have the same type as the specified drawable and the new image will have a corresponding base type.\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"1996-1997\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"_Tile...\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.values = internal global [3 x %struct._GimpParam] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@tvals = internal global %struct.TileVals { i32 1, i32 1, i32 1, i32 1 }, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"Tiling\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Tile\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"gimp-tile\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Tile to New Size\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"_Width:\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"_Height:\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"chainbutton\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"C_reate new image\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Background\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 6, i32 2, %struct._GimpParamDef* getelementptr inbounds ([6 x %struct._GimpParamDef], [6 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.return_vals, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
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
  %new_layer = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 -1, i32* %new_layer, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 3, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 13, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  store i32 14, i32* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (%struct.TileVals* @tvals to i8*))
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_image, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %9 = load i32, i32* %d_drawable, align 4
  %call9 = call i32 @tile_dialog(i32 %7, i32 %9)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.10:                                         ; preds = %do.end
  %10 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %10, 6
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb.10
  store i32 1, i32* %status, align 4
  br label %if.end.26

if.else:                                          ; preds = %sw.bb.10
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_int3214 = bitcast %union._GimpParamData* %data13 to i32*
  %12 = load i32, i32* %d_int3214, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 4
  %data16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx15, i32 0, i32 1
  %d_int3217 = bitcast %union._GimpParamData* %data16 to i32*
  %14 = load i32, i32* %d_int3217, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 5
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %16 = load i32, i32* %d_int3220, align 4
  %tobool21 = icmp ne i32 %16, 0
  %cond = select i1 %tobool21, i32 1, i32 0
  store i32 %cond, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 3), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %cmp22 = icmp slt i32 %17, 0
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %18 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %cmp23 = icmp slt i32 %18, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %status, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %lor.lhs.false
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.11
  br label %sw.epilog

sw.bb.27:                                         ; preds = %do.end
  %call28 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (%struct.TileVals* @tvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %if.end.26, %if.end
  %19 = load i32, i32* %status, align 4
  %cmp29 = icmp eq i32 %19, 3
  br i1 %cmp29, label %if.then.30, label %if.end.53

if.then.30:                                       ; preds = %sw.epilog
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #4
  %call32 = call i32 @gimp_progress_init(i8* %call31)
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 1
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_image35 = bitcast %union._GimpParamData* %data34 to i32*
  %21 = load i32, i32* %d_image35, align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 2
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_drawable38 = bitcast %union._GimpParamData* %data37 to i32*
  %23 = load i32, i32* %d_drawable38, align 4
  %call39 = call i32 @tile(i32 %21, i32 %23, i32* %new_layer)
  store i32 %call39, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %24 = load i32, i32* %new_layer, align 4
  store i32 %24, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*), align 4
  %25 = load i32, i32* %run_mode, align 4
  %cmp40 = icmp eq i32 %25, 0
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.30
  %call42 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (%struct.TileVals* @tvals to i8*), i32 16)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.30
  %26 = load i32, i32* %run_mode, align 4
  %cmp44 = icmp ne i32 %26, 1
  br i1 %cmp44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.43
  %27 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 3), align 4
  %tobool46 = icmp ne i32 %27, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.then.45
  %28 = load i32, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  %call48 = call i32 @gimp_display_new(i32 %28)
  br label %if.end.51

if.else.49:                                       ; preds = %if.then.45
  %call50 = call i32 @gimp_displays_flush()
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.43
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %sw.epilog
  %29 = load i32, i32* %status, align 4
  store i32 %29, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([3 x %struct._GimpParam], [3 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.53, %if.then
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
define internal i32 @tile_dialog(i32 %image_ID, i32 %drawable_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %dlg = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %sizeentry = alloca %struct._GtkWidget*, align 8
  %chainbutton = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %unit = alloca i32, align 4
  %run = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  call void @gimp_ui_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 0)
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %0)
  store i32 %call, i32* %width, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_height(i32 %1)
  store i32 %call1, i32* %height, align 4
  %2 = load i32, i32* %image_ID.addr, align 4
  %call2 = call i32 @gimp_image_get_unit(i32 %2)
  store i32 %call2, i32* %unit, align 4
  %3 = load i32, i32* %image_ID.addr, align 4
  %call3 = call i32 @gimp_image_get_resolution(i32 %3, double* %xres, double* %yres)
  %4 = load i32, i32* %width, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #4
  %call5 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dlg, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %8, i32 -5, i32 -6, i32 -1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_window_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %11)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %vbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_dialog_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkDialog*
  %call15 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0)) #4
  %call19 = call %struct._GtkWidget* @gimp_frame_new(i8* %call18)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call20)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load i32, i32* %unit, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 2), align 4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #4
  %29 = load i32, i32* %width, align 4
  %conv = sitofp i32 %29 to double
  %30 = load double, double* %xres, align 8
  %31 = load i32, i32* %width, align 4
  %conv23 = sitofp i32 %31 to double
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)) #4
  %32 = load i32, i32* %height, align 4
  %conv25 = sitofp i32 %32 to double
  %33 = load double, double* %yres, align 8
  %34 = load i32, i32* %height, align 4
  %conv26 = sitofp i32 %34 to double
  %call27 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 1, i32 8, i32 1, i32 %28, i32 1, i8* %call22, double %conv, double %30, double 1.000000e+00, double 2.621440e+05, double 0.000000e+00, double %conv23, i8* %call24, double %conv25, double %33, double 1.000000e+00, double 2.621440e+05, double 0.000000e+00, double %conv26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %sizeentry, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_container_add(%struct._GtkContainer* %37, %struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_table_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call30)
  %41 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %41, i32 1, i32 6)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 80)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call i8* @g_object_get_data(%struct._GObject* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0))
  %46 = bitcast i8* %call33 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_widget_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call34)
  %47 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkWidget*
  store %struct._GtkWidget* %47, %struct._GtkWidget** %chainbutton, align 8
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0)) #4
  %call37 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %toggle, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_toggle_button_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkToggleButton*
  %51 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 3), align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %50, i32 %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_box_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call40)
  %54 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkBox*
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %54, %struct._GtkWidget* %55, i32 0, i32 0, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* bitcast (i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 3) to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_dialog_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call43)
  %62 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDialog*
  %call45 = call i32 @gimp_dialog_run(%struct._GimpDialog* %62)
  %cmp = icmp eq i32 %call45, -5
  %conv46 = zext i1 %cmp to i32
  store i32 %conv46, i32* %run, align 4
  %63 = load i32, i32* %run, align 4
  %tobool = icmp ne i32 %63, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_size_entry_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call47)
  %66 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpSizeEntry*
  %call49 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %66, i32 0)
  %call50 = call double @rint(double %call49) #5
  %conv51 = fptosi double %call50 to i32
  store i32 %conv51, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_size_entry_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call52)
  %69 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpSizeEntry*
  %call54 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %69, i32 1)
  %call55 = call double @rint(double %call54) #5
  %conv56 = fptosi double %call55 to i32
  store i32 %conv56, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_chain_button_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call57)
  %72 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpChainButton*
  %call59 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %72)
  store i32 %call59, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %dlg, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %73)
  %74 = load i32, i32* %run, align 4
  ret i32 %74
}

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile(i32 %image_id, i32 %drawable_id, i32* %layer_id) #0 {
entry:
  %retval = alloca i32, align 4
  %image_id.addr = alloca i32, align 4
  %drawable_id.addr = alloca i32, align 4
  %layer_id.addr = alloca i32*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %new_layer = alloca %struct._GimpDrawable*, align 8
  %image_type = alloca i32, align 4
  %new_image_id = alloca i32, align 4
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %pr = alloca i8*, align 8
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %ncols = alloca i32, align 4
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %drawable_id, i32* %drawable_id.addr, align 4
  store i32* %layer_id, i32** %layer_id.addr, align 8
  store i32 0, i32* %image_type, align 4
  store i32 0, i32* %new_image_id, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32*, i32** %layer_id.addr, align 8
  store i32 -1, i32* %2, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %drawable_id.addr, align 4
  %call = call i32 @gimp_drawable_width(i32 %3)
  store i32 %call, i32* %old_width, align 4
  %4 = load i32, i32* %drawable_id.addr, align 4
  %call2 = call i32 @gimp_drawable_height(i32 %4)
  store i32 %call2, i32* %old_height, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 3), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %drawable_id.addr, align 4
  %call4 = call i32 @gimp_drawable_type(i32 %6)
  switch i32 %call4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then.3, %if.then.3
  store i32 0, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then.3, %if.then.3
  store i32 1, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then.3, %if.then.3
  store i32 2, i32* %image_type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.3, %sw.bb.6, %sw.bb.5, %sw.bb
  %7 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %9 = load i32, i32* %image_type, align 4
  %call7 = call i32 @gimp_image_new(i32 %7, i32 %8, i32 %9)
  store i32 %call7, i32* %new_image_id, align 4
  %10 = load i32, i32* %new_image_id, align 4
  %call8 = call i32 @gimp_image_undo_disable(i32 %10)
  %11 = load i32, i32* %new_image_id, align 4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0)) #4
  %12 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %14 = load i32, i32* %drawable_id.addr, align 4
  %call10 = call i32 @gimp_drawable_type(i32 %14)
  %call11 = call i32 @gimp_layer_new(i32 %11, i8* %call9, i32 %12, i32 %13, i32 %call10, double 1.000000e+02, i32 0)
  %15 = load i32*, i32** %layer_id.addr, align 8
  store i32 %call11, i32* %15, align 4
  %16 = load i32*, i32** %layer_id.addr, align 8
  %17 = load i32, i32* %16, align 4
  %cmp12 = icmp eq i32 %17, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.epilog
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %sw.epilog
  %18 = load i32, i32* %new_image_id, align 4
  %19 = load i32*, i32** %layer_id.addr, align 8
  %20 = load i32, i32* %19, align 4
  %call15 = call i32 @gimp_image_insert_layer(i32 %18, i32 %20, i32 -1, i32 0)
  %21 = load i32*, i32** %layer_id.addr, align 8
  %22 = load i32, i32* %21, align 4
  %call16 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %22)
  store %struct._GimpDrawable* %call16, %struct._GimpDrawable** %new_layer, align 8
  %23 = load i32, i32* %drawable_id.addr, align 4
  %call17 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %23)
  store %struct._GimpDrawable* %call17, %struct._GimpDrawable** %drawable, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %24 = load i32, i32* %image_id.addr, align 4
  %call18 = call i32 @gimp_image_undo_group_start(i32 %24)
  %25 = load i32, i32* %image_id.addr, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %call19 = call i32 @gimp_image_resize(i32 %25, i32 %26, i32 %27, i32 0, i32 0)
  %28 = load i32, i32* %drawable_id.addr, align 4
  %call20 = call i32 @gimp_item_is_layer(i32 %28)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else
  %29 = load i32, i32* %drawable_id.addr, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %call23 = call i32 @gimp_layer_resize(i32 %29, i32 %30, i32 %31, i32 0, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.else
  %32 = load i32, i32* %drawable_id.addr, align 4
  %call25 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %32)
  store %struct._GimpDrawable* %call25, %struct._GimpDrawable** %drawable, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %33, %struct._GimpDrawable** %new_layer, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.24, %if.end.14
  store i32 0, i32* %progress, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %mul = mul nsw i32 %34, %35
  store i32 %mul, i32* %max_progress, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %if.end.26
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %cmp27 = icmp slt i32 %36, %37
  br i1 %cmp27, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %old_height, align 4
  store i32 %38, i32* %height, align 4
  %39 = load i32, i32* %height, align 4
  %40 = load i32, i32* %i, align 4
  %add = add nsw i32 %39, %40
  %41 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %cmp28 = icmp sgt i32 %add, %41
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body
  %42 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 1), align 4
  %43 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %42, %43
  store i32 %sub, i32* %height, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.68, %if.end.30
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %cmp32 = icmp slt i32 %44, %45
  br i1 %cmp32, label %for.body.33, label %for.end.70

for.body.33:                                      ; preds = %for.cond.31
  %46 = load i32, i32* %old_width, align 4
  store i32 %46, i32* %width, align 4
  %47 = load i32, i32* %width, align 4
  %48 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %47, %48
  %49 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %cmp35 = icmp sgt i32 %add34, %49
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.body.33
  %50 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 0), align 4
  %51 = load i32, i32* %j, align 4
  %sub37 = sub nsw i32 %50, %51
  store i32 %sub37, i32* %width, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.body.33
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %52, i32 0, i32 0, i32 %53, i32 %54, i32 0, i32 0)
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %width, align 4
  %59 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 1, i32 0)
  %call39 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call39, i8** %pr, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.64, %if.end.38
  %60 = load i8*, i8** %pr, align 8
  %cmp41 = icmp ne i8* %60, null
  br i1 %cmp41, label %for.body.42, label %for.end.67

for.body.42:                                      ; preds = %for.cond.40
  store i32 0, i32* %k, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %for.body.42
  %61 = load i32, i32* %k, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %62 = load i32, i32* %h, align 4
  %cmp44 = icmp slt i32 %61, %62
  br i1 %cmp44, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.43
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %63 = load i8*, i8** %data, align 8
  %64 = load i32, i32* %k, align 4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %65 = load i32, i32* %rowstride, align 4
  %mul46 = mul nsw i32 %64, %65
  %idx.ext = sext i32 %mul46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 %idx.ext
  %data47 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %66 = load i8*, i8** %data47, align 8
  %67 = load i32, i32* %k, align 4
  %rowstride48 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %68 = load i32, i32* %rowstride48, align 4
  %mul49 = mul nsw i32 %67, %68
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %66, i64 %idx.ext50
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %69 = load i32, i32* %w, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %70 = load i32, i32* %bpp, align 4
  %mul52 = mul nsw i32 %69, %70
  %conv = sext i32 %mul52 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr51, i64 %conv, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.45
  %71 = load i32, i32* %k, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  %w53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %72 = load i32, i32* %w53, align 4
  %h54 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %73 = load i32, i32* %h54, align 4
  %mul55 = mul nsw i32 %72, %73
  %74 = load i32, i32* %progress, align 4
  %add56 = add nsw i32 %74, %mul55
  store i32 %add56, i32* %progress, align 4
  %75 = load i32, i32* %c, align 4
  %rem = srem i32 %75, 16
  %cmp57 = icmp eq i32 %rem, 0
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %for.end
  %76 = load i32, i32* %progress, align 4
  %conv60 = sitofp i32 %76 to double
  %77 = load i32, i32* %max_progress, align 4
  %conv61 = sitofp i32 %77 to double
  %div = fdiv double %conv60, %conv61
  %call62 = call i32 @gimp_progress_update(double %div)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %for.end
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %78 = load i8*, i8** %pr, align 8
  %call65 = call i8* @gimp_pixel_rgns_process(i8* %78)
  store i8* %call65, i8** %pr, align 8
  %79 = load i32, i32* %c, align 4
  %inc66 = add nsw i32 %79, 1
  store i32 %inc66, i32* %c, align 4
  br label %for.cond.40

for.end.67:                                       ; preds = %for.cond.40
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %80 = load i32, i32* %old_width, align 4
  %81 = load i32, i32* %j, align 4
  %add69 = add nsw i32 %81, %80
  store i32 %add69, i32* %j, align 4
  br label %for.cond.31

for.end.70:                                       ; preds = %for.cond.31
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %82 = load i32, i32* %old_height, align 4
  %83 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %83, %82
  store i32 %add72, i32* %i, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  %call74 = call i32 @gimp_progress_update(double 1.000000e+00)
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  %drawable_id75 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %84, i32 0, i32 0
  %85 = load i32, i32* %drawable_id75, align 4
  %86 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  %width76 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %86, i32 0, i32 1
  %87 = load i32, i32* %width76, align 4
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  %height77 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %88, i32 0, i32 2
  %89 = load i32, i32* %height77, align 4
  %call78 = call i32 @gimp_drawable_update(i32 %85, i32 0, i32 0, i32 %87, i32 %89)
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %90)
  %91 = load i32, i32* getelementptr inbounds (%struct.TileVals, %struct.TileVals* @tvals, i32 0, i32 3), align 4
  %tobool79 = icmp ne i32 %91, 0
  br i1 %tobool79, label %if.then.80, label %if.else.88

if.then.80:                                       ; preds = %for.end.73
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_layer, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %92)
  %93 = load i32, i32* %image_type, align 4
  %cmp81 = icmp eq i32 %93, 2
  br i1 %cmp81, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.then.80
  %94 = load i32, i32* %image_id.addr, align 4
  %call84 = call i8* @gimp_image_get_colormap(i32 %94, i32* %ncols)
  store i8* %call84, i8** %cmap, align 8
  %95 = load i32, i32* %new_image_id, align 4
  %96 = load i8*, i8** %cmap, align 8
  %97 = load i32, i32* %ncols, align 4
  %call85 = call i32 @gimp_image_set_colormap(i32 %95, i8* %96, i32 %97)
  %98 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %98)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.then.80
  %99 = load i32, i32* %new_image_id, align 4
  %call87 = call i32 @gimp_image_undo_enable(i32 %99)
  br label %if.end.90

if.else.88:                                       ; preds = %for.end.73
  %100 = load i32, i32* %image_id.addr, align 4
  %call89 = call i32 @gimp_image_undo_group_end(i32 %100)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.end.86
  %101 = load i32, i32* %new_image_id, align 4
  store i32 %101, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.13, %if.then
  %102 = load i32, i32* %retval
  ret i32 %102
}

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_display_new(i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_image_get_unit(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

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

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_image_resize(i32, i32, i32, i32, i32) #1

declare i32 @gimp_item_is_layer(i32) #1

declare i32 @gimp_layer_resize(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_image_undo_group_end(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
