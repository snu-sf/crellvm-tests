; ModuleID = './plug-ins/common/pixelize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.PixelizeValues = type { i32, i32 }
%struct.PixelArea = type { i32, i32, i32, i32, i32, i32, i8* }
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
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.pixelize_args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pixel-width\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Pixel width (the decrease in resolution)\00", align 1
@query.pixelize2_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [52 x i8] c"Pixel width (the decrease in horizontal resolution)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"pixel-height\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Pixel height (the decrease in vertical resolution)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"plug-in-pixelize\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"Simplify image into an array of solid-colored squares\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"Pixelize the contents of the specified drawable with specified pixelizing width.\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"Spencer Kimball & Peter Mattis, Tracy Scott, (ported to 1.0 by) Eiichi Takamori\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Spencer Kimball & Peter Mattis, Tracy Scott\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"1995\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"_Pixelize...\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"<Image>/Filters/Blur\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"plug-in-pixelize2\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Pixelize the contents of the specified drawable\00", align 1
@.str.22 = private unnamed_addr constant [81 x i8] c"Pixelize the contents of the specified drawable with speficied pixelizing width.\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"2001\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@pvals = internal global %struct.PixelizeValues { i32 10, i32 10 }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"Pixelizing\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Cannot operate on indexed color images.\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"pixelize\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Pixelize\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"gimp-pixelize\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"invalidated\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Pixel _width:\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Pixel _height:\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"refval-changed\00", align 1
@area = internal global %struct.PixelArea zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.pixelize_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.pixelize2_args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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
    i32 2, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %do.end
  %call7 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.PixelizeValues* @pvals to i8*))
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call8 = call i32 @pixelize_dialog(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %9)
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call10 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.9
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %11, 4
  br i1 %cmp, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb.9
  %12 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #7
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.17, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %nparams.addr, align 4
  %cmp15 = icmp ne i32 %13, 5
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.14, %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true.14, %lor.lhs.false
  %14 = load i32, i32* %status, align 4
  %cmp18 = icmp eq i32 %14, 3
  br i1 %cmp18, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %if.end.17
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx20, i32 0, i32 1
  %d_int3222 = bitcast %union._GimpParamData* %data21 to i32*
  %16 = load i32, i32* %d_int3222, align 4
  %conv = sitofp i32 %16 to double
  %conv23 = fptosi double %conv to i32
  store i32 %conv23, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 0), align 4
  %17 = load i32, i32* %nparams.addr, align 4
  %cmp24 = icmp eq i32 %17, 4
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.19
  %18 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 0), align 4
  store i32 %18, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 1), align 4
  br label %if.end.32

if.else:                                          ; preds = %if.then.19
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 4
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %20 = load i32, i32* %d_int3229, align 4
  %conv30 = sitofp i32 %20 to double
  %conv31 = fptosi double %conv30 to i32
  store i32 %conv31, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 1), align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.17
  %21 = load i32, i32* %status, align 4
  %cmp34 = icmp eq i32 %21, 3
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %if.end.33
  %22 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 0), align 4
  %cmp37 = icmp sle i32 %22, 0
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true.36
  %23 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 1), align 4
  %cmp40 = icmp sle i32 %23, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.39, %land.lhs.true.36
  store i32 1, i32* %status, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %lor.lhs.false.39, %if.end.33
  br label %sw.epilog

sw.bb.44:                                         ; preds = %do.end
  %call45 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.PixelizeValues* @pvals to i8*))
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.44, %if.end.43, %if.end
  %24 = load i32, i32* %status, align 4
  %cmp46 = icmp eq i32 %24, 3
  br i1 %cmp46, label %if.then.48, label %if.end.71

if.then.48:                                       ; preds = %sw.epilog
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 0
  %26 = load i32, i32* %drawable_id, align 4
  %call49 = call i32 @gimp_drawable_is_rgb(i32 %26)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.then.48
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id52 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 0
  %28 = load i32, i32* %drawable_id52, align 4
  %call53 = call i32 @gimp_drawable_is_gray(i32 %28)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.68

if.then.55:                                       ; preds = %lor.lhs.false.51, %if.then.48
  %call56 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0)) #6
  %call57 = call i32 @gimp_progress_init(i8* %call56)
  call void @gimp_tile_cache_ntiles(i64 16)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @pixelize(%struct._GimpDrawable* %29, %struct._GimpPreview* null)
  %30 = load i32, i32* %run_mode, align 4
  %cmp58 = icmp ne i32 %30, 1
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.55
  %call61 = call i32 @gimp_displays_flush()
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.then.55
  %31 = load i32, i32* %run_mode, align 4
  %cmp63 = icmp eq i32 %31, 0
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.62
  %call66 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.PixelizeValues* @pvals to i8*), i32 8)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.62
  br label %if.end.70

if.else.68:                                       ; preds = %lor.lhs.false.51
  store i32 0, i32* %status, align 4
  %32 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %32, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0)) #6
  store i8* %call69, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.end.67
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %sw.epilog
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %34)
  br label %return

return:                                           ; preds = %if.end.71, %if.then
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
define internal i32 @pixelize_dialog(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %preview = alloca %struct._GtkWidget*, align 8
  %sizeentry = alloca %struct._GtkWidget*, align 8
  %image_id = alloca i32, align 4
  %unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %run = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0)
  %call = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #6
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 -5, i8* null)
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
  %call14 = call %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable* %16, i32* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %preview, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #5
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
  %call17 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpPreview*)* @pixelize to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 2)
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 0
  %27 = load i32, i32* %drawable_id, align 4
  %call18 = call i32 @gimp_item_get_image(i32 %27)
  store i32 %call18, i32* %image_id, align 4
  %28 = load i32, i32* %image_id, align 4
  %call19 = call i32 @gimp_image_get_unit(i32 %28)
  store i32 %call19, i32* %unit, align 4
  %29 = load i32, i32* %image_id, align 4
  %call20 = call i32 @gimp_image_get_resolution(i32 %29, double* %xres, double* %yres)
  %30 = load i32, i32* %unit, align 4
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)) #6
  %31 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 0), align 4
  %conv = sitofp i32 %31 to double
  %32 = load double, double* %xres, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load i32, i32* %width, align 4
  %conv22 = uitofp i32 %34 to double
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 1
  %36 = load i32, i32* %width23, align 4
  %conv24 = uitofp i32 %36 to double
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #6
  %37 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 1), align 4
  %conv26 = sitofp i32 %37 to double
  %38 = load double, double* %yres, align 8
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 2
  %40 = load i32, i32* %height, align 4
  %conv27 = uitofp i32 %40 to double
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 2
  %42 = load i32, i32* %height28, align 4
  %conv29 = uitofp i32 %42 to double
  %call30 = call %struct._GtkWidget* @gimp_coordinates_new(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 1, i32 1, i32 6, i32 1, i32 1, i32 0, i8* %call21, double %conv, double %32, double 1.000000e+00, double %conv22, double 1.000000e+00, double %conv24, i8* %call25, double %conv26, double %38, double 1.000000e+00, double %conv27, double 1.000000e+00, double %conv29)
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %sizeentry, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call31)
  %45 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 0, i32 0, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %51 = bitcast %struct._GtkWidget* %50 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpPreview*)* @update_pixelsize to void ()*), i8* %51, void (i8*, %struct._GClosure*)* null, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSizeEntry*, %struct._GimpPreview*)* @update_pixelsize to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_dialog_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call35)
  %59 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDialog*
  %call37 = call i32 @gimp_dialog_run(%struct._GimpDialog* %59)
  %cmp = icmp eq i32 %call37, -5
  %conv38 = zext i1 %cmp to i32
  store i32 %conv38, i32* %run, align 4
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %60)
  %61 = load i32, i32* %run, align 4
  ret i32 %61
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind uwtable
define internal void @pixelize(%struct._GimpDrawable* %drawable, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %pixelwidth = alloca i32, align 4
  %pixelheight = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %call = call i32 @gimp_tile_width() #5
  store i32 %call, i32* %tile_width, align 4
  %call1 = call i32 @gimp_tile_height() #5
  store i32 %call1, i32* %tile_height, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 0), align 4
  store i32 %0, i32* %pixelwidth, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 1), align 4
  store i32 %1, i32* %pixelheight, align 4
  %2 = load i32, i32* %pixelwidth, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %pixelwidth, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %pixelwidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %pixelwidth, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %pixelwidth, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load i32, i32* %pixelheight, align 4
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %6 = load i32, i32* %pixelheight, align 4
  %sub7 = sub nsw i32 0, %6
  store i32 %sub7, i32* %pixelheight, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %7 = load i32, i32* %pixelheight, align 4
  %cmp9 = icmp slt i32 %7, 1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  store i32 1, i32* %pixelheight, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %8 = load i32, i32* %pixelwidth, align 4
  %9 = load i32, i32* %tile_width, align 4
  %cmp12 = icmp sge i32 %8, %9
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %10 = load i32, i32* %pixelheight, align 4
  %11 = load i32, i32* %tile_height, align 4
  %cmp13 = icmp sge i32 %10, %11
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %12 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %12, null
  br i1 %tobool, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false, %if.end.11
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load i32, i32* %pixelwidth, align 4
  %15 = load i32, i32* %pixelheight, align 4
  %16 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @pixelize_large(%struct._GimpDrawable* %13, i32 %14, i32 %15, %struct._GimpPreview* %16)
  br label %if.end.16

if.else:                                          ; preds = %lor.lhs.false.14
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load i32, i32* %pixelwidth, align 4
  %19 = load i32, i32* %pixelheight, align 4
  %20 = load i32, i32* %tile_width, align 4
  %21 = load i32, i32* %tile_height, align 4
  call void @pixelize_small(%struct._GimpDrawable* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
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

declare %struct._GtkWidget* @gimp_drawable_preview_new(%struct._GimpDrawable*, i32*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_image_get_unit(i32) #1

declare i32 @gimp_image_get_resolution(i32, double*, double*) #1

declare %struct._GtkWidget* @gimp_coordinates_new(i32, i8*, i32, i32, i32, i32, i32, i32, i8*, double, double, double, double, double, double, i8*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @update_pixelsize(%struct._GimpSizeEntry* %sizeentry, %struct._GimpPreview* %preview) #0 {
entry:
  %sizeentry.addr = alloca %struct._GimpSizeEntry*, align 8
  %preview.addr = alloca %struct._GimpPreview*, align 8
  store %struct._GimpSizeEntry* %sizeentry, %struct._GimpSizeEntry** %sizeentry.addr, align 8
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  %0 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %sizeentry.addr, align 8
  %1 = bitcast %struct._GimpSizeEntry* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  %conv = fptosi double %call2 to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 0), align 4
  %3 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %sizeentry.addr, align 8
  %4 = bitcast %struct._GimpSizeEntry* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 1)
  %conv6 = fptosi double %call5 to i32
  store i32 %conv6, i32* getelementptr inbounds (%struct.PixelizeValues, %struct.PixelizeValues* @pvals, i32 0, i32 1), align 4
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_invalidate(%struct._GimpPreview* %6)
  ret void
}

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gimp_preview_invalidate(%struct._GimpPreview*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

; Function Attrs: nounwind uwtable
define internal void @pixelize_large(%struct._GimpDrawable* %drawable, i32 %pixelwidth, i32 %pixelheight, %struct._GimpPreview* %preview) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %pixelwidth.addr = alloca i32, align 4
  %pixelheight.addr = alloca i32, align 4
  %preview.addr = alloca %struct._GimpPreview*, align 8
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %average = alloca [4 x i64], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %bpp = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x_step = alloca i32, align 4
  %y_step = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i64, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %pr = alloca i8*, align 8
  %alpha = alloca i64, align 8
  %alpha134 = alloca i64, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %pixelwidth, i32* %pixelwidth.addr, align 4
  store i32 %pixelheight, i32* %pixelheight.addr, align 4
  store %struct._GimpPreview* %preview, %struct._GimpPreview** %preview.addr, align 8
  store i8* null, i8** %dest, align 8
  store i32 0, i32* %progress, align 4
  store i32 1, i32* %max_progress, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_bpp(i32 %1)
  store i32 %call, i32* %bpp, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %3)
  store i32 %call2, i32* %has_alpha, align 4
  %4 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool = icmp ne %struct._GimpPreview* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_position(%struct._GimpPreview* %5, i32* %x1, i32* %y1)
  %6 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  call void @gimp_preview_get_size(%struct._GimpPreview* %6, i32* %width, i32* %height)
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %width, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %x2, align 4
  %9 = load i32, i32* %y1, align 4
  %10 = load i32, i32* %height, align 4
  %add3 = add nsw i32 %9, %10
  store i32 %add3, i32* %y2, align 4
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %bpp, align 4
  %mul4 = mul nsw i32 %mul, %13
  %conv = sext i32 %mul4 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %dest, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_mask_intersect(i32 %15, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else
  br label %if.end.277

if.end:                                           ; preds = %if.else
  %16 = load i32, i32* %x1, align 4
  %17 = load i32, i32* %width, align 4
  %add10 = add nsw i32 %16, %17
  store i32 %add10, i32* %x2, align 4
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %height, align 4
  %add11 = add nsw i32 %18, %19
  store i32 %add11, i32* %y2, align 4
  store i32 0, i32* %progress, align 4
  %20 = load i32, i32* %width, align 4
  %mul12 = mul nsw i32 2, %20
  %21 = load i32, i32* %height, align 4
  %mul13 = mul nsw i32 %mul12, %21
  store i32 %mul13, i32* %max_progress, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %22 = load i32, i32* %y1, align 4
  store i32 %22, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.263, %if.end.14
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %for.body, label %for.end.267

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %x1, align 4
  store i32 %25, i32* %x, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.258, %for.body
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %x2, align 4
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %for.body.19, label %for.end.262

for.body.19:                                      ; preds = %for.cond.16
  %28 = load i32, i32* %pixelwidth.addr, align 4
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %pixelwidth.addr, align 4
  %rem = srem i32 %29, %30
  %sub = sub nsw i32 %28, %rem
  store i32 %sub, i32* %x_step, align 4
  %31 = load i32, i32* %pixelheight.addr, align 4
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %pixelheight.addr, align 4
  %rem20 = srem i32 %32, %33
  %sub21 = sub nsw i32 %31, %rem20
  store i32 %sub21, i32* %y_step, align 4
  %34 = load i32, i32* %x_step, align 4
  %35 = load i32, i32* %x2, align 4
  %36 = load i32, i32* %x, align 4
  %sub22 = sub nsw i32 %35, %36
  %cmp23 = icmp slt i32 %34, %sub22
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.19
  %37 = load i32, i32* %x_step, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.19
  %38 = load i32, i32* %x2, align 4
  %39 = load i32, i32* %x, align 4
  %sub25 = sub nsw i32 %38, %39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %sub25, %cond.false ]
  store i32 %cond, i32* %x_step, align 4
  %40 = load i32, i32* %y_step, align 4
  %41 = load i32, i32* %y2, align 4
  %42 = load i32, i32* %y, align 4
  %sub26 = sub nsw i32 %41, %42
  %cmp27 = icmp slt i32 %40, %sub26
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end
  %43 = load i32, i32* %y_step, align 4
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end
  %44 = load i32, i32* %y2, align 4
  %45 = load i32, i32* %y, align 4
  %sub31 = sub nsw i32 %44, %45
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.29
  %cond33 = phi i32 [ %43, %cond.true.29 ], [ %sub31, %cond.false.30 ]
  store i32 %cond33, i32* %y_step, align 4
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %x_step, align 4
  %50 = load i32, i32* %y_step, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 0, i32 0)
  store i32 0, i32* %b, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %cond.end.32
  %51 = load i32, i32* %b, align 4
  %52 = load i32, i32* %bpp, align 4
  %cmp35 = icmp slt i32 %51, %52
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.34
  %53 = load i32, i32* %b, align 4
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.37
  %54 = load i32, i32* %b, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  store i64 0, i64* %count, align 8
  %call38 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  store i8* %call38, i8** %pr, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.126, %for.end
  %55 = load i8*, i8** %pr, align 8
  %cmp40 = icmp ne i8* %55, null
  br i1 %cmp40, label %for.body.42, label %for.end.128

for.body.42:                                      ; preds = %for.cond.39
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %56 = load i8*, i8** %data, align 8
  store i8* %56, i8** %src_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.108, %for.body.42
  %57 = load i32, i32* %row, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %58 = load i32, i32* %h, align 4
  %cmp44 = icmp slt i32 %57, %58
  br i1 %cmp44, label %for.body.46, label %for.end.110

for.body.46:                                      ; preds = %for.cond.43
  %59 = load i8*, i8** %src_row, align 8
  store i8* %59, i8** %src, align 8
  %60 = load i32, i32* %has_alpha, align 4
  %tobool47 = icmp ne i32 %60, 0
  br i1 %tobool47, label %if.then.48, label %if.else.80

if.then.48:                                       ; preds = %for.body.46
  store i32 0, i32* %col, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.77, %if.then.48
  %61 = load i32, i32* %col, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %62 = load i32, i32* %w, align 4
  %cmp50 = icmp slt i32 %61, %62
  br i1 %cmp50, label %for.body.52, label %for.end.79

for.body.52:                                      ; preds = %for.cond.49
  %63 = load i32, i32* %bpp, align 4
  %sub53 = sub nsw i32 %63, 1
  %idxprom54 = sext i32 %sub53 to i64
  %64 = load i8*, i8** %src, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %64, i64 %idxprom54
  %65 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %65 to i64
  store i64 %conv56, i64* %alpha, align 8
  %66 = load i64, i64* %alpha, align 8
  %67 = load i32, i32* %bpp, align 4
  %sub57 = sub nsw i32 %67, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom58
  %68 = load i64, i64* %arrayidx59, align 8
  %add60 = add i64 %68, %66
  store i64 %add60, i64* %arrayidx59, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.73, %for.body.52
  %69 = load i32, i32* %b, align 4
  %70 = load i32, i32* %bpp, align 4
  %sub62 = sub nsw i32 %70, 1
  %cmp63 = icmp slt i32 %69, %sub62
  br i1 %cmp63, label %for.body.65, label %for.end.75

for.body.65:                                      ; preds = %for.cond.61
  %71 = load i32, i32* %b, align 4
  %idxprom66 = sext i32 %71 to i64
  %72 = load i8*, i8** %src, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %72, i64 %idxprom66
  %73 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %73 to i64
  %74 = load i64, i64* %alpha, align 8
  %mul69 = mul i64 %conv68, %74
  %75 = load i32, i32* %b, align 4
  %idxprom70 = sext i32 %75 to i64
  %arrayidx71 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom70
  %76 = load i64, i64* %arrayidx71, align 8
  %add72 = add i64 %76, %mul69
  store i64 %add72, i64* %arrayidx71, align 8
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.65
  %77 = load i32, i32* %b, align 4
  %inc74 = add nsw i32 %77, 1
  store i32 %inc74, i32* %b, align 4
  br label %for.cond.61

for.end.75:                                       ; preds = %for.cond.61
  %bpp76 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %78 = load i32, i32* %bpp76, align 4
  %79 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %78 to i64
  %add.ptr = getelementptr inbounds i8, i8* %79, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.75
  %80 = load i32, i32* %col, align 4
  %inc78 = add nsw i32 %80, 1
  store i32 %inc78, i32* %col, align 4
  br label %for.cond.49

for.end.79:                                       ; preds = %for.cond.49
  br label %if.end.105

if.else.80:                                       ; preds = %for.body.46
  store i32 0, i32* %col, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.102, %if.else.80
  %81 = load i32, i32* %col, align 4
  %w82 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %82 = load i32, i32* %w82, align 4
  %cmp83 = icmp slt i32 %81, %82
  br i1 %cmp83, label %for.body.85, label %for.end.104

for.body.85:                                      ; preds = %for.cond.81
  store i32 0, i32* %b, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.96, %for.body.85
  %83 = load i32, i32* %b, align 4
  %84 = load i32, i32* %bpp, align 4
  %cmp87 = icmp slt i32 %83, %84
  br i1 %cmp87, label %for.body.89, label %for.end.98

for.body.89:                                      ; preds = %for.cond.86
  %85 = load i32, i32* %b, align 4
  %idxprom90 = sext i32 %85 to i64
  %86 = load i8*, i8** %src, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %86, i64 %idxprom90
  %87 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %87 to i64
  %88 = load i32, i32* %b, align 4
  %idxprom93 = sext i32 %88 to i64
  %arrayidx94 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom93
  %89 = load i64, i64* %arrayidx94, align 8
  %add95 = add i64 %89, %conv92
  store i64 %add95, i64* %arrayidx94, align 8
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.89
  %90 = load i32, i32* %b, align 4
  %inc97 = add nsw i32 %90, 1
  store i32 %inc97, i32* %b, align 4
  br label %for.cond.86

for.end.98:                                       ; preds = %for.cond.86
  %bpp99 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %91 = load i32, i32* %bpp99, align 4
  %92 = load i8*, i8** %src, align 8
  %idx.ext100 = sext i32 %91 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %92, i64 %idx.ext100
  store i8* %add.ptr101, i8** %src, align 8
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.98
  %93 = load i32, i32* %col, align 4
  %inc103 = add nsw i32 %93, 1
  store i32 %inc103, i32* %col, align 4
  br label %for.cond.81

for.end.104:                                      ; preds = %for.cond.81
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.end.79
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %94 = load i32, i32* %rowstride, align 4
  %95 = load i8*, i8** %src_row, align 8
  %idx.ext106 = sext i32 %94 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %95, i64 %idx.ext106
  store i8* %add.ptr107, i8** %src_row, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.105
  %96 = load i32, i32* %row, align 4
  %inc109 = add nsw i32 %96, 1
  store i32 %inc109, i32* %row, align 4
  br label %for.cond.43

for.end.110:                                      ; preds = %for.cond.43
  %w111 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %97 = load i32, i32* %w111, align 4
  %h112 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %98 = load i32, i32* %h112, align 4
  %mul113 = mul nsw i32 %97, %98
  %conv114 = sext i32 %mul113 to i64
  %99 = load i64, i64* %count, align 8
  %add115 = add i64 %99, %conv114
  store i64 %add115, i64* %count, align 8
  %100 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool116 = icmp ne %struct._GimpPreview* %100, null
  br i1 %tobool116, label %if.end.125, label %if.then.117

if.then.117:                                      ; preds = %for.end.110
  %w118 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %101 = load i32, i32* %w118, align 4
  %h119 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %102 = load i32, i32* %h119, align 4
  %mul120 = mul nsw i32 %101, %102
  %103 = load i32, i32* %progress, align 4
  %add121 = add nsw i32 %103, %mul120
  store i32 %add121, i32* %progress, align 4
  %104 = load i32, i32* %progress, align 4
  %conv122 = sitofp i32 %104 to double
  %105 = load i32, i32* %max_progress, align 4
  %conv123 = sitofp i32 %105 to double
  %div = fdiv double %conv122, %conv123
  %call124 = call i32 @gimp_progress_update(double %div)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.117, %for.end.110
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %106 = load i8*, i8** %pr, align 8
  %call127 = call i8* @gimp_pixel_rgns_process(i8* %106)
  store i8* %call127, i8** %pr, align 8
  br label %for.cond.39

for.end.128:                                      ; preds = %for.cond.39
  %107 = load i64, i64* %count, align 8
  %cmp129 = icmp ugt i64 %107, 0
  br i1 %cmp129, label %if.then.131, label %if.end.168

if.then.131:                                      ; preds = %for.end.128
  %108 = load i32, i32* %has_alpha, align 4
  %tobool132 = icmp ne i32 %108, 0
  br i1 %tobool132, label %if.then.133, label %if.else.156

if.then.133:                                      ; preds = %if.then.131
  %109 = load i32, i32* %bpp, align 4
  %sub135 = sub nsw i32 %109, 1
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom136
  %110 = load i64, i64* %arrayidx137, align 8
  store i64 %110, i64* %alpha134, align 8
  %111 = load i64, i64* %alpha134, align 8
  %112 = load i64, i64* %count, align 8
  %div138 = udiv i64 %111, %112
  %113 = load i32, i32* %bpp, align 4
  %sub139 = sub nsw i32 %113, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom140
  store i64 %div138, i64* %arrayidx141, align 8
  %tobool142 = icmp ne i64 %div138, 0
  br i1 %tobool142, label %if.then.143, label %if.end.155

if.then.143:                                      ; preds = %if.then.133
  store i32 0, i32* %b, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.152, %if.then.143
  %114 = load i32, i32* %b, align 4
  %115 = load i32, i32* %bpp, align 4
  %sub145 = sub nsw i32 %115, 1
  %cmp146 = icmp slt i32 %114, %sub145
  br i1 %cmp146, label %for.body.148, label %for.end.154

for.body.148:                                     ; preds = %for.cond.144
  %116 = load i64, i64* %alpha134, align 8
  %117 = load i32, i32* %b, align 4
  %idxprom149 = sext i32 %117 to i64
  %arrayidx150 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom149
  %118 = load i64, i64* %arrayidx150, align 8
  %div151 = udiv i64 %118, %116
  store i64 %div151, i64* %arrayidx150, align 8
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.148
  %119 = load i32, i32* %b, align 4
  %inc153 = add nsw i32 %119, 1
  store i32 %inc153, i32* %b, align 4
  br label %for.cond.144

for.end.154:                                      ; preds = %for.cond.144
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %if.then.133
  br label %if.end.167

if.else.156:                                      ; preds = %if.then.131
  store i32 0, i32* %b, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.164, %if.else.156
  %120 = load i32, i32* %b, align 4
  %121 = load i32, i32* %bpp, align 4
  %cmp158 = icmp slt i32 %120, %121
  br i1 %cmp158, label %for.body.160, label %for.end.166

for.body.160:                                     ; preds = %for.cond.157
  %122 = load i64, i64* %count, align 8
  %123 = load i32, i32* %b, align 4
  %idxprom161 = sext i32 %123 to i64
  %arrayidx162 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom161
  %124 = load i64, i64* %arrayidx162, align 8
  %div163 = udiv i64 %124, %122
  store i64 %div163, i64* %arrayidx162, align 8
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.body.160
  %125 = load i32, i32* %b, align 4
  %inc165 = add nsw i32 %125, 1
  store i32 %inc165, i32* %b, align 4
  br label %for.cond.157

for.end.166:                                      ; preds = %for.cond.157
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %if.end.155
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %for.end.128
  %126 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool169 = icmp ne %struct._GimpPreview* %126, null
  br i1 %tobool169, label %if.then.170, label %if.else.205

if.then.170:                                      ; preds = %if.end.168
  %127 = load i8*, i8** %dest, align 8
  %128 = load i32, i32* %y, align 4
  %129 = load i32, i32* %y1, align 4
  %sub171 = sub nsw i32 %128, %129
  %130 = load i32, i32* %width, align 4
  %mul172 = mul nsw i32 %sub171, %130
  %131 = load i32, i32* %x, align 4
  %132 = load i32, i32* %x1, align 4
  %sub173 = sub nsw i32 %131, %132
  %add174 = add nsw i32 %mul172, %sub173
  %133 = load i32, i32* %bpp, align 4
  %mul175 = mul nsw i32 %add174, %133
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %127, i64 %idx.ext176
  store i8* %add.ptr177, i8** %dest_row, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.202, %if.then.170
  %134 = load i32, i32* %j, align 4
  %135 = load i32, i32* %y_step, align 4
  %cmp179 = icmp slt i32 %134, %135
  br i1 %cmp179, label %for.body.181, label %for.end.204

for.body.181:                                     ; preds = %for.cond.178
  %136 = load i8*, i8** %dest_row, align 8
  store i8* %136, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.196, %for.body.181
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* %x_step, align 4
  %cmp183 = icmp slt i32 %137, %138
  br i1 %cmp183, label %for.body.185, label %for.end.198

for.body.185:                                     ; preds = %for.cond.182
  store i32 0, i32* %b, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.193, %for.body.185
  %139 = load i32, i32* %b, align 4
  %140 = load i32, i32* %bpp, align 4
  %cmp187 = icmp slt i32 %139, %140
  br i1 %cmp187, label %for.body.189, label %for.end.195

for.body.189:                                     ; preds = %for.cond.186
  %141 = load i32, i32* %b, align 4
  %idxprom190 = sext i32 %141 to i64
  %arrayidx191 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom190
  %142 = load i64, i64* %arrayidx191, align 8
  %conv192 = trunc i64 %142 to i8
  %143 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv192, i8* %143, align 1
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.189
  %144 = load i32, i32* %b, align 4
  %inc194 = add nsw i32 %144, 1
  store i32 %inc194, i32* %b, align 4
  br label %for.cond.186

for.end.195:                                      ; preds = %for.cond.186
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %145 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %145, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.182

for.end.198:                                      ; preds = %for.cond.182
  %146 = load i32, i32* %width, align 4
  %147 = load i32, i32* %bpp, align 4
  %mul199 = mul nsw i32 %146, %147
  %148 = load i8*, i8** %dest_row, align 8
  %idx.ext200 = sext i32 %mul199 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %148, i64 %idx.ext200
  store i8* %add.ptr201, i8** %dest_row, align 8
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end.198
  %149 = load i32, i32* %j, align 4
  %inc203 = add nsw i32 %149, 1
  store i32 %inc203, i32* %j, align 4
  br label %for.cond.178

for.end.204:                                      ; preds = %for.cond.178
  br label %if.end.257

if.else.205:                                      ; preds = %if.end.168
  %150 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %151 = load i32, i32* %x, align 4
  %152 = load i32, i32* %y, align 4
  %153 = load i32, i32* %x_step, align 4
  %154 = load i32, i32* %y_step, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 1, i32 1)
  %call206 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call206, i8** %pr, align 8
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.254, %if.else.205
  %155 = load i8*, i8** %pr, align 8
  %cmp208 = icmp ne i8* %155, null
  br i1 %cmp208, label %for.body.210, label %for.end.256

for.body.210:                                     ; preds = %for.cond.207
  %data211 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %156 = load i8*, i8** %data211, align 8
  store i8* %156, i8** %dest_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.243, %for.body.210
  %157 = load i32, i32* %row, align 4
  %h213 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %158 = load i32, i32* %h213, align 4
  %cmp214 = icmp slt i32 %157, %158
  br i1 %cmp214, label %for.body.216, label %for.end.245

for.body.216:                                     ; preds = %for.cond.212
  %159 = load i8*, i8** %dest_row, align 8
  store i8* %159, i8** %dest, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.237, %for.body.216
  %160 = load i32, i32* %col, align 4
  %w218 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %161 = load i32, i32* %w218, align 4
  %cmp219 = icmp slt i32 %160, %161
  br i1 %cmp219, label %for.body.221, label %for.end.239

for.body.221:                                     ; preds = %for.cond.217
  store i32 0, i32* %b, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.231, %for.body.221
  %162 = load i32, i32* %b, align 4
  %163 = load i32, i32* %bpp, align 4
  %cmp223 = icmp slt i32 %162, %163
  br i1 %cmp223, label %for.body.225, label %for.end.233

for.body.225:                                     ; preds = %for.cond.222
  %164 = load i32, i32* %b, align 4
  %idxprom226 = sext i32 %164 to i64
  %arrayidx227 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom226
  %165 = load i64, i64* %arrayidx227, align 8
  %conv228 = trunc i64 %165 to i8
  %166 = load i32, i32* %b, align 4
  %idxprom229 = sext i32 %166 to i64
  %167 = load i8*, i8** %dest, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %167, i64 %idxprom229
  store i8 %conv228, i8* %arrayidx230, align 1
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.225
  %168 = load i32, i32* %b, align 4
  %inc232 = add nsw i32 %168, 1
  store i32 %inc232, i32* %b, align 4
  br label %for.cond.222

for.end.233:                                      ; preds = %for.cond.222
  %bpp234 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %169 = load i32, i32* %bpp234, align 4
  %170 = load i8*, i8** %dest, align 8
  %idx.ext235 = sext i32 %169 to i64
  %add.ptr236 = getelementptr inbounds i8, i8* %170, i64 %idx.ext235
  store i8* %add.ptr236, i8** %dest, align 8
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.end.233
  %171 = load i32, i32* %col, align 4
  %inc238 = add nsw i32 %171, 1
  store i32 %inc238, i32* %col, align 4
  br label %for.cond.217

for.end.239:                                      ; preds = %for.cond.217
  %rowstride240 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %172 = load i32, i32* %rowstride240, align 4
  %173 = load i8*, i8** %dest_row, align 8
  %idx.ext241 = sext i32 %172 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %173, i64 %idx.ext241
  store i8* %add.ptr242, i8** %dest_row, align 8
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.239
  %174 = load i32, i32* %row, align 4
  %inc244 = add nsw i32 %174, 1
  store i32 %inc244, i32* %row, align 4
  br label %for.cond.212

for.end.245:                                      ; preds = %for.cond.212
  %w246 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %175 = load i32, i32* %w246, align 4
  %h247 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %176 = load i32, i32* %h247, align 4
  %mul248 = mul nsw i32 %175, %176
  %177 = load i32, i32* %progress, align 4
  %add249 = add nsw i32 %177, %mul248
  store i32 %add249, i32* %progress, align 4
  %178 = load i32, i32* %progress, align 4
  %conv250 = sitofp i32 %178 to double
  %179 = load i32, i32* %max_progress, align 4
  %conv251 = sitofp i32 %179 to double
  %div252 = fdiv double %conv250, %conv251
  %call253 = call i32 @gimp_progress_update(double %div252)
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.end.245
  %180 = load i8*, i8** %pr, align 8
  %call255 = call i8* @gimp_pixel_rgns_process(i8* %180)
  store i8* %call255, i8** %pr, align 8
  br label %for.cond.207

for.end.256:                                      ; preds = %for.cond.207
  br label %if.end.257

if.end.257:                                       ; preds = %for.end.256, %for.end.204
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.257
  %181 = load i32, i32* %pixelwidth.addr, align 4
  %182 = load i32, i32* %x, align 4
  %183 = load i32, i32* %pixelwidth.addr, align 4
  %rem259 = srem i32 %182, %183
  %sub260 = sub nsw i32 %181, %rem259
  %184 = load i32, i32* %x, align 4
  %add261 = add nsw i32 %184, %sub260
  store i32 %add261, i32* %x, align 4
  br label %for.cond.16

for.end.262:                                      ; preds = %for.cond.16
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.262
  %185 = load i32, i32* %pixelheight.addr, align 4
  %186 = load i32, i32* %y, align 4
  %187 = load i32, i32* %pixelheight.addr, align 4
  %rem264 = srem i32 %186, %187
  %sub265 = sub nsw i32 %185, %rem264
  %188 = load i32, i32* %y, align 4
  %add266 = add nsw i32 %188, %sub265
  store i32 %add266, i32* %y, align 4
  br label %for.cond

for.end.267:                                      ; preds = %for.cond
  %189 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %tobool268 = icmp ne %struct._GimpPreview* %189, null
  br i1 %tobool268, label %if.then.269, label %if.else.271

if.then.269:                                      ; preds = %for.end.267
  %190 = load %struct._GimpPreview*, %struct._GimpPreview** %preview.addr, align 8
  %191 = load i8*, i8** %dest, align 8
  %192 = load i32, i32* %width, align 4
  %193 = load i32, i32* %bpp, align 4
  %mul270 = mul nsw i32 %192, %193
  call void @gimp_preview_draw_buffer(%struct._GimpPreview* %190, i8* %191, i32 %mul270)
  %194 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %194)
  br label %if.end.277

if.else.271:                                      ; preds = %for.end.267
  %call272 = call i32 @gimp_progress_update(double 1.000000e+00)
  %195 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %195)
  %196 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id273 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %196, i32 0, i32 0
  %197 = load i32, i32* %drawable_id273, align 4
  %call274 = call i32 @gimp_drawable_merge_shadow(i32 %197, i32 1)
  %198 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id275 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %198, i32 0, i32 0
  %199 = load i32, i32* %drawable_id275, align 4
  %200 = load i32, i32* %x1, align 4
  %201 = load i32, i32* %y1, align 4
  %202 = load i32, i32* %width, align 4
  %203 = load i32, i32* %height, align 4
  %call276 = call i32 @gimp_drawable_update(i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.9, %if.else.271, %if.then.269
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pixelize_small(%struct._GimpDrawable* %drawable, i32 %pixelwidth, i32 %pixelheight, i32 %tile_width, i32 %tile_height) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %pixelwidth.addr = alloca i32, align 4
  %pixelheight.addr = alloca i32, align 4
  %tile_width.addr = alloca i32, align 4
  %tile_height.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %bpp = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %pixelwidth, i32* %pixelwidth.addr, align 4
  store i32 %pixelheight, i32* %pixelheight.addr, align 4
  store i32 %tile_width, i32* %tile_width.addr, align 4
  store i32 %tile_height, i32* %tile_height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %w, i32* %h)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x1, align 4
  %3 = load i32, i32* %w, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %x2, align 4
  %4 = load i32, i32* %y1, align 4
  %5 = load i32, i32* %h, align 4
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %y2, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %y1, align 4
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %y2, align 4
  %12 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %11, %12
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %6, i32 %7, i32 %8, i32 %sub, i32 %sub2, i32 0, i32 0)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load i32, i32* %x1, align 4
  %15 = load i32, i32* %y1, align 4
  %16 = load i32, i32* %x2, align 4
  %17 = load i32, i32* %x1, align 4
  %sub3 = sub nsw i32 %16, %17
  %18 = load i32, i32* %y2, align 4
  %19 = load i32, i32* %y1, align 4
  %sub4 = sub nsw i32 %18, %19
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %13, i32 %14, i32 %15, i32 %sub3, i32 %sub4, i32 1, i32 1)
  store i32 0, i32* %progress, align 4
  %20 = load i32, i32* %x2, align 4
  %21 = load i32, i32* %x1, align 4
  %sub5 = sub nsw i32 %20, %21
  %22 = load i32, i32* %y2, align 4
  %23 = load i32, i32* %y1, align 4
  %sub6 = sub nsw i32 %22, %23
  %mul = mul nsw i32 %sub5, %sub6
  store i32 %mul, i32* %max_progress, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 3
  %25 = load i32, i32* %bpp7, align 4
  store i32 %25, i32* %bpp, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 0
  %27 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_has_alpha(i32 %27)
  store i32 %call9, i32* %has_alpha, align 4
  %28 = load i32, i32* %tile_width.addr, align 4
  %29 = load i32, i32* %pixelwidth.addr, align 4
  %div = sdiv i32 %28, %29
  %30 = load i32, i32* %pixelwidth.addr, align 4
  %mul10 = mul nsw i32 %div, %30
  store i32 %mul10, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 4
  %31 = load i32, i32* %tile_height.addr, align 4
  %32 = load i32, i32* %pixelheight.addr, align 4
  %div11 = sdiv i32 %31, %32
  %33 = load i32, i32* %pixelheight.addr, align 4
  %mul12 = mul nsw i32 %div11, %33
  store i32 %mul12, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 5), align 4
  %34 = load i32, i32* %bpp, align 4
  %conv = sext i32 %34 to i64
  %35 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 4
  %conv13 = sext i32 %35 to i64
  %mul14 = mul nsw i64 %conv, %conv13
  %36 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 5), align 4
  %conv15 = sext i32 %36 to i64
  %mul16 = mul nsw i64 %mul14, %conv15
  %call17 = call noalias i8* @g_malloc_n(i64 %mul16, i64 1)
  store i8* %call17, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 6), align 8
  %37 = load i32, i32* %y1, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %if.end
  %38 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %39 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %38, %39
  br i1 %cmp, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 5), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 5), align 4
  %rem = srem i32 %41, %42
  %sub19 = sub nsw i32 %40, %rem
  store i32 %sub19, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %44 = load i32, i32* %y2, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub20 = sub nsw i32 %44, %45
  %cmp21 = icmp slt i32 %43, %sub20
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %46 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %47 = load i32, i32* %y2, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub23 = sub nsw i32 %47, %48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %sub23, %cond.false ]
  store i32 %cond, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %49 = load i32, i32* %x1, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %cond.end
  %50 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %51 = load i32, i32* %x2, align 4
  %cmp25 = icmp slt i32 %50, %51
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %52 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 4
  %rem28 = srem i32 %53, %54
  %sub29 = sub nsw i32 %52, %rem28
  store i32 %sub29, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %56 = load i32, i32* %x2, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %sub30 = sub nsw i32 %56, %57
  %cmp31 = icmp slt i32 %55, %sub30
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %for.body.27
  %58 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  br label %cond.end.36

cond.false.34:                                    ; preds = %for.body.27
  %59 = load i32, i32* %x2, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %sub35 = sub nsw i32 %59, %60
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.33
  %cond37 = phi i32 [ %58, %cond.true.33 ], [ %sub35, %cond.false.34 ]
  store i32 %cond37, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %61 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 6), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %src_rgn, i8* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load i32, i32* %pixelwidth.addr, align 4
  %67 = load i32, i32* %pixelheight.addr, align 4
  %68 = load i32, i32* %bpp, align 4
  %69 = load i32, i32* %has_alpha, align 4
  call void @pixelize_sub(i32 %66, i32 %67, i32 %68, i32 %69)
  %70 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 6), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %dest_rgn, i8* %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %75 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %mul38 = mul nsw i32 %75, %76
  %77 = load i32, i32* %progress, align 4
  %add39 = add nsw i32 %77, %mul38
  store i32 %add39, i32* %progress, align 4
  %78 = load i32, i32* %progress, align 4
  %conv40 = sitofp i32 %78 to double
  %79 = load i32, i32* %max_progress, align 4
  %conv41 = sitofp i32 %79 to double
  %div42 = fdiv double %conv40, %conv41
  %call43 = call i32 @gimp_progress_update(double %div42)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.36
  %80 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 4), align 4
  %rem44 = srem i32 %81, %82
  %sub45 = sub nsw i32 %80, %rem44
  %83 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %add46 = add nsw i32 %83, %sub45
  store i32 %add46, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %84 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 5), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 5), align 4
  %rem48 = srem i32 %85, %86
  %sub49 = sub nsw i32 %84, %rem48
  %87 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %add50 = add nsw i32 %87, %sub49
  store i32 %add50, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  %88 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 6), align 8
  call void @g_free(i8* %88)
  %call52 = call i32 @gimp_progress_update(double 1.000000e+00)
  %89 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %89)
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id53 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %90, i32 0, i32 0
  %91 = load i32, i32* %drawable_id53, align 4
  %call54 = call i32 @gimp_drawable_merge_shadow(i32 %91, i32 1)
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %92, i32 0, i32 0
  %93 = load i32, i32* %drawable_id55, align 4
  %94 = load i32, i32* %x1, align 4
  %95 = load i32, i32* %y1, align 4
  %96 = load i32, i32* %x2, align 4
  %97 = load i32, i32* %x1, align 4
  %sub56 = sub nsw i32 %96, %97
  %98 = load i32, i32* %y2, align 4
  %99 = load i32, i32* %y1, align 4
  %sub57 = sub nsw i32 %98, %99
  %call58 = call i32 @gimp_drawable_update(i32 %93, i32 %94, i32 %95, i32 %sub56, i32 %sub57)
  br label %return

return:                                           ; preds = %for.end.51, %if.then
  ret void
}

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_preview_get_position(%struct._GimpPreview*, i32*, i32*) #1

declare void @gimp_preview_get_size(%struct._GimpPreview*, i32*, i32*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_preview_draw_buffer(%struct._GimpPreview*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pixelize_sub(i32 %pixelwidth, i32 %pixelheight, i32 %bpp, i32 %has_alpha) #0 {
entry:
  %pixelwidth.addr = alloca i32, align 4
  %pixelheight.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %average = alloca [4 x i64], align 16
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %buf_row = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %alpha = alloca i64, align 8
  %alpha97 = alloca i64, align 8
  store i32 %pixelwidth, i32* %pixelwidth.addr, align 4
  store i32 %pixelheight, i32* %pixelheight.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %1 = load i32, i32* %bpp.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %rowstride, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  store i32 %2, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.177, %entry
  %3 = load i32, i32* %y, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %add = add nsw i32 %4, %5
  %cmp = icmp slt i32 %3, %add
  br i1 %cmp, label %for.body, label %for.end.181

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %pixelheight.addr, align 4
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %pixelheight.addr, align 4
  %rem = srem i32 %7, %8
  %sub = sub nsw i32 %6, %rem
  store i32 %sub, i32* %h, align 4
  %9 = load i32, i32* %h, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %add1 = add nsw i32 %10, %11
  %12 = load i32, i32* %y, align 4
  %sub2 = sub nsw i32 %add1, %12
  %cmp3 = icmp slt i32 %9, %sub2
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, i32* %h, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 3), align 4
  %add4 = add nsw i32 %14, %15
  %16 = load i32, i32* %y, align 4
  %sub5 = sub nsw i32 %add4, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %sub5, %cond.false ]
  store i32 %cond, i32* %h, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  store i32 %17, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.172, %cond.end
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %add7 = add nsw i32 %19, %20
  %cmp8 = icmp slt i32 %18, %add7
  br i1 %cmp8, label %for.body.9, label %for.end.176

for.body.9:                                       ; preds = %for.cond.6
  %21 = load i32, i32* %pixelwidth.addr, align 4
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %pixelwidth.addr, align 4
  %rem10 = srem i32 %22, %23
  %sub11 = sub nsw i32 %21, %rem10
  store i32 %sub11, i32* %w, align 4
  %24 = load i32, i32* %w, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %add12 = add nsw i32 %25, %26
  %27 = load i32, i32* %x, align 4
  %sub13 = sub nsw i32 %add12, %27
  %cmp14 = icmp slt i32 %24, %sub13
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %for.body.9
  %28 = load i32, i32* %w, align 4
  br label %cond.end.19

cond.false.16:                                    ; preds = %for.body.9
  %29 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 2), align 4
  %add17 = add nsw i32 %29, %30
  %31 = load i32, i32* %x, align 4
  %sub18 = sub nsw i32 %add17, %31
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.15
  %cond20 = phi i32 [ %28, %cond.true.15 ], [ %sub18, %cond.false.16 ]
  store i32 %cond20, i32* %w, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %cond.end.19
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %bpp.addr, align 4
  %cmp22 = icmp slt i32 %32, %33
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  store i32 0, i32* %count, align 4
  %36 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 6), align 8
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub24 = sub nsw i32 %37, %38
  %39 = load i32, i32* %rowstride, align 4
  %mul25 = mul nsw i32 %sub24, %39
  %idx.ext = sext i32 %mul25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %sub26 = sub nsw i32 %40, %41
  %42 = load i32, i32* %bpp.addr, align 4
  %mul27 = mul nsw i32 %sub26, %42
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext28
  store i8* %add.ptr29, i8** %buf_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.87, %for.end
  %43 = load i32, i32* %row, align 4
  %44 = load i32, i32* %h, align 4
  %cmp31 = icmp slt i32 %43, %44
  br i1 %cmp31, label %for.body.32, label %for.end.89

for.body.32:                                      ; preds = %for.cond.30
  %45 = load i8*, i8** %buf_row, align 8
  store i8* %45, i8** %buf, align 8
  %46 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.32
  store i32 0, i32* %col, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.60, %if.then
  %47 = load i32, i32* %col, align 4
  %48 = load i32, i32* %w, align 4
  %cmp34 = icmp slt i32 %47, %48
  br i1 %cmp34, label %for.body.35, label %for.end.62

for.body.35:                                      ; preds = %for.cond.33
  %49 = load i32, i32* %bpp.addr, align 4
  %sub36 = sub nsw i32 %49, 1
  %idxprom37 = sext i32 %sub36 to i64
  %50 = load i8*, i8** %buf, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %50, i64 %idxprom37
  %51 = load i8, i8* %arrayidx38, align 1
  %conv = zext i8 %51 to i64
  store i64 %conv, i64* %alpha, align 8
  %52 = load i64, i64* %alpha, align 8
  %53 = load i32, i32* %bpp.addr, align 4
  %sub39 = sub nsw i32 %53, 1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom40
  %54 = load i64, i64* %arrayidx41, align 8
  %add42 = add i64 %54, %52
  store i64 %add42, i64* %arrayidx41, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.55, %for.body.35
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %bpp.addr, align 4
  %sub44 = sub nsw i32 %56, 1
  %cmp45 = icmp slt i32 %55, %sub44
  br i1 %cmp45, label %for.body.47, label %for.end.57

for.body.47:                                      ; preds = %for.cond.43
  %57 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load i8*, i8** %buf, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %58, i64 %idxprom48
  %59 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %59 to i64
  %60 = load i64, i64* %alpha, align 8
  %mul51 = mul i64 %conv50, %60
  %61 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %61 to i64
  %arrayidx53 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom52
  %62 = load i64, i64* %arrayidx53, align 8
  %add54 = add i64 %62, %mul51
  store i64 %add54, i64* %arrayidx53, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.47
  %63 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %63, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.43

for.end.57:                                       ; preds = %for.cond.43
  %64 = load i32, i32* %bpp.addr, align 4
  %65 = load i8*, i8** %buf, align 8
  %idx.ext58 = sext i32 %64 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %65, i64 %idx.ext58
  store i8* %add.ptr59, i8** %buf, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.57
  %66 = load i32, i32* %col, align 4
  %inc61 = add nsw i32 %66, 1
  store i32 %inc61, i32* %col, align 4
  br label %for.cond.33

for.end.62:                                       ; preds = %for.cond.33
  br label %if.end

if.else:                                          ; preds = %for.body.32
  store i32 0, i32* %col, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.82, %if.else
  %67 = load i32, i32* %col, align 4
  %68 = load i32, i32* %w, align 4
  %cmp64 = icmp slt i32 %67, %68
  br i1 %cmp64, label %for.body.66, label %for.end.84

for.body.66:                                      ; preds = %for.cond.63
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.77, %for.body.66
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %bpp.addr, align 4
  %cmp68 = icmp slt i32 %69, %70
  br i1 %cmp68, label %for.body.70, label %for.end.79

for.body.70:                                      ; preds = %for.cond.67
  %71 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %71 to i64
  %72 = load i8*, i8** %buf, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %72, i64 %idxprom71
  %73 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %74 to i64
  %arrayidx75 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom74
  %75 = load i64, i64* %arrayidx75, align 8
  %add76 = add i64 %75, %conv73
  store i64 %add76, i64* %arrayidx75, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.70
  %76 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %76, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.67

for.end.79:                                       ; preds = %for.cond.67
  %77 = load i32, i32* %bpp.addr, align 4
  %78 = load i8*, i8** %buf, align 8
  %idx.ext80 = sext i32 %77 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %78, i64 %idx.ext80
  store i8* %add.ptr81, i8** %buf, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.79
  %79 = load i32, i32* %col, align 4
  %inc83 = add nsw i32 %79, 1
  store i32 %inc83, i32* %col, align 4
  br label %for.cond.63

for.end.84:                                       ; preds = %for.cond.63
  br label %if.end

if.end:                                           ; preds = %for.end.84, %for.end.62
  %80 = load i32, i32* %rowstride, align 4
  %81 = load i8*, i8** %buf_row, align 8
  %idx.ext85 = sext i32 %80 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %81, i64 %idx.ext85
  store i8* %add.ptr86, i8** %buf_row, align 8
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end
  %82 = load i32, i32* %row, align 4
  %inc88 = add nsw i32 %82, 1
  store i32 %inc88, i32* %row, align 4
  br label %for.cond.30

for.end.89:                                       ; preds = %for.cond.30
  %83 = load i32, i32* %w, align 4
  %84 = load i32, i32* %h, align 4
  %mul90 = mul nsw i32 %83, %84
  %85 = load i32, i32* %count, align 4
  %add91 = add nsw i32 %85, %mul90
  store i32 %add91, i32* %count, align 4
  %86 = load i32, i32* %count, align 4
  %cmp92 = icmp sgt i32 %86, 0
  br i1 %cmp92, label %if.then.94, label %if.end.132

if.then.94:                                       ; preds = %for.end.89
  %87 = load i32, i32* %has_alpha.addr, align 4
  %tobool95 = icmp ne i32 %87, 0
  br i1 %tobool95, label %if.then.96, label %if.else.119

if.then.96:                                       ; preds = %if.then.94
  %88 = load i32, i32* %bpp.addr, align 4
  %sub98 = sub nsw i32 %88, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom99
  %89 = load i64, i64* %arrayidx100, align 8
  store i64 %89, i64* %alpha97, align 8
  %90 = load i64, i64* %alpha97, align 8
  %91 = load i32, i32* %count, align 4
  %conv101 = sext i32 %91 to i64
  %div = udiv i64 %90, %conv101
  %92 = load i32, i32* %bpp.addr, align 4
  %sub102 = sub nsw i32 %92, 1
  %idxprom103 = sext i32 %sub102 to i64
  %arrayidx104 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom103
  store i64 %div, i64* %arrayidx104, align 8
  %tobool105 = icmp ne i64 %div, 0
  br i1 %tobool105, label %if.then.106, label %if.end.118

if.then.106:                                      ; preds = %if.then.96
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.115, %if.then.106
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %bpp.addr, align 4
  %sub108 = sub nsw i32 %94, 1
  %cmp109 = icmp slt i32 %93, %sub108
  br i1 %cmp109, label %for.body.111, label %for.end.117

for.body.111:                                     ; preds = %for.cond.107
  %95 = load i64, i64* %alpha97, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %96 to i64
  %arrayidx113 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom112
  %97 = load i64, i64* %arrayidx113, align 8
  %div114 = udiv i64 %97, %95
  store i64 %div114, i64* %arrayidx113, align 8
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.111
  %98 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %98, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.107

for.end.117:                                      ; preds = %for.cond.107
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %if.then.96
  br label %if.end.131

if.else.119:                                      ; preds = %if.then.94
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.128, %if.else.119
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %bpp.addr, align 4
  %cmp121 = icmp slt i32 %99, %100
  br i1 %cmp121, label %for.body.123, label %for.end.130

for.body.123:                                     ; preds = %for.cond.120
  %101 = load i32, i32* %count, align 4
  %conv124 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %102 to i64
  %arrayidx126 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom125
  %103 = load i64, i64* %arrayidx126, align 8
  %div127 = udiv i64 %103, %conv124
  store i64 %div127, i64* %arrayidx126, align 8
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.123
  %104 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %104, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.120

for.end.130:                                      ; preds = %for.cond.120
  br label %if.end.131

if.end.131:                                       ; preds = %for.end.130, %if.end.118
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %for.end.89
  %105 = load i8*, i8** getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 6), align 8
  %106 = load i32, i32* %y, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 1), align 4
  %sub133 = sub nsw i32 %106, %107
  %108 = load i32, i32* %rowstride, align 4
  %mul134 = mul nsw i32 %sub133, %108
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds i8, i8* %105, i64 %idx.ext135
  %109 = load i32, i32* %x, align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.PixelArea, %struct.PixelArea* @area, i32 0, i32 0), align 4
  %sub137 = sub nsw i32 %109, %110
  %111 = load i32, i32* %bpp.addr, align 4
  %mul138 = mul nsw i32 %sub137, %111
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %add.ptr136, i64 %idx.ext139
  store i8* %add.ptr140, i8** %buf_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.169, %if.end.132
  %112 = load i32, i32* %row, align 4
  %113 = load i32, i32* %h, align 4
  %cmp142 = icmp slt i32 %112, %113
  br i1 %cmp142, label %for.body.144, label %for.end.171

for.body.144:                                     ; preds = %for.cond.141
  %114 = load i8*, i8** %buf_row, align 8
  store i8* %114, i8** %buf, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.164, %for.body.144
  %115 = load i32, i32* %col, align 4
  %116 = load i32, i32* %w, align 4
  %cmp146 = icmp slt i32 %115, %116
  br i1 %cmp146, label %for.body.148, label %for.end.166

for.body.148:                                     ; preds = %for.cond.145
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.158, %for.body.148
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %bpp.addr, align 4
  %cmp150 = icmp slt i32 %117, %118
  br i1 %cmp150, label %for.body.152, label %for.end.160

for.body.152:                                     ; preds = %for.cond.149
  %119 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %119 to i64
  %arrayidx154 = getelementptr inbounds [4 x i64], [4 x i64]* %average, i32 0, i64 %idxprom153
  %120 = load i64, i64* %arrayidx154, align 8
  %conv155 = trunc i64 %120 to i8
  %121 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %121 to i64
  %122 = load i8*, i8** %buf, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %122, i64 %idxprom156
  store i8 %conv155, i8* %arrayidx157, align 1
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.body.152
  %123 = load i32, i32* %i, align 4
  %inc159 = add nsw i32 %123, 1
  store i32 %inc159, i32* %i, align 4
  br label %for.cond.149

for.end.160:                                      ; preds = %for.cond.149
  %124 = load i32, i32* %count, align 4
  %inc161 = add nsw i32 %124, 1
  store i32 %inc161, i32* %count, align 4
  %125 = load i32, i32* %bpp.addr, align 4
  %126 = load i8*, i8** %buf, align 8
  %idx.ext162 = sext i32 %125 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %126, i64 %idx.ext162
  store i8* %add.ptr163, i8** %buf, align 8
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.160
  %127 = load i32, i32* %col, align 4
  %inc165 = add nsw i32 %127, 1
  store i32 %inc165, i32* %col, align 4
  br label %for.cond.145

for.end.166:                                      ; preds = %for.cond.145
  %128 = load i32, i32* %rowstride, align 4
  %129 = load i8*, i8** %buf_row, align 8
  %idx.ext167 = sext i32 %128 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %129, i64 %idx.ext167
  store i8* %add.ptr168, i8** %buf_row, align 8
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.end.166
  %130 = load i32, i32* %row, align 4
  %inc170 = add nsw i32 %130, 1
  store i32 %inc170, i32* %row, align 4
  br label %for.cond.141

for.end.171:                                      ; preds = %for.cond.141
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.end.171
  %131 = load i32, i32* %pixelwidth.addr, align 4
  %132 = load i32, i32* %x, align 4
  %133 = load i32, i32* %pixelwidth.addr, align 4
  %rem173 = srem i32 %132, %133
  %sub174 = sub nsw i32 %131, %rem173
  %134 = load i32, i32* %x, align 4
  %add175 = add nsw i32 %134, %sub174
  store i32 %add175, i32* %x, align 4
  br label %for.cond.6

for.end.176:                                      ; preds = %for.cond.6
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %135 = load i32, i32* %pixelheight.addr, align 4
  %136 = load i32, i32* %y, align 4
  %137 = load i32, i32* %pixelheight.addr, align 4
  %rem178 = srem i32 %136, %137
  %sub179 = sub nsw i32 %135, %rem178
  %138 = load i32, i32* %y, align 4
  %add180 = add nsw i32 %138, %sub179
  store i32 %add180, i32* %y, align 4
  br label %for.cond

for.end.181:                                      ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

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
